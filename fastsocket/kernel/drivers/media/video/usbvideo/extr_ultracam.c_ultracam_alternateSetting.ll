; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/usbvideo/extr_ultracam.c_ultracam_alternateSetting.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/usbvideo/extr_ultracam.c_ultracam_alternateSetting.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uvd = type { i32, i32, i32 }

@ultracam_alternateSetting.proc = internal constant [26 x i8] c"ultracam_alternateSetting\00", align 16
@.str = private unnamed_addr constant [28 x i8] c"%s: usb_set_interface error\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.uvd*, i32)* @ultracam_alternateSetting to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ultracam_alternateSetting(%struct.uvd* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.uvd*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.uvd* %0, %struct.uvd** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.uvd*, %struct.uvd** %4, align 8
  %8 = getelementptr inbounds %struct.uvd, %struct.uvd* %7, i32 0, i32 2
  %9 = load i32, i32* %8, align 4
  %10 = load %struct.uvd*, %struct.uvd** %4, align 8
  %11 = getelementptr inbounds %struct.uvd, %struct.uvd* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* %5, align 4
  %14 = call i32 @usb_set_interface(i32 %9, i32 %12, i32 %13)
  store i32 %14, i32* %6, align 4
  %15 = load i32, i32* %6, align 4
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %17, label %24

17:                                               ; preds = %2
  %18 = call i32 @err(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @ultracam_alternateSetting.proc, i64 0, i64 0))
  %19 = load i32, i32* %6, align 4
  %20 = load %struct.uvd*, %struct.uvd** %4, align 8
  %21 = getelementptr inbounds %struct.uvd, %struct.uvd* %20, i32 0, i32 0
  store i32 %19, i32* %21, align 4
  %22 = load i32, i32* @EBUSY, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %3, align 4
  br label %25

24:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %25

25:                                               ; preds = %24, %17
  %26 = load i32, i32* %3, align 4
  ret i32 %26
}

declare dso_local i32 @usb_set_interface(i32, i32, i32) #1

declare dso_local i32 @err(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
