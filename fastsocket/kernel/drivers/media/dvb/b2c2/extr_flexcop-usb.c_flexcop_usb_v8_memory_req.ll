; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/b2c2/extr_flexcop-usb.c_flexcop_usb_v8_memory_req.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/b2c2/extr_flexcop-usb.c_flexcop_usb_v8_memory_req.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.flexcop_usb = type { i32 }

@USB_TYPE_VENDOR = common dso_local global i32 0, align 4
@B2C2_WAIT_FOR_OPERATION_V8READ = common dso_local global i32 0, align 4
@USB_DIR_IN = common dso_local global i32 0, align 4
@B2C2_USB_CTRL_PIPE_IN = common dso_local global i32 0, align 4
@USB_DIR_OUT = common dso_local global i32 0, align 4
@B2C2_WAIT_FOR_OPERATION_V8WRITE = common dso_local global i32 0, align 4
@B2C2_USB_CTRL_PIPE_OUT = common dso_local global i32 0, align 4
@B2C2_WAIT_FOR_OPERATION_V8FLASH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"unsupported request for v8_mem_req %x.\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"v8mem: %02x %02x %04x %04x, len: %d\0A\00", align 1
@HZ = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.flexcop_usb*, i32, i32, i32, i32*, i32)* @flexcop_usb_v8_memory_req to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @flexcop_usb_v8_memory_req(%struct.flexcop_usb* %0, i32 %1, i32 %2, i32 %3, i32* %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.flexcop_usb*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.flexcop_usb* %0, %struct.flexcop_usb** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32* %4, i32** %12, align 8
  store i32 %5, i32* %13, align 4
  %19 = load i32, i32* @USB_TYPE_VENDOR, align 4
  store i32 %19, i32* %14, align 4
  %20 = load i32, i32* %10, align 4
  %21 = shl i32 %20, 8
  store i32 %21, i32* %15, align 4
  %22 = load i32, i32* %9, align 4
  switch i32 %22, label %46 [
    i32 129, label %23
    i32 128, label %29
    i32 130, label %40
  ]

23:                                               ; preds = %6
  %24 = load i32, i32* @B2C2_WAIT_FOR_OPERATION_V8READ, align 4
  store i32 %24, i32* %16, align 4
  %25 = load i32, i32* @USB_DIR_IN, align 4
  %26 = load i32, i32* %14, align 4
  %27 = or i32 %26, %25
  store i32 %27, i32* %14, align 4
  %28 = load i32, i32* @B2C2_USB_CTRL_PIPE_IN, align 4
  store i32 %28, i32* %17, align 4
  br label %51

29:                                               ; preds = %6
  %30 = load i32*, i32** %12, align 8
  %31 = getelementptr inbounds i32, i32* %30, i64 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* %15, align 4
  %34 = or i32 %33, %32
  store i32 %34, i32* %15, align 4
  %35 = load i32, i32* @USB_DIR_OUT, align 4
  %36 = load i32, i32* %14, align 4
  %37 = or i32 %36, %35
  store i32 %37, i32* %14, align 4
  %38 = load i32, i32* @B2C2_WAIT_FOR_OPERATION_V8WRITE, align 4
  store i32 %38, i32* %16, align 4
  %39 = load i32, i32* @B2C2_USB_CTRL_PIPE_OUT, align 4
  store i32 %39, i32* %17, align 4
  br label %51

40:                                               ; preds = %6
  %41 = load i32, i32* @USB_DIR_OUT, align 4
  %42 = load i32, i32* %14, align 4
  %43 = or i32 %42, %41
  store i32 %43, i32* %14, align 4
  %44 = load i32, i32* @B2C2_WAIT_FOR_OPERATION_V8FLASH, align 4
  store i32 %44, i32* %16, align 4
  %45 = load i32, i32* @B2C2_USB_CTRL_PIPE_OUT, align 4
  store i32 %45, i32* %17, align 4
  br label %51

46:                                               ; preds = %6
  %47 = load i32, i32* %9, align 4
  %48 = call i32 @deb_info(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %47)
  %49 = load i32, i32* @EINVAL, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %7, align 4
  br label %84

51:                                               ; preds = %40, %29, %23
  %52 = load i32, i32* %14, align 4
  %53 = load i32, i32* %9, align 4
  %54 = load i32, i32* %11, align 4
  %55 = load i32, i32* %15, align 4
  %56 = load i32, i32* %13, align 4
  %57 = call i32 @deb_v8(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i32 %52, i32 %53, i32 %54, i32 %55, i32 %56)
  %58 = load %struct.flexcop_usb*, %struct.flexcop_usb** %8, align 8
  %59 = getelementptr inbounds %struct.flexcop_usb, %struct.flexcop_usb* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* %17, align 4
  %62 = load i32, i32* %9, align 4
  %63 = load i32, i32* %14, align 4
  %64 = load i32, i32* %11, align 4
  %65 = load i32, i32* %15, align 4
  %66 = load i32*, i32** %12, align 8
  %67 = load i32, i32* %13, align 4
  %68 = load i32, i32* %16, align 4
  %69 = load i32, i32* @HZ, align 4
  %70 = mul nsw i32 %68, %69
  %71 = call i32 @usb_control_msg(i32 %60, i32 %61, i32 %62, i32 %63, i32 %64, i32 %65, i32* %66, i32 %67, i32 %70)
  store i32 %71, i32* %18, align 4
  %72 = load i32*, i32** %12, align 8
  %73 = load i32, i32* %18, align 4
  %74 = call i32 @debug_dump(i32* %72, i32 %73, i32 (i8*, i32, i32, i32, i32, i32)* @deb_v8)
  %75 = load i32, i32* %18, align 4
  %76 = load i32, i32* %13, align 4
  %77 = icmp eq i32 %75, %76
  br i1 %77, label %78, label %79

78:                                               ; preds = %51
  br label %82

79:                                               ; preds = %51
  %80 = load i32, i32* @EIO, align 4
  %81 = sub nsw i32 0, %80
  br label %82

82:                                               ; preds = %79, %78
  %83 = phi i32 [ 0, %78 ], [ %81, %79 ]
  store i32 %83, i32* %7, align 4
  br label %84

84:                                               ; preds = %82, %46
  %85 = load i32, i32* %7, align 4
  ret i32 %85
}

declare dso_local i32 @deb_info(i8*, i32) #1

declare dso_local i32 @deb_v8(i8*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @usb_control_msg(i32, i32, i32, i32, i32, i32, i32*, i32, i32) #1

declare dso_local i32 @debug_dump(i32*, i32, i32 (i8*, i32, i32, i32, i32, i32)*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
