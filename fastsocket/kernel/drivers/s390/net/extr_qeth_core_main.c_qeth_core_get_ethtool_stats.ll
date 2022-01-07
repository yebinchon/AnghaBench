; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/net/extr_qeth_core_main.c_qeth_core_get_ethtool_stats.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/net/extr_qeth_core_main.c_qeth_core_get_ethtool_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { %struct.qeth_card* }
%struct.qeth_card = type { %struct.TYPE_8__, %struct.TYPE_7__, %struct.TYPE_5__ }
%struct.TYPE_8__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_7__ = type { i32, %struct.TYPE_6__** }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32, i32 }
%struct.ethtool_stats = type { i32 }

@QETH_LOW_WATERMARK_PACK = common dso_local global i32 0, align 4
@QETH_HIGH_WATERMARK_PACK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @qeth_core_get_ethtool_stats(%struct.net_device* %0, %struct.ethtool_stats* %1, i32* %2) #0 {
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.ethtool_stats*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.qeth_card*, align 8
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.ethtool_stats* %1, %struct.ethtool_stats** %5, align 8
  store i32* %2, i32** %6, align 8
  %8 = load %struct.net_device*, %struct.net_device** %4, align 8
  %9 = getelementptr inbounds %struct.net_device, %struct.net_device* %8, i32 0, i32 0
  %10 = load %struct.qeth_card*, %struct.qeth_card** %9, align 8
  store %struct.qeth_card* %10, %struct.qeth_card** %7, align 8
  %11 = load %struct.qeth_card*, %struct.qeth_card** %7, align 8
  %12 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %11, i32 0, i32 2
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = load %struct.qeth_card*, %struct.qeth_card** %7, align 8
  %16 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = sub nsw i32 %14, %18
  %20 = load i32*, i32** %6, align 8
  %21 = getelementptr inbounds i32, i32* %20, i64 0
  store i32 %19, i32* %21, align 4
  %22 = load %struct.qeth_card*, %struct.qeth_card** %7, align 8
  %23 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = load i32*, i32** %6, align 8
  %27 = getelementptr inbounds i32, i32* %26, i64 1
  store i32 %25, i32* %27, align 4
  %28 = load %struct.qeth_card*, %struct.qeth_card** %7, align 8
  %29 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %28, i32 0, i32 2
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.qeth_card*, %struct.qeth_card** %7, align 8
  %33 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 8
  %36 = sub nsw i32 %31, %35
  %37 = load i32*, i32** %6, align 8
  %38 = getelementptr inbounds i32, i32* %37, i64 2
  store i32 %36, i32* %38, align 4
  %39 = load %struct.qeth_card*, %struct.qeth_card** %7, align 8
  %40 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %40, i32 0, i32 3
  %42 = load i32, i32* %41, align 4
  %43 = load i32*, i32** %6, align 8
  %44 = getelementptr inbounds i32, i32* %43, i64 3
  store i32 %42, i32* %44, align 4
  %45 = load %struct.qeth_card*, %struct.qeth_card** %7, align 8
  %46 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %45, i32 0, i32 2
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.qeth_card*, %struct.qeth_card** %7, align 8
  %50 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 8
  %53 = sub nsw i32 %48, %52
  %54 = load %struct.qeth_card*, %struct.qeth_card** %7, align 8
  %55 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %55, i32 0, i32 4
  %57 = load i32, i32* %56, align 8
  %58 = sub nsw i32 %53, %57
  %59 = load i32*, i32** %6, align 8
  %60 = getelementptr inbounds i32, i32* %59, i64 4
  store i32 %58, i32* %60, align 4
  %61 = load %struct.qeth_card*, %struct.qeth_card** %7, align 8
  %62 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %62, i32 0, i32 3
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.qeth_card*, %struct.qeth_card** %7, align 8
  %66 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %66, i32 0, i32 5
  %68 = load i32, i32* %67, align 4
  %69 = sub nsw i32 %64, %68
  %70 = load i32*, i32** %6, align 8
  %71 = getelementptr inbounds i32, i32* %70, i64 5
  store i32 %69, i32* %71, align 4
  %72 = load %struct.qeth_card*, %struct.qeth_card** %7, align 8
  %73 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %73, i32 0, i32 4
  %75 = load i32, i32* %74, align 8
  %76 = load i32*, i32** %6, align 8
  %77 = getelementptr inbounds i32, i32* %76, i64 6
  store i32 %75, i32* %77, align 4
  %78 = load %struct.qeth_card*, %struct.qeth_card** %7, align 8
  %79 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %79, i32 0, i32 5
  %81 = load i32, i32* %80, align 4
  %82 = load i32*, i32** %6, align 8
  %83 = getelementptr inbounds i32, i32* %82, i64 7
  store i32 %81, i32* %83, align 4
  %84 = load %struct.qeth_card*, %struct.qeth_card** %7, align 8
  %85 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %85, i32 0, i32 6
  %87 = load i32, i32* %86, align 8
  %88 = load i32*, i32** %6, align 8
  %89 = getelementptr inbounds i32, i32* %88, i64 8
  store i32 %87, i32* %89, align 4
  %90 = load %struct.qeth_card*, %struct.qeth_card** %7, align 8
  %91 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %91, i32 0, i32 7
  %93 = load i32, i32* %92, align 4
  %94 = load i32*, i32** %6, align 8
  %95 = getelementptr inbounds i32, i32* %94, i64 9
  store i32 %93, i32* %95, align 4
  %96 = load %struct.qeth_card*, %struct.qeth_card** %7, align 8
  %97 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %97, i32 0, i32 8
  %99 = load i32, i32* %98, align 8
  %100 = load i32*, i32** %6, align 8
  %101 = getelementptr inbounds i32, i32* %100, i64 10
  store i32 %99, i32* %101, align 4
  %102 = load %struct.qeth_card*, %struct.qeth_card** %7, align 8
  %103 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %103, i32 0, i32 9
  %105 = load i32, i32* %104, align 4
  %106 = load i32*, i32** %6, align 8
  %107 = getelementptr inbounds i32, i32* %106, i64 11
  store i32 %105, i32* %107, align 4
  %108 = load %struct.qeth_card*, %struct.qeth_card** %7, align 8
  %109 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %108, i32 0, i32 0
  %110 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %109, i32 0, i32 10
  %111 = load i32, i32* %110, align 8
  %112 = load i32*, i32** %6, align 8
  %113 = getelementptr inbounds i32, i32* %112, i64 12
  store i32 %111, i32* %113, align 4
  %114 = load %struct.qeth_card*, %struct.qeth_card** %7, align 8
  %115 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %114, i32 0, i32 0
  %116 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %115, i32 0, i32 11
  %117 = load i32, i32* %116, align 4
  %118 = ashr i32 %117, 10
  %119 = load i32*, i32** %6, align 8
  %120 = getelementptr inbounds i32, i32* %119, i64 13
  store i32 %118, i32* %120, align 4
  %121 = load %struct.qeth_card*, %struct.qeth_card** %7, align 8
  %122 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %121, i32 0, i32 0
  %123 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %122, i32 0, i32 12
  %124 = load i32, i32* %123, align 8
  %125 = load i32*, i32** %6, align 8
  %126 = getelementptr inbounds i32, i32* %125, i64 14
  store i32 %124, i32* %126, align 4
  %127 = load %struct.qeth_card*, %struct.qeth_card** %7, align 8
  %128 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %127, i32 0, i32 0
  %129 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %128, i32 0, i32 13
  %130 = load i32, i32* %129, align 4
  %131 = load i32*, i32** %6, align 8
  %132 = getelementptr inbounds i32, i32* %131, i64 15
  store i32 %130, i32* %132, align 4
  %133 = load %struct.qeth_card*, %struct.qeth_card** %7, align 8
  %134 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %133, i32 0, i32 0
  %135 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %134, i32 0, i32 14
  %136 = load i32, i32* %135, align 8
  %137 = load i32*, i32** %6, align 8
  %138 = getelementptr inbounds i32, i32* %137, i64 16
  store i32 %136, i32* %138, align 4
  %139 = load i32, i32* @QETH_LOW_WATERMARK_PACK, align 4
  %140 = load i32*, i32** %6, align 8
  %141 = getelementptr inbounds i32, i32* %140, i64 17
  store i32 %139, i32* %141, align 4
  %142 = load i32, i32* @QETH_HIGH_WATERMARK_PACK, align 4
  %143 = load i32*, i32** %6, align 8
  %144 = getelementptr inbounds i32, i32* %143, i64 18
  store i32 %142, i32* %144, align 4
  %145 = load %struct.qeth_card*, %struct.qeth_card** %7, align 8
  %146 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %145, i32 0, i32 1
  %147 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %146, i32 0, i32 1
  %148 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %147, align 8
  %149 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %148, i64 0
  %150 = load %struct.TYPE_6__*, %struct.TYPE_6__** %149, align 8
  %151 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %150, i32 0, i32 0
  %152 = call i32 @atomic_read(i32* %151)
  %153 = load i32*, i32** %6, align 8
  %154 = getelementptr inbounds i32, i32* %153, i64 19
  store i32 %152, i32* %154, align 4
  %155 = load %struct.qeth_card*, %struct.qeth_card** %7, align 8
  %156 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %155, i32 0, i32 1
  %157 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %156, i32 0, i32 0
  %158 = load i32, i32* %157, align 8
  %159 = icmp sgt i32 %158, 1
  br i1 %159, label %160, label %169

160:                                              ; preds = %3
  %161 = load %struct.qeth_card*, %struct.qeth_card** %7, align 8
  %162 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %161, i32 0, i32 1
  %163 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %162, i32 0, i32 1
  %164 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %163, align 8
  %165 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %164, i64 1
  %166 = load %struct.TYPE_6__*, %struct.TYPE_6__** %165, align 8
  %167 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %166, i32 0, i32 0
  %168 = call i32 @atomic_read(i32* %167)
  br label %170

169:                                              ; preds = %3
  br label %170

170:                                              ; preds = %169, %160
  %171 = phi i32 [ %168, %160 ], [ 0, %169 ]
  %172 = load i32*, i32** %6, align 8
  %173 = getelementptr inbounds i32, i32* %172, i64 20
  store i32 %171, i32* %173, align 4
  %174 = load %struct.qeth_card*, %struct.qeth_card** %7, align 8
  %175 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %174, i32 0, i32 1
  %176 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %175, i32 0, i32 0
  %177 = load i32, i32* %176, align 8
  %178 = icmp sgt i32 %177, 2
  br i1 %178, label %179, label %188

179:                                              ; preds = %170
  %180 = load %struct.qeth_card*, %struct.qeth_card** %7, align 8
  %181 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %180, i32 0, i32 1
  %182 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %181, i32 0, i32 1
  %183 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %182, align 8
  %184 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %183, i64 2
  %185 = load %struct.TYPE_6__*, %struct.TYPE_6__** %184, align 8
  %186 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %185, i32 0, i32 0
  %187 = call i32 @atomic_read(i32* %186)
  br label %189

188:                                              ; preds = %170
  br label %189

189:                                              ; preds = %188, %179
  %190 = phi i32 [ %187, %179 ], [ 0, %188 ]
  %191 = load i32*, i32** %6, align 8
  %192 = getelementptr inbounds i32, i32* %191, i64 21
  store i32 %190, i32* %192, align 4
  %193 = load %struct.qeth_card*, %struct.qeth_card** %7, align 8
  %194 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %193, i32 0, i32 1
  %195 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %194, i32 0, i32 0
  %196 = load i32, i32* %195, align 8
  %197 = icmp sgt i32 %196, 3
  br i1 %197, label %198, label %207

198:                                              ; preds = %189
  %199 = load %struct.qeth_card*, %struct.qeth_card** %7, align 8
  %200 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %199, i32 0, i32 1
  %201 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %200, i32 0, i32 1
  %202 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %201, align 8
  %203 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %202, i64 3
  %204 = load %struct.TYPE_6__*, %struct.TYPE_6__** %203, align 8
  %205 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %204, i32 0, i32 0
  %206 = call i32 @atomic_read(i32* %205)
  br label %208

207:                                              ; preds = %189
  br label %208

208:                                              ; preds = %207, %198
  %209 = phi i32 [ %206, %198 ], [ 0, %207 ]
  %210 = load i32*, i32** %6, align 8
  %211 = getelementptr inbounds i32, i32* %210, i64 22
  store i32 %209, i32* %211, align 4
  %212 = load %struct.qeth_card*, %struct.qeth_card** %7, align 8
  %213 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %212, i32 0, i32 0
  %214 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %213, i32 0, i32 15
  %215 = load i32, i32* %214, align 4
  %216 = load i32*, i32** %6, align 8
  %217 = getelementptr inbounds i32, i32* %216, i64 23
  store i32 %215, i32* %217, align 4
  %218 = load %struct.qeth_card*, %struct.qeth_card** %7, align 8
  %219 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %218, i32 0, i32 0
  %220 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %219, i32 0, i32 16
  %221 = load i32, i32* %220, align 8
  %222 = load i32*, i32** %6, align 8
  %223 = getelementptr inbounds i32, i32* %222, i64 24
  store i32 %221, i32* %223, align 4
  %224 = load %struct.qeth_card*, %struct.qeth_card** %7, align 8
  %225 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %224, i32 0, i32 0
  %226 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %225, i32 0, i32 17
  %227 = load i32, i32* %226, align 4
  %228 = load i32*, i32** %6, align 8
  %229 = getelementptr inbounds i32, i32* %228, i64 25
  store i32 %227, i32* %229, align 4
  %230 = load %struct.qeth_card*, %struct.qeth_card** %7, align 8
  %231 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %230, i32 0, i32 0
  %232 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %231, i32 0, i32 18
  %233 = load i32, i32* %232, align 8
  %234 = load i32*, i32** %6, align 8
  %235 = getelementptr inbounds i32, i32* %234, i64 26
  store i32 %233, i32* %235, align 4
  %236 = load %struct.qeth_card*, %struct.qeth_card** %7, align 8
  %237 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %236, i32 0, i32 0
  %238 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %237, i32 0, i32 19
  %239 = load i32, i32* %238, align 4
  %240 = load i32*, i32** %6, align 8
  %241 = getelementptr inbounds i32, i32* %240, i64 27
  store i32 %239, i32* %241, align 4
  %242 = load %struct.qeth_card*, %struct.qeth_card** %7, align 8
  %243 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %242, i32 0, i32 0
  %244 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %243, i32 0, i32 20
  %245 = load i32, i32* %244, align 8
  %246 = load i32*, i32** %6, align 8
  %247 = getelementptr inbounds i32, i32* %246, i64 28
  store i32 %245, i32* %247, align 4
  %248 = load %struct.qeth_card*, %struct.qeth_card** %7, align 8
  %249 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %248, i32 0, i32 0
  %250 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %249, i32 0, i32 21
  %251 = load i32, i32* %250, align 4
  %252 = load i32*, i32** %6, align 8
  %253 = getelementptr inbounds i32, i32* %252, i64 29
  store i32 %251, i32* %253, align 4
  %254 = load %struct.qeth_card*, %struct.qeth_card** %7, align 8
  %255 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %254, i32 0, i32 0
  %256 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %255, i32 0, i32 22
  %257 = load i32, i32* %256, align 8
  %258 = load i32*, i32** %6, align 8
  %259 = getelementptr inbounds i32, i32* %258, i64 30
  store i32 %257, i32* %259, align 4
  %260 = load %struct.qeth_card*, %struct.qeth_card** %7, align 8
  %261 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %260, i32 0, i32 0
  %262 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %261, i32 0, i32 23
  %263 = load i32, i32* %262, align 4
  %264 = load i32*, i32** %6, align 8
  %265 = getelementptr inbounds i32, i32* %264, i64 31
  store i32 %263, i32* %265, align 4
  %266 = load %struct.qeth_card*, %struct.qeth_card** %7, align 8
  %267 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %266, i32 0, i32 0
  %268 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %267, i32 0, i32 24
  %269 = load i32, i32* %268, align 8
  %270 = load i32*, i32** %6, align 8
  %271 = getelementptr inbounds i32, i32* %270, i64 32
  store i32 %269, i32* %271, align 4
  %272 = load %struct.qeth_card*, %struct.qeth_card** %7, align 8
  %273 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %272, i32 0, i32 0
  %274 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %273, i32 0, i32 25
  %275 = load i32, i32* %274, align 4
  %276 = load i32*, i32** %6, align 8
  %277 = getelementptr inbounds i32, i32* %276, i64 33
  store i32 %275, i32* %277, align 4
  %278 = load %struct.qeth_card*, %struct.qeth_card** %7, align 8
  %279 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %278, i32 0, i32 0
  %280 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %279, i32 0, i32 26
  %281 = load i32, i32* %280, align 8
  %282 = load i32*, i32** %6, align 8
  %283 = getelementptr inbounds i32, i32* %282, i64 34
  store i32 %281, i32* %283, align 4
  %284 = load %struct.qeth_card*, %struct.qeth_card** %7, align 8
  %285 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %284, i32 0, i32 0
  %286 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %285, i32 0, i32 27
  %287 = load i32, i32* %286, align 4
  %288 = load i32*, i32** %6, align 8
  %289 = getelementptr inbounds i32, i32* %288, i64 35
  store i32 %287, i32* %289, align 4
  %290 = load %struct.qeth_card*, %struct.qeth_card** %7, align 8
  %291 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %290, i32 0, i32 0
  %292 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %291, i32 0, i32 28
  %293 = load i32, i32* %292, align 8
  %294 = load i32*, i32** %6, align 8
  %295 = getelementptr inbounds i32, i32* %294, i64 36
  store i32 %293, i32* %295, align 4
  ret void
}

declare dso_local i32 @atomic_read(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
