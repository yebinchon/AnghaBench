; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_niu.c_niu_init_one_rx_channel.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_niu.c_niu_init_one_rx_channel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.niu = type { i32 }
%struct.rx_ring_info = type { i32, i32, i32, i32, i32, i64, i64, i64, i64 }

@RX_DMA_ENT_MSK_RBR_EMPTY = common dso_local global i32 0, align 4
@RX_DMA_CTL_STAT_MEX = common dso_local global i32 0, align 4
@RX_DMA_CTL_STAT_RCRTHRES = common dso_local global i32 0, align 4
@RX_DMA_CTL_STAT_RCRTO = common dso_local global i32 0, align 4
@RX_DMA_CTL_STAT_RBR_EMPTY = common dso_local global i32 0, align 4
@RBR_CFIG_A_LEN_SHIFT = common dso_local global i32 0, align 4
@RBR_CFIG_A_STADDR_BASE = common dso_local global i32 0, align 4
@RBR_CFIG_A_STADDR = common dso_local global i32 0, align 4
@RCRCFIG_A_LEN_SHIFT = common dso_local global i32 0, align 4
@RCRCFIG_A_STADDR_BASE = common dso_local global i32 0, align 4
@RCRCFIG_A_STADDR = common dso_local global i32 0, align 4
@RCRCFIG_B_PTHRES_SHIFT = common dso_local global i32 0, align 4
@RCRCFIG_B_ENTOUT = common dso_local global i32 0, align 4
@RCRCFIG_B_TIMEOUT_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.niu*, %struct.rx_ring_info*)* @niu_init_one_rx_channel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @niu_init_one_rx_channel(%struct.niu* %0, %struct.rx_ring_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.niu*, align 8
  %5 = alloca %struct.rx_ring_info*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.niu* %0, %struct.niu** %4, align 8
  store %struct.rx_ring_info* %1, %struct.rx_ring_info** %5, align 8
  %9 = load %struct.rx_ring_info*, %struct.rx_ring_info** %5, align 8
  %10 = getelementptr inbounds %struct.rx_ring_info, %struct.rx_ring_info* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  store i32 %11, i32* %7, align 4
  %12 = load %struct.niu*, %struct.niu** %4, align 8
  %13 = load i32, i32* %7, align 4
  %14 = call i32 @niu_rx_channel_reset(%struct.niu* %12, i32 %13)
  store i32 %14, i32* %6, align 4
  %15 = load i32, i32* %6, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %2
  %18 = load i32, i32* %6, align 4
  store i32 %18, i32* %3, align 4
  br label %146

19:                                               ; preds = %2
  %20 = load %struct.niu*, %struct.niu** %4, align 8
  %21 = load i32, i32* %7, align 4
  %22 = call i32 @niu_rx_channel_lpage_init(%struct.niu* %20, i32 %21)
  store i32 %22, i32* %6, align 4
  %23 = load i32, i32* %6, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %19
  %26 = load i32, i32* %6, align 4
  store i32 %26, i32* %3, align 4
  br label %146

27:                                               ; preds = %19
  %28 = load %struct.niu*, %struct.niu** %4, align 8
  %29 = load %struct.rx_ring_info*, %struct.rx_ring_info** %5, align 8
  %30 = call i32 @niu_rx_channel_wred_init(%struct.niu* %28, %struct.rx_ring_info* %29)
  %31 = load i32, i32* %7, align 4
  %32 = call i32 @RX_DMA_ENT_MSK(i32 %31)
  %33 = load i32, i32* @RX_DMA_ENT_MSK_RBR_EMPTY, align 4
  %34 = call i32 @nw64(i32 %32, i32 %33)
  %35 = load i32, i32* %7, align 4
  %36 = call i32 @RX_DMA_CTL_STAT(i32 %35)
  %37 = load i32, i32* @RX_DMA_CTL_STAT_MEX, align 4
  %38 = load i32, i32* @RX_DMA_CTL_STAT_RCRTHRES, align 4
  %39 = or i32 %37, %38
  %40 = load i32, i32* @RX_DMA_CTL_STAT_RCRTO, align 4
  %41 = or i32 %39, %40
  %42 = load i32, i32* @RX_DMA_CTL_STAT_RBR_EMPTY, align 4
  %43 = or i32 %41, %42
  %44 = call i32 @nw64(i32 %36, i32 %43)
  %45 = load i32, i32* %7, align 4
  %46 = call i32 @RXDMA_CFIG1(i32 %45)
  %47 = load %struct.rx_ring_info*, %struct.rx_ring_info** %5, align 8
  %48 = getelementptr inbounds %struct.rx_ring_info, %struct.rx_ring_info* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = ashr i32 %49, 32
  %51 = call i32 @nw64(i32 %46, i32 %50)
  %52 = load i32, i32* %7, align 4
  %53 = call i32 @RXDMA_CFIG2(i32 %52)
  %54 = load %struct.rx_ring_info*, %struct.rx_ring_info** %5, align 8
  %55 = getelementptr inbounds %struct.rx_ring_info, %struct.rx_ring_info* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = and i32 %56, -64
  %58 = call i32 @nw64(i32 %53, i32 %57)
  %59 = load i32, i32* %7, align 4
  %60 = call i32 @RBR_CFIG_A(i32 %59)
  %61 = load %struct.rx_ring_info*, %struct.rx_ring_info** %5, align 8
  %62 = getelementptr inbounds %struct.rx_ring_info, %struct.rx_ring_info* %61, i32 0, i32 8
  %63 = load i64, i64* %62, align 8
  %64 = trunc i64 %63 to i32
  %65 = load i32, i32* @RBR_CFIG_A_LEN_SHIFT, align 4
  %66 = shl i32 %64, %65
  %67 = load %struct.rx_ring_info*, %struct.rx_ring_info** %5, align 8
  %68 = getelementptr inbounds %struct.rx_ring_info, %struct.rx_ring_info* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 8
  %70 = load i32, i32* @RBR_CFIG_A_STADDR_BASE, align 4
  %71 = load i32, i32* @RBR_CFIG_A_STADDR, align 4
  %72 = or i32 %70, %71
  %73 = and i32 %69, %72
  %74 = or i32 %66, %73
  %75 = call i32 @nw64(i32 %60, i32 %74)
  %76 = load %struct.rx_ring_info*, %struct.rx_ring_info** %5, align 8
  %77 = call i32 @niu_compute_rbr_cfig_b(%struct.rx_ring_info* %76, i32* %8)
  store i32 %77, i32* %6, align 4
  %78 = load i32, i32* %6, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %82

80:                                               ; preds = %27
  %81 = load i32, i32* %6, align 4
  store i32 %81, i32* %3, align 4
  br label %146

82:                                               ; preds = %27
  %83 = load i32, i32* %7, align 4
  %84 = call i32 @RBR_CFIG_B(i32 %83)
  %85 = load i32, i32* %8, align 4
  %86 = call i32 @nw64(i32 %84, i32 %85)
  %87 = load i32, i32* %7, align 4
  %88 = call i32 @RCRCFIG_A(i32 %87)
  %89 = load %struct.rx_ring_info*, %struct.rx_ring_info** %5, align 8
  %90 = getelementptr inbounds %struct.rx_ring_info, %struct.rx_ring_info* %89, i32 0, i32 7
  %91 = load i64, i64* %90, align 8
  %92 = trunc i64 %91 to i32
  %93 = load i32, i32* @RCRCFIG_A_LEN_SHIFT, align 4
  %94 = shl i32 %92, %93
  %95 = load %struct.rx_ring_info*, %struct.rx_ring_info** %5, align 8
  %96 = getelementptr inbounds %struct.rx_ring_info, %struct.rx_ring_info* %95, i32 0, i32 3
  %97 = load i32, i32* %96, align 4
  %98 = load i32, i32* @RCRCFIG_A_STADDR_BASE, align 4
  %99 = load i32, i32* @RCRCFIG_A_STADDR, align 4
  %100 = or i32 %98, %99
  %101 = and i32 %97, %100
  %102 = or i32 %94, %101
  %103 = call i32 @nw64(i32 %88, i32 %102)
  %104 = load i32, i32* %7, align 4
  %105 = call i32 @RCRCFIG_B(i32 %104)
  %106 = load %struct.rx_ring_info*, %struct.rx_ring_info** %5, align 8
  %107 = getelementptr inbounds %struct.rx_ring_info, %struct.rx_ring_info* %106, i32 0, i32 6
  %108 = load i64, i64* %107, align 8
  %109 = trunc i64 %108 to i32
  %110 = load i32, i32* @RCRCFIG_B_PTHRES_SHIFT, align 4
  %111 = shl i32 %109, %110
  %112 = load i32, i32* @RCRCFIG_B_ENTOUT, align 4
  %113 = or i32 %111, %112
  %114 = load %struct.rx_ring_info*, %struct.rx_ring_info** %5, align 8
  %115 = getelementptr inbounds %struct.rx_ring_info, %struct.rx_ring_info* %114, i32 0, i32 5
  %116 = load i64, i64* %115, align 8
  %117 = trunc i64 %116 to i32
  %118 = load i32, i32* @RCRCFIG_B_TIMEOUT_SHIFT, align 4
  %119 = shl i32 %117, %118
  %120 = or i32 %113, %119
  %121 = call i32 @nw64(i32 %105, i32 %120)
  %122 = load %struct.niu*, %struct.niu** %4, align 8
  %123 = load i32, i32* %7, align 4
  %124 = call i32 @niu_enable_rx_channel(%struct.niu* %122, i32 %123, i32 1)
  store i32 %124, i32* %6, align 4
  %125 = load i32, i32* %6, align 4
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %129

127:                                              ; preds = %82
  %128 = load i32, i32* %6, align 4
  store i32 %128, i32* %3, align 4
  br label %146

129:                                              ; preds = %82
  %130 = load i32, i32* %7, align 4
  %131 = call i32 @RBR_KICK(i32 %130)
  %132 = load %struct.rx_ring_info*, %struct.rx_ring_info** %5, align 8
  %133 = getelementptr inbounds %struct.rx_ring_info, %struct.rx_ring_info* %132, i32 0, i32 4
  %134 = load i32, i32* %133, align 8
  %135 = call i32 @nw64(i32 %131, i32 %134)
  %136 = load i32, i32* %7, align 4
  %137 = call i32 @RX_DMA_CTL_STAT(i32 %136)
  %138 = call i32 @nr64(i32 %137)
  store i32 %138, i32* %8, align 4
  %139 = load i32, i32* @RX_DMA_CTL_STAT_RBR_EMPTY, align 4
  %140 = load i32, i32* %8, align 4
  %141 = or i32 %140, %139
  store i32 %141, i32* %8, align 4
  %142 = load i32, i32* %7, align 4
  %143 = call i32 @RX_DMA_CTL_STAT(i32 %142)
  %144 = load i32, i32* %8, align 4
  %145 = call i32 @nw64(i32 %143, i32 %144)
  store i32 0, i32* %3, align 4
  br label %146

146:                                              ; preds = %129, %127, %80, %25, %17
  %147 = load i32, i32* %3, align 4
  ret i32 %147
}

declare dso_local i32 @niu_rx_channel_reset(%struct.niu*, i32) #1

declare dso_local i32 @niu_rx_channel_lpage_init(%struct.niu*, i32) #1

declare dso_local i32 @niu_rx_channel_wred_init(%struct.niu*, %struct.rx_ring_info*) #1

declare dso_local i32 @nw64(i32, i32) #1

declare dso_local i32 @RX_DMA_ENT_MSK(i32) #1

declare dso_local i32 @RX_DMA_CTL_STAT(i32) #1

declare dso_local i32 @RXDMA_CFIG1(i32) #1

declare dso_local i32 @RXDMA_CFIG2(i32) #1

declare dso_local i32 @RBR_CFIG_A(i32) #1

declare dso_local i32 @niu_compute_rbr_cfig_b(%struct.rx_ring_info*, i32*) #1

declare dso_local i32 @RBR_CFIG_B(i32) #1

declare dso_local i32 @RCRCFIG_A(i32) #1

declare dso_local i32 @RCRCFIG_B(i32) #1

declare dso_local i32 @niu_enable_rx_channel(%struct.niu*, i32, i32) #1

declare dso_local i32 @RBR_KICK(i32) #1

declare dso_local i32 @nr64(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
