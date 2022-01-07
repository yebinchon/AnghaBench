; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/jsm/extr_jsm_neo.c_neo_clear_break.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/jsm/extr_jsm_neo.c_neo_clear_break.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.jsm_channel = type { i32, i32, %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }

@CH_BREAK_SENDING = common dso_local global i32 0, align 4
@UART_LCR_SBC = common dso_local global i32 0, align 4
@IOCTL = common dso_local global i32 0, align 4
@INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [51 x i8] c"clear break Finishing UART_LCR_SBC! finished: %lx\0A\00", align 1
@jiffies = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.jsm_channel*, i32)* @neo_clear_break to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @neo_clear_break(%struct.jsm_channel* %0, i32 %1) #0 {
  %3 = alloca %struct.jsm_channel*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.jsm_channel* %0, %struct.jsm_channel** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.jsm_channel*, %struct.jsm_channel** %3, align 8
  %8 = getelementptr inbounds %struct.jsm_channel, %struct.jsm_channel* %7, i32 0, i32 1
  %9 = load i64, i64* %5, align 8
  %10 = call i32 @spin_lock_irqsave(i32* %8, i64 %9)
  %11 = load %struct.jsm_channel*, %struct.jsm_channel** %3, align 8
  %12 = getelementptr inbounds %struct.jsm_channel, %struct.jsm_channel* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = load i32, i32* @CH_BREAK_SENDING, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %50

17:                                               ; preds = %2
  %18 = load %struct.jsm_channel*, %struct.jsm_channel** %3, align 8
  %19 = getelementptr inbounds %struct.jsm_channel, %struct.jsm_channel* %18, i32 0, i32 3
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = call i32 @readb(i32* %21)
  store i32 %22, i32* %6, align 4
  %23 = load i32, i32* %6, align 4
  %24 = load i32, i32* @UART_LCR_SBC, align 4
  %25 = xor i32 %24, -1
  %26 = and i32 %23, %25
  %27 = load %struct.jsm_channel*, %struct.jsm_channel** %3, align 8
  %28 = getelementptr inbounds %struct.jsm_channel, %struct.jsm_channel* %27, i32 0, i32 3
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  %31 = call i32 @writeb(i32 %26, i32* %30)
  %32 = load i32, i32* @CH_BREAK_SENDING, align 4
  %33 = xor i32 %32, -1
  %34 = load %struct.jsm_channel*, %struct.jsm_channel** %3, align 8
  %35 = getelementptr inbounds %struct.jsm_channel, %struct.jsm_channel* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = and i32 %36, %33
  store i32 %37, i32* %35, align 8
  %38 = load i32, i32* @IOCTL, align 4
  %39 = load i32, i32* @INFO, align 4
  %40 = load %struct.jsm_channel*, %struct.jsm_channel** %3, align 8
  %41 = getelementptr inbounds %struct.jsm_channel, %struct.jsm_channel* %40, i32 0, i32 2
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  %44 = load i32, i32* @jiffies, align 4
  %45 = call i32 @jsm_printk(i32 %38, i32 %39, i32* %43, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0), i32 %44)
  %46 = load %struct.jsm_channel*, %struct.jsm_channel** %3, align 8
  %47 = getelementptr inbounds %struct.jsm_channel, %struct.jsm_channel* %46, i32 0, i32 2
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** %47, align 8
  %49 = call i32 @neo_pci_posting_flush(%struct.TYPE_4__* %48)
  br label %50

50:                                               ; preds = %17, %2
  %51 = load %struct.jsm_channel*, %struct.jsm_channel** %3, align 8
  %52 = getelementptr inbounds %struct.jsm_channel, %struct.jsm_channel* %51, i32 0, i32 1
  %53 = load i64, i64* %5, align 8
  %54 = call i32 @spin_unlock_irqrestore(i32* %52, i64 %53)
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @readb(i32*) #1

declare dso_local i32 @writeb(i32, i32*) #1

declare dso_local i32 @jsm_printk(i32, i32, i32*, i8*, i32) #1

declare dso_local i32 @neo_pci_posting_flush(%struct.TYPE_4__*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
