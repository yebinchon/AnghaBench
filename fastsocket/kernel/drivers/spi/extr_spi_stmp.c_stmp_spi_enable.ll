; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/spi/extr_spi_stmp.c_stmp_spi_enable.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/spi/extr_spi_stmp.c_stmp_spi_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stmp_spi = type { i64 }

@BM_SSP_CTRL0_LOCK_CS = common dso_local global i32 0, align 4
@HW_SSP_CTRL0 = common dso_local global i64 0, align 8
@BM_SSP_CTRL0_IGNORE_CRC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.stmp_spi*)* @stmp_spi_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @stmp_spi_enable(%struct.stmp_spi* %0) #0 {
  %2 = alloca %struct.stmp_spi*, align 8
  store %struct.stmp_spi* %0, %struct.stmp_spi** %2, align 8
  %3 = load i32, i32* @BM_SSP_CTRL0_LOCK_CS, align 4
  %4 = load %struct.stmp_spi*, %struct.stmp_spi** %2, align 8
  %5 = getelementptr inbounds %struct.stmp_spi, %struct.stmp_spi* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = load i64, i64* @HW_SSP_CTRL0, align 8
  %8 = add nsw i64 %6, %7
  %9 = call i32 @stmp3xxx_setl(i32 %3, i64 %8)
  %10 = load i32, i32* @BM_SSP_CTRL0_IGNORE_CRC, align 4
  %11 = load %struct.stmp_spi*, %struct.stmp_spi** %2, align 8
  %12 = getelementptr inbounds %struct.stmp_spi, %struct.stmp_spi* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @HW_SSP_CTRL0, align 8
  %15 = add nsw i64 %13, %14
  %16 = call i32 @stmp3xxx_clearl(i32 %10, i64 %15)
  ret void
}

declare dso_local i32 @stmp3xxx_setl(i32, i64) #1

declare dso_local i32 @stmp3xxx_clearl(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
