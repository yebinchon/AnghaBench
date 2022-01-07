; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/bluetooth/extr_btusb.c_btusb_submit_bulk_urb.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/bluetooth/extr_btusb.c_btusb_submit_bulk_urb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hci_dev = type { i32, %struct.btusb_data* }
%struct.btusb_data = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.urb = type { i32 }

@HCI_MAX_FRAME_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@btusb_bulk_complete = common dso_local global i32 0, align 4
@URB_FREE_BUFFER = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"%s urb %p submission failed (%d)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hci_dev*, i32)* @btusb_submit_bulk_urb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @btusb_submit_bulk_urb(%struct.hci_dev* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.hci_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.btusb_data*, align 8
  %7 = alloca %struct.urb*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.hci_dev* %0, %struct.hci_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  %12 = load %struct.hci_dev*, %struct.hci_dev** %4, align 8
  %13 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %12, i32 0, i32 1
  %14 = load %struct.btusb_data*, %struct.btusb_data** %13, align 8
  store %struct.btusb_data* %14, %struct.btusb_data** %6, align 8
  %15 = load i32, i32* @HCI_MAX_FRAME_SIZE, align 4
  store i32 %15, i32* %11, align 4
  %16 = load %struct.hci_dev*, %struct.hci_dev** %4, align 8
  %17 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = call i32 @BT_DBG(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %18)
  %20 = load %struct.btusb_data*, %struct.btusb_data** %6, align 8
  %21 = getelementptr inbounds %struct.btusb_data, %struct.btusb_data* %20, i32 0, i32 2
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = icmp ne %struct.TYPE_2__* %22, null
  br i1 %23, label %27, label %24

24:                                               ; preds = %2
  %25 = load i32, i32* @ENODEV, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %3, align 4
  br label %98

27:                                               ; preds = %2
  %28 = load i32, i32* %5, align 4
  %29 = call %struct.urb* @usb_alloc_urb(i32 0, i32 %28)
  store %struct.urb* %29, %struct.urb** %7, align 8
  %30 = load %struct.urb*, %struct.urb** %7, align 8
  %31 = icmp ne %struct.urb* %30, null
  br i1 %31, label %35, label %32

32:                                               ; preds = %27
  %33 = load i32, i32* @ENOMEM, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %3, align 4
  br label %98

35:                                               ; preds = %27
  %36 = load i32, i32* %11, align 4
  %37 = load i32, i32* %5, align 4
  %38 = call i8* @kmalloc(i32 %36, i32 %37)
  store i8* %38, i8** %8, align 8
  %39 = load i8*, i8** %8, align 8
  %40 = icmp ne i8* %39, null
  br i1 %40, label %46, label %41

41:                                               ; preds = %35
  %42 = load %struct.urb*, %struct.urb** %7, align 8
  %43 = call i32 @usb_free_urb(%struct.urb* %42)
  %44 = load i32, i32* @ENOMEM, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %3, align 4
  br label %98

46:                                               ; preds = %35
  %47 = load %struct.btusb_data*, %struct.btusb_data** %6, align 8
  %48 = getelementptr inbounds %struct.btusb_data, %struct.btusb_data* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.btusb_data*, %struct.btusb_data** %6, align 8
  %51 = getelementptr inbounds %struct.btusb_data, %struct.btusb_data* %50, i32 0, i32 2
  %52 = load %struct.TYPE_2__*, %struct.TYPE_2__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @usb_rcvbulkpipe(i32 %49, i32 %54)
  store i32 %55, i32* %9, align 4
  %56 = load %struct.urb*, %struct.urb** %7, align 8
  %57 = load %struct.btusb_data*, %struct.btusb_data** %6, align 8
  %58 = getelementptr inbounds %struct.btusb_data, %struct.btusb_data* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* %9, align 4
  %61 = load i8*, i8** %8, align 8
  %62 = load i32, i32* %11, align 4
  %63 = load i32, i32* @btusb_bulk_complete, align 4
  %64 = load %struct.hci_dev*, %struct.hci_dev** %4, align 8
  %65 = call i32 @usb_fill_bulk_urb(%struct.urb* %56, i32 %59, i32 %60, i8* %61, i32 %62, i32 %63, %struct.hci_dev* %64)
  %66 = load i32, i32* @URB_FREE_BUFFER, align 4
  %67 = load %struct.urb*, %struct.urb** %7, align 8
  %68 = getelementptr inbounds %struct.urb, %struct.urb* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = or i32 %69, %66
  store i32 %70, i32* %68, align 4
  %71 = load %struct.btusb_data*, %struct.btusb_data** %6, align 8
  %72 = getelementptr inbounds %struct.btusb_data, %struct.btusb_data* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @usb_mark_last_busy(i32 %73)
  %75 = load %struct.urb*, %struct.urb** %7, align 8
  %76 = load %struct.btusb_data*, %struct.btusb_data** %6, align 8
  %77 = getelementptr inbounds %struct.btusb_data, %struct.btusb_data* %76, i32 0, i32 0
  %78 = call i32 @usb_anchor_urb(%struct.urb* %75, i32* %77)
  %79 = load %struct.urb*, %struct.urb** %7, align 8
  %80 = load i32, i32* %5, align 4
  %81 = call i32 @usb_submit_urb(%struct.urb* %79, i32 %80)
  store i32 %81, i32* %10, align 4
  %82 = load i32, i32* %10, align 4
  %83 = icmp slt i32 %82, 0
  br i1 %83, label %84, label %94

84:                                               ; preds = %46
  %85 = load %struct.hci_dev*, %struct.hci_dev** %4, align 8
  %86 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = load %struct.urb*, %struct.urb** %7, align 8
  %89 = load i32, i32* %10, align 4
  %90 = sub nsw i32 0, %89
  %91 = call i32 @BT_ERR(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 %87, %struct.urb* %88, i32 %90)
  %92 = load %struct.urb*, %struct.urb** %7, align 8
  %93 = call i32 @usb_unanchor_urb(%struct.urb* %92)
  br label %94

94:                                               ; preds = %84, %46
  %95 = load %struct.urb*, %struct.urb** %7, align 8
  %96 = call i32 @usb_free_urb(%struct.urb* %95)
  %97 = load i32, i32* %10, align 4
  store i32 %97, i32* %3, align 4
  br label %98

98:                                               ; preds = %94, %41, %32, %24
  %99 = load i32, i32* %3, align 4
  ret i32 %99
}

declare dso_local i32 @BT_DBG(i8*, i32) #1

declare dso_local %struct.urb* @usb_alloc_urb(i32, i32) #1

declare dso_local i8* @kmalloc(i32, i32) #1

declare dso_local i32 @usb_free_urb(%struct.urb*) #1

declare dso_local i32 @usb_rcvbulkpipe(i32, i32) #1

declare dso_local i32 @usb_fill_bulk_urb(%struct.urb*, i32, i32, i8*, i32, i32, %struct.hci_dev*) #1

declare dso_local i32 @usb_mark_last_busy(i32) #1

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
