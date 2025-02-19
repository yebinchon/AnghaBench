; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_saa7115.c_saa711x_writeregs.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_saa7115.c_saa711x_writeregs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_subdev = type { i32 }
%struct.saa711x_state = type { i32 }

@debug = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"tried to access reserved reg 0x%02x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_subdev*, i8*)* @saa711x_writeregs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @saa711x_writeregs(%struct.v4l2_subdev* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.v4l2_subdev*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.saa711x_state*, align 8
  %7 = alloca i8, align 1
  %8 = alloca i8, align 1
  store %struct.v4l2_subdev* %0, %struct.v4l2_subdev** %4, align 8
  store i8* %1, i8** %5, align 8
  %9 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %10 = call %struct.saa711x_state* @to_state(%struct.v4l2_subdev* %9)
  store %struct.saa711x_state* %10, %struct.saa711x_state** %6, align 8
  br label %11

11:                                               ; preds = %42, %2
  %12 = load i8*, i8** %5, align 8
  %13 = load i8, i8* %12, align 1
  %14 = zext i8 %13 to i32
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %43

16:                                               ; preds = %11
  %17 = load i8*, i8** %5, align 8
  %18 = getelementptr inbounds i8, i8* %17, i32 1
  store i8* %18, i8** %5, align 8
  %19 = load i8, i8* %17, align 1
  store i8 %19, i8* %7, align 1
  %20 = load i8*, i8** %5, align 8
  %21 = getelementptr inbounds i8, i8* %20, i32 1
  store i8* %21, i8** %5, align 8
  %22 = load i8, i8* %20, align 1
  store i8 %22, i8* %8, align 1
  %23 = load %struct.saa711x_state*, %struct.saa711x_state** %6, align 8
  %24 = getelementptr inbounds %struct.saa711x_state, %struct.saa711x_state* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i8, i8* %7, align 1
  %27 = call i64 @saa711x_has_reg(i32 %25, i8 zeroext %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %37

29:                                               ; preds = %16
  %30 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %31 = load i8, i8* %7, align 1
  %32 = load i8, i8* %8, align 1
  %33 = call i64 @saa711x_write(%struct.v4l2_subdev* %30, i8 zeroext %31, i8 zeroext %32)
  %34 = icmp slt i64 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %29
  store i32 -1, i32* %3, align 4
  br label %44

36:                                               ; preds = %29
  br label %42

37:                                               ; preds = %16
  %38 = load i32, i32* @debug, align 4
  %39 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %40 = load i8, i8* %7, align 1
  %41 = call i32 @v4l2_dbg(i32 1, i32 %38, %struct.v4l2_subdev* %39, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i8 zeroext %40)
  br label %42

42:                                               ; preds = %37, %36
  br label %11

43:                                               ; preds = %11
  store i32 0, i32* %3, align 4
  br label %44

44:                                               ; preds = %43, %35
  %45 = load i32, i32* %3, align 4
  ret i32 %45
}

declare dso_local %struct.saa711x_state* @to_state(%struct.v4l2_subdev*) #1

declare dso_local i64 @saa711x_has_reg(i32, i8 zeroext) #1

declare dso_local i64 @saa711x_write(%struct.v4l2_subdev*, i8 zeroext, i8 zeroext) #1

declare dso_local i32 @v4l2_dbg(i32, i32, %struct.v4l2_subdev*, i8*, i8 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
