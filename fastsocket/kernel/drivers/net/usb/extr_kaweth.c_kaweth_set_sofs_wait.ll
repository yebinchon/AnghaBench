; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/usb/extr_kaweth.c_kaweth_set_sofs_wait.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/usb/extr_kaweth.c_kaweth_set_sofs_wait.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kaweth_device = type { i32, i32 }

@.str = private unnamed_addr constant [20 x i8] c"Set SOFS wait to %d\00", align 1
@KAWETH_COMMAND_SET_SOFS_WAIT = common dso_local global i32 0, align 4
@USB_TYPE_VENDOR = common dso_local global i32 0, align 4
@USB_DIR_OUT = common dso_local global i32 0, align 4
@USB_RECIP_DEVICE = common dso_local global i32 0, align 4
@KAWETH_CONTROL_TIMEOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kaweth_device*, i64)* @kaweth_set_sofs_wait to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kaweth_set_sofs_wait(%struct.kaweth_device* %0, i64 %1) #0 {
  %3 = alloca %struct.kaweth_device*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store %struct.kaweth_device* %0, %struct.kaweth_device** %3, align 8
  store i64 %1, i64* %4, align 8
  %6 = load i64, i64* %4, align 8
  %7 = trunc i64 %6 to i32
  %8 = call i32 @dbg(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %7)
  %9 = load %struct.kaweth_device*, %struct.kaweth_device** %3, align 8
  %10 = load %struct.kaweth_device*, %struct.kaweth_device** %3, align 8
  %11 = getelementptr inbounds %struct.kaweth_device, %struct.kaweth_device* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @usb_sndctrlpipe(i32 %12, i32 0)
  %14 = load i32, i32* @KAWETH_COMMAND_SET_SOFS_WAIT, align 4
  %15 = load i32, i32* @USB_TYPE_VENDOR, align 4
  %16 = load i32, i32* @USB_DIR_OUT, align 4
  %17 = or i32 %15, %16
  %18 = load i32, i32* @USB_RECIP_DEVICE, align 4
  %19 = or i32 %17, %18
  %20 = load i64, i64* %4, align 8
  %21 = load %struct.kaweth_device*, %struct.kaweth_device** %3, align 8
  %22 = getelementptr inbounds %struct.kaweth_device, %struct.kaweth_device* %21, i32 0, i32 0
  %23 = bitcast i32* %22 to i8*
  %24 = load i32, i32* @KAWETH_CONTROL_TIMEOUT, align 4
  %25 = call i32 @kaweth_control(%struct.kaweth_device* %9, i32 %13, i32 %14, i32 %19, i64 %20, i32 0, i8* %23, i32 0, i32 %24)
  store i32 %25, i32* %5, align 4
  %26 = load i32, i32* %5, align 4
  ret i32 %26
}

declare dso_local i32 @dbg(i8*, i32) #1

declare dso_local i32 @kaweth_control(%struct.kaweth_device*, i32, i32, i32, i64, i32, i8*, i32, i32) #1

declare dso_local i32 @usb_sndctrlpipe(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
