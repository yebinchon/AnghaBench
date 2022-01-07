; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_tda9875.c_tda9875_set.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_tda9875.c_tda9875_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_subdev = type { i32 }
%struct.tda9875 = type { i32, i32, i32, i32 }

@debug = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"tda9875_set(%04x,%04x,%04x,%04x)\0A\00", align 1
@TDA9875_MVL = common dso_local global i32 0, align 4
@TDA9875_MVR = common dso_local global i32 0, align 4
@TDA9875_MBA = common dso_local global i32 0, align 4
@TDA9875_MTR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.v4l2_subdev*)* @tda9875_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tda9875_set(%struct.v4l2_subdev* %0) #0 {
  %2 = alloca %struct.v4l2_subdev*, align 8
  %3 = alloca %struct.tda9875*, align 8
  %4 = alloca i8, align 1
  store %struct.v4l2_subdev* %0, %struct.v4l2_subdev** %2, align 8
  %5 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %6 = call %struct.tda9875* @to_state(%struct.v4l2_subdev* %5)
  store %struct.tda9875* %6, %struct.tda9875** %3, align 8
  %7 = load i32, i32* @debug, align 4
  %8 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %9 = load %struct.tda9875*, %struct.tda9875** %3, align 8
  %10 = getelementptr inbounds %struct.tda9875, %struct.tda9875* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load %struct.tda9875*, %struct.tda9875** %3, align 8
  %13 = getelementptr inbounds %struct.tda9875, %struct.tda9875* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.tda9875*, %struct.tda9875** %3, align 8
  %16 = getelementptr inbounds %struct.tda9875, %struct.tda9875* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.tda9875*, %struct.tda9875** %3, align 8
  %19 = getelementptr inbounds %struct.tda9875, %struct.tda9875* %18, i32 0, i32 3
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @v4l2_dbg(i32 1, i32 %7, %struct.v4l2_subdev* %8, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %11, i32 %14, i32 %17, i32 %20)
  %22 = load %struct.tda9875*, %struct.tda9875** %3, align 8
  %23 = getelementptr inbounds %struct.tda9875, %struct.tda9875* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = and i32 %24, 255
  %26 = trunc i32 %25 to i8
  store i8 %26, i8* %4, align 1
  %27 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %28 = load i32, i32* @TDA9875_MVL, align 4
  %29 = load i8, i8* %4, align 1
  %30 = call i32 @tda9875_write(%struct.v4l2_subdev* %27, i32 %28, i8 zeroext %29)
  %31 = load %struct.tda9875*, %struct.tda9875** %3, align 8
  %32 = getelementptr inbounds %struct.tda9875, %struct.tda9875* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = and i32 %33, 255
  %35 = trunc i32 %34 to i8
  store i8 %35, i8* %4, align 1
  %36 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %37 = load i32, i32* @TDA9875_MVR, align 4
  %38 = load i8, i8* %4, align 1
  %39 = call i32 @tda9875_write(%struct.v4l2_subdev* %36, i32 %37, i8 zeroext %38)
  %40 = load %struct.tda9875*, %struct.tda9875** %3, align 8
  %41 = getelementptr inbounds %struct.tda9875, %struct.tda9875* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 4
  %43 = and i32 %42, 255
  %44 = trunc i32 %43 to i8
  store i8 %44, i8* %4, align 1
  %45 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %46 = load i32, i32* @TDA9875_MBA, align 4
  %47 = load i8, i8* %4, align 1
  %48 = call i32 @tda9875_write(%struct.v4l2_subdev* %45, i32 %46, i8 zeroext %47)
  %49 = load %struct.tda9875*, %struct.tda9875** %3, align 8
  %50 = getelementptr inbounds %struct.tda9875, %struct.tda9875* %49, i32 0, i32 3
  %51 = load i32, i32* %50, align 4
  %52 = and i32 %51, 255
  %53 = trunc i32 %52 to i8
  store i8 %53, i8* %4, align 1
  %54 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %55 = load i32, i32* @TDA9875_MTR, align 4
  %56 = load i8, i8* %4, align 1
  %57 = call i32 @tda9875_write(%struct.v4l2_subdev* %54, i32 %55, i8 zeroext %56)
  ret void
}

declare dso_local %struct.tda9875* @to_state(%struct.v4l2_subdev*) #1

declare dso_local i32 @v4l2_dbg(i32, i32, %struct.v4l2_subdev*, i8*, i32, i32, i32, i32) #1

declare dso_local i32 @tda9875_write(%struct.v4l2_subdev*, i32, i8 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
