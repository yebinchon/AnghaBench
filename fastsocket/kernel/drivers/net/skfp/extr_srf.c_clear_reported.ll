; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/skfp/extr_srf.c_clear_reported.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/skfp/extr_srf.c_clear_reported.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.s_smc = type { %struct.TYPE_2__, %struct.s_srf_evc* }
%struct.TYPE_2__ = type { i64 }
%struct.s_srf_evc = type { i64*, i64*, i64, i32 }

@FALSE = common dso_local global i64 0, align 8
@MAX_EVCS = common dso_local global i32 0, align 4
@TRUE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.s_smc*)* @clear_reported to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @clear_reported(%struct.s_smc* %0) #0 {
  %2 = alloca %struct.s_smc*, align 8
  %3 = alloca %struct.s_srf_evc*, align 8
  %4 = alloca i32, align 4
  store %struct.s_smc* %0, %struct.s_smc** %2, align 8
  %5 = load i64, i64* @FALSE, align 8
  %6 = load %struct.s_smc*, %struct.s_smc** %2, align 8
  %7 = getelementptr inbounds %struct.s_smc, %struct.s_smc* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  store i64 %5, i64* %8, align 8
  store i32 0, i32* %4, align 4
  %9 = load %struct.s_smc*, %struct.s_smc** %2, align 8
  %10 = getelementptr inbounds %struct.s_smc, %struct.s_smc* %9, i32 0, i32 1
  %11 = load %struct.s_srf_evc*, %struct.s_srf_evc** %10, align 8
  store %struct.s_srf_evc* %11, %struct.s_srf_evc** %3, align 8
  br label %12

12:                                               ; preds = %48, %1
  %13 = load i32, i32* %4, align 4
  %14 = load i32, i32* @MAX_EVCS, align 4
  %15 = icmp ult i32 %13, %14
  br i1 %15, label %16, label %53

16:                                               ; preds = %12
  %17 = load %struct.s_srf_evc*, %struct.s_srf_evc** %3, align 8
  %18 = getelementptr inbounds %struct.s_srf_evc, %struct.s_srf_evc* %17, i32 0, i32 3
  %19 = load i32, i32* %18, align 8
  %20 = call i64 @SMT_IS_CONDITION(i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %39

22:                                               ; preds = %16
  %23 = load %struct.s_srf_evc*, %struct.s_srf_evc** %3, align 8
  %24 = getelementptr inbounds %struct.s_srf_evc, %struct.s_srf_evc* %23, i32 0, i32 0
  %25 = load i64*, i64** %24, align 8
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @FALSE, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %33

29:                                               ; preds = %22
  %30 = load i64, i64* @FALSE, align 8
  %31 = load %struct.s_srf_evc*, %struct.s_srf_evc** %3, align 8
  %32 = getelementptr inbounds %struct.s_srf_evc, %struct.s_srf_evc* %31, i32 0, i32 2
  store i64 %30, i64* %32, align 8
  br label %38

33:                                               ; preds = %22
  %34 = load i64, i64* @TRUE, align 8
  %35 = load %struct.s_smc*, %struct.s_smc** %2, align 8
  %36 = getelementptr inbounds %struct.s_smc, %struct.s_smc* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  store i64 %34, i64* %37, align 8
  br label %38

38:                                               ; preds = %33, %29
  br label %47

39:                                               ; preds = %16
  %40 = load i64, i64* @FALSE, align 8
  %41 = load %struct.s_srf_evc*, %struct.s_srf_evc** %3, align 8
  %42 = getelementptr inbounds %struct.s_srf_evc, %struct.s_srf_evc* %41, i32 0, i32 2
  store i64 %40, i64* %42, align 8
  %43 = load i64, i64* @FALSE, align 8
  %44 = load %struct.s_srf_evc*, %struct.s_srf_evc** %3, align 8
  %45 = getelementptr inbounds %struct.s_srf_evc, %struct.s_srf_evc* %44, i32 0, i32 1
  %46 = load i64*, i64** %45, align 8
  store i64 %43, i64* %46, align 8
  br label %47

47:                                               ; preds = %39, %38
  br label %48

48:                                               ; preds = %47
  %49 = load i32, i32* %4, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %4, align 4
  %51 = load %struct.s_srf_evc*, %struct.s_srf_evc** %3, align 8
  %52 = getelementptr inbounds %struct.s_srf_evc, %struct.s_srf_evc* %51, i32 1
  store %struct.s_srf_evc* %52, %struct.s_srf_evc** %3, align 8
  br label %12

53:                                               ; preds = %12
  ret void
}

declare dso_local i64 @SMT_IS_CONDITION(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
