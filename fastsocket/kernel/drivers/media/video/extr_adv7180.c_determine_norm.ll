; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_adv7180.c_determine_norm.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_adv7180.c_determine_norm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32 }

@ADV7180_STATUS1_REG = common dso_local global i32 0, align 4
@ADV7180_STATUS1_AUTOD_MASK = common dso_local global i32 0, align 4
@V4L2_STD_NTSC_M_JP = common dso_local global i32 0, align 4
@V4L2_STD_NTSC_443 = common dso_local global i32 0, align 4
@V4L2_STD_PAL_M = common dso_local global i32 0, align 4
@V4L2_STD_PAL_60 = common dso_local global i32 0, align 4
@V4L2_STD_PAL = common dso_local global i32 0, align 4
@V4L2_STD_SECAM = common dso_local global i32 0, align 4
@V4L2_STD_PAL_Nc = common dso_local global i32 0, align 4
@V4L2_STD_PAL_N = common dso_local global i32 0, align 4
@V4L2_STD_UNKNOWN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*)* @determine_norm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @determine_norm(%struct.i2c_client* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.i2c_client*, align 8
  %4 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %3, align 8
  %5 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %6 = load i32, i32* @ADV7180_STATUS1_REG, align 4
  %7 = call i32 @i2c_smbus_read_byte_data(%struct.i2c_client* %5, i32 %6)
  store i32 %7, i32* %4, align 4
  %8 = load i32, i32* %4, align 4
  %9 = load i32, i32* @ADV7180_STATUS1_AUTOD_MASK, align 4
  %10 = and i32 %8, %9
  switch i32 %10, label %29 [
    i32 134, label %11
    i32 135, label %13
    i32 130, label %15
    i32 133, label %17
    i32 132, label %19
    i32 129, label %21
    i32 131, label %23
    i32 128, label %27
  ]

11:                                               ; preds = %1
  %12 = load i32, i32* @V4L2_STD_NTSC_M_JP, align 4
  store i32 %12, i32* %2, align 4
  br label %31

13:                                               ; preds = %1
  %14 = load i32, i32* @V4L2_STD_NTSC_443, align 4
  store i32 %14, i32* %2, align 4
  br label %31

15:                                               ; preds = %1
  %16 = load i32, i32* @V4L2_STD_PAL_M, align 4
  store i32 %16, i32* %2, align 4
  br label %31

17:                                               ; preds = %1
  %18 = load i32, i32* @V4L2_STD_PAL_60, align 4
  store i32 %18, i32* %2, align 4
  br label %31

19:                                               ; preds = %1
  %20 = load i32, i32* @V4L2_STD_PAL, align 4
  store i32 %20, i32* %2, align 4
  br label %31

21:                                               ; preds = %1
  %22 = load i32, i32* @V4L2_STD_SECAM, align 4
  store i32 %22, i32* %2, align 4
  br label %31

23:                                               ; preds = %1
  %24 = load i32, i32* @V4L2_STD_PAL_Nc, align 4
  %25 = load i32, i32* @V4L2_STD_PAL_N, align 4
  %26 = or i32 %24, %25
  store i32 %26, i32* %2, align 4
  br label %31

27:                                               ; preds = %1
  %28 = load i32, i32* @V4L2_STD_SECAM, align 4
  store i32 %28, i32* %2, align 4
  br label %31

29:                                               ; preds = %1
  %30 = load i32, i32* @V4L2_STD_UNKNOWN, align 4
  store i32 %30, i32* %2, align 4
  br label %31

31:                                               ; preds = %29, %27, %23, %21, %19, %17, %15, %13, %11
  %32 = load i32, i32* %2, align 4
  ret i32 %32
}

declare dso_local i32 @i2c_smbus_read_byte_data(%struct.i2c_client*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
