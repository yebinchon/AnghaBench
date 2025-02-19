; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mmc/host/extr_tmio_mmc.h_tmio_mmc_kunmap_atomic.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mmc/host/extr_tmio_mmc.h_tmio_mmc_kunmap_atomic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tmio_mmc_host = type { i32 }

@KM_BIO_SRC_IRQ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tmio_mmc_host*, i64*)* @tmio_mmc_kunmap_atomic to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tmio_mmc_kunmap_atomic(%struct.tmio_mmc_host* %0, i64* %1) #0 {
  %3 = alloca %struct.tmio_mmc_host*, align 8
  %4 = alloca i64*, align 8
  store %struct.tmio_mmc_host* %0, %struct.tmio_mmc_host** %3, align 8
  store i64* %1, i64** %4, align 8
  %5 = load %struct.tmio_mmc_host*, %struct.tmio_mmc_host** %3, align 8
  %6 = getelementptr inbounds %struct.tmio_mmc_host, %struct.tmio_mmc_host* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = call i32 @sg_page(i32 %7)
  %9 = load i32, i32* @KM_BIO_SRC_IRQ, align 4
  %10 = call i32 @kunmap_atomic(i32 %8, i32 %9)
  %11 = load i64*, i64** %4, align 8
  %12 = load i64, i64* %11, align 8
  %13 = call i32 @local_irq_restore(i64 %12)
  ret void
}

declare dso_local i32 @kunmap_atomic(i32, i32) #1

declare dso_local i32 @sg_page(i32) #1

declare dso_local i32 @local_irq_restore(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
