; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/dvb-usb/extr_dib0700_core.c_dib0700_jumpram.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/dvb-usb/extr_dib0700_core.c_dib0700_jumpram.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_device = type { i32 }

@REQUEST_JUMPRAM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"jumpram to 0x%x failed\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_device*, i32)* @dib0700_jumpram to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dib0700_jumpram(%struct.usb_device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.usb_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca [8 x i32], align 16
  store %struct.usb_device* %0, %struct.usb_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = getelementptr inbounds [8 x i32], [8 x i32]* %8, i64 0, i64 0
  %10 = load i32, i32* @REQUEST_JUMPRAM, align 4
  store i32 %10, i32* %9, align 4
  %11 = getelementptr inbounds i32, i32* %9, i64 1
  store i32 0, i32* %11, align 4
  %12 = getelementptr inbounds i32, i32* %11, i64 1
  store i32 0, i32* %12, align 4
  %13 = getelementptr inbounds i32, i32* %12, i64 1
  store i32 0, i32* %13, align 4
  %14 = getelementptr inbounds i32, i32* %13, i64 1
  %15 = load i32, i32* %5, align 4
  %16 = ashr i32 %15, 24
  %17 = and i32 %16, 255
  store i32 %17, i32* %14, align 4
  %18 = getelementptr inbounds i32, i32* %14, i64 1
  %19 = load i32, i32* %5, align 4
  %20 = ashr i32 %19, 16
  %21 = and i32 %20, 255
  store i32 %21, i32* %18, align 4
  %22 = getelementptr inbounds i32, i32* %18, i64 1
  %23 = load i32, i32* %5, align 4
  %24 = ashr i32 %23, 8
  %25 = and i32 %24, 255
  store i32 %25, i32* %22, align 4
  %26 = getelementptr inbounds i32, i32* %22, i64 1
  %27 = load i32, i32* %5, align 4
  %28 = and i32 %27, 255
  store i32 %28, i32* %26, align 4
  %29 = load %struct.usb_device*, %struct.usb_device** %4, align 8
  %30 = load %struct.usb_device*, %struct.usb_device** %4, align 8
  %31 = call i32 @usb_sndbulkpipe(%struct.usb_device* %30, i32 1)
  %32 = getelementptr inbounds [8 x i32], [8 x i32]* %8, i64 0, i64 0
  %33 = call i32 @usb_bulk_msg(%struct.usb_device* %29, i32 %31, i32* %32, i32 8, i32* %7, i32 1000)
  store i32 %33, i32* %6, align 4
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %35, label %39

35:                                               ; preds = %2
  %36 = load i32, i32* %5, align 4
  %37 = call i32 @deb_fw(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %36)
  %38 = load i32, i32* %6, align 4
  store i32 %38, i32* %3, align 4
  br label %48

39:                                               ; preds = %2
  %40 = load i32, i32* %7, align 4
  %41 = icmp ne i32 %40, 8
  br i1 %41, label %42, label %47

42:                                               ; preds = %39
  %43 = load i32, i32* %5, align 4
  %44 = call i32 @deb_fw(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %43)
  %45 = load i32, i32* @EIO, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %3, align 4
  br label %48

47:                                               ; preds = %39
  store i32 0, i32* %3, align 4
  br label %48

48:                                               ; preds = %47, %42, %35
  %49 = load i32, i32* %3, align 4
  ret i32 %49
}

declare dso_local i32 @usb_bulk_msg(%struct.usb_device*, i32, i32*, i32, i32*, i32) #1

declare dso_local i32 @usb_sndbulkpipe(%struct.usb_device*, i32) #1

declare dso_local i32 @deb_fw(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
