; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/bluetooth/extr_btusb.c_btusb_isoc_complete.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/bluetooth/extr_btusb.c_btusb_isoc_complete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.urb = type { i32, i64, %struct.TYPE_3__*, i32, i32, %struct.hci_dev* }
%struct.TYPE_3__ = type { i32, i32, i64 }
%struct.hci_dev = type { i32, %struct.TYPE_4__, i32, %struct.btusb_data* }
%struct.TYPE_4__ = type { i32, i32 }
%struct.btusb_data = type { i32, i32 }

@.str = private unnamed_addr constant [29 x i8] c"%s urb %p status %d count %d\00", align 1
@HCI_RUNNING = common dso_local global i32 0, align 4
@HCI_SCODATA_PKT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"%s corrupted SCO packet\00", align 1
@BTUSB_ISOC_RUNNING = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [34 x i8] c"%s urb %p failed to resubmit (%d)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.urb*)* @btusb_isoc_complete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @btusb_isoc_complete(%struct.urb* %0) #0 {
  %2 = alloca %struct.urb*, align 8
  %3 = alloca %struct.hci_dev*, align 8
  %4 = alloca %struct.btusb_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.urb* %0, %struct.urb** %2, align 8
  %9 = load %struct.urb*, %struct.urb** %2, align 8
  %10 = getelementptr inbounds %struct.urb, %struct.urb* %9, i32 0, i32 5
  %11 = load %struct.hci_dev*, %struct.hci_dev** %10, align 8
  store %struct.hci_dev* %11, %struct.hci_dev** %3, align 8
  %12 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %13 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %12, i32 0, i32 3
  %14 = load %struct.btusb_data*, %struct.btusb_data** %13, align 8
  store %struct.btusb_data* %14, %struct.btusb_data** %4, align 8
  %15 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %16 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load %struct.urb*, %struct.urb** %2, align 8
  %19 = load %struct.urb*, %struct.urb** %2, align 8
  %20 = getelementptr inbounds %struct.urb, %struct.urb* %19, i32 0, i32 3
  %21 = load i32, i32* %20, align 8
  %22 = load %struct.urb*, %struct.urb** %2, align 8
  %23 = getelementptr inbounds %struct.urb, %struct.urb* %22, i32 0, i32 4
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @BT_DBG(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %17, %struct.urb* %18, i32 %21, i32 %24)
  %26 = load i32, i32* @HCI_RUNNING, align 4
  %27 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %28 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %27, i32 0, i32 2
  %29 = call i32 @test_bit(i32 %26, i32* %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %32, label %31

31:                                               ; preds = %1
  br label %131

32:                                               ; preds = %1
  %33 = load %struct.urb*, %struct.urb** %2, align 8
  %34 = getelementptr inbounds %struct.urb, %struct.urb* %33, i32 0, i32 3
  %35 = load i32, i32* %34, align 8
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %104

37:                                               ; preds = %32
  store i32 0, i32* %5, align 4
  br label %38

38:                                               ; preds = %100, %37
  %39 = load i32, i32* %5, align 4
  %40 = load %struct.urb*, %struct.urb** %2, align 8
  %41 = getelementptr inbounds %struct.urb, %struct.urb* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = icmp slt i32 %39, %42
  br i1 %43, label %44, label %103

44:                                               ; preds = %38
  %45 = load %struct.urb*, %struct.urb** %2, align 8
  %46 = getelementptr inbounds %struct.urb, %struct.urb* %45, i32 0, i32 2
  %47 = load %struct.TYPE_3__*, %struct.TYPE_3__** %46, align 8
  %48 = load i32, i32* %5, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i64 %49
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  store i32 %52, i32* %7, align 4
  %53 = load %struct.urb*, %struct.urb** %2, align 8
  %54 = getelementptr inbounds %struct.urb, %struct.urb* %53, i32 0, i32 2
  %55 = load %struct.TYPE_3__*, %struct.TYPE_3__** %54, align 8
  %56 = load i32, i32* %5, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i64 %57
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  store i32 %60, i32* %8, align 4
  %61 = load %struct.urb*, %struct.urb** %2, align 8
  %62 = getelementptr inbounds %struct.urb, %struct.urb* %61, i32 0, i32 2
  %63 = load %struct.TYPE_3__*, %struct.TYPE_3__** %62, align 8
  %64 = load i32, i32* %5, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i64 %65
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i32 0, i32 2
  %68 = load i64, i64* %67, align 8
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %71

70:                                               ; preds = %44
  br label %100

71:                                               ; preds = %44
  %72 = load i32, i32* %8, align 4
  %73 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %74 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %73, i32 0, i32 1
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = add i32 %76, %72
  store i32 %77, i32* %75, align 4
  %78 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %79 = load i32, i32* @HCI_SCODATA_PKT, align 4
  %80 = load %struct.urb*, %struct.urb** %2, align 8
  %81 = getelementptr inbounds %struct.urb, %struct.urb* %80, i32 0, i32 1
  %82 = load i64, i64* %81, align 8
  %83 = load i32, i32* %7, align 4
  %84 = zext i32 %83 to i64
  %85 = add nsw i64 %82, %84
  %86 = load i32, i32* %8, align 4
  %87 = call i64 @hci_recv_fragment(%struct.hci_dev* %78, i32 %79, i64 %85, i32 %86)
  %88 = icmp slt i64 %87, 0
  br i1 %88, label %89, label %99

89:                                               ; preds = %71
  %90 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %91 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = call i32 (i8*, i32, ...) @BT_ERR(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i32 %92)
  %94 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %95 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %94, i32 0, i32 1
  %96 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  %98 = add nsw i32 %97, 1
  store i32 %98, i32* %96, align 4
  br label %99

99:                                               ; preds = %89, %71
  br label %100

100:                                              ; preds = %99, %70
  %101 = load i32, i32* %5, align 4
  %102 = add nsw i32 %101, 1
  store i32 %102, i32* %5, align 4
  br label %38

103:                                              ; preds = %38
  br label %104

104:                                              ; preds = %103, %32
  %105 = load i32, i32* @BTUSB_ISOC_RUNNING, align 4
  %106 = load %struct.btusb_data*, %struct.btusb_data** %4, align 8
  %107 = getelementptr inbounds %struct.btusb_data, %struct.btusb_data* %106, i32 0, i32 1
  %108 = call i32 @test_bit(i32 %105, i32* %107)
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %111, label %110

110:                                              ; preds = %104
  br label %131

111:                                              ; preds = %104
  %112 = load %struct.urb*, %struct.urb** %2, align 8
  %113 = load %struct.btusb_data*, %struct.btusb_data** %4, align 8
  %114 = getelementptr inbounds %struct.btusb_data, %struct.btusb_data* %113, i32 0, i32 0
  %115 = call i32 @usb_anchor_urb(%struct.urb* %112, i32* %114)
  %116 = load %struct.urb*, %struct.urb** %2, align 8
  %117 = load i32, i32* @GFP_ATOMIC, align 4
  %118 = call i32 @usb_submit_urb(%struct.urb* %116, i32 %117)
  store i32 %118, i32* %6, align 4
  %119 = load i32, i32* %6, align 4
  %120 = icmp slt i32 %119, 0
  br i1 %120, label %121, label %131

121:                                              ; preds = %111
  %122 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %123 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 8
  %125 = load %struct.urb*, %struct.urb** %2, align 8
  %126 = load i32, i32* %6, align 4
  %127 = sub nsw i32 0, %126
  %128 = call i32 (i8*, i32, ...) @BT_ERR(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), i32 %124, %struct.urb* %125, i32 %127)
  %129 = load %struct.urb*, %struct.urb** %2, align 8
  %130 = call i32 @usb_unanchor_urb(%struct.urb* %129)
  br label %131

131:                                              ; preds = %31, %110, %121, %111
  ret void
}

declare dso_local i32 @BT_DBG(i8*, i32, %struct.urb*, i32, i32) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i64 @hci_recv_fragment(%struct.hci_dev*, i32, i64, i32) #1

declare dso_local i32 @BT_ERR(i8*, i32, ...) #1

declare dso_local i32 @usb_anchor_urb(%struct.urb*, i32*) #1

declare dso_local i32 @usb_submit_urb(%struct.urb*, i32) #1

declare dso_local i32 @usb_unanchor_urb(%struct.urb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
