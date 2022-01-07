; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/input/extr_ff-memless.c_input_ff_create_memless.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/input/extr_ff-memless.c_input_ff_create_memless.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.input_dev = type { i32, %struct.ff_device* }
%struct.ff_device = type { i32*, i32, i32, i32, i32, i32, %struct.ml_device* }
%struct.ml_device = type { i32 (%struct.input_dev.0*, i8*, %struct.ff_effect*)*, i32, %struct.TYPE_2__*, i32, i8*, %struct.input_dev* }
%struct.input_dev.0 = type opaque
%struct.ff_effect = type opaque
%struct.TYPE_2__ = type { i32* }
%struct.ff_effect.1 = type opaque

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ml_effect_timer = common dso_local global i32 0, align 4
@FF_GAIN = common dso_local global i32 0, align 4
@FF_MEMLESS_EFFECTS = common dso_local global i32 0, align 4
@ml_ff_upload = common dso_local global i32 0, align 4
@ml_ff_playback = common dso_local global i32 0, align 4
@ml_ff_set_gain = common dso_local global i32 0, align 4
@ml_ff_destroy = common dso_local global i32 0, align 4
@FF_RUMBLE = common dso_local global i32 0, align 4
@FF_PERIODIC = common dso_local global i32 0, align 4
@FF_SINE = common dso_local global i32 0, align 4
@FF_TRIANGLE = common dso_local global i32 0, align 4
@FF_SQUARE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @input_ff_create_memless(%struct.input_dev* %0, i8* %1, i32 (%struct.input_dev*, i8*, %struct.ff_effect.1*)* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.input_dev*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32 (%struct.input_dev*, i8*, %struct.ff_effect.1*)*, align 8
  %8 = alloca %struct.ml_device*, align 8
  %9 = alloca %struct.ff_device*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.input_dev* %0, %struct.input_dev** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 (%struct.input_dev*, i8*, %struct.ff_effect.1*)* %2, i32 (%struct.input_dev*, i8*, %struct.ff_effect.1*)** %7, align 8
  %12 = load i32, i32* @GFP_KERNEL, align 4
  %13 = call %struct.ml_device* @kzalloc(i32 48, i32 %12)
  store %struct.ml_device* %13, %struct.ml_device** %8, align 8
  %14 = load %struct.ml_device*, %struct.ml_device** %8, align 8
  %15 = icmp ne %struct.ml_device* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %3
  %17 = load i32, i32* @ENOMEM, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %4, align 4
  br label %121

19:                                               ; preds = %3
  %20 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %21 = load %struct.ml_device*, %struct.ml_device** %8, align 8
  %22 = getelementptr inbounds %struct.ml_device, %struct.ml_device* %21, i32 0, i32 5
  store %struct.input_dev* %20, %struct.input_dev** %22, align 8
  %23 = load i8*, i8** %6, align 8
  %24 = load %struct.ml_device*, %struct.ml_device** %8, align 8
  %25 = getelementptr inbounds %struct.ml_device, %struct.ml_device* %24, i32 0, i32 4
  store i8* %23, i8** %25, align 8
  %26 = load i32 (%struct.input_dev*, i8*, %struct.ff_effect.1*)*, i32 (%struct.input_dev*, i8*, %struct.ff_effect.1*)** %7, align 8
  %27 = bitcast i32 (%struct.input_dev*, i8*, %struct.ff_effect.1*)* %26 to i32 (%struct.input_dev.0*, i8*, %struct.ff_effect*)*
  %28 = load %struct.ml_device*, %struct.ml_device** %8, align 8
  %29 = getelementptr inbounds %struct.ml_device, %struct.ml_device* %28, i32 0, i32 0
  store i32 (%struct.input_dev.0*, i8*, %struct.ff_effect*)* %27, i32 (%struct.input_dev.0*, i8*, %struct.ff_effect*)** %29, align 8
  %30 = load %struct.ml_device*, %struct.ml_device** %8, align 8
  %31 = getelementptr inbounds %struct.ml_device, %struct.ml_device* %30, i32 0, i32 1
  store i32 65535, i32* %31, align 8
  %32 = load %struct.ml_device*, %struct.ml_device** %8, align 8
  %33 = getelementptr inbounds %struct.ml_device, %struct.ml_device* %32, i32 0, i32 3
  %34 = load i32, i32* @ml_effect_timer, align 4
  %35 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %36 = ptrtoint %struct.input_dev* %35 to i64
  %37 = call i32 @setup_timer(i32* %33, i32 %34, i64 %36)
  %38 = load i32, i32* @FF_GAIN, align 4
  %39 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %40 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = call i32 @set_bit(i32 %38, i32 %41)
  %43 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %44 = load i32, i32* @FF_MEMLESS_EFFECTS, align 4
  %45 = call i32 @input_ff_create(%struct.input_dev* %43, i32 %44)
  store i32 %45, i32* %10, align 4
  %46 = load i32, i32* %10, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %52

48:                                               ; preds = %19
  %49 = load %struct.ml_device*, %struct.ml_device** %8, align 8
  %50 = call i32 @kfree(%struct.ml_device* %49)
  %51 = load i32, i32* %10, align 4
  store i32 %51, i32* %4, align 4
  br label %121

52:                                               ; preds = %19
  %53 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %54 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %53, i32 0, i32 1
  %55 = load %struct.ff_device*, %struct.ff_device** %54, align 8
  store %struct.ff_device* %55, %struct.ff_device** %9, align 8
  %56 = load %struct.ml_device*, %struct.ml_device** %8, align 8
  %57 = load %struct.ff_device*, %struct.ff_device** %9, align 8
  %58 = getelementptr inbounds %struct.ff_device, %struct.ff_device* %57, i32 0, i32 6
  store %struct.ml_device* %56, %struct.ml_device** %58, align 8
  %59 = load i32, i32* @ml_ff_upload, align 4
  %60 = load %struct.ff_device*, %struct.ff_device** %9, align 8
  %61 = getelementptr inbounds %struct.ff_device, %struct.ff_device* %60, i32 0, i32 5
  store i32 %59, i32* %61, align 8
  %62 = load i32, i32* @ml_ff_playback, align 4
  %63 = load %struct.ff_device*, %struct.ff_device** %9, align 8
  %64 = getelementptr inbounds %struct.ff_device, %struct.ff_device* %63, i32 0, i32 4
  store i32 %62, i32* %64, align 4
  %65 = load i32, i32* @ml_ff_set_gain, align 4
  %66 = load %struct.ff_device*, %struct.ff_device** %9, align 8
  %67 = getelementptr inbounds %struct.ff_device, %struct.ff_device* %66, i32 0, i32 3
  store i32 %65, i32* %67, align 8
  %68 = load i32, i32* @ml_ff_destroy, align 4
  %69 = load %struct.ff_device*, %struct.ff_device** %9, align 8
  %70 = getelementptr inbounds %struct.ff_device, %struct.ff_device* %69, i32 0, i32 2
  store i32 %68, i32* %70, align 4
  %71 = load i32, i32* @FF_RUMBLE, align 4
  %72 = load %struct.ff_device*, %struct.ff_device** %9, align 8
  %73 = getelementptr inbounds %struct.ff_device, %struct.ff_device* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 8
  %75 = call i64 @test_bit(i32 %71, i32 %74)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %98

77:                                               ; preds = %52
  %78 = load i32, i32* @FF_PERIODIC, align 4
  %79 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %80 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = call i32 @set_bit(i32 %78, i32 %81)
  %83 = load i32, i32* @FF_SINE, align 4
  %84 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %85 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = call i32 @set_bit(i32 %83, i32 %86)
  %88 = load i32, i32* @FF_TRIANGLE, align 4
  %89 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %90 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = call i32 @set_bit(i32 %88, i32 %91)
  %93 = load i32, i32* @FF_SQUARE, align 4
  %94 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %95 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = call i32 @set_bit(i32 %93, i32 %96)
  br label %98

98:                                               ; preds = %77, %52
  store i32 0, i32* %11, align 4
  br label %99

99:                                               ; preds = %117, %98
  %100 = load i32, i32* %11, align 4
  %101 = load i32, i32* @FF_MEMLESS_EFFECTS, align 4
  %102 = icmp slt i32 %100, %101
  br i1 %102, label %103, label %120

103:                                              ; preds = %99
  %104 = load %struct.ff_device*, %struct.ff_device** %9, align 8
  %105 = getelementptr inbounds %struct.ff_device, %struct.ff_device* %104, i32 0, i32 0
  %106 = load i32*, i32** %105, align 8
  %107 = load i32, i32* %11, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds i32, i32* %106, i64 %108
  %110 = load %struct.ml_device*, %struct.ml_device** %8, align 8
  %111 = getelementptr inbounds %struct.ml_device, %struct.ml_device* %110, i32 0, i32 2
  %112 = load %struct.TYPE_2__*, %struct.TYPE_2__** %111, align 8
  %113 = load i32, i32* %11, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %112, i64 %114
  %116 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %115, i32 0, i32 0
  store i32* %109, i32** %116, align 8
  br label %117

117:                                              ; preds = %103
  %118 = load i32, i32* %11, align 4
  %119 = add nsw i32 %118, 1
  store i32 %119, i32* %11, align 4
  br label %99

120:                                              ; preds = %99
  store i32 0, i32* %4, align 4
  br label %121

121:                                              ; preds = %120, %48, %16
  %122 = load i32, i32* %4, align 4
  ret i32 %122
}

declare dso_local %struct.ml_device* @kzalloc(i32, i32) #1

declare dso_local i32 @setup_timer(i32*, i32, i64) #1

declare dso_local i32 @set_bit(i32, i32) #1

declare dso_local i32 @input_ff_create(%struct.input_dev*, i32) #1

declare dso_local i32 @kfree(%struct.ml_device*) #1

declare dso_local i64 @test_bit(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
