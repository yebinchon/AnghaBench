; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/b2c2/extr_flexcop-usb.c_flexcop_usb_readwrite_dw.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/b2c2/extr_flexcop-usb.c_flexcop_usb_readwrite_dw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.flexcop_device = type { %struct.flexcop_usb* }
%struct.flexcop_usb = type { i32 }

@B2C2_USB_READ_REG = common dso_local global i32 0, align 4
@B2C2_USB_WRITE_REG = common dso_local global i32 0, align 4
@USB_DIR_IN = common dso_local global i32 0, align 4
@USB_DIR_OUT = common dso_local global i32 0, align 4
@USB_TYPE_VENDOR = common dso_local global i32 0, align 4
@B2C2_USB_CTRL_PIPE_IN = common dso_local global i32 0, align 4
@B2C2_USB_CTRL_PIPE_OUT = common dso_local global i32 0, align 4
@B2C2_WAIT_FOR_OPERATION_RDW = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"error while %s dword from %d (%d).\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"reading\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"writing\00", align 1
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.flexcop_device*, i32, i32*, i32)* @flexcop_usb_readwrite_dw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @flexcop_usb_readwrite_dw(%struct.flexcop_device* %0, i32 %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.flexcop_device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.flexcop_usb*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.flexcop_device* %0, %struct.flexcop_device** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  %15 = load %struct.flexcop_device*, %struct.flexcop_device** %6, align 8
  %16 = getelementptr inbounds %struct.flexcop_device, %struct.flexcop_device* %15, i32 0, i32 0
  %17 = load %struct.flexcop_usb*, %struct.flexcop_usb** %16, align 8
  store %struct.flexcop_usb* %17, %struct.flexcop_usb** %10, align 8
  %18 = load i32, i32* %9, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %4
  %21 = load i32, i32* @B2C2_USB_READ_REG, align 4
  br label %24

22:                                               ; preds = %4
  %23 = load i32, i32* @B2C2_USB_WRITE_REG, align 4
  br label %24

24:                                               ; preds = %22, %20
  %25 = phi i32 [ %21, %20 ], [ %23, %22 ]
  store i32 %25, i32* %11, align 4
  %26 = load i32, i32* %9, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %24
  %29 = load i32, i32* @USB_DIR_IN, align 4
  br label %32

30:                                               ; preds = %24
  %31 = load i32, i32* @USB_DIR_OUT, align 4
  br label %32

32:                                               ; preds = %30, %28
  %33 = phi i32 [ %29, %28 ], [ %31, %30 ]
  %34 = load i32, i32* @USB_TYPE_VENDOR, align 4
  %35 = or i32 %33, %34
  store i32 %35, i32* %12, align 4
  %36 = load i32, i32* %7, align 4
  %37 = call i32 @B2C2_FLEX_PCIOFFSET_TO_INTERNALADDR(i32 %36)
  %38 = load i32, i32* %9, align 4
  %39 = icmp ne i32 %38, 0
  %40 = zext i1 %39 to i64
  %41 = select i1 %39, i32 128, i32 0
  %42 = or i32 %37, %41
  store i32 %42, i32* %13, align 4
  %43 = load %struct.flexcop_usb*, %struct.flexcop_usb** %10, align 8
  %44 = getelementptr inbounds %struct.flexcop_usb, %struct.flexcop_usb* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* %9, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %32
  %49 = load i32, i32* @B2C2_USB_CTRL_PIPE_IN, align 4
  br label %52

50:                                               ; preds = %32
  %51 = load i32, i32* @B2C2_USB_CTRL_PIPE_OUT, align 4
  br label %52

52:                                               ; preds = %50, %48
  %53 = phi i32 [ %49, %48 ], [ %51, %50 ]
  %54 = load i32, i32* %11, align 4
  %55 = load i32, i32* %12, align 4
  %56 = load i32, i32* %13, align 4
  %57 = load i32*, i32** %8, align 8
  %58 = load i32, i32* @B2C2_WAIT_FOR_OPERATION_RDW, align 4
  %59 = load i32, i32* @HZ, align 4
  %60 = mul nsw i32 %58, %59
  %61 = call i32 @usb_control_msg(i32 %45, i32 %53, i32 %54, i32 %55, i32 %56, i32 0, i32* %57, i32 4, i32 %60)
  store i32 %61, i32* %14, align 4
  %62 = load i32, i32* %14, align 4
  %63 = sext i32 %62 to i64
  %64 = icmp ne i64 %63, 4
  br i1 %64, label %65, label %75

65:                                               ; preds = %52
  %66 = load i32, i32* %9, align 4
  %67 = icmp ne i32 %66, 0
  %68 = zext i1 %67 to i64
  %69 = select i1 %67, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0)
  %70 = load i32, i32* %13, align 4
  %71 = load i32, i32* %7, align 4
  %72 = call i32 @err(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i8* %69, i32 %70, i32 %71)
  %73 = load i32, i32* @EIO, align 4
  %74 = sub nsw i32 0, %73
  store i32 %74, i32* %5, align 4
  br label %76

75:                                               ; preds = %52
  store i32 0, i32* %5, align 4
  br label %76

76:                                               ; preds = %75, %65
  %77 = load i32, i32* %5, align 4
  ret i32 %77
}

declare dso_local i32 @B2C2_FLEX_PCIOFFSET_TO_INTERNALADDR(i32) #1

declare dso_local i32 @usb_control_msg(i32, i32, i32, i32, i32, i32, i32*, i32, i32) #1

declare dso_local i32 @err(i8*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
