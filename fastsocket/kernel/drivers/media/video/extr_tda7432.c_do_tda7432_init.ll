; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_tda7432.c_do_tda7432_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_tda7432.c_do_tda7432_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_subdev = type { i32 }
%struct.tda7432 = type { i32, i32, i32, i64, i8*, i8*, i8*, i8*, i32, i32 }

@debug = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"In tda7432_init\0A\00", align 1
@TDA7432_STEREO_IN = common dso_local global i32 0, align 4
@TDA7432_BASS_SYM = common dso_local global i32 0, align 4
@TDA7432_BASS_NORM = common dso_local global i32 0, align 4
@loudness = common dso_local global i64 0, align 8
@TDA7432_LD_ON = common dso_local global i32 0, align 4
@TDA7432_TREBLE_0DB = common dso_local global i32 0, align 4
@TDA7432_BASS_0DB = common dso_local global i32 0, align 4
@TDA7432_ATTEN_0DB = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.v4l2_subdev*)* @do_tda7432_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @do_tda7432_init(%struct.v4l2_subdev* %0) #0 {
  %2 = alloca %struct.v4l2_subdev*, align 8
  %3 = alloca %struct.tda7432*, align 8
  store %struct.v4l2_subdev* %0, %struct.v4l2_subdev** %2, align 8
  %4 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %5 = call %struct.tda7432* @to_state(%struct.v4l2_subdev* %4)
  store %struct.tda7432* %5, %struct.tda7432** %3, align 8
  %6 = load i32, i32* @debug, align 4
  %7 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %8 = call i32 @v4l2_dbg(i32 2, i32 %6, %struct.v4l2_subdev* %7, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %9 = load i32, i32* @TDA7432_STEREO_IN, align 4
  %10 = load i32, i32* @TDA7432_BASS_SYM, align 4
  %11 = or i32 %9, %10
  %12 = load i32, i32* @TDA7432_BASS_NORM, align 4
  %13 = or i32 %11, %12
  %14 = load %struct.tda7432*, %struct.tda7432** %3, align 8
  %15 = getelementptr inbounds %struct.tda7432, %struct.tda7432* %14, i32 0, i32 0
  store i32 %13, i32* %15, align 8
  %16 = load %struct.tda7432*, %struct.tda7432** %3, align 8
  %17 = getelementptr inbounds %struct.tda7432, %struct.tda7432* %16, i32 0, i32 1
  store i32 59, i32* %17, align 4
  %18 = load i64, i64* @loudness, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %26

20:                                               ; preds = %1
  %21 = load i32, i32* @TDA7432_LD_ON, align 4
  %22 = load %struct.tda7432*, %struct.tda7432** %3, align 8
  %23 = getelementptr inbounds %struct.tda7432, %struct.tda7432* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = or i32 %24, %21
  store i32 %25, i32* %23, align 4
  br label %26

26:                                               ; preds = %20, %1
  %27 = load %struct.tda7432*, %struct.tda7432** %3, align 8
  %28 = getelementptr inbounds %struct.tda7432, %struct.tda7432* %27, i32 0, i32 2
  store i32 1, i32* %28, align 8
  %29 = load i32, i32* @TDA7432_TREBLE_0DB, align 4
  %30 = load %struct.tda7432*, %struct.tda7432** %3, align 8
  %31 = getelementptr inbounds %struct.tda7432, %struct.tda7432* %30, i32 0, i32 9
  store i32 %29, i32* %31, align 4
  %32 = load i32, i32* @TDA7432_BASS_0DB, align 4
  %33 = load %struct.tda7432*, %struct.tda7432** %3, align 8
  %34 = getelementptr inbounds %struct.tda7432, %struct.tda7432* %33, i32 0, i32 8
  store i32 %32, i32* %34, align 8
  %35 = load i8*, i8** @TDA7432_ATTEN_0DB, align 8
  %36 = load %struct.tda7432*, %struct.tda7432** %3, align 8
  %37 = getelementptr inbounds %struct.tda7432, %struct.tda7432* %36, i32 0, i32 7
  store i8* %35, i8** %37, align 8
  %38 = load i8*, i8** @TDA7432_ATTEN_0DB, align 8
  %39 = load %struct.tda7432*, %struct.tda7432** %3, align 8
  %40 = getelementptr inbounds %struct.tda7432, %struct.tda7432* %39, i32 0, i32 6
  store i8* %38, i8** %40, align 8
  %41 = load i8*, i8** @TDA7432_ATTEN_0DB, align 8
  %42 = load %struct.tda7432*, %struct.tda7432** %3, align 8
  %43 = getelementptr inbounds %struct.tda7432, %struct.tda7432* %42, i32 0, i32 5
  store i8* %41, i8** %43, align 8
  %44 = load i8*, i8** @TDA7432_ATTEN_0DB, align 8
  %45 = load %struct.tda7432*, %struct.tda7432** %3, align 8
  %46 = getelementptr inbounds %struct.tda7432, %struct.tda7432* %45, i32 0, i32 4
  store i8* %44, i8** %46, align 8
  %47 = load i64, i64* @loudness, align 8
  %48 = load %struct.tda7432*, %struct.tda7432** %3, align 8
  %49 = getelementptr inbounds %struct.tda7432, %struct.tda7432* %48, i32 0, i32 3
  store i64 %47, i64* %49, align 8
  %50 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %51 = call i32 @tda7432_set(%struct.v4l2_subdev* %50)
  ret void
}

declare dso_local %struct.tda7432* @to_state(%struct.v4l2_subdev*) #1

declare dso_local i32 @v4l2_dbg(i32, i32, %struct.v4l2_subdev*, i8*) #1

declare dso_local i32 @tda7432_set(%struct.v4l2_subdev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
