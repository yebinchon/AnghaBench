; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_cnic.c_cnic_init_bnx2_rx_ring.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_cnic.c_cnic_init_bnx2_rx_ring.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cnic_dev = type { %struct.cnic_local* }
%struct.cnic_local = type { i32, i64*, i64, i32, i32, %struct.TYPE_2__, %struct.cnic_uio_dev*, %struct.cnic_eth_dev* }
%struct.TYPE_2__ = type { %struct.status_block_msix*, %struct.status_block* }
%struct.status_block_msix = type { i64 }
%struct.status_block = type { i64 }
%struct.cnic_uio_dev = type { i32, i32, %struct.bnx2_rx_bd* }
%struct.bnx2_rx_bd = type { i32, i32, i32, i32 }
%struct.cnic_eth_dev = type { i32 }

@BNX2_HC_COMMAND = common dso_local global i32 0, align 4
@CNIC_DRV_STATE_USING_MSIX = common dso_local global i32 0, align 4
@BNX2_HC_COALESCE_NOW = common dso_local global i32 0, align 4
@BNX2_L2CTX_CTX_TYPE_CTX_BD_CHN_TYPE_VALUE = common dso_local global i32 0, align 4
@BNX2_L2CTX_CTX_TYPE_SIZE_L2 = common dso_local global i32 0, align 4
@BNX2_L2CTX_CTX_TYPE = common dso_local global i32 0, align 4
@BNX2_L2CTX_L2_STATUSB_NUM_SHIFT = common dso_local global i32 0, align 4
@BNX2_L2CTX_HOST_BDIDX = common dso_local global i32 0, align 4
@BNX2_PAGE_SIZE = common dso_local global i32 0, align 4
@BNX2_MAX_RX_DESC_CNT = common dso_local global i32 0, align 4
@RX_BD_FLAGS_START = common dso_local global i32 0, align 4
@RX_BD_FLAGS_END = common dso_local global i32 0, align 4
@BNX2_L2CTX_NX_BDHADDR_HI = common dso_local global i32 0, align 4
@BNX2_L2CTX_NX_BDHADDR_LO = common dso_local global i32 0, align 4
@BNX2_RXP_SCRATCH_RXP_FLOOD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cnic_dev*)* @cnic_init_bnx2_rx_ring to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cnic_init_bnx2_rx_ring(%struct.cnic_dev* %0) #0 {
  %2 = alloca %struct.cnic_dev*, align 8
  %3 = alloca %struct.cnic_local*, align 8
  %4 = alloca %struct.cnic_eth_dev*, align 8
  %5 = alloca %struct.cnic_uio_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.bnx2_rx_bd*, align 8
  %13 = alloca %struct.status_block*, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.status_block_msix*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.cnic_dev* %0, %struct.cnic_dev** %2, align 8
  %18 = load %struct.cnic_dev*, %struct.cnic_dev** %2, align 8
  %19 = getelementptr inbounds %struct.cnic_dev, %struct.cnic_dev* %18, i32 0, i32 0
  %20 = load %struct.cnic_local*, %struct.cnic_local** %19, align 8
  store %struct.cnic_local* %20, %struct.cnic_local** %3, align 8
  %21 = load %struct.cnic_local*, %struct.cnic_local** %3, align 8
  %22 = getelementptr inbounds %struct.cnic_local, %struct.cnic_local* %21, i32 0, i32 7
  %23 = load %struct.cnic_eth_dev*, %struct.cnic_eth_dev** %22, align 8
  store %struct.cnic_eth_dev* %23, %struct.cnic_eth_dev** %4, align 8
  %24 = load %struct.cnic_local*, %struct.cnic_local** %3, align 8
  %25 = getelementptr inbounds %struct.cnic_local, %struct.cnic_local* %24, i32 0, i32 6
  %26 = load %struct.cnic_uio_dev*, %struct.cnic_uio_dev** %25, align 8
  store %struct.cnic_uio_dev* %26, %struct.cnic_uio_dev** %5, align 8
  %27 = load %struct.cnic_local*, %struct.cnic_local** %3, align 8
  %28 = getelementptr inbounds %struct.cnic_local, %struct.cnic_local* %27, i32 0, i32 5
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 1
  %30 = load %struct.status_block*, %struct.status_block** %29, align 8
  store %struct.status_block* %30, %struct.status_block** %13, align 8
  %31 = load %struct.cnic_uio_dev*, %struct.cnic_uio_dev** %5, align 8
  %32 = getelementptr inbounds %struct.cnic_uio_dev, %struct.cnic_uio_dev* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  store i32 %33, i32* %14, align 4
  %34 = load %struct.cnic_local*, %struct.cnic_local** %3, align 8
  %35 = getelementptr inbounds %struct.cnic_local, %struct.cnic_local* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  store i32 %36, i32* %7, align 4
  %37 = load %struct.cnic_dev*, %struct.cnic_dev** %2, align 8
  %38 = call i32 @cnic_init_context(%struct.cnic_dev* %37, i32 2)
  %39 = load %struct.status_block*, %struct.status_block** %13, align 8
  %40 = getelementptr inbounds %struct.status_block, %struct.status_block* %39, i32 0, i32 0
  %41 = load %struct.cnic_local*, %struct.cnic_local** %3, align 8
  %42 = getelementptr inbounds %struct.cnic_local, %struct.cnic_local* %41, i32 0, i32 1
  store i64* %40, i64** %42, align 8
  %43 = load i32, i32* @BNX2_HC_COMMAND, align 4
  store i32 %43, i32* %9, align 4
  %44 = load %struct.cnic_dev*, %struct.cnic_dev** %2, align 8
  %45 = load i32, i32* %9, align 4
  %46 = call i32 @CNIC_RD(%struct.cnic_dev* %44, i32 %45)
  store i32 %46, i32* %10, align 4
  %47 = load %struct.cnic_eth_dev*, %struct.cnic_eth_dev** %4, align 8
  %48 = getelementptr inbounds %struct.cnic_eth_dev, %struct.cnic_eth_dev* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* @CNIC_DRV_STATE_USING_MSIX, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %66

53:                                               ; preds = %1
  %54 = load %struct.cnic_local*, %struct.cnic_local** %3, align 8
  %55 = getelementptr inbounds %struct.cnic_local, %struct.cnic_local* %54, i32 0, i32 5
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 0
  %57 = load %struct.status_block_msix*, %struct.status_block_msix** %56, align 8
  store %struct.status_block_msix* %57, %struct.status_block_msix** %15, align 8
  %58 = load %struct.status_block_msix*, %struct.status_block_msix** %15, align 8
  %59 = getelementptr inbounds %struct.status_block_msix, %struct.status_block_msix* %58, i32 0, i32 0
  %60 = load %struct.cnic_local*, %struct.cnic_local** %3, align 8
  %61 = getelementptr inbounds %struct.cnic_local, %struct.cnic_local* %60, i32 0, i32 1
  store i64* %59, i64** %61, align 8
  %62 = load i32, i32* @BNX2_HC_COALESCE_NOW, align 4
  store i32 %62, i32* %9, align 4
  %63 = load i32, i32* %7, align 4
  %64 = add nsw i32 11, %63
  %65 = shl i32 1, %64
  store i32 %65, i32* %10, align 4
  br label %66

66:                                               ; preds = %53, %1
  store i32 0, i32* %11, align 4
  br label %67

67:                                               ; preds = %78, %66
  %68 = load %struct.cnic_local*, %struct.cnic_local** %3, align 8
  %69 = getelementptr inbounds %struct.cnic_local, %struct.cnic_local* %68, i32 0, i32 1
  %70 = load i64*, i64** %69, align 8
  %71 = load i64, i64* %70, align 8
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %76, label %73

73:                                               ; preds = %67
  %74 = load i32, i32* %11, align 4
  %75 = icmp slt i32 %74, 10
  br label %76

76:                                               ; preds = %73, %67
  %77 = phi i1 [ false, %67 ], [ %75, %73 ]
  br i1 %77, label %78, label %87

78:                                               ; preds = %76
  %79 = load %struct.cnic_dev*, %struct.cnic_dev** %2, align 8
  %80 = load i32, i32* %9, align 4
  %81 = load i32, i32* %10, align 4
  %82 = call i32 @CNIC_WR(%struct.cnic_dev* %79, i32 %80, i32 %81)
  %83 = call i32 @udelay(i32 10)
  %84 = load i32, i32* %11, align 4
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %11, align 4
  %86 = call i32 (...) @barrier()
  br label %67

87:                                               ; preds = %76
  %88 = load %struct.cnic_local*, %struct.cnic_local** %3, align 8
  %89 = getelementptr inbounds %struct.cnic_local, %struct.cnic_local* %88, i32 0, i32 1
  %90 = load i64*, i64** %89, align 8
  %91 = load i64, i64* %90, align 8
  %92 = load %struct.cnic_local*, %struct.cnic_local** %3, align 8
  %93 = getelementptr inbounds %struct.cnic_local, %struct.cnic_local* %92, i32 0, i32 2
  store i64 %91, i64* %93, align 8
  %94 = call i32 @GET_CID_ADDR(i32 2)
  store i32 %94, i32* %6, align 4
  %95 = load i32, i32* @BNX2_L2CTX_CTX_TYPE_CTX_BD_CHN_TYPE_VALUE, align 4
  %96 = load i32, i32* @BNX2_L2CTX_CTX_TYPE_SIZE_L2, align 4
  %97 = or i32 %95, %96
  %98 = or i32 %97, 512
  store i32 %98, i32* %8, align 4
  %99 = load %struct.cnic_dev*, %struct.cnic_dev** %2, align 8
  %100 = load i32, i32* %6, align 4
  %101 = load i32, i32* @BNX2_L2CTX_CTX_TYPE, align 4
  %102 = load i32, i32* %8, align 4
  %103 = call i32 @cnic_ctx_wr(%struct.cnic_dev* %99, i32 %100, i32 %101, i32 %102)
  %104 = load i32, i32* %7, align 4
  %105 = icmp eq i32 %104, 0
  br i1 %105, label %106, label %109

106:                                              ; preds = %87
  %107 = load i32, i32* @BNX2_L2CTX_L2_STATUSB_NUM_SHIFT, align 4
  %108 = shl i32 2, %107
  store i32 %108, i32* %8, align 4
  br label %112

109:                                              ; preds = %87
  %110 = load i32, i32* %7, align 4
  %111 = call i32 @BNX2_L2CTX_L2_STATUSB_NUM(i32 %110)
  store i32 %111, i32* %8, align 4
  br label %112

112:                                              ; preds = %109, %106
  %113 = load %struct.cnic_dev*, %struct.cnic_dev** %2, align 8
  %114 = load i32, i32* %6, align 4
  %115 = load i32, i32* @BNX2_L2CTX_HOST_BDIDX, align 4
  %116 = load i32, i32* %8, align 4
  %117 = call i32 @cnic_ctx_wr(%struct.cnic_dev* %113, i32 %114, i32 %115, i32 %116)
  %118 = load %struct.cnic_uio_dev*, %struct.cnic_uio_dev** %5, align 8
  %119 = getelementptr inbounds %struct.cnic_uio_dev, %struct.cnic_uio_dev* %118, i32 0, i32 2
  %120 = load %struct.bnx2_rx_bd*, %struct.bnx2_rx_bd** %119, align 8
  %121 = load i32, i32* @BNX2_PAGE_SIZE, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds %struct.bnx2_rx_bd, %struct.bnx2_rx_bd* %120, i64 %122
  store %struct.bnx2_rx_bd* %123, %struct.bnx2_rx_bd** %12, align 8
  store i32 0, i32* %11, align 4
  br label %124

124:                                              ; preds = %161, %112
  %125 = load i32, i32* %11, align 4
  %126 = load i32, i32* @BNX2_MAX_RX_DESC_CNT, align 4
  %127 = icmp slt i32 %125, %126
  br i1 %127, label %128, label %166

128:                                              ; preds = %124
  %129 = load i32, i32* %11, align 4
  %130 = load %struct.cnic_local*, %struct.cnic_local** %3, align 8
  %131 = getelementptr inbounds %struct.cnic_local, %struct.cnic_local* %130, i32 0, i32 3
  %132 = load i32, i32* %131, align 8
  %133 = srem i32 %129, %132
  %134 = add nsw i32 %133, 1
  store i32 %134, i32* %17, align 4
  %135 = load %struct.cnic_uio_dev*, %struct.cnic_uio_dev** %5, align 8
  %136 = getelementptr inbounds %struct.cnic_uio_dev, %struct.cnic_uio_dev* %135, i32 0, i32 1
  %137 = load i32, i32* %136, align 4
  %138 = load i32, i32* %17, align 4
  %139 = load %struct.cnic_local*, %struct.cnic_local** %3, align 8
  %140 = getelementptr inbounds %struct.cnic_local, %struct.cnic_local* %139, i32 0, i32 4
  %141 = load i32, i32* %140, align 4
  %142 = mul nsw i32 %138, %141
  %143 = add nsw i32 %137, %142
  store i32 %143, i32* %16, align 4
  %144 = load %struct.cnic_local*, %struct.cnic_local** %3, align 8
  %145 = getelementptr inbounds %struct.cnic_local, %struct.cnic_local* %144, i32 0, i32 4
  %146 = load i32, i32* %145, align 4
  %147 = load %struct.bnx2_rx_bd*, %struct.bnx2_rx_bd** %12, align 8
  %148 = getelementptr inbounds %struct.bnx2_rx_bd, %struct.bnx2_rx_bd* %147, i32 0, i32 0
  store i32 %146, i32* %148, align 4
  %149 = load i32, i32* @RX_BD_FLAGS_START, align 4
  %150 = load i32, i32* @RX_BD_FLAGS_END, align 4
  %151 = or i32 %149, %150
  %152 = load %struct.bnx2_rx_bd*, %struct.bnx2_rx_bd** %12, align 8
  %153 = getelementptr inbounds %struct.bnx2_rx_bd, %struct.bnx2_rx_bd* %152, i32 0, i32 1
  store i32 %151, i32* %153, align 4
  %154 = load i32, i32* %16, align 4
  %155 = ashr i32 %154, 32
  %156 = load %struct.bnx2_rx_bd*, %struct.bnx2_rx_bd** %12, align 8
  %157 = getelementptr inbounds %struct.bnx2_rx_bd, %struct.bnx2_rx_bd* %156, i32 0, i32 2
  store i32 %155, i32* %157, align 4
  %158 = load i32, i32* %16, align 4
  %159 = load %struct.bnx2_rx_bd*, %struct.bnx2_rx_bd** %12, align 8
  %160 = getelementptr inbounds %struct.bnx2_rx_bd, %struct.bnx2_rx_bd* %159, i32 0, i32 3
  store i32 %158, i32* %160, align 4
  br label %161

161:                                              ; preds = %128
  %162 = load i32, i32* %11, align 4
  %163 = add nsw i32 %162, 1
  store i32 %163, i32* %11, align 4
  %164 = load %struct.bnx2_rx_bd*, %struct.bnx2_rx_bd** %12, align 8
  %165 = getelementptr inbounds %struct.bnx2_rx_bd, %struct.bnx2_rx_bd* %164, i32 1
  store %struct.bnx2_rx_bd* %165, %struct.bnx2_rx_bd** %12, align 8
  br label %124

166:                                              ; preds = %124
  %167 = load i32, i32* %14, align 4
  %168 = load i32, i32* @BNX2_PAGE_SIZE, align 4
  %169 = add nsw i32 %167, %168
  %170 = ashr i32 %169, 32
  store i32 %170, i32* %8, align 4
  %171 = load %struct.cnic_dev*, %struct.cnic_dev** %2, align 8
  %172 = load i32, i32* %6, align 4
  %173 = load i32, i32* @BNX2_L2CTX_NX_BDHADDR_HI, align 4
  %174 = load i32, i32* %8, align 4
  %175 = call i32 @cnic_ctx_wr(%struct.cnic_dev* %171, i32 %172, i32 %173, i32 %174)
  %176 = load i32, i32* %8, align 4
  %177 = load %struct.bnx2_rx_bd*, %struct.bnx2_rx_bd** %12, align 8
  %178 = getelementptr inbounds %struct.bnx2_rx_bd, %struct.bnx2_rx_bd* %177, i32 0, i32 2
  store i32 %176, i32* %178, align 4
  %179 = load i32, i32* %14, align 4
  %180 = load i32, i32* @BNX2_PAGE_SIZE, align 4
  %181 = add nsw i32 %179, %180
  store i32 %181, i32* %8, align 4
  %182 = load %struct.cnic_dev*, %struct.cnic_dev** %2, align 8
  %183 = load i32, i32* %6, align 4
  %184 = load i32, i32* @BNX2_L2CTX_NX_BDHADDR_LO, align 4
  %185 = load i32, i32* %8, align 4
  %186 = call i32 @cnic_ctx_wr(%struct.cnic_dev* %182, i32 %183, i32 %184, i32 %185)
  %187 = load i32, i32* %8, align 4
  %188 = load %struct.bnx2_rx_bd*, %struct.bnx2_rx_bd** %12, align 8
  %189 = getelementptr inbounds %struct.bnx2_rx_bd, %struct.bnx2_rx_bd* %188, i32 0, i32 3
  store i32 %187, i32* %189, align 4
  %190 = load %struct.cnic_dev*, %struct.cnic_dev** %2, align 8
  %191 = load i32, i32* @BNX2_RXP_SCRATCH_RXP_FLOOD, align 4
  %192 = call i32 @cnic_reg_rd_ind(%struct.cnic_dev* %190, i32 %191)
  store i32 %192, i32* %8, align 4
  %193 = load %struct.cnic_dev*, %struct.cnic_dev** %2, align 8
  %194 = load i32, i32* @BNX2_RXP_SCRATCH_RXP_FLOOD, align 4
  %195 = load i32, i32* %8, align 4
  %196 = or i32 %195, 4
  %197 = call i32 @cnic_reg_wr_ind(%struct.cnic_dev* %193, i32 %194, i32 %196)
  ret void
}

declare dso_local i32 @cnic_init_context(%struct.cnic_dev*, i32) #1

declare dso_local i32 @CNIC_RD(%struct.cnic_dev*, i32) #1

declare dso_local i32 @CNIC_WR(%struct.cnic_dev*, i32, i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @barrier(...) #1

declare dso_local i32 @GET_CID_ADDR(i32) #1

declare dso_local i32 @cnic_ctx_wr(%struct.cnic_dev*, i32, i32, i32) #1

declare dso_local i32 @BNX2_L2CTX_L2_STATUSB_NUM(i32) #1

declare dso_local i32 @cnic_reg_rd_ind(%struct.cnic_dev*, i32) #1

declare dso_local i32 @cnic_reg_wr_ind(%struct.cnic_dev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
