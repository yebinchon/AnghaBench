; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ehea/extr_ehea_main.c_ehea_proc_rwqes.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ehea/extr_ehea_main.c_ehea_proc_rwqes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ehea_port_res = type { i32, i32, %struct.TYPE_8__, i32, %struct.TYPE_7__, %struct.TYPE_6__, %struct.TYPE_5__, %struct.ehea_qp*, %struct.ehea_port* }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i32, %struct.sk_buff** }
%struct.sk_buff = type { i64 }
%struct.TYPE_6__ = type { i32, %struct.sk_buff** }
%struct.TYPE_5__ = type { i32, %struct.sk_buff** }
%struct.ehea_qp = type { i32 }
%struct.ehea_port = type { i64 }
%struct.ehea_cqe = type { i32, i32, i64 }

@.str = private unnamed_addr constant [4 x i8] c"CQE\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"LL rq1: skb=NULL\00", align 1
@EHEA_L_PKT_SIZE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [35 x i8] c"Not enough memory to allocate skb\0A\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"rq2: skb=NULL\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c"rq3: skb=NULL\00", align 1
@EHEA_CQE_VLAN_TAG_XTRACT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.ehea_port_res*, i32)* @ehea_proc_rwqes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ehea_proc_rwqes(%struct.net_device* %0, %struct.ehea_port_res* %1, i32 %2) #0 {
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.ehea_port_res*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.ehea_port*, align 8
  %8 = alloca %struct.ehea_qp*, align 8
  %9 = alloca %struct.ehea_cqe*, align 8
  %10 = alloca %struct.sk_buff*, align 8
  %11 = alloca %struct.sk_buff**, align 8
  %12 = alloca %struct.sk_buff**, align 8
  %13 = alloca %struct.sk_buff**, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i64, align 8
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.ehea_port_res* %1, %struct.ehea_port_res** %5, align 8
  store i32 %2, i32* %6, align 4
  %26 = load %struct.ehea_port_res*, %struct.ehea_port_res** %5, align 8
  %27 = getelementptr inbounds %struct.ehea_port_res, %struct.ehea_port_res* %26, i32 0, i32 8
  %28 = load %struct.ehea_port*, %struct.ehea_port** %27, align 8
  store %struct.ehea_port* %28, %struct.ehea_port** %7, align 8
  %29 = load %struct.ehea_port_res*, %struct.ehea_port_res** %5, align 8
  %30 = getelementptr inbounds %struct.ehea_port_res, %struct.ehea_port_res* %29, i32 0, i32 7
  %31 = load %struct.ehea_qp*, %struct.ehea_qp** %30, align 8
  store %struct.ehea_qp* %31, %struct.ehea_qp** %8, align 8
  %32 = load %struct.ehea_port_res*, %struct.ehea_port_res** %5, align 8
  %33 = getelementptr inbounds %struct.ehea_port_res, %struct.ehea_port_res* %32, i32 0, i32 6
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 1
  %35 = load %struct.sk_buff**, %struct.sk_buff*** %34, align 8
  store %struct.sk_buff** %35, %struct.sk_buff*** %11, align 8
  %36 = load %struct.ehea_port_res*, %struct.ehea_port_res** %5, align 8
  %37 = getelementptr inbounds %struct.ehea_port_res, %struct.ehea_port_res* %36, i32 0, i32 5
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 1
  %39 = load %struct.sk_buff**, %struct.sk_buff*** %38, align 8
  store %struct.sk_buff** %39, %struct.sk_buff*** %12, align 8
  %40 = load %struct.ehea_port_res*, %struct.ehea_port_res** %5, align 8
  %41 = getelementptr inbounds %struct.ehea_port_res, %struct.ehea_port_res* %40, i32 0, i32 4
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %41, i32 0, i32 1
  %43 = load %struct.sk_buff**, %struct.sk_buff*** %42, align 8
  store %struct.sk_buff** %43, %struct.sk_buff*** %13, align 8
  %44 = load %struct.ehea_port_res*, %struct.ehea_port_res** %5, align 8
  %45 = getelementptr inbounds %struct.ehea_port_res, %struct.ehea_port_res* %44, i32 0, i32 6
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  store i32 %47, i32* %14, align 4
  %48 = load %struct.ehea_port_res*, %struct.ehea_port_res** %5, align 8
  %49 = getelementptr inbounds %struct.ehea_port_res, %struct.ehea_port_res* %48, i32 0, i32 5
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  store i32 %51, i32* %15, align 4
  %52 = load %struct.ehea_port_res*, %struct.ehea_port_res** %5, align 8
  %53 = getelementptr inbounds %struct.ehea_port_res, %struct.ehea_port_res* %52, i32 0, i32 4
  %54 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  store i32 %55, i32* %16, align 4
  store i64 0, i64* %21, align 8
  store i32 0, i32* %20, align 4
  store i32 0, i32* %19, align 4
  store i32 0, i32* %18, align 4
  store i32 0, i32* %17, align 4
  store i32 0, i32* %23, align 4
  %56 = load %struct.ehea_qp*, %struct.ehea_qp** %8, align 8
  %57 = call %struct.ehea_cqe* @ehea_poll_rq1(%struct.ehea_qp* %56, i32* %22)
  store %struct.ehea_cqe* %57, %struct.ehea_cqe** %9, align 8
  br label %58

58:                                               ; preds = %234, %3
  %59 = load i32, i32* %17, align 4
  %60 = load i32, i32* %6, align 4
  %61 = icmp slt i32 %59, %60
  br i1 %61, label %62, label %65

62:                                               ; preds = %58
  %63 = load %struct.ehea_cqe*, %struct.ehea_cqe** %9, align 8
  %64 = icmp ne %struct.ehea_cqe* %63, null
  br label %65

65:                                               ; preds = %62, %58
  %66 = phi i1 [ false, %58 ], [ %64, %62 ]
  br i1 %66, label %67, label %237

67:                                               ; preds = %65
  %68 = load %struct.ehea_qp*, %struct.ehea_qp** %8, align 8
  %69 = call i32 @ehea_inc_rq1(%struct.ehea_qp* %68)
  %70 = load i32, i32* %18, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %18, align 4
  %72 = load i32, i32* %17, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %17, align 4
  %74 = load %struct.ehea_port*, %struct.ehea_port** %7, align 8
  %75 = call i64 @netif_msg_rx_status(%struct.ehea_port* %74)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %80

77:                                               ; preds = %67
  %78 = load %struct.ehea_cqe*, %struct.ehea_cqe** %9, align 8
  %79 = call i32 @ehea_dump(%struct.ehea_cqe* %78, i32 16, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  br label %80

80:                                               ; preds = %77, %67
  %81 = load i32, i32* %22, align 4
  store i32 %81, i32* %23, align 4
  %82 = call i32 (...) @rmb()
  %83 = load %struct.ehea_cqe*, %struct.ehea_cqe** %9, align 8
  %84 = call i32 @ehea_check_cqe(%struct.ehea_cqe* %83, i32* %24)
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %220, label %86

86:                                               ; preds = %80
  %87 = load i32, i32* %24, align 4
  %88 = icmp eq i32 %87, 1
  br i1 %88, label %89, label %130

89:                                               ; preds = %86
  %90 = load %struct.sk_buff**, %struct.sk_buff*** %11, align 8
  %91 = load i32, i32* %14, align 4
  %92 = load i32, i32* %22, align 4
  %93 = call %struct.sk_buff* @get_skb_by_index_ll(%struct.sk_buff** %90, i32 %91, i32 %92)
  store %struct.sk_buff* %93, %struct.sk_buff** %10, align 8
  %94 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %95 = icmp ne %struct.sk_buff* %94, null
  %96 = xor i1 %95, true
  %97 = zext i1 %96 to i32
  %98 = call i64 @unlikely(i32 %97)
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %115

100:                                              ; preds = %89
  %101 = load %struct.ehea_port*, %struct.ehea_port** %7, align 8
  %102 = call i64 @netif_msg_rx_err(%struct.ehea_port* %101)
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %106

104:                                              ; preds = %100
  %105 = call i32 @ehea_info(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  br label %106

106:                                              ; preds = %104, %100
  %107 = load %struct.net_device*, %struct.net_device** %4, align 8
  %108 = load i32, i32* @EHEA_L_PKT_SIZE, align 4
  %109 = call %struct.sk_buff* @netdev_alloc_skb(%struct.net_device* %107, i32 %108)
  store %struct.sk_buff* %109, %struct.sk_buff** %10, align 8
  %110 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %111 = icmp ne %struct.sk_buff* %110, null
  br i1 %111, label %114, label %112

112:                                              ; preds = %106
  %113 = call i32 @ehea_error(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0))
  br label %237

114:                                              ; preds = %106
  br label %115

115:                                              ; preds = %114, %89
  %116 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %117 = load %struct.ehea_cqe*, %struct.ehea_cqe** %9, align 8
  %118 = bitcast %struct.ehea_cqe* %117 to i8*
  %119 = getelementptr inbounds i8, i8* %118, i64 64
  %120 = load %struct.ehea_cqe*, %struct.ehea_cqe** %9, align 8
  %121 = getelementptr inbounds %struct.ehea_cqe, %struct.ehea_cqe* %120, i32 0, i32 2
  %122 = load i64, i64* %121, align 8
  %123 = sub nsw i64 %122, 4
  %124 = call i32 @skb_copy_to_linear_data(%struct.sk_buff* %116, i8* %119, i64 %123)
  %125 = load %struct.net_device*, %struct.net_device** %4, align 8
  %126 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %127 = load %struct.ehea_cqe*, %struct.ehea_cqe** %9, align 8
  %128 = load %struct.ehea_port_res*, %struct.ehea_port_res** %5, align 8
  %129 = call i32 @ehea_fill_skb(%struct.net_device* %125, %struct.sk_buff* %126, %struct.ehea_cqe* %127, %struct.ehea_port_res* %128)
  br label %186

130:                                              ; preds = %86
  %131 = load i32, i32* %24, align 4
  %132 = icmp eq i32 %131, 2
  br i1 %132, label %133, label %159

133:                                              ; preds = %130
  %134 = load %struct.sk_buff**, %struct.sk_buff*** %12, align 8
  %135 = load i32, i32* %15, align 4
  %136 = load %struct.ehea_cqe*, %struct.ehea_cqe** %9, align 8
  %137 = call %struct.sk_buff* @get_skb_by_index(%struct.sk_buff** %134, i32 %135, %struct.ehea_cqe* %136)
  store %struct.sk_buff* %137, %struct.sk_buff** %10, align 8
  %138 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %139 = icmp ne %struct.sk_buff* %138, null
  %140 = xor i1 %139, true
  %141 = zext i1 %140 to i32
  %142 = call i64 @unlikely(i32 %141)
  %143 = icmp ne i64 %142, 0
  br i1 %143, label %144, label %151

144:                                              ; preds = %133
  %145 = load %struct.ehea_port*, %struct.ehea_port** %7, align 8
  %146 = call i64 @netif_msg_rx_err(%struct.ehea_port* %145)
  %147 = icmp ne i64 %146, 0
  br i1 %147, label %148, label %150

148:                                              ; preds = %144
  %149 = call i32 @ehea_error(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0))
  br label %150

150:                                              ; preds = %148, %144
  br label %237

151:                                              ; preds = %133
  %152 = load %struct.net_device*, %struct.net_device** %4, align 8
  %153 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %154 = load %struct.ehea_cqe*, %struct.ehea_cqe** %9, align 8
  %155 = load %struct.ehea_port_res*, %struct.ehea_port_res** %5, align 8
  %156 = call i32 @ehea_fill_skb(%struct.net_device* %152, %struct.sk_buff* %153, %struct.ehea_cqe* %154, %struct.ehea_port_res* %155)
  %157 = load i32, i32* %19, align 4
  %158 = add nsw i32 %157, 1
  store i32 %158, i32* %19, align 4
  br label %185

159:                                              ; preds = %130
  %160 = load %struct.sk_buff**, %struct.sk_buff*** %13, align 8
  %161 = load i32, i32* %16, align 4
  %162 = load %struct.ehea_cqe*, %struct.ehea_cqe** %9, align 8
  %163 = call %struct.sk_buff* @get_skb_by_index(%struct.sk_buff** %160, i32 %161, %struct.ehea_cqe* %162)
  store %struct.sk_buff* %163, %struct.sk_buff** %10, align 8
  %164 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %165 = icmp ne %struct.sk_buff* %164, null
  %166 = xor i1 %165, true
  %167 = zext i1 %166 to i32
  %168 = call i64 @unlikely(i32 %167)
  %169 = icmp ne i64 %168, 0
  br i1 %169, label %170, label %177

170:                                              ; preds = %159
  %171 = load %struct.ehea_port*, %struct.ehea_port** %7, align 8
  %172 = call i64 @netif_msg_rx_err(%struct.ehea_port* %171)
  %173 = icmp ne i64 %172, 0
  br i1 %173, label %174, label %176

174:                                              ; preds = %170
  %175 = call i32 @ehea_error(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0))
  br label %176

176:                                              ; preds = %174, %170
  br label %237

177:                                              ; preds = %159
  %178 = load %struct.net_device*, %struct.net_device** %4, align 8
  %179 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %180 = load %struct.ehea_cqe*, %struct.ehea_cqe** %9, align 8
  %181 = load %struct.ehea_port_res*, %struct.ehea_port_res** %5, align 8
  %182 = call i32 @ehea_fill_skb(%struct.net_device* %178, %struct.sk_buff* %179, %struct.ehea_cqe* %180, %struct.ehea_port_res* %181)
  %183 = load i32, i32* %20, align 4
  %184 = add nsw i32 %183, 1
  store i32 %184, i32* %20, align 4
  br label %185

185:                                              ; preds = %177, %151
  br label %186

186:                                              ; preds = %185, %115
  %187 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %188 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %187, i32 0, i32 0
  %189 = load i64, i64* %188, align 8
  %190 = load i64, i64* %21, align 8
  %191 = add nsw i64 %190, %189
  store i64 %191, i64* %21, align 8
  %192 = load %struct.ehea_cqe*, %struct.ehea_cqe** %9, align 8
  %193 = getelementptr inbounds %struct.ehea_cqe, %struct.ehea_cqe* %192, i32 0, i32 0
  %194 = load i32, i32* %193, align 8
  %195 = load i32, i32* @EHEA_CQE_VLAN_TAG_XTRACT, align 4
  %196 = and i32 %194, %195
  %197 = icmp ne i32 %196, 0
  br i1 %197, label %198, label %214

198:                                              ; preds = %186
  %199 = load %struct.ehea_port*, %struct.ehea_port** %7, align 8
  %200 = getelementptr inbounds %struct.ehea_port, %struct.ehea_port* %199, i32 0, i32 0
  %201 = load i64, i64* %200, align 8
  %202 = icmp ne i64 %201, 0
  br i1 %202, label %203, label %214

203:                                              ; preds = %198
  %204 = load %struct.ehea_port_res*, %struct.ehea_port_res** %5, align 8
  %205 = getelementptr inbounds %struct.ehea_port_res, %struct.ehea_port_res* %204, i32 0, i32 3
  %206 = load %struct.ehea_port*, %struct.ehea_port** %7, align 8
  %207 = getelementptr inbounds %struct.ehea_port, %struct.ehea_port* %206, i32 0, i32 0
  %208 = load i64, i64* %207, align 8
  %209 = load %struct.ehea_cqe*, %struct.ehea_cqe** %9, align 8
  %210 = getelementptr inbounds %struct.ehea_cqe, %struct.ehea_cqe* %209, i32 0, i32 1
  %211 = load i32, i32* %210, align 4
  %212 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %213 = call i32 @vlan_gro_receive(i32* %205, i64 %208, i32 %211, %struct.sk_buff* %212)
  br label %219

214:                                              ; preds = %198, %186
  %215 = load %struct.ehea_port_res*, %struct.ehea_port_res** %5, align 8
  %216 = getelementptr inbounds %struct.ehea_port_res, %struct.ehea_port_res* %215, i32 0, i32 3
  %217 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %218 = call i32 @napi_gro_receive(i32* %216, %struct.sk_buff* %217)
  br label %219

219:                                              ; preds = %214, %203
  br label %234

220:                                              ; preds = %80
  %221 = load %struct.ehea_port_res*, %struct.ehea_port_res** %5, align 8
  %222 = getelementptr inbounds %struct.ehea_port_res, %struct.ehea_port_res* %221, i32 0, i32 2
  %223 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %222, i32 0, i32 0
  %224 = load i32, i32* %223, align 8
  %225 = add nsw i32 %224, 1
  store i32 %225, i32* %223, align 8
  %226 = load %struct.ehea_port_res*, %struct.ehea_port_res** %5, align 8
  %227 = load i32, i32* %24, align 4
  %228 = load %struct.ehea_cqe*, %struct.ehea_cqe** %9, align 8
  %229 = call i32 @ehea_treat_poll_error(%struct.ehea_port_res* %226, i32 %227, %struct.ehea_cqe* %228, i32* %19, i32* %20)
  store i32 %229, i32* %25, align 4
  %230 = load i32, i32* %25, align 4
  %231 = icmp ne i32 %230, 0
  br i1 %231, label %232, label %233

232:                                              ; preds = %220
  br label %237

233:                                              ; preds = %220
  br label %234

234:                                              ; preds = %233, %219
  %235 = load %struct.ehea_qp*, %struct.ehea_qp** %8, align 8
  %236 = call %struct.ehea_cqe* @ehea_poll_rq1(%struct.ehea_qp* %235, i32* %22)
  store %struct.ehea_cqe* %236, %struct.ehea_cqe** %9, align 8
  br label %58

237:                                              ; preds = %232, %176, %150, %112, %65
  %238 = load i32, i32* %17, align 4
  %239 = load %struct.ehea_port_res*, %struct.ehea_port_res** %5, align 8
  %240 = getelementptr inbounds %struct.ehea_port_res, %struct.ehea_port_res* %239, i32 0, i32 0
  %241 = load i32, i32* %240, align 8
  %242 = add nsw i32 %241, %238
  store i32 %242, i32* %240, align 8
  %243 = load i64, i64* %21, align 8
  %244 = load %struct.ehea_port_res*, %struct.ehea_port_res** %5, align 8
  %245 = getelementptr inbounds %struct.ehea_port_res, %struct.ehea_port_res* %244, i32 0, i32 1
  %246 = load i32, i32* %245, align 4
  %247 = sext i32 %246 to i64
  %248 = add nsw i64 %247, %243
  %249 = trunc i64 %248 to i32
  store i32 %249, i32* %245, align 4
  %250 = load %struct.ehea_port_res*, %struct.ehea_port_res** %5, align 8
  %251 = load i32, i32* %23, align 4
  %252 = load i32, i32* %18, align 4
  %253 = call i32 @ehea_refill_rq1(%struct.ehea_port_res* %250, i32 %251, i32 %252)
  %254 = load %struct.ehea_port_res*, %struct.ehea_port_res** %5, align 8
  %255 = load i32, i32* %19, align 4
  %256 = call i32 @ehea_refill_rq2(%struct.ehea_port_res* %254, i32 %255)
  %257 = load %struct.ehea_port_res*, %struct.ehea_port_res** %5, align 8
  %258 = load i32, i32* %20, align 4
  %259 = call i32 @ehea_refill_rq3(%struct.ehea_port_res* %257, i32 %258)
  %260 = load i32, i32* %17, align 4
  ret i32 %260
}

declare dso_local %struct.ehea_cqe* @ehea_poll_rq1(%struct.ehea_qp*, i32*) #1

declare dso_local i32 @ehea_inc_rq1(%struct.ehea_qp*) #1

declare dso_local i64 @netif_msg_rx_status(%struct.ehea_port*) #1

declare dso_local i32 @ehea_dump(%struct.ehea_cqe*, i32, i8*) #1

declare dso_local i32 @rmb(...) #1

declare dso_local i32 @ehea_check_cqe(%struct.ehea_cqe*, i32*) #1

declare dso_local %struct.sk_buff* @get_skb_by_index_ll(%struct.sk_buff**, i32, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @netif_msg_rx_err(%struct.ehea_port*) #1

declare dso_local i32 @ehea_info(i8*) #1

declare dso_local %struct.sk_buff* @netdev_alloc_skb(%struct.net_device*, i32) #1

declare dso_local i32 @ehea_error(i8*) #1

declare dso_local i32 @skb_copy_to_linear_data(%struct.sk_buff*, i8*, i64) #1

declare dso_local i32 @ehea_fill_skb(%struct.net_device*, %struct.sk_buff*, %struct.ehea_cqe*, %struct.ehea_port_res*) #1

declare dso_local %struct.sk_buff* @get_skb_by_index(%struct.sk_buff**, i32, %struct.ehea_cqe*) #1

declare dso_local i32 @vlan_gro_receive(i32*, i64, i32, %struct.sk_buff*) #1

declare dso_local i32 @napi_gro_receive(i32*, %struct.sk_buff*) #1

declare dso_local i32 @ehea_treat_poll_error(%struct.ehea_port_res*, i32, %struct.ehea_cqe*, i32*, i32*) #1

declare dso_local i32 @ehea_refill_rq1(%struct.ehea_port_res*, i32, i32) #1

declare dso_local i32 @ehea_refill_rq2(%struct.ehea_port_res*, i32) #1

declare dso_local i32 @ehea_refill_rq3(%struct.ehea_port_res*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
