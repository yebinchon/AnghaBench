; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/input/misc/extr_hp_sdc_rtc.c_hp_sdc_rtc_set_fhs.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/input/misc/extr_hp_sdc_rtc.c_hp_sdc_rtc_set_fhs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timeval = type { i32, i32 }
%struct.TYPE_3__ = type { i32, i32* }

@HP_SDC_ACT_PRECMD = common dso_local global i32 0, align 4
@HP_SDC_ACT_DATAOUT = common dso_local global i32 0, align 4
@HP_SDC_CMD_SET_FHS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.timeval*)* @hp_sdc_rtc_set_fhs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hp_sdc_rtc_set_fhs(%struct.timeval* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.timeval*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_3__, align 8
  %6 = alloca [5 x i32], align 16
  store %struct.timeval* %0, %struct.timeval** %3, align 8
  %7 = getelementptr inbounds [5 x i32], [5 x i32]* %6, i64 0, i64 0
  %8 = load i32, i32* @HP_SDC_ACT_PRECMD, align 4
  %9 = load i32, i32* @HP_SDC_ACT_DATAOUT, align 4
  %10 = or i32 %8, %9
  store i32 %10, i32* %7, align 4
  %11 = getelementptr inbounds i32, i32* %7, i64 1
  %12 = load i32, i32* @HP_SDC_CMD_SET_FHS, align 4
  store i32 %12, i32* %11, align 4
  %13 = getelementptr inbounds i32, i32* %11, i64 1
  store i32 2, i32* %13, align 4
  %14 = getelementptr inbounds i32, i32* %13, i64 1
  store i32 0, i32* %14, align 4
  %15 = getelementptr inbounds i32, i32* %14, i64 1
  store i32 0, i32* %15, align 4
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 0
  store i32 4, i32* %16, align 8
  %17 = load %struct.timeval*, %struct.timeval** %3, align 8
  %18 = getelementptr inbounds %struct.timeval, %struct.timeval* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = icmp slt i32 65535, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %1
  store i32 -1, i32* %2, align 4
  br label %57

22:                                               ; preds = %1
  %23 = load %struct.timeval*, %struct.timeval** %3, align 8
  %24 = getelementptr inbounds %struct.timeval, %struct.timeval* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = mul nsw i32 %25, 100
  store i32 %26, i32* %4, align 4
  %27 = load %struct.timeval*, %struct.timeval** %3, align 8
  %28 = getelementptr inbounds %struct.timeval, %struct.timeval* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = sdiv i32 %29, 10000
  %31 = icmp slt i32 65535, %30
  br i1 %31, label %32, label %33

32:                                               ; preds = %22
  store i32 -1, i32* %2, align 4
  br label %57

33:                                               ; preds = %22
  %34 = load %struct.timeval*, %struct.timeval** %3, align 8
  %35 = getelementptr inbounds %struct.timeval, %struct.timeval* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = sdiv i32 %36, 10000
  %38 = load i32, i32* %4, align 4
  %39 = add nsw i32 %38, %37
  store i32 %39, i32* %4, align 4
  %40 = load i32, i32* %4, align 4
  %41 = icmp sgt i32 %40, 65535
  br i1 %41, label %42, label %43

42:                                               ; preds = %33
  store i32 -1, i32* %2, align 4
  br label %57

43:                                               ; preds = %33
  %44 = load i32, i32* %4, align 4
  %45 = and i32 %44, 255
  %46 = getelementptr inbounds [5 x i32], [5 x i32]* %6, i64 0, i64 3
  store i32 %45, i32* %46, align 4
  %47 = load i32, i32* %4, align 4
  %48 = ashr i32 %47, 8
  %49 = and i32 %48, 255
  %50 = getelementptr inbounds [5 x i32], [5 x i32]* %6, i64 0, i64 4
  store i32 %49, i32* %50, align 16
  %51 = getelementptr inbounds [5 x i32], [5 x i32]* %6, i64 0, i64 0
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 1
  store i32* %51, i32** %52, align 8
  %53 = call i64 @hp_sdc_enqueue_transaction(%struct.TYPE_3__* %5)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %43
  store i32 -1, i32* %2, align 4
  br label %57

56:                                               ; preds = %43
  store i32 0, i32* %2, align 4
  br label %57

57:                                               ; preds = %56, %55, %42, %32, %21
  %58 = load i32, i32* %2, align 4
  ret i32 %58
}

declare dso_local i64 @hp_sdc_enqueue_transaction(%struct.TYPE_3__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
