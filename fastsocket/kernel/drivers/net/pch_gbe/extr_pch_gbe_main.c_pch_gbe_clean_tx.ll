; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/pch_gbe/extr_pch_gbe_main.c_pch_gbe_clean_tx.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/pch_gbe/extr_pch_gbe_main.c_pch_gbe_clean_tx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pch_gbe_adapter = type { %struct.TYPE_4__, i32, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32, i32, i32, i32, i32, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.pch_gbe_tx_ring = type { i32, i32, i32, %struct.pch_gbe_buffer*, i32 }
%struct.pch_gbe_buffer = type { i32, %struct.sk_buff*, i32, i32 }
%struct.sk_buff = type { i64 }
%struct.pch_gbe_tx_desc = type { i32, i32 }

@.str = private unnamed_addr constant [20 x i8] c"next_to_clean : %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [39 x i8] c"gbec_status:0x%04x  dma_status:0x%04x\0A\00", align 1
@PCH_GBE_TX_WEIGHT = common dso_local global i32 0, align 4
@DSC_INIT16 = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [52 x i8] c"clean_tx: transmit queue warning (%x,%x) unused=%d\0A\00", align 1
@.str.3 = private unnamed_addr constant [71 x i8] c"clean_tx: unused=%d loops=%d found tx_desc[%x,%x:%x].gbec_status=%04x\0A\00", align 1
@.str.4 = private unnamed_addr constant [20 x i8] c"gbec_status:0x%04x\0A\00", align 1
@PCH_GBE_TXD_GMAC_STAT_ABT = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [22 x i8] c"Transfer Abort Error\0A\00", align 1
@PCH_GBE_TXD_GMAC_STAT_CRSER = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [30 x i8] c"Transfer Carrier Sense Error\0A\00", align 1
@PCH_GBE_TXD_GMAC_STAT_EXCOL = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [32 x i8] c"Transfer Collision Abort Error\0A\00", align 1
@PCH_GBE_TXD_GMAC_STAT_SNGCOL = common dso_local global i32 0, align 4
@PCH_GBE_TXD_GMAC_STAT_MLTCOL = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [20 x i8] c"Transfer Collision\0A\00", align 1
@PCH_GBE_TXD_GMAC_STAT_CMPLT = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [29 x i8] c"unmap buffer_info->dma : %d\0A\00", align 1
@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [28 x i8] c"trim buffer_info->skb : %d\0A\00", align 1
@.str.11 = private unnamed_addr constant [54 x i8] c"called pch_gbe_unmap_and_free_tx_resource() %d count\0A\00", align 1
@.str.12 = private unnamed_addr constant [15 x i8] c"Tx wake queue\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pch_gbe_adapter*, %struct.pch_gbe_tx_ring*)* @pch_gbe_clean_tx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pch_gbe_clean_tx(%struct.pch_gbe_adapter* %0, %struct.pch_gbe_tx_ring* %1) #0 {
  %3 = alloca %struct.pch_gbe_adapter*, align 8
  %4 = alloca %struct.pch_gbe_tx_ring*, align 8
  %5 = alloca %struct.pch_gbe_tx_desc*, align 8
  %6 = alloca %struct.pch_gbe_buffer*, align 8
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.pch_gbe_adapter* %0, %struct.pch_gbe_adapter** %3, align 8
  store %struct.pch_gbe_tx_ring* %1, %struct.pch_gbe_tx_ring** %4, align 8
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %15 = load %struct.pch_gbe_tx_ring*, %struct.pch_gbe_tx_ring** %4, align 8
  %16 = getelementptr inbounds %struct.pch_gbe_tx_ring, %struct.pch_gbe_tx_ring* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %17)
  %19 = load %struct.pch_gbe_tx_ring*, %struct.pch_gbe_tx_ring** %4, align 8
  %20 = getelementptr inbounds %struct.pch_gbe_tx_ring, %struct.pch_gbe_tx_ring* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  store i32 %21, i32* %8, align 4
  %22 = load %struct.pch_gbe_tx_ring*, %struct.pch_gbe_tx_ring** %4, align 8
  %23 = load i32, i32* %8, align 4
  %24 = call %struct.pch_gbe_tx_desc* @PCH_GBE_TX_DESC(%struct.pch_gbe_tx_ring* byval(%struct.pch_gbe_tx_ring) align 8 %22, i32 %23)
  store %struct.pch_gbe_tx_desc* %24, %struct.pch_gbe_tx_desc** %5, align 8
  %25 = load %struct.pch_gbe_tx_desc*, %struct.pch_gbe_tx_desc** %5, align 8
  %26 = getelementptr inbounds %struct.pch_gbe_tx_desc, %struct.pch_gbe_tx_desc* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.pch_gbe_tx_desc*, %struct.pch_gbe_tx_desc** %5, align 8
  %29 = getelementptr inbounds %struct.pch_gbe_tx_desc, %struct.pch_gbe_tx_desc* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i32 %27, i32 %30)
  %32 = load %struct.pch_gbe_tx_ring*, %struct.pch_gbe_tx_ring** %4, align 8
  %33 = call i32 @PCH_GBE_DESC_UNUSED(%struct.pch_gbe_tx_ring* %32)
  store i32 %33, i32* %11, align 4
  %34 = load %struct.pch_gbe_tx_ring*, %struct.pch_gbe_tx_ring** %4, align 8
  %35 = getelementptr inbounds %struct.pch_gbe_tx_ring, %struct.pch_gbe_tx_ring* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @PCH_GBE_TX_WEIGHT, align 4
  %38 = sub nsw i32 %36, %37
  store i32 %38, i32* %12, align 4
  %39 = load %struct.pch_gbe_tx_desc*, %struct.pch_gbe_tx_desc** %5, align 8
  %40 = getelementptr inbounds %struct.pch_gbe_tx_desc, %struct.pch_gbe_tx_desc* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @DSC_INIT16, align 4
  %43 = icmp eq i32 %41, %42
  br i1 %43, label %44, label %106

44:                                               ; preds = %2
  %45 = load i32, i32* %11, align 4
  %46 = load i32, i32* %12, align 4
  %47 = icmp slt i32 %45, %46
  br i1 %47, label %48, label %106

48:                                               ; preds = %44
  %49 = load i32, i32* %11, align 4
  %50 = icmp slt i32 %49, 8
  br i1 %50, label %51, label %60

51:                                               ; preds = %48
  %52 = load %struct.pch_gbe_tx_ring*, %struct.pch_gbe_tx_ring** %4, align 8
  %53 = getelementptr inbounds %struct.pch_gbe_tx_ring, %struct.pch_gbe_tx_ring* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = load %struct.pch_gbe_tx_ring*, %struct.pch_gbe_tx_ring** %4, align 8
  %56 = getelementptr inbounds %struct.pch_gbe_tx_ring, %struct.pch_gbe_tx_ring* %55, i32 0, i32 4
  %57 = load i32, i32* %56, align 8
  %58 = load i32, i32* %11, align 4
  %59 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.2, i64 0, i64 0), i32 %54, i32 %57, i32 %58)
  br label %60

60:                                               ; preds = %51, %48
  %61 = load i32, i32* %8, align 4
  store i32 %61, i32* %14, align 4
  store i32 0, i32* %13, align 4
  br label %62

62:                                               ; preds = %85, %60
  %63 = load i32, i32* %13, align 4
  %64 = load i32, i32* @PCH_GBE_TX_WEIGHT, align 4
  %65 = icmp slt i32 %63, %64
  br i1 %65, label %66, label %88

66:                                               ; preds = %62
  %67 = load %struct.pch_gbe_tx_ring*, %struct.pch_gbe_tx_ring** %4, align 8
  %68 = load i32, i32* %14, align 4
  %69 = call %struct.pch_gbe_tx_desc* @PCH_GBE_TX_DESC(%struct.pch_gbe_tx_ring* byval(%struct.pch_gbe_tx_ring) align 8 %67, i32 %68)
  store %struct.pch_gbe_tx_desc* %69, %struct.pch_gbe_tx_desc** %5, align 8
  %70 = load %struct.pch_gbe_tx_desc*, %struct.pch_gbe_tx_desc** %5, align 8
  %71 = getelementptr inbounds %struct.pch_gbe_tx_desc, %struct.pch_gbe_tx_desc* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* @DSC_INIT16, align 4
  %74 = icmp ne i32 %72, %73
  br i1 %74, label %75, label %76

75:                                               ; preds = %66
  br label %88

76:                                               ; preds = %66
  %77 = load i32, i32* %14, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %14, align 4
  %79 = load %struct.pch_gbe_tx_ring*, %struct.pch_gbe_tx_ring** %4, align 8
  %80 = getelementptr inbounds %struct.pch_gbe_tx_ring, %struct.pch_gbe_tx_ring* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = icmp sge i32 %78, %81
  br i1 %82, label %83, label %84

83:                                               ; preds = %76
  store i32 0, i32* %14, align 4
  br label %84

84:                                               ; preds = %83, %76
  br label %85

85:                                               ; preds = %84
  %86 = load i32, i32* %13, align 4
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %13, align 4
  br label %62

88:                                               ; preds = %75, %62
  %89 = load i32, i32* %13, align 4
  %90 = load i32, i32* @PCH_GBE_TX_WEIGHT, align 4
  %91 = icmp slt i32 %89, %90
  br i1 %91, label %92, label %105

92:                                               ; preds = %88
  %93 = load i32, i32* %11, align 4
  %94 = load i32, i32* %13, align 4
  %95 = load i32, i32* %8, align 4
  %96 = load i32, i32* %14, align 4
  %97 = load %struct.pch_gbe_tx_ring*, %struct.pch_gbe_tx_ring** %4, align 8
  %98 = getelementptr inbounds %struct.pch_gbe_tx_ring, %struct.pch_gbe_tx_ring* %97, i32 0, i32 4
  %99 = load i32, i32* %98, align 8
  %100 = load %struct.pch_gbe_tx_desc*, %struct.pch_gbe_tx_desc** %5, align 8
  %101 = getelementptr inbounds %struct.pch_gbe_tx_desc, %struct.pch_gbe_tx_desc* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.3, i64 0, i64 0), i32 %93, i32 %94, i32 %95, i32 %96, i32 %99, i32 %102)
  %104 = load i32, i32* %14, align 4
  store i32 %104, i32* %8, align 4
  br label %105

105:                                              ; preds = %92, %88
  br label %106

106:                                              ; preds = %105, %44, %2
  br label %107

107:                                              ; preds = %284, %106
  %108 = load %struct.pch_gbe_tx_desc*, %struct.pch_gbe_tx_desc** %5, align 8
  %109 = getelementptr inbounds %struct.pch_gbe_tx_desc, %struct.pch_gbe_tx_desc* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = load i32, i32* @DSC_INIT16, align 4
  %112 = and i32 %110, %111
  %113 = icmp eq i32 %112, 0
  br i1 %113, label %114, label %285

114:                                              ; preds = %107
  %115 = load %struct.pch_gbe_tx_desc*, %struct.pch_gbe_tx_desc** %5, align 8
  %116 = getelementptr inbounds %struct.pch_gbe_tx_desc, %struct.pch_gbe_tx_desc* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 4
  %118 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0), i32 %117)
  %119 = load %struct.pch_gbe_tx_ring*, %struct.pch_gbe_tx_ring** %4, align 8
  %120 = getelementptr inbounds %struct.pch_gbe_tx_ring, %struct.pch_gbe_tx_ring* %119, i32 0, i32 3
  %121 = load %struct.pch_gbe_buffer*, %struct.pch_gbe_buffer** %120, align 8
  %122 = load i32, i32* %8, align 4
  %123 = zext i32 %122 to i64
  %124 = getelementptr inbounds %struct.pch_gbe_buffer, %struct.pch_gbe_buffer* %121, i64 %123
  store %struct.pch_gbe_buffer* %124, %struct.pch_gbe_buffer** %6, align 8
  %125 = load %struct.pch_gbe_buffer*, %struct.pch_gbe_buffer** %6, align 8
  %126 = getelementptr inbounds %struct.pch_gbe_buffer, %struct.pch_gbe_buffer* %125, i32 0, i32 1
  %127 = load %struct.sk_buff*, %struct.sk_buff** %126, align 8
  store %struct.sk_buff* %127, %struct.sk_buff** %7, align 8
  store i32 1, i32* %10, align 4
  %128 = load %struct.pch_gbe_tx_desc*, %struct.pch_gbe_tx_desc** %5, align 8
  %129 = getelementptr inbounds %struct.pch_gbe_tx_desc, %struct.pch_gbe_tx_desc* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 4
  %131 = load i32, i32* @PCH_GBE_TXD_GMAC_STAT_ABT, align 4
  %132 = and i32 %130, %131
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %141

134:                                              ; preds = %114
  %135 = load %struct.pch_gbe_adapter*, %struct.pch_gbe_adapter** %3, align 8
  %136 = getelementptr inbounds %struct.pch_gbe_adapter, %struct.pch_gbe_adapter* %135, i32 0, i32 0
  %137 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %136, i32 0, i32 4
  %138 = load i32, i32* %137, align 8
  %139 = add nsw i32 %138, 1
  store i32 %139, i32* %137, align 8
  %140 = call i32 @pr_err(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i64 0, i64 0))
  br label %227

141:                                              ; preds = %114
  %142 = load %struct.pch_gbe_tx_desc*, %struct.pch_gbe_tx_desc** %5, align 8
  %143 = getelementptr inbounds %struct.pch_gbe_tx_desc, %struct.pch_gbe_tx_desc* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 4
  %145 = load i32, i32* @PCH_GBE_TXD_GMAC_STAT_CRSER, align 4
  %146 = and i32 %144, %145
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %155

148:                                              ; preds = %141
  %149 = load %struct.pch_gbe_adapter*, %struct.pch_gbe_adapter** %3, align 8
  %150 = getelementptr inbounds %struct.pch_gbe_adapter, %struct.pch_gbe_adapter* %149, i32 0, i32 0
  %151 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %150, i32 0, i32 5
  %152 = load i32, i32* %151, align 4
  %153 = add nsw i32 %152, 1
  store i32 %153, i32* %151, align 4
  %154 = call i32 @pr_err(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.6, i64 0, i64 0))
  br label %226

155:                                              ; preds = %141
  %156 = load %struct.pch_gbe_tx_desc*, %struct.pch_gbe_tx_desc** %5, align 8
  %157 = getelementptr inbounds %struct.pch_gbe_tx_desc, %struct.pch_gbe_tx_desc* %156, i32 0, i32 0
  %158 = load i32, i32* %157, align 4
  %159 = load i32, i32* @PCH_GBE_TXD_GMAC_STAT_EXCOL, align 4
  %160 = and i32 %158, %159
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %162, label %169

162:                                              ; preds = %155
  %163 = load %struct.pch_gbe_adapter*, %struct.pch_gbe_adapter** %3, align 8
  %164 = getelementptr inbounds %struct.pch_gbe_adapter, %struct.pch_gbe_adapter* %163, i32 0, i32 0
  %165 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %164, i32 0, i32 4
  %166 = load i32, i32* %165, align 8
  %167 = add nsw i32 %166, 1
  store i32 %167, i32* %165, align 8
  %168 = call i32 @pr_err(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.7, i64 0, i64 0))
  br label %225

169:                                              ; preds = %155
  %170 = load %struct.pch_gbe_tx_desc*, %struct.pch_gbe_tx_desc** %5, align 8
  %171 = getelementptr inbounds %struct.pch_gbe_tx_desc, %struct.pch_gbe_tx_desc* %170, i32 0, i32 0
  %172 = load i32, i32* %171, align 4
  %173 = load i32, i32* @PCH_GBE_TXD_GMAC_STAT_SNGCOL, align 4
  %174 = load i32, i32* @PCH_GBE_TXD_GMAC_STAT_MLTCOL, align 4
  %175 = or i32 %173, %174
  %176 = and i32 %172, %175
  %177 = icmp ne i32 %176, 0
  br i1 %177, label %178, label %200

178:                                              ; preds = %169
  %179 = load %struct.pch_gbe_adapter*, %struct.pch_gbe_adapter** %3, align 8
  %180 = getelementptr inbounds %struct.pch_gbe_adapter, %struct.pch_gbe_adapter* %179, i32 0, i32 0
  %181 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %180, i32 0, i32 3
  %182 = load i32, i32* %181, align 4
  %183 = add nsw i32 %182, 1
  store i32 %183, i32* %181, align 4
  %184 = load %struct.pch_gbe_adapter*, %struct.pch_gbe_adapter** %3, align 8
  %185 = getelementptr inbounds %struct.pch_gbe_adapter, %struct.pch_gbe_adapter* %184, i32 0, i32 0
  %186 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %185, i32 0, i32 2
  %187 = load i32, i32* %186, align 8
  %188 = add nsw i32 %187, 1
  store i32 %188, i32* %186, align 8
  %189 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %190 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %189, i32 0, i32 0
  %191 = load i64, i64* %190, align 8
  %192 = load %struct.pch_gbe_adapter*, %struct.pch_gbe_adapter** %3, align 8
  %193 = getelementptr inbounds %struct.pch_gbe_adapter, %struct.pch_gbe_adapter* %192, i32 0, i32 0
  %194 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %193, i32 0, i32 1
  %195 = load i32, i32* %194, align 4
  %196 = sext i32 %195 to i64
  %197 = add nsw i64 %196, %191
  %198 = trunc i64 %197 to i32
  store i32 %198, i32* %194, align 4
  %199 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.8, i64 0, i64 0))
  br label %224

200:                                              ; preds = %169
  %201 = load %struct.pch_gbe_tx_desc*, %struct.pch_gbe_tx_desc** %5, align 8
  %202 = getelementptr inbounds %struct.pch_gbe_tx_desc, %struct.pch_gbe_tx_desc* %201, i32 0, i32 0
  %203 = load i32, i32* %202, align 4
  %204 = load i32, i32* @PCH_GBE_TXD_GMAC_STAT_CMPLT, align 4
  %205 = and i32 %203, %204
  %206 = icmp ne i32 %205, 0
  br i1 %206, label %207, label %223

207:                                              ; preds = %200
  %208 = load %struct.pch_gbe_adapter*, %struct.pch_gbe_adapter** %3, align 8
  %209 = getelementptr inbounds %struct.pch_gbe_adapter, %struct.pch_gbe_adapter* %208, i32 0, i32 0
  %210 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %209, i32 0, i32 2
  %211 = load i32, i32* %210, align 8
  %212 = add nsw i32 %211, 1
  store i32 %212, i32* %210, align 8
  %213 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %214 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %213, i32 0, i32 0
  %215 = load i64, i64* %214, align 8
  %216 = load %struct.pch_gbe_adapter*, %struct.pch_gbe_adapter** %3, align 8
  %217 = getelementptr inbounds %struct.pch_gbe_adapter, %struct.pch_gbe_adapter* %216, i32 0, i32 0
  %218 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %217, i32 0, i32 1
  %219 = load i32, i32* %218, align 4
  %220 = sext i32 %219 to i64
  %221 = add nsw i64 %220, %215
  %222 = trunc i64 %221 to i32
  store i32 %222, i32* %218, align 4
  br label %223

223:                                              ; preds = %207, %200
  br label %224

224:                                              ; preds = %223, %178
  br label %225

225:                                              ; preds = %224, %162
  br label %226

226:                                              ; preds = %225, %148
  br label %227

227:                                              ; preds = %226, %134
  %228 = load %struct.pch_gbe_buffer*, %struct.pch_gbe_buffer** %6, align 8
  %229 = getelementptr inbounds %struct.pch_gbe_buffer, %struct.pch_gbe_buffer* %228, i32 0, i32 0
  %230 = load i32, i32* %229, align 8
  %231 = icmp ne i32 %230, 0
  br i1 %231, label %232, label %249

232:                                              ; preds = %227
  %233 = load i32, i32* %8, align 4
  %234 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.9, i64 0, i64 0), i32 %233)
  %235 = load %struct.pch_gbe_adapter*, %struct.pch_gbe_adapter** %3, align 8
  %236 = getelementptr inbounds %struct.pch_gbe_adapter, %struct.pch_gbe_adapter* %235, i32 0, i32 2
  %237 = load %struct.TYPE_3__*, %struct.TYPE_3__** %236, align 8
  %238 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %237, i32 0, i32 0
  %239 = load %struct.pch_gbe_buffer*, %struct.pch_gbe_buffer** %6, align 8
  %240 = getelementptr inbounds %struct.pch_gbe_buffer, %struct.pch_gbe_buffer* %239, i32 0, i32 3
  %241 = load i32, i32* %240, align 4
  %242 = load %struct.pch_gbe_buffer*, %struct.pch_gbe_buffer** %6, align 8
  %243 = getelementptr inbounds %struct.pch_gbe_buffer, %struct.pch_gbe_buffer* %242, i32 0, i32 2
  %244 = load i32, i32* %243, align 8
  %245 = load i32, i32* @DMA_TO_DEVICE, align 4
  %246 = call i32 @dma_unmap_single(i32* %238, i32 %241, i32 %244, i32 %245)
  %247 = load %struct.pch_gbe_buffer*, %struct.pch_gbe_buffer** %6, align 8
  %248 = getelementptr inbounds %struct.pch_gbe_buffer, %struct.pch_gbe_buffer* %247, i32 0, i32 0
  store i32 0, i32* %248, align 8
  br label %249

249:                                              ; preds = %232, %227
  %250 = load %struct.pch_gbe_buffer*, %struct.pch_gbe_buffer** %6, align 8
  %251 = getelementptr inbounds %struct.pch_gbe_buffer, %struct.pch_gbe_buffer* %250, i32 0, i32 1
  %252 = load %struct.sk_buff*, %struct.sk_buff** %251, align 8
  %253 = icmp ne %struct.sk_buff* %252, null
  br i1 %253, label %254, label %261

254:                                              ; preds = %249
  %255 = load i32, i32* %8, align 4
  %256 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.10, i64 0, i64 0), i32 %255)
  %257 = load %struct.pch_gbe_buffer*, %struct.pch_gbe_buffer** %6, align 8
  %258 = getelementptr inbounds %struct.pch_gbe_buffer, %struct.pch_gbe_buffer* %257, i32 0, i32 1
  %259 = load %struct.sk_buff*, %struct.sk_buff** %258, align 8
  %260 = call i32 @skb_trim(%struct.sk_buff* %259, i32 0)
  br label %261

261:                                              ; preds = %254, %249
  %262 = load i32, i32* @DSC_INIT16, align 4
  %263 = load %struct.pch_gbe_tx_desc*, %struct.pch_gbe_tx_desc** %5, align 8
  %264 = getelementptr inbounds %struct.pch_gbe_tx_desc, %struct.pch_gbe_tx_desc* %263, i32 0, i32 0
  store i32 %262, i32* %264, align 4
  %265 = load i32, i32* %8, align 4
  %266 = add i32 %265, 1
  store i32 %266, i32* %8, align 4
  %267 = load %struct.pch_gbe_tx_ring*, %struct.pch_gbe_tx_ring** %4, align 8
  %268 = getelementptr inbounds %struct.pch_gbe_tx_ring, %struct.pch_gbe_tx_ring* %267, i32 0, i32 1
  %269 = load i32, i32* %268, align 4
  %270 = icmp eq i32 %266, %269
  %271 = zext i1 %270 to i32
  %272 = call i64 @unlikely(i32 %271)
  %273 = icmp ne i64 %272, 0
  br i1 %273, label %274, label %275

274:                                              ; preds = %261
  store i32 0, i32* %8, align 4
  br label %275

275:                                              ; preds = %274, %261
  %276 = load %struct.pch_gbe_tx_ring*, %struct.pch_gbe_tx_ring** %4, align 8
  %277 = load i32, i32* %8, align 4
  %278 = call %struct.pch_gbe_tx_desc* @PCH_GBE_TX_DESC(%struct.pch_gbe_tx_ring* byval(%struct.pch_gbe_tx_ring) align 8 %276, i32 %277)
  store %struct.pch_gbe_tx_desc* %278, %struct.pch_gbe_tx_desc** %5, align 8
  %279 = load i32, i32* %9, align 4
  %280 = add i32 %279, 1
  store i32 %280, i32* %9, align 4
  %281 = load i32, i32* @PCH_GBE_TX_WEIGHT, align 4
  %282 = icmp eq i32 %279, %281
  br i1 %282, label %283, label %284

283:                                              ; preds = %275
  store i32 0, i32* %10, align 4
  br label %285

284:                                              ; preds = %275
  br label %107

285:                                              ; preds = %283, %107
  %286 = load i32, i32* %9, align 4
  %287 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.11, i64 0, i64 0), i32 %286)
  %288 = load i32, i32* %9, align 4
  %289 = icmp ugt i32 %288, 0
  br i1 %289, label %290, label %329

290:                                              ; preds = %285
  %291 = load %struct.pch_gbe_tx_ring*, %struct.pch_gbe_tx_ring** %4, align 8
  %292 = getelementptr inbounds %struct.pch_gbe_tx_ring, %struct.pch_gbe_tx_ring* %291, i32 0, i32 2
  %293 = call i32 @spin_lock(i32* %292)
  %294 = load i32, i32* %10, align 4
  %295 = icmp ne i32 %294, 0
  br i1 %295, label %296, label %302

296:                                              ; preds = %290
  %297 = load %struct.pch_gbe_adapter*, %struct.pch_gbe_adapter** %3, align 8
  %298 = getelementptr inbounds %struct.pch_gbe_adapter, %struct.pch_gbe_adapter* %297, i32 0, i32 1
  %299 = load i32, i32* %298, align 8
  %300 = call i64 @netif_queue_stopped(i32 %299)
  %301 = icmp ne i64 %300, 0
  br label %302

302:                                              ; preds = %296, %290
  %303 = phi i1 [ false, %290 ], [ %301, %296 ]
  %304 = zext i1 %303 to i32
  %305 = call i64 @unlikely(i32 %304)
  %306 = icmp ne i64 %305, 0
  br i1 %306, label %307, label %318

307:                                              ; preds = %302
  %308 = load %struct.pch_gbe_adapter*, %struct.pch_gbe_adapter** %3, align 8
  %309 = getelementptr inbounds %struct.pch_gbe_adapter, %struct.pch_gbe_adapter* %308, i32 0, i32 1
  %310 = load i32, i32* %309, align 8
  %311 = call i32 @netif_wake_queue(i32 %310)
  %312 = load %struct.pch_gbe_adapter*, %struct.pch_gbe_adapter** %3, align 8
  %313 = getelementptr inbounds %struct.pch_gbe_adapter, %struct.pch_gbe_adapter* %312, i32 0, i32 0
  %314 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %313, i32 0, i32 0
  %315 = load i32, i32* %314, align 8
  %316 = add nsw i32 %315, 1
  store i32 %316, i32* %314, align 8
  %317 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.12, i64 0, i64 0))
  br label %318

318:                                              ; preds = %307, %302
  %319 = load i32, i32* %8, align 4
  %320 = load %struct.pch_gbe_tx_ring*, %struct.pch_gbe_tx_ring** %4, align 8
  %321 = getelementptr inbounds %struct.pch_gbe_tx_ring, %struct.pch_gbe_tx_ring* %320, i32 0, i32 0
  store i32 %319, i32* %321, align 8
  %322 = load %struct.pch_gbe_tx_ring*, %struct.pch_gbe_tx_ring** %4, align 8
  %323 = getelementptr inbounds %struct.pch_gbe_tx_ring, %struct.pch_gbe_tx_ring* %322, i32 0, i32 0
  %324 = load i32, i32* %323, align 8
  %325 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %324)
  %326 = load %struct.pch_gbe_tx_ring*, %struct.pch_gbe_tx_ring** %4, align 8
  %327 = getelementptr inbounds %struct.pch_gbe_tx_ring, %struct.pch_gbe_tx_ring* %326, i32 0, i32 2
  %328 = call i32 @spin_unlock(i32* %327)
  br label %329

329:                                              ; preds = %318, %285
  %330 = load i32, i32* %10, align 4
  ret i32 %330
}

declare dso_local i32 @pr_debug(i8*, ...) #1

declare dso_local %struct.pch_gbe_tx_desc* @PCH_GBE_TX_DESC(%struct.pch_gbe_tx_ring* byval(%struct.pch_gbe_tx_ring) align 8, i32) #1

declare dso_local i32 @PCH_GBE_DESC_UNUSED(%struct.pch_gbe_tx_ring*) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @dma_unmap_single(i32*, i32, i32, i32) #1

declare dso_local i32 @skb_trim(%struct.sk_buff*, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i64 @netif_queue_stopped(i32) #1

declare dso_local i32 @netif_wake_queue(i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
