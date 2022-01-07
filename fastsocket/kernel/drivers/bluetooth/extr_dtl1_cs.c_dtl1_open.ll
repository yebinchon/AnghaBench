; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/bluetooth/extr_dtl1_cs.c_dtl1_open.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/bluetooth/extr_dtl1_cs.c_dtl1_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, %struct.hci_dev*, i32, %struct.TYPE_6__*, i32, i32*, i32, i32, i32 }
%struct.hci_dev = type { i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_7__*, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__, i32 }
%struct.TYPE_5__ = type { i32 }

@RECV_WAIT_NSH = common dso_local global i32 0, align 4
@NSHL = common dso_local global i32 0, align 4
@XMIT_WAITING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"Can't allocate HCI device\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@HCI_PCCARD = common dso_local global i32 0, align 4
@dtl1_hci_open = common dso_local global i32 0, align 4
@dtl1_hci_close = common dso_local global i32 0, align 4
@dtl1_hci_flush = common dso_local global i32 0, align 4
@dtl1_hci_send_frame = common dso_local global i32 0, align 4
@dtl1_hci_destruct = common dso_local global i32 0, align 4
@dtl1_hci_ioctl = common dso_local global i32 0, align 4
@THIS_MODULE = common dso_local global i32 0, align 4
@UART_MCR = common dso_local global i64 0, align 8
@UART_IER = common dso_local global i64 0, align 8
@UART_LCR_WLEN8 = common dso_local global i32 0, align 4
@UART_LCR = common dso_local global i64 0, align 8
@UART_MCR_DTR = common dso_local global i32 0, align 4
@UART_MCR_RTS = common dso_local global i32 0, align 4
@UART_MCR_OUT2 = common dso_local global i32 0, align 4
@UART_MSR = common dso_local global i64 0, align 8
@UART_MSR_RI = common dso_local global i32 0, align 4
@UART_IER_RLSI = common dso_local global i32 0, align 4
@UART_IER_RDI = common dso_local global i32 0, align 4
@UART_IER_THRI = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"Can't register HCI device\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_7__*)* @dtl1_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dtl1_open(%struct.TYPE_7__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_7__*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.hci_dev*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %3, align 8
  %7 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %8 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 3
  %9 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  store i32 %12, i32* %5, align 4
  %13 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 2
  %15 = call i32 @spin_lock_init(i32* %14)
  %16 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 8
  %18 = call i32 @skb_queue_head_init(i32* %17)
  %19 = load i32, i32* @RECV_WAIT_NSH, align 4
  %20 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 7
  store i32 %19, i32* %21, align 4
  %22 = load i32, i32* @NSHL, align 4
  %23 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 6
  store i32 %22, i32* %24, align 8
  %25 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i32 0, i32 5
  store i32* null, i32** %26, align 8
  %27 = load i32, i32* @XMIT_WAITING, align 4
  %28 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %29 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %28, i32 0, i32 4
  %30 = call i32 @set_bit(i32 %27, i32* %29)
  %31 = call %struct.hci_dev* (...) @hci_alloc_dev()
  store %struct.hci_dev* %31, %struct.hci_dev** %6, align 8
  %32 = load %struct.hci_dev*, %struct.hci_dev** %6, align 8
  %33 = icmp ne %struct.hci_dev* %32, null
  br i1 %33, label %38, label %34

34:                                               ; preds = %1
  %35 = call i32 @BT_ERR(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %36 = load i32, i32* @ENOMEM, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %2, align 4
  br label %146

38:                                               ; preds = %1
  %39 = load %struct.hci_dev*, %struct.hci_dev** %6, align 8
  %40 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %40, i32 0, i32 1
  store %struct.hci_dev* %39, %struct.hci_dev** %41, align 8
  %42 = load i32, i32* @HCI_PCCARD, align 4
  %43 = load %struct.hci_dev*, %struct.hci_dev** %6, align 8
  %44 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %43, i32 0, i32 8
  store i32 %42, i32* %44, align 8
  %45 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %46 = load %struct.hci_dev*, %struct.hci_dev** %6, align 8
  %47 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %46, i32 0, i32 7
  store %struct.TYPE_7__* %45, %struct.TYPE_7__** %47, align 8
  %48 = load %struct.hci_dev*, %struct.hci_dev** %6, align 8
  %49 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %49, i32 0, i32 3
  %51 = load %struct.TYPE_6__*, %struct.TYPE_6__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 1
  %53 = call i32 @SET_HCIDEV_DEV(%struct.hci_dev* %48, i32* %52)
  %54 = load i32, i32* @dtl1_hci_open, align 4
  %55 = load %struct.hci_dev*, %struct.hci_dev** %6, align 8
  %56 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %55, i32 0, i32 6
  store i32 %54, i32* %56, align 8
  %57 = load i32, i32* @dtl1_hci_close, align 4
  %58 = load %struct.hci_dev*, %struct.hci_dev** %6, align 8
  %59 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %58, i32 0, i32 5
  store i32 %57, i32* %59, align 4
  %60 = load i32, i32* @dtl1_hci_flush, align 4
  %61 = load %struct.hci_dev*, %struct.hci_dev** %6, align 8
  %62 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %61, i32 0, i32 4
  store i32 %60, i32* %62, align 8
  %63 = load i32, i32* @dtl1_hci_send_frame, align 4
  %64 = load %struct.hci_dev*, %struct.hci_dev** %6, align 8
  %65 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %64, i32 0, i32 3
  store i32 %63, i32* %65, align 4
  %66 = load i32, i32* @dtl1_hci_destruct, align 4
  %67 = load %struct.hci_dev*, %struct.hci_dev** %6, align 8
  %68 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %67, i32 0, i32 2
  store i32 %66, i32* %68, align 8
  %69 = load i32, i32* @dtl1_hci_ioctl, align 4
  %70 = load %struct.hci_dev*, %struct.hci_dev** %6, align 8
  %71 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %70, i32 0, i32 1
  store i32 %69, i32* %71, align 4
  %72 = load i32, i32* @THIS_MODULE, align 4
  %73 = load %struct.hci_dev*, %struct.hci_dev** %6, align 8
  %74 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %73, i32 0, i32 0
  store i32 %72, i32* %74, align 8
  %75 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %76 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %75, i32 0, i32 2
  %77 = load i64, i64* %4, align 8
  %78 = call i32 @spin_lock_irqsave(i32* %76, i64 %77)
  %79 = load i32, i32* %5, align 4
  %80 = zext i32 %79 to i64
  %81 = load i64, i64* @UART_MCR, align 8
  %82 = add nsw i64 %80, %81
  %83 = call i32 @outb(i32 0, i64 %82)
  %84 = load i32, i32* %5, align 4
  %85 = zext i32 %84 to i64
  %86 = load i64, i64* @UART_IER, align 8
  %87 = add nsw i64 %85, %86
  %88 = call i32 @outb(i32 0, i64 %87)
  %89 = load i32, i32* @UART_LCR_WLEN8, align 4
  %90 = load i32, i32* %5, align 4
  %91 = zext i32 %90 to i64
  %92 = load i64, i64* @UART_LCR, align 8
  %93 = add nsw i64 %91, %92
  %94 = call i32 @outb(i32 %89, i64 %93)
  %95 = load i32, i32* @UART_MCR_DTR, align 4
  %96 = load i32, i32* @UART_MCR_RTS, align 4
  %97 = or i32 %95, %96
  %98 = load i32, i32* @UART_MCR_OUT2, align 4
  %99 = or i32 %97, %98
  %100 = load i32, i32* %5, align 4
  %101 = zext i32 %100 to i64
  %102 = load i64, i64* @UART_MCR, align 8
  %103 = add nsw i64 %101, %102
  %104 = call i32 @outb(i32 %99, i64 %103)
  %105 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %106 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %105, i32 0, i32 3
  %107 = load %struct.TYPE_6__*, %struct.TYPE_6__** %106, align 8
  %108 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %107, i32 0, i32 0
  %109 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = zext i32 %110 to i64
  %112 = load i64, i64* @UART_MSR, align 8
  %113 = add nsw i64 %111, %112
  %114 = call i32 @inb(i64 %113)
  %115 = load i32, i32* @UART_MSR_RI, align 4
  %116 = and i32 %114, %115
  %117 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %118 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %117, i32 0, i32 0
  store i32 %116, i32* %118, align 8
  %119 = load i32, i32* @UART_IER_RLSI, align 4
  %120 = load i32, i32* @UART_IER_RDI, align 4
  %121 = or i32 %119, %120
  %122 = load i32, i32* @UART_IER_THRI, align 4
  %123 = or i32 %121, %122
  %124 = load i32, i32* %5, align 4
  %125 = zext i32 %124 to i64
  %126 = load i64, i64* @UART_IER, align 8
  %127 = add nsw i64 %125, %126
  %128 = call i32 @outb(i32 %123, i64 %127)
  %129 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %130 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %129, i32 0, i32 2
  %131 = load i64, i64* %4, align 8
  %132 = call i32 @spin_unlock_irqrestore(i32* %130, i64 %131)
  %133 = call i32 @msleep(i32 2000)
  %134 = load %struct.hci_dev*, %struct.hci_dev** %6, align 8
  %135 = call i64 @hci_register_dev(%struct.hci_dev* %134)
  %136 = icmp slt i64 %135, 0
  br i1 %136, label %137, label %145

137:                                              ; preds = %38
  %138 = call i32 @BT_ERR(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  %139 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %140 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %139, i32 0, i32 1
  store %struct.hci_dev* null, %struct.hci_dev** %140, align 8
  %141 = load %struct.hci_dev*, %struct.hci_dev** %6, align 8
  %142 = call i32 @hci_free_dev(%struct.hci_dev* %141)
  %143 = load i32, i32* @ENODEV, align 4
  %144 = sub nsw i32 0, %143
  store i32 %144, i32* %2, align 4
  br label %146

145:                                              ; preds = %38
  store i32 0, i32* %2, align 4
  br label %146

146:                                              ; preds = %145, %137, %34
  %147 = load i32, i32* %2, align 4
  ret i32 %147
}

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @skb_queue_head_init(i32*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local %struct.hci_dev* @hci_alloc_dev(...) #1

declare dso_local i32 @BT_ERR(i8*) #1

declare dso_local i32 @SET_HCIDEV_DEV(%struct.hci_dev*, i32*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @outb(i32, i64) #1

declare dso_local i32 @inb(i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i64 @hci_register_dev(%struct.hci_dev*) #1

declare dso_local i32 @hci_free_dev(%struct.hci_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
