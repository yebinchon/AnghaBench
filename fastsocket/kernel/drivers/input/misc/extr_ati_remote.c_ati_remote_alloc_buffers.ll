; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/input/misc/extr_ati_remote.c_ati_remote_alloc_buffers.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/input/misc/extr_ati_remote.c_ati_remote_alloc_buffers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_device = type { i32 }
%struct.ati_remote = type { i8*, i8*, i8*, i32, i8*, i32 }

@DATA_BUFSIZE = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_device*, %struct.ati_remote*)* @ati_remote_alloc_buffers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ati_remote_alloc_buffers(%struct.usb_device* %0, %struct.ati_remote* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.usb_device*, align 8
  %5 = alloca %struct.ati_remote*, align 8
  store %struct.usb_device* %0, %struct.usb_device** %4, align 8
  store %struct.ati_remote* %1, %struct.ati_remote** %5, align 8
  %6 = load %struct.usb_device*, %struct.usb_device** %4, align 8
  %7 = load i32, i32* @DATA_BUFSIZE, align 4
  %8 = load i32, i32* @GFP_ATOMIC, align 4
  %9 = load %struct.ati_remote*, %struct.ati_remote** %5, align 8
  %10 = getelementptr inbounds %struct.ati_remote, %struct.ati_remote* %9, i32 0, i32 5
  %11 = call i8* @usb_buffer_alloc(%struct.usb_device* %6, i32 %7, i32 %8, i32* %10)
  %12 = load %struct.ati_remote*, %struct.ati_remote** %5, align 8
  %13 = getelementptr inbounds %struct.ati_remote, %struct.ati_remote* %12, i32 0, i32 4
  store i8* %11, i8** %13, align 8
  %14 = load %struct.ati_remote*, %struct.ati_remote** %5, align 8
  %15 = getelementptr inbounds %struct.ati_remote, %struct.ati_remote* %14, i32 0, i32 4
  %16 = load i8*, i8** %15, align 8
  %17 = icmp ne i8* %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %54

19:                                               ; preds = %2
  %20 = load %struct.usb_device*, %struct.usb_device** %4, align 8
  %21 = load i32, i32* @DATA_BUFSIZE, align 4
  %22 = load i32, i32* @GFP_ATOMIC, align 4
  %23 = load %struct.ati_remote*, %struct.ati_remote** %5, align 8
  %24 = getelementptr inbounds %struct.ati_remote, %struct.ati_remote* %23, i32 0, i32 3
  %25 = call i8* @usb_buffer_alloc(%struct.usb_device* %20, i32 %21, i32 %22, i32* %24)
  %26 = load %struct.ati_remote*, %struct.ati_remote** %5, align 8
  %27 = getelementptr inbounds %struct.ati_remote, %struct.ati_remote* %26, i32 0, i32 2
  store i8* %25, i8** %27, align 8
  %28 = load %struct.ati_remote*, %struct.ati_remote** %5, align 8
  %29 = getelementptr inbounds %struct.ati_remote, %struct.ati_remote* %28, i32 0, i32 2
  %30 = load i8*, i8** %29, align 8
  %31 = icmp ne i8* %30, null
  br i1 %31, label %33, label %32

32:                                               ; preds = %19
  store i32 -1, i32* %3, align 4
  br label %54

33:                                               ; preds = %19
  %34 = load i32, i32* @GFP_KERNEL, align 4
  %35 = call i8* @usb_alloc_urb(i32 0, i32 %34)
  %36 = load %struct.ati_remote*, %struct.ati_remote** %5, align 8
  %37 = getelementptr inbounds %struct.ati_remote, %struct.ati_remote* %36, i32 0, i32 1
  store i8* %35, i8** %37, align 8
  %38 = load %struct.ati_remote*, %struct.ati_remote** %5, align 8
  %39 = getelementptr inbounds %struct.ati_remote, %struct.ati_remote* %38, i32 0, i32 1
  %40 = load i8*, i8** %39, align 8
  %41 = icmp ne i8* %40, null
  br i1 %41, label %43, label %42

42:                                               ; preds = %33
  store i32 -1, i32* %3, align 4
  br label %54

43:                                               ; preds = %33
  %44 = load i32, i32* @GFP_KERNEL, align 4
  %45 = call i8* @usb_alloc_urb(i32 0, i32 %44)
  %46 = load %struct.ati_remote*, %struct.ati_remote** %5, align 8
  %47 = getelementptr inbounds %struct.ati_remote, %struct.ati_remote* %46, i32 0, i32 0
  store i8* %45, i8** %47, align 8
  %48 = load %struct.ati_remote*, %struct.ati_remote** %5, align 8
  %49 = getelementptr inbounds %struct.ati_remote, %struct.ati_remote* %48, i32 0, i32 0
  %50 = load i8*, i8** %49, align 8
  %51 = icmp ne i8* %50, null
  br i1 %51, label %53, label %52

52:                                               ; preds = %43
  store i32 -1, i32* %3, align 4
  br label %54

53:                                               ; preds = %43
  store i32 0, i32* %3, align 4
  br label %54

54:                                               ; preds = %53, %52, %42, %32, %18
  %55 = load i32, i32* %3, align 4
  ret i32 %55
}

declare dso_local i8* @usb_buffer_alloc(%struct.usb_device*, i32, i32, i32*) #1

declare dso_local i8* @usb_alloc_urb(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
