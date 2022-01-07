; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_ov511.c_decoder_set_norm.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_ov511.c_decoder_set_norm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_ov511 = type { i32 }

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@VIDEO_MODE_NTSC = common dso_local global i32 0, align 4
@VIDEO_MODE_PAL = common dso_local global i32 0, align 4
@VIDEO_MODE_AUTO = common dso_local global i32 0, align 4
@VIDEO_MODE_SECAM = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_ov511*, i32)* @decoder_set_norm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @decoder_set_norm(%struct.usb_ov511* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.usb_ov511*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.usb_ov511* %0, %struct.usb_ov511** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load i32, i32* %5, align 4
  %9 = call i32 @PDEBUG(i32 4, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %8)
  %10 = load %struct.usb_ov511*, %struct.usb_ov511** %4, align 8
  %11 = getelementptr inbounds %struct.usb_ov511, %struct.usb_ov511* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  switch i32 %12, label %46 [
    i32 128, label %13
  ]

13:                                               ; preds = %2
  %14 = load i32, i32* %5, align 4
  %15 = load i32, i32* @VIDEO_MODE_NTSC, align 4
  %16 = icmp eq i32 %14, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %13
  store i32 64, i32* %6, align 4
  store i32 0, i32* %7, align 4
  br label %39

18:                                               ; preds = %13
  %19 = load i32, i32* %5, align 4
  %20 = load i32, i32* @VIDEO_MODE_PAL, align 4
  %21 = icmp eq i32 %19, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %18
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  br label %38

23:                                               ; preds = %18
  %24 = load i32, i32* %5, align 4
  %25 = load i32, i32* @VIDEO_MODE_AUTO, align 4
  %26 = icmp eq i32 %24, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %23
  store i32 128, i32* %6, align 4
  store i32 0, i32* %7, align 4
  br label %37

28:                                               ; preds = %23
  %29 = load i32, i32* %5, align 4
  %30 = load i32, i32* @VIDEO_MODE_SECAM, align 4
  %31 = icmp eq i32 %29, %30
  br i1 %31, label %32, label %33

32:                                               ; preds = %28
  store i32 0, i32* %6, align 4
  store i32 80, i32* %7, align 4
  br label %36

33:                                               ; preds = %28
  %34 = load i32, i32* @EINVAL, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %3, align 4
  br label %50

36:                                               ; preds = %32
  br label %37

37:                                               ; preds = %36, %27
  br label %38

38:                                               ; preds = %37, %22
  br label %39

39:                                               ; preds = %38, %17
  %40 = load %struct.usb_ov511*, %struct.usb_ov511** %4, align 8
  %41 = load i32, i32* %6, align 4
  %42 = call i32 @i2c_w_mask(%struct.usb_ov511* %40, i32 8, i32 %41, i32 192)
  %43 = load %struct.usb_ov511*, %struct.usb_ov511** %4, align 8
  %44 = load i32, i32* %7, align 4
  %45 = call i32 @i2c_w_mask(%struct.usb_ov511* %43, i32 14, i32 %44, i32 112)
  br label %49

46:                                               ; preds = %2
  %47 = load i32, i32* @EINVAL, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %3, align 4
  br label %50

49:                                               ; preds = %39
  store i32 0, i32* %3, align 4
  br label %50

50:                                               ; preds = %49, %46, %33
  %51 = load i32, i32* %3, align 4
  ret i32 %51
}

declare dso_local i32 @PDEBUG(i32, i8*, i32) #1

declare dso_local i32 @i2c_w_mask(%struct.usb_ov511*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
