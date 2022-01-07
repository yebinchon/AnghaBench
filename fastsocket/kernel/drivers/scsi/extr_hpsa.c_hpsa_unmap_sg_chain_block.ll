; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_hpsa.c_hpsa_unmap_sg_chain_block.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_hpsa.c_hpsa_unmap_sg_chain_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ctlr_info = type { i32, i32 }
%struct.CommandList = type { %struct.SGDescriptor*, %struct.TYPE_6__ }
%struct.SGDescriptor = type { i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32 }
%struct.TYPE_6__ = type { i32 }
%union.u64bit = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32 }

@PCI_DMA_TODEVICE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ctlr_info*, %struct.CommandList*)* @hpsa_unmap_sg_chain_block to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hpsa_unmap_sg_chain_block(%struct.ctlr_info* %0, %struct.CommandList* %1) #0 {
  %3 = alloca %struct.ctlr_info*, align 8
  %4 = alloca %struct.CommandList*, align 8
  %5 = alloca %struct.SGDescriptor*, align 8
  %6 = alloca %union.u64bit, align 4
  store %struct.ctlr_info* %0, %struct.ctlr_info** %3, align 8
  store %struct.CommandList* %1, %struct.CommandList** %4, align 8
  %7 = load %struct.CommandList*, %struct.CommandList** %4, align 8
  %8 = getelementptr inbounds %struct.CommandList, %struct.CommandList* %7, i32 0, i32 1
  %9 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = load %struct.ctlr_info*, %struct.ctlr_info** %3, align 8
  %12 = getelementptr inbounds %struct.ctlr_info, %struct.ctlr_info* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = icmp sle i32 %10, %13
  br i1 %14, label %15, label %16

15:                                               ; preds = %2
  br label %48

16:                                               ; preds = %2
  %17 = load %struct.CommandList*, %struct.CommandList** %4, align 8
  %18 = getelementptr inbounds %struct.CommandList, %struct.CommandList* %17, i32 0, i32 0
  %19 = load %struct.SGDescriptor*, %struct.SGDescriptor** %18, align 8
  %20 = load %struct.ctlr_info*, %struct.ctlr_info** %3, align 8
  %21 = getelementptr inbounds %struct.ctlr_info, %struct.ctlr_info* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = sub nsw i32 %22, 1
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.SGDescriptor, %struct.SGDescriptor* %19, i64 %24
  store %struct.SGDescriptor* %25, %struct.SGDescriptor** %5, align 8
  %26 = load %struct.SGDescriptor*, %struct.SGDescriptor** %5, align 8
  %27 = getelementptr inbounds %struct.SGDescriptor, %struct.SGDescriptor* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = bitcast %union.u64bit* %6 to %struct.TYPE_4__*
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 1
  store i32 %29, i32* %31, align 4
  %32 = load %struct.SGDescriptor*, %struct.SGDescriptor** %5, align 8
  %33 = getelementptr inbounds %struct.SGDescriptor, %struct.SGDescriptor* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = bitcast %union.u64bit* %6 to %struct.TYPE_4__*
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  store i32 %35, i32* %37, align 4
  %38 = load %struct.ctlr_info*, %struct.ctlr_info** %3, align 8
  %39 = getelementptr inbounds %struct.ctlr_info, %struct.ctlr_info* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = bitcast %union.u64bit* %6 to i32*
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.SGDescriptor*, %struct.SGDescriptor** %5, align 8
  %44 = getelementptr inbounds %struct.SGDescriptor, %struct.SGDescriptor* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* @PCI_DMA_TODEVICE, align 4
  %47 = call i32 @pci_unmap_single(i32 %40, i32 %42, i32 %45, i32 %46)
  br label %48

48:                                               ; preds = %16, %15
  ret void
}

declare dso_local i32 @pci_unmap_single(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
