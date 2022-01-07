; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bnx2x/extr_bnx2x_main.c_bnx2x_pf_rx_q_prep.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bnx2x/extr_bnx2x_main.c_bnx2x_pf_rx_q_prep.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2x = type { i64, i32, i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.bnx2x_fastpath = type { i32, i32, i64, i64, i32, i32, i32 }
%struct.rxq_pause_params = type { i32, i64, i32, i32, i32, i32, i32 }
%struct.bnx2x_rxq_setup_params = type { i32, i32, i32, i32, i32, i32, i32, i8*, i8*, i8*, i8*, i32, i64, i64, i64, i32, i32 }

@FW_PREFETCH_CNT = common dso_local global i32 0, align 4
@MAX_RX_SGE_CNT = common dso_local global i32 0, align 4
@NUM_RX_SGE_PAGES = common dso_local global i32 0, align 4
@TPA_AGG_SIZE = common dso_local global i8* null, align 8
@SGE_PAGE_SHIFT = common dso_local global i32 0, align 4
@PAGES_PER_SGE = common dso_local global i32 0, align 4
@PAGES_PER_SGE_SHIFT = common dso_local global i32 0, align 4
@u32 = common dso_local global i32 0, align 4
@SGE_PAGES = common dso_local global i32 0, align 4
@NUM_RCQ_RINGS = common dso_local global i32 0, align 4
@MAX_RCQ_DESC_CNT = common dso_local global i32 0, align 4
@BCM_PAGE_SIZE = common dso_local global i64 0, align 8
@BNX2X_FW_RX_ALIGN_START = common dso_local global i64 0, align 8
@BNX2X_FW_RX_ALIGN_END = common dso_local global i64 0, align 8
@IP_HEADER_ALIGNMENT_PADDING = common dso_local global i64 0, align 8
@BNX2X_RX_ALIGN_SHIFT = common dso_local global i32 0, align 4
@HC_SP_INDEX_ETH_FCOE_RX_CQ_CONS = common dso_local global i32 0, align 4
@HC_INDEX_ETH_RX_CQ_CONS = common dso_local global i32 0, align 4
@VLAN_VID_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bnx2x*, %struct.bnx2x_fastpath*, %struct.rxq_pause_params*, %struct.bnx2x_rxq_setup_params*)* @bnx2x_pf_rx_q_prep to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bnx2x_pf_rx_q_prep(%struct.bnx2x* %0, %struct.bnx2x_fastpath* %1, %struct.rxq_pause_params* %2, %struct.bnx2x_rxq_setup_params* %3) #0 {
  %5 = alloca %struct.bnx2x*, align 8
  %6 = alloca %struct.bnx2x_fastpath*, align 8
  %7 = alloca %struct.rxq_pause_params*, align 8
  %8 = alloca %struct.bnx2x_rxq_setup_params*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  store %struct.bnx2x* %0, %struct.bnx2x** %5, align 8
  store %struct.bnx2x_fastpath* %1, %struct.bnx2x_fastpath** %6, align 8
  store %struct.rxq_pause_params* %2, %struct.rxq_pause_params** %7, align 8
  store %struct.bnx2x_rxq_setup_params* %3, %struct.bnx2x_rxq_setup_params** %8, align 8
  store i32 0, i32* %9, align 4
  store i8* null, i8** %10, align 8
  store i8* null, i8** %11, align 8
  %12 = load %struct.bnx2x_fastpath*, %struct.bnx2x_fastpath** %6, align 8
  %13 = getelementptr inbounds %struct.bnx2x_fastpath, %struct.bnx2x_fastpath* %12, i32 0, i32 6
  %14 = load i32, i32* %13, align 8
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %66, label %16

16:                                               ; preds = %4
  %17 = load %struct.bnx2x*, %struct.bnx2x** %5, align 8
  %18 = call i32 @SGE_TH_LO(%struct.bnx2x* %17)
  %19 = load %struct.rxq_pause_params*, %struct.rxq_pause_params** %7, align 8
  %20 = getelementptr inbounds %struct.rxq_pause_params, %struct.rxq_pause_params* %19, i32 0, i32 6
  store i32 %18, i32* %20, align 8
  %21 = load %struct.bnx2x*, %struct.bnx2x** %5, align 8
  %22 = call i32 @SGE_TH_HI(%struct.bnx2x* %21)
  %23 = load %struct.rxq_pause_params*, %struct.rxq_pause_params** %7, align 8
  %24 = getelementptr inbounds %struct.rxq_pause_params, %struct.rxq_pause_params* %23, i32 0, i32 0
  store i32 %22, i32* %24, align 8
  %25 = load %struct.bnx2x*, %struct.bnx2x** %5, align 8
  %26 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %25, i32 0, i32 2
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %39

29:                                               ; preds = %16
  %30 = load %struct.rxq_pause_params*, %struct.rxq_pause_params** %7, align 8
  %31 = getelementptr inbounds %struct.rxq_pause_params, %struct.rxq_pause_params* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* @FW_PREFETCH_CNT, align 4
  %34 = add nsw i32 %32, %33
  %35 = load i32, i32* @MAX_RX_SGE_CNT, align 4
  %36 = load i32, i32* @NUM_RX_SGE_PAGES, align 4
  %37 = mul nsw i32 %35, %36
  %38 = icmp sgt i32 %34, %37
  br label %39

39:                                               ; preds = %29, %16
  %40 = phi i1 [ false, %16 ], [ %38, %29 ]
  %41 = zext i1 %40 to i32
  %42 = call i32 @WARN_ON(i32 %41)
  %43 = load i8*, i8** @TPA_AGG_SIZE, align 8
  store i8* %43, i8** %11, align 8
  %44 = load %struct.bnx2x*, %struct.bnx2x** %5, align 8
  %45 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %44, i32 0, i32 3
  %46 = load %struct.TYPE_2__*, %struct.TYPE_2__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @SGE_PAGE_ALIGN(i32 %48)
  %50 = load i32, i32* @SGE_PAGE_SHIFT, align 4
  %51 = ashr i32 %49, %50
  store i32 %51, i32* %9, align 4
  %52 = load i32, i32* %9, align 4
  %53 = load i32, i32* @PAGES_PER_SGE, align 4
  %54 = add nsw i32 %52, %53
  %55 = sub nsw i32 %54, 1
  %56 = load i32, i32* @PAGES_PER_SGE, align 4
  %57 = sub nsw i32 %56, 1
  %58 = xor i32 %57, -1
  %59 = and i32 %55, %58
  %60 = load i32, i32* @PAGES_PER_SGE_SHIFT, align 4
  %61 = ashr i32 %59, %60
  store i32 %61, i32* %9, align 4
  %62 = load i32, i32* @u32, align 4
  %63 = load i32, i32* @SGE_PAGES, align 4
  %64 = call i64 @min_t(i32 %62, i32 %63, i32 65535)
  %65 = inttoptr i64 %64 to i8*
  store i8* %65, i8** %10, align 8
  br label %66

66:                                               ; preds = %39, %4
  %67 = load %struct.bnx2x*, %struct.bnx2x** %5, align 8
  %68 = call i32 @CHIP_IS_E1(%struct.bnx2x* %67)
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %126, label %70

70:                                               ; preds = %66
  %71 = load %struct.bnx2x*, %struct.bnx2x** %5, align 8
  %72 = call i32 @BD_TH_LO(%struct.bnx2x* %71)
  %73 = load %struct.rxq_pause_params*, %struct.rxq_pause_params** %7, align 8
  %74 = getelementptr inbounds %struct.rxq_pause_params, %struct.rxq_pause_params* %73, i32 0, i32 5
  store i32 %72, i32* %74, align 4
  %75 = load %struct.bnx2x*, %struct.bnx2x** %5, align 8
  %76 = call i64 @BD_TH_HI(%struct.bnx2x* %75)
  %77 = load %struct.rxq_pause_params*, %struct.rxq_pause_params** %7, align 8
  %78 = getelementptr inbounds %struct.rxq_pause_params, %struct.rxq_pause_params* %77, i32 0, i32 1
  store i64 %76, i64* %78, align 8
  %79 = load %struct.bnx2x*, %struct.bnx2x** %5, align 8
  %80 = call i32 @RCQ_TH_LO(%struct.bnx2x* %79)
  %81 = load %struct.rxq_pause_params*, %struct.rxq_pause_params** %7, align 8
  %82 = getelementptr inbounds %struct.rxq_pause_params, %struct.rxq_pause_params* %81, i32 0, i32 4
  store i32 %80, i32* %82, align 8
  %83 = load %struct.bnx2x*, %struct.bnx2x** %5, align 8
  %84 = call i32 @RCQ_TH_HI(%struct.bnx2x* %83)
  %85 = load %struct.rxq_pause_params*, %struct.rxq_pause_params** %7, align 8
  %86 = getelementptr inbounds %struct.rxq_pause_params, %struct.rxq_pause_params* %85, i32 0, i32 2
  store i32 %84, i32* %86, align 8
  %87 = load %struct.bnx2x*, %struct.bnx2x** %5, align 8
  %88 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %87, i32 0, i32 2
  %89 = load i64, i64* %88, align 8
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %102

91:                                               ; preds = %70
  %92 = load %struct.rxq_pause_params*, %struct.rxq_pause_params** %7, align 8
  %93 = getelementptr inbounds %struct.rxq_pause_params, %struct.rxq_pause_params* %92, i32 0, i32 1
  %94 = load i64, i64* %93, align 8
  %95 = load i32, i32* @FW_PREFETCH_CNT, align 4
  %96 = sext i32 %95 to i64
  %97 = add nsw i64 %94, %96
  %98 = load %struct.bnx2x*, %struct.bnx2x** %5, align 8
  %99 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %98, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = icmp sgt i64 %97, %100
  br label %102

102:                                              ; preds = %91, %70
  %103 = phi i1 [ false, %70 ], [ %101, %91 ]
  %104 = zext i1 %103 to i32
  %105 = call i32 @WARN_ON(i32 %104)
  %106 = load %struct.bnx2x*, %struct.bnx2x** %5, align 8
  %107 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %106, i32 0, i32 2
  %108 = load i64, i64* %107, align 8
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %120

110:                                              ; preds = %102
  %111 = load %struct.rxq_pause_params*, %struct.rxq_pause_params** %7, align 8
  %112 = getelementptr inbounds %struct.rxq_pause_params, %struct.rxq_pause_params* %111, i32 0, i32 2
  %113 = load i32, i32* %112, align 8
  %114 = load i32, i32* @FW_PREFETCH_CNT, align 4
  %115 = add nsw i32 %113, %114
  %116 = load i32, i32* @NUM_RCQ_RINGS, align 4
  %117 = load i32, i32* @MAX_RCQ_DESC_CNT, align 4
  %118 = mul nsw i32 %116, %117
  %119 = icmp sgt i32 %115, %118
  br label %120

120:                                              ; preds = %110, %102
  %121 = phi i1 [ false, %102 ], [ %119, %110 ]
  %122 = zext i1 %121 to i32
  %123 = call i32 @WARN_ON(i32 %122)
  %124 = load %struct.rxq_pause_params*, %struct.rxq_pause_params** %7, align 8
  %125 = getelementptr inbounds %struct.rxq_pause_params, %struct.rxq_pause_params* %124, i32 0, i32 3
  store i32 1, i32* %125, align 4
  br label %126

126:                                              ; preds = %120, %66
  %127 = load %struct.bnx2x_fastpath*, %struct.bnx2x_fastpath** %6, align 8
  %128 = getelementptr inbounds %struct.bnx2x_fastpath, %struct.bnx2x_fastpath* %127, i32 0, i32 5
  %129 = load i32, i32* %128, align 4
  %130 = load %struct.bnx2x_rxq_setup_params*, %struct.bnx2x_rxq_setup_params** %8, align 8
  %131 = getelementptr inbounds %struct.bnx2x_rxq_setup_params, %struct.bnx2x_rxq_setup_params* %130, i32 0, i32 16
  store i32 %129, i32* %131, align 4
  %132 = load %struct.bnx2x_fastpath*, %struct.bnx2x_fastpath** %6, align 8
  %133 = getelementptr inbounds %struct.bnx2x_fastpath, %struct.bnx2x_fastpath* %132, i32 0, i32 4
  %134 = load i32, i32* %133, align 8
  %135 = load %struct.bnx2x_rxq_setup_params*, %struct.bnx2x_rxq_setup_params** %8, align 8
  %136 = getelementptr inbounds %struct.bnx2x_rxq_setup_params, %struct.bnx2x_rxq_setup_params* %135, i32 0, i32 15
  store i32 %134, i32* %136, align 8
  %137 = load %struct.bnx2x_fastpath*, %struct.bnx2x_fastpath** %6, align 8
  %138 = getelementptr inbounds %struct.bnx2x_fastpath, %struct.bnx2x_fastpath* %137, i32 0, i32 3
  %139 = load i64, i64* %138, align 8
  %140 = load %struct.bnx2x_rxq_setup_params*, %struct.bnx2x_rxq_setup_params** %8, align 8
  %141 = getelementptr inbounds %struct.bnx2x_rxq_setup_params, %struct.bnx2x_rxq_setup_params* %140, i32 0, i32 14
  store i64 %139, i64* %141, align 8
  %142 = load %struct.bnx2x_fastpath*, %struct.bnx2x_fastpath** %6, align 8
  %143 = getelementptr inbounds %struct.bnx2x_fastpath, %struct.bnx2x_fastpath* %142, i32 0, i32 3
  %144 = load i64, i64* %143, align 8
  %145 = load i64, i64* @BCM_PAGE_SIZE, align 8
  %146 = add nsw i64 %144, %145
  %147 = load %struct.bnx2x_rxq_setup_params*, %struct.bnx2x_rxq_setup_params** %8, align 8
  %148 = getelementptr inbounds %struct.bnx2x_rxq_setup_params, %struct.bnx2x_rxq_setup_params* %147, i32 0, i32 13
  store i64 %146, i64* %148, align 8
  %149 = load %struct.bnx2x_fastpath*, %struct.bnx2x_fastpath** %6, align 8
  %150 = getelementptr inbounds %struct.bnx2x_fastpath, %struct.bnx2x_fastpath* %149, i32 0, i32 2
  %151 = load i64, i64* %150, align 8
  %152 = load i64, i64* @BNX2X_FW_RX_ALIGN_START, align 8
  %153 = sub nsw i64 %151, %152
  %154 = load i64, i64* @BNX2X_FW_RX_ALIGN_END, align 8
  %155 = sub nsw i64 %153, %154
  %156 = load i64, i64* @IP_HEADER_ALIGNMENT_PADDING, align 8
  %157 = sub nsw i64 %155, %156
  %158 = load %struct.bnx2x_rxq_setup_params*, %struct.bnx2x_rxq_setup_params** %8, align 8
  %159 = getelementptr inbounds %struct.bnx2x_rxq_setup_params, %struct.bnx2x_rxq_setup_params* %158, i32 0, i32 12
  store i64 %157, i64* %159, align 8
  %160 = load %struct.bnx2x_fastpath*, %struct.bnx2x_fastpath** %6, align 8
  %161 = getelementptr inbounds %struct.bnx2x_fastpath, %struct.bnx2x_fastpath* %160, i32 0, i32 1
  %162 = load i32, i32* %161, align 4
  %163 = load %struct.bnx2x_rxq_setup_params*, %struct.bnx2x_rxq_setup_params** %8, align 8
  %164 = getelementptr inbounds %struct.bnx2x_rxq_setup_params, %struct.bnx2x_rxq_setup_params* %163, i32 0, i32 11
  store i32 %162, i32* %164, align 8
  %165 = load i8*, i8** %11, align 8
  %166 = load %struct.bnx2x_rxq_setup_params*, %struct.bnx2x_rxq_setup_params** %8, align 8
  %167 = getelementptr inbounds %struct.bnx2x_rxq_setup_params, %struct.bnx2x_rxq_setup_params* %166, i32 0, i32 10
  store i8* %165, i8** %167, align 8
  %168 = load i8*, i8** %10, align 8
  %169 = load %struct.bnx2x_rxq_setup_params*, %struct.bnx2x_rxq_setup_params** %8, align 8
  %170 = getelementptr inbounds %struct.bnx2x_rxq_setup_params, %struct.bnx2x_rxq_setup_params* %169, i32 0, i32 9
  store i8* %168, i8** %170, align 8
  %171 = load i32, i32* %9, align 4
  %172 = load %struct.bnx2x_rxq_setup_params*, %struct.bnx2x_rxq_setup_params** %8, align 8
  %173 = getelementptr inbounds %struct.bnx2x_rxq_setup_params, %struct.bnx2x_rxq_setup_params* %172, i32 0, i32 0
  store i32 %171, i32* %173, align 8
  %174 = load %struct.bnx2x*, %struct.bnx2x** %5, align 8
  %175 = call i8* @BP_FUNC(%struct.bnx2x* %174)
  %176 = load %struct.bnx2x_rxq_setup_params*, %struct.bnx2x_rxq_setup_params** %8, align 8
  %177 = getelementptr inbounds %struct.bnx2x_rxq_setup_params, %struct.bnx2x_rxq_setup_params* %176, i32 0, i32 8
  store i8* %175, i8** %177, align 8
  %178 = load %struct.bnx2x*, %struct.bnx2x** %5, align 8
  %179 = call i8* @BP_FUNC(%struct.bnx2x* %178)
  %180 = load %struct.bnx2x_rxq_setup_params*, %struct.bnx2x_rxq_setup_params** %8, align 8
  %181 = getelementptr inbounds %struct.bnx2x_rxq_setup_params, %struct.bnx2x_rxq_setup_params* %180, i32 0, i32 7
  store i8* %179, i8** %181, align 8
  %182 = load %struct.bnx2x*, %struct.bnx2x** %5, align 8
  %183 = call i32 @MAX_AGG_QS(%struct.bnx2x* %182)
  %184 = load %struct.bnx2x_rxq_setup_params*, %struct.bnx2x_rxq_setup_params** %8, align 8
  %185 = getelementptr inbounds %struct.bnx2x_rxq_setup_params, %struct.bnx2x_rxq_setup_params* %184, i32 0, i32 6
  store i32 %183, i32* %185, align 8
  %186 = load i32, i32* @BNX2X_RX_ALIGN_SHIFT, align 4
  %187 = load %struct.bnx2x_rxq_setup_params*, %struct.bnx2x_rxq_setup_params** %8, align 8
  %188 = getelementptr inbounds %struct.bnx2x_rxq_setup_params, %struct.bnx2x_rxq_setup_params* %187, i32 0, i32 5
  store i32 %186, i32* %188, align 4
  %189 = load %struct.bnx2x_fastpath*, %struct.bnx2x_fastpath** %6, align 8
  %190 = getelementptr inbounds %struct.bnx2x_fastpath, %struct.bnx2x_fastpath* %189, i32 0, i32 0
  %191 = load i32, i32* %190, align 8
  %192 = load %struct.bnx2x_rxq_setup_params*, %struct.bnx2x_rxq_setup_params** %8, align 8
  %193 = getelementptr inbounds %struct.bnx2x_rxq_setup_params, %struct.bnx2x_rxq_setup_params* %192, i32 0, i32 4
  store i32 %191, i32* %193, align 8
  %194 = load %struct.bnx2x_fastpath*, %struct.bnx2x_fastpath** %6, align 8
  %195 = call i64 @IS_FCOE_FP(%struct.bnx2x_fastpath* %194)
  %196 = icmp ne i64 %195, 0
  br i1 %196, label %197, label %201

197:                                              ; preds = %126
  %198 = load i32, i32* @HC_SP_INDEX_ETH_FCOE_RX_CQ_CONS, align 4
  %199 = load %struct.bnx2x_rxq_setup_params*, %struct.bnx2x_rxq_setup_params** %8, align 8
  %200 = getelementptr inbounds %struct.bnx2x_rxq_setup_params, %struct.bnx2x_rxq_setup_params* %199, i32 0, i32 3
  store i32 %198, i32* %200, align 4
  br label %205

201:                                              ; preds = %126
  %202 = load i32, i32* @HC_INDEX_ETH_RX_CQ_CONS, align 4
  %203 = load %struct.bnx2x_rxq_setup_params*, %struct.bnx2x_rxq_setup_params** %8, align 8
  %204 = getelementptr inbounds %struct.bnx2x_rxq_setup_params, %struct.bnx2x_rxq_setup_params* %203, i32 0, i32 3
  store i32 %202, i32* %204, align 4
  br label %205

205:                                              ; preds = %201, %197
  %206 = load %struct.bnx2x*, %struct.bnx2x** %5, align 8
  %207 = call i64 @IS_MF_AFEX(%struct.bnx2x* %206)
  %208 = icmp ne i64 %207, 0
  br i1 %208, label %209, label %218

209:                                              ; preds = %205
  %210 = load %struct.bnx2x*, %struct.bnx2x** %5, align 8
  %211 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %210, i32 0, i32 1
  %212 = load i32, i32* %211, align 8
  %213 = load %struct.bnx2x_rxq_setup_params*, %struct.bnx2x_rxq_setup_params** %8, align 8
  %214 = getelementptr inbounds %struct.bnx2x_rxq_setup_params, %struct.bnx2x_rxq_setup_params* %213, i32 0, i32 2
  store i32 %212, i32* %214, align 8
  %215 = load i32, i32* @VLAN_VID_MASK, align 4
  %216 = load %struct.bnx2x_rxq_setup_params*, %struct.bnx2x_rxq_setup_params** %8, align 8
  %217 = getelementptr inbounds %struct.bnx2x_rxq_setup_params, %struct.bnx2x_rxq_setup_params* %216, i32 0, i32 1
  store i32 %215, i32* %217, align 4
  br label %218

218:                                              ; preds = %209, %205
  ret void
}

declare dso_local i32 @SGE_TH_LO(%struct.bnx2x*) #1

declare dso_local i32 @SGE_TH_HI(%struct.bnx2x*) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @SGE_PAGE_ALIGN(i32) #1

declare dso_local i64 @min_t(i32, i32, i32) #1

declare dso_local i32 @CHIP_IS_E1(%struct.bnx2x*) #1

declare dso_local i32 @BD_TH_LO(%struct.bnx2x*) #1

declare dso_local i64 @BD_TH_HI(%struct.bnx2x*) #1

declare dso_local i32 @RCQ_TH_LO(%struct.bnx2x*) #1

declare dso_local i32 @RCQ_TH_HI(%struct.bnx2x*) #1

declare dso_local i8* @BP_FUNC(%struct.bnx2x*) #1

declare dso_local i32 @MAX_AGG_QS(%struct.bnx2x*) #1

declare dso_local i64 @IS_FCOE_FP(%struct.bnx2x_fastpath*) #1

declare dso_local i64 @IS_MF_AFEX(%struct.bnx2x*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
