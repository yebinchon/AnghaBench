; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_ov7670.c_ov7670_write.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_ov7670.c_ov7670_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_subdev = type { i32 }
%struct.ov7670_info = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_subdev*, i8, i8)* @ov7670_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ov7670_write(%struct.v4l2_subdev* %0, i8 zeroext %1, i8 zeroext %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.v4l2_subdev*, align 8
  %6 = alloca i8, align 1
  %7 = alloca i8, align 1
  %8 = alloca %struct.ov7670_info*, align 8
  store %struct.v4l2_subdev* %0, %struct.v4l2_subdev** %5, align 8
  store i8 %1, i8* %6, align 1
  store i8 %2, i8* %7, align 1
  %9 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %5, align 8
  %10 = call %struct.ov7670_info* @to_state(%struct.v4l2_subdev* %9)
  store %struct.ov7670_info* %10, %struct.ov7670_info** %8, align 8
  %11 = load %struct.ov7670_info*, %struct.ov7670_info** %8, align 8
  %12 = getelementptr inbounds %struct.ov7670_info, %struct.ov7670_info* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %20

15:                                               ; preds = %3
  %16 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %5, align 8
  %17 = load i8, i8* %6, align 1
  %18 = load i8, i8* %7, align 1
  %19 = call i32 @ov7670_write_smbus(%struct.v4l2_subdev* %16, i8 zeroext %17, i8 zeroext %18)
  store i32 %19, i32* %4, align 4
  br label %25

20:                                               ; preds = %3
  %21 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %5, align 8
  %22 = load i8, i8* %6, align 1
  %23 = load i8, i8* %7, align 1
  %24 = call i32 @ov7670_write_i2c(%struct.v4l2_subdev* %21, i8 zeroext %22, i8 zeroext %23)
  store i32 %24, i32* %4, align 4
  br label %25

25:                                               ; preds = %20, %15
  %26 = load i32, i32* %4, align 4
  ret i32 %26
}

declare dso_local %struct.ov7670_info* @to_state(%struct.v4l2_subdev*) #1

declare dso_local i32 @ov7670_write_smbus(%struct.v4l2_subdev*, i8 zeroext, i8 zeroext) #1

declare dso_local i32 @ov7670_write_i2c(%struct.v4l2_subdev*, i8 zeroext, i8 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
