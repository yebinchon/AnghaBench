; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/bluetooth/extr_btusb.c_btusb_submit_intr_urb.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/bluetooth/extr_btusb.c_btusb_submit_intr_urb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hci_dev = type { i32, %struct.btusb_data* }
%struct.btusb_data = type { i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32, i32, i32 }
%struct.urb = type { i32 }

@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@btusb_intr_complete = common dso_local global i32 0, align 4
@URB_FREE_BUFFER = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"%s urb %p submission failed (%d)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hci_dev*, i32)* @btusb_submit_intr_urb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @btusb_submit_intr_urb(%struct.hci_dev* %0, i32 %1) #0 {
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
  %15 = load %struct.hci_dev*, %struct.hci_dev** %4, align 8
  %16 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = call i32 @BT_DBG(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %17)
  %19 = load %struct.btusb_data*, %struct.btusb_data** %6, align 8
  %20 = getelementptr inbounds %struct.btusb_data, %struct.btusb_data* %19, i32 0, i32 1
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = icmp ne %struct.TYPE_2__* %21, null
  br i1 %22, label %26, label %23

23:                                               ; preds = %2
  %24 = load i32, i32* @ENODEV, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %3, align 4
  br label %104

26:                                               ; preds = %2
  %27 = load i32, i32* %5, align 4
  %28 = call %struct.urb* @usb_alloc_urb(i32 0, i32 %27)
  store %struct.urb* %28, %struct.urb** %7, align 8
  %29 = load %struct.urb*, %struct.urb** %7, align 8
  %30 = icmp ne %struct.urb* %29, null
  br i1 %30, label %34, label %31

31:                                               ; preds = %26
  %32 = load i32, i32* @ENOMEM, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %3, align 4
  br label %104

34:                                               ; preds = %26
  %35 = load %struct.btusb_data*, %struct.btusb_data** %6, align 8
  %36 = getelementptr inbounds %struct.btusb_data, %struct.btusb_data* %35, i32 0, i32 1
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @le16_to_cpu(i32 %39)
  store i32 %40, i32* %11, align 4
  %41 = load i32, i32* %11, align 4
  %42 = load i32, i32* %5, align 4
  %43 = call i8* @kmalloc(i32 %41, i32 %42)
  store i8* %43, i8** %8, align 8
  %44 = load i8*, i8** %8, align 8
  %45 = icmp ne i8* %44, null
  br i1 %45, label %51, label %46

46:                                               ; preds = %34
  %47 = load %struct.urb*, %struct.urb** %7, align 8
  %48 = call i32 @usb_free_urb(%struct.urb* %47)
  %49 = load i32, i32* @ENOMEM, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %3, align 4
  br label %104

51:                                               ; preds = %34
  %52 = load %struct.btusb_data*, %struct.btusb_data** %6, align 8
  %53 = getelementptr inbounds %struct.btusb_data, %struct.btusb_data* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 8
  %55 = load %struct.btusb_data*, %struct.btusb_data** %6, align 8
  %56 = getelementptr inbounds %struct.btusb_data, %struct.btusb_data* %55, i32 0, i32 1
  %57 = load %struct.TYPE_2__*, %struct.TYPE_2__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @usb_rcvintpipe(i32 %54, i32 %59)
  store i32 %60, i32* %9, align 4
  %61 = load %struct.urb*, %struct.urb** %7, align 8
  %62 = load %struct.btusb_data*, %struct.btusb_data** %6, align 8
  %63 = getelementptr inbounds %struct.btusb_data, %struct.btusb_data* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 8
  %65 = load i32, i32* %9, align 4
  %66 = load i8*, i8** %8, align 8
  %67 = load i32, i32* %11, align 4
  %68 = load i32, i32* @btusb_intr_complete, align 4
  %69 = load %struct.hci_dev*, %struct.hci_dev** %4, align 8
  %70 = load %struct.btusb_data*, %struct.btusb_data** %6, align 8
  %71 = getelementptr inbounds %struct.btusb_data, %struct.btusb_data* %70, i32 0, i32 1
  %72 = load %struct.TYPE_2__*, %struct.TYPE_2__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @usb_fill_int_urb(%struct.urb* %61, i32 %64, i32 %65, i8* %66, i32 %67, i32 %68, %struct.hci_dev* %69, i32 %74)
  %76 = load i32, i32* @URB_FREE_BUFFER, align 4
  %77 = load %struct.urb*, %struct.urb** %7, align 8
  %78 = getelementptr inbounds %struct.urb, %struct.urb* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = or i32 %79, %76
  store i32 %80, i32* %78, align 4
  %81 = load %struct.urb*, %struct.urb** %7, align 8
  %82 = load %struct.btusb_data*, %struct.btusb_data** %6, align 8
  %83 = getelementptr inbounds %struct.btusb_data, %struct.btusb_data* %82, i32 0, i32 0
  %84 = call i32 @usb_anchor_urb(%struct.urb* %81, i32* %83)
  %85 = load %struct.urb*, %struct.urb** %7, align 8
  %86 = load i32, i32* %5, align 4
  %87 = call i32 @usb_submit_urb(%struct.urb* %85, i32 %86)
  store i32 %87, i32* %10, align 4
  %88 = load i32, i32* %10, align 4
  %89 = icmp slt i32 %88, 0
  br i1 %89, label %90, label %100

90:                                               ; preds = %51
  %91 = load %struct.hci_dev*, %struct.hci_dev** %4, align 8
  %92 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = load %struct.urb*, %struct.urb** %7, align 8
  %95 = load i32, i32* %10, align 4
  %96 = sub nsw i32 0, %95
  %97 = call i32 @BT_ERR(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 %93, %struct.urb* %94, i32 %96)
  %98 = load %struct.urb*, %struct.urb** %7, align 8
  %99 = call i32 @usb_unanchor_urb(%struct.urb* %98)
  br label %100

100:                                              ; preds = %90, %51
  %101 = load %struct.urb*, %struct.urb** %7, align 8
  %102 = call i32 @usb_free_urb(%struct.urb* %101)
  %103 = load i32, i32* %10, align 4
  store i32 %103, i32* %3, align 4
  br label %104

104:                                              ; preds = %100, %46, %31, %23
  %105 = load i32, i32* %3, align 4
  ret i32 %105
}

declare dso_local i32 @BT_DBG(i8*, i32) #1

declare dso_local %struct.urb* @usb_alloc_urb(i32, i32) #1

declare dso_local i32 @le16_to_cpu(i32) #1

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
