; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/spi/extr_amba-pl022.c_restore_state.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/spi/extr_amba-pl022.c_restore_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pl022 = type { i32, %struct.chip_data* }
%struct.chip_data = type { i32, i32, i32, i32 }

@DISABLE_ALL_INTERRUPTS = common dso_local global i32 0, align 4
@CLEAR_ALL_INTERRUPTS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pl022*)* @restore_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @restore_state(%struct.pl022* %0) #0 {
  %2 = alloca %struct.pl022*, align 8
  %3 = alloca %struct.chip_data*, align 8
  store %struct.pl022* %0, %struct.pl022** %2, align 8
  %4 = load %struct.pl022*, %struct.pl022** %2, align 8
  %5 = getelementptr inbounds %struct.pl022, %struct.pl022* %4, i32 0, i32 1
  %6 = load %struct.chip_data*, %struct.chip_data** %5, align 8
  store %struct.chip_data* %6, %struct.chip_data** %3, align 8
  %7 = load %struct.chip_data*, %struct.chip_data** %3, align 8
  %8 = getelementptr inbounds %struct.chip_data, %struct.chip_data* %7, i32 0, i32 3
  %9 = load i32, i32* %8, align 4
  %10 = load %struct.pl022*, %struct.pl022** %2, align 8
  %11 = getelementptr inbounds %struct.pl022, %struct.pl022* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = call i32 @SSP_CR0(i32 %12)
  %14 = call i32 @writew(i32 %9, i32 %13)
  %15 = load %struct.chip_data*, %struct.chip_data** %3, align 8
  %16 = getelementptr inbounds %struct.chip_data, %struct.chip_data* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.pl022*, %struct.pl022** %2, align 8
  %19 = getelementptr inbounds %struct.pl022, %struct.pl022* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = call i32 @SSP_CR1(i32 %20)
  %22 = call i32 @writew(i32 %17, i32 %21)
  %23 = load %struct.chip_data*, %struct.chip_data** %3, align 8
  %24 = getelementptr inbounds %struct.chip_data, %struct.chip_data* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.pl022*, %struct.pl022** %2, align 8
  %27 = getelementptr inbounds %struct.pl022, %struct.pl022* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = call i32 @SSP_DMACR(i32 %28)
  %30 = call i32 @writew(i32 %25, i32 %29)
  %31 = load %struct.chip_data*, %struct.chip_data** %3, align 8
  %32 = getelementptr inbounds %struct.chip_data, %struct.chip_data* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.pl022*, %struct.pl022** %2, align 8
  %35 = getelementptr inbounds %struct.pl022, %struct.pl022* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = call i32 @SSP_CPSR(i32 %36)
  %38 = call i32 @writew(i32 %33, i32 %37)
  %39 = load i32, i32* @DISABLE_ALL_INTERRUPTS, align 4
  %40 = load %struct.pl022*, %struct.pl022** %2, align 8
  %41 = getelementptr inbounds %struct.pl022, %struct.pl022* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = call i32 @SSP_IMSC(i32 %42)
  %44 = call i32 @writew(i32 %39, i32 %43)
  %45 = load i32, i32* @CLEAR_ALL_INTERRUPTS, align 4
  %46 = load %struct.pl022*, %struct.pl022** %2, align 8
  %47 = getelementptr inbounds %struct.pl022, %struct.pl022* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = call i32 @SSP_ICR(i32 %48)
  %50 = call i32 @writew(i32 %45, i32 %49)
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
