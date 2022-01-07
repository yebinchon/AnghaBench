; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/jsm/extr_jsm_neo.c_neo_enable_receiver.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/jsm/extr_jsm_neo.c_neo_enable_receiver.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.jsm_channel = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@UART_IER_RDI = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.jsm_channel*)* @neo_enable_receiver to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @neo_enable_receiver(%struct.jsm_channel* %0) #0 {
  %2 = alloca %struct.jsm_channel*, align 8
  %3 = alloca i32, align 4
  store %struct.jsm_channel* %0, %struct.jsm_channel** %2, align 8
  %4 = load %struct.jsm_channel*, %struct.jsm_channel** %2, align 8
  %5 = getelementptr inbounds %struct.jsm_channel, %struct.jsm_channel* %4, i32 0, i32 1
  %6 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %8 = call i32 @readb(i32* %7)
  store i32 %8, i32* %3, align 4
  %9 = load i32, i32* @UART_IER_RDI, align 4
  %10 = load i32, i32* %3, align 4
  %11 = or i32 %10, %9
  store i32 %11, i32* %3, align 4
  %12 = load i32, i32* %3, align 4
  %13 = load %struct.jsm_channel*, %struct.jsm_channel** %2, align 8
  %14 = getelementptr inbounds %struct.jsm_channel, %struct.jsm_channel* %13, i32 0, i32 1
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = call i32 @writeb(i32 %12, i32* %16)
  %18 = load %struct.jsm_channel*, %struct.jsm_channel** %2, align 8
  %19 = getelementptr inbounds %struct.jsm_channel, %struct.jsm_channel* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = call i32 @neo_pci_posting_flush(i32 %20)
  ret void
}

declare dso_local i32 @readb(i32*) #1

declare dso_local i32 @writeb(i32, i32*) #1

declare dso_local i32 @neo_pci_posting_flush(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
