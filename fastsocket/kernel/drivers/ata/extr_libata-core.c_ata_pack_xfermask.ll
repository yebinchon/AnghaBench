; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/ata/extr_libata-core.c_ata_pack_xfermask.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/ata/extr_libata-core.c_ata_pack_xfermask.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ATA_SHIFT_PIO = common dso_local global i64 0, align 8
@ATA_MASK_PIO = common dso_local global i64 0, align 8
@ATA_SHIFT_MWDMA = common dso_local global i64 0, align 8
@ATA_MASK_MWDMA = common dso_local global i64 0, align 8
@ATA_SHIFT_UDMA = common dso_local global i64 0, align 8
@ATA_MASK_UDMA = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @ata_pack_xfermask(i64 %0, i64 %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store i64 %0, i64* %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %7 = load i64, i64* %4, align 8
  %8 = load i64, i64* @ATA_SHIFT_PIO, align 8
  %9 = shl i64 %7, %8
  %10 = load i64, i64* @ATA_MASK_PIO, align 8
  %11 = and i64 %9, %10
  %12 = load i64, i64* %5, align 8
  %13 = load i64, i64* @ATA_SHIFT_MWDMA, align 8
  %14 = shl i64 %12, %13
  %15 = load i64, i64* @ATA_MASK_MWDMA, align 8
  %16 = and i64 %14, %15
  %17 = or i64 %11, %16
  %18 = load i64, i64* %6, align 8
  %19 = load i64, i64* @ATA_SHIFT_UDMA, align 8
  %20 = shl i64 %18, %19
  %21 = load i64, i64* @ATA_MASK_UDMA, align 8
  %22 = and i64 %20, %21
  %23 = or i64 %17, %22
  ret i64 %23
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
