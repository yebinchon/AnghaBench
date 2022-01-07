; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/e1000/extr_e1000_ethtool.c_e1000_set_ringparam.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/e1000/extr_e1000_ethtool.c_e1000_set_ringparam.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_ringparam = type { i32, i32, i64, i64 }
%struct.e1000_adapter = type { i32, i32, i32, %struct.e1000_tx_ring*, %struct.e1000_tx_ring*, i32, %struct.e1000_hw }
%struct.e1000_tx_ring = type { i8* }
%struct.e1000_hw = type { i64 }
%struct.e1000_rx_ring = type { i8* }

@EINVAL = common dso_local global i32 0, align 4
@__E1000_RESETTING = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@E1000_MIN_RXD = common dso_local global i64 0, align 8
@e1000_82544 = common dso_local global i64 0, align 8
@E1000_MAX_RXD = common dso_local global i64 0, align 8
@E1000_MAX_82544_RXD = common dso_local global i64 0, align 8
@REQ_RX_DESCRIPTOR_MULTIPLE = common dso_local global i32 0, align 4
@E1000_MIN_TXD = common dso_local global i64 0, align 8
@E1000_MAX_TXD = common dso_local global i64 0, align 8
@E1000_MAX_82544_TXD = common dso_local global i64 0, align 8
@REQ_TX_DESCRIPTOR_MULTIPLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.ethtool_ringparam*)* @e1000_set_ringparam to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @e1000_set_ringparam(%struct.net_device* %0, %struct.ethtool_ringparam* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.ethtool_ringparam*, align 8
  %6 = alloca %struct.e1000_adapter*, align 8
  %7 = alloca %struct.e1000_hw*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.e1000_tx_ring*, align 8
  %10 = alloca %struct.e1000_tx_ring*, align 8
  %11 = alloca %struct.e1000_rx_ring*, align 8
  %12 = alloca %struct.e1000_rx_ring*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.ethtool_ringparam* %1, %struct.ethtool_ringparam** %5, align 8
  %15 = load %struct.net_device*, %struct.net_device** %4, align 8
  %16 = call %struct.e1000_adapter* @netdev_priv(%struct.net_device* %15)
  store %struct.e1000_adapter* %16, %struct.e1000_adapter** %6, align 8
  %17 = load %struct.e1000_adapter*, %struct.e1000_adapter** %6, align 8
  %18 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %17, i32 0, i32 6
  store %struct.e1000_hw* %18, %struct.e1000_hw** %7, align 8
  %19 = load %struct.e1000_hw*, %struct.e1000_hw** %7, align 8
  %20 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  store i64 %21, i64* %8, align 8
  %22 = load %struct.ethtool_ringparam*, %struct.ethtool_ringparam** %5, align 8
  %23 = getelementptr inbounds %struct.ethtool_ringparam, %struct.ethtool_ringparam* %22, i32 0, i32 3
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %31, label %26

26:                                               ; preds = %2
  %27 = load %struct.ethtool_ringparam*, %struct.ethtool_ringparam** %5, align 8
  %28 = getelementptr inbounds %struct.ethtool_ringparam, %struct.ethtool_ringparam* %27, i32 0, i32 2
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %26, %2
  %32 = load i32, i32* @EINVAL, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %3, align 4
  br label %266

34:                                               ; preds = %26
  br label %35

35:                                               ; preds = %41, %34
  %36 = load i32, i32* @__E1000_RESETTING, align 4
  %37 = load %struct.e1000_adapter*, %struct.e1000_adapter** %6, align 8
  %38 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %37, i32 0, i32 2
  %39 = call i64 @test_and_set_bit(i32 %36, i32* %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %35
  %42 = call i32 @msleep(i32 1)
  br label %35

43:                                               ; preds = %35
  %44 = load %struct.e1000_adapter*, %struct.e1000_adapter** %6, align 8
  %45 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %44, i32 0, i32 5
  %46 = load i32, i32* %45, align 8
  %47 = call i64 @netif_running(i32 %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %43
  %50 = load %struct.e1000_adapter*, %struct.e1000_adapter** %6, align 8
  %51 = call i32 @e1000_down(%struct.e1000_adapter* %50)
  br label %52

52:                                               ; preds = %49, %43
  %53 = load %struct.e1000_adapter*, %struct.e1000_adapter** %6, align 8
  %54 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %53, i32 0, i32 3
  %55 = load %struct.e1000_tx_ring*, %struct.e1000_tx_ring** %54, align 8
  store %struct.e1000_tx_ring* %55, %struct.e1000_tx_ring** %10, align 8
  %56 = load %struct.e1000_adapter*, %struct.e1000_adapter** %6, align 8
  %57 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %56, i32 0, i32 4
  %58 = load %struct.e1000_tx_ring*, %struct.e1000_tx_ring** %57, align 8
  %59 = bitcast %struct.e1000_tx_ring* %58 to %struct.e1000_rx_ring*
  store %struct.e1000_rx_ring* %59, %struct.e1000_rx_ring** %12, align 8
  %60 = load i32, i32* @ENOMEM, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %14, align 4
  %62 = load %struct.e1000_adapter*, %struct.e1000_adapter** %6, align 8
  %63 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = load i32, i32* @GFP_KERNEL, align 4
  %66 = call %struct.e1000_tx_ring* @kcalloc(i32 %64, i32 8, i32 %65)
  store %struct.e1000_tx_ring* %66, %struct.e1000_tx_ring** %9, align 8
  %67 = load %struct.e1000_tx_ring*, %struct.e1000_tx_ring** %9, align 8
  %68 = icmp ne %struct.e1000_tx_ring* %67, null
  br i1 %68, label %70, label %69

69:                                               ; preds = %52
  br label %257

70:                                               ; preds = %52
  %71 = load %struct.e1000_adapter*, %struct.e1000_adapter** %6, align 8
  %72 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = load i32, i32* @GFP_KERNEL, align 4
  %75 = call %struct.e1000_tx_ring* @kcalloc(i32 %73, i32 8, i32 %74)
  %76 = bitcast %struct.e1000_tx_ring* %75 to %struct.e1000_rx_ring*
  store %struct.e1000_rx_ring* %76, %struct.e1000_rx_ring** %11, align 8
  %77 = load %struct.e1000_rx_ring*, %struct.e1000_rx_ring** %11, align 8
  %78 = icmp ne %struct.e1000_rx_ring* %77, null
  br i1 %78, label %80, label %79

79:                                               ; preds = %70
  br label %254

80:                                               ; preds = %70
  %81 = load %struct.e1000_tx_ring*, %struct.e1000_tx_ring** %9, align 8
  %82 = load %struct.e1000_adapter*, %struct.e1000_adapter** %6, align 8
  %83 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %82, i32 0, i32 3
  store %struct.e1000_tx_ring* %81, %struct.e1000_tx_ring** %83, align 8
  %84 = load %struct.e1000_rx_ring*, %struct.e1000_rx_ring** %11, align 8
  %85 = bitcast %struct.e1000_rx_ring* %84 to %struct.e1000_tx_ring*
  %86 = load %struct.e1000_adapter*, %struct.e1000_adapter** %6, align 8
  %87 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %86, i32 0, i32 4
  store %struct.e1000_tx_ring* %85, %struct.e1000_tx_ring** %87, align 8
  %88 = load %struct.ethtool_ringparam*, %struct.ethtool_ringparam** %5, align 8
  %89 = getelementptr inbounds %struct.ethtool_ringparam, %struct.ethtool_ringparam* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = load i64, i64* @E1000_MIN_RXD, align 8
  %92 = trunc i64 %91 to i32
  %93 = call i8* @max(i32 %90, i32 %92)
  %94 = load %struct.e1000_rx_ring*, %struct.e1000_rx_ring** %11, align 8
  %95 = getelementptr inbounds %struct.e1000_rx_ring, %struct.e1000_rx_ring* %94, i32 0, i32 0
  store i8* %93, i8** %95, align 8
  %96 = load %struct.e1000_rx_ring*, %struct.e1000_rx_ring** %11, align 8
  %97 = getelementptr inbounds %struct.e1000_rx_ring, %struct.e1000_rx_ring* %96, i32 0, i32 0
  %98 = load i8*, i8** %97, align 8
  %99 = load i64, i64* %8, align 8
  %100 = load i64, i64* @e1000_82544, align 8
  %101 = icmp slt i64 %99, %100
  br i1 %101, label %102, label %104

102:                                              ; preds = %80
  %103 = load i64, i64* @E1000_MAX_RXD, align 8
  br label %106

104:                                              ; preds = %80
  %105 = load i64, i64* @E1000_MAX_82544_RXD, align 8
  br label %106

106:                                              ; preds = %104, %102
  %107 = phi i64 [ %103, %102 ], [ %105, %104 ]
  %108 = trunc i64 %107 to i32
  %109 = call i8* @min(i8* %98, i32 %108)
  %110 = load %struct.e1000_rx_ring*, %struct.e1000_rx_ring** %11, align 8
  %111 = getelementptr inbounds %struct.e1000_rx_ring, %struct.e1000_rx_ring* %110, i32 0, i32 0
  store i8* %109, i8** %111, align 8
  %112 = load %struct.e1000_rx_ring*, %struct.e1000_rx_ring** %11, align 8
  %113 = getelementptr inbounds %struct.e1000_rx_ring, %struct.e1000_rx_ring* %112, i32 0, i32 0
  %114 = load i8*, i8** %113, align 8
  %115 = load i32, i32* @REQ_RX_DESCRIPTOR_MULTIPLE, align 4
  %116 = call i8* @ALIGN(i8* %114, i32 %115)
  %117 = load %struct.e1000_rx_ring*, %struct.e1000_rx_ring** %11, align 8
  %118 = getelementptr inbounds %struct.e1000_rx_ring, %struct.e1000_rx_ring* %117, i32 0, i32 0
  store i8* %116, i8** %118, align 8
  %119 = load %struct.ethtool_ringparam*, %struct.ethtool_ringparam** %5, align 8
  %120 = getelementptr inbounds %struct.ethtool_ringparam, %struct.ethtool_ringparam* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 8
  %122 = load i64, i64* @E1000_MIN_TXD, align 8
  %123 = trunc i64 %122 to i32
  %124 = call i8* @max(i32 %121, i32 %123)
  %125 = load %struct.e1000_tx_ring*, %struct.e1000_tx_ring** %9, align 8
  %126 = getelementptr inbounds %struct.e1000_tx_ring, %struct.e1000_tx_ring* %125, i32 0, i32 0
  store i8* %124, i8** %126, align 8
  %127 = load %struct.e1000_tx_ring*, %struct.e1000_tx_ring** %9, align 8
  %128 = getelementptr inbounds %struct.e1000_tx_ring, %struct.e1000_tx_ring* %127, i32 0, i32 0
  %129 = load i8*, i8** %128, align 8
  %130 = load i64, i64* %8, align 8
  %131 = load i64, i64* @e1000_82544, align 8
  %132 = icmp slt i64 %130, %131
  br i1 %132, label %133, label %135

133:                                              ; preds = %106
  %134 = load i64, i64* @E1000_MAX_TXD, align 8
  br label %137

135:                                              ; preds = %106
  %136 = load i64, i64* @E1000_MAX_82544_TXD, align 8
  br label %137

137:                                              ; preds = %135, %133
  %138 = phi i64 [ %134, %133 ], [ %136, %135 ]
  %139 = trunc i64 %138 to i32
  %140 = call i8* @min(i8* %129, i32 %139)
  %141 = load %struct.e1000_tx_ring*, %struct.e1000_tx_ring** %9, align 8
  %142 = getelementptr inbounds %struct.e1000_tx_ring, %struct.e1000_tx_ring* %141, i32 0, i32 0
  store i8* %140, i8** %142, align 8
  %143 = load %struct.e1000_tx_ring*, %struct.e1000_tx_ring** %9, align 8
  %144 = getelementptr inbounds %struct.e1000_tx_ring, %struct.e1000_tx_ring* %143, i32 0, i32 0
  %145 = load i8*, i8** %144, align 8
  %146 = load i32, i32* @REQ_TX_DESCRIPTOR_MULTIPLE, align 4
  %147 = call i8* @ALIGN(i8* %145, i32 %146)
  %148 = load %struct.e1000_tx_ring*, %struct.e1000_tx_ring** %9, align 8
  %149 = getelementptr inbounds %struct.e1000_tx_ring, %struct.e1000_tx_ring* %148, i32 0, i32 0
  store i8* %147, i8** %149, align 8
  store i32 0, i32* %13, align 4
  br label %150

150:                                              ; preds = %165, %137
  %151 = load i32, i32* %13, align 4
  %152 = load %struct.e1000_adapter*, %struct.e1000_adapter** %6, align 8
  %153 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 8
  %155 = icmp slt i32 %151, %154
  br i1 %155, label %156, label %168

156:                                              ; preds = %150
  %157 = load %struct.e1000_tx_ring*, %struct.e1000_tx_ring** %9, align 8
  %158 = getelementptr inbounds %struct.e1000_tx_ring, %struct.e1000_tx_ring* %157, i32 0, i32 0
  %159 = load i8*, i8** %158, align 8
  %160 = load %struct.e1000_tx_ring*, %struct.e1000_tx_ring** %9, align 8
  %161 = load i32, i32* %13, align 4
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds %struct.e1000_tx_ring, %struct.e1000_tx_ring* %160, i64 %162
  %164 = getelementptr inbounds %struct.e1000_tx_ring, %struct.e1000_tx_ring* %163, i32 0, i32 0
  store i8* %159, i8** %164, align 8
  br label %165

165:                                              ; preds = %156
  %166 = load i32, i32* %13, align 4
  %167 = add nsw i32 %166, 1
  store i32 %167, i32* %13, align 4
  br label %150

168:                                              ; preds = %150
  store i32 0, i32* %13, align 4
  br label %169

169:                                              ; preds = %184, %168
  %170 = load i32, i32* %13, align 4
  %171 = load %struct.e1000_adapter*, %struct.e1000_adapter** %6, align 8
  %172 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %171, i32 0, i32 1
  %173 = load i32, i32* %172, align 4
  %174 = icmp slt i32 %170, %173
  br i1 %174, label %175, label %187

175:                                              ; preds = %169
  %176 = load %struct.e1000_rx_ring*, %struct.e1000_rx_ring** %11, align 8
  %177 = getelementptr inbounds %struct.e1000_rx_ring, %struct.e1000_rx_ring* %176, i32 0, i32 0
  %178 = load i8*, i8** %177, align 8
  %179 = load %struct.e1000_rx_ring*, %struct.e1000_rx_ring** %11, align 8
  %180 = load i32, i32* %13, align 4
  %181 = sext i32 %180 to i64
  %182 = getelementptr inbounds %struct.e1000_rx_ring, %struct.e1000_rx_ring* %179, i64 %181
  %183 = getelementptr inbounds %struct.e1000_rx_ring, %struct.e1000_rx_ring* %182, i32 0, i32 0
  store i8* %178, i8** %183, align 8
  br label %184

184:                                              ; preds = %175
  %185 = load i32, i32* %13, align 4
  %186 = add nsw i32 %185, 1
  store i32 %186, i32* %13, align 4
  br label %169

187:                                              ; preds = %169
  %188 = load %struct.e1000_adapter*, %struct.e1000_adapter** %6, align 8
  %189 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %188, i32 0, i32 5
  %190 = load i32, i32* %189, align 8
  %191 = call i64 @netif_running(i32 %190)
  %192 = icmp ne i64 %191, 0
  br i1 %192, label %193, label %235

193:                                              ; preds = %187
  %194 = load %struct.e1000_adapter*, %struct.e1000_adapter** %6, align 8
  %195 = call i32 @e1000_setup_all_rx_resources(%struct.e1000_adapter* %194)
  store i32 %195, i32* %14, align 4
  %196 = load i32, i32* %14, align 4
  %197 = icmp ne i32 %196, 0
  br i1 %197, label %198, label %199

198:                                              ; preds = %193
  br label %243

199:                                              ; preds = %193
  %200 = load %struct.e1000_adapter*, %struct.e1000_adapter** %6, align 8
  %201 = call i32 @e1000_setup_all_tx_resources(%struct.e1000_adapter* %200)
  store i32 %201, i32* %14, align 4
  %202 = load i32, i32* %14, align 4
  %203 = icmp ne i32 %202, 0
  br i1 %203, label %204, label %205

204:                                              ; preds = %199
  br label %240

205:                                              ; preds = %199
  %206 = load %struct.e1000_rx_ring*, %struct.e1000_rx_ring** %12, align 8
  %207 = bitcast %struct.e1000_rx_ring* %206 to %struct.e1000_tx_ring*
  %208 = load %struct.e1000_adapter*, %struct.e1000_adapter** %6, align 8
  %209 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %208, i32 0, i32 4
  store %struct.e1000_tx_ring* %207, %struct.e1000_tx_ring** %209, align 8
  %210 = load %struct.e1000_tx_ring*, %struct.e1000_tx_ring** %10, align 8
  %211 = load %struct.e1000_adapter*, %struct.e1000_adapter** %6, align 8
  %212 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %211, i32 0, i32 3
  store %struct.e1000_tx_ring* %210, %struct.e1000_tx_ring** %212, align 8
  %213 = load %struct.e1000_adapter*, %struct.e1000_adapter** %6, align 8
  %214 = call i32 @e1000_free_all_rx_resources(%struct.e1000_adapter* %213)
  %215 = load %struct.e1000_adapter*, %struct.e1000_adapter** %6, align 8
  %216 = call i32 @e1000_free_all_tx_resources(%struct.e1000_adapter* %215)
  %217 = load %struct.e1000_tx_ring*, %struct.e1000_tx_ring** %10, align 8
  %218 = call i32 @kfree(%struct.e1000_tx_ring* %217)
  %219 = load %struct.e1000_rx_ring*, %struct.e1000_rx_ring** %12, align 8
  %220 = bitcast %struct.e1000_rx_ring* %219 to %struct.e1000_tx_ring*
  %221 = call i32 @kfree(%struct.e1000_tx_ring* %220)
  %222 = load %struct.e1000_rx_ring*, %struct.e1000_rx_ring** %11, align 8
  %223 = bitcast %struct.e1000_rx_ring* %222 to %struct.e1000_tx_ring*
  %224 = load %struct.e1000_adapter*, %struct.e1000_adapter** %6, align 8
  %225 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %224, i32 0, i32 4
  store %struct.e1000_tx_ring* %223, %struct.e1000_tx_ring** %225, align 8
  %226 = load %struct.e1000_tx_ring*, %struct.e1000_tx_ring** %9, align 8
  %227 = load %struct.e1000_adapter*, %struct.e1000_adapter** %6, align 8
  %228 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %227, i32 0, i32 3
  store %struct.e1000_tx_ring* %226, %struct.e1000_tx_ring** %228, align 8
  %229 = load %struct.e1000_adapter*, %struct.e1000_adapter** %6, align 8
  %230 = call i32 @e1000_up(%struct.e1000_adapter* %229)
  store i32 %230, i32* %14, align 4
  %231 = load i32, i32* %14, align 4
  %232 = icmp ne i32 %231, 0
  br i1 %232, label %233, label %234

233:                                              ; preds = %205
  br label %260

234:                                              ; preds = %205
  br label %235

235:                                              ; preds = %234, %187
  %236 = load i32, i32* @__E1000_RESETTING, align 4
  %237 = load %struct.e1000_adapter*, %struct.e1000_adapter** %6, align 8
  %238 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %237, i32 0, i32 2
  %239 = call i32 @clear_bit(i32 %236, i32* %238)
  store i32 0, i32* %3, align 4
  br label %266

240:                                              ; preds = %204
  %241 = load %struct.e1000_adapter*, %struct.e1000_adapter** %6, align 8
  %242 = call i32 @e1000_free_all_rx_resources(%struct.e1000_adapter* %241)
  br label %243

243:                                              ; preds = %240, %198
  %244 = load %struct.e1000_rx_ring*, %struct.e1000_rx_ring** %12, align 8
  %245 = bitcast %struct.e1000_rx_ring* %244 to %struct.e1000_tx_ring*
  %246 = load %struct.e1000_adapter*, %struct.e1000_adapter** %6, align 8
  %247 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %246, i32 0, i32 4
  store %struct.e1000_tx_ring* %245, %struct.e1000_tx_ring** %247, align 8
  %248 = load %struct.e1000_tx_ring*, %struct.e1000_tx_ring** %10, align 8
  %249 = load %struct.e1000_adapter*, %struct.e1000_adapter** %6, align 8
  %250 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %249, i32 0, i32 3
  store %struct.e1000_tx_ring* %248, %struct.e1000_tx_ring** %250, align 8
  %251 = load %struct.e1000_rx_ring*, %struct.e1000_rx_ring** %11, align 8
  %252 = bitcast %struct.e1000_rx_ring* %251 to %struct.e1000_tx_ring*
  %253 = call i32 @kfree(%struct.e1000_tx_ring* %252)
  br label %254

254:                                              ; preds = %243, %79
  %255 = load %struct.e1000_tx_ring*, %struct.e1000_tx_ring** %9, align 8
  %256 = call i32 @kfree(%struct.e1000_tx_ring* %255)
  br label %257

257:                                              ; preds = %254, %69
  %258 = load %struct.e1000_adapter*, %struct.e1000_adapter** %6, align 8
  %259 = call i32 @e1000_up(%struct.e1000_adapter* %258)
  br label %260

260:                                              ; preds = %257, %233
  %261 = load i32, i32* @__E1000_RESETTING, align 4
  %262 = load %struct.e1000_adapter*, %struct.e1000_adapter** %6, align 8
  %263 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %262, i32 0, i32 2
  %264 = call i32 @clear_bit(i32 %261, i32* %263)
  %265 = load i32, i32* %14, align 4
  store i32 %265, i32* %3, align 4
  br label %266

266:                                              ; preds = %260, %235, %31
  %267 = load i32, i32* %3, align 4
  ret i32 %267
}

declare dso_local %struct.e1000_adapter* @netdev_priv(%struct.net_device*) #1

declare dso_local i64 @test_and_set_bit(i32, i32*) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i64 @netif_running(i32) #1

declare dso_local i32 @e1000_down(%struct.e1000_adapter*) #1

declare dso_local %struct.e1000_tx_ring* @kcalloc(i32, i32, i32) #1

declare dso_local i8* @max(i32, i32) #1

declare dso_local i8* @min(i8*, i32) #1

declare dso_local i8* @ALIGN(i8*, i32) #1

declare dso_local i32 @e1000_setup_all_rx_resources(%struct.e1000_adapter*) #1

declare dso_local i32 @e1000_setup_all_tx_resources(%struct.e1000_adapter*) #1

declare dso_local i32 @e1000_free_all_rx_resources(%struct.e1000_adapter*) #1

declare dso_local i32 @e1000_free_all_tx_resources(%struct.e1000_adapter*) #1

declare dso_local i32 @kfree(%struct.e1000_tx_ring*) #1

declare dso_local i32 @e1000_up(%struct.e1000_adapter*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
