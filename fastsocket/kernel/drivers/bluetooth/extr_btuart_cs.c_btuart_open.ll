; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/bluetooth/extr_btuart_cs.c_btuart_open.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/bluetooth/extr_btuart_cs.c_btuart_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.hci_dev*, i32, %struct.TYPE_7__*, i32*, i64, i32, i32 }
%struct.hci_dev = type { i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_8__*, i32 }
%struct.TYPE_7__ = type { i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }

@RECV_WAIT_PACKET_TYPE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"Can't allocate HCI device\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@HCI_PCCARD = common dso_local global i32 0, align 4
@btuart_hci_open = common dso_local global i32 0, align 4
@btuart_hci_close = common dso_local global i32 0, align 4
@btuart_hci_flush = common dso_local global i32 0, align 4
@btuart_hci_send_frame = common dso_local global i32 0, align 4
@btuart_hci_destruct = common dso_local global i32 0, align 4
@btuart_hci_ioctl = common dso_local global i32 0, align 4
@THIS_MODULE = common dso_local global i32 0, align 4
@UART_MCR = common dso_local global i64 0, align 8
@UART_IER = common dso_local global i64 0, align 8
@UART_LCR_WLEN8 = common dso_local global i32 0, align 4
@UART_LCR = common dso_local global i64 0, align 8
@UART_MCR_DTR = common dso_local global i32 0, align 4
@UART_MCR_RTS = common dso_local global i32 0, align 4
@UART_MCR_OUT2 = common dso_local global i32 0, align 4
@DEFAULT_BAUD_RATE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"Can't register HCI device\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_8__*)* @btuart_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @btuart_open(%struct.TYPE_8__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_8__*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.hci_dev*, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %3, align 8
  %7 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %8 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %7, i32 0, i32 2
  %9 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  store i32 %12, i32* %5, align 4
  %13 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 1
  %15 = call i32 @spin_lock_init(i32* %14)
  %16 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %16, i32 0, i32 6
  %18 = call i32 @skb_queue_head_init(i32* %17)
  %19 = load i32, i32* @RECV_WAIT_PACKET_TYPE, align 4
  %20 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %21 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %20, i32 0, i32 5
  store i32 %19, i32* %21, align 8
  %22 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %23 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %22, i32 0, i32 4
  store i64 0, i64* %23, align 8
  %24 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 3
  store i32* null, i32** %25, align 8
  %26 = call %struct.hci_dev* (...) @hci_alloc_dev()
  store %struct.hci_dev* %26, %struct.hci_dev** %6, align 8
  %27 = load %struct.hci_dev*, %struct.hci_dev** %6, align 8
  %28 = icmp ne %struct.hci_dev* %27, null
  br i1 %28, label %33, label %29

29:                                               ; preds = %1
  %30 = call i32 @BT_ERR(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %31 = load i32, i32* @ENOMEM, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %2, align 4
  br label %120

33:                                               ; preds = %1
  %34 = load %struct.hci_dev*, %struct.hci_dev** %6, align 8
  %35 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %35, i32 0, i32 0
  store %struct.hci_dev* %34, %struct.hci_dev** %36, align 8
  %37 = load i32, i32* @HCI_PCCARD, align 4
  %38 = load %struct.hci_dev*, %struct.hci_dev** %6, align 8
  %39 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %38, i32 0, i32 8
  store i32 %37, i32* %39, align 8
  %40 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %41 = load %struct.hci_dev*, %struct.hci_dev** %6, align 8
  %42 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %41, i32 0, i32 7
  store %struct.TYPE_8__* %40, %struct.TYPE_8__** %42, align 8
  %43 = load %struct.hci_dev*, %struct.hci_dev** %6, align 8
  %44 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %45 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %44, i32 0, i32 2
  %46 = load %struct.TYPE_7__*, %struct.TYPE_7__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %46, i32 0, i32 0
  %48 = call i32 @SET_HCIDEV_DEV(%struct.hci_dev* %43, i32* %47)
  %49 = load i32, i32* @btuart_hci_open, align 4
  %50 = load %struct.hci_dev*, %struct.hci_dev** %6, align 8
  %51 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %50, i32 0, i32 6
  store i32 %49, i32* %51, align 8
  %52 = load i32, i32* @btuart_hci_close, align 4
  %53 = load %struct.hci_dev*, %struct.hci_dev** %6, align 8
  %54 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %53, i32 0, i32 5
  store i32 %52, i32* %54, align 4
  %55 = load i32, i32* @btuart_hci_flush, align 4
  %56 = load %struct.hci_dev*, %struct.hci_dev** %6, align 8
  %57 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %56, i32 0, i32 4
  store i32 %55, i32* %57, align 8
  %58 = load i32, i32* @btuart_hci_send_frame, align 4
  %59 = load %struct.hci_dev*, %struct.hci_dev** %6, align 8
  %60 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %59, i32 0, i32 3
  store i32 %58, i32* %60, align 4
  %61 = load i32, i32* @btuart_hci_destruct, align 4
  %62 = load %struct.hci_dev*, %struct.hci_dev** %6, align 8
  %63 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %62, i32 0, i32 2
  store i32 %61, i32* %63, align 8
  %64 = load i32, i32* @btuart_hci_ioctl, align 4
  %65 = load %struct.hci_dev*, %struct.hci_dev** %6, align 8
  %66 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %65, i32 0, i32 1
  store i32 %64, i32* %66, align 4
  %67 = load i32, i32* @THIS_MODULE, align 4
  %68 = load %struct.hci_dev*, %struct.hci_dev** %6, align 8
  %69 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %68, i32 0, i32 0
  store i32 %67, i32* %69, align 8
  %70 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %71 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %70, i32 0, i32 1
  %72 = load i64, i64* %4, align 8
  %73 = call i32 @spin_lock_irqsave(i32* %71, i64 %72)
  %74 = load i32, i32* %5, align 4
  %75 = zext i32 %74 to i64
  %76 = load i64, i64* @UART_MCR, align 8
  %77 = add nsw i64 %75, %76
  %78 = call i32 @outb(i32 0, i64 %77)
  %79 = load i32, i32* %5, align 4
  %80 = zext i32 %79 to i64
  %81 = load i64, i64* @UART_IER, align 8
  %82 = add nsw i64 %80, %81
  %83 = call i32 @outb(i32 0, i64 %82)
  %84 = load i32, i32* @UART_LCR_WLEN8, align 4
  %85 = load i32, i32* %5, align 4
  %86 = zext i32 %85 to i64
  %87 = load i64, i64* @UART_LCR, align 8
  %88 = add nsw i64 %86, %87
  %89 = call i32 @outb(i32 %84, i64 %88)
  %90 = load i32, i32* @UART_MCR_DTR, align 4
  %91 = load i32, i32* @UART_MCR_RTS, align 4
  %92 = or i32 %90, %91
  %93 = load i32, i32* @UART_MCR_OUT2, align 4
  %94 = or i32 %92, %93
  %95 = load i32, i32* %5, align 4
  %96 = zext i32 %95 to i64
  %97 = load i64, i64* @UART_MCR, align 8
  %98 = add nsw i64 %96, %97
  %99 = call i32 @outb(i32 %94, i64 %98)
  %100 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %101 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %100, i32 0, i32 1
  %102 = load i64, i64* %4, align 8
  %103 = call i32 @spin_unlock_irqrestore(i32* %101, i64 %102)
  %104 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %105 = load i32, i32* @DEFAULT_BAUD_RATE, align 4
  %106 = call i32 @btuart_change_speed(%struct.TYPE_8__* %104, i32 %105)
  %107 = call i32 @msleep(i32 1000)
  %108 = load %struct.hci_dev*, %struct.hci_dev** %6, align 8
  %109 = call i64 @hci_register_dev(%struct.hci_dev* %108)
  %110 = icmp slt i64 %109, 0
  br i1 %110, label %111, label %119

111:                                              ; preds = %33
  %112 = call i32 @BT_ERR(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  %113 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %114 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %113, i32 0, i32 0
  store %struct.hci_dev* null, %struct.hci_dev** %114, align 8
  %115 = load %struct.hci_dev*, %struct.hci_dev** %6, align 8
  %116 = call i32 @hci_free_dev(%struct.hci_dev* %115)
  %117 = load i32, i32* @ENODEV, align 4
  %118 = sub nsw i32 0, %117
  store i32 %118, i32* %2, align 4
  br label %120

119:                                              ; preds = %33
  store i32 0, i32* %2, align 4
  br label %120

120:                                              ; preds = %119, %111, %29
  %121 = load i32, i32* %2, align 4
  ret i32 %121
}

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @skb_queue_head_init(i32*) #1

declare dso_local %struct.hci_dev* @hci_alloc_dev(...) #1

declare dso_local i32 @BT_ERR(i8*) #1

declare dso_local i32 @SET_HCIDEV_DEV(%struct.hci_dev*, i32*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @outb(i32, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @btuart_change_speed(%struct.TYPE_8__*, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i64 @hci_register_dev(%struct.hci_dev*) #1

declare dso_local i32 @hci_free_dev(%struct.hci_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
