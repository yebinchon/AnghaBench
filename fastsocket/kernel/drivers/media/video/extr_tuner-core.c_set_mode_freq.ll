; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_tuner-core.c_set_mode_freq.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_tuner-core.c_set_mode_freq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32 }
%struct.tuner = type { i32, i32, i32, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.analog_demod_ops }
%struct.analog_demod_ops = type { i32 (%struct.TYPE_4__*)* }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [55 x i8] c"Tuner doesn't support mode %d. Putting tuner to sleep\0A\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"Changing to mode %d\0A\00", align 1
@V4L2_TUNER_RADIO = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.tuner*, i32, i32)* @set_mode_freq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_mode_freq(%struct.i2c_client* %0, %struct.tuner* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.i2c_client*, align 8
  %7 = alloca %struct.tuner*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.analog_demod_ops*, align 8
  store %struct.i2c_client* %0, %struct.i2c_client** %6, align 8
  store %struct.tuner* %1, %struct.tuner** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %11 = load %struct.tuner*, %struct.tuner** %7, align 8
  %12 = getelementptr inbounds %struct.tuner, %struct.tuner* %11, i32 0, i32 4
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  store %struct.analog_demod_ops* %14, %struct.analog_demod_ops** %10, align 8
  %15 = load i32, i32* %8, align 4
  %16 = load %struct.tuner*, %struct.tuner** %7, align 8
  %17 = getelementptr inbounds %struct.tuner, %struct.tuner* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = icmp ne i32 %15, %18
  br i1 %19, label %20, label %52

20:                                               ; preds = %4
  %21 = load %struct.tuner*, %struct.tuner** %7, align 8
  %22 = load i32, i32* %8, align 4
  %23 = call i32 @check_mode(%struct.tuner* %21, i32 %22)
  %24 = load i32, i32* @EINVAL, align 4
  %25 = sub nsw i32 0, %24
  %26 = icmp eq i32 %23, %25
  br i1 %26, label %27, label %46

27:                                               ; preds = %20
  %28 = load i32, i32* %8, align 4
  %29 = call i32 @tuner_dbg(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0), i32 %28)
  %30 = load %struct.tuner*, %struct.tuner** %7, align 8
  %31 = getelementptr inbounds %struct.tuner, %struct.tuner* %30, i32 0, i32 1
  store i32 1, i32* %31, align 4
  %32 = load %struct.analog_demod_ops*, %struct.analog_demod_ops** %10, align 8
  %33 = getelementptr inbounds %struct.analog_demod_ops, %struct.analog_demod_ops* %32, i32 0, i32 0
  %34 = load i32 (%struct.TYPE_4__*)*, i32 (%struct.TYPE_4__*)** %33, align 8
  %35 = icmp ne i32 (%struct.TYPE_4__*)* %34, null
  br i1 %35, label %36, label %43

36:                                               ; preds = %27
  %37 = load %struct.analog_demod_ops*, %struct.analog_demod_ops** %10, align 8
  %38 = getelementptr inbounds %struct.analog_demod_ops, %struct.analog_demod_ops* %37, i32 0, i32 0
  %39 = load i32 (%struct.TYPE_4__*)*, i32 (%struct.TYPE_4__*)** %38, align 8
  %40 = load %struct.tuner*, %struct.tuner** %7, align 8
  %41 = getelementptr inbounds %struct.tuner, %struct.tuner* %40, i32 0, i32 4
  %42 = call i32 %39(%struct.TYPE_4__* %41)
  br label %43

43:                                               ; preds = %36, %27
  %44 = load i32, i32* @EINVAL, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %5, align 4
  br label %86

46:                                               ; preds = %20
  %47 = load i32, i32* %8, align 4
  %48 = load %struct.tuner*, %struct.tuner** %7, align 8
  %49 = getelementptr inbounds %struct.tuner, %struct.tuner* %48, i32 0, i32 0
  store i32 %47, i32* %49, align 8
  %50 = load i32, i32* %8, align 4
  %51 = call i32 @tuner_dbg(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 %50)
  br label %52

52:                                               ; preds = %46, %4
  %53 = load %struct.tuner*, %struct.tuner** %7, align 8
  %54 = getelementptr inbounds %struct.tuner, %struct.tuner* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = sext i32 %55 to i64
  %57 = load i64, i64* @V4L2_TUNER_RADIO, align 8
  %58 = icmp eq i64 %56, %57
  br i1 %58, label %59, label %72

59:                                               ; preds = %52
  %60 = load i32, i32* %9, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %66

62:                                               ; preds = %59
  %63 = load i32, i32* %9, align 4
  %64 = load %struct.tuner*, %struct.tuner** %7, align 8
  %65 = getelementptr inbounds %struct.tuner, %struct.tuner* %64, i32 0, i32 2
  store i32 %63, i32* %65, align 8
  br label %66

66:                                               ; preds = %62, %59
  %67 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %68 = load %struct.tuner*, %struct.tuner** %7, align 8
  %69 = getelementptr inbounds %struct.tuner, %struct.tuner* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 8
  %71 = call i32 @set_radio_freq(%struct.i2c_client* %67, i32 %70)
  br label %85

72:                                               ; preds = %52
  %73 = load i32, i32* %9, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %79

75:                                               ; preds = %72
  %76 = load i32, i32* %9, align 4
  %77 = load %struct.tuner*, %struct.tuner** %7, align 8
  %78 = getelementptr inbounds %struct.tuner, %struct.tuner* %77, i32 0, i32 3
  store i32 %76, i32* %78, align 4
  br label %79

79:                                               ; preds = %75, %72
  %80 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %81 = load %struct.tuner*, %struct.tuner** %7, align 8
  %82 = getelementptr inbounds %struct.tuner, %struct.tuner* %81, i32 0, i32 3
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @set_tv_freq(%struct.i2c_client* %80, i32 %83)
  br label %85

85:                                               ; preds = %79, %66
  store i32 0, i32* %5, align 4
  br label %86

86:                                               ; preds = %85, %43
  %87 = load i32, i32* %5, align 4
  ret i32 %87
}

declare dso_local i32 @check_mode(%struct.tuner*, i32) #1

declare dso_local i32 @tuner_dbg(i8*, i32) #1

declare dso_local i32 @set_radio_freq(%struct.i2c_client*, i32) #1

declare dso_local i32 @set_tv_freq(%struct.i2c_client*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
