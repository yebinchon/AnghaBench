; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/enic/extr_cq_enet_desc.h_cq_enet_rq_desc_dec.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/enic/extr_cq_enet_desc.h_cq_enet_rq_desc_dec.c"
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
  %63 = bitcast %struct.cq_enet_rq_desc* %62 to %struct.cq_desc*
  %64 = load i32*, i32** %31, align 8
  %65 = load i32*, i32** %32, align 8
  %66 = load i32*, i32** %33, align 8
  %67 = load i32*, i32** %34, align 8
  %68 = call i32 @cq_desc_dec(%struct.cq_desc* %63, i32* %64, i32* %65, i32* %66, i32* %67)
  %69 = load %struct.cq_enet_rq_desc*, %struct.cq_enet_rq_desc** %30, align 8
  %70 = getelementptr inbounds %struct.cq_enet_rq_desc, %struct.cq_enet_rq_desc* %69, i32 0, i32 6
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @le16_to_cpu(i32 %71)
  store i32 %72, i32* %59, align 4
  %73 = load %struct.cq_enet_rq_desc*, %struct.cq_enet_rq_desc** %30, align 8
  %74 = getelementptr inbounds %struct.cq_enet_rq_desc, %struct.cq_enet_rq_desc* %73, i32 0, i32 5
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @le16_to_cpu(i32 %75)
  store i32 %76, i32* %60, align 4
  %77 = load %struct.cq_enet_rq_desc*, %struct.cq_enet_rq_desc** %30, align 8
  %78 = getelementptr inbounds %struct.cq_enet_rq_desc, %struct.cq_enet_rq_desc* %77, i32 0, i32 4
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @le16_to_cpu(i32 %79)
  store i32 %80, i32* %61, align 4
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
  %123 = getelementptr inbounds %struct.cq_enet_rq_desc, %struct.cq_enet_rq_desc* %122, i32 0, i32 3
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
  %146 = getelementptr inbounds %struct.cq_enet_rq_desc, %struct.cq_enet_rq_desc* %145, i32 0, i32 2
  %147 = load i32, i32* %146, align 4
  %148 = call i32 @le16_to_cpu(i32 %147)
  %149 = load i32*, i32** %45, align 8
  store i32 %148, i32* %149, align 4
  %150 = load i32*, i32** %36, align 8
  %151 = load i32, i32* %150, align 4
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %153, label %189

153:                                              ; preds = %29
  %154 = load %struct.cq_enet_rq_desc*, %struct.cq_enet_rq_desc** %30, align 8
  %155 = getelementptr inbounds %struct.cq_enet_rq_desc, %struct.cq_enet_rq_desc* %154, i32 0, i32 1
  %156 = load i32, i32* %155, align 4
  %157 = call i32 @le16_to_cpu(i32 %156)
  %158 = load i32, i32* @CQ_ENET_RQ_DESC_FCOE_SOF_MASK, align 4
  %159 = and i32 %157, %158
  %160 = load i32*, i32** %47, align 8
  store i32 %159, i32* %160, align 4
  %161 = load %struct.cq_enet_rq_desc*, %struct.cq_enet_rq_desc** %30, align 8
  %162 = getelementptr inbounds %struct.cq_enet_rq_desc, %struct.cq_enet_rq_desc* %161, i32 0, i32 0
  %163 = load i32, i32* %162, align 4
  %164 = load i32, i32* @CQ_ENET_RQ_DESC_FCOE_FC_CRC_OK, align 4
  %165 = and i32 %163, %164
  %166 = icmp ne i32 %165, 0
  %167 = zext i1 %166 to i64
  %168 = select i1 %166, i32 1, i32 0
  %169 = load i32*, i32** %48, align 8
  store i32 %168, i32* %169, align 4
  %170 = load %struct.cq_enet_rq_desc*, %struct.cq_enet_rq_desc** %30, align 8
  %171 = getelementptr inbounds %struct.cq_enet_rq_desc, %struct.cq_enet_rq_desc* %170, i32 0, i32 0
  %172 = load i32, i32* %171, align 4
  %173 = load i32, i32* @CQ_ENET_RQ_DESC_FCOE_ENC_ERROR, align 4
  %174 = and i32 %172, %173
  %175 = icmp ne i32 %174, 0
  %176 = zext i1 %175 to i64
  %177 = select i1 %175, i32 1, i32 0
  %178 = load i32*, i32** %49, align 8
  store i32 %177, i32* %178, align 4
  %179 = load %struct.cq_enet_rq_desc*, %struct.cq_enet_rq_desc** %30, align 8
  %180 = getelementptr inbounds %struct.cq_enet_rq_desc, %struct.cq_enet_rq_desc* %179, i32 0, i32 1
  %181 = load i32, i32* %180, align 4
  %182 = call i32 @le16_to_cpu(i32 %181)
  %183 = load i32, i32* @CQ_ENET_RQ_DESC_FCOE_EOF_SHIFT, align 4
  %184 = ashr i32 %182, %183
  %185 = load i32, i32* @CQ_ENET_RQ_DESC_FCOE_EOF_MASK, align 4
  %186 = and i32 %184, %185
  %187 = load i32*, i32** %50, align 8
  store i32 %186, i32* %187, align 4
  %188 = load i32*, i32** %46, align 8
  store i32 0, i32* %188, align 4
  br label %199

189:                                              ; preds = %29
  %190 = load i32*, i32** %47, align 8
  store i32 0, i32* %190, align 4
  %191 = load i32*, i32** %48, align 8
  store i32 0, i32* %191, align 4
  %192 = load i32*, i32** %49, align 8
  store i32 0, i32* %192, align 4
  %193 = load i32*, i32** %50, align 8
  store i32 0, i32* %193, align 4
  %194 = load %struct.cq_enet_rq_desc*, %struct.cq_enet_rq_desc** %30, align 8
  %195 = getelementptr inbounds %struct.cq_enet_rq_desc, %struct.cq_enet_rq_desc* %194, i32 0, i32 1
  %196 = load i32, i32* %195, align 4
  %197 = call i32 @le16_to_cpu(i32 %196)
  %198 = load i32*, i32** %46, align 8
  store i32 %197, i32* %198, align 4
  br label %199

199:                                              ; preds = %189, %153
  %200 = load %struct.cq_enet_rq_desc*, %struct.cq_enet_rq_desc** %30, align 8
  %201 = getelementptr inbounds %struct.cq_enet_rq_desc, %struct.cq_enet_rq_desc* %200, i32 0, i32 0
  %202 = load i32, i32* %201, align 4
  %203 = load i32, i32* @CQ_ENET_RQ_DESC_FLAGS_TCP_UDP_CSUM_OK, align 4
  %204 = and i32 %202, %203
  %205 = icmp ne i32 %204, 0
  %206 = zext i1 %205 to i64
  %207 = select i1 %205, i32 1, i32 0
  %208 = load i32*, i32** %51, align 8
  store i32 %207, i32* %208, align 4
  %209 = load %struct.cq_enet_rq_desc*, %struct.cq_enet_rq_desc** %30, align 8
  %210 = getelementptr inbounds %struct.cq_enet_rq_desc, %struct.cq_enet_rq_desc* %209, i32 0, i32 0
  %211 = load i32, i32* %210, align 4
  %212 = load i32, i32* @CQ_ENET_RQ_DESC_FLAGS_UDP, align 4
  %213 = and i32 %211, %212
  %214 = icmp ne i32 %213, 0
  %215 = zext i1 %214 to i64
  %216 = select i1 %214, i32 1, i32 0
  %217 = load i32*, i32** %52, align 8
  store i32 %216, i32* %217, align 4
  %218 = load %struct.cq_enet_rq_desc*, %struct.cq_enet_rq_desc** %30, align 8
  %219 = getelementptr inbounds %struct.cq_enet_rq_desc, %struct.cq_enet_rq_desc* %218, i32 0, i32 0
  %220 = load i32, i32* %219, align 4
  %221 = load i32, i32* @CQ_ENET_RQ_DESC_FLAGS_TCP, align 4
  %222 = and i32 %220, %221
  %223 = icmp ne i32 %222, 0
  %224 = zext i1 %223 to i64
  %225 = select i1 %223, i32 1, i32 0
  %226 = load i32*, i32** %53, align 8
  store i32 %225, i32* %226, align 4
  %227 = load %struct.cq_enet_rq_desc*, %struct.cq_enet_rq_desc** %30, align 8
  %228 = getelementptr inbounds %struct.cq_enet_rq_desc, %struct.cq_enet_rq_desc* %227, i32 0, i32 0
  %229 = load i32, i32* %228, align 4
  %230 = load i32, i32* @CQ_ENET_RQ_DESC_FLAGS_IPV4_CSUM_OK, align 4
  %231 = and i32 %229, %230
  %232 = icmp ne i32 %231, 0
  %233 = zext i1 %232 to i64
  %234 = select i1 %232, i32 1, i32 0
  %235 = load i32*, i32** %54, align 8
  store i32 %234, i32* %235, align 4
  %236 = load %struct.cq_enet_rq_desc*, %struct.cq_enet_rq_desc** %30, align 8
  %237 = getelementptr inbounds %struct.cq_enet_rq_desc, %struct.cq_enet_rq_desc* %236, i32 0, i32 0
  %238 = load i32, i32* %237, align 4
  %239 = load i32, i32* @CQ_ENET_RQ_DESC_FLAGS_IPV6, align 4
  %240 = and i32 %238, %239
  %241 = icmp ne i32 %240, 0
  %242 = zext i1 %241 to i64
  %243 = select i1 %241, i32 1, i32 0
  %244 = load i32*, i32** %55, align 8
  store i32 %243, i32* %244, align 4
  %245 = load %struct.cq_enet_rq_desc*, %struct.cq_enet_rq_desc** %30, align 8
  %246 = getelementptr inbounds %struct.cq_enet_rq_desc, %struct.cq_enet_rq_desc* %245, i32 0, i32 0
  %247 = load i32, i32* %246, align 4
  %248 = load i32, i32* @CQ_ENET_RQ_DESC_FLAGS_IPV4, align 4
  %249 = and i32 %247, %248
  %250 = icmp ne i32 %249, 0
  %251 = zext i1 %250 to i64
  %252 = select i1 %250, i32 1, i32 0
  %253 = load i32*, i32** %56, align 8
  store i32 %252, i32* %253, align 4
  %254 = load %struct.cq_enet_rq_desc*, %struct.cq_enet_rq_desc** %30, align 8
  %255 = getelementptr inbounds %struct.cq_enet_rq_desc, %struct.cq_enet_rq_desc* %254, i32 0, i32 0
  %256 = load i32, i32* %255, align 4
  %257 = load i32, i32* @CQ_ENET_RQ_DESC_FLAGS_IPV4_FRAGMENT, align 4
  %258 = and i32 %256, %257
  %259 = icmp ne i32 %258, 0
  %260 = zext i1 %259 to i64
  %261 = select i1 %259, i32 1, i32 0
  %262 = load i32*, i32** %57, align 8
  store i32 %261, i32* %262, align 4
  %263 = load %struct.cq_enet_rq_desc*, %struct.cq_enet_rq_desc** %30, align 8
  %264 = getelementptr inbounds %struct.cq_enet_rq_desc, %struct.cq_enet_rq_desc* %263, i32 0, i32 0
  %265 = load i32, i32* %264, align 4
  %266 = load i32, i32* @CQ_ENET_RQ_DESC_FLAGS_FCS_OK, align 4
  %267 = and i32 %265, %266
  %268 = icmp ne i32 %267, 0
  %269 = zext i1 %268 to i64
  %270 = select i1 %268, i32 1, i32 0
  %271 = load i32*, i32** %58, align 8
  store i32 %270, i32* %271, align 4
  ret void
}

declare dso_local i32 @cq_desc_dec(%struct.cq_desc*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @le32_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
