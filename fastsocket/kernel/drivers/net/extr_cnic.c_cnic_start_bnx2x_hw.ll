; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_cnic.c_cnic_start_bnx2x_hw.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_cnic.c_cnic_start_bnx2x_hw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cnic_dev = type { i32, i32, i32, %struct.cnic_local* }
%struct.cnic_local = type { %struct.TYPE_10__, i32, %struct.TYPE_9__, i32, i32, i32, i32, i32, i32, i32, i32, %struct.cnic_eth_dev* }
%struct.TYPE_10__ = type { i32* }
%struct.TYPE_9__ = type { %struct.TYPE_8__, i64 }
%struct.TYPE_8__ = type { i32* }
%struct.cnic_eth_dev = type { i32, %struct.TYPE_7__*, i32 }
%struct.TYPE_7__ = type { i32 }
%struct.bnx2x = type { i32, i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }

@MAX_ISCSI_TBL_SZ = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@MAX_KCQ_IDX = common dso_local global i32 0, align 4
@BAR_CSTRORM_INTMEM = common dso_local global i64 0, align 8
@HC_INDEX_ISCSI_EQ_CONS = common dso_local global i32 0, align 4
@BAR_USTRORM_INTMEM = common dso_local global i64 0, align 8
@BAR_TSTRORM_INTMEM = common dso_local global i64 0, align 8
@DEF_RCV_BUF = common dso_local global i32 0, align 4
@CNIC_DRV_STATE_HANDLES_IRQ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cnic_dev*)* @cnic_start_bnx2x_hw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cnic_start_bnx2x_hw(%struct.cnic_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.cnic_dev*, align 8
  %4 = alloca %struct.cnic_local*, align 8
  %5 = alloca %struct.bnx2x*, align 8
  %6 = alloca %struct.cnic_eth_dev*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.cnic_dev* %0, %struct.cnic_dev** %3, align 8
  %10 = load %struct.cnic_dev*, %struct.cnic_dev** %3, align 8
  %11 = getelementptr inbounds %struct.cnic_dev, %struct.cnic_dev* %10, i32 0, i32 3
  %12 = load %struct.cnic_local*, %struct.cnic_local** %11, align 8
  store %struct.cnic_local* %12, %struct.cnic_local** %4, align 8
  %13 = load %struct.cnic_dev*, %struct.cnic_dev** %3, align 8
  %14 = getelementptr inbounds %struct.cnic_dev, %struct.cnic_dev* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 8
  %16 = call %struct.bnx2x* @netdev_priv(i32 %15)
  store %struct.bnx2x* %16, %struct.bnx2x** %5, align 8
  %17 = load %struct.cnic_local*, %struct.cnic_local** %4, align 8
  %18 = getelementptr inbounds %struct.cnic_local, %struct.cnic_local* %17, i32 0, i32 11
  %19 = load %struct.cnic_eth_dev*, %struct.cnic_eth_dev** %18, align 8
  store %struct.cnic_eth_dev* %19, %struct.cnic_eth_dev** %6, align 8
  %20 = load %struct.cnic_eth_dev*, %struct.cnic_eth_dev** %6, align 8
  %21 = getelementptr inbounds %struct.cnic_eth_dev, %struct.cnic_eth_dev* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 8
  %23 = load %struct.cnic_dev*, %struct.cnic_dev** %3, align 8
  %24 = getelementptr inbounds %struct.cnic_dev, %struct.cnic_dev* %23, i32 0, i32 1
  store i32 %22, i32* %24, align 4
  %25 = load %struct.bnx2x*, %struct.bnx2x** %5, align 8
  %26 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %25, i32 0, i32 2
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.cnic_local*, %struct.cnic_local** %4, align 8
  %30 = getelementptr inbounds %struct.cnic_local, %struct.cnic_local* %29, i32 0, i32 10
  store i32 %28, i32* %30, align 4
  %31 = load %struct.bnx2x*, %struct.bnx2x** %5, align 8
  %32 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.cnic_local*, %struct.cnic_local** %4, align 8
  %35 = getelementptr inbounds %struct.cnic_local, %struct.cnic_local* %34, i32 0, i32 8
  store i32 %33, i32* %35, align 4
  %36 = load %struct.bnx2x*, %struct.bnx2x** %5, align 8
  %37 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.cnic_local*, %struct.cnic_local** %4, align 8
  %40 = getelementptr inbounds %struct.cnic_local, %struct.cnic_local* %39, i32 0, i32 9
  store i32 %38, i32* %40, align 8
  %41 = load %struct.cnic_local*, %struct.cnic_local** %4, align 8
  %42 = call i32 @CNIC_FUNC(%struct.cnic_local* %41)
  store i32 %42, i32* %7, align 4
  %43 = load %struct.cnic_local*, %struct.cnic_local** %4, align 8
  %44 = getelementptr inbounds %struct.cnic_local, %struct.cnic_local* %43, i32 0, i32 8
  %45 = load i32, i32* %44, align 4
  store i32 %45, i32* %9, align 4
  %46 = load %struct.cnic_local*, %struct.cnic_local** %4, align 8
  %47 = getelementptr inbounds %struct.cnic_local, %struct.cnic_local* %46, i32 0, i32 7
  %48 = load i32, i32* @MAX_ISCSI_TBL_SZ, align 4
  %49 = load %struct.cnic_local*, %struct.cnic_local** %4, align 8
  %50 = getelementptr inbounds %struct.cnic_local, %struct.cnic_local* %49, i32 0, i32 6
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @cnic_init_id_tbl(i32* %47, i32 %48, i32 %51, i32 0)
  store i32 %52, i32* %8, align 4
  %53 = load i32, i32* %8, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %58

55:                                               ; preds = %1
  %56 = load i32, i32* @ENOMEM, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %2, align 4
  br label %227

58:                                               ; preds = %1
  %59 = load %struct.bnx2x*, %struct.bnx2x** %5, align 8
  %60 = call i64 @BNX2X_CHIP_IS_E2_PLUS(%struct.bnx2x* %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %78

62:                                               ; preds = %58
  %63 = load %struct.cnic_local*, %struct.cnic_local** %4, align 8
  %64 = getelementptr inbounds %struct.cnic_local, %struct.cnic_local* %63, i32 0, i32 5
  %65 = load %struct.cnic_dev*, %struct.cnic_dev** %3, align 8
  %66 = getelementptr inbounds %struct.cnic_dev, %struct.cnic_dev* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = load %struct.cnic_local*, %struct.cnic_local** %4, align 8
  %69 = getelementptr inbounds %struct.cnic_local, %struct.cnic_local* %68, i32 0, i32 4
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @cnic_init_id_tbl(i32* %64, i32 %67, i32 %70, i32 0)
  store i32 %71, i32* %8, align 4
  %72 = load i32, i32* %8, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %77

74:                                               ; preds = %62
  %75 = load i32, i32* @ENOMEM, align 4
  %76 = sub nsw i32 0, %75
  store i32 %76, i32* %2, align 4
  br label %227

77:                                               ; preds = %62
  br label %78

78:                                               ; preds = %77, %58
  %79 = load %struct.cnic_eth_dev*, %struct.cnic_eth_dev** %6, align 8
  %80 = getelementptr inbounds %struct.cnic_eth_dev, %struct.cnic_eth_dev* %79, i32 0, i32 1
  %81 = load %struct.TYPE_7__*, %struct.TYPE_7__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %81, i64 0
  %83 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = load %struct.cnic_local*, %struct.cnic_local** %4, align 8
  %86 = getelementptr inbounds %struct.cnic_local, %struct.cnic_local* %85, i32 0, i32 3
  store i32 %84, i32* %86, align 8
  %87 = load %struct.cnic_dev*, %struct.cnic_dev** %3, align 8
  %88 = call i32 @cnic_init_bnx2x_kcq(%struct.cnic_dev* %87)
  %89 = load %struct.cnic_dev*, %struct.cnic_dev** %3, align 8
  %90 = load %struct.cnic_local*, %struct.cnic_local** %4, align 8
  %91 = getelementptr inbounds %struct.cnic_local, %struct.cnic_local* %90, i32 0, i32 2
  %92 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %91, i32 0, i32 1
  %93 = load i64, i64* %92, align 8
  %94 = load i32, i32* @MAX_KCQ_IDX, align 4
  %95 = call i32 @CNIC_WR16(%struct.cnic_dev* %89, i64 %93, i32 %94)
  %96 = load %struct.cnic_dev*, %struct.cnic_dev** %3, align 8
  %97 = load i64, i64* @BAR_CSTRORM_INTMEM, align 8
  %98 = load i32, i32* %9, align 4
  %99 = call i64 @CSTORM_ISCSI_EQ_CONS_OFFSET(i32 %98, i32 0)
  %100 = add nsw i64 %97, %99
  %101 = call i32 @CNIC_WR(%struct.cnic_dev* %96, i64 %100, i32 0)
  %102 = load %struct.cnic_dev*, %struct.cnic_dev** %3, align 8
  %103 = load i64, i64* @BAR_CSTRORM_INTMEM, align 8
  %104 = load i32, i32* %9, align 4
  %105 = call i64 @CSTORM_ISCSI_EQ_NEXT_PAGE_ADDR_OFFSET(i32 %104, i32 0)
  %106 = add nsw i64 %103, %105
  %107 = load %struct.cnic_local*, %struct.cnic_local** %4, align 8
  %108 = getelementptr inbounds %struct.cnic_local, %struct.cnic_local* %107, i32 0, i32 2
  %109 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %108, i32 0, i32 0
  %110 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %109, i32 0, i32 0
  %111 = load i32*, i32** %110, align 8
  %112 = getelementptr inbounds i32, i32* %111, i64 1
  %113 = load i32, i32* %112, align 4
  %114 = call i32 @CNIC_WR(%struct.cnic_dev* %102, i64 %106, i32 %113)
  %115 = load %struct.cnic_dev*, %struct.cnic_dev** %3, align 8
  %116 = load i64, i64* @BAR_CSTRORM_INTMEM, align 8
  %117 = load i32, i32* %9, align 4
  %118 = call i64 @CSTORM_ISCSI_EQ_NEXT_PAGE_ADDR_OFFSET(i32 %117, i32 0)
  %119 = add nsw i64 %116, %118
  %120 = add nsw i64 %119, 4
  %121 = load %struct.cnic_local*, %struct.cnic_local** %4, align 8
  %122 = getelementptr inbounds %struct.cnic_local, %struct.cnic_local* %121, i32 0, i32 2
  %123 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %122, i32 0, i32 0
  %124 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %123, i32 0, i32 0
  %125 = load i32*, i32** %124, align 8
  %126 = getelementptr inbounds i32, i32* %125, i64 1
  %127 = load i32, i32* %126, align 4
  %128 = ashr i32 %127, 32
  %129 = call i32 @CNIC_WR(%struct.cnic_dev* %115, i64 %120, i32 %128)
  %130 = load %struct.cnic_dev*, %struct.cnic_dev** %3, align 8
  %131 = load i64, i64* @BAR_CSTRORM_INTMEM, align 8
  %132 = load i32, i32* %9, align 4
  %133 = call i64 @CSTORM_ISCSI_EQ_NEXT_EQE_ADDR_OFFSET(i32 %132, i32 0)
  %134 = add nsw i64 %131, %133
  %135 = load %struct.cnic_local*, %struct.cnic_local** %4, align 8
  %136 = getelementptr inbounds %struct.cnic_local, %struct.cnic_local* %135, i32 0, i32 2
  %137 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %136, i32 0, i32 0
  %138 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %137, i32 0, i32 0
  %139 = load i32*, i32** %138, align 8
  %140 = getelementptr inbounds i32, i32* %139, i64 0
  %141 = load i32, i32* %140, align 4
  %142 = call i32 @CNIC_WR(%struct.cnic_dev* %130, i64 %134, i32 %141)
  %143 = load %struct.cnic_dev*, %struct.cnic_dev** %3, align 8
  %144 = load i64, i64* @BAR_CSTRORM_INTMEM, align 8
  %145 = load i32, i32* %9, align 4
  %146 = call i64 @CSTORM_ISCSI_EQ_NEXT_EQE_ADDR_OFFSET(i32 %145, i32 0)
  %147 = add nsw i64 %144, %146
  %148 = add nsw i64 %147, 4
  %149 = load %struct.cnic_local*, %struct.cnic_local** %4, align 8
  %150 = getelementptr inbounds %struct.cnic_local, %struct.cnic_local* %149, i32 0, i32 2
  %151 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %150, i32 0, i32 0
  %152 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %151, i32 0, i32 0
  %153 = load i32*, i32** %152, align 8
  %154 = getelementptr inbounds i32, i32* %153, i64 0
  %155 = load i32, i32* %154, align 4
  %156 = ashr i32 %155, 32
  %157 = call i32 @CNIC_WR(%struct.cnic_dev* %143, i64 %148, i32 %156)
  %158 = load %struct.cnic_dev*, %struct.cnic_dev** %3, align 8
  %159 = load i64, i64* @BAR_CSTRORM_INTMEM, align 8
  %160 = load i32, i32* %9, align 4
  %161 = call i64 @CSTORM_ISCSI_EQ_NEXT_PAGE_ADDR_VALID_OFFSET(i32 %160, i32 0)
  %162 = add nsw i64 %159, %161
  %163 = call i32 @CNIC_WR8(%struct.cnic_dev* %158, i64 %162, i32 1)
  %164 = load %struct.cnic_dev*, %struct.cnic_dev** %3, align 8
  %165 = load i64, i64* @BAR_CSTRORM_INTMEM, align 8
  %166 = load i32, i32* %9, align 4
  %167 = call i64 @CSTORM_ISCSI_EQ_SB_NUM_OFFSET(i32 %166, i32 0)
  %168 = add nsw i64 %165, %167
  %169 = load %struct.cnic_local*, %struct.cnic_local** %4, align 8
  %170 = getelementptr inbounds %struct.cnic_local, %struct.cnic_local* %169, i32 0, i32 1
  %171 = load i32, i32* %170, align 8
  %172 = call i32 @CNIC_WR16(%struct.cnic_dev* %164, i64 %168, i32 %171)
  %173 = load %struct.cnic_dev*, %struct.cnic_dev** %3, align 8
  %174 = load i64, i64* @BAR_CSTRORM_INTMEM, align 8
  %175 = load i32, i32* %9, align 4
  %176 = call i64 @CSTORM_ISCSI_EQ_SB_INDEX_OFFSET(i32 %175, i32 0)
  %177 = add nsw i64 %174, %176
  %178 = load i32, i32* @HC_INDEX_ISCSI_EQ_CONS, align 4
  %179 = call i32 @CNIC_WR8(%struct.cnic_dev* %173, i64 %177, i32 %178)
  %180 = load %struct.cnic_dev*, %struct.cnic_dev** %3, align 8
  %181 = load i64, i64* @BAR_USTRORM_INTMEM, align 8
  %182 = load i32, i32* %9, align 4
  %183 = call i64 @USTORM_ISCSI_GLOBAL_BUF_PHYS_ADDR_OFFSET(i32 %182)
  %184 = add nsw i64 %181, %183
  %185 = load %struct.cnic_local*, %struct.cnic_local** %4, align 8
  %186 = getelementptr inbounds %struct.cnic_local, %struct.cnic_local* %185, i32 0, i32 0
  %187 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %186, i32 0, i32 0
  %188 = load i32*, i32** %187, align 8
  %189 = getelementptr inbounds i32, i32* %188, i64 0
  %190 = load i32, i32* %189, align 4
  %191 = call i32 @CNIC_WR(%struct.cnic_dev* %180, i64 %184, i32 %190)
  %192 = load %struct.cnic_dev*, %struct.cnic_dev** %3, align 8
  %193 = load i64, i64* @BAR_USTRORM_INTMEM, align 8
  %194 = load i32, i32* %9, align 4
  %195 = call i64 @USTORM_ISCSI_GLOBAL_BUF_PHYS_ADDR_OFFSET(i32 %194)
  %196 = add nsw i64 %193, %195
  %197 = add nsw i64 %196, 4
  %198 = load %struct.cnic_local*, %struct.cnic_local** %4, align 8
  %199 = getelementptr inbounds %struct.cnic_local, %struct.cnic_local* %198, i32 0, i32 0
  %200 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %199, i32 0, i32 0
  %201 = load i32*, i32** %200, align 8
  %202 = getelementptr inbounds i32, i32* %201, i64 0
  %203 = load i32, i32* %202, align 4
  %204 = ashr i32 %203, 32
  %205 = call i32 @CNIC_WR(%struct.cnic_dev* %192, i64 %197, i32 %204)
  %206 = load %struct.cnic_dev*, %struct.cnic_dev** %3, align 8
  %207 = load i64, i64* @BAR_TSTRORM_INTMEM, align 8
  %208 = load i32, i32* %9, align 4
  %209 = call i64 @TSTORM_ISCSI_TCP_LOCAL_ADV_WND_OFFSET(i32 %208)
  %210 = add nsw i64 %207, %209
  %211 = load i32, i32* @DEF_RCV_BUF, align 4
  %212 = call i32 @CNIC_WR(%struct.cnic_dev* %206, i64 %210, i32 %211)
  %213 = load %struct.cnic_dev*, %struct.cnic_dev** %3, align 8
  %214 = call i32 @cnic_setup_bnx2x_context(%struct.cnic_dev* %213)
  %215 = load %struct.cnic_dev*, %struct.cnic_dev** %3, align 8
  %216 = call i32 @cnic_init_bnx2x_irq(%struct.cnic_dev* %215)
  store i32 %216, i32* %8, align 4
  %217 = load i32, i32* %8, align 4
  %218 = icmp ne i32 %217, 0
  br i1 %218, label %219, label %221

219:                                              ; preds = %78
  %220 = load i32, i32* %8, align 4
  store i32 %220, i32* %2, align 4
  br label %227

221:                                              ; preds = %78
  %222 = load i32, i32* @CNIC_DRV_STATE_HANDLES_IRQ, align 4
  %223 = load %struct.cnic_eth_dev*, %struct.cnic_eth_dev** %6, align 8
  %224 = getelementptr inbounds %struct.cnic_eth_dev, %struct.cnic_eth_dev* %223, i32 0, i32 0
  %225 = load i32, i32* %224, align 8
  %226 = or i32 %225, %222
  store i32 %226, i32* %224, align 8
  store i32 0, i32* %2, align 4
  br label %227

227:                                              ; preds = %221, %219, %74, %55
  %228 = load i32, i32* %2, align 4
  ret i32 %228
}

declare dso_local %struct.bnx2x* @netdev_priv(i32) #1

declare dso_local i32 @CNIC_FUNC(%struct.cnic_local*) #1

declare dso_local i32 @cnic_init_id_tbl(i32*, i32, i32, i32) #1

declare dso_local i64 @BNX2X_CHIP_IS_E2_PLUS(%struct.bnx2x*) #1

declare dso_local i32 @cnic_init_bnx2x_kcq(%struct.cnic_dev*) #1

declare dso_local i32 @CNIC_WR16(%struct.cnic_dev*, i64, i32) #1

declare dso_local i32 @CNIC_WR(%struct.cnic_dev*, i64, i32) #1

declare dso_local i64 @CSTORM_ISCSI_EQ_CONS_OFFSET(i32, i32) #1

declare dso_local i64 @CSTORM_ISCSI_EQ_NEXT_PAGE_ADDR_OFFSET(i32, i32) #1

declare dso_local i64 @CSTORM_ISCSI_EQ_NEXT_EQE_ADDR_OFFSET(i32, i32) #1

declare dso_local i32 @CNIC_WR8(%struct.cnic_dev*, i64, i32) #1

declare dso_local i64 @CSTORM_ISCSI_EQ_NEXT_PAGE_ADDR_VALID_OFFSET(i32, i32) #1

declare dso_local i64 @CSTORM_ISCSI_EQ_SB_NUM_OFFSET(i32, i32) #1

declare dso_local i64 @CSTORM_ISCSI_EQ_SB_INDEX_OFFSET(i32, i32) #1

declare dso_local i64 @USTORM_ISCSI_GLOBAL_BUF_PHYS_ADDR_OFFSET(i32) #1

declare dso_local i64 @TSTORM_ISCSI_TCP_LOCAL_ADV_WND_OFFSET(i32) #1

declare dso_local i32 @cnic_setup_bnx2x_context(%struct.cnic_dev*) #1

declare dso_local i32 @cnic_init_bnx2x_irq(%struct.cnic_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
