; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/ata/extr_sata_promise.c_pdc_tf_load_mmio.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/ata/extr_sata_promise.c_pdc_tf_load_mmio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ata_port = type { i32 }
%struct.ata_taskfile = type { i64 }

@ATA_PROT_DMA = common dso_local global i64 0, align 8
@ATAPI_PROT_DMA = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ata_port*, %struct.ata_taskfile*)* @pdc_tf_load_mmio to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pdc_tf_load_mmio(%struct.ata_port* %0, %struct.ata_taskfile* %1) #0 {
  %3 = alloca %struct.ata_port*, align 8
  %4 = alloca %struct.ata_taskfile*, align 8
  store %struct.ata_port* %0, %struct.ata_port** %3, align 8
  store %struct.ata_taskfile* %1, %struct.ata_taskfile** %4, align 8
  %5 = load %struct.ata_taskfile*, %struct.ata_taskfile** %4, align 8
  %6 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = load i64, i64* @ATA_PROT_DMA, align 8
  %9 = icmp eq i64 %7, %8
  br i1 %9, label %16, label %10

10:                                               ; preds = %2
  %11 = load %struct.ata_taskfile*, %struct.ata_taskfile** %4, align 8
  %12 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @ATAPI_PROT_DMA, align 8
  %15 = icmp eq i64 %13, %14
  br label %16

16:                                               ; preds = %10, %2
  %17 = phi i1 [ true, %2 ], [ %15, %10 ]
  %18 = zext i1 %17 to i32
  %19 = call i32 @WARN_ON(i32 %18)
  %20 = load %struct.ata_port*, %struct.ata_port** %3, align 8
  %21 = load %struct.ata_taskfile*, %struct.ata_taskfile** %4, align 8
  %22 = call i32 @ata_sff_tf_load(%struct.ata_port* %20, %struct.ata_taskfile* %21)
  ret void
}

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @ata_sff_tf_load(%struct.ata_port*, %struct.ata_taskfile*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
