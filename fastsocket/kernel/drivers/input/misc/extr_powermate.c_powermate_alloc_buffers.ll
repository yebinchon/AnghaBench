; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/input/misc/extr_powermate.c_powermate_alloc_buffers.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/input/misc/extr_powermate.c_powermate_alloc_buffers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_device = type { i32 }
%struct.powermate_device = type { i8*, i32, i8*, i32 }

@POWERMATE_PAYLOAD_SIZE_MAX = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_device*, %struct.powermate_device*)* @powermate_alloc_buffers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @powermate_alloc_buffers(%struct.usb_device* %0, %struct.powermate_device* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.usb_device*, align 8
  %5 = alloca %struct.powermate_device*, align 8
  store %struct.usb_device* %0, %struct.usb_device** %4, align 8
  store %struct.powermate_device* %1, %struct.powermate_device** %5, align 8
  %6 = load %struct.usb_device*, %struct.usb_device** %4, align 8
  %7 = load i32, i32* @POWERMATE_PAYLOAD_SIZE_MAX, align 4
  %8 = load i32, i32* @GFP_ATOMIC, align 4
  %9 = load %struct.powermate_device*, %struct.powermate_device** %5, align 8
  %10 = getelementptr inbounds %struct.powermate_device, %struct.powermate_device* %9, i32 0, i32 3
  %11 = call i8* @usb_buffer_alloc(%struct.usb_device* %6, i32 %7, i32 %8, i32* %10)
  %12 = load %struct.powermate_device*, %struct.powermate_device** %5, align 8
  %13 = getelementptr inbounds %struct.powermate_device, %struct.powermate_device* %12, i32 0, i32 2
  store i8* %11, i8** %13, align 8
  %14 = load %struct.powermate_device*, %struct.powermate_device** %5, align 8
  %15 = getelementptr inbounds %struct.powermate_device, %struct.powermate_device* %14, i32 0, i32 2
  %16 = load i8*, i8** %15, align 8
  %17 = icmp ne i8* %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %33

19:                                               ; preds = %2
  %20 = load %struct.usb_device*, %struct.usb_device** %4, align 8
  %21 = load i32, i32* @GFP_ATOMIC, align 4
  %22 = load %struct.powermate_device*, %struct.powermate_device** %5, align 8
  %23 = getelementptr inbounds %struct.powermate_device, %struct.powermate_device* %22, i32 0, i32 1
  %24 = call i8* @usb_buffer_alloc(%struct.usb_device* %20, i32 1, i32 %21, i32* %23)
  %25 = load %struct.powermate_device*, %struct.powermate_device** %5, align 8
  %26 = getelementptr inbounds %struct.powermate_device, %struct.powermate_device* %25, i32 0, i32 0
  store i8* %24, i8** %26, align 8
  %27 = load %struct.powermate_device*, %struct.powermate_device** %5, align 8
  %28 = getelementptr inbounds %struct.powermate_device, %struct.powermate_device* %27, i32 0, i32 0
  %29 = load i8*, i8** %28, align 8
  %30 = icmp ne i8* %29, null
  br i1 %30, label %32, label %31

31:                                               ; preds = %19
  store i32 -1, i32* %3, align 4
  br label %33

32:                                               ; preds = %19
  store i32 0, i32* %3, align 4
  br label %33

33:                                               ; preds = %32, %31, %18
  %34 = load i32, i32* %3, align 4
  ret i32 %34
}

declare dso_local i8* @usb_buffer_alloc(%struct.usb_device*, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
