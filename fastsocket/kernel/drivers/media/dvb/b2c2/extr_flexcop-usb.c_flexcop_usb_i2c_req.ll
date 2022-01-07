; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/b2c2/extr_flexcop-usb.c_flexcop_usb_i2c_req.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/b2c2/extr_flexcop-usb.c_flexcop_usb_i2c_req.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.flexcop_i2c_adapter = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.flexcop_usb* }
%struct.flexcop_usb = type { i32 }

@USB_TYPE_VENDOR = common dso_local global i32 0, align 4
@B2C2_USB_CTRL_PIPE_OUT = common dso_local global i32 0, align 4
@USB_DIR_OUT = common dso_local global i32 0, align 4
@B2C2_USB_CTRL_PIPE_IN = common dso_local global i32 0, align 4
@USB_DIR_IN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"unsupported function for i2c_req %x\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [40 x i8] c"i2c %2d: %02x %02x %02x %02x %02x %02x\0A\00", align 1
@HZ = common dso_local global i32 0, align 4
@EREMOTEIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.flexcop_i2c_adapter*, i32, i32, i32, i32, i32*, i32)* @flexcop_usb_i2c_req to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @flexcop_usb_i2c_req(%struct.flexcop_i2c_adapter* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32* %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.flexcop_i2c_adapter*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.flexcop_usb*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  store %struct.flexcop_i2c_adapter* %0, %struct.flexcop_i2c_adapter** %9, align 8
  store i32 %1, i32* %10, align 4
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32* %5, i32** %14, align 8
  store i32 %6, i32* %15, align 4
  %23 = load %struct.flexcop_i2c_adapter*, %struct.flexcop_i2c_adapter** %9, align 8
  %24 = getelementptr inbounds %struct.flexcop_i2c_adapter, %struct.flexcop_i2c_adapter* %23, i32 0, i32 1
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load %struct.flexcop_usb*, %struct.flexcop_usb** %26, align 8
  store %struct.flexcop_usb* %27, %struct.flexcop_usb** %16, align 8
  %28 = load i32, i32* @USB_TYPE_VENDOR, align 4
  store i32 %28, i32* %22, align 4
  %29 = load i32, i32* %11, align 4
  switch i32 %29, label %40 [
    i32 128, label %30
    i32 132, label %30
    i32 129, label %30
    i32 133, label %30
    i32 131, label %35
    i32 130, label %35
  ]

30:                                               ; preds = %7, %7, %7, %7
  %31 = load i32, i32* @B2C2_USB_CTRL_PIPE_OUT, align 4
  store i32 %31, i32* %20, align 4
  store i32 2, i32* %19, align 4
  %32 = load i32, i32* @USB_DIR_OUT, align 4
  %33 = load i32, i32* %22, align 4
  %34 = or i32 %33, %32
  store i32 %34, i32* %22, align 4
  br label %45

35:                                               ; preds = %7, %7
  %36 = load i32, i32* @B2C2_USB_CTRL_PIPE_IN, align 4
  store i32 %36, i32* %20, align 4
  store i32 2, i32* %19, align 4
  %37 = load i32, i32* @USB_DIR_IN, align 4
  %38 = load i32, i32* %22, align 4
  %39 = or i32 %38, %37
  store i32 %39, i32* %22, align 4
  br label %45

40:                                               ; preds = %7
  %41 = load i32, i32* %11, align 4
  %42 = call i32 @deb_info(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %41)
  %43 = load i32, i32* @EINVAL, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %8, align 4
  br label %92

45:                                               ; preds = %35, %30
  %46 = load i32, i32* %11, align 4
  %47 = shl i32 %46, 8
  %48 = load %struct.flexcop_i2c_adapter*, %struct.flexcop_i2c_adapter** %9, align 8
  %49 = getelementptr inbounds %struct.flexcop_i2c_adapter, %struct.flexcop_i2c_adapter* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = shl i32 %50, 4
  %52 = or i32 %47, %51
  store i32 %52, i32* %17, align 4
  %53 = load i32, i32* %12, align 4
  %54 = shl i32 %53, 8
  %55 = load i32, i32* %13, align 4
  %56 = or i32 %54, %55
  store i32 %56, i32* %18, align 4
  %57 = load i32, i32* %11, align 4
  %58 = load i32, i32* %22, align 4
  %59 = load i32, i32* %10, align 4
  %60 = load i32, i32* %17, align 4
  %61 = and i32 %60, 255
  %62 = load i32, i32* %17, align 4
  %63 = ashr i32 %62, 8
  %64 = load i32, i32* %18, align 4
  %65 = and i32 %64, 255
  %66 = load i32, i32* %18, align 4
  %67 = ashr i32 %66, 8
  %68 = call i32 @deb_i2c(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i32 %57, i32 %58, i32 %59, i32 %61, i32 %63, i32 %65, i32 %67)
  %69 = load %struct.flexcop_usb*, %struct.flexcop_usb** %16, align 8
  %70 = getelementptr inbounds %struct.flexcop_usb, %struct.flexcop_usb* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* %20, align 4
  %73 = load i32, i32* %10, align 4
  %74 = load i32, i32* %22, align 4
  %75 = load i32, i32* %17, align 4
  %76 = load i32, i32* %18, align 4
  %77 = load i32*, i32** %14, align 8
  %78 = load i32, i32* %15, align 4
  %79 = load i32, i32* %19, align 4
  %80 = load i32, i32* @HZ, align 4
  %81 = mul nsw i32 %79, %80
  %82 = call i32 @usb_control_msg(i32 %71, i32 %72, i32 %73, i32 %74, i32 %75, i32 %76, i32* %77, i32 %78, i32 %81)
  store i32 %82, i32* %21, align 4
  %83 = load i32, i32* %21, align 4
  %84 = load i32, i32* %15, align 4
  %85 = icmp eq i32 %83, %84
  br i1 %85, label %86, label %87

86:                                               ; preds = %45
  br label %90

87:                                               ; preds = %45
  %88 = load i32, i32* @EREMOTEIO, align 4
  %89 = sub nsw i32 0, %88
  br label %90

90:                                               ; preds = %87, %86
  %91 = phi i32 [ 0, %86 ], [ %89, %87 ]
  store i32 %91, i32* %8, align 4
  br label %92

92:                                               ; preds = %90, %40
  %93 = load i32, i32* %8, align 4
  ret i32 %93
}

declare dso_local i32 @deb_info(i8*, i32) #1

declare dso_local i32 @deb_i2c(i8*, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @usb_control_msg(i32, i32, i32, i32, i32, i32, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
