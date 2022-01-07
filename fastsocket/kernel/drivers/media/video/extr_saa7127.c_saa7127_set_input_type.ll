; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_saa7127.c_saa7127_set_input_type.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_saa7127.c_saa7127_set_input_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_subdev = type { i32 }
%struct.saa7127_state = type { i32, i32, i32 }

@debug = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"Selecting Normal Encoder Input\0A\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"Selecting Color Bar generator\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_subdev*, i32)* @saa7127_set_input_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @saa7127_set_input_type(%struct.v4l2_subdev* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.v4l2_subdev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.saa7127_state*, align 8
  store %struct.v4l2_subdev* %0, %struct.v4l2_subdev** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %8 = call %struct.saa7127_state* @to_state(%struct.v4l2_subdev* %7)
  store %struct.saa7127_state* %8, %struct.saa7127_state** %6, align 8
  %9 = load i32, i32* %5, align 4
  switch i32 %9, label %22 [
    i32 129, label %10
    i32 128, label %16
  ]

10:                                               ; preds = %2
  %11 = load i32, i32* @debug, align 4
  %12 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %13 = call i32 @v4l2_dbg(i32 1, i32 %11, %struct.v4l2_subdev* %12, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %14 = load %struct.saa7127_state*, %struct.saa7127_state** %6, align 8
  %15 = getelementptr inbounds %struct.saa7127_state, %struct.saa7127_state* %14, i32 0, i32 0
  store i32 0, i32* %15, align 4
  br label %25

16:                                               ; preds = %2
  %17 = load i32, i32* @debug, align 4
  %18 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %19 = call i32 @v4l2_dbg(i32 1, i32 %17, %struct.v4l2_subdev* %18, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  %20 = load %struct.saa7127_state*, %struct.saa7127_state** %6, align 8
  %21 = getelementptr inbounds %struct.saa7127_state, %struct.saa7127_state* %20, i32 0, i32 0
  store i32 128, i32* %21, align 4
  br label %25

22:                                               ; preds = %2
  %23 = load i32, i32* @EINVAL, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %3, align 4
  br label %38

25:                                               ; preds = %16, %10
  %26 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %27 = load %struct.saa7127_state*, %struct.saa7127_state** %6, align 8
  %28 = getelementptr inbounds %struct.saa7127_state, %struct.saa7127_state* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.saa7127_state*, %struct.saa7127_state** %6, align 8
  %31 = getelementptr inbounds %struct.saa7127_state, %struct.saa7127_state* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = or i32 %29, %32
  %34 = call i32 @saa7127_write(%struct.v4l2_subdev* %26, i32 58, i32 %33)
  %35 = load i32, i32* %5, align 4
  %36 = load %struct.saa7127_state*, %struct.saa7127_state** %6, align 8
  %37 = getelementptr inbounds %struct.saa7127_state, %struct.saa7127_state* %36, i32 0, i32 2
  store i32 %35, i32* %37, align 4
  store i32 0, i32* %3, align 4
  br label %38

38:                                               ; preds = %25, %22
  %39 = load i32, i32* %3, align 4
  ret i32 %39
}

declare dso_local %struct.saa7127_state* @to_state(%struct.v4l2_subdev*) #1

declare dso_local i32 @v4l2_dbg(i32, i32, %struct.v4l2_subdev*, i8*) #1

declare dso_local i32 @saa7127_write(%struct.v4l2_subdev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
