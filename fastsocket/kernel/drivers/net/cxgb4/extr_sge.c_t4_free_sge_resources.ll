; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/cxgb4/extr_sge.c_t4_free_sge_resources.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/cxgb4/extr_sge.c_t4_free_sge_resources.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { %struct.TYPE_5__, i32 }
%struct.TYPE_5__ = type { i32, i32, i32, i32, %struct.TYPE_7__, %struct.TYPE_7__, %struct.sge_ofld_txq*, %struct.sge_ofld_txq*, %struct.sge_ofld_rxq*, %struct.sge_ofld_rxq*, %struct.sge_eth_txq*, %struct.sge_eth_rxq* }
%struct.TYPE_7__ = type { i64 }
%struct.sge_ofld_txq = type { %struct.TYPE_6__, i32, i32 }
%struct.TYPE_6__ = type { i32, i64, i32, i32 }
%struct.sge_ofld_rxq = type { i32, %struct.TYPE_7__ }
%struct.sge_eth_txq = type { %struct.TYPE_6__ }
%struct.sge_eth_rxq = type { i32, %struct.TYPE_7__ }
%struct.sge_ctrl_txq = type { %struct.TYPE_6__, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @t4_free_sge_resources(%struct.adapter* %0) #0 {
  %2 = alloca %struct.adapter*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.sge_eth_rxq*, align 8
  %5 = alloca %struct.sge_eth_txq*, align 8
  %6 = alloca %struct.sge_ofld_rxq*, align 8
  %7 = alloca %struct.sge_ofld_txq*, align 8
  %8 = alloca %struct.sge_ctrl_txq*, align 8
  store %struct.adapter* %0, %struct.adapter** %2, align 8
  %9 = load %struct.adapter*, %struct.adapter** %2, align 8
  %10 = getelementptr inbounds %struct.adapter, %struct.adapter* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 11
  %12 = load %struct.sge_eth_rxq*, %struct.sge_eth_rxq** %11, align 8
  store %struct.sge_eth_rxq* %12, %struct.sge_eth_rxq** %4, align 8
  %13 = load %struct.adapter*, %struct.adapter** %2, align 8
  %14 = getelementptr inbounds %struct.adapter, %struct.adapter* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 10
  %16 = load %struct.sge_eth_txq*, %struct.sge_eth_txq** %15, align 8
  store %struct.sge_eth_txq* %16, %struct.sge_eth_txq** %5, align 8
  %17 = load %struct.adapter*, %struct.adapter** %2, align 8
  %18 = getelementptr inbounds %struct.adapter, %struct.adapter* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 9
  %20 = load %struct.sge_ofld_rxq*, %struct.sge_ofld_rxq** %19, align 8
  store %struct.sge_ofld_rxq* %20, %struct.sge_ofld_rxq** %6, align 8
  store i32 0, i32* %3, align 4
  br label %21

21:                                               ; preds = %78, %1
  %22 = load i32, i32* %3, align 4
  %23 = load %struct.adapter*, %struct.adapter** %2, align 8
  %24 = getelementptr inbounds %struct.adapter, %struct.adapter* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = icmp slt i32 %22, %26
  br i1 %27, label %28, label %85

28:                                               ; preds = %21
  %29 = load %struct.sge_eth_rxq*, %struct.sge_eth_rxq** %4, align 8
  %30 = getelementptr inbounds %struct.sge_eth_rxq, %struct.sge_eth_rxq* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %41

34:                                               ; preds = %28
  %35 = load %struct.adapter*, %struct.adapter** %2, align 8
  %36 = load %struct.sge_eth_rxq*, %struct.sge_eth_rxq** %4, align 8
  %37 = getelementptr inbounds %struct.sge_eth_rxq, %struct.sge_eth_rxq* %36, i32 0, i32 1
  %38 = load %struct.sge_eth_rxq*, %struct.sge_eth_rxq** %4, align 8
  %39 = getelementptr inbounds %struct.sge_eth_rxq, %struct.sge_eth_rxq* %38, i32 0, i32 0
  %40 = call i32 @free_rspq_fl(%struct.adapter* %35, %struct.TYPE_7__* %37, i32* %39)
  br label %41

41:                                               ; preds = %34, %28
  %42 = load %struct.sge_eth_txq*, %struct.sge_eth_txq** %5, align 8
  %43 = getelementptr inbounds %struct.sge_eth_txq, %struct.sge_eth_txq* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %77

47:                                               ; preds = %41
  %48 = load %struct.adapter*, %struct.adapter** %2, align 8
  %49 = load %struct.adapter*, %struct.adapter** %2, align 8
  %50 = getelementptr inbounds %struct.adapter, %struct.adapter* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 8
  %52 = load %struct.adapter*, %struct.adapter** %2, align 8
  %53 = getelementptr inbounds %struct.adapter, %struct.adapter* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 8
  %55 = load %struct.sge_eth_txq*, %struct.sge_eth_txq** %5, align 8
  %56 = getelementptr inbounds %struct.sge_eth_txq, %struct.sge_eth_txq* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = call i32 @t4_eth_eq_free(%struct.adapter* %48, i32 %51, i32 %54, i32 0, i32 %58)
  %60 = load %struct.adapter*, %struct.adapter** %2, align 8
  %61 = load %struct.sge_eth_txq*, %struct.sge_eth_txq** %5, align 8
  %62 = getelementptr inbounds %struct.sge_eth_txq, %struct.sge_eth_txq* %61, i32 0, i32 0
  %63 = load %struct.sge_eth_txq*, %struct.sge_eth_txq** %5, align 8
  %64 = getelementptr inbounds %struct.sge_eth_txq, %struct.sge_eth_txq* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i32 0, i32 3
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @free_tx_desc(%struct.adapter* %60, %struct.TYPE_6__* %62, i32 %66, i32 1)
  %68 = load %struct.sge_eth_txq*, %struct.sge_eth_txq** %5, align 8
  %69 = getelementptr inbounds %struct.sge_eth_txq, %struct.sge_eth_txq* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %69, i32 0, i32 2
  %71 = load i32, i32* %70, align 8
  %72 = call i32 @kfree(i32 %71)
  %73 = load %struct.adapter*, %struct.adapter** %2, align 8
  %74 = load %struct.sge_eth_txq*, %struct.sge_eth_txq** %5, align 8
  %75 = getelementptr inbounds %struct.sge_eth_txq, %struct.sge_eth_txq* %74, i32 0, i32 0
  %76 = call i32 @free_txq(%struct.adapter* %73, %struct.TYPE_6__* %75)
  br label %77

77:                                               ; preds = %47, %41
  br label %78

78:                                               ; preds = %77
  %79 = load i32, i32* %3, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %3, align 4
  %81 = load %struct.sge_eth_rxq*, %struct.sge_eth_rxq** %4, align 8
  %82 = getelementptr inbounds %struct.sge_eth_rxq, %struct.sge_eth_rxq* %81, i32 1
  store %struct.sge_eth_rxq* %82, %struct.sge_eth_rxq** %4, align 8
  %83 = load %struct.sge_eth_txq*, %struct.sge_eth_txq** %5, align 8
  %84 = getelementptr inbounds %struct.sge_eth_txq, %struct.sge_eth_txq* %83, i32 1
  store %struct.sge_eth_txq* %84, %struct.sge_eth_txq** %5, align 8
  br label %21

85:                                               ; preds = %21
  store i32 0, i32* %3, align 4
  br label %86

86:                                               ; preds = %107, %85
  %87 = load i32, i32* %3, align 4
  %88 = load %struct.adapter*, %struct.adapter** %2, align 8
  %89 = getelementptr inbounds %struct.adapter, %struct.adapter* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = icmp slt i32 %87, %91
  br i1 %92, label %93, label %112

93:                                               ; preds = %86
  %94 = load %struct.sge_ofld_rxq*, %struct.sge_ofld_rxq** %6, align 8
  %95 = getelementptr inbounds %struct.sge_ofld_rxq, %struct.sge_ofld_rxq* %94, i32 0, i32 1
  %96 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %106

99:                                               ; preds = %93
  %100 = load %struct.adapter*, %struct.adapter** %2, align 8
  %101 = load %struct.sge_ofld_rxq*, %struct.sge_ofld_rxq** %6, align 8
  %102 = getelementptr inbounds %struct.sge_ofld_rxq, %struct.sge_ofld_rxq* %101, i32 0, i32 1
  %103 = load %struct.sge_ofld_rxq*, %struct.sge_ofld_rxq** %6, align 8
  %104 = getelementptr inbounds %struct.sge_ofld_rxq, %struct.sge_ofld_rxq* %103, i32 0, i32 0
  %105 = call i32 @free_rspq_fl(%struct.adapter* %100, %struct.TYPE_7__* %102, i32* %104)
  br label %106

106:                                              ; preds = %99, %93
  br label %107

107:                                              ; preds = %106
  %108 = load i32, i32* %3, align 4
  %109 = add nsw i32 %108, 1
  store i32 %109, i32* %3, align 4
  %110 = load %struct.sge_ofld_rxq*, %struct.sge_ofld_rxq** %6, align 8
  %111 = getelementptr inbounds %struct.sge_ofld_rxq, %struct.sge_ofld_rxq* %110, i32 1
  store %struct.sge_ofld_rxq* %111, %struct.sge_ofld_rxq** %6, align 8
  br label %86

112:                                              ; preds = %86
  store i32 0, i32* %3, align 4
  %113 = load %struct.adapter*, %struct.adapter** %2, align 8
  %114 = getelementptr inbounds %struct.adapter, %struct.adapter* %113, i32 0, i32 0
  %115 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %114, i32 0, i32 8
  %116 = load %struct.sge_ofld_rxq*, %struct.sge_ofld_rxq** %115, align 8
  store %struct.sge_ofld_rxq* %116, %struct.sge_ofld_rxq** %6, align 8
  br label %117

117:                                              ; preds = %138, %112
  %118 = load i32, i32* %3, align 4
  %119 = load %struct.adapter*, %struct.adapter** %2, align 8
  %120 = getelementptr inbounds %struct.adapter, %struct.adapter* %119, i32 0, i32 0
  %121 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %120, i32 0, i32 2
  %122 = load i32, i32* %121, align 8
  %123 = icmp slt i32 %118, %122
  br i1 %123, label %124, label %143

124:                                              ; preds = %117
  %125 = load %struct.sge_ofld_rxq*, %struct.sge_ofld_rxq** %6, align 8
  %126 = getelementptr inbounds %struct.sge_ofld_rxq, %struct.sge_ofld_rxq* %125, i32 0, i32 1
  %127 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %126, i32 0, i32 0
  %128 = load i64, i64* %127, align 8
  %129 = icmp ne i64 %128, 0
  br i1 %129, label %130, label %137

130:                                              ; preds = %124
  %131 = load %struct.adapter*, %struct.adapter** %2, align 8
  %132 = load %struct.sge_ofld_rxq*, %struct.sge_ofld_rxq** %6, align 8
  %133 = getelementptr inbounds %struct.sge_ofld_rxq, %struct.sge_ofld_rxq* %132, i32 0, i32 1
  %134 = load %struct.sge_ofld_rxq*, %struct.sge_ofld_rxq** %6, align 8
  %135 = getelementptr inbounds %struct.sge_ofld_rxq, %struct.sge_ofld_rxq* %134, i32 0, i32 0
  %136 = call i32 @free_rspq_fl(%struct.adapter* %131, %struct.TYPE_7__* %133, i32* %135)
  br label %137

137:                                              ; preds = %130, %124
  br label %138

138:                                              ; preds = %137
  %139 = load i32, i32* %3, align 4
  %140 = add nsw i32 %139, 1
  store i32 %140, i32* %3, align 4
  %141 = load %struct.sge_ofld_rxq*, %struct.sge_ofld_rxq** %6, align 8
  %142 = getelementptr inbounds %struct.sge_ofld_rxq, %struct.sge_ofld_rxq* %141, i32 1
  store %struct.sge_ofld_rxq* %142, %struct.sge_ofld_rxq** %6, align 8
  br label %117

143:                                              ; preds = %117
  store i32 0, i32* %3, align 4
  br label %144

144:                                              ; preds = %202, %143
  %145 = load i32, i32* %3, align 4
  %146 = load %struct.adapter*, %struct.adapter** %2, align 8
  %147 = getelementptr inbounds %struct.adapter, %struct.adapter* %146, i32 0, i32 0
  %148 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %147, i32 0, i32 7
  %149 = load %struct.sge_ofld_txq*, %struct.sge_ofld_txq** %148, align 8
  %150 = call i32 @ARRAY_SIZE(%struct.sge_ofld_txq* %149)
  %151 = icmp slt i32 %145, %150
  br i1 %151, label %152, label %205

152:                                              ; preds = %144
  %153 = load %struct.adapter*, %struct.adapter** %2, align 8
  %154 = getelementptr inbounds %struct.adapter, %struct.adapter* %153, i32 0, i32 0
  %155 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %154, i32 0, i32 7
  %156 = load %struct.sge_ofld_txq*, %struct.sge_ofld_txq** %155, align 8
  %157 = load i32, i32* %3, align 4
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds %struct.sge_ofld_txq, %struct.sge_ofld_txq* %156, i64 %158
  store %struct.sge_ofld_txq* %159, %struct.sge_ofld_txq** %7, align 8
  %160 = load %struct.sge_ofld_txq*, %struct.sge_ofld_txq** %7, align 8
  %161 = getelementptr inbounds %struct.sge_ofld_txq, %struct.sge_ofld_txq* %160, i32 0, i32 0
  %162 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %161, i32 0, i32 1
  %163 = load i64, i64* %162, align 8
  %164 = icmp ne i64 %163, 0
  br i1 %164, label %165, label %201

165:                                              ; preds = %152
  %166 = load %struct.sge_ofld_txq*, %struct.sge_ofld_txq** %7, align 8
  %167 = getelementptr inbounds %struct.sge_ofld_txq, %struct.sge_ofld_txq* %166, i32 0, i32 2
  %168 = call i32 @tasklet_kill(i32* %167)
  %169 = load %struct.adapter*, %struct.adapter** %2, align 8
  %170 = load %struct.adapter*, %struct.adapter** %2, align 8
  %171 = getelementptr inbounds %struct.adapter, %struct.adapter* %170, i32 0, i32 1
  %172 = load i32, i32* %171, align 8
  %173 = load %struct.adapter*, %struct.adapter** %2, align 8
  %174 = getelementptr inbounds %struct.adapter, %struct.adapter* %173, i32 0, i32 1
  %175 = load i32, i32* %174, align 8
  %176 = load %struct.sge_ofld_txq*, %struct.sge_ofld_txq** %7, align 8
  %177 = getelementptr inbounds %struct.sge_ofld_txq, %struct.sge_ofld_txq* %176, i32 0, i32 0
  %178 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %177, i32 0, i32 0
  %179 = load i32, i32* %178, align 8
  %180 = call i32 @t4_ofld_eq_free(%struct.adapter* %169, i32 %172, i32 %175, i32 0, i32 %179)
  %181 = load %struct.adapter*, %struct.adapter** %2, align 8
  %182 = load %struct.sge_ofld_txq*, %struct.sge_ofld_txq** %7, align 8
  %183 = getelementptr inbounds %struct.sge_ofld_txq, %struct.sge_ofld_txq* %182, i32 0, i32 0
  %184 = load %struct.sge_ofld_txq*, %struct.sge_ofld_txq** %7, align 8
  %185 = getelementptr inbounds %struct.sge_ofld_txq, %struct.sge_ofld_txq* %184, i32 0, i32 0
  %186 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %185, i32 0, i32 3
  %187 = load i32, i32* %186, align 4
  %188 = call i32 @free_tx_desc(%struct.adapter* %181, %struct.TYPE_6__* %183, i32 %187, i32 0)
  %189 = load %struct.sge_ofld_txq*, %struct.sge_ofld_txq** %7, align 8
  %190 = getelementptr inbounds %struct.sge_ofld_txq, %struct.sge_ofld_txq* %189, i32 0, i32 0
  %191 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %190, i32 0, i32 2
  %192 = load i32, i32* %191, align 8
  %193 = call i32 @kfree(i32 %192)
  %194 = load %struct.sge_ofld_txq*, %struct.sge_ofld_txq** %7, align 8
  %195 = getelementptr inbounds %struct.sge_ofld_txq, %struct.sge_ofld_txq* %194, i32 0, i32 1
  %196 = call i32 @__skb_queue_purge(i32* %195)
  %197 = load %struct.adapter*, %struct.adapter** %2, align 8
  %198 = load %struct.sge_ofld_txq*, %struct.sge_ofld_txq** %7, align 8
  %199 = getelementptr inbounds %struct.sge_ofld_txq, %struct.sge_ofld_txq* %198, i32 0, i32 0
  %200 = call i32 @free_txq(%struct.adapter* %197, %struct.TYPE_6__* %199)
  br label %201

201:                                              ; preds = %165, %152
  br label %202

202:                                              ; preds = %201
  %203 = load i32, i32* %3, align 4
  %204 = add nsw i32 %203, 1
  store i32 %204, i32* %3, align 4
  br label %144

205:                                              ; preds = %144
  store i32 0, i32* %3, align 4
  br label %206

206:                                              ; preds = %252, %205
  %207 = load i32, i32* %3, align 4
  %208 = load %struct.adapter*, %struct.adapter** %2, align 8
  %209 = getelementptr inbounds %struct.adapter, %struct.adapter* %208, i32 0, i32 0
  %210 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %209, i32 0, i32 6
  %211 = load %struct.sge_ofld_txq*, %struct.sge_ofld_txq** %210, align 8
  %212 = call i32 @ARRAY_SIZE(%struct.sge_ofld_txq* %211)
  %213 = icmp slt i32 %207, %212
  br i1 %213, label %214, label %255

214:                                              ; preds = %206
  %215 = load %struct.adapter*, %struct.adapter** %2, align 8
  %216 = getelementptr inbounds %struct.adapter, %struct.adapter* %215, i32 0, i32 0
  %217 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %216, i32 0, i32 6
  %218 = load %struct.sge_ofld_txq*, %struct.sge_ofld_txq** %217, align 8
  %219 = load i32, i32* %3, align 4
  %220 = sext i32 %219 to i64
  %221 = getelementptr inbounds %struct.sge_ofld_txq, %struct.sge_ofld_txq* %218, i64 %220
  %222 = bitcast %struct.sge_ofld_txq* %221 to %struct.sge_ctrl_txq*
  store %struct.sge_ctrl_txq* %222, %struct.sge_ctrl_txq** %8, align 8
  %223 = load %struct.sge_ctrl_txq*, %struct.sge_ctrl_txq** %8, align 8
  %224 = getelementptr inbounds %struct.sge_ctrl_txq, %struct.sge_ctrl_txq* %223, i32 0, i32 0
  %225 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %224, i32 0, i32 1
  %226 = load i64, i64* %225, align 8
  %227 = icmp ne i64 %226, 0
  br i1 %227, label %228, label %251

228:                                              ; preds = %214
  %229 = load %struct.sge_ctrl_txq*, %struct.sge_ctrl_txq** %8, align 8
  %230 = getelementptr inbounds %struct.sge_ctrl_txq, %struct.sge_ctrl_txq* %229, i32 0, i32 2
  %231 = call i32 @tasklet_kill(i32* %230)
  %232 = load %struct.adapter*, %struct.adapter** %2, align 8
  %233 = load %struct.adapter*, %struct.adapter** %2, align 8
  %234 = getelementptr inbounds %struct.adapter, %struct.adapter* %233, i32 0, i32 1
  %235 = load i32, i32* %234, align 8
  %236 = load %struct.adapter*, %struct.adapter** %2, align 8
  %237 = getelementptr inbounds %struct.adapter, %struct.adapter* %236, i32 0, i32 1
  %238 = load i32, i32* %237, align 8
  %239 = load %struct.sge_ctrl_txq*, %struct.sge_ctrl_txq** %8, align 8
  %240 = getelementptr inbounds %struct.sge_ctrl_txq, %struct.sge_ctrl_txq* %239, i32 0, i32 0
  %241 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %240, i32 0, i32 0
  %242 = load i32, i32* %241, align 8
  %243 = call i32 @t4_ctrl_eq_free(%struct.adapter* %232, i32 %235, i32 %238, i32 0, i32 %242)
  %244 = load %struct.sge_ctrl_txq*, %struct.sge_ctrl_txq** %8, align 8
  %245 = getelementptr inbounds %struct.sge_ctrl_txq, %struct.sge_ctrl_txq* %244, i32 0, i32 1
  %246 = call i32 @__skb_queue_purge(i32* %245)
  %247 = load %struct.adapter*, %struct.adapter** %2, align 8
  %248 = load %struct.sge_ctrl_txq*, %struct.sge_ctrl_txq** %8, align 8
  %249 = getelementptr inbounds %struct.sge_ctrl_txq, %struct.sge_ctrl_txq* %248, i32 0, i32 0
  %250 = call i32 @free_txq(%struct.adapter* %247, %struct.TYPE_6__* %249)
  br label %251

251:                                              ; preds = %228, %214
  br label %252

252:                                              ; preds = %251
  %253 = load i32, i32* %3, align 4
  %254 = add nsw i32 %253, 1
  store i32 %254, i32* %3, align 4
  br label %206

255:                                              ; preds = %206
  %256 = load %struct.adapter*, %struct.adapter** %2, align 8
  %257 = getelementptr inbounds %struct.adapter, %struct.adapter* %256, i32 0, i32 0
  %258 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %257, i32 0, i32 5
  %259 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %258, i32 0, i32 0
  %260 = load i64, i64* %259, align 8
  %261 = icmp ne i64 %260, 0
  br i1 %261, label %262, label %268

262:                                              ; preds = %255
  %263 = load %struct.adapter*, %struct.adapter** %2, align 8
  %264 = load %struct.adapter*, %struct.adapter** %2, align 8
  %265 = getelementptr inbounds %struct.adapter, %struct.adapter* %264, i32 0, i32 0
  %266 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %265, i32 0, i32 5
  %267 = call i32 @free_rspq_fl(%struct.adapter* %263, %struct.TYPE_7__* %266, i32* null)
  br label %268

268:                                              ; preds = %262, %255
  %269 = load %struct.adapter*, %struct.adapter** %2, align 8
  %270 = getelementptr inbounds %struct.adapter, %struct.adapter* %269, i32 0, i32 0
  %271 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %270, i32 0, i32 4
  %272 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %271, i32 0, i32 0
  %273 = load i64, i64* %272, align 8
  %274 = icmp ne i64 %273, 0
  br i1 %274, label %275, label %281

275:                                              ; preds = %268
  %276 = load %struct.adapter*, %struct.adapter** %2, align 8
  %277 = load %struct.adapter*, %struct.adapter** %2, align 8
  %278 = getelementptr inbounds %struct.adapter, %struct.adapter* %277, i32 0, i32 0
  %279 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %278, i32 0, i32 4
  %280 = call i32 @free_rspq_fl(%struct.adapter* %276, %struct.TYPE_7__* %279, i32* null)
  br label %281

281:                                              ; preds = %275, %268
  %282 = load %struct.adapter*, %struct.adapter** %2, align 8
  %283 = getelementptr inbounds %struct.adapter, %struct.adapter* %282, i32 0, i32 0
  %284 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %283, i32 0, i32 3
  %285 = load i32, i32* %284, align 4
  %286 = call i32 @memset(i32 %285, i32 0, i32 4)
  ret void
}

declare dso_local i32 @free_rspq_fl(%struct.adapter*, %struct.TYPE_7__*, i32*) #1

declare dso_local i32 @t4_eth_eq_free(%struct.adapter*, i32, i32, i32, i32) #1

declare dso_local i32 @free_tx_desc(%struct.adapter*, %struct.TYPE_6__*, i32, i32) #1

declare dso_local i32 @kfree(i32) #1

declare dso_local i32 @free_txq(%struct.adapter*, %struct.TYPE_6__*) #1

declare dso_local i32 @ARRAY_SIZE(%struct.sge_ofld_txq*) #1

declare dso_local i32 @tasklet_kill(i32*) #1

declare dso_local i32 @t4_ofld_eq_free(%struct.adapter*, i32, i32, i32, i32) #1

declare dso_local i32 @__skb_queue_purge(i32*) #1

declare dso_local i32 @t4_ctrl_eq_free(%struct.adapter*, i32, i32, i32, i32) #1

declare dso_local i32 @memset(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
