; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/skfp/extr_hwt.c_hwt_read.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/skfp/extr_hwt.c_hwt_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.s_smc = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i64, i64 }

@B2_TI_VAL = common dso_local global i32 0, align 4
@IS_TIMINT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hwt_read(%struct.s_smc* %0) #0 {
  %2 = alloca %struct.s_smc*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  store %struct.s_smc* %0, %struct.s_smc** %2, align 8
  %5 = load %struct.s_smc*, %struct.s_smc** %2, align 8
  %6 = getelementptr inbounds %struct.s_smc, %struct.s_smc* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 2
  %8 = load i64, i64* %7, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %52

10:                                               ; preds = %1
  %11 = load %struct.s_smc*, %struct.s_smc** %2, align 8
  %12 = call i32 @hwt_stop(%struct.s_smc* %11)
  %13 = load i32, i32* @B2_TI_VAL, align 4
  %14 = call i32 @ADDR(i32 %13)
  %15 = call i32 @inpd(i32 %14)
  %16 = sdiv i32 %15, 200
  %17 = and i32 %16, 65535
  %18 = sext i32 %17 to i64
  store i64 %18, i64* %3, align 8
  %19 = call i32 (...) @GET_ISR()
  store i32 %19, i32* %4, align 4
  %20 = load i64, i64* %3, align 8
  %21 = load %struct.s_smc*, %struct.s_smc** %2, align 8
  %22 = getelementptr inbounds %struct.s_smc, %struct.s_smc* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp sgt i64 %20, %24
  br i1 %25, label %31, label %26

26:                                               ; preds = %10
  %27 = load i32, i32* %4, align 4
  %28 = load i32, i32* @IS_TIMINT, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %41

31:                                               ; preds = %26, %10
  %32 = load %struct.s_smc*, %struct.s_smc** %2, align 8
  %33 = call i32 @hwt_restart(%struct.s_smc* %32)
  %34 = load %struct.s_smc*, %struct.s_smc** %2, align 8
  %35 = getelementptr inbounds %struct.s_smc, %struct.s_smc* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load %struct.s_smc*, %struct.s_smc** %2, align 8
  %39 = getelementptr inbounds %struct.s_smc, %struct.s_smc* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 1
  store i64 %37, i64* %40, align 8
  br label %51

41:                                               ; preds = %26
  %42 = load %struct.s_smc*, %struct.s_smc** %2, align 8
  %43 = getelementptr inbounds %struct.s_smc, %struct.s_smc* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* %3, align 8
  %47 = sub nsw i64 %45, %46
  %48 = load %struct.s_smc*, %struct.s_smc** %2, align 8
  %49 = getelementptr inbounds %struct.s_smc, %struct.s_smc* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 1
  store i64 %47, i64* %50, align 8
  br label %51

51:                                               ; preds = %41, %31
  br label %52

52:                                               ; preds = %51, %1
  %53 = load %struct.s_smc*, %struct.s_smc** %2, align 8
  %54 = getelementptr inbounds %struct.s_smc, %struct.s_smc* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = trunc i64 %56 to i32
  ret i32 %57
}

declare dso_local i32 @hwt_stop(%struct.s_smc*) #1

declare dso_local i32 @inpd(i32) #1

declare dso_local i32 @ADDR(i32) #1

declare dso_local i32 @GET_ISR(...) #1

declare dso_local i32 @hwt_restart(%struct.s_smc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
