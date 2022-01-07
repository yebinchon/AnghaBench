; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mmc/host/extr_imxmmc.c_imxmci_irq.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mmc/host/extr_imxmmc.c_imxmci_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.imxmci_host = type { i32, i32, i32, i32, i32, i64 }

@MMC_REG_STATUS = common dso_local global i64 0, align 8
@INT_MASK_SDIO = common dso_local global i32 0, align 4
@INT_MASK_AUTO_CARD_DETECT = common dso_local global i32 0, align 4
@MMC_REG_INT_MASK = common dso_local global i64 0, align 8
@IMXMCI_PEND_IRQ_b = common dso_local global i32 0, align 4
@IMXMCI_PEND_STARTED_b = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @imxmci_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @imxmci_irq(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.imxmci_host*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = bitcast i8* %8 to %struct.imxmci_host*
  store %struct.imxmci_host* %9, %struct.imxmci_host** %5, align 8
  %10 = load %struct.imxmci_host*, %struct.imxmci_host** %5, align 8
  %11 = getelementptr inbounds %struct.imxmci_host, %struct.imxmci_host* %10, i32 0, i32 5
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @MMC_REG_STATUS, align 8
  %14 = add nsw i64 %12, %13
  %15 = call i32 @readw(i64 %14)
  store i32 %15, i32* %6, align 4
  store i32 1, i32* %7, align 4
  %16 = load %struct.imxmci_host*, %struct.imxmci_host** %5, align 8
  %17 = getelementptr inbounds %struct.imxmci_host, %struct.imxmci_host* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = load i32, i32* @INT_MASK_SDIO, align 4
  %20 = or i32 %18, %19
  %21 = load i32, i32* @INT_MASK_AUTO_CARD_DETECT, align 4
  %22 = or i32 %20, %21
  %23 = load %struct.imxmci_host*, %struct.imxmci_host** %5, align 8
  %24 = getelementptr inbounds %struct.imxmci_host, %struct.imxmci_host* %23, i32 0, i32 5
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @MMC_REG_INT_MASK, align 8
  %27 = add nsw i64 %25, %26
  %28 = call i32 @writew(i32 %22, i64 %27)
  %29 = load %struct.imxmci_host*, %struct.imxmci_host** %5, align 8
  %30 = getelementptr inbounds %struct.imxmci_host, %struct.imxmci_host* %29, i32 0, i32 4
  %31 = call i32 @atomic_set(i32* %30, i32 0)
  %32 = load i32, i32* %6, align 4
  %33 = load %struct.imxmci_host*, %struct.imxmci_host** %5, align 8
  %34 = getelementptr inbounds %struct.imxmci_host, %struct.imxmci_host* %33, i32 0, i32 3
  store i32 %32, i32* %34, align 4
  %35 = load i32, i32* @IMXMCI_PEND_IRQ_b, align 4
  %36 = load %struct.imxmci_host*, %struct.imxmci_host** %5, align 8
  %37 = getelementptr inbounds %struct.imxmci_host, %struct.imxmci_host* %36, i32 0, i32 2
  %38 = call i32 @set_bit(i32 %35, i32* %37)
  %39 = load i32, i32* @IMXMCI_PEND_STARTED_b, align 4
  %40 = load %struct.imxmci_host*, %struct.imxmci_host** %5, align 8
  %41 = getelementptr inbounds %struct.imxmci_host, %struct.imxmci_host* %40, i32 0, i32 2
  %42 = call i32 @set_bit(i32 %39, i32* %41)
  %43 = load %struct.imxmci_host*, %struct.imxmci_host** %5, align 8
  %44 = getelementptr inbounds %struct.imxmci_host, %struct.imxmci_host* %43, i32 0, i32 1
  %45 = call i32 @tasklet_schedule(i32* %44)
  %46 = load i32, i32* %7, align 4
  %47 = call i32 @IRQ_RETVAL(i32 %46)
  ret i32 %47
}

declare dso_local i32 @readw(i64) #1

declare dso_local i32 @writew(i32, i64) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @tasklet_schedule(i32*) #1

declare dso_local i32 @IRQ_RETVAL(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
