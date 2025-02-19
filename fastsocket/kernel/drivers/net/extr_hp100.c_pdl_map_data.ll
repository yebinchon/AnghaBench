; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_hp100.c_pdl_map_data.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_hp100.c_pdl_map_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hp100_private = type { i32 }

@MAX_ETHER_SIZE = common dso_local global i32 0, align 4
@PCI_DMA_FROMDEVICE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hp100_private*, i8*)* @pdl_map_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pdl_map_data(%struct.hp100_private* %0, i8* %1) #0 {
  %3 = alloca %struct.hp100_private*, align 8
  %4 = alloca i8*, align 8
  store %struct.hp100_private* %0, %struct.hp100_private** %3, align 8
  store i8* %1, i8** %4, align 8
  %5 = load %struct.hp100_private*, %struct.hp100_private** %3, align 8
  %6 = getelementptr inbounds %struct.hp100_private, %struct.hp100_private* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = load i8*, i8** %4, align 8
  %9 = load i32, i32* @MAX_ETHER_SIZE, align 4
  %10 = load i32, i32* @PCI_DMA_FROMDEVICE, align 4
  %11 = call i32 @pci_map_single(i32 %7, i8* %8, i32 %9, i32 %10)
  ret i32 %11
}

declare dso_local i32 @pci_map_single(i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
