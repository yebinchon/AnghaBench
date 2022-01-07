; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/input/extr_input-mt.c_input_mt_report_slot_state.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/input/extr_input-mt.c_input_mt_report_slot_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.input_dev = type { i64, %struct.input_mt_slot* }
%struct.input_mt_slot = type { i32 }

@EV_ABS = common dso_local global i32 0, align 4
@ABS_MT_TRACKING_ID = common dso_local global i32 0, align 4
@ABS_MT_TOOL_TYPE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @input_mt_report_slot_state(%struct.input_dev* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.input_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.input_mt_slot*, align 8
  %8 = alloca i32, align 4
  store %struct.input_dev* %0, %struct.input_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %10 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %9, i32 0, i32 1
  %11 = load %struct.input_mt_slot*, %struct.input_mt_slot** %10, align 8
  %12 = icmp ne %struct.input_mt_slot* %11, null
  br i1 %12, label %13, label %16

13:                                               ; preds = %3
  %14 = load i32, i32* %6, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %21, label %16

16:                                               ; preds = %13, %3
  %17 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %18 = load i32, i32* @EV_ABS, align 4
  %19 = load i32, i32* @ABS_MT_TRACKING_ID, align 4
  %20 = call i32 @input_event(%struct.input_dev* %17, i32 %18, i32 %19, i32 -1)
  br label %54

21:                                               ; preds = %13
  %22 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %23 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %22, i32 0, i32 1
  %24 = load %struct.input_mt_slot*, %struct.input_mt_slot** %23, align 8
  %25 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %26 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = getelementptr inbounds %struct.input_mt_slot, %struct.input_mt_slot* %24, i64 %27
  store %struct.input_mt_slot* %28, %struct.input_mt_slot** %7, align 8
  %29 = load %struct.input_mt_slot*, %struct.input_mt_slot** %7, align 8
  %30 = load i32, i32* @ABS_MT_TRACKING_ID, align 4
  %31 = call i32 @input_mt_get_value(%struct.input_mt_slot* %29, i32 %30)
  store i32 %31, i32* %8, align 4
  %32 = load i32, i32* %8, align 4
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %40, label %34

34:                                               ; preds = %21
  %35 = load %struct.input_mt_slot*, %struct.input_mt_slot** %7, align 8
  %36 = load i32, i32* @ABS_MT_TOOL_TYPE, align 4
  %37 = call i32 @input_mt_get_value(%struct.input_mt_slot* %35, i32 %36)
  %38 = load i32, i32* %5, align 4
  %39 = icmp ne i32 %37, %38
  br i1 %39, label %40, label %43

40:                                               ; preds = %34, %21
  %41 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %42 = call i32 @input_mt_new_trkid(%struct.input_dev* %41)
  store i32 %42, i32* %8, align 4
  br label %43

43:                                               ; preds = %40, %34
  %44 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %45 = load i32, i32* @EV_ABS, align 4
  %46 = load i32, i32* @ABS_MT_TRACKING_ID, align 4
  %47 = load i32, i32* %8, align 4
  %48 = call i32 @input_event(%struct.input_dev* %44, i32 %45, i32 %46, i32 %47)
  %49 = load %struct.input_dev*, %struct.input_dev** %4, align 8
  %50 = load i32, i32* @EV_ABS, align 4
  %51 = load i32, i32* @ABS_MT_TOOL_TYPE, align 4
  %52 = load i32, i32* %5, align 4
  %53 = call i32 @input_event(%struct.input_dev* %49, i32 %50, i32 %51, i32 %52)
  br label %54

54:                                               ; preds = %43, %16
  ret void
}

declare dso_local i32 @input_event(%struct.input_dev*, i32, i32, i32) #1

declare dso_local i32 @input_mt_get_value(%struct.input_mt_slot*, i32) #1

declare dso_local i32 @input_mt_new_trkid(%struct.input_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
