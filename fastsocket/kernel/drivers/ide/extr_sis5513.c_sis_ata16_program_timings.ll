; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/ide/extr_sis5513.c_sis_ata16_program_timings.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/ide/extr_sis5513.c_sis_ata16_program_timings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.pci_dev = type { i32 }

@__const.sis_ata16_program_timings.pio_timings = private unnamed_addr constant [5 x i32] [i32 0, i32 1543, i32 1028, i32 771, i32 769], align 16
@__const.sis_ata16_program_timings.mwdma_timings = private unnamed_addr constant [3 x i32] [i32 8, i32 770, i32 769], align 4
@XFER_MW_DMA_0 = common dso_local global i64 0, align 8
@chipset_family = common dso_local global i64 0, align 8
@ATA_16 = common dso_local global i64 0, align 8
@XFER_PIO_0 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_5__*, i64)* @sis_ata16_program_timings to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sis_ata16_program_timings(%struct.TYPE_5__* %0, i64 %1) #0 {
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.pci_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca [5 x i32], align 16
  %9 = alloca [3 x i32], align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %3, align 8
  store i64 %1, i64* %4, align 8
  %10 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 1
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call %struct.pci_dev* @to_pci_dev(i32 %14)
  store %struct.pci_dev* %15, %struct.pci_dev** %5, align 8
  store i32 0, i32* %6, align 4
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = mul nsw i32 %18, 2
  %20 = add nsw i32 64, %19
  %21 = sext i32 %20 to i64
  store i64 %21, i64* %7, align 8
  %22 = bitcast [5 x i32]* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %22, i8* align 16 bitcast ([5 x i32]* @__const.sis_ata16_program_timings.pio_timings to i8*), i64 20, i1 false)
  %23 = bitcast [3 x i32]* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %23, i8* align 4 bitcast ([3 x i32]* @__const.sis_ata16_program_timings.mwdma_timings to i8*), i64 12, i1 false)
  %24 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %25 = load i64, i64* %7, align 8
  %26 = call i32 @pci_read_config_word(%struct.pci_dev* %24, i64 %25, i32* %6)
  %27 = load i32, i32* %6, align 4
  %28 = and i32 %27, -1808
  store i32 %28, i32* %6, align 4
  %29 = load i64, i64* %4, align 8
  %30 = load i64, i64* @XFER_MW_DMA_0, align 8
  %31 = icmp sge i64 %29, %30
  br i1 %31, label %32, label %47

32:                                               ; preds = %2
  %33 = load i64, i64* @chipset_family, align 8
  %34 = load i64, i64* @ATA_16, align 8
  %35 = icmp sgt i64 %33, %34
  br i1 %35, label %36, label %39

36:                                               ; preds = %32
  %37 = load i32, i32* %6, align 4
  %38 = and i32 %37, -32769
  store i32 %38, i32* %6, align 4
  br label %39

39:                                               ; preds = %36, %32
  %40 = load i64, i64* %4, align 8
  %41 = load i64, i64* @XFER_MW_DMA_0, align 8
  %42 = sub nsw i64 %40, %41
  %43 = getelementptr inbounds [3 x i32], [3 x i32]* %9, i64 0, i64 %42
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* %6, align 4
  %46 = or i32 %45, %44
  store i32 %46, i32* %6, align 4
  br label %55

47:                                               ; preds = %2
  %48 = load i64, i64* %4, align 8
  %49 = load i64, i64* @XFER_PIO_0, align 8
  %50 = sub nsw i64 %48, %49
  %51 = getelementptr inbounds [5 x i32], [5 x i32]* %8, i64 0, i64 %50
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* %6, align 4
  %54 = or i32 %53, %52
  store i32 %54, i32* %6, align 4
  br label %55

55:                                               ; preds = %47, %39
  %56 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %57 = load i64, i64* %7, align 8
  %58 = load i32, i32* %6, align 4
  %59 = call i32 @pci_write_config_word(%struct.pci_dev* %56, i64 %57, i32 %58)
  ret void
}

declare dso_local %struct.pci_dev* @to_pci_dev(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @pci_read_config_word(%struct.pci_dev*, i64, i32*) #1

declare dso_local i32 @pci_write_config_word(%struct.pci_dev*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
