; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/cxgb4/extr_sge.c_write_sgl.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/cxgb4/extr_sge.c_write_sgl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.sge_txq = type { %struct.ulptx_sge_pair*, i64 }
%struct.ulptx_sge_pair = type { i8**, i8** }
%struct.ulptx_sgl = type { %struct.ulptx_sge_pair*, i8*, i8*, i8* }
%struct.skb_shared_info = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@MAX_SKB_FRAGS = common dso_local global i32 0, align 4
@ULP_TX_SC_DSGL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sk_buff*, %struct.sge_txq*, %struct.ulptx_sgl*, i64*, i32, i64*)* @write_sgl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @write_sgl(%struct.sk_buff* %0, %struct.sge_txq* %1, %struct.ulptx_sgl* %2, i64* %3, i32 %4, i64* %5) #0 {
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca %struct.sge_txq*, align 8
  %9 = alloca %struct.ulptx_sgl*, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.ulptx_sge_pair*, align 8
  %16 = alloca %struct.skb_shared_info*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i8*, align 8
  %19 = alloca i64, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %7, align 8
  store %struct.sge_txq* %1, %struct.sge_txq** %8, align 8
  store %struct.ulptx_sgl* %2, %struct.ulptx_sgl** %9, align 8
  store i64* %3, i64** %10, align 8
  store i32 %4, i32* %11, align 4
  store i64* %5, i64** %12, align 8
  %23 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %24 = call %struct.skb_shared_info* @skb_shinfo(%struct.sk_buff* %23)
  store %struct.skb_shared_info* %24, %struct.skb_shared_info** %16, align 8
  %25 = load %struct.skb_shared_info*, %struct.skb_shared_info** %16, align 8
  %26 = getelementptr inbounds %struct.skb_shared_info, %struct.skb_shared_info* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  store i32 %27, i32* %17, align 4
  %28 = load i32, i32* @MAX_SKB_FRAGS, align 4
  %29 = sdiv i32 %28, 2
  %30 = add nsw i32 %29, 1
  %31 = zext i32 %30 to i64
  %32 = call i8* @llvm.stacksave()
  store i8* %32, i8** %18, align 8
  %33 = alloca %struct.ulptx_sge_pair, i64 %31, align 16
  store i64 %31, i64* %19, align 8
  %34 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %35 = call i32 @skb_headlen(%struct.sk_buff* %34)
  %36 = load i32, i32* %11, align 4
  %37 = sub i32 %35, %36
  store i32 %37, i32* %14, align 4
  %38 = load i32, i32* %14, align 4
  %39 = call i64 @likely(i32 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %57

41:                                               ; preds = %6
  %42 = load i32, i32* %14, align 4
  %43 = call i8* @htonl(i32 %42)
  %44 = load %struct.ulptx_sgl*, %struct.ulptx_sgl** %9, align 8
  %45 = getelementptr inbounds %struct.ulptx_sgl, %struct.ulptx_sgl* %44, i32 0, i32 3
  store i8* %43, i8** %45, align 8
  %46 = load i64*, i64** %12, align 8
  %47 = getelementptr inbounds i64, i64* %46, i64 0
  %48 = load i64, i64* %47, align 8
  %49 = load i32, i32* %11, align 4
  %50 = zext i32 %49 to i64
  %51 = add nsw i64 %48, %50
  %52 = call i8* @cpu_to_be64(i64 %51)
  %53 = load %struct.ulptx_sgl*, %struct.ulptx_sgl** %9, align 8
  %54 = getelementptr inbounds %struct.ulptx_sgl, %struct.ulptx_sgl* %53, i32 0, i32 2
  store i8* %52, i8** %54, align 8
  %55 = load i32, i32* %17, align 4
  %56 = add i32 %55, 1
  store i32 %56, i32* %17, align 4
  br label %73

57:                                               ; preds = %6
  %58 = load %struct.skb_shared_info*, %struct.skb_shared_info** %16, align 8
  %59 = getelementptr inbounds %struct.skb_shared_info, %struct.skb_shared_info* %58, i32 0, i32 1
  %60 = load %struct.TYPE_2__*, %struct.TYPE_2__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i64 0
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = call i8* @htonl(i32 %63)
  %65 = load %struct.ulptx_sgl*, %struct.ulptx_sgl** %9, align 8
  %66 = getelementptr inbounds %struct.ulptx_sgl, %struct.ulptx_sgl* %65, i32 0, i32 3
  store i8* %64, i8** %66, align 8
  %67 = load i64*, i64** %12, align 8
  %68 = getelementptr inbounds i64, i64* %67, i64 1
  %69 = load i64, i64* %68, align 8
  %70 = call i8* @cpu_to_be64(i64 %69)
  %71 = load %struct.ulptx_sgl*, %struct.ulptx_sgl** %9, align 8
  %72 = getelementptr inbounds %struct.ulptx_sgl, %struct.ulptx_sgl* %71, i32 0, i32 2
  store i8* %70, i8** %72, align 8
  br label %73

73:                                               ; preds = %57, %41
  %74 = load i32, i32* @ULP_TX_SC_DSGL, align 4
  %75 = call i32 @ULPTX_CMD(i32 %74)
  %76 = load i32, i32* %17, align 4
  %77 = call i32 @ULPTX_NSGE(i32 %76)
  %78 = or i32 %75, %77
  %79 = call i8* @htonl(i32 %78)
  %80 = load %struct.ulptx_sgl*, %struct.ulptx_sgl** %9, align 8
  %81 = getelementptr inbounds %struct.ulptx_sgl, %struct.ulptx_sgl* %80, i32 0, i32 1
  store i8* %79, i8** %81, align 8
  %82 = load i32, i32* %17, align 4
  %83 = add i32 %82, -1
  store i32 %83, i32* %17, align 4
  %84 = icmp eq i32 %83, 0
  %85 = zext i1 %84 to i32
  %86 = call i64 @likely(i32 %85)
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %89

88:                                               ; preds = %73
  store i32 1, i32* %20, align 4
  br label %269

89:                                               ; preds = %73
  %90 = load i64*, i64** %10, align 8
  %91 = bitcast i64* %90 to %struct.ulptx_sge_pair*
  %92 = load %struct.sge_txq*, %struct.sge_txq** %8, align 8
  %93 = getelementptr inbounds %struct.sge_txq, %struct.sge_txq* %92, i32 0, i32 1
  %94 = load i64, i64* %93, align 8
  %95 = inttoptr i64 %94 to %struct.ulptx_sge_pair*
  %96 = icmp ugt %struct.ulptx_sge_pair* %91, %95
  br i1 %96, label %97, label %98

97:                                               ; preds = %89
  br label %102

98:                                               ; preds = %89
  %99 = load %struct.ulptx_sgl*, %struct.ulptx_sgl** %9, align 8
  %100 = getelementptr inbounds %struct.ulptx_sgl, %struct.ulptx_sgl* %99, i32 0, i32 0
  %101 = load %struct.ulptx_sge_pair*, %struct.ulptx_sge_pair** %100, align 8
  br label %102

102:                                              ; preds = %98, %97
  %103 = phi %struct.ulptx_sge_pair* [ %33, %97 ], [ %101, %98 ]
  store %struct.ulptx_sge_pair* %103, %struct.ulptx_sge_pair** %15, align 8
  %104 = load i32, i32* %17, align 4
  %105 = load %struct.skb_shared_info*, %struct.skb_shared_info** %16, align 8
  %106 = getelementptr inbounds %struct.skb_shared_info, %struct.skb_shared_info* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 8
  %108 = icmp ne i32 %104, %107
  %109 = zext i1 %108 to i32
  store i32 %109, i32* %13, align 4
  br label %110

110:                                              ; preds = %162, %102
  %111 = load i32, i32* %17, align 4
  %112 = icmp uge i32 %111, 2
  br i1 %112, label %113, label %167

113:                                              ; preds = %110
  %114 = load %struct.skb_shared_info*, %struct.skb_shared_info** %16, align 8
  %115 = getelementptr inbounds %struct.skb_shared_info, %struct.skb_shared_info* %114, i32 0, i32 1
  %116 = load %struct.TYPE_2__*, %struct.TYPE_2__** %115, align 8
  %117 = load i32, i32* %13, align 4
  %118 = zext i32 %117 to i64
  %119 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %116, i64 %118
  %120 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 4
  %122 = call i8* @cpu_to_be32(i32 %121)
  %123 = load %struct.ulptx_sge_pair*, %struct.ulptx_sge_pair** %15, align 8
  %124 = getelementptr inbounds %struct.ulptx_sge_pair, %struct.ulptx_sge_pair* %123, i32 0, i32 1
  %125 = load i8**, i8*** %124, align 8
  %126 = getelementptr inbounds i8*, i8** %125, i64 0
  store i8* %122, i8** %126, align 8
  %127 = load %struct.skb_shared_info*, %struct.skb_shared_info** %16, align 8
  %128 = getelementptr inbounds %struct.skb_shared_info, %struct.skb_shared_info* %127, i32 0, i32 1
  %129 = load %struct.TYPE_2__*, %struct.TYPE_2__** %128, align 8
  %130 = load i32, i32* %13, align 4
  %131 = add i32 %130, 1
  store i32 %131, i32* %13, align 4
  %132 = zext i32 %131 to i64
  %133 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %129, i64 %132
  %134 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 4
  %136 = call i8* @cpu_to_be32(i32 %135)
  %137 = load %struct.ulptx_sge_pair*, %struct.ulptx_sge_pair** %15, align 8
  %138 = getelementptr inbounds %struct.ulptx_sge_pair, %struct.ulptx_sge_pair* %137, i32 0, i32 1
  %139 = load i8**, i8*** %138, align 8
  %140 = getelementptr inbounds i8*, i8** %139, i64 1
  store i8* %136, i8** %140, align 8
  %141 = load i64*, i64** %12, align 8
  %142 = load i32, i32* %13, align 4
  %143 = zext i32 %142 to i64
  %144 = getelementptr inbounds i64, i64* %141, i64 %143
  %145 = load i64, i64* %144, align 8
  %146 = call i8* @cpu_to_be64(i64 %145)
  %147 = load %struct.ulptx_sge_pair*, %struct.ulptx_sge_pair** %15, align 8
  %148 = getelementptr inbounds %struct.ulptx_sge_pair, %struct.ulptx_sge_pair* %147, i32 0, i32 0
  %149 = load i8**, i8*** %148, align 8
  %150 = getelementptr inbounds i8*, i8** %149, i64 0
  store i8* %146, i8** %150, align 8
  %151 = load i64*, i64** %12, align 8
  %152 = load i32, i32* %13, align 4
  %153 = add i32 %152, 1
  store i32 %153, i32* %13, align 4
  %154 = zext i32 %153 to i64
  %155 = getelementptr inbounds i64, i64* %151, i64 %154
  %156 = load i64, i64* %155, align 8
  %157 = call i8* @cpu_to_be64(i64 %156)
  %158 = load %struct.ulptx_sge_pair*, %struct.ulptx_sge_pair** %15, align 8
  %159 = getelementptr inbounds %struct.ulptx_sge_pair, %struct.ulptx_sge_pair* %158, i32 0, i32 0
  %160 = load i8**, i8*** %159, align 8
  %161 = getelementptr inbounds i8*, i8** %160, i64 1
  store i8* %157, i8** %161, align 8
  br label %162

162:                                              ; preds = %113
  %163 = load i32, i32* %17, align 4
  %164 = sub i32 %163, 2
  store i32 %164, i32* %17, align 4
  %165 = load %struct.ulptx_sge_pair*, %struct.ulptx_sge_pair** %15, align 8
  %166 = getelementptr inbounds %struct.ulptx_sge_pair, %struct.ulptx_sge_pair* %165, i32 1
  store %struct.ulptx_sge_pair* %166, %struct.ulptx_sge_pair** %15, align 8
  br label %110

167:                                              ; preds = %110
  %168 = load i32, i32* %17, align 4
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %170, label %200

170:                                              ; preds = %167
  %171 = load %struct.skb_shared_info*, %struct.skb_shared_info** %16, align 8
  %172 = getelementptr inbounds %struct.skb_shared_info, %struct.skb_shared_info* %171, i32 0, i32 1
  %173 = load %struct.TYPE_2__*, %struct.TYPE_2__** %172, align 8
  %174 = load i32, i32* %13, align 4
  %175 = zext i32 %174 to i64
  %176 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %173, i64 %175
  %177 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %176, i32 0, i32 0
  %178 = load i32, i32* %177, align 4
  %179 = call i8* @cpu_to_be32(i32 %178)
  %180 = load %struct.ulptx_sge_pair*, %struct.ulptx_sge_pair** %15, align 8
  %181 = getelementptr inbounds %struct.ulptx_sge_pair, %struct.ulptx_sge_pair* %180, i32 0, i32 1
  %182 = load i8**, i8*** %181, align 8
  %183 = getelementptr inbounds i8*, i8** %182, i64 0
  store i8* %179, i8** %183, align 8
  %184 = call i8* @cpu_to_be32(i32 0)
  %185 = load %struct.ulptx_sge_pair*, %struct.ulptx_sge_pair** %15, align 8
  %186 = getelementptr inbounds %struct.ulptx_sge_pair, %struct.ulptx_sge_pair* %185, i32 0, i32 1
  %187 = load i8**, i8*** %186, align 8
  %188 = getelementptr inbounds i8*, i8** %187, i64 1
  store i8* %184, i8** %188, align 8
  %189 = load i64*, i64** %12, align 8
  %190 = load i32, i32* %13, align 4
  %191 = add i32 %190, 1
  %192 = zext i32 %191 to i64
  %193 = getelementptr inbounds i64, i64* %189, i64 %192
  %194 = load i64, i64* %193, align 8
  %195 = call i8* @cpu_to_be64(i64 %194)
  %196 = load %struct.ulptx_sge_pair*, %struct.ulptx_sge_pair** %15, align 8
  %197 = getelementptr inbounds %struct.ulptx_sge_pair, %struct.ulptx_sge_pair* %196, i32 0, i32 0
  %198 = load i8**, i8*** %197, align 8
  %199 = getelementptr inbounds i8*, i8** %198, i64 0
  store i8* %195, i8** %199, align 8
  br label %200

200:                                              ; preds = %170, %167
  %201 = load i64*, i64** %10, align 8
  %202 = bitcast i64* %201 to %struct.ulptx_sge_pair*
  %203 = load %struct.sge_txq*, %struct.sge_txq** %8, align 8
  %204 = getelementptr inbounds %struct.sge_txq, %struct.sge_txq* %203, i32 0, i32 1
  %205 = load i64, i64* %204, align 8
  %206 = inttoptr i64 %205 to %struct.ulptx_sge_pair*
  %207 = icmp ugt %struct.ulptx_sge_pair* %202, %206
  %208 = zext i1 %207 to i32
  %209 = call i64 @unlikely(i32 %208)
  %210 = icmp ne i64 %209, 0
  br i1 %210, label %211, label %261

211:                                              ; preds = %200
  %212 = load %struct.sge_txq*, %struct.sge_txq** %8, align 8
  %213 = getelementptr inbounds %struct.sge_txq, %struct.sge_txq* %212, i32 0, i32 1
  %214 = load i64, i64* %213, align 8
  %215 = inttoptr i64 %214 to %struct.ulptx_sge_pair*
  %216 = load %struct.ulptx_sgl*, %struct.ulptx_sgl** %9, align 8
  %217 = getelementptr inbounds %struct.ulptx_sgl, %struct.ulptx_sgl* %216, i32 0, i32 0
  %218 = load %struct.ulptx_sge_pair*, %struct.ulptx_sge_pair** %217, align 8
  %219 = ptrtoint %struct.ulptx_sge_pair* %215 to i64
  %220 = ptrtoint %struct.ulptx_sge_pair* %218 to i64
  %221 = sub i64 %219, %220
  %222 = sdiv exact i64 %221, 16
  %223 = trunc i64 %222 to i32
  store i32 %223, i32* %21, align 4
  %224 = load i32, i32* %21, align 4
  %225 = call i64 @likely(i32 %224)
  %226 = icmp ne i64 %225, 0
  br i1 %226, label %227, label %233

227:                                              ; preds = %211
  %228 = load %struct.ulptx_sgl*, %struct.ulptx_sgl** %9, align 8
  %229 = getelementptr inbounds %struct.ulptx_sgl, %struct.ulptx_sgl* %228, i32 0, i32 0
  %230 = load %struct.ulptx_sge_pair*, %struct.ulptx_sge_pair** %229, align 8
  %231 = load i32, i32* %21, align 4
  %232 = call i32 @memcpy(%struct.ulptx_sge_pair* %230, %struct.ulptx_sge_pair* %33, i32 %231)
  br label %233

233:                                              ; preds = %227, %211
  %234 = load i64*, i64** %10, align 8
  %235 = bitcast i64* %234 to %struct.ulptx_sge_pair*
  %236 = load %struct.sge_txq*, %struct.sge_txq** %8, align 8
  %237 = getelementptr inbounds %struct.sge_txq, %struct.sge_txq* %236, i32 0, i32 1
  %238 = load i64, i64* %237, align 8
  %239 = inttoptr i64 %238 to %struct.ulptx_sge_pair*
  %240 = ptrtoint %struct.ulptx_sge_pair* %235 to i64
  %241 = ptrtoint %struct.ulptx_sge_pair* %239 to i64
  %242 = sub i64 %240, %241
  %243 = sdiv exact i64 %242, 16
  %244 = trunc i64 %243 to i32
  store i32 %244, i32* %22, align 4
  %245 = load %struct.sge_txq*, %struct.sge_txq** %8, align 8
  %246 = getelementptr inbounds %struct.sge_txq, %struct.sge_txq* %245, i32 0, i32 0
  %247 = load %struct.ulptx_sge_pair*, %struct.ulptx_sge_pair** %246, align 8
  %248 = load i32, i32* %21, align 4
  %249 = zext i32 %248 to i64
  %250 = getelementptr inbounds %struct.ulptx_sge_pair, %struct.ulptx_sge_pair* %33, i64 %249
  %251 = load i32, i32* %22, align 4
  %252 = call i32 @memcpy(%struct.ulptx_sge_pair* %247, %struct.ulptx_sge_pair* %250, i32 %251)
  %253 = load %struct.sge_txq*, %struct.sge_txq** %8, align 8
  %254 = getelementptr inbounds %struct.sge_txq, %struct.sge_txq* %253, i32 0, i32 0
  %255 = load %struct.ulptx_sge_pair*, %struct.ulptx_sge_pair** %254, align 8
  %256 = bitcast %struct.ulptx_sge_pair* %255 to i8*
  %257 = load i32, i32* %22, align 4
  %258 = zext i32 %257 to i64
  %259 = getelementptr i8, i8* %256, i64 %258
  %260 = bitcast i8* %259 to i64*
  store i64* %260, i64** %10, align 8
  br label %261

261:                                              ; preds = %233, %200
  %262 = load i64*, i64** %10, align 8
  %263 = ptrtoint i64* %262 to i64
  %264 = and i64 %263, 8
  %265 = icmp ne i64 %264, 0
  br i1 %265, label %266, label %268

266:                                              ; preds = %261
  %267 = load i64*, i64** %10, align 8
  store i64 0, i64* %267, align 8
  br label %268

268:                                              ; preds = %266, %261
  store i32 0, i32* %20, align 4
  br label %269

269:                                              ; preds = %268, %88
  %270 = load i8*, i8** %18, align 8
  call void @llvm.stackrestore(i8* %270)
  %271 = load i32, i32* %20, align 4
  switch i32 %271, label %273 [
    i32 0, label %272
    i32 1, label %272
  ]

272:                                              ; preds = %269, %269
  ret void

273:                                              ; preds = %269
  unreachable
}

declare dso_local %struct.skb_shared_info* @skb_shinfo(%struct.sk_buff*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @skb_headlen(%struct.sk_buff*) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i8* @htonl(i32) #1

declare dso_local i8* @cpu_to_be64(i64) #1

declare dso_local i32 @ULPTX_CMD(i32) #1

declare dso_local i32 @ULPTX_NSGE(i32) #1

declare dso_local i8* @cpu_to_be32(i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @memcpy(%struct.ulptx_sge_pair*, %struct.ulptx_sge_pair*, i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
