; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/usb/extr_hso.c_hso_rfkill_set_block.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/usb/extr_hso.c_hso_rfkill_set_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hso_device = type { i32, i32, i64 }

@USB_CTRL_SET_TIMEOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32)* @hso_rfkill_set_block to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hso_rfkill_set_block(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.hso_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load i8*, i8** %3, align 8
  %9 = bitcast i8* %8 to %struct.hso_device*
  store %struct.hso_device* %9, %struct.hso_device** %5, align 8
  %10 = load i32, i32* %4, align 4
  %11 = icmp ne i32 %10, 0
  %12 = xor i1 %11, true
  %13 = zext i1 %12 to i32
  store i32 %13, i32* %6, align 4
  %14 = load %struct.hso_device*, %struct.hso_device** %5, align 8
  %15 = getelementptr inbounds %struct.hso_device, %struct.hso_device* %14, i32 0, i32 0
  %16 = call i32 @mutex_lock(i32* %15)
  %17 = load %struct.hso_device*, %struct.hso_device** %5, align 8
  %18 = getelementptr inbounds %struct.hso_device, %struct.hso_device* %17, i32 0, i32 2
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %2
  store i32 0, i32* %7, align 4
  br label %36

22:                                               ; preds = %2
  %23 = load %struct.hso_device*, %struct.hso_device** %5, align 8
  %24 = getelementptr inbounds %struct.hso_device, %struct.hso_device* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.hso_device*, %struct.hso_device** %5, align 8
  %27 = getelementptr inbounds %struct.hso_device, %struct.hso_device* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @usb_rcvctrlpipe(i32 %28, i32 0)
  %30 = load i32, i32* %6, align 4
  %31 = icmp ne i32 %30, 0
  %32 = zext i1 %31 to i64
  %33 = select i1 %31, i32 130, i32 129
  %34 = load i32, i32* @USB_CTRL_SET_TIMEOUT, align 4
  %35 = call i32 @usb_control_msg(i32 %25, i32 %29, i32 %33, i32 64, i32 0, i32 0, i32* null, i32 0, i32 %34)
  store i32 %35, i32* %7, align 4
  br label %36

36:                                               ; preds = %22, %21
  %37 = load %struct.hso_device*, %struct.hso_device** %5, align 8
  %38 = getelementptr inbounds %struct.hso_device, %struct.hso_device* %37, i32 0, i32 0
  %39 = call i32 @mutex_unlock(i32* %38)
  %40 = load i32, i32* %7, align 4
  ret i32 %40
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @usb_control_msg(i32, i32, i32, i32, i32, i32, i32*, i32, i32) #1

declare dso_local i32 @usb_rcvctrlpipe(i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
