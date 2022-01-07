; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_ov7670.c_ov7670_s_brightness.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_ov7670.c_ov7670_s_brightness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_subdev = type { i32 }

@REG_COM8 = common dso_local global i32 0, align 4
@COM8_AEC = common dso_local global i8 0, align 1
@REG_BRIGHT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_subdev*, i32)* @ov7670_s_brightness to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ov7670_s_brightness(%struct.v4l2_subdev* %0, i32 %1) #0 {
  %3 = alloca %struct.v4l2_subdev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8, align 1
  %6 = alloca i8, align 1
  %7 = alloca i32, align 4
  store %struct.v4l2_subdev* %0, %struct.v4l2_subdev** %3, align 8
  store i32 %1, i32* %4, align 4
  store i8 0, i8* %5, align 1
  %8 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %9 = load i32, i32* @REG_COM8, align 4
  %10 = call i32 @ov7670_read(%struct.v4l2_subdev* %8, i32 %9, i8* %5)
  %11 = load i8, i8* @COM8_AEC, align 1
  %12 = zext i8 %11 to i32
  %13 = xor i32 %12, -1
  %14 = load i8, i8* %5, align 1
  %15 = zext i8 %14 to i32
  %16 = and i32 %15, %13
  %17 = trunc i32 %16 to i8
  store i8 %17, i8* %5, align 1
  %18 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %19 = load i32, i32* @REG_COM8, align 4
  %20 = load i8, i8* %5, align 1
  %21 = call i32 @ov7670_write(%struct.v4l2_subdev* %18, i32 %19, i8 zeroext %20)
  %22 = load i32, i32* %4, align 4
  %23 = call zeroext i8 @ov7670_abs_to_sm(i32 %22)
  store i8 %23, i8* %6, align 1
  %24 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %25 = load i32, i32* @REG_BRIGHT, align 4
  %26 = load i8, i8* %6, align 1
  %27 = call i32 @ov7670_write(%struct.v4l2_subdev* %24, i32 %25, i8 zeroext %26)
  store i32 %27, i32* %7, align 4
  %28 = load i32, i32* %7, align 4
  ret i32 %28
}

declare dso_local i32 @ov7670_read(%struct.v4l2_subdev*, i32, i8*) #1

declare dso_local i32 @ov7670_write(%struct.v4l2_subdev*, i32, i8 zeroext) #1

declare dso_local zeroext i8 @ov7670_abs_to_sm(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
