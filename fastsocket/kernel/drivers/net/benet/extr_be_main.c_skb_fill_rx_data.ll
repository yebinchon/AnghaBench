; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/benet/extr_be_main.c_skb_fill_rx_data.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/benet/extr_be_main.c_skb_fill_rx_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.be_rx_obj = type { %struct.be_queue_info }
%struct.be_queue_info = type { i32 }
%struct.sk_buff = type { i64, i32, i64, i32, i32 }
%struct.be_rx_compl_info = type { i64, i32, i32 }
%struct.be_rx_page_info = type { i64, i32* }
%struct.TYPE_4__ = type { i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i64 }

@rx_frag_size = common dso_local global i64 0, align 8
@BE_HDR_LEN = common dso_local global i64 0, align 8
@ETH_HLEN = common dso_local global i64 0, align 8
@MAX_SKB_FRAGS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.be_rx_obj*, %struct.sk_buff*, %struct.be_rx_compl_info*)* @skb_fill_rx_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @skb_fill_rx_data(%struct.be_rx_obj* %0, %struct.sk_buff* %1, %struct.be_rx_compl_info* %2) #0 {
  %4 = alloca %struct.be_rx_obj*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.be_rx_compl_info*, align 8
  %7 = alloca %struct.be_queue_info*, align 8
  %8 = alloca %struct.be_rx_page_info*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32*, align 8
  store %struct.be_rx_obj* %0, %struct.be_rx_obj** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  store %struct.be_rx_compl_info* %2, %struct.be_rx_compl_info** %6, align 8
  %15 = load %struct.be_rx_obj*, %struct.be_rx_obj** %4, align 8
  %16 = getelementptr inbounds %struct.be_rx_obj, %struct.be_rx_obj* %15, i32 0, i32 0
  store %struct.be_queue_info* %16, %struct.be_queue_info** %7, align 8
  %17 = load %struct.be_rx_obj*, %struct.be_rx_obj** %4, align 8
  %18 = load %struct.be_rx_compl_info*, %struct.be_rx_compl_info** %6, align 8
  %19 = getelementptr inbounds %struct.be_rx_compl_info, %struct.be_rx_compl_info* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 4
  %21 = call %struct.be_rx_page_info* @get_rx_page_info(%struct.be_rx_obj* %17, i32 %20)
  store %struct.be_rx_page_info* %21, %struct.be_rx_page_info** %8, align 8
  %22 = load %struct.be_rx_page_info*, %struct.be_rx_page_info** %8, align 8
  %23 = getelementptr inbounds %struct.be_rx_page_info, %struct.be_rx_page_info* %22, i32 0, i32 1
  %24 = load i32*, i32** %23, align 8
  %25 = call i32* @page_address(i32* %24)
  %26 = load %struct.be_rx_page_info*, %struct.be_rx_page_info** %8, align 8
  %27 = getelementptr inbounds %struct.be_rx_page_info, %struct.be_rx_page_info* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = getelementptr inbounds i32, i32* %25, i64 %28
  store i32* %29, i32** %14, align 8
  %30 = load i32*, i32** %14, align 8
  %31 = call i32 @prefetch(i32* %30)
  %32 = load %struct.be_rx_compl_info*, %struct.be_rx_compl_info** %6, align 8
  %33 = getelementptr inbounds %struct.be_rx_compl_info, %struct.be_rx_compl_info* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @rx_frag_size, align 8
  %36 = call i64 @min(i64 %34, i64 %35)
  store i64 %36, i64* %12, align 8
  %37 = load i64, i64* %12, align 8
  %38 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %39 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %38, i32 0, i32 2
  store i64 %37, i64* %39, align 8
  %40 = load i64, i64* %12, align 8
  %41 = load i64, i64* @BE_HDR_LEN, align 8
  %42 = icmp sle i64 %40, %41
  br i1 %42, label %43, label %63

43:                                               ; preds = %3
  %44 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %45 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %44, i32 0, i32 4
  %46 = load i32, i32* %45, align 4
  %47 = load i32*, i32** %14, align 8
  %48 = load i64, i64* %12, align 8
  %49 = call i32 @memcpy(i32 %46, i32* %47, i64 %48)
  %50 = load %struct.be_rx_page_info*, %struct.be_rx_page_info** %8, align 8
  %51 = getelementptr inbounds %struct.be_rx_page_info, %struct.be_rx_page_info* %50, i32 0, i32 1
  %52 = load i32*, i32** %51, align 8
  %53 = call i32 @put_page(i32* %52)
  %54 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %55 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %54, i32 0, i32 0
  store i64 0, i64* %55, align 8
  %56 = load i64, i64* %12, align 8
  %57 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %58 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %57, i32 0, i32 3
  %59 = load i32, i32* %58, align 8
  %60 = sext i32 %59 to i64
  %61 = add nsw i64 %60, %56
  %62 = trunc i64 %61 to i32
  store i32 %62, i32* %58, align 8
  br label %118

63:                                               ; preds = %3
  %64 = load i64, i64* @ETH_HLEN, align 8
  store i64 %64, i64* %11, align 8
  %65 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %66 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %65, i32 0, i32 4
  %67 = load i32, i32* %66, align 4
  %68 = load i32*, i32** %14, align 8
  %69 = load i64, i64* %11, align 8
  %70 = call i32 @memcpy(i32 %67, i32* %68, i64 %69)
  %71 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %72 = call %struct.TYPE_4__* @skb_shinfo(%struct.sk_buff* %71)
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 0
  store i32 1, i32* %73, align 8
  %74 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %75 = load %struct.be_rx_page_info*, %struct.be_rx_page_info** %8, align 8
  %76 = getelementptr inbounds %struct.be_rx_page_info, %struct.be_rx_page_info* %75, i32 0, i32 1
  %77 = load i32*, i32** %76, align 8
  %78 = call i32 @skb_frag_set_page(%struct.sk_buff* %74, i64 0, i32* %77)
  %79 = load %struct.be_rx_page_info*, %struct.be_rx_page_info** %8, align 8
  %80 = getelementptr inbounds %struct.be_rx_page_info, %struct.be_rx_page_info* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = load i64, i64* %11, align 8
  %83 = add nsw i64 %81, %82
  %84 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %85 = call %struct.TYPE_4__* @skb_shinfo(%struct.sk_buff* %84)
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i32 0, i32 1
  %87 = load %struct.TYPE_5__*, %struct.TYPE_5__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %87, i64 0
  %89 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %88, i32 0, i32 0
  store i64 %83, i64* %89, align 8
  %90 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %91 = call %struct.TYPE_4__* @skb_shinfo(%struct.sk_buff* %90)
  %92 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %91, i32 0, i32 1
  %93 = load %struct.TYPE_5__*, %struct.TYPE_5__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %93, i64 0
  %95 = load i64, i64* %12, align 8
  %96 = load i64, i64* %11, align 8
  %97 = sub nsw i64 %95, %96
  %98 = call i32 @skb_frag_size_set(%struct.TYPE_5__* %94, i64 %97)
  %99 = load i64, i64* %12, align 8
  %100 = load i64, i64* %11, align 8
  %101 = sub nsw i64 %99, %100
  %102 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %103 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %102, i32 0, i32 0
  store i64 %101, i64* %103, align 8
  %104 = load i64, i64* @rx_frag_size, align 8
  %105 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %106 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 8
  %108 = sext i32 %107 to i64
  %109 = add nsw i64 %108, %104
  %110 = trunc i64 %109 to i32
  store i32 %110, i32* %106, align 8
  %111 = load i64, i64* %11, align 8
  %112 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %113 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %112, i32 0, i32 3
  %114 = load i32, i32* %113, align 8
  %115 = sext i32 %114 to i64
  %116 = add nsw i64 %115, %111
  %117 = trunc i64 %116 to i32
  store i32 %117, i32* %113, align 8
  br label %118

118:                                              ; preds = %63, %43
  %119 = load %struct.be_rx_page_info*, %struct.be_rx_page_info** %8, align 8
  %120 = getelementptr inbounds %struct.be_rx_page_info, %struct.be_rx_page_info* %119, i32 0, i32 1
  store i32* null, i32** %120, align 8
  %121 = load %struct.be_rx_compl_info*, %struct.be_rx_compl_info** %6, align 8
  %122 = getelementptr inbounds %struct.be_rx_compl_info, %struct.be_rx_compl_info* %121, i32 0, i32 0
  %123 = load i64, i64* %122, align 8
  %124 = load i64, i64* @rx_frag_size, align 8
  %125 = icmp sle i64 %123, %124
  br i1 %125, label %126, label %133

126:                                              ; preds = %118
  %127 = load %struct.be_rx_compl_info*, %struct.be_rx_compl_info** %6, align 8
  %128 = getelementptr inbounds %struct.be_rx_compl_info, %struct.be_rx_compl_info* %127, i32 0, i32 1
  %129 = load i32, i32* %128, align 8
  %130 = icmp ne i32 %129, 1
  %131 = zext i1 %130 to i32
  %132 = call i32 @BUG_ON(i32 %131)
  br label %247

133:                                              ; preds = %118
  %134 = load %struct.be_rx_compl_info*, %struct.be_rx_compl_info** %6, align 8
  %135 = getelementptr inbounds %struct.be_rx_compl_info, %struct.be_rx_compl_info* %134, i32 0, i32 2
  %136 = load %struct.be_queue_info*, %struct.be_queue_info** %7, align 8
  %137 = getelementptr inbounds %struct.be_queue_info, %struct.be_queue_info* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 4
  %139 = call i32 @index_inc(i32* %135, i32 %138)
  %140 = load %struct.be_rx_compl_info*, %struct.be_rx_compl_info** %6, align 8
  %141 = getelementptr inbounds %struct.be_rx_compl_info, %struct.be_rx_compl_info* %140, i32 0, i32 0
  %142 = load i64, i64* %141, align 8
  %143 = load i64, i64* %12, align 8
  %144 = sub nsw i64 %142, %143
  store i64 %144, i64* %13, align 8
  store i64 1, i64* %9, align 8
  store i64 0, i64* %10, align 8
  br label %145

145:                                              ; preds = %238, %133
  %146 = load i64, i64* %9, align 8
  %147 = load %struct.be_rx_compl_info*, %struct.be_rx_compl_info** %6, align 8
  %148 = getelementptr inbounds %struct.be_rx_compl_info, %struct.be_rx_compl_info* %147, i32 0, i32 1
  %149 = load i32, i32* %148, align 8
  %150 = sext i32 %149 to i64
  %151 = icmp slt i64 %146, %150
  br i1 %151, label %152, label %241

152:                                              ; preds = %145
  %153 = load %struct.be_rx_obj*, %struct.be_rx_obj** %4, align 8
  %154 = load %struct.be_rx_compl_info*, %struct.be_rx_compl_info** %6, align 8
  %155 = getelementptr inbounds %struct.be_rx_compl_info, %struct.be_rx_compl_info* %154, i32 0, i32 2
  %156 = load i32, i32* %155, align 4
  %157 = call %struct.be_rx_page_info* @get_rx_page_info(%struct.be_rx_obj* %153, i32 %156)
  store %struct.be_rx_page_info* %157, %struct.be_rx_page_info** %8, align 8
  %158 = load i64, i64* %13, align 8
  %159 = load i64, i64* @rx_frag_size, align 8
  %160 = call i64 @min(i64 %158, i64 %159)
  store i64 %160, i64* %12, align 8
  %161 = load %struct.be_rx_page_info*, %struct.be_rx_page_info** %8, align 8
  %162 = getelementptr inbounds %struct.be_rx_page_info, %struct.be_rx_page_info* %161, i32 0, i32 0
  %163 = load i64, i64* %162, align 8
  %164 = icmp eq i64 %163, 0
  br i1 %164, label %165, label %196

165:                                              ; preds = %152
  %166 = load i64, i64* %10, align 8
  %167 = add nsw i64 %166, 1
  store i64 %167, i64* %10, align 8
  %168 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %169 = load i64, i64* %10, align 8
  %170 = load %struct.be_rx_page_info*, %struct.be_rx_page_info** %8, align 8
  %171 = getelementptr inbounds %struct.be_rx_page_info, %struct.be_rx_page_info* %170, i32 0, i32 1
  %172 = load i32*, i32** %171, align 8
  %173 = call i32 @skb_frag_set_page(%struct.sk_buff* %168, i64 %169, i32* %172)
  %174 = load %struct.be_rx_page_info*, %struct.be_rx_page_info** %8, align 8
  %175 = getelementptr inbounds %struct.be_rx_page_info, %struct.be_rx_page_info* %174, i32 0, i32 0
  %176 = load i64, i64* %175, align 8
  %177 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %178 = call %struct.TYPE_4__* @skb_shinfo(%struct.sk_buff* %177)
  %179 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %178, i32 0, i32 1
  %180 = load %struct.TYPE_5__*, %struct.TYPE_5__** %179, align 8
  %181 = load i64, i64* %10, align 8
  %182 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %180, i64 %181
  %183 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %182, i32 0, i32 0
  store i64 %176, i64* %183, align 8
  %184 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %185 = call %struct.TYPE_4__* @skb_shinfo(%struct.sk_buff* %184)
  %186 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %185, i32 0, i32 1
  %187 = load %struct.TYPE_5__*, %struct.TYPE_5__** %186, align 8
  %188 = load i64, i64* %10, align 8
  %189 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %187, i64 %188
  %190 = call i32 @skb_frag_size_set(%struct.TYPE_5__* %189, i64 0)
  %191 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %192 = call %struct.TYPE_4__* @skb_shinfo(%struct.sk_buff* %191)
  %193 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %192, i32 0, i32 0
  %194 = load i32, i32* %193, align 8
  %195 = add nsw i32 %194, 1
  store i32 %195, i32* %193, align 8
  br label %201

196:                                              ; preds = %152
  %197 = load %struct.be_rx_page_info*, %struct.be_rx_page_info** %8, align 8
  %198 = getelementptr inbounds %struct.be_rx_page_info, %struct.be_rx_page_info* %197, i32 0, i32 1
  %199 = load i32*, i32** %198, align 8
  %200 = call i32 @put_page(i32* %199)
  br label %201

201:                                              ; preds = %196, %165
  %202 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %203 = call %struct.TYPE_4__* @skb_shinfo(%struct.sk_buff* %202)
  %204 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %203, i32 0, i32 1
  %205 = load %struct.TYPE_5__*, %struct.TYPE_5__** %204, align 8
  %206 = load i64, i64* %10, align 8
  %207 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %205, i64 %206
  %208 = load i64, i64* %12, align 8
  %209 = call i32 @skb_frag_size_add(%struct.TYPE_5__* %207, i64 %208)
  %210 = load i64, i64* %12, align 8
  %211 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %212 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %211, i32 0, i32 2
  %213 = load i64, i64* %212, align 8
  %214 = add nsw i64 %213, %210
  store i64 %214, i64* %212, align 8
  %215 = load i64, i64* %12, align 8
  %216 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %217 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %216, i32 0, i32 0
  %218 = load i64, i64* %217, align 8
  %219 = add nsw i64 %218, %215
  store i64 %219, i64* %217, align 8
  %220 = load i64, i64* @rx_frag_size, align 8
  %221 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %222 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %221, i32 0, i32 1
  %223 = load i32, i32* %222, align 8
  %224 = sext i32 %223 to i64
  %225 = add nsw i64 %224, %220
  %226 = trunc i64 %225 to i32
  store i32 %226, i32* %222, align 8
  %227 = load i64, i64* %12, align 8
  %228 = load i64, i64* %13, align 8
  %229 = sub nsw i64 %228, %227
  store i64 %229, i64* %13, align 8
  %230 = load %struct.be_rx_compl_info*, %struct.be_rx_compl_info** %6, align 8
  %231 = getelementptr inbounds %struct.be_rx_compl_info, %struct.be_rx_compl_info* %230, i32 0, i32 2
  %232 = load %struct.be_queue_info*, %struct.be_queue_info** %7, align 8
  %233 = getelementptr inbounds %struct.be_queue_info, %struct.be_queue_info* %232, i32 0, i32 0
  %234 = load i32, i32* %233, align 4
  %235 = call i32 @index_inc(i32* %231, i32 %234)
  %236 = load %struct.be_rx_page_info*, %struct.be_rx_page_info** %8, align 8
  %237 = getelementptr inbounds %struct.be_rx_page_info, %struct.be_rx_page_info* %236, i32 0, i32 1
  store i32* null, i32** %237, align 8
  br label %238

238:                                              ; preds = %201
  %239 = load i64, i64* %9, align 8
  %240 = add nsw i64 %239, 1
  store i64 %240, i64* %9, align 8
  br label %145

241:                                              ; preds = %145
  %242 = load i64, i64* %10, align 8
  %243 = load i64, i64* @MAX_SKB_FRAGS, align 8
  %244 = icmp sgt i64 %242, %243
  %245 = zext i1 %244 to i32
  %246 = call i32 @BUG_ON(i32 %245)
  br label %247

247:                                              ; preds = %241, %126
  ret void
}

declare dso_local %struct.be_rx_page_info* @get_rx_page_info(%struct.be_rx_obj*, i32) #1

declare dso_local i32* @page_address(i32*) #1

declare dso_local i32 @prefetch(i32*) #1

declare dso_local i64 @min(i64, i64) #1

declare dso_local i32 @memcpy(i32, i32*, i64) #1

declare dso_local i32 @put_page(i32*) #1

declare dso_local %struct.TYPE_4__* @skb_shinfo(%struct.sk_buff*) #1

declare dso_local i32 @skb_frag_set_page(%struct.sk_buff*, i64, i32*) #1

declare dso_local i32 @skb_frag_size_set(%struct.TYPE_5__*, i64) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @index_inc(i32*, i32) #1

declare dso_local i32 @skb_frag_size_add(%struct.TYPE_5__*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
