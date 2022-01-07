; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/usb/extr_rtl8150.c_async_set_registers.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/usb/extr_rtl8150.c_async_set_registers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32, %struct.TYPE_9__*, i32, %struct.TYPE_7__, i32 }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_7__ = type { i8*, i64, i8*, i32, i32 }

@RX_REG_SET = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@RTL8150_REQT_WRITE = common dso_local global i32 0, align 4
@RTL8150_REQ_SET_REGS = common dso_local global i32 0, align 4
@ctrl_callback = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"control request submission failed: %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_8__*, i32, i32)* @async_set_registers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @async_set_registers(%struct.TYPE_8__* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %9 = load i32, i32* @RX_REG_SET, align 4
  %10 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %11 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 0
  %12 = call i64 @test_bit(i32 %9, i32* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %3
  %15 = load i32, i32* @EAGAIN, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %4, align 4
  br label %89

17:                                               ; preds = %3
  %18 = load i32, i32* @RTL8150_REQT_WRITE, align 4
  %19 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %19, i32 0, i32 4
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 4
  store i32 %18, i32* %21, align 4
  %22 = load i32, i32* @RTL8150_REQ_SET_REGS, align 4
  %23 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i32 0, i32 4
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 3
  store i32 %22, i32* %25, align 8
  %26 = load i32, i32* %6, align 4
  %27 = call i8* @cpu_to_le16(i32 %26)
  %28 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %29 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %28, i32 0, i32 4
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i32 0, i32 2
  store i8* %27, i8** %30, align 8
  %31 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %32 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %31, i32 0, i32 4
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i32 0, i32 1
  store i64 0, i64* %33, align 8
  %34 = load i32, i32* %7, align 4
  %35 = call i8* @cpu_to_le16(i32 %34)
  %36 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %37 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %36, i32 0, i32 4
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %37, i32 0, i32 0
  store i8* %35, i8** %38, align 8
  %39 = load i32, i32* %7, align 4
  %40 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %41 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %40, i32 0, i32 2
  %42 = load %struct.TYPE_9__*, %struct.TYPE_9__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %42, i32 0, i32 0
  store i32 %39, i32* %43, align 4
  %44 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %45 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %44, i32 0, i32 2
  %46 = load %struct.TYPE_9__*, %struct.TYPE_9__** %45, align 8
  %47 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %48 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %47, i32 0, i32 5
  %49 = load i32, i32* %48, align 8
  %50 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %51 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %50, i32 0, i32 5
  %52 = load i32, i32* %51, align 8
  %53 = call i32 @usb_sndctrlpipe(i32 %52, i32 0)
  %54 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %55 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %54, i32 0, i32 4
  %56 = bitcast %struct.TYPE_7__* %55 to i8*
  %57 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %58 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %57, i32 0, i32 3
  %59 = load i32, i32* %7, align 4
  %60 = load i32, i32* @ctrl_callback, align 4
  %61 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %62 = call i32 @usb_fill_control_urb(%struct.TYPE_9__* %46, i32 %49, i32 %53, i8* %56, i32* %58, i32 %59, i32 %60, %struct.TYPE_8__* %61)
  %63 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %64 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %63, i32 0, i32 2
  %65 = load %struct.TYPE_9__*, %struct.TYPE_9__** %64, align 8
  %66 = load i32, i32* @GFP_ATOMIC, align 4
  %67 = call i32 @usb_submit_urb(%struct.TYPE_9__* %65, i32 %66)
  store i32 %67, i32* %8, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %82

69:                                               ; preds = %17
  %70 = load i32, i32* %8, align 4
  %71 = load i32, i32* @ENODEV, align 4
  %72 = sub nsw i32 0, %71
  %73 = icmp eq i32 %70, %72
  br i1 %73, label %74, label %79

74:                                               ; preds = %69
  %75 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %76 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @netif_device_detach(i32 %77)
  br label %79

79:                                               ; preds = %74, %69
  %80 = load i32, i32* %8, align 4
  %81 = call i32 @err(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %80)
  br label %87

82:                                               ; preds = %17
  %83 = load i32, i32* @RX_REG_SET, align 4
  %84 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %85 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %84, i32 0, i32 0
  %86 = call i32 @set_bit(i32 %83, i32* %85)
  br label %87

87:                                               ; preds = %82, %79
  %88 = load i32, i32* %8, align 4
  store i32 %88, i32* %4, align 4
  br label %89

89:                                               ; preds = %87, %14
  %90 = load i32, i32* %4, align 4
  ret i32 %90
}

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i8* @cpu_to_le16(i32) #1

declare dso_local i32 @usb_fill_control_urb(%struct.TYPE_9__*, i32, i32, i8*, i32*, i32, i32, %struct.TYPE_8__*) #1

declare dso_local i32 @usb_sndctrlpipe(i32, i32) #1

declare dso_local i32 @usb_submit_urb(%struct.TYPE_9__*, i32) #1

declare dso_local i32 @netif_device_detach(i32) #1

declare dso_local i32 @err(i8*, i32) #1

declare dso_local i32 @set_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
