; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_tvp5150.c_tvp5150_selmux.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_tvp5150.c_tvp5150_selmux.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_subdev = type { i32 }
%struct.tvp5150 = type { i32, i32, i32 }

@TVP5150_BLACK_SCREEN = common dso_local global i32 0, align 4
@debug = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [81 x i8] c"Selecting video route: route input=%i, output=%i => tvp5150 input=%i, opmode=%i\0A\00", align 1
@TVP5150_OP_MODE_CTL = common dso_local global i32 0, align 4
@TVP5150_VD_IN_SRC_SEL_1 = common dso_local global i32 0, align 4
@TVP5150_MISC_CTL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.v4l2_subdev*)* @tvp5150_selmux to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tvp5150_selmux(%struct.v4l2_subdev* %0) #0 {
  %2 = alloca %struct.v4l2_subdev*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.tvp5150*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8, align 1
  store %struct.v4l2_subdev* %0, %struct.v4l2_subdev** %2, align 8
  store i32 0, i32* %3, align 4
  %7 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %8 = call %struct.tvp5150* @to_tvp5150(%struct.v4l2_subdev* %7)
  store %struct.tvp5150* %8, %struct.tvp5150** %4, align 8
  store i32 0, i32* %5, align 4
  %9 = load %struct.tvp5150*, %struct.tvp5150** %4, align 8
  %10 = getelementptr inbounds %struct.tvp5150, %struct.tvp5150* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @TVP5150_BLACK_SCREEN, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %20, label %15

15:                                               ; preds = %1
  %16 = load %struct.tvp5150*, %struct.tvp5150** %4, align 8
  %17 = getelementptr inbounds %struct.tvp5150, %struct.tvp5150* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %15, %1
  store i32 8, i32* %5, align 4
  br label %21

21:                                               ; preds = %20, %15
  %22 = load %struct.tvp5150*, %struct.tvp5150** %4, align 8
  %23 = getelementptr inbounds %struct.tvp5150, %struct.tvp5150* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  switch i32 %24, label %30 [
    i32 129, label %25
    i32 130, label %28
    i32 128, label %29
  ]

25:                                               ; preds = %21
  %26 = load i32, i32* %5, align 4
  %27 = or i32 %26, 2
  store i32 %27, i32* %5, align 4
  br label %28

28:                                               ; preds = %21, %25
  br label %33

29:                                               ; preds = %21
  br label %30

30:                                               ; preds = %21, %29
  %31 = load i32, i32* %5, align 4
  %32 = or i32 %31, 1
  store i32 %32, i32* %5, align 4
  br label %33

33:                                               ; preds = %30, %28
  %34 = load i32, i32* @debug, align 4
  %35 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %36 = load %struct.tvp5150*, %struct.tvp5150** %4, align 8
  %37 = getelementptr inbounds %struct.tvp5150, %struct.tvp5150* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.tvp5150*, %struct.tvp5150** %4, align 8
  %40 = getelementptr inbounds %struct.tvp5150, %struct.tvp5150* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* %5, align 4
  %43 = load i32, i32* %3, align 4
  %44 = call i32 @v4l2_dbg(i32 1, i32 %34, %struct.v4l2_subdev* %35, i8* getelementptr inbounds ([81 x i8], [81 x i8]* @.str, i64 0, i64 0), i32 %38, i32 %41, i32 %42, i32 %43)
  %45 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %46 = load i32, i32* @TVP5150_OP_MODE_CTL, align 4
  %47 = load i32, i32* %3, align 4
  %48 = trunc i32 %47 to i8
  %49 = call i32 @tvp5150_write(%struct.v4l2_subdev* %45, i32 %46, i8 zeroext %48)
  %50 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %51 = load i32, i32* @TVP5150_VD_IN_SRC_SEL_1, align 4
  %52 = load i32, i32* %5, align 4
  %53 = trunc i32 %52 to i8
  %54 = call i32 @tvp5150_write(%struct.v4l2_subdev* %50, i32 %51, i8 zeroext %53)
  %55 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %56 = load i32, i32* @TVP5150_MISC_CTL, align 4
  %57 = call zeroext i8 @tvp5150_read(%struct.v4l2_subdev* %55, i32 %56)
  store i8 %57, i8* %6, align 1
  %58 = load %struct.tvp5150*, %struct.tvp5150** %4, align 8
  %59 = getelementptr inbounds %struct.tvp5150, %struct.tvp5150* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = icmp eq i32 %60, 128
  br i1 %61, label %62, label %68

62:                                               ; preds = %33
  %63 = load i8, i8* %6, align 1
  %64 = zext i8 %63 to i32
  %65 = and i32 %64, -65
  %66 = or i32 %65, 16
  %67 = trunc i32 %66 to i8
  store i8 %67, i8* %6, align 1
  br label %74

68:                                               ; preds = %33
  %69 = load i8, i8* %6, align 1
  %70 = zext i8 %69 to i32
  %71 = and i32 %70, -17
  %72 = or i32 %71, 64
  %73 = trunc i32 %72 to i8
  store i8 %73, i8* %6, align 1
  br label %74

74:                                               ; preds = %68, %62
  %75 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %76 = load i32, i32* @TVP5150_MISC_CTL, align 4
  %77 = load i8, i8* %6, align 1
  %78 = call i32 @tvp5150_write(%struct.v4l2_subdev* %75, i32 %76, i8 zeroext %77)
  ret void
}

declare dso_local %struct.tvp5150* @to_tvp5150(%struct.v4l2_subdev*) #1

declare dso_local i32 @v4l2_dbg(i32, i32, %struct.v4l2_subdev*, i8*, i32, i32, i32, i32) #1

declare dso_local i32 @tvp5150_write(%struct.v4l2_subdev*, i32, i8 zeroext) #1

declare dso_local zeroext i8 @tvp5150_read(%struct.v4l2_subdev*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
