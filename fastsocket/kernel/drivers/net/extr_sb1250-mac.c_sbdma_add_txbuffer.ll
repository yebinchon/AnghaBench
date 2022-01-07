; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_sb1250-mac.c_sbdma_add_txbuffer.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_sb1250-mac.c_sbdma_add_txbuffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sbmacdma = type { i32, %struct.sbdmadscr*, %struct.sbdmadscr*, %struct.sk_buff**, %struct.sbdmadscr* }
%struct.sbdmadscr = type { i32, i32 }
%struct.sk_buff = type { i32, i32 }

@sbdma_addptr = common dso_local global i32 0, align 4
@ENOSPC = common dso_local global i32 0, align 4
@SMP_CACHE_BYTES = common dso_local global i32 0, align 4
@M_DMA_DSCRA_INTERRUPT = common dso_local global i32 0, align 4
@M_DMA_ETHTX_SOP = common dso_local global i32 0, align 4
@K_DMA_ETHTX_APPENDCRC_APPENDPAD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sbmacdma*, %struct.sk_buff*)* @sbdma_add_txbuffer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sbdma_add_txbuffer(%struct.sbmacdma* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sbmacdma*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.sbdmadscr*, align 8
  %7 = alloca %struct.sbdmadscr*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.sbmacdma* %0, %struct.sbmacdma** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  %11 = load %struct.sbmacdma*, %struct.sbmacdma** %4, align 8
  %12 = getelementptr inbounds %struct.sbmacdma, %struct.sbmacdma* %11, i32 0, i32 1
  %13 = load %struct.sbdmadscr*, %struct.sbdmadscr** %12, align 8
  store %struct.sbdmadscr* %13, %struct.sbdmadscr** %6, align 8
  %14 = load %struct.sbmacdma*, %struct.sbmacdma** %4, align 8
  %15 = load i32, i32* @sbdma_addptr, align 4
  %16 = call %struct.sbdmadscr* @SBDMA_NEXTBUF(%struct.sbmacdma* %14, i32 %15)
  store %struct.sbdmadscr* %16, %struct.sbdmadscr** %7, align 8
  %17 = load %struct.sbdmadscr*, %struct.sbdmadscr** %7, align 8
  %18 = load %struct.sbmacdma*, %struct.sbmacdma** %4, align 8
  %19 = getelementptr inbounds %struct.sbmacdma, %struct.sbmacdma* %18, i32 0, i32 4
  %20 = load %struct.sbdmadscr*, %struct.sbdmadscr** %19, align 8
  %21 = icmp eq %struct.sbdmadscr* %17, %20
  br i1 %21, label %22, label %25

22:                                               ; preds = %2
  %23 = load i32, i32* @ENOSPC, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %3, align 4
  br label %77

25:                                               ; preds = %2
  %26 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %27 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  store i32 %28, i32* %10, align 4
  %29 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %30 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @virt_to_phys(i32 %31)
  store i32 %32, i32* %8, align 4
  %33 = load i32, i32* %10, align 4
  %34 = load i32, i32* %8, align 4
  %35 = load i32, i32* @SMP_CACHE_BYTES, align 4
  %36 = sub nsw i32 %35, 1
  %37 = and i32 %34, %36
  %38 = add nsw i32 %33, %37
  %39 = call i32 @NUMCACHEBLKS(i32 %38)
  store i32 %39, i32* %9, align 4
  %40 = load i32, i32* %8, align 4
  %41 = load i32, i32* %9, align 4
  %42 = call i32 @V_DMA_DSCRA_A_SIZE(i32 %41)
  %43 = or i32 %40, %42
  %44 = load i32, i32* @M_DMA_DSCRA_INTERRUPT, align 4
  %45 = or i32 %43, %44
  %46 = load i32, i32* @M_DMA_ETHTX_SOP, align 4
  %47 = or i32 %45, %46
  %48 = load %struct.sbdmadscr*, %struct.sbdmadscr** %6, align 8
  %49 = getelementptr inbounds %struct.sbdmadscr, %struct.sbdmadscr* %48, i32 0, i32 0
  store i32 %47, i32* %49, align 4
  %50 = load i32, i32* @K_DMA_ETHTX_APPENDCRC_APPENDPAD, align 4
  %51 = call i32 @V_DMA_DSCRB_OPTIONS(i32 %50)
  %52 = load i32, i32* %10, align 4
  %53 = call i32 @V_DMA_DSCRB_PKT_SIZE(i32 %52)
  %54 = or i32 %51, %53
  %55 = load %struct.sbdmadscr*, %struct.sbdmadscr** %6, align 8
  %56 = getelementptr inbounds %struct.sbdmadscr, %struct.sbdmadscr* %55, i32 0, i32 1
  store i32 %54, i32* %56, align 4
  %57 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %58 = load %struct.sbmacdma*, %struct.sbmacdma** %4, align 8
  %59 = getelementptr inbounds %struct.sbmacdma, %struct.sbmacdma* %58, i32 0, i32 3
  %60 = load %struct.sk_buff**, %struct.sk_buff*** %59, align 8
  %61 = load %struct.sbdmadscr*, %struct.sbdmadscr** %6, align 8
  %62 = load %struct.sbmacdma*, %struct.sbmacdma** %4, align 8
  %63 = getelementptr inbounds %struct.sbmacdma, %struct.sbmacdma* %62, i32 0, i32 2
  %64 = load %struct.sbdmadscr*, %struct.sbdmadscr** %63, align 8
  %65 = ptrtoint %struct.sbdmadscr* %61 to i64
  %66 = ptrtoint %struct.sbdmadscr* %64 to i64
  %67 = sub i64 %65, %66
  %68 = sdiv exact i64 %67, 8
  %69 = getelementptr inbounds %struct.sk_buff*, %struct.sk_buff** %60, i64 %68
  store %struct.sk_buff* %57, %struct.sk_buff** %69, align 8
  %70 = load %struct.sbdmadscr*, %struct.sbdmadscr** %7, align 8
  %71 = load %struct.sbmacdma*, %struct.sbmacdma** %4, align 8
  %72 = getelementptr inbounds %struct.sbmacdma, %struct.sbmacdma* %71, i32 0, i32 1
  store %struct.sbdmadscr* %70, %struct.sbdmadscr** %72, align 8
  %73 = load %struct.sbmacdma*, %struct.sbmacdma** %4, align 8
  %74 = getelementptr inbounds %struct.sbmacdma, %struct.sbmacdma* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = call i32 @__raw_writeq(i32 1, i32 %75)
  store i32 0, i32* %3, align 4
  br label %77

77:                                               ; preds = %25, %22
  %78 = load i32, i32* %3, align 4
  ret i32 %78
}

declare dso_local %struct.sbdmadscr* @SBDMA_NEXTBUF(%struct.sbmacdma*, i32) #1

declare dso_local i32 @virt_to_phys(i32) #1

declare dso_local i32 @NUMCACHEBLKS(i32) #1

declare dso_local i32 @V_DMA_DSCRA_A_SIZE(i32) #1

declare dso_local i32 @V_DMA_DSCRB_OPTIONS(i32) #1

declare dso_local i32 @V_DMA_DSCRB_PKT_SIZE(i32) #1

declare dso_local i32 @__raw_writeq(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
