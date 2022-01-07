; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/input/misc/extr_hp_sdc_rtc.c_hp_sdc_rtc_set_i8042timer.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/input/misc/extr_hp_sdc_rtc.c_hp_sdc_rtc_set_i8042timer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timeval = type { i32, i32 }
%struct.TYPE_3__ = type { i32, i32* }

@HP_SDC_ACT_PRECMD = common dso_local global i32 0, align 4
@HP_SDC_ACT_DATAOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.timeval*, i32)* @hp_sdc_rtc_set_i8042timer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hp_sdc_rtc_set_i8042timer(%struct.timeval* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.timeval*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_3__, align 8
  %8 = alloca [6 x i32], align 16
  store %struct.timeval* %0, %struct.timeval** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = getelementptr inbounds [6 x i32], [6 x i32]* %8, i64 0, i64 0
  %10 = load i32, i32* @HP_SDC_ACT_PRECMD, align 4
  %11 = load i32, i32* @HP_SDC_ACT_DATAOUT, align 4
  %12 = or i32 %10, %11
  store i32 %12, i32* %9, align 4
  %13 = getelementptr inbounds i32, i32* %9, i64 1
  store i32 0, i32* %13, align 4
  %14 = getelementptr inbounds i32, i32* %13, i64 1
  store i32 3, i32* %14, align 4
  %15 = getelementptr inbounds i32, i32* %14, i64 1
  store i32 0, i32* %15, align 4
  %16 = getelementptr inbounds i32, i32* %15, i64 1
  store i32 0, i32* %16, align 4
  %17 = getelementptr inbounds i32, i32* %16, i64 1
  store i32 0, i32* %17, align 4
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 0
  store i32 6, i32* %18, align 8
  %19 = load %struct.timeval*, %struct.timeval** %4, align 8
  %20 = getelementptr inbounds %struct.timeval, %struct.timeval* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = icmp slt i32 16777215, %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %65

24:                                               ; preds = %2
  %25 = load %struct.timeval*, %struct.timeval** %4, align 8
  %26 = getelementptr inbounds %struct.timeval, %struct.timeval* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = mul nsw i32 %27, 100
  store i32 %28, i32* %6, align 4
  %29 = load %struct.timeval*, %struct.timeval** %4, align 8
  %30 = getelementptr inbounds %struct.timeval, %struct.timeval* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = sdiv i32 %31, 10000
  %33 = icmp slt i32 16777215, %32
  br i1 %33, label %34, label %35

34:                                               ; preds = %24
  store i32 -1, i32* %3, align 4
  br label %65

35:                                               ; preds = %24
  %36 = load %struct.timeval*, %struct.timeval** %4, align 8
  %37 = getelementptr inbounds %struct.timeval, %struct.timeval* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = sdiv i32 %38, 10000
  %40 = load i32, i32* %6, align 4
  %41 = add nsw i32 %40, %39
  store i32 %41, i32* %6, align 4
  %42 = load i32, i32* %6, align 4
  %43 = icmp sgt i32 %42, 16777215
  br i1 %43, label %44, label %45

44:                                               ; preds = %35
  store i32 -1, i32* %3, align 4
  br label %65

45:                                               ; preds = %35
  %46 = load i32, i32* %5, align 4
  %47 = getelementptr inbounds [6 x i32], [6 x i32]* %8, i64 0, i64 1
  store i32 %46, i32* %47, align 4
  %48 = load i32, i32* %6, align 4
  %49 = and i32 %48, 255
  %50 = getelementptr inbounds [6 x i32], [6 x i32]* %8, i64 0, i64 3
  store i32 %49, i32* %50, align 4
  %51 = load i32, i32* %6, align 4
  %52 = ashr i32 %51, 8
  %53 = and i32 %52, 255
  %54 = getelementptr inbounds [6 x i32], [6 x i32]* %8, i64 0, i64 4
  store i32 %53, i32* %54, align 16
  %55 = load i32, i32* %6, align 4
  %56 = ashr i32 %55, 16
  %57 = and i32 %56, 255
  %58 = getelementptr inbounds [6 x i32], [6 x i32]* %8, i64 0, i64 5
  store i32 %57, i32* %58, align 4
  %59 = getelementptr inbounds [6 x i32], [6 x i32]* %8, i64 0, i64 0
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 1
  store i32* %59, i32** %60, align 8
  %61 = call i64 @hp_sdc_enqueue_transaction(%struct.TYPE_3__* %7)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %45
  store i32 -1, i32* %3, align 4
  br label %65

64:                                               ; preds = %45
  store i32 0, i32* %3, align 4
  br label %65

65:                                               ; preds = %64, %63, %44, %34, %23
  %66 = load i32, i32* %3, align 4
  ret i32 %66
}

declare dso_local i64 @hp_sdc_enqueue_transaction(%struct.TYPE_3__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
