; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/nand/extr_ams-delta.c_ams_delta_read_byte.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/nand/extr_ams-delta.c_ams_delta_read_byte.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtd_info = type { %struct.nand_chip* }
%struct.nand_chip = type { i32 }

@AMS_DELTA_LATCH2_NAND_NRE = common dso_local global i32 0, align 4
@OMAP1_MPUIO_BASE = common dso_local global i64 0, align 8
@OMAP_MPUIO_IO_CNTL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mtd_info*)* @ams_delta_read_byte to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ams_delta_read_byte(%struct.mtd_info* %0) #0 {
  %2 = alloca %struct.mtd_info*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.nand_chip*, align 8
  store %struct.mtd_info* %0, %struct.mtd_info** %2, align 8
  %5 = load %struct.mtd_info*, %struct.mtd_info** %2, align 8
  %6 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %5, i32 0, i32 0
  %7 = load %struct.nand_chip*, %struct.nand_chip** %6, align 8
  store %struct.nand_chip* %7, %struct.nand_chip** %4, align 8
  %8 = load i32, i32* @AMS_DELTA_LATCH2_NAND_NRE, align 4
  %9 = call i32 @ams_delta_latch2_write(i32 %8, i32 0)
  %10 = call i32 @ndelay(i32 40)
  %11 = load i64, i64* @OMAP1_MPUIO_BASE, align 8
  %12 = load i64, i64* @OMAP_MPUIO_IO_CNTL, align 8
  %13 = add nsw i64 %11, %12
  %14 = call i32 @omap_writew(i32 -1, i64 %13)
  %15 = load %struct.nand_chip*, %struct.nand_chip** %4, align 8
  %16 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @omap_readw(i32 %17)
  store i32 %18, i32* %3, align 4
  %19 = load i32, i32* @AMS_DELTA_LATCH2_NAND_NRE, align 4
  %20 = load i32, i32* @AMS_DELTA_LATCH2_NAND_NRE, align 4
  %21 = call i32 @ams_delta_latch2_write(i32 %19, i32 %20)
  %22 = load i32, i32* %3, align 4
  ret i32 %22
}

declare dso_local i32 @ams_delta_latch2_write(i32, i32) #1

declare dso_local i32 @ndelay(i32) #1

declare dso_local i32 @omap_writew(i32, i64) #1

declare dso_local i32 @omap_readw(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
