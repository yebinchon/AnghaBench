; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/bluetooth/extr_btusb.c_btusb_intr_complete.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/bluetooth/extr_btusb.c_btusb_intr_complete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.urb = type { i32, i32, i32, %struct.hci_dev* }
%struct.hci_dev = type { i32, %struct.TYPE_2__, i32, %struct.btusb_data* }
%struct.TYPE_2__ = type { i32, i32 }
%struct.btusb_data = type { i32, i32, i32 }

@.str = private unnamed_addr constant [29 x i8] c"%s urb %p status %d count %d\00", align 1
@HCI_RUNNING = common dso_local global i32 0, align 4
@HCI_EVENT_PKT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"%s corrupted event packet\00", align 1
@BTUSB_INTR_RUNNING = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [34 x i8] c"%s urb %p failed to resubmit (%d)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.urb*)* @btusb_intr_complete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @btusb_intr_complete(%struct.urb* %0) #0 {
  %2 = alloca %struct.urb*, align 8
  %3 = alloca %struct.hci_dev*, align 8
  %4 = alloca %struct.btusb_data*, align 8
  %5 = alloca i32, align 4
  store %struct.urb* %0, %struct.urb** %2, align 8
  %6 = load %struct.urb*, %struct.urb** %2, align 8
  %7 = getelementptr inbounds %struct.urb, %struct.urb* %6, i32 0, i32 3
  %8 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  store %struct.hci_dev* %8, %struct.hci_dev** %3, align 8
  %9 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %10 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %9, i32 0, i32 3
  %11 = load %struct.btusb_data*, %struct.btusb_data** %10, align 8
  store %struct.btusb_data* %11, %struct.btusb_data** %4, align 8
  %12 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %13 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = load %struct.urb*, %struct.urb** %2, align 8
  %16 = load %struct.urb*, %struct.urb** %2, align 8
  %17 = getelementptr inbounds %struct.urb, %struct.urb* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 8
  %19 = load %struct.urb*, %struct.urb** %2, align 8
  %20 = getelementptr inbounds %struct.urb, %struct.urb* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = call i32 @BT_DBG(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %14, %struct.urb* %15, i32 %18, i32 %21)
  %23 = load i32, i32* @HCI_RUNNING, align 4
  %24 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %25 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %24, i32 0, i32 2
  %26 = call i32 @test_bit(i32 %23, i32* %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %29, label %28

28:                                               ; preds = %1
  br label %95

29:                                               ; preds = %1
  %30 = load %struct.urb*, %struct.urb** %2, align 8
  %31 = getelementptr inbounds %struct.urb, %struct.urb* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 8
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %64

34:                                               ; preds = %29
  %35 = load %struct.urb*, %struct.urb** %2, align 8
  %36 = getelementptr inbounds %struct.urb, %struct.urb* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %39 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = add nsw i32 %41, %37
  store i32 %42, i32* %40, align 4
  %43 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %44 = load i32, i32* @HCI_EVENT_PKT, align 4
  %45 = load %struct.urb*, %struct.urb** %2, align 8
  %46 = getelementptr inbounds %struct.urb, %struct.urb* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.urb*, %struct.urb** %2, align 8
  %49 = getelementptr inbounds %struct.urb, %struct.urb* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = call i64 @hci_recv_fragment(%struct.hci_dev* %43, i32 %44, i32 %47, i32 %50)
  %52 = icmp slt i64 %51, 0
  br i1 %52, label %53, label %63

53:                                               ; preds = %34
  %54 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %55 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = call i32 (i8*, i32, ...) @BT_ERR(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 %56)
  %58 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %59 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %58, i32 0, i32 1
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %60, align 4
  br label %63

63:                                               ; preds = %53, %34
  br label %64

64:                                               ; preds = %63, %29
  %65 = load i32, i32* @BTUSB_INTR_RUNNING, align 4
  %66 = load %struct.btusb_data*, %struct.btusb_data** %4, align 8
  %67 = getelementptr inbounds %struct.btusb_data, %struct.btusb_data* %66, i32 0, i32 2
  %68 = call i32 @test_bit(i32 %65, i32* %67)
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %71, label %70

70:                                               ; preds = %64
  br label %95

71:                                               ; preds = %64
  %72 = load %struct.btusb_data*, %struct.btusb_data** %4, align 8
  %73 = getelementptr inbounds %struct.btusb_data, %struct.btusb_data* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @usb_mark_last_busy(i32 %74)
  %76 = load %struct.urb*, %struct.urb** %2, align 8
  %77 = load %struct.btusb_data*, %struct.btusb_data** %4, align 8
  %78 = getelementptr inbounds %struct.btusb_data, %struct.btusb_data* %77, i32 0, i32 0
  %79 = call i32 @usb_anchor_urb(%struct.urb* %76, i32* %78)
  %80 = load %struct.urb*, %struct.urb** %2, align 8
  %81 = load i32, i32* @GFP_ATOMIC, align 4
  %82 = call i32 @usb_submit_urb(%struct.urb* %80, i32 %81)
  store i32 %82, i32* %5, align 4
  %83 = load i32, i32* %5, align 4
  %84 = icmp slt i32 %83, 0
  br i1 %84, label %85, label %95

85:                                               ; preds = %71
  %86 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %87 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = load %struct.urb*, %struct.urb** %2, align 8
  %90 = load i32, i32* %5, align 4
  %91 = sub nsw i32 0, %90
  %92 = call i32 (i8*, i32, ...) @BT_ERR(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), i32 %88, %struct.urb* %89, i32 %91)
  %93 = load %struct.urb*, %struct.urb** %2, align 8
  %94 = call i32 @usb_unanchor_urb(%struct.urb* %93)
  br label %95

95:                                               ; preds = %28, %70, %85, %71
  ret void
}

declare dso_local i32 @BT_DBG(i8*, i32, %struct.urb*, i32, i32) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i64 @hci_recv_fragment(%struct.hci_dev*, i32, i32, i32) #1

declare dso_local i32 @BT_ERR(i8*, i32, ...) #1

declare dso_local i32 @usb_mark_last_busy(i32) #1

declare dso_local i32 @usb_anchor_urb(%struct.urb*, i32*) #1

declare dso_local i32 @usb_submit_urb(%struct.urb*, i32) #1

declare dso_local i32 @usb_unanchor_urb(%struct.urb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
