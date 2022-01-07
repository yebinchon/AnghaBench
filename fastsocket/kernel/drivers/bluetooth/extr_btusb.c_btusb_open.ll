; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/bluetooth/extr_btusb.c_btusb_open.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/bluetooth/extr_btusb.c_btusb_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hci_dev = type { i32, i32, %struct.btusb_data* }
%struct.btusb_data = type { %struct.TYPE_3__*, i32, i32 }
%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@HCI_RUNNING = common dso_local global i32 0, align 4
@BTUSB_INTR_RUNNING = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@BTUSB_BULK_RUNNING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hci_dev*)* @btusb_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @btusb_open(%struct.hci_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.hci_dev*, align 8
  %4 = alloca %struct.btusb_data*, align 8
  %5 = alloca i32, align 4
  store %struct.hci_dev* %0, %struct.hci_dev** %3, align 8
  %6 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %7 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %6, i32 0, i32 2
  %8 = load %struct.btusb_data*, %struct.btusb_data** %7, align 8
  store %struct.btusb_data* %8, %struct.btusb_data** %4, align 8
  %9 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %10 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @BT_DBG(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %11)
  %13 = load %struct.btusb_data*, %struct.btusb_data** %4, align 8
  %14 = getelementptr inbounds %struct.btusb_data, %struct.btusb_data* %13, i32 0, i32 0
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %16 = call i32 @usb_autopm_get_interface(%struct.TYPE_3__* %15)
  store i32 %16, i32* %5, align 4
  %17 = load i32, i32* %5, align 4
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %1
  %20 = load i32, i32* %5, align 4
  store i32 %20, i32* %2, align 4
  br label %83

21:                                               ; preds = %1
  %22 = load %struct.btusb_data*, %struct.btusb_data** %4, align 8
  %23 = getelementptr inbounds %struct.btusb_data, %struct.btusb_data* %22, i32 0, i32 0
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  store i32 1, i32* %25, align 4
  %26 = load i32, i32* @HCI_RUNNING, align 4
  %27 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %28 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %27, i32 0, i32 0
  %29 = call i64 @test_and_set_bit(i32 %26, i32* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %21
  br label %64

32:                                               ; preds = %21
  %33 = load i32, i32* @BTUSB_INTR_RUNNING, align 4
  %34 = load %struct.btusb_data*, %struct.btusb_data** %4, align 8
  %35 = getelementptr inbounds %struct.btusb_data, %struct.btusb_data* %34, i32 0, i32 1
  %36 = call i64 @test_and_set_bit(i32 %33, i32* %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %32
  br label %64

39:                                               ; preds = %32
  %40 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %41 = load i32, i32* @GFP_KERNEL, align 4
  %42 = call i32 @btusb_submit_intr_urb(%struct.hci_dev* %40, i32 %41)
  store i32 %42, i32* %5, align 4
  %43 = load i32, i32* %5, align 4
  %44 = icmp slt i32 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %39
  br label %69

46:                                               ; preds = %39
  %47 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %48 = load i32, i32* @GFP_KERNEL, align 4
  %49 = call i32 @btusb_submit_bulk_urb(%struct.hci_dev* %47, i32 %48)
  store i32 %49, i32* %5, align 4
  %50 = load i32, i32* %5, align 4
  %51 = icmp slt i32 %50, 0
  br i1 %51, label %52, label %56

52:                                               ; preds = %46
  %53 = load %struct.btusb_data*, %struct.btusb_data** %4, align 8
  %54 = getelementptr inbounds %struct.btusb_data, %struct.btusb_data* %53, i32 0, i32 2
  %55 = call i32 @usb_kill_anchored_urbs(i32* %54)
  br label %69

56:                                               ; preds = %46
  %57 = load i32, i32* @BTUSB_BULK_RUNNING, align 4
  %58 = load %struct.btusb_data*, %struct.btusb_data** %4, align 8
  %59 = getelementptr inbounds %struct.btusb_data, %struct.btusb_data* %58, i32 0, i32 1
  %60 = call i32 @set_bit(i32 %57, i32* %59)
  %61 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %62 = load i32, i32* @GFP_KERNEL, align 4
  %63 = call i32 @btusb_submit_bulk_urb(%struct.hci_dev* %61, i32 %62)
  br label %64

64:                                               ; preds = %56, %38, %31
  %65 = load %struct.btusb_data*, %struct.btusb_data** %4, align 8
  %66 = getelementptr inbounds %struct.btusb_data, %struct.btusb_data* %65, i32 0, i32 0
  %67 = load %struct.TYPE_3__*, %struct.TYPE_3__** %66, align 8
  %68 = call i32 @usb_autopm_put_interface(%struct.TYPE_3__* %67)
  store i32 0, i32* %2, align 4
  br label %83

69:                                               ; preds = %52, %45
  %70 = load i32, i32* @BTUSB_INTR_RUNNING, align 4
  %71 = load %struct.btusb_data*, %struct.btusb_data** %4, align 8
  %72 = getelementptr inbounds %struct.btusb_data, %struct.btusb_data* %71, i32 0, i32 1
  %73 = call i32 @clear_bit(i32 %70, i32* %72)
  %74 = load i32, i32* @HCI_RUNNING, align 4
  %75 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %76 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %75, i32 0, i32 0
  %77 = call i32 @clear_bit(i32 %74, i32* %76)
  %78 = load %struct.btusb_data*, %struct.btusb_data** %4, align 8
  %79 = getelementptr inbounds %struct.btusb_data, %struct.btusb_data* %78, i32 0, i32 0
  %80 = load %struct.TYPE_3__*, %struct.TYPE_3__** %79, align 8
  %81 = call i32 @usb_autopm_put_interface(%struct.TYPE_3__* %80)
  %82 = load i32, i32* %5, align 4
  store i32 %82, i32* %2, align 4
  br label %83

83:                                               ; preds = %69, %64, %19
  %84 = load i32, i32* %2, align 4
  ret i32 %84
}

declare dso_local i32 @BT_DBG(i8*, i32) #1

declare dso_local i32 @usb_autopm_get_interface(%struct.TYPE_3__*) #1

declare dso_local i64 @test_and_set_bit(i32, i32*) #1

declare dso_local i32 @btusb_submit_intr_urb(%struct.hci_dev*, i32) #1

declare dso_local i32 @btusb_submit_bulk_urb(%struct.hci_dev*, i32) #1

declare dso_local i32 @usb_kill_anchored_urbs(i32*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @usb_autopm_put_interface(%struct.TYPE_3__*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
