; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mfd/extr_ezx-pcap.c_pcap_unmask_irq.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mfd/extr_ezx-pcap.c_pcap_unmask_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pcap_chip = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @pcap_unmask_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pcap_unmask_irq(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pcap_chip*, align 8
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* %2, align 4
  %5 = call %struct.pcap_chip* @get_irq_chip_data(i32 %4)
  store %struct.pcap_chip* %5, %struct.pcap_chip** %3, align 8
  %6 = load %struct.pcap_chip*, %struct.pcap_chip** %3, align 8
  %7 = load i32, i32* %2, align 4
  %8 = call i32 @irq_to_pcap(%struct.pcap_chip* %6, i32 %7)
  %9 = shl i32 1, %8
  %10 = xor i32 %9, -1
  %11 = load %struct.pcap_chip*, %struct.pcap_chip** %3, align 8
  %12 = getelementptr inbounds %struct.pcap_chip, %struct.pcap_chip* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = and i32 %13, %10
  store i32 %14, i32* %12, align 4
  %15 = load %struct.pcap_chip*, %struct.pcap_chip** %3, align 8
  %16 = getelementptr inbounds %struct.pcap_chip, %struct.pcap_chip* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.pcap_chip*, %struct.pcap_chip** %3, align 8
  %19 = getelementptr inbounds %struct.pcap_chip, %struct.pcap_chip* %18, i32 0, i32 1
  %20 = call i32 @queue_work(i32 %17, i32* %19)
  ret void
}

declare dso_local %struct.pcap_chip* @get_irq_chip_data(i32) #1

declare dso_local i32 @irq_to_pcap(%struct.pcap_chip*, i32) #1

declare dso_local i32 @queue_work(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
