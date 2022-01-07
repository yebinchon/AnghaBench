; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-netx/extr_xc.c_free_xc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-netx/extr_xc.c_free_xc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xc = type { i32, i32 }

@xc_lock = common dso_local global i32 0, align 4
@SRAM_MEM_SIZE = common dso_local global i32 0, align 4
@XMAC_MEM_SIZE = common dso_local global i32 0, align 4
@XPEC_MEM_SIZE = common dso_local global i32 0, align 4
@xc_in_use = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @free_xc(%struct.xc* %0) #0 {
  %2 = alloca %struct.xc*, align 8
  %3 = alloca i32, align 4
  store %struct.xc* %0, %struct.xc** %2, align 8
  %4 = load %struct.xc*, %struct.xc** %2, align 8
  %5 = getelementptr inbounds %struct.xc, %struct.xc* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  store i32 %6, i32* %3, align 4
  %7 = call i32 @mutex_lock(i32* @xc_lock)
  %8 = load %struct.xc*, %struct.xc** %2, align 8
  %9 = getelementptr inbounds %struct.xc, %struct.xc* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @iounmap(i32 %10)
  %12 = load i32, i32* %3, align 4
  %13 = call i32 @SRAM_INTERNAL_PHYS(i32 %12)
  %14 = load i32, i32* @SRAM_MEM_SIZE, align 4
  %15 = call i32 @release_mem_region(i32 %13, i32 %14)
  %16 = load i32, i32* %3, align 4
  %17 = call i32 @NETX_PA_XMAC(i32 %16)
  %18 = load i32, i32* @XMAC_MEM_SIZE, align 4
  %19 = call i32 @release_mem_region(i32 %17, i32 %18)
  %20 = load i32, i32* %3, align 4
  %21 = call i32 @NETX_PA_XPEC(i32 %20)
  %22 = load i32, i32* @XPEC_MEM_SIZE, align 4
  %23 = call i32 @release_mem_region(i32 %21, i32 %22)
  %24 = load %struct.xc*, %struct.xc** %2, align 8
  %25 = getelementptr inbounds %struct.xc, %struct.xc* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = shl i32 1, %26
  %28 = xor i32 %27, -1
  %29 = load i32, i32* @xc_in_use, align 4
  %30 = and i32 %29, %28
  store i32 %30, i32* @xc_in_use, align 4
  %31 = load %struct.xc*, %struct.xc** %2, align 8
  %32 = call i32 @kfree(%struct.xc* %31)
  %33 = call i32 @mutex_unlock(i32* @xc_lock)
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @iounmap(i32) #1

declare dso_local i32 @release_mem_region(i32, i32) #1

declare dso_local i32 @SRAM_INTERNAL_PHYS(i32) #1

declare dso_local i32 @NETX_PA_XMAC(i32) #1

declare dso_local i32 @NETX_PA_XPEC(i32) #1

declare dso_local i32 @kfree(%struct.xc*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
