; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_hpsa.c_hpsa_map_sg_chain_block.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_hpsa.c_hpsa_map_sg_chain_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ctlr_info = type { i64, i32, %struct.SGDescriptor** }
%struct.SGDescriptor = type { i32, %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i8*, i8* }
%struct.CommandList = type { i64, %struct.TYPE_3__, %struct.SGDescriptor* }
%struct.TYPE_3__ = type { i32 }

@HPSA_SG_CHAIN = common dso_local global i32 0, align 4
@PCI_DMA_TODEVICE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ctlr_info*, %struct.CommandList*)* @hpsa_map_sg_chain_block to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hpsa_map_sg_chain_block(%struct.ctlr_info* %0, %struct.CommandList* %1) #0 {
  %3 = alloca %struct.ctlr_info*, align 8
  %4 = alloca %struct.CommandList*, align 8
  %5 = alloca %struct.SGDescriptor*, align 8
  %6 = alloca %struct.SGDescriptor*, align 8
  %7 = alloca i32, align 4
  store %struct.ctlr_info* %0, %struct.ctlr_info** %3, align 8
  store %struct.CommandList* %1, %struct.CommandList** %4, align 8
  %8 = load %struct.CommandList*, %struct.CommandList** %4, align 8
  %9 = getelementptr inbounds %struct.CommandList, %struct.CommandList* %8, i32 0, i32 2
  %10 = load %struct.SGDescriptor*, %struct.SGDescriptor** %9, align 8
  %11 = load %struct.ctlr_info*, %struct.ctlr_info** %3, align 8
  %12 = getelementptr inbounds %struct.ctlr_info, %struct.ctlr_info* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = sub i64 %13, 1
  %15 = getelementptr inbounds %struct.SGDescriptor, %struct.SGDescriptor* %10, i64 %14
  store %struct.SGDescriptor* %15, %struct.SGDescriptor** %5, align 8
  %16 = load %struct.ctlr_info*, %struct.ctlr_info** %3, align 8
  %17 = getelementptr inbounds %struct.ctlr_info, %struct.ctlr_info* %16, i32 0, i32 2
  %18 = load %struct.SGDescriptor**, %struct.SGDescriptor*** %17, align 8
  %19 = load %struct.CommandList*, %struct.CommandList** %4, align 8
  %20 = getelementptr inbounds %struct.CommandList, %struct.CommandList* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = getelementptr inbounds %struct.SGDescriptor*, %struct.SGDescriptor** %18, i64 %21
  %23 = load %struct.SGDescriptor*, %struct.SGDescriptor** %22, align 8
  store %struct.SGDescriptor* %23, %struct.SGDescriptor** %6, align 8
  %24 = load i32, i32* @HPSA_SG_CHAIN, align 4
  %25 = load %struct.SGDescriptor*, %struct.SGDescriptor** %5, align 8
  %26 = getelementptr inbounds %struct.SGDescriptor, %struct.SGDescriptor* %25, i32 0, i32 2
  store i32 %24, i32* %26, align 8
  %27 = load %struct.CommandList*, %struct.CommandList** %4, align 8
  %28 = getelementptr inbounds %struct.CommandList, %struct.CommandList* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = sext i32 %30 to i64
  %32 = load %struct.ctlr_info*, %struct.ctlr_info** %3, align 8
  %33 = getelementptr inbounds %struct.ctlr_info, %struct.ctlr_info* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = sub i64 %31, %34
  %36 = mul i64 32, %35
  %37 = trunc i64 %36 to i32
  %38 = load %struct.SGDescriptor*, %struct.SGDescriptor** %5, align 8
  %39 = getelementptr inbounds %struct.SGDescriptor, %struct.SGDescriptor* %38, i32 0, i32 0
  store i32 %37, i32* %39, align 8
  %40 = load %struct.ctlr_info*, %struct.ctlr_info** %3, align 8
  %41 = getelementptr inbounds %struct.ctlr_info, %struct.ctlr_info* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 8
  %43 = load %struct.SGDescriptor*, %struct.SGDescriptor** %6, align 8
  %44 = load %struct.SGDescriptor*, %struct.SGDescriptor** %5, align 8
  %45 = getelementptr inbounds %struct.SGDescriptor, %struct.SGDescriptor* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = load i32, i32* @PCI_DMA_TODEVICE, align 4
  %48 = call i32 @pci_map_single(i32 %42, %struct.SGDescriptor* %43, i32 %46, i32 %47)
  store i32 %48, i32* %7, align 4
  %49 = load i32, i32* %7, align 4
  %50 = sext i32 %49 to i64
  %51 = and i64 %50, 4294967295
  %52 = inttoptr i64 %51 to i8*
  %53 = load %struct.SGDescriptor*, %struct.SGDescriptor** %5, align 8
  %54 = getelementptr inbounds %struct.SGDescriptor, %struct.SGDescriptor* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 1
  store i8* %52, i8** %55, align 8
  %56 = load i32, i32* %7, align 4
  %57 = ashr i32 %56, 32
  %58 = sext i32 %57 to i64
  %59 = and i64 %58, 4294967295
  %60 = inttoptr i64 %59 to i8*
  %61 = load %struct.SGDescriptor*, %struct.SGDescriptor** %5, align 8
  %62 = getelementptr inbounds %struct.SGDescriptor, %struct.SGDescriptor* %61, i32 0, i32 1
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 0
  store i8* %60, i8** %63, align 8
  ret void
}

declare dso_local i32 @pci_map_single(i32, %struct.SGDescriptor*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
