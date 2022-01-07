; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_ov7670.c_ov7670_s_autogain.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_ov7670.c_ov7670_s_autogain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_subdev = type { i32 }

@REG_COM8 = common dso_local global i32 0, align 4
@COM8_AGC = common dso_local global i8 0, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_subdev*, i32)* @ov7670_s_autogain to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ov7670_s_autogain(%struct.v4l2_subdev* %0, i32 %1) #0 {
  %3 = alloca %struct.v4l2_subdev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8, align 1
  store %struct.v4l2_subdev* %0, %struct.v4l2_subdev** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %8 = load i32, i32* @REG_COM8, align 4
  %9 = call i32 @ov7670_read(%struct.v4l2_subdev* %7, i32 %8, i8* %6)
  store i32 %9, i32* %5, align 4
  %10 = load i32, i32* %5, align 4
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %35

12:                                               ; preds = %2
  %13 = load i32, i32* %4, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %22

15:                                               ; preds = %12
  %16 = load i8, i8* @COM8_AGC, align 1
  %17 = zext i8 %16 to i32
  %18 = load i8, i8* %6, align 1
  %19 = zext i8 %18 to i32
  %20 = or i32 %19, %17
  %21 = trunc i32 %20 to i8
  store i8 %21, i8* %6, align 1
  br label %30

22:                                               ; preds = %12
  %23 = load i8, i8* @COM8_AGC, align 1
  %24 = zext i8 %23 to i32
  %25 = xor i32 %24, -1
  %26 = load i8, i8* %6, align 1
  %27 = zext i8 %26 to i32
  %28 = and i32 %27, %25
  %29 = trunc i32 %28 to i8
  store i8 %29, i8* %6, align 1
  br label %30

30:                                               ; preds = %22, %15
  %31 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %32 = load i32, i32* @REG_COM8, align 4
  %33 = load i8, i8* %6, align 1
  %34 = call i32 @ov7670_write(%struct.v4l2_subdev* %31, i32 %32, i8 zeroext %33)
  store i32 %34, i32* %5, align 4
  br label %35

35:                                               ; preds = %30, %2
  %36 = load i32, i32* %5, align 4
  ret i32 %36
}

declare dso_local i32 @ov7670_read(%struct.v4l2_subdev*, i32, i8*) #1

declare dso_local i32 @ov7670_write(%struct.v4l2_subdev*, i32, i8 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
