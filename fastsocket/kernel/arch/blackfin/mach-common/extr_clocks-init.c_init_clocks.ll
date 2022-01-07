; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/blackfin/mach-common/extr_clocks-init.c_init_clocks.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/blackfin/mach-common/extr_clocks-init.c_init_clocks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dma_register = type { i64 }

@MAX_DMA_CHANNELS = common dso_local global i64 0, align 8
@dma_io_base_addr = common dso_local global %struct.dma_register** null, align 8
@PLL_CTL = common dso_local global i32 0, align 4
@PLL_CTL_VAL = common dso_local global i32 0, align 4
@CONFIG_CCLK_ACT_DIV = common dso_local global i32 0, align 4
@CONFIG_SCLK_DIV = common dso_local global i32 0, align 4
@SRREQ = common dso_local global i32 0, align 4
@mem_DDRCTL0 = common dso_local global i32 0, align 4
@mem_DDRCTL1 = common dso_local global i32 0, align 4
@mem_DDRCTL2 = common dso_local global i32 0, align 4
@ANOMALY_05000435 = common dso_local global i64 0, align 8
@CLKBUFOE = common dso_local global i32 0, align 4
@CONFIG_MEM_EBIU_DDRQUE = common dso_local global i32 0, align 4
@IWR_DISABLE_ALL = common dso_local global i32 0, align 4
@SDGCTL_WIDTH = common dso_local global i32 0, align 4
@SRFS = common dso_local global i32 0, align 4
@VR_CTL = common dso_local global i32 0, align 4
@mem_SDGCTL = common dso_local global i32 0, align 4
@mem_SDRRC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @init_clocks() #0 {
  %1 = alloca i64, align 8
  %2 = alloca %struct.dma_register*, align 8
  store i64 0, i64* %1, align 8
  br label %3

3:                                                ; preds = %14, %0
  %4 = load i64, i64* %1, align 8
  %5 = load i64, i64* @MAX_DMA_CHANNELS, align 8
  %6 = icmp ult i64 %4, %5
  br i1 %6, label %7, label %17

7:                                                ; preds = %3
  %8 = load %struct.dma_register**, %struct.dma_register*** @dma_io_base_addr, align 8
  %9 = load i64, i64* %1, align 8
  %10 = getelementptr inbounds %struct.dma_register*, %struct.dma_register** %8, i64 %9
  %11 = load %struct.dma_register*, %struct.dma_register** %10, align 8
  store %struct.dma_register* %11, %struct.dma_register** %2, align 8
  %12 = load %struct.dma_register*, %struct.dma_register** %2, align 8
  %13 = getelementptr inbounds %struct.dma_register, %struct.dma_register* %12, i32 0, i32 0
  store i64 0, i64* %13, align 8
  br label %14

14:                                               ; preds = %7
  %15 = load i64, i64* %1, align 8
  %16 = add i64 %15, 1
  store i64 %16, i64* %1, align 8
  br label %3

17:                                               ; preds = %3
  %18 = call i32 (...) @do_sync()
  %19 = call i32 @IWR_ENABLE(i32 0)
  %20 = call i32 @bfin_write_SIC_IWR(i32 %19)
  %21 = call i32 (...) @do_sync()
  %22 = call i32 @bfin_write_PLL_LOCKCNT(i32 768)
  %23 = call i32 (...) @do_sync()
  %24 = load i32, i32* @PLL_CTL, align 4
  %25 = load i32, i32* @PLL_CTL_VAL, align 4
  %26 = call i32 @bfin_write16(i32 %24, i32 %25)
  call void asm sideeffect "IDLE;", "~{dirflag},~{fpsr},~{flags}"() #2, !srcloc !2
  %27 = load i32, i32* @CONFIG_CCLK_ACT_DIV, align 4
  %28 = load i32, i32* @CONFIG_SCLK_DIV, align 4
  %29 = or i32 %27, %28
  %30 = call i32 @bfin_write_PLL_DIV(i32 %29)
  %31 = call i32 (...) @bfin_read_EBIU_RSTCTL()
  %32 = load i32, i32* @SRREQ, align 4
  %33 = xor i32 %32, -1
  %34 = and i32 %31, %33
  %35 = call i32 @bfin_write_EBIU_RSTCTL(i32 %34)
  %36 = call i32 (...) @do_sync()
  %37 = call i32 (...) @bfin_read_EBIU_RSTCTL()
  %38 = or i32 %37, 1
  %39 = call i32 @bfin_write_EBIU_RSTCTL(i32 %38)
  %40 = load i32, i32* @mem_DDRCTL0, align 4
  %41 = call i32 @bfin_write_EBIU_DDRCTL0(i32 %40)
  %42 = load i32, i32* @mem_DDRCTL1, align 4
  %43 = call i32 @bfin_write_EBIU_DDRCTL1(i32 %42)
  %44 = load i32, i32* @mem_DDRCTL2, align 4
  %45 = call i32 @bfin_write_EBIU_DDRCTL2(i32 %44)
  %46 = call i32 (...) @do_sync()
  %47 = call i32 @bfin_read16(i32 0)
  ret void
}

declare dso_local i32 @do_sync(...) #1

declare dso_local i32 @bfin_write_SIC_IWR(i32) #1

declare dso_local i32 @IWR_ENABLE(i32) #1

declare dso_local i32 @bfin_write_PLL_LOCKCNT(i32) #1

declare dso_local i32 @bfin_write16(i32, i32) #1

declare dso_local i32 @bfin_write_PLL_DIV(i32) #1

declare dso_local i32 @bfin_write_EBIU_RSTCTL(i32) #1

declare dso_local i32 @bfin_read_EBIU_RSTCTL(...) #1

declare dso_local i32 @bfin_write_EBIU_DDRCTL0(i32) #1

declare dso_local i32 @bfin_write_EBIU_DDRCTL1(i32) #1

declare dso_local i32 @bfin_write_EBIU_DDRCTL2(i32) #1

declare dso_local i32 @bfin_read16(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
!2 = !{i32 1577}
