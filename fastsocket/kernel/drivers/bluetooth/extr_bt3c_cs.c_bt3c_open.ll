; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/bluetooth/extr_bt3c_cs.c_bt3c_open.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/bluetooth/extr_bt3c_cs.c_bt3c_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.hci_dev*, %struct.TYPE_5__*, i32*, i64, i32, i32, i32 }
%struct.hci_dev = type { i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_6__*, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.firmware = type { i32, i32 }

@RECV_WAIT_PACKET_TYPE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"Can't allocate HCI device\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@HCI_PCCARD = common dso_local global i32 0, align 4
@bt3c_hci_open = common dso_local global i32 0, align 4
@bt3c_hci_close = common dso_local global i32 0, align 4
@bt3c_hci_flush = common dso_local global i32 0, align 4
@bt3c_hci_send_frame = common dso_local global i32 0, align 4
@bt3c_hci_destruct = common dso_local global i32 0, align 4
@bt3c_hci_ioctl = common dso_local global i32 0, align 4
@THIS_MODULE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [12 x i8] c"BT3CPCC.bin\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"Firmware request failed\00", align 1
@.str.3 = private unnamed_addr constant [24 x i8] c"Firmware loading failed\00", align 1
@.str.4 = private unnamed_addr constant [26 x i8] c"Can't register HCI device\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_6__*)* @bt3c_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bt3c_open(%struct.TYPE_6__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = alloca %struct.firmware*, align 8
  %5 = alloca %struct.hci_dev*, align 8
  %6 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %3, align 8
  %7 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %8 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 6
  %9 = call i32 @spin_lock_init(i32* %8)
  %10 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 5
  %12 = call i32 @skb_queue_head_init(i32* %11)
  %13 = load i32, i32* @RECV_WAIT_PACKET_TYPE, align 4
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 4
  store i32 %13, i32* %15, align 8
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 3
  store i64 0, i64* %17, align 8
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 2
  store i32* null, i32** %19, align 8
  %20 = call %struct.hci_dev* (...) @hci_alloc_dev()
  store %struct.hci_dev* %20, %struct.hci_dev** %5, align 8
  %21 = load %struct.hci_dev*, %struct.hci_dev** %5, align 8
  %22 = icmp ne %struct.hci_dev* %21, null
  br i1 %22, label %27, label %23

23:                                               ; preds = %1
  %24 = call i32 @BT_ERR(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %25 = load i32, i32* @ENOMEM, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %2, align 4
  br label %103

27:                                               ; preds = %1
  %28 = load %struct.hci_dev*, %struct.hci_dev** %5, align 8
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 0
  store %struct.hci_dev* %28, %struct.hci_dev** %30, align 8
  %31 = load i32, i32* @HCI_PCCARD, align 4
  %32 = load %struct.hci_dev*, %struct.hci_dev** %5, align 8
  %33 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %32, i32 0, i32 8
  store i32 %31, i32* %33, align 8
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %35 = load %struct.hci_dev*, %struct.hci_dev** %5, align 8
  %36 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %35, i32 0, i32 7
  store %struct.TYPE_6__* %34, %struct.TYPE_6__** %36, align 8
  %37 = load %struct.hci_dev*, %struct.hci_dev** %5, align 8
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 1
  %40 = load %struct.TYPE_5__*, %struct.TYPE_5__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 0
  %42 = call i32 @SET_HCIDEV_DEV(%struct.hci_dev* %37, i32* %41)
  %43 = load i32, i32* @bt3c_hci_open, align 4
  %44 = load %struct.hci_dev*, %struct.hci_dev** %5, align 8
  %45 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %44, i32 0, i32 6
  store i32 %43, i32* %45, align 8
  %46 = load i32, i32* @bt3c_hci_close, align 4
  %47 = load %struct.hci_dev*, %struct.hci_dev** %5, align 8
  %48 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %47, i32 0, i32 5
  store i32 %46, i32* %48, align 4
  %49 = load i32, i32* @bt3c_hci_flush, align 4
  %50 = load %struct.hci_dev*, %struct.hci_dev** %5, align 8
  %51 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %50, i32 0, i32 4
  store i32 %49, i32* %51, align 8
  %52 = load i32, i32* @bt3c_hci_send_frame, align 4
  %53 = load %struct.hci_dev*, %struct.hci_dev** %5, align 8
  %54 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %53, i32 0, i32 3
  store i32 %52, i32* %54, align 4
  %55 = load i32, i32* @bt3c_hci_destruct, align 4
  %56 = load %struct.hci_dev*, %struct.hci_dev** %5, align 8
  %57 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %56, i32 0, i32 2
  store i32 %55, i32* %57, align 8
  %58 = load i32, i32* @bt3c_hci_ioctl, align 4
  %59 = load %struct.hci_dev*, %struct.hci_dev** %5, align 8
  %60 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %59, i32 0, i32 1
  store i32 %58, i32* %60, align 4
  %61 = load i32, i32* @THIS_MODULE, align 4
  %62 = load %struct.hci_dev*, %struct.hci_dev** %5, align 8
  %63 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %62, i32 0, i32 0
  store i32 %61, i32* %63, align 8
  %64 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i32 0, i32 1
  %66 = load %struct.TYPE_5__*, %struct.TYPE_5__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %66, i32 0, i32 0
  %68 = call i32 @request_firmware(%struct.firmware** %4, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i32* %67)
  store i32 %68, i32* %6, align 4
  %69 = load i32, i32* %6, align 4
  %70 = icmp slt i32 %69, 0
  br i1 %70, label %71, label %73

71:                                               ; preds = %27
  %72 = call i32 @BT_ERR(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0))
  br label %97

73:                                               ; preds = %27
  %74 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %75 = load %struct.firmware*, %struct.firmware** %4, align 8
  %76 = getelementptr inbounds %struct.firmware, %struct.firmware* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.firmware*, %struct.firmware** %4, align 8
  %79 = getelementptr inbounds %struct.firmware, %struct.firmware* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @bt3c_load_firmware(%struct.TYPE_6__* %74, i32 %77, i32 %80)
  store i32 %81, i32* %6, align 4
  %82 = load %struct.firmware*, %struct.firmware** %4, align 8
  %83 = call i32 @release_firmware(%struct.firmware* %82)
  %84 = load i32, i32* %6, align 4
  %85 = icmp slt i32 %84, 0
  br i1 %85, label %86, label %88

86:                                               ; preds = %73
  %87 = call i32 @BT_ERR(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0))
  br label %97

88:                                               ; preds = %73
  %89 = call i32 @msleep(i32 1000)
  %90 = load %struct.hci_dev*, %struct.hci_dev** %5, align 8
  %91 = call i32 @hci_register_dev(%struct.hci_dev* %90)
  store i32 %91, i32* %6, align 4
  %92 = load i32, i32* %6, align 4
  %93 = icmp slt i32 %92, 0
  br i1 %93, label %94, label %96

94:                                               ; preds = %88
  %95 = call i32 @BT_ERR(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0))
  br label %97

96:                                               ; preds = %88
  store i32 0, i32* %2, align 4
  br label %103

97:                                               ; preds = %94, %86, %71
  %98 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %99 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %98, i32 0, i32 0
  store %struct.hci_dev* null, %struct.hci_dev** %99, align 8
  %100 = load %struct.hci_dev*, %struct.hci_dev** %5, align 8
  %101 = call i32 @hci_free_dev(%struct.hci_dev* %100)
  %102 = load i32, i32* %6, align 4
  store i32 %102, i32* %2, align 4
  br label %103

103:                                              ; preds = %97, %96, %23
  %104 = load i32, i32* %2, align 4
  ret i32 %104
}

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @skb_queue_head_init(i32*) #1

declare dso_local %struct.hci_dev* @hci_alloc_dev(...) #1

declare dso_local i32 @BT_ERR(i8*) #1

declare dso_local i32 @SET_HCIDEV_DEV(%struct.hci_dev*, i32*) #1

declare dso_local i32 @request_firmware(%struct.firmware**, i8*, i32*) #1

declare dso_local i32 @bt3c_load_firmware(%struct.TYPE_6__*, i32, i32) #1

declare dso_local i32 @release_firmware(%struct.firmware*) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @hci_register_dev(%struct.hci_dev*) #1

declare dso_local i32 @hci_free_dev(%struct.hci_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
