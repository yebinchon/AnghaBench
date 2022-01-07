; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_tuner-core.c_set_tv_freq.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_tuner-core.c_set_tv_freq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32 }
%struct.tuner = type { i64, i32, i32, %struct.TYPE_4__, i32, i32, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.analog_demod_ops }
%struct.analog_demod_ops = type { i32 (%struct.TYPE_4__*, %struct.analog_parameters*)* }
%struct.analog_parameters = type opaque
%struct.analog_parameters.0 = type { i32, i32, i32, i32 }

@UNSET = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [20 x i8] c"tuner type not set\0A\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"Tuner has no way to set tv freq\0A\00", align 1
@tv_range = common dso_local global i32* null, align 8
@.str.2 = private unnamed_addr constant [40 x i8] c"TV freq (%d.%02d) out of range (%d-%d)\0A\00", align 1
@.str.3 = private unnamed_addr constant [24 x i8] c"tv freq set to %d.%02d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.i2c_client*, i32)* @set_tv_freq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_tv_freq(%struct.i2c_client* %0, i32 %1) #0 {
  %3 = alloca %struct.i2c_client*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.tuner*, align 8
  %6 = alloca %struct.analog_demod_ops*, align 8
  %7 = alloca %struct.analog_parameters.0, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %9 = call i32 @i2c_get_clientdata(%struct.i2c_client* %8)
  %10 = call %struct.tuner* @to_tuner(i32 %9)
  store %struct.tuner* %10, %struct.tuner** %5, align 8
  %11 = load %struct.tuner*, %struct.tuner** %5, align 8
  %12 = getelementptr inbounds %struct.tuner, %struct.tuner* %11, i32 0, i32 3
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  store %struct.analog_demod_ops* %14, %struct.analog_demod_ops** %6, align 8
  %15 = getelementptr inbounds %struct.analog_parameters.0, %struct.analog_parameters.0* %7, i32 0, i32 0
  store i32 0, i32* %15, align 4
  %16 = getelementptr inbounds %struct.analog_parameters.0, %struct.analog_parameters.0* %7, i32 0, i32 1
  %17 = load %struct.tuner*, %struct.tuner** %5, align 8
  %18 = getelementptr inbounds %struct.tuner, %struct.tuner* %17, i32 0, i32 4
  %19 = load i32, i32* %18, align 8
  store i32 %19, i32* %16, align 4
  %20 = getelementptr inbounds %struct.analog_parameters.0, %struct.analog_parameters.0* %7, i32 0, i32 2
  %21 = load %struct.tuner*, %struct.tuner** %5, align 8
  %22 = getelementptr inbounds %struct.tuner, %struct.tuner* %21, i32 0, i32 5
  %23 = load i32, i32* %22, align 4
  store i32 %23, i32* %20, align 4
  %24 = getelementptr inbounds %struct.analog_parameters.0, %struct.analog_parameters.0* %7, i32 0, i32 3
  %25 = load %struct.tuner*, %struct.tuner** %5, align 8
  %26 = getelementptr inbounds %struct.tuner, %struct.tuner* %25, i32 0, i32 6
  %27 = load i32, i32* %26, align 8
  store i32 %27, i32* %24, align 4
  %28 = load %struct.tuner*, %struct.tuner** %5, align 8
  %29 = getelementptr inbounds %struct.tuner, %struct.tuner* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @UNSET, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %35

33:                                               ; preds = %2
  %34 = call i32 @tuner_warn(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  br label %109

35:                                               ; preds = %2
  %36 = load %struct.analog_demod_ops*, %struct.analog_demod_ops** %6, align 8
  %37 = getelementptr inbounds %struct.analog_demod_ops, %struct.analog_demod_ops* %36, i32 0, i32 0
  %38 = load i32 (%struct.TYPE_4__*, %struct.analog_parameters*)*, i32 (%struct.TYPE_4__*, %struct.analog_parameters*)** %37, align 8
  %39 = icmp eq i32 (%struct.TYPE_4__*, %struct.analog_parameters*)* null, %38
  br i1 %39, label %40, label %42

40:                                               ; preds = %35
  %41 = call i32 @tuner_warn(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  br label %109

42:                                               ; preds = %35
  %43 = load i32, i32* %4, align 4
  %44 = load i32*, i32** @tv_range, align 8
  %45 = getelementptr inbounds i32, i32* %44, i64 0
  %46 = load i32, i32* %45, align 4
  %47 = mul nsw i32 %46, 16
  %48 = icmp ult i32 %43, %47
  br i1 %48, label %56, label %49

49:                                               ; preds = %42
  %50 = load i32, i32* %4, align 4
  %51 = load i32*, i32** @tv_range, align 8
  %52 = getelementptr inbounds i32, i32* %51, i64 1
  %53 = load i32, i32* %52, align 4
  %54 = mul nsw i32 %53, 16
  %55 = icmp ugt i32 %50, %54
  br i1 %55, label %56, label %87

56:                                               ; preds = %49, %42
  %57 = load i32, i32* %4, align 4
  %58 = udiv i32 %57, 16
  %59 = load i32, i32* %4, align 4
  %60 = urem i32 %59, 16
  %61 = mul i32 %60, 100
  %62 = udiv i32 %61, 16
  %63 = load i32*, i32** @tv_range, align 8
  %64 = getelementptr inbounds i32, i32* %63, i64 0
  %65 = load i32, i32* %64, align 4
  %66 = load i32*, i32** @tv_range, align 8
  %67 = getelementptr inbounds i32, i32* %66, i64 1
  %68 = load i32, i32* %67, align 4
  %69 = call i32 (i8*, i32, i32, ...) @tuner_dbg(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0), i32 %58, i32 %62, i32 %65, i32 %68)
  %70 = load i32, i32* %4, align 4
  %71 = load i32*, i32** @tv_range, align 8
  %72 = getelementptr inbounds i32, i32* %71, i64 0
  %73 = load i32, i32* %72, align 4
  %74 = mul nsw i32 %73, 16
  %75 = icmp ult i32 %70, %74
  br i1 %75, label %76, label %81

76:                                               ; preds = %56
  %77 = load i32*, i32** @tv_range, align 8
  %78 = getelementptr inbounds i32, i32* %77, i64 0
  %79 = load i32, i32* %78, align 4
  %80 = mul nsw i32 %79, 16
  store i32 %80, i32* %4, align 4
  br label %86

81:                                               ; preds = %56
  %82 = load i32*, i32** @tv_range, align 8
  %83 = getelementptr inbounds i32, i32* %82, i64 1
  %84 = load i32, i32* %83, align 4
  %85 = mul nsw i32 %84, 16
  store i32 %85, i32* %4, align 4
  br label %86

86:                                               ; preds = %81, %76
  br label %87

87:                                               ; preds = %86, %49
  %88 = load i32, i32* %4, align 4
  %89 = getelementptr inbounds %struct.analog_parameters.0, %struct.analog_parameters.0* %7, i32 0, i32 0
  store i32 %88, i32* %89, align 4
  %90 = load i32, i32* %4, align 4
  %91 = udiv i32 %90, 16
  %92 = load i32, i32* %4, align 4
  %93 = urem i32 %92, 16
  %94 = mul i32 %93, 100
  %95 = udiv i32 %94, 16
  %96 = call i32 (i8*, i32, i32, ...) @tuner_dbg(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0), i32 %91, i32 %95)
  %97 = load i32, i32* %4, align 4
  %98 = load %struct.tuner*, %struct.tuner** %5, align 8
  %99 = getelementptr inbounds %struct.tuner, %struct.tuner* %98, i32 0, i32 1
  store i32 %97, i32* %99, align 8
  %100 = load %struct.tuner*, %struct.tuner** %5, align 8
  %101 = getelementptr inbounds %struct.tuner, %struct.tuner* %100, i32 0, i32 2
  store i32 0, i32* %101, align 4
  %102 = load %struct.analog_demod_ops*, %struct.analog_demod_ops** %6, align 8
  %103 = getelementptr inbounds %struct.analog_demod_ops, %struct.analog_demod_ops* %102, i32 0, i32 0
  %104 = load i32 (%struct.TYPE_4__*, %struct.analog_parameters*)*, i32 (%struct.TYPE_4__*, %struct.analog_parameters*)** %103, align 8
  %105 = load %struct.tuner*, %struct.tuner** %5, align 8
  %106 = getelementptr inbounds %struct.tuner, %struct.tuner* %105, i32 0, i32 3
  %107 = bitcast %struct.analog_parameters.0* %7 to %struct.analog_parameters*
  %108 = call i32 %104(%struct.TYPE_4__* %106, %struct.analog_parameters* %107)
  br label %109

109:                                              ; preds = %87, %40, %33
  ret void
}

declare dso_local %struct.tuner* @to_tuner(i32) #1

declare dso_local i32 @i2c_get_clientdata(%struct.i2c_client*) #1

declare dso_local i32 @tuner_warn(i8*) #1

declare dso_local i32 @tuner_dbg(i8*, i32, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
