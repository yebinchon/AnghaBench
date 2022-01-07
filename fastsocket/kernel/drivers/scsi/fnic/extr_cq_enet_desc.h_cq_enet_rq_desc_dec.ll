; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/fnic/extr_cq_enet_desc.h_cq_enet_rq_desc_dec.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/fnic/extr_cq_enet_desc.h_cq_enet_rq_desc_dec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cq_enet_rq_desc = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.cq_desc = type { i32 }

@CQ_ENET_RQ_DESC_FLAGS_INGRESS_PORT = common dso_local global i32 0, align 4
@CQ_ENET_RQ_DESC_FLAGS_FCOE = common dso_local global i32 0, align 4
@CQ_ENET_RQ_DESC_FLAGS_EOP = common dso_local global i32 0, align 4
@CQ_ENET_RQ_DESC_FLAGS_SOP = common dso_local global i32 0, align 4
@CQ_DESC_Q_NUM_BITS = common dso_local global i32 0, align 4
@CQ_ENET_RQ_DESC_RSS_TYPE_MASK = common dso_local global i32 0, align 4
@CQ_ENET_RQ_DESC_FLAGS_CSUM_NOT_CALC = common dso_local global i32 0, align 4
@CQ_ENET_RQ_DESC_BYTES_WRITTEN_MASK = common dso_local global i32 0, align 4
@CQ_ENET_RQ_DESC_FLAGS_TRUNCATED = common dso_local global i32 0, align 4
@CQ_ENET_RQ_DESC_FLAGS_VLAN_STRIPPED = common dso_local global i32 0, align 4
@CQ_ENET_RQ_DESC_FCOE_SOF_MASK = common dso_local global i32 0, align 4
@CQ_ENET_RQ_DESC_FCOE_FC_CRC_OK = common dso_local global i32 0, align 4
@CQ_ENET_RQ_DESC_FCOE_ENC_ERROR = common dso_local global i32 0, align 4
@CQ_ENET_RQ_DESC_FCOE_EOF_SHIFT = common dso_local global i32 0, align 4
@CQ_ENET_RQ_DESC_FCOE_EOF_MASK = common dso_local global i32 0, align 4
@CQ_ENET_RQ_DESC_FLAGS_TCP_UDP_CSUM_OK = common dso_local global i32 0, align 4
@CQ_ENET_RQ_DESC_FLAGS_UDP = common dso_local global i32 0, align 4
@CQ_ENET_RQ_DESC_FLAGS_TCP = common dso_local global i32 0, align 4
@CQ_ENET_RQ_DESC_FLAGS_IPV4_CSUM_OK = common dso_local global i32 0, align 4
@CQ_ENET_RQ_DESC_FLAGS_IPV6 = common dso_local global i32 0, align 4
@CQ_ENET_RQ_DESC_FLAGS_IPV4 = common dso_local global i32 0, align 4
@CQ_ENET_RQ_DESC_FLAGS_IPV4_FRAGMENT = common dso_local global i32 0, align 4
@CQ_ENET_RQ_DESC_FLAGS_FCS_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cq_enet_rq_desc*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*)* @cq_enet_rq_desc_dec to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cq_enet_rq_desc_dec(%struct.cq_enet_rq_desc* %0, i32* %1, i32* %2, i32* %3, i32* %4, i32* %5, i32* %6, i32* %7, i32* %8, i32* %9, i32* %10, i32* %11, i32* %12, i32* %13, i32* %14, i32* %15, i32* %16, i32* %17, i32* %18, i32* %19, i32* %20, i32* %21, i32* %22, i32* %23, i32* %24, i32* %25, i32* %26, i32* %27, i32* %28) #0 {
  %30 = alloca %struct.cq_enet_rq_desc*, align 8
  %31 = alloca i32*, align 8
  %32 = alloca i32*, align 8
  %33 = alloca i32*, align 8
  %34 = alloca i32*, align 8
  %35 = alloca i32*, align 8
  %36 = alloca i32*, align 8
  %37 = alloca i32*, align 8
  %38 = alloca i32*, align 8
  %39 = alloca i32*, align 8
  %40 = alloca i32*, align 8
  %41 = alloca i32*, align 8
  %42 = alloca i32*, align 8
  %43 = alloca i32*, align 8
  %44 = alloca i32*, align 8
  %45 = alloca i32*, align 8
  %46 = alloca i32*, align 8
  %47 = alloca i32*, align 8
  %48 = alloca i32*, align 8
  %49 = alloca i32*, align 8
  %50 = alloca i32*, align 8
  %51 = alloca i32*, align 8
  %52 = alloca i32*, align 8
  %53 = alloca i32*, align 8
  %54 = alloca i32*, align 8
  %55 = alloca i32*, align 8
  %56 = alloca i32*, align 8
  %57 = alloca i32*, align 8
  %58 = alloca i32*, align 8
  %59 = alloca i32, align 4
  %60 = alloca i32, align 4
  %61 = alloca i32, align 4
  store %struct.cq_enet_rq_desc* %0, %struct.cq_enet_rq_desc** %30, align 8
  store i32* %1, i32** %31, align 8
  store i32* %2, i32** %32, align 8
  store i32* %3, i32** %33, align 8
  store i32* %4, i32** %34, align 8
  store i32* %5, i32** %35, align 8
  store i32* %6, i32** %36, align 8
  store i32* %7, i32** %37, align 8
  store i32* %8, i32** %38, align 8
  store i32* %9, i32** %39, align 8
  store i32* %10, i32** %40, align 8
  store i32* %11, i32** %41, align 8
  store i32* %12, i32** %42, align 8
  store i32* %13, i32** %43, align 8
  store i32* %14, i32** %44, align 8
  store i32* %15, i32** %45, align 8
  store i32* %16, i32** %46, align 8
  store i32* %17, i32** %47, align 8
  store i32* %18, i32** %48, align 8
  store i32* %19, i32** %49, align 8
  store i32* %20, i32** %50, align 8
  store i32* %21, i32** %51, align 8
  store i32* %22, i32** %52, align 8
  store i32* %23, i32** %53, align 8
  store i32* %24, i32** %54, align 8
  store i32* %25, i32** %55, align 8
  store i32* %26, i32** %56, align 8
  store i32* %27, i32** %57, align 8
  store i32* %28, i32** %58, align 8
  %62 = load %struct.cq_enet_rq_desc*, %struct.cq_enet_rq_desc** %30, align 8
  %63 = getelementptr inbounds %struct.cq_enet_rq_desc, %struct.cq_enet_rq_desc* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @le16_to_cpu(i32 %64)
  store i32 %65, i32* %59, align 4
  %66 = load %struct.cq_enet_rq_desc*, %struct.cq_enet_rq_desc** %30, align 8
  %67 = getelementptr inbounds %struct.cq_enet_rq_desc, %struct.cq_enet_rq_desc* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @le16_to_cpu(i32 %68)
  store i32 %69, i32* %60, align 4
  %70 = load %struct.cq_enet_rq_desc*, %struct.cq_enet_rq_desc** %30, align 8
  %71 = getelementptr inbounds %struct.cq_enet_rq_desc, %struct.cq_enet_rq_desc* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @le16_to_cpu(i32 %72)
  store i32 %73, i32* %61, align 4
  %74 = load %struct.cq_enet_rq_desc*, %struct.cq_enet_rq_desc** %30, align 8
  %75 = bitcast %struct.cq_enet_rq_desc* %74 to %struct.cq_desc*
  %76 = load i32*, i32** %31, align 8
  %77 = load i32*, i32** %32, align 8
  %78 = load i32*, i32** %33, align 8
  %79 = load i32*, i32** %34, align 8
  %80 = call i32 @cq_desc_dec(%struct.cq_desc* %75, i32* %76, i32* %77, i32* %78, i32* %79)
  %81 = load i32, i32* %59, align 4
  %82 = load i32, i32* @CQ_ENET_RQ_DESC_FLAGS_INGRESS_PORT, align 4
  %83 = and i32 %81, %82
  %84 = icmp ne i32 %83, 0
  %85 = zext i1 %84 to i64
  %86 = select i1 %84, i32 1, i32 0
  %87 = load i32*, i32** %35, align 8
  store i32 %86, i32* %87, align 4
  %88 = load i32, i32* %59, align 4
  %89 = load i32, i32* @CQ_ENET_RQ_DESC_FLAGS_FCOE, align 4
  %90 = and i32 %88, %89
  %91 = icmp ne i32 %90, 0
  %92 = zext i1 %91 to i64
  %93 = select i1 %91, i32 1, i32 0
  %94 = load i32*, i32** %36, align 8
  store i32 %93, i32* %94, align 4
  %95 = load i32, i32* %59, align 4
  %96 = load i32, i32* @CQ_ENET_RQ_DESC_FLAGS_EOP, align 4
  %97 = and i32 %95, %96
  %98 = icmp ne i32 %97, 0
  %99 = zext i1 %98 to i64
  %100 = select i1 %98, i32 1, i32 0
  %101 = load i32*, i32** %37, align 8
  store i32 %100, i32* %101, align 4
  %102 = load i32, i32* %59, align 4
  %103 = load i32, i32* @CQ_ENET_RQ_DESC_FLAGS_SOP, align 4
  %104 = and i32 %102, %103
  %105 = icmp ne i32 %104, 0
  %106 = zext i1 %105 to i64
  %107 = select i1 %105, i32 1, i32 0
  %108 = load i32*, i32** %38, align 8
  store i32 %107, i32* %108, align 4
  %109 = load i32, i32* %60, align 4
  %110 = load i32, i32* @CQ_DESC_Q_NUM_BITS, align 4
  %111 = ashr i32 %109, %110
  %112 = load i32, i32* @CQ_ENET_RQ_DESC_RSS_TYPE_MASK, align 4
  %113 = and i32 %111, %112
  %114 = load i32*, i32** %39, align 8
  store i32 %113, i32* %114, align 4
  %115 = load i32, i32* %60, align 4
  %116 = load i32, i32* @CQ_ENET_RQ_DESC_FLAGS_CSUM_NOT_CALC, align 4
  %117 = and i32 %115, %116
  %118 = icmp ne i32 %117, 0
  %119 = zext i1 %118 to i64
  %120 = select i1 %118, i32 1, i32 0
  %121 = load i32*, i32** %40, align 8
  store i32 %120, i32* %121, align 4
  %122 = load %struct.cq_enet_rq_desc*, %struct.cq_enet_rq_desc** %30, align 8
  %123 = getelementptr inbounds %struct.cq_enet_rq_desc, %struct.cq_enet_rq_desc* %122, i32 0, i32 6
  %124 = load i32, i32* %123, align 4
  %125 = call i32 @le32_to_cpu(i32 %124)
  %126 = load i32*, i32** %41, align 8
  store i32 %125, i32* %126, align 4
  %127 = load i32, i32* %61, align 4
  %128 = load i32, i32* @CQ_ENET_RQ_DESC_BYTES_WRITTEN_MASK, align 4
  %129 = and i32 %127, %128
  %130 = load i32*, i32** %42, align 8
  store i32 %129, i32* %130, align 4
  %131 = load i32, i32* %61, align 4
  %132 = load i32, i32* @CQ_ENET_RQ_DESC_FLAGS_TRUNCATED, align 4
  %133 = and i32 %131, %132
  %134 = icmp ne i32 %133, 0
  %135 = zext i1 %134 to i64
  %136 = select i1 %134, i32 1, i32 0
  %137 = load i32*, i32** %43, align 8
  store i32 %136, i32* %137, align 4
  %138 = load i32, i32* %61, align 4
  %139 = load i32, i32* @CQ_ENET_RQ_DESC_FLAGS_VLAN_STRIPPED, align 4
  %140 = and i32 %138, %139
  %141 = icmp ne i32 %140, 0
  %142 = zext i1 %141 to i64
  %143 = select i1 %141, i32 1, i32 0
  %144 = load i32*, i32** %44, align 8
  store i32 %143, i32* %144, align 4
  %145 = load %struct.cq_enet_rq_desc*, %struct.cq_enet_rq_desc** %30, align 8
  %146 = getelementptr inbounds %struct.cq_enet_rq_desc, %struct.cq_enet_rq_desc* %145, i32 0, i32 3
  %147 = load i32, i32* %146, align 4
  %148 = call i32 @le16_to_cpu(i32 %147)
  %149 = load i32*, i32** %45, align 8
  store i32 %148, i32* %149, align 4
  %150 = load i32*, i32** %36, align 8
  %151 = load i32, i32* %150, align 4
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %153, label %188

153:                                              ; preds = %29
  %154 = load %struct.cq_enet_rq_desc*, %struct.cq_enet_rq_desc** %30, align 8
  %155 = getelementptr inbounds %struct.cq_enet_rq_desc, %struct.cq_enet_rq_desc* %154, i32 0, i32 4
  %156 = load i32, i32* %155, align 4
  %157 = call i32 @le16_to_cpu(i32 %156)
  %158 = load i32, i32* @CQ_ENET_RQ_DESC_FCOE_SOF_MASK, align 4
  %159 = and i32 %157, %158
  %160 = load i32*, i32** %47, align 8
  store i32 %159, i32* %160, align 4
  %161 = load %struct.cq_enet_rq_desc*, %struct.cq_enet_rq_desc** %30, align 8
  %162 = getelementptr inbounds %struct.cq_enet_rq_desc, %struct.cq_enet_rq_desc* %161, i32 0, i32 5
  %163 = load i32, i32* %162, align 4
  %164 = load i32, i32* @CQ_ENET_RQ_DESC_FCOE_FC_CRC_OK, align 4
  %165 = and i32 %163, %164
  %166 = icmp ne i32 %165, 0
  %167 = zext i1 %166 to i64
  %168 = select i1 %166, i32 1, i32 0
  %169 = load i32*, i32** %48, align 8
  store i32 %168, i32* %169, align 4
  %170 = load %struct.cq_enet_rq_desc*, %struct.cq_enet_rq_desc** %30, align 8
  %171 = getelementptr inbounds %struct.cq_enet_rq_desc, %struct.cq_enet_rq_desc* %170, i32 0, i32 5
  %172 = load i32, i32* %171, align 4
  %173 = load i32, i32* @CQ_ENET_RQ_DESC_FCOE_ENC_ERROR, align 4
  %174 = and i32 %172, %173
  %175 = icmp ne i32 %174, 0
  %176 = zext i1 %175 to i64
  %177 = select i1 %175, i32 1, i32 0
  %178 = load i32*, i32** %49, align 8
  store i32 %177, i32* %178, align 4
  %179 = load %struct.cq_enet_rq_desc*, %struct.cq_enet_rq_desc** %30, align 8
  %180 = getelementptr inbounds %struct.cq_enet_rq_desc, %struct.cq_enet_rq_desc* %179, i32 0, i32 4
  %181 = load i32, i32* %180, align 4
  %182 = load i32, i32* @CQ_ENET_RQ_DESC_FCOE_EOF_SHIFT, align 4
  %183 = ashr i32 %181, %182
  %184 = load i32, i32* @CQ_ENET_RQ_DESC_FCOE_EOF_MASK, align 4
  %185 = and i32 %183, %184
  %186 = load i32*, i32** %50, align 8
  store i32 %185, i32* %186, align 4
  %187 = load i32*, i32** %46, align 8
  store i32 0, i32* %187, align 4
  br label %198

188:                                              ; preds = %29
  %189 = load i32*, i32** %47, align 8
  store i32 0, i32* %189, align 4
  %190 = load i32*, i32** %48, align 8
  store i32 0, i32* %190, align 4
  %191 = load i32*, i32** %49, align 8
  store i32 0, i32* %191, align 4
  %192 = load i32*, i32** %50, align 8
  store i32 0, i32* %192, align 4
  %193 = load %struct.cq_enet_rq_desc*, %struct.cq_enet_rq_desc** %30, align 8
  %194 = getelementptr inbounds %struct.cq_enet_rq_desc, %struct.cq_enet_rq_desc* %193, i32 0, i32 4
  %195 = load i32, i32* %194, align 4
  %196 = call i32 @le16_to_cpu(i32 %195)
  %197 = load i32*, i32** %46, align 8
  store i32 %196, i32* %197, align 4
  br label %198

198:                                              ; preds = %188, %153
  %199 = load %struct.cq_enet_rq_desc*, %struct.cq_enet_rq_desc** %30, align 8
  %200 = getelementptr inbounds %struct.cq_enet_rq_desc, %struct.cq_enet_rq_desc* %199, i32 0, i32 5
  %201 = load i32, i32* %200, align 4
  %202 = load i32, i32* @CQ_ENET_RQ_DESC_FLAGS_TCP_UDP_CSUM_OK, align 4
  %203 = and i32 %201, %202
  %204 = icmp ne i32 %203, 0
  %205 = zext i1 %204 to i64
  %206 = select i1 %204, i32 1, i32 0
  %207 = load i32*, i32** %51, align 8
  store i32 %206, i32* %207, align 4
  %208 = load %struct.cq_enet_rq_desc*, %struct.cq_enet_rq_desc** %30, align 8
  %209 = getelementptr inbounds %struct.cq_enet_rq_desc, %struct.cq_enet_rq_desc* %208, i32 0, i32 5
  %210 = load i32, i32* %209, align 4
  %211 = load i32, i32* @CQ_ENET_RQ_DESC_FLAGS_UDP, align 4
  %212 = and i32 %210, %211
  %213 = icmp ne i32 %212, 0
  %214 = zext i1 %213 to i64
  %215 = select i1 %213, i32 1, i32 0
  %216 = load i32*, i32** %52, align 8
  store i32 %215, i32* %216, align 4
  %217 = load %struct.cq_enet_rq_desc*, %struct.cq_enet_rq_desc** %30, align 8
  %218 = getelementptr inbounds %struct.cq_enet_rq_desc, %struct.cq_enet_rq_desc* %217, i32 0, i32 5
  %219 = load i32, i32* %218, align 4
  %220 = load i32, i32* @CQ_ENET_RQ_DESC_FLAGS_TCP, align 4
  %221 = and i32 %219, %220
  %222 = icmp ne i32 %221, 0
  %223 = zext i1 %222 to i64
  %224 = select i1 %222, i32 1, i32 0
  %225 = load i32*, i32** %53, align 8
  store i32 %224, i32* %225, align 4
  %226 = load %struct.cq_enet_rq_desc*, %struct.cq_enet_rq_desc** %30, align 8
  %227 = getelementptr inbounds %struct.cq_enet_rq_desc, %struct.cq_enet_rq_desc* %226, i32 0, i32 5
  %228 = load i32, i32* %227, align 4
  %229 = load i32, i32* @CQ_ENET_RQ_DESC_FLAGS_IPV4_CSUM_OK, align 4
  %230 = and i32 %228, %229
  %231 = icmp ne i32 %230, 0
  %232 = zext i1 %231 to i64
  %233 = select i1 %231, i32 1, i32 0
  %234 = load i32*, i32** %54, align 8
  store i32 %233, i32* %234, align 4
  %235 = load %struct.cq_enet_rq_desc*, %struct.cq_enet_rq_desc** %30, align 8
  %236 = getelementptr inbounds %struct.cq_enet_rq_desc, %struct.cq_enet_rq_desc* %235, i32 0, i32 5
  %237 = load i32, i32* %236, align 4
  %238 = load i32, i32* @CQ_ENET_RQ_DESC_FLAGS_IPV6, align 4
  %239 = and i32 %237, %238
  %240 = icmp ne i32 %239, 0
  %241 = zext i1 %240 to i64
  %242 = select i1 %240, i32 1, i32 0
  %243 = load i32*, i32** %55, align 8
  store i32 %242, i32* %243, align 4
  %244 = load %struct.cq_enet_rq_desc*, %struct.cq_enet_rq_desc** %30, align 8
  %245 = getelementptr inbounds %struct.cq_enet_rq_desc, %struct.cq_enet_rq_desc* %244, i32 0, i32 5
  %246 = load i32, i32* %245, align 4
  %247 = load i32, i32* @CQ_ENET_RQ_DESC_FLAGS_IPV4, align 4
  %248 = and i32 %246, %247
  %249 = icmp ne i32 %248, 0
  %250 = zext i1 %249 to i64
  %251 = select i1 %249, i32 1, i32 0
  %252 = load i32*, i32** %56, align 8
  store i32 %251, i32* %252, align 4
  %253 = load %struct.cq_enet_rq_desc*, %struct.cq_enet_rq_desc** %30, align 8
  %254 = getelementptr inbounds %struct.cq_enet_rq_desc, %struct.cq_enet_rq_desc* %253, i32 0, i32 5
  %255 = load i32, i32* %254, align 4
  %256 = load i32, i32* @CQ_ENET_RQ_DESC_FLAGS_IPV4_FRAGMENT, align 4
  %257 = and i32 %255, %256
  %258 = icmp ne i32 %257, 0
  %259 = zext i1 %258 to i64
  %260 = select i1 %258, i32 1, i32 0
  %261 = load i32*, i32** %57, align 8
  store i32 %260, i32* %261, align 4
  %262 = load %struct.cq_enet_rq_desc*, %struct.cq_enet_rq_desc** %30, align 8
  %263 = getelementptr inbounds %struct.cq_enet_rq_desc, %struct.cq_enet_rq_desc* %262, i32 0, i32 5
  %264 = load i32, i32* %263, align 4
  %265 = load i32, i32* @CQ_ENET_RQ_DESC_FLAGS_FCS_OK, align 4
  %266 = and i32 %264, %265
  %267 = icmp ne i32 %266, 0
  %268 = zext i1 %267 to i64
  %269 = select i1 %267, i32 1, i32 0
  %270 = load i32*, i32** %58, align 8
  store i32 %269, i32* %270, align 4
  ret void
}

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @cq_desc_dec(%struct.cq_desc*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @le32_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
