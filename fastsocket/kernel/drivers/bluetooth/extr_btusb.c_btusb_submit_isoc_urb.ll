; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/bluetooth/extr_btusb.c_btusb_submit_isoc_urb.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/bluetooth/extr_btusb.c_btusb_submit_isoc_urb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hci_dev = type { i32, %struct.btusb_data* }
%struct.btusb_data = type { i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32, i32, i32 }
%struct.urb = type { i32, i32, i8*, i32, i32, i32, %struct.hci_dev*, i32 }

@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@BTUSB_MAX_ISOC_FRAMES = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@btusb_isoc_complete = common dso_local global i32 0, align 4
@URB_FREE_BUFFER = common dso_local global i32 0, align 4
@URB_ISO_ASAP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"%s urb %p submission failed (%d)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hci_dev*, i32)* @btusb_submit_isoc_urb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @btusb_submit_isoc_urb(%struct.hci_dev* %0, i32 %1) #0 {
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
  br label %128

26:                                               ; preds = %2
  %27 = load i32, i32* @BTUSB_MAX_ISOC_FRAMES, align 4
  %28 = load i32, i32* %5, align 4
  %29 = call %struct.urb* @usb_alloc_urb(i32 %27, i32 %28)
  store %struct.urb* %29, %struct.urb** %7, align 8
  %30 = load %struct.urb*, %struct.urb** %7, align 8
  %31 = icmp ne %struct.urb* %30, null
  br i1 %31, label %35, label %32

32:                                               ; preds = %26
  %33 = load i32, i32* @ENOMEM, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %3, align 4
  br label %128

35:                                               ; preds = %26
  %36 = load %struct.btusb_data*, %struct.btusb_data** %6, align 8
  %37 = getelementptr inbounds %struct.btusb_data, %struct.btusb_data* %36, i32 0, i32 1
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @le16_to_cpu(i32 %40)
  %42 = load i32, i32* @BTUSB_MAX_ISOC_FRAMES, align 4
  %43 = mul nsw i32 %41, %42
  store i32 %43, i32* %11, align 4
  %44 = load i32, i32* %11, align 4
  %45 = load i32, i32* %5, align 4
  %46 = call i8* @kmalloc(i32 %44, i32 %45)
  store i8* %46, i8** %8, align 8
  %47 = load i8*, i8** %8, align 8
  %48 = icmp ne i8* %47, null
  br i1 %48, label %54, label %49

49:                                               ; preds = %35
  %50 = load %struct.urb*, %struct.urb** %7, align 8
  %51 = call i32 @usb_free_urb(%struct.urb* %50)
  %52 = load i32, i32* @ENOMEM, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %3, align 4
  br label %128

54:                                               ; preds = %35
  %55 = load %struct.btusb_data*, %struct.btusb_data** %6, align 8
  %56 = getelementptr inbounds %struct.btusb_data, %struct.btusb_data* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 8
  %58 = load %struct.btusb_data*, %struct.btusb_data** %6, align 8
  %59 = getelementptr inbounds %struct.btusb_data, %struct.btusb_data* %58, i32 0, i32 1
  %60 = load %struct.TYPE_2__*, %struct.TYPE_2__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @usb_rcvisocpipe(i32 %57, i32 %62)
  store i32 %63, i32* %9, align 4
  %64 = load %struct.btusb_data*, %struct.btusb_data** %6, align 8
  %65 = getelementptr inbounds %struct.btusb_data, %struct.btusb_data* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 8
  %67 = load %struct.urb*, %struct.urb** %7, align 8
  %68 = getelementptr inbounds %struct.urb, %struct.urb* %67, i32 0, i32 7
  store i32 %66, i32* %68, align 8
  %69 = load i32, i32* %9, align 4
  %70 = load %struct.urb*, %struct.urb** %7, align 8
  %71 = getelementptr inbounds %struct.urb, %struct.urb* %70, i32 0, i32 0
  store i32 %69, i32* %71, align 8
  %72 = load %struct.hci_dev*, %struct.hci_dev** %4, align 8
  %73 = load %struct.urb*, %struct.urb** %7, align 8
  %74 = getelementptr inbounds %struct.urb, %struct.urb* %73, i32 0, i32 6
  store %struct.hci_dev* %72, %struct.hci_dev** %74, align 8
  %75 = load i32, i32* @btusb_isoc_complete, align 4
  %76 = load %struct.urb*, %struct.urb** %7, align 8
  %77 = getelementptr inbounds %struct.urb, %struct.urb* %76, i32 0, i32 5
  store i32 %75, i32* %77, align 8
  %78 = load %struct.btusb_data*, %struct.btusb_data** %6, align 8
  %79 = getelementptr inbounds %struct.btusb_data, %struct.btusb_data* %78, i32 0, i32 1
  %80 = load %struct.TYPE_2__*, %struct.TYPE_2__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = load %struct.urb*, %struct.urb** %7, align 8
  %84 = getelementptr inbounds %struct.urb, %struct.urb* %83, i32 0, i32 4
  store i32 %82, i32* %84, align 4
  %85 = load i32, i32* @URB_FREE_BUFFER, align 4
  %86 = load i32, i32* @URB_ISO_ASAP, align 4
  %87 = or i32 %85, %86
  %88 = load %struct.urb*, %struct.urb** %7, align 8
  %89 = getelementptr inbounds %struct.urb, %struct.urb* %88, i32 0, i32 1
  store i32 %87, i32* %89, align 4
  %90 = load i8*, i8** %8, align 8
  %91 = load %struct.urb*, %struct.urb** %7, align 8
  %92 = getelementptr inbounds %struct.urb, %struct.urb* %91, i32 0, i32 2
  store i8* %90, i8** %92, align 8
  %93 = load i32, i32* %11, align 4
  %94 = load %struct.urb*, %struct.urb** %7, align 8
  %95 = getelementptr inbounds %struct.urb, %struct.urb* %94, i32 0, i32 3
  store i32 %93, i32* %95, align 8
  %96 = load %struct.urb*, %struct.urb** %7, align 8
  %97 = load i32, i32* %11, align 4
  %98 = load %struct.btusb_data*, %struct.btusb_data** %6, align 8
  %99 = getelementptr inbounds %struct.btusb_data, %struct.btusb_data* %98, i32 0, i32 1
  %100 = load %struct.TYPE_2__*, %struct.TYPE_2__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = call i32 @le16_to_cpu(i32 %102)
  %104 = call i32 @__fill_isoc_descriptor(%struct.urb* %96, i32 %97, i32 %103)
  %105 = load %struct.urb*, %struct.urb** %7, align 8
  %106 = load %struct.btusb_data*, %struct.btusb_data** %6, align 8
  %107 = getelementptr inbounds %struct.btusb_data, %struct.btusb_data* %106, i32 0, i32 0
  %108 = call i32 @usb_anchor_urb(%struct.urb* %105, i32* %107)
  %109 = load %struct.urb*, %struct.urb** %7, align 8
  %110 = load i32, i32* %5, align 4
  %111 = call i32 @usb_submit_urb(%struct.urb* %109, i32 %110)
  store i32 %111, i32* %10, align 4
  %112 = load i32, i32* %10, align 4
  %113 = icmp slt i32 %112, 0
  br i1 %113, label %114, label %124

114:                                              ; preds = %54
  %115 = load %struct.hci_dev*, %struct.hci_dev** %4, align 8
  %116 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 8
  %118 = load %struct.urb*, %struct.urb** %7, align 8
  %119 = load i32, i32* %10, align 4
  %120 = sub nsw i32 0, %119
  %121 = call i32 @BT_ERR(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 %117, %struct.urb* %118, i32 %120)
  %122 = load %struct.urb*, %struct.urb** %7, align 8
  %123 = call i32 @usb_unanchor_urb(%struct.urb* %122)
  br label %124

124:                                              ; preds = %114, %54
  %125 = load %struct.urb*, %struct.urb** %7, align 8
  %126 = call i32 @usb_free_urb(%struct.urb* %125)
  %127 = load i32, i32* %10, align 4
  store i32 %127, i32* %3, align 4
  br label %128

128:                                              ; preds = %124, %49, %32, %23
  %129 = load i32, i32* %3, align 4
  ret i32 %129
}

declare dso_local i32 @BT_DBG(i8*, i32) #1

declare dso_local %struct.urb* @usb_alloc_urb(i32, i32) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i8* @kmalloc(i32, i32) #1

declare dso_local i32 @usb_free_urb(%struct.urb*) #1

declare dso_local i32 @usb_rcvisocpipe(i32, i32) #1

declare dso_local i32 @__fill_isoc_descriptor(%struct.urb*, i32, i32) #1

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
