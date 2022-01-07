; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/usb/extr_kaweth.c_kaweth_reset.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/usb/extr_kaweth.c_kaweth_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kaweth_device = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@.str = private unnamed_addr constant [17 x i8] c"kaweth_reset(%p)\00", align 1
@USB_REQ_SET_CONFIGURATION = common dso_local global i32 0, align 4
@KAWETH_CONTROL_TIMEOUT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"kaweth_reset() returns %d.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kaweth_device*)* @kaweth_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kaweth_reset(%struct.kaweth_device* %0) #0 {
  %2 = alloca %struct.kaweth_device*, align 8
  %3 = alloca i32, align 4
  store %struct.kaweth_device* %0, %struct.kaweth_device** %2, align 8
  %4 = load %struct.kaweth_device*, %struct.kaweth_device** %2, align 8
  %5 = call i32 (i8*, ...) @dbg(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), %struct.kaweth_device* %4)
  %6 = load %struct.kaweth_device*, %struct.kaweth_device** %2, align 8
  %7 = load %struct.kaweth_device*, %struct.kaweth_device** %2, align 8
  %8 = getelementptr inbounds %struct.kaweth_device, %struct.kaweth_device* %7, i32 0, i32 0
  %9 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %10 = call i32 @usb_sndctrlpipe(%struct.TYPE_6__* %9, i32 0)
  %11 = load i32, i32* @USB_REQ_SET_CONFIGURATION, align 4
  %12 = load %struct.kaweth_device*, %struct.kaweth_device** %2, align 8
  %13 = getelementptr inbounds %struct.kaweth_device, %struct.kaweth_device* %12, i32 0, i32 0
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 0
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i64 0
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @KAWETH_CONTROL_TIMEOUT, align 4
  %22 = call i32 @kaweth_control(%struct.kaweth_device* %6, i32 %10, i32 %11, i32 0, i32 %20, i32 0, i32* null, i32 0, i32 %21)
  store i32 %22, i32* %3, align 4
  %23 = call i32 @mdelay(i32 10)
  %24 = load i32, i32* %3, align 4
  %25 = call i32 (i8*, ...) @dbg(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 %24)
  %26 = load i32, i32* %3, align 4
  ret i32 %26
}

declare dso_local i32 @dbg(i8*, ...) #1

declare dso_local i32 @kaweth_control(%struct.kaweth_device*, i32, i32, i32, i32, i32, i32*, i32, i32) #1

declare dso_local i32 @usb_sndctrlpipe(%struct.TYPE_6__*, i32) #1

declare dso_local i32 @mdelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
