; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/input/extr_input-mt.c_input_mt_report_pointer_emulation.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/input/extr_input-mt.c_input_mt_report_pointer_emulation.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.input_dev = type { i32, i32, %struct.input_mt_slot* }
%struct.input_mt_slot = type { i32 }

@ABS_MT_TRACKING_ID = common dso_local global i32 0, align 4
@TRKID_SGN = common dso_local global i32 0, align 4
@EV_KEY = common dso_local global i32 0, align 4
@BTN_TOUCH = common dso_local global i32 0, align 4
@ABS_MT_POSITION_X = common dso_local global i32 0, align 4
@ABS_MT_POSITION_Y = common dso_local global i32 0, align 4
@ABS_MT_PRESSURE = common dso_local global i32 0, align 4
@EV_ABS = common dso_local global i32 0, align 4
@ABS_X = common dso_local global i32 0, align 4
@ABS_Y = common dso_local global i32 0, align 4
@ABS_PRESSURE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @input_mt_report_pointer_emulation(%struct.input_dev* %0, i32 %1) #0 {
  %3 = alloca %struct.input_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.input_mt_slot*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.input_mt_slot*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.input_dev* %0, %struct.input_dev** %3, align 8
  store i32 %1, i32* %4, align 4
  store %struct.input_mt_slot* null, %struct.input_mt_slot** %5, align 8
  %14 = load %struct.input_dev*, %struct.input_dev** %3, align 8
  %15 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  store i32 %16, i32* %6, align 4
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  br label %17

17:                                               ; preds = %49, %2
  %18 = load i32, i32* %8, align 4
  %19 = load %struct.input_dev*, %struct.input_dev** %3, align 8
  %20 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = icmp slt i32 %18, %21
  br i1 %22, label %23, label %52

23:                                               ; preds = %17
  %24 = load %struct.input_dev*, %struct.input_dev** %3, align 8
  %25 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %24, i32 0, i32 2
  %26 = load %struct.input_mt_slot*, %struct.input_mt_slot** %25, align 8
  %27 = load i32, i32* %8, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.input_mt_slot, %struct.input_mt_slot* %26, i64 %28
  store %struct.input_mt_slot* %29, %struct.input_mt_slot** %9, align 8
  %30 = load %struct.input_mt_slot*, %struct.input_mt_slot** %9, align 8
  %31 = load i32, i32* @ABS_MT_TRACKING_ID, align 4
  %32 = call i32 @input_mt_get_value(%struct.input_mt_slot* %30, i32 %31)
  store i32 %32, i32* %10, align 4
  %33 = load i32, i32* %10, align 4
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %23
  br label %49

36:                                               ; preds = %23
  %37 = load i32, i32* %10, align 4
  %38 = load i32, i32* %6, align 4
  %39 = sub nsw i32 %37, %38
  %40 = load i32, i32* @TRKID_SGN, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %36
  %44 = load %struct.input_mt_slot*, %struct.input_mt_slot** %9, align 8
  store %struct.input_mt_slot* %44, %struct.input_mt_slot** %5, align 8
  %45 = load i32, i32* %10, align 4
  store i32 %45, i32* %6, align 4
  br label %46

46:                                               ; preds = %43, %36
  %47 = load i32, i32* %7, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %7, align 4
  br label %49

49:                                               ; preds = %46, %35
  %50 = load i32, i32* %8, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %8, align 4
  br label %17

52:                                               ; preds = %17
  %53 = load %struct.input_dev*, %struct.input_dev** %3, align 8
  %54 = load i32, i32* @EV_KEY, align 4
  %55 = load i32, i32* @BTN_TOUCH, align 4
  %56 = load i32, i32* %7, align 4
  %57 = icmp sgt i32 %56, 0
  %58 = zext i1 %57 to i32
  %59 = call i32 @input_event(%struct.input_dev* %53, i32 %54, i32 %55, i32 %58)
  %60 = load i32, i32* %4, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %66

62:                                               ; preds = %52
  %63 = load %struct.input_dev*, %struct.input_dev** %3, align 8
  %64 = load i32, i32* %7, align 4
  %65 = call i32 @input_mt_report_finger_count(%struct.input_dev* %63, i32 %64)
  br label %66

66:                                               ; preds = %62, %52
  %67 = load %struct.input_mt_slot*, %struct.input_mt_slot** %5, align 8
  %68 = icmp ne %struct.input_mt_slot* %67, null
  br i1 %68, label %69, label %94

69:                                               ; preds = %66
  %70 = load %struct.input_mt_slot*, %struct.input_mt_slot** %5, align 8
  %71 = load i32, i32* @ABS_MT_POSITION_X, align 4
  %72 = call i32 @input_mt_get_value(%struct.input_mt_slot* %70, i32 %71)
  store i32 %72, i32* %11, align 4
  %73 = load %struct.input_mt_slot*, %struct.input_mt_slot** %5, align 8
  %74 = load i32, i32* @ABS_MT_POSITION_Y, align 4
  %75 = call i32 @input_mt_get_value(%struct.input_mt_slot* %73, i32 %74)
  store i32 %75, i32* %12, align 4
  %76 = load %struct.input_mt_slot*, %struct.input_mt_slot** %5, align 8
  %77 = load i32, i32* @ABS_MT_PRESSURE, align 4
  %78 = call i32 @input_mt_get_value(%struct.input_mt_slot* %76, i32 %77)
  store i32 %78, i32* %13, align 4
  %79 = load %struct.input_dev*, %struct.input_dev** %3, align 8
  %80 = load i32, i32* @EV_ABS, align 4
  %81 = load i32, i32* @ABS_X, align 4
  %82 = load i32, i32* %11, align 4
  %83 = call i32 @input_event(%struct.input_dev* %79, i32 %80, i32 %81, i32 %82)
  %84 = load %struct.input_dev*, %struct.input_dev** %3, align 8
  %85 = load i32, i32* @EV_ABS, align 4
  %86 = load i32, i32* @ABS_Y, align 4
  %87 = load i32, i32* %12, align 4
  %88 = call i32 @input_event(%struct.input_dev* %84, i32 %85, i32 %86, i32 %87)
  %89 = load %struct.input_dev*, %struct.input_dev** %3, align 8
  %90 = load i32, i32* @EV_ABS, align 4
  %91 = load i32, i32* @ABS_PRESSURE, align 4
  %92 = load i32, i32* %13, align 4
  %93 = call i32 @input_event(%struct.input_dev* %89, i32 %90, i32 %91, i32 %92)
  br label %99

94:                                               ; preds = %66
  %95 = load %struct.input_dev*, %struct.input_dev** %3, align 8
  %96 = load i32, i32* @EV_ABS, align 4
  %97 = load i32, i32* @ABS_PRESSURE, align 4
  %98 = call i32 @input_event(%struct.input_dev* %95, i32 %96, i32 %97, i32 0)
  br label %99

99:                                               ; preds = %94, %69
  ret void
}

declare dso_local i32 @input_mt_get_value(%struct.input_mt_slot*, i32) #1

declare dso_local i32 @input_event(%struct.input_dev*, i32, i32, i32) #1

declare dso_local i32 @input_mt_report_finger_count(%struct.input_dev*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
