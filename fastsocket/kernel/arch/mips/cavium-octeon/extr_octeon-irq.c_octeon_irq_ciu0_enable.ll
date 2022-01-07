; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/mips/cavium-octeon/extr_octeon-irq.c_octeon_irq_ciu0_enable.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/mips/cavium-octeon/extr_octeon-irq.c_octeon_irq_ciu0_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@OCTEON_IRQ_WORKQ0 = common dso_local global i32 0, align 4
@octeon_irq_ciu0_rwlock = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @octeon_irq_ciu0_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @octeon_irq_ciu0_enable(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %7 = call i32 (...) @cvmx_get_core_num()
  store i32 %7, i32* %3, align 4
  %8 = load i32, i32* %2, align 4
  %9 = load i32, i32* @OCTEON_IRQ_WORKQ0, align 4
  %10 = sub i32 %8, %9
  store i32 %10, i32* %6, align 4
  %11 = load i64, i64* %4, align 8
  %12 = call i32 @read_lock_irqsave(i32* @octeon_irq_ciu0_rwlock, i64 %11)
  %13 = load i32, i32* %3, align 4
  %14 = mul nsw i32 %13, 2
  %15 = call i32 @CVMX_CIU_INTX_EN0(i32 %14)
  %16 = call i64 @cvmx_read_csr(i32 %15)
  store i64 %16, i64* %5, align 8
  %17 = load i32, i32* %6, align 4
  %18 = zext i32 %17 to i64
  %19 = shl i64 1, %18
  %20 = load i64, i64* %5, align 8
  %21 = or i64 %20, %19
  store i64 %21, i64* %5, align 8
  %22 = load i32, i32* %3, align 4
  %23 = mul nsw i32 %22, 2
  %24 = call i32 @CVMX_CIU_INTX_EN0(i32 %23)
  %25 = load i64, i64* %5, align 8
  %26 = call i32 @cvmx_write_csr(i32 %24, i64 %25)
  %27 = load i32, i32* %3, align 4
  %28 = mul nsw i32 %27, 2
  %29 = call i32 @CVMX_CIU_INTX_EN0(i32 %28)
  %30 = call i64 @cvmx_read_csr(i32 %29)
  %31 = load i64, i64* %4, align 8
  %32 = call i32 @read_unlock_irqrestore(i32* @octeon_irq_ciu0_rwlock, i64 %31)
  ret void
}

declare dso_local i32 @cvmx_get_core_num(...) #1

declare dso_local i32 @read_lock_irqsave(i32*, i64) #1

declare dso_local i64 @cvmx_read_csr(i32) #1

declare dso_local i32 @CVMX_CIU_INTX_EN0(i32) #1

declare dso_local i32 @cvmx_write_csr(i32, i64) #1

declare dso_local i32 @read_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
