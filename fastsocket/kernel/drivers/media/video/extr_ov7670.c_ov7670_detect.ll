; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_ov7670.c_ov7670_detect.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_ov7670.c_ov7670_detect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_subdev = type { i32 }

@REG_MIDH = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@REG_MIDL = common dso_local global i32 0, align 4
@REG_PID = common dso_local global i32 0, align 4
@REG_VER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_subdev*)* @ov7670_detect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ov7670_detect(%struct.v4l2_subdev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.v4l2_subdev*, align 8
  %4 = alloca i8, align 1
  %5 = alloca i32, align 4
  store %struct.v4l2_subdev* %0, %struct.v4l2_subdev** %3, align 8
  %6 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %7 = call i32 @ov7670_init(%struct.v4l2_subdev* %6, i32 0)
  store i32 %7, i32* %5, align 4
  %8 = load i32, i32* %5, align 4
  %9 = icmp slt i32 %8, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %1
  %11 = load i32, i32* %5, align 4
  store i32 %11, i32* %2, align 4
  br label %73

12:                                               ; preds = %1
  %13 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %14 = load i32, i32* @REG_MIDH, align 4
  %15 = call i32 @ov7670_read(%struct.v4l2_subdev* %13, i32 %14, i8* %4)
  store i32 %15, i32* %5, align 4
  %16 = load i32, i32* %5, align 4
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %12
  %19 = load i32, i32* %5, align 4
  store i32 %19, i32* %2, align 4
  br label %73

20:                                               ; preds = %12
  %21 = load i8, i8* %4, align 1
  %22 = zext i8 %21 to i32
  %23 = icmp ne i32 %22, 127
  br i1 %23, label %24, label %27

24:                                               ; preds = %20
  %25 = load i32, i32* @ENODEV, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %2, align 4
  br label %73

27:                                               ; preds = %20
  %28 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %29 = load i32, i32* @REG_MIDL, align 4
  %30 = call i32 @ov7670_read(%struct.v4l2_subdev* %28, i32 %29, i8* %4)
  store i32 %30, i32* %5, align 4
  %31 = load i32, i32* %5, align 4
  %32 = icmp slt i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %27
  %34 = load i32, i32* %5, align 4
  store i32 %34, i32* %2, align 4
  br label %73

35:                                               ; preds = %27
  %36 = load i8, i8* %4, align 1
  %37 = zext i8 %36 to i32
  %38 = icmp ne i32 %37, 162
  br i1 %38, label %39, label %42

39:                                               ; preds = %35
  %40 = load i32, i32* @ENODEV, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %2, align 4
  br label %73

42:                                               ; preds = %35
  %43 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %44 = load i32, i32* @REG_PID, align 4
  %45 = call i32 @ov7670_read(%struct.v4l2_subdev* %43, i32 %44, i8* %4)
  store i32 %45, i32* %5, align 4
  %46 = load i32, i32* %5, align 4
  %47 = icmp slt i32 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %42
  %49 = load i32, i32* %5, align 4
  store i32 %49, i32* %2, align 4
  br label %73

50:                                               ; preds = %42
  %51 = load i8, i8* %4, align 1
  %52 = zext i8 %51 to i32
  %53 = icmp ne i32 %52, 118
  br i1 %53, label %54, label %57

54:                                               ; preds = %50
  %55 = load i32, i32* @ENODEV, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %2, align 4
  br label %73

57:                                               ; preds = %50
  %58 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %59 = load i32, i32* @REG_VER, align 4
  %60 = call i32 @ov7670_read(%struct.v4l2_subdev* %58, i32 %59, i8* %4)
  store i32 %60, i32* %5, align 4
  %61 = load i32, i32* %5, align 4
  %62 = icmp slt i32 %61, 0
  br i1 %62, label %63, label %65

63:                                               ; preds = %57
  %64 = load i32, i32* %5, align 4
  store i32 %64, i32* %2, align 4
  br label %73

65:                                               ; preds = %57
  %66 = load i8, i8* %4, align 1
  %67 = zext i8 %66 to i32
  %68 = icmp ne i32 %67, 115
  br i1 %68, label %69, label %72

69:                                               ; preds = %65
  %70 = load i32, i32* @ENODEV, align 4
  %71 = sub nsw i32 0, %70
  store i32 %71, i32* %2, align 4
  br label %73

72:                                               ; preds = %65
  store i32 0, i32* %2, align 4
  br label %73

73:                                               ; preds = %72, %69, %63, %54, %48, %39, %33, %24, %18, %10
  %74 = load i32, i32* %2, align 4
  ret i32 %74
}

declare dso_local i32 @ov7670_init(%struct.v4l2_subdev*, i32) #1

declare dso_local i32 @ov7670_read(%struct.v4l2_subdev*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
