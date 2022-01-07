; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_sh_eth.c_sh_eth_rx.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_sh_eth.c_sh_eth_rx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i64, i32 }
%struct.sh_eth_private = type { i32, i32, i32, %struct.sk_buff**, %struct.sh_eth_rxdesc*, %struct.TYPE_4__, %struct.TYPE_3__* }
%struct.sk_buff = type { i32, i32, %struct.net_device*, i32, i32 }
%struct.sh_eth_rxdesc = type { i32, i32, i32, i64 }
%struct.TYPE_4__ = type { i64, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_3__ = type { i32 }

@RX_RING_SIZE = common dso_local global i32 0, align 4
@RD_RACT = common dso_local global i32 0, align 4
@RDFEND = common dso_local global i32 0, align 4
@RD_RFS1 = common dso_local global i32 0, align 4
@RD_RFS2 = common dso_local global i32 0, align 4
@RD_RFS3 = common dso_local global i32 0, align 4
@RD_RFS4 = common dso_local global i32 0, align 4
@RD_RFS5 = common dso_local global i32 0, align 4
@RD_RFS6 = common dso_local global i32 0, align 4
@RD_RFS10 = common dso_local global i32 0, align 4
@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@CHECKSUM_NONE = common dso_local global i32 0, align 4
@RD_RFP = common dso_local global i32 0, align 4
@RD_RDEL = common dso_local global i32 0, align 4
@EDRRR = common dso_local global i64 0, align 8
@EDRRR_R = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @sh_eth_rx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sh_eth_rx(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.sh_eth_private*, align 8
  %4 = alloca %struct.sh_eth_rxdesc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %10 = load %struct.net_device*, %struct.net_device** %2, align 8
  %11 = call %struct.sh_eth_private* @netdev_priv(%struct.net_device* %10)
  store %struct.sh_eth_private* %11, %struct.sh_eth_private** %3, align 8
  %12 = load %struct.sh_eth_private*, %struct.sh_eth_private** %3, align 8
  %13 = getelementptr inbounds %struct.sh_eth_private, %struct.sh_eth_private* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = load i32, i32* @RX_RING_SIZE, align 4
  %16 = srem i32 %14, %15
  store i32 %16, i32* %5, align 4
  %17 = load %struct.sh_eth_private*, %struct.sh_eth_private** %3, align 8
  %18 = getelementptr inbounds %struct.sh_eth_private, %struct.sh_eth_private* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @RX_RING_SIZE, align 4
  %21 = add nsw i32 %19, %20
  %22 = load %struct.sh_eth_private*, %struct.sh_eth_private** %3, align 8
  %23 = getelementptr inbounds %struct.sh_eth_private, %struct.sh_eth_private* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = sub nsw i32 %21, %24
  store i32 %25, i32* %6, align 4
  store i64 0, i64* %8, align 8
  %26 = load %struct.sh_eth_private*, %struct.sh_eth_private** %3, align 8
  %27 = getelementptr inbounds %struct.sh_eth_private, %struct.sh_eth_private* %26, i32 0, i32 4
  %28 = load %struct.sh_eth_rxdesc*, %struct.sh_eth_rxdesc** %27, align 8
  %29 = load i32, i32* %5, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.sh_eth_rxdesc, %struct.sh_eth_rxdesc* %28, i64 %30
  store %struct.sh_eth_rxdesc* %31, %struct.sh_eth_rxdesc** %4, align 8
  br label %32

32:                                               ; preds = %207, %1
  %33 = load %struct.sh_eth_rxdesc*, %struct.sh_eth_rxdesc** %4, align 8
  %34 = getelementptr inbounds %struct.sh_eth_rxdesc, %struct.sh_eth_rxdesc* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = load %struct.sh_eth_private*, %struct.sh_eth_private** %3, align 8
  %37 = load i32, i32* @RD_RACT, align 4
  %38 = call i32 @cpu_to_edmac(%struct.sh_eth_private* %36, i32 %37)
  %39 = and i32 %35, %38
  %40 = icmp ne i32 %39, 0
  %41 = xor i1 %40, true
  br i1 %41, label %42, label %227

42:                                               ; preds = %32
  %43 = load %struct.sh_eth_private*, %struct.sh_eth_private** %3, align 8
  %44 = load %struct.sh_eth_rxdesc*, %struct.sh_eth_rxdesc** %4, align 8
  %45 = getelementptr inbounds %struct.sh_eth_rxdesc, %struct.sh_eth_rxdesc* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = call i32 @edmac_to_cpu(%struct.sh_eth_private* %43, i32 %46)
  store i32 %47, i32* %9, align 4
  %48 = load %struct.sh_eth_rxdesc*, %struct.sh_eth_rxdesc** %4, align 8
  %49 = getelementptr inbounds %struct.sh_eth_rxdesc, %struct.sh_eth_rxdesc* %48, i32 0, i32 3
  %50 = load i64, i64* %49, align 8
  store i64 %50, i64* %8, align 8
  %51 = load i32, i32* %6, align 4
  %52 = add nsw i32 %51, -1
  store i32 %52, i32* %6, align 4
  %53 = icmp slt i32 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %42
  br label %227

55:                                               ; preds = %42
  %56 = load i32, i32* %9, align 4
  %57 = load i32, i32* @RDFEND, align 4
  %58 = and i32 %56, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %66, label %60

60:                                               ; preds = %55
  %61 = load %struct.sh_eth_private*, %struct.sh_eth_private** %3, align 8
  %62 = getelementptr inbounds %struct.sh_eth_private, %struct.sh_eth_private* %61, i32 0, i32 5
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 4
  %64 = load i32, i32* %63, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %63, align 4
  br label %66

66:                                               ; preds = %60, %55
  %67 = load i32, i32* %9, align 4
  %68 = load i32, i32* @RD_RFS1, align 4
  %69 = load i32, i32* @RD_RFS2, align 4
  %70 = or i32 %68, %69
  %71 = load i32, i32* @RD_RFS3, align 4
  %72 = or i32 %70, %71
  %73 = load i32, i32* @RD_RFS4, align 4
  %74 = or i32 %72, %73
  %75 = load i32, i32* @RD_RFS5, align 4
  %76 = or i32 %74, %75
  %77 = load i32, i32* @RD_RFS6, align 4
  %78 = or i32 %76, %77
  %79 = load i32, i32* @RD_RFS10, align 4
  %80 = or i32 %78, %79
  %81 = and i32 %67, %80
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %155

83:                                               ; preds = %66
  %84 = load %struct.sh_eth_private*, %struct.sh_eth_private** %3, align 8
  %85 = getelementptr inbounds %struct.sh_eth_private, %struct.sh_eth_private* %84, i32 0, i32 5
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i32 0, i32 7
  %87 = load i32, i32* %86, align 8
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %86, align 8
  %89 = load i32, i32* %9, align 4
  %90 = load i32, i32* @RD_RFS1, align 4
  %91 = and i32 %89, %90
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %99

93:                                               ; preds = %83
  %94 = load %struct.sh_eth_private*, %struct.sh_eth_private** %3, align 8
  %95 = getelementptr inbounds %struct.sh_eth_private, %struct.sh_eth_private* %94, i32 0, i32 5
  %96 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %95, i32 0, i32 6
  %97 = load i32, i32* %96, align 4
  %98 = add nsw i32 %97, 1
  store i32 %98, i32* %96, align 4
  br label %99

99:                                               ; preds = %93, %83
  %100 = load i32, i32* %9, align 4
  %101 = load i32, i32* @RD_RFS2, align 4
  %102 = and i32 %100, %101
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %110

104:                                              ; preds = %99
  %105 = load %struct.sh_eth_private*, %struct.sh_eth_private** %3, align 8
  %106 = getelementptr inbounds %struct.sh_eth_private, %struct.sh_eth_private* %105, i32 0, i32 5
  %107 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %106, i32 0, i32 5
  %108 = load i32, i32* %107, align 8
  %109 = add nsw i32 %108, 1
  store i32 %109, i32* %107, align 8
  br label %110

110:                                              ; preds = %104, %99
  %111 = load i32, i32* %9, align 4
  %112 = load i32, i32* @RD_RFS3, align 4
  %113 = and i32 %111, %112
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %121

115:                                              ; preds = %110
  %116 = load %struct.sh_eth_private*, %struct.sh_eth_private** %3, align 8
  %117 = getelementptr inbounds %struct.sh_eth_private, %struct.sh_eth_private* %116, i32 0, i32 5
  %118 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %117, i32 0, i32 4
  %119 = load i32, i32* %118, align 4
  %120 = add nsw i32 %119, 1
  store i32 %120, i32* %118, align 4
  br label %121

121:                                              ; preds = %115, %110
  %122 = load i32, i32* %9, align 4
  %123 = load i32, i32* @RD_RFS4, align 4
  %124 = and i32 %122, %123
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %132

126:                                              ; preds = %121
  %127 = load %struct.sh_eth_private*, %struct.sh_eth_private** %3, align 8
  %128 = getelementptr inbounds %struct.sh_eth_private, %struct.sh_eth_private* %127, i32 0, i32 5
  %129 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %128, i32 0, i32 4
  %130 = load i32, i32* %129, align 4
  %131 = add nsw i32 %130, 1
  store i32 %131, i32* %129, align 4
  br label %132

132:                                              ; preds = %126, %121
  %133 = load i32, i32* %9, align 4
  %134 = load i32, i32* @RD_RFS6, align 4
  %135 = and i32 %133, %134
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %143

137:                                              ; preds = %132
  %138 = load %struct.sh_eth_private*, %struct.sh_eth_private** %3, align 8
  %139 = getelementptr inbounds %struct.sh_eth_private, %struct.sh_eth_private* %138, i32 0, i32 5
  %140 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %139, i32 0, i32 3
  %141 = load i32, i32* %140, align 8
  %142 = add nsw i32 %141, 1
  store i32 %142, i32* %140, align 8
  br label %143

143:                                              ; preds = %137, %132
  %144 = load i32, i32* %9, align 4
  %145 = load i32, i32* @RD_RFS10, align 4
  %146 = and i32 %144, %145
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %154

148:                                              ; preds = %143
  %149 = load %struct.sh_eth_private*, %struct.sh_eth_private** %3, align 8
  %150 = getelementptr inbounds %struct.sh_eth_private, %struct.sh_eth_private* %149, i32 0, i32 5
  %151 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %150, i32 0, i32 2
  %152 = load i32, i32* %151, align 4
  %153 = add nsw i32 %152, 1
  store i32 %153, i32* %151, align 4
  br label %154

154:                                              ; preds = %148, %143
  br label %207

155:                                              ; preds = %66
  %156 = load %struct.sh_eth_private*, %struct.sh_eth_private** %3, align 8
  %157 = getelementptr inbounds %struct.sh_eth_private, %struct.sh_eth_private* %156, i32 0, i32 6
  %158 = load %struct.TYPE_3__*, %struct.TYPE_3__** %157, align 8
  %159 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %158, i32 0, i32 0
  %160 = load i32, i32* %159, align 4
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %172, label %162

162:                                              ; preds = %155
  %163 = load %struct.sh_eth_rxdesc*, %struct.sh_eth_rxdesc** %4, align 8
  %164 = getelementptr inbounds %struct.sh_eth_rxdesc, %struct.sh_eth_rxdesc* %163, i32 0, i32 1
  %165 = load i32, i32* %164, align 4
  %166 = call i32 @ALIGN(i32 %165, i32 4)
  %167 = call i32 @phys_to_virt(i32 %166)
  %168 = load i64, i64* %8, align 8
  %169 = add nsw i64 %168, 2
  %170 = trunc i64 %169 to i32
  %171 = call i32 @sh_eth_soft_swap(i32 %167, i32 %170)
  br label %172

172:                                              ; preds = %162, %155
  %173 = load %struct.sh_eth_private*, %struct.sh_eth_private** %3, align 8
  %174 = getelementptr inbounds %struct.sh_eth_private, %struct.sh_eth_private* %173, i32 0, i32 3
  %175 = load %struct.sk_buff**, %struct.sk_buff*** %174, align 8
  %176 = load i32, i32* %5, align 4
  %177 = sext i32 %176 to i64
  %178 = getelementptr inbounds %struct.sk_buff*, %struct.sk_buff** %175, i64 %177
  %179 = load %struct.sk_buff*, %struct.sk_buff** %178, align 8
  store %struct.sk_buff* %179, %struct.sk_buff** %7, align 8
  %180 = load %struct.sh_eth_private*, %struct.sh_eth_private** %3, align 8
  %181 = getelementptr inbounds %struct.sh_eth_private, %struct.sh_eth_private* %180, i32 0, i32 3
  %182 = load %struct.sk_buff**, %struct.sk_buff*** %181, align 8
  %183 = load i32, i32* %5, align 4
  %184 = sext i32 %183 to i64
  %185 = getelementptr inbounds %struct.sk_buff*, %struct.sk_buff** %182, i64 %184
  store %struct.sk_buff* null, %struct.sk_buff** %185, align 8
  %186 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %187 = load i64, i64* %8, align 8
  %188 = call i32 @skb_put(%struct.sk_buff* %186, i64 %187)
  %189 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %190 = load %struct.net_device*, %struct.net_device** %2, align 8
  %191 = call i32 @eth_type_trans(%struct.sk_buff* %189, %struct.net_device* %190)
  %192 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %193 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %192, i32 0, i32 4
  store i32 %191, i32* %193, align 4
  %194 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %195 = call i32 @netif_rx(%struct.sk_buff* %194)
  %196 = load %struct.sh_eth_private*, %struct.sh_eth_private** %3, align 8
  %197 = getelementptr inbounds %struct.sh_eth_private, %struct.sh_eth_private* %196, i32 0, i32 5
  %198 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %197, i32 0, i32 1
  %199 = load i32, i32* %198, align 8
  %200 = add nsw i32 %199, 1
  store i32 %200, i32* %198, align 8
  %201 = load i64, i64* %8, align 8
  %202 = load %struct.sh_eth_private*, %struct.sh_eth_private** %3, align 8
  %203 = getelementptr inbounds %struct.sh_eth_private, %struct.sh_eth_private* %202, i32 0, i32 5
  %204 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %203, i32 0, i32 0
  %205 = load i64, i64* %204, align 8
  %206 = add nsw i64 %205, %201
  store i64 %206, i64* %204, align 8
  br label %207

207:                                              ; preds = %172, %154
  %208 = load %struct.sh_eth_private*, %struct.sh_eth_private** %3, align 8
  %209 = load i32, i32* @RD_RACT, align 4
  %210 = call i32 @cpu_to_edmac(%struct.sh_eth_private* %208, i32 %209)
  %211 = load %struct.sh_eth_rxdesc*, %struct.sh_eth_rxdesc** %4, align 8
  %212 = getelementptr inbounds %struct.sh_eth_rxdesc, %struct.sh_eth_rxdesc* %211, i32 0, i32 0
  %213 = load i32, i32* %212, align 8
  %214 = or i32 %213, %210
  store i32 %214, i32* %212, align 8
  %215 = load %struct.sh_eth_private*, %struct.sh_eth_private** %3, align 8
  %216 = getelementptr inbounds %struct.sh_eth_private, %struct.sh_eth_private* %215, i32 0, i32 0
  %217 = load i32, i32* %216, align 8
  %218 = add nsw i32 %217, 1
  store i32 %218, i32* %216, align 8
  %219 = load i32, i32* @RX_RING_SIZE, align 4
  %220 = srem i32 %218, %219
  store i32 %220, i32* %5, align 4
  %221 = load %struct.sh_eth_private*, %struct.sh_eth_private** %3, align 8
  %222 = getelementptr inbounds %struct.sh_eth_private, %struct.sh_eth_private* %221, i32 0, i32 4
  %223 = load %struct.sh_eth_rxdesc*, %struct.sh_eth_rxdesc** %222, align 8
  %224 = load i32, i32* %5, align 4
  %225 = sext i32 %224 to i64
  %226 = getelementptr inbounds %struct.sh_eth_rxdesc, %struct.sh_eth_rxdesc* %223, i64 %225
  store %struct.sh_eth_rxdesc* %226, %struct.sh_eth_rxdesc** %4, align 8
  br label %32

227:                                              ; preds = %54, %32
  br label %228

228:                                              ; preds = %332, %227
  %229 = load %struct.sh_eth_private*, %struct.sh_eth_private** %3, align 8
  %230 = getelementptr inbounds %struct.sh_eth_private, %struct.sh_eth_private* %229, i32 0, i32 0
  %231 = load i32, i32* %230, align 8
  %232 = load %struct.sh_eth_private*, %struct.sh_eth_private** %3, align 8
  %233 = getelementptr inbounds %struct.sh_eth_private, %struct.sh_eth_private* %232, i32 0, i32 1
  %234 = load i32, i32* %233, align 4
  %235 = sub nsw i32 %231, %234
  %236 = icmp sgt i32 %235, 0
  br i1 %236, label %237, label %337

237:                                              ; preds = %228
  %238 = load %struct.sh_eth_private*, %struct.sh_eth_private** %3, align 8
  %239 = getelementptr inbounds %struct.sh_eth_private, %struct.sh_eth_private* %238, i32 0, i32 1
  %240 = load i32, i32* %239, align 4
  %241 = load i32, i32* @RX_RING_SIZE, align 4
  %242 = srem i32 %240, %241
  store i32 %242, i32* %5, align 4
  %243 = load %struct.sh_eth_private*, %struct.sh_eth_private** %3, align 8
  %244 = getelementptr inbounds %struct.sh_eth_private, %struct.sh_eth_private* %243, i32 0, i32 4
  %245 = load %struct.sh_eth_rxdesc*, %struct.sh_eth_rxdesc** %244, align 8
  %246 = load i32, i32* %5, align 4
  %247 = sext i32 %246 to i64
  %248 = getelementptr inbounds %struct.sh_eth_rxdesc, %struct.sh_eth_rxdesc* %245, i64 %247
  store %struct.sh_eth_rxdesc* %248, %struct.sh_eth_rxdesc** %4, align 8
  %249 = load %struct.sh_eth_private*, %struct.sh_eth_private** %3, align 8
  %250 = getelementptr inbounds %struct.sh_eth_private, %struct.sh_eth_private* %249, i32 0, i32 2
  %251 = load i32, i32* %250, align 8
  %252 = call i32 @ALIGN(i32 %251, i32 16)
  %253 = load %struct.sh_eth_rxdesc*, %struct.sh_eth_rxdesc** %4, align 8
  %254 = getelementptr inbounds %struct.sh_eth_rxdesc, %struct.sh_eth_rxdesc* %253, i32 0, i32 2
  store i32 %252, i32* %254, align 8
  %255 = load %struct.sh_eth_private*, %struct.sh_eth_private** %3, align 8
  %256 = getelementptr inbounds %struct.sh_eth_private, %struct.sh_eth_private* %255, i32 0, i32 3
  %257 = load %struct.sk_buff**, %struct.sk_buff*** %256, align 8
  %258 = load i32, i32* %5, align 4
  %259 = sext i32 %258 to i64
  %260 = getelementptr inbounds %struct.sk_buff*, %struct.sk_buff** %257, i64 %259
  %261 = load %struct.sk_buff*, %struct.sk_buff** %260, align 8
  %262 = icmp eq %struct.sk_buff* %261, null
  br i1 %262, label %263, label %304

263:                                              ; preds = %237
  %264 = load %struct.sh_eth_private*, %struct.sh_eth_private** %3, align 8
  %265 = getelementptr inbounds %struct.sh_eth_private, %struct.sh_eth_private* %264, i32 0, i32 2
  %266 = load i32, i32* %265, align 8
  %267 = call %struct.sk_buff* @dev_alloc_skb(i32 %266)
  store %struct.sk_buff* %267, %struct.sk_buff** %7, align 8
  %268 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %269 = load %struct.sh_eth_private*, %struct.sh_eth_private** %3, align 8
  %270 = getelementptr inbounds %struct.sh_eth_private, %struct.sh_eth_private* %269, i32 0, i32 3
  %271 = load %struct.sk_buff**, %struct.sk_buff*** %270, align 8
  %272 = load i32, i32* %5, align 4
  %273 = sext i32 %272 to i64
  %274 = getelementptr inbounds %struct.sk_buff*, %struct.sk_buff** %271, i64 %273
  store %struct.sk_buff* %268, %struct.sk_buff** %274, align 8
  %275 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %276 = icmp eq %struct.sk_buff* %275, null
  br i1 %276, label %277, label %278

277:                                              ; preds = %263
  br label %337

278:                                              ; preds = %263
  %279 = load %struct.net_device*, %struct.net_device** %2, align 8
  %280 = getelementptr inbounds %struct.net_device, %struct.net_device* %279, i32 0, i32 1
  %281 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %282 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %281, i32 0, i32 3
  %283 = load i32, i32* %282, align 8
  %284 = load %struct.sh_eth_private*, %struct.sh_eth_private** %3, align 8
  %285 = getelementptr inbounds %struct.sh_eth_private, %struct.sh_eth_private* %284, i32 0, i32 2
  %286 = load i32, i32* %285, align 8
  %287 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %288 = call i32 @dma_map_single(i32* %280, i32 %283, i32 %286, i32 %287)
  %289 = load %struct.net_device*, %struct.net_device** %2, align 8
  %290 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %291 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %290, i32 0, i32 2
  store %struct.net_device* %289, %struct.net_device** %291, align 8
  %292 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %293 = call i32 @sh_eth_set_receive_align(%struct.sk_buff* %292)
  %294 = load i32, i32* @CHECKSUM_NONE, align 4
  %295 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %296 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %295, i32 0, i32 1
  store i32 %294, i32* %296, align 4
  %297 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %298 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %297, i32 0, i32 0
  %299 = load i32, i32* %298, align 8
  %300 = call i32 @PTR_ALIGN(i32 %299, i32 4)
  %301 = call i32 @virt_to_phys(i32 %300)
  %302 = load %struct.sh_eth_rxdesc*, %struct.sh_eth_rxdesc** %4, align 8
  %303 = getelementptr inbounds %struct.sh_eth_rxdesc, %struct.sh_eth_rxdesc* %302, i32 0, i32 1
  store i32 %301, i32* %303, align 4
  br label %304

304:                                              ; preds = %278, %237
  %305 = load i32, i32* %5, align 4
  %306 = load i32, i32* @RX_RING_SIZE, align 4
  %307 = sub nsw i32 %306, 1
  %308 = icmp sge i32 %305, %307
  br i1 %308, label %309, label %321

309:                                              ; preds = %304
  %310 = load %struct.sh_eth_private*, %struct.sh_eth_private** %3, align 8
  %311 = load i32, i32* @RD_RACT, align 4
  %312 = load i32, i32* @RD_RFP, align 4
  %313 = or i32 %311, %312
  %314 = load i32, i32* @RD_RDEL, align 4
  %315 = or i32 %313, %314
  %316 = call i32 @cpu_to_edmac(%struct.sh_eth_private* %310, i32 %315)
  %317 = load %struct.sh_eth_rxdesc*, %struct.sh_eth_rxdesc** %4, align 8
  %318 = getelementptr inbounds %struct.sh_eth_rxdesc, %struct.sh_eth_rxdesc* %317, i32 0, i32 0
  %319 = load i32, i32* %318, align 8
  %320 = or i32 %319, %316
  store i32 %320, i32* %318, align 8
  br label %331

321:                                              ; preds = %304
  %322 = load %struct.sh_eth_private*, %struct.sh_eth_private** %3, align 8
  %323 = load i32, i32* @RD_RACT, align 4
  %324 = load i32, i32* @RD_RFP, align 4
  %325 = or i32 %323, %324
  %326 = call i32 @cpu_to_edmac(%struct.sh_eth_private* %322, i32 %325)
  %327 = load %struct.sh_eth_rxdesc*, %struct.sh_eth_rxdesc** %4, align 8
  %328 = getelementptr inbounds %struct.sh_eth_rxdesc, %struct.sh_eth_rxdesc* %327, i32 0, i32 0
  %329 = load i32, i32* %328, align 8
  %330 = or i32 %329, %326
  store i32 %330, i32* %328, align 8
  br label %331

331:                                              ; preds = %321, %309
  br label %332

332:                                              ; preds = %331
  %333 = load %struct.sh_eth_private*, %struct.sh_eth_private** %3, align 8
  %334 = getelementptr inbounds %struct.sh_eth_private, %struct.sh_eth_private* %333, i32 0, i32 1
  %335 = load i32, i32* %334, align 4
  %336 = add nsw i32 %335, 1
  store i32 %336, i32* %334, align 4
  br label %228

337:                                              ; preds = %277, %228
  %338 = load %struct.net_device*, %struct.net_device** %2, align 8
  %339 = getelementptr inbounds %struct.net_device, %struct.net_device* %338, i32 0, i32 0
  %340 = load i64, i64* %339, align 8
  %341 = load i64, i64* @EDRRR, align 8
  %342 = add nsw i64 %340, %341
  %343 = call i32 @ctrl_inl(i64 %342)
  %344 = load i32, i32* @EDRRR_R, align 4
  %345 = and i32 %343, %344
  %346 = icmp ne i32 %345, 0
  br i1 %346, label %355, label %347

347:                                              ; preds = %337
  %348 = load i32, i32* @EDRRR_R, align 4
  %349 = load %struct.net_device*, %struct.net_device** %2, align 8
  %350 = getelementptr inbounds %struct.net_device, %struct.net_device* %349, i32 0, i32 0
  %351 = load i64, i64* %350, align 8
  %352 = load i64, i64* @EDRRR, align 8
  %353 = add nsw i64 %351, %352
  %354 = call i32 @ctrl_outl(i32 %348, i64 %353)
  br label %355

355:                                              ; preds = %347, %337
  ret i32 0
}

declare dso_local %struct.sh_eth_private* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @cpu_to_edmac(%struct.sh_eth_private*, i32) #1

declare dso_local i32 @edmac_to_cpu(%struct.sh_eth_private*, i32) #1

declare dso_local i32 @sh_eth_soft_swap(i32, i32) #1

declare dso_local i32 @phys_to_virt(i32) #1

declare dso_local i32 @ALIGN(i32, i32) #1

declare dso_local i32 @skb_put(%struct.sk_buff*, i64) #1

declare dso_local i32 @eth_type_trans(%struct.sk_buff*, %struct.net_device*) #1

declare dso_local i32 @netif_rx(%struct.sk_buff*) #1

declare dso_local %struct.sk_buff* @dev_alloc_skb(i32) #1

declare dso_local i32 @dma_map_single(i32*, i32, i32, i32) #1

declare dso_local i32 @sh_eth_set_receive_align(%struct.sk_buff*) #1

declare dso_local i32 @virt_to_phys(i32) #1

declare dso_local i32 @PTR_ALIGN(i32, i32) #1

declare dso_local i32 @ctrl_inl(i64) #1

declare dso_local i32 @ctrl_outl(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
