; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/spi/extr_amba-pl022.c_load_ssp_default_config.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/spi/extr_amba-pl022.c_load_ssp_default_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pl022 = type { i32 }

@DEFAULT_SSP_REG_CR0 = common dso_local global i32 0, align 4
@DEFAULT_SSP_REG_CR1 = common dso_local global i32 0, align 4
@DEFAULT_SSP_REG_DMACR = common dso_local global i32 0, align 4
@DEFAULT_SSP_REG_CPSR = common dso_local global i32 0, align 4
@DISABLE_ALL_INTERRUPTS = common dso_local global i32 0, align 4
@CLEAR_ALL_INTERRUPTS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pl022*)* @load_ssp_default_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @load_ssp_default_config(%struct.pl022* %0) #0 {
  %2 = alloca %struct.pl022*, align 8
  store %struct.pl022* %0, %struct.pl022** %2, align 8
  %3 = load i32, i32* @DEFAULT_SSP_REG_CR0, align 4
  %4 = load %struct.pl022*, %struct.pl022** %2, align 8
  %5 = getelementptr inbounds %struct.pl022, %struct.pl022* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  %7 = call i32 @SSP_CR0(i32 %6)
  %8 = call i32 @writew(i32 %3, i32 %7)
  %9 = load i32, i32* @DEFAULT_SSP_REG_CR1, align 4
  %10 = load %struct.pl022*, %struct.pl022** %2, align 8
  %11 = getelementptr inbounds %struct.pl022, %struct.pl022* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @SSP_CR1(i32 %12)
  %14 = call i32 @writew(i32 %9, i32 %13)
  %15 = load i32, i32* @DEFAULT_SSP_REG_DMACR, align 4
  %16 = load %struct.pl022*, %struct.pl022** %2, align 8
  %17 = getelementptr inbounds %struct.pl022, %struct.pl022* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @SSP_DMACR(i32 %18)
  %20 = call i32 @writew(i32 %15, i32 %19)
  %21 = load i32, i32* @DEFAULT_SSP_REG_CPSR, align 4
  %22 = load %struct.pl022*, %struct.pl022** %2, align 8
  %23 = getelementptr inbounds %struct.pl022, %struct.pl022* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @SSP_CPSR(i32 %24)
  %26 = call i32 @writew(i32 %21, i32 %25)
  %27 = load i32, i32* @DISABLE_ALL_INTERRUPTS, align 4
  %28 = load %struct.pl022*, %struct.pl022** %2, align 8
  %29 = getelementptr inbounds %struct.pl022, %struct.pl022* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @SSP_IMSC(i32 %30)
  %32 = call i32 @writew(i32 %27, i32 %31)
  %33 = load i32, i32* @CLEAR_ALL_INTERRUPTS, align 4
  %34 = load %struct.pl022*, %struct.pl022** %2, align 8
  %35 = getelementptr inbounds %struct.pl022, %struct.pl022* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @SSP_ICR(i32 %36)
  %38 = call i32 @writew(i32 %33, i32 %37)
  ret void
}

declare dso_local i32 @writew(i32, i32) #1

declare dso_local i32 @SSP_CR0(i32) #1

declare dso_local i32 @SSP_CR1(i32) #1

declare dso_local i32 @SSP_DMACR(i32) #1

declare dso_local i32 @SSP_CPSR(i32) #1

declare dso_local i32 @SSP_IMSC(i32) #1

declare dso_local i32 @SSP_ICR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
