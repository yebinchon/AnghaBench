; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/bluetooth/extr_bpa10x.c_bpa10x_submit_intr_urb.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/bluetooth/extr_bpa10x.c_bpa10x_submit_intr_urb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hci_dev = type { i32, %struct.bpa10x_data* }
%struct.bpa10x_data = type { i32, i32 }
%struct.urb = type { i32 }

@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@bpa10x_rx_complete = common dso_local global i32 0, align 4
@URB_FREE_BUFFER = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"%s urb %p submission failed (%d)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hci_dev*)* @bpa10x_submit_intr_urb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bpa10x_submit_intr_urb(%struct.hci_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.hci_dev*, align 8
  %4 = alloca %struct.bpa10x_data*, align 8
  %5 = alloca %struct.urb*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.hci_dev* %0, %struct.hci_dev** %3, align 8
  %10 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %11 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %10, i32 0, i32 1
  %12 = load %struct.bpa10x_data*, %struct.bpa10x_data** %11, align 8
  store %struct.bpa10x_data* %12, %struct.bpa10x_data** %4, align 8
  store i32 16, i32* %9, align 4
  %13 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %14 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = call i32 @BT_DBG(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %15)
  %17 = load i32, i32* @GFP_KERNEL, align 4
  %18 = call %struct.urb* @usb_alloc_urb(i32 0, i32 %17)
  store %struct.urb* %18, %struct.urb** %5, align 8
  %19 = load %struct.urb*, %struct.urb** %5, align 8
  %20 = icmp ne %struct.urb* %19, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %1
  %22 = load i32, i32* @ENOMEM, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %2, align 4
  br label %78

24:                                               ; preds = %1
  %25 = load i32, i32* %9, align 4
  %26 = load i32, i32* @GFP_KERNEL, align 4
  %27 = call i8* @kmalloc(i32 %25, i32 %26)
  store i8* %27, i8** %6, align 8
  %28 = load i8*, i8** %6, align 8
  %29 = icmp ne i8* %28, null
  br i1 %29, label %35, label %30

30:                                               ; preds = %24
  %31 = load %struct.urb*, %struct.urb** %5, align 8
  %32 = call i32 @usb_free_urb(%struct.urb* %31)
  %33 = load i32, i32* @ENOMEM, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %2, align 4
  br label %78

35:                                               ; preds = %24
  %36 = load %struct.bpa10x_data*, %struct.bpa10x_data** %4, align 8
  %37 = getelementptr inbounds %struct.bpa10x_data, %struct.bpa10x_data* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @usb_rcvintpipe(i32 %38, i32 129)
  store i32 %39, i32* %7, align 4
  %40 = load %struct.urb*, %struct.urb** %5, align 8
  %41 = load %struct.bpa10x_data*, %struct.bpa10x_data** %4, align 8
  %42 = getelementptr inbounds %struct.bpa10x_data, %struct.bpa10x_data* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* %7, align 4
  %45 = load i8*, i8** %6, align 8
  %46 = load i32, i32* %9, align 4
  %47 = load i32, i32* @bpa10x_rx_complete, align 4
  %48 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %49 = call i32 @usb_fill_int_urb(%struct.urb* %40, i32 %43, i32 %44, i8* %45, i32 %46, i32 %47, %struct.hci_dev* %48, i32 1)
  %50 = load i32, i32* @URB_FREE_BUFFER, align 4
  %51 = load %struct.urb*, %struct.urb** %5, align 8
  %52 = getelementptr inbounds %struct.urb, %struct.urb* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = or i32 %53, %50
  store i32 %54, i32* %52, align 4
  %55 = load %struct.urb*, %struct.urb** %5, align 8
  %56 = load %struct.bpa10x_data*, %struct.bpa10x_data** %4, align 8
  %57 = getelementptr inbounds %struct.bpa10x_data, %struct.bpa10x_data* %56, i32 0, i32 0
  %58 = call i32 @usb_anchor_urb(%struct.urb* %55, i32* %57)
  %59 = load %struct.urb*, %struct.urb** %5, align 8
  %60 = load i32, i32* @GFP_KERNEL, align 4
  %61 = call i32 @usb_submit_urb(%struct.urb* %59, i32 %60)
  store i32 %61, i32* %8, align 4
  %62 = load i32, i32* %8, align 4
  %63 = icmp slt i32 %62, 0
  br i1 %63, label %64, label %74

64:                                               ; preds = %35
  %65 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %66 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = load %struct.urb*, %struct.urb** %5, align 8
  %69 = load i32, i32* %8, align 4
  %70 = sub nsw i32 0, %69
  %71 = call i32 @BT_ERR(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 %67, %struct.urb* %68, i32 %70)
  %72 = load %struct.urb*, %struct.urb** %5, align 8
  %73 = call i32 @usb_unanchor_urb(%struct.urb* %72)
  br label %74

74:                                               ; preds = %64, %35
  %75 = load %struct.urb*, %struct.urb** %5, align 8
  %76 = call i32 @usb_free_urb(%struct.urb* %75)
  %77 = load i32, i32* %8, align 4
  store i32 %77, i32* %2, align 4
  br label %78

78:                                               ; preds = %74, %30, %21
  %79 = load i32, i32* %2, align 4
  ret i32 %79
}

declare dso_local i32 @BT_DBG(i8*, i32) #1

declare dso_local %struct.urb* @usb_alloc_urb(i32, i32) #1

declare dso_local i8* @kmalloc(i32, i32) #1

declare dso_local i32 @usb_free_urb(%struct.urb*) #1

declare dso_local i32 @usb_rcvintpipe(i32, i32) #1

declare dso_local i32 @usb_fill_int_urb(%struct.urb*, i32, i32, i8*, i32, i32, %struct.hci_dev*, i32) #1

declare dso_local i32 @usb_anchor_urb(%struct.urb*, i32*) #1

declare dso_local i32 @usb_submit_urb(%struct.urb*, i32) #1

declare dso_local i32 @BT_ERR(i8*, i32, %struct.urb*, i32) #1

declare dso_local i32 @usb_unanchor_urb(%struct.urb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
