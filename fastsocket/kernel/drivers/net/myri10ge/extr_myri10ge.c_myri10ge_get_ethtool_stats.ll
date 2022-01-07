; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/myri10ge/extr_myri10ge.c_myri10ge_get_ethtool_stats.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/myri10ge/extr_myri10ge.c_myri10ge_get_ethtool_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_stats = type { i32 }
%struct.myri10ge_priv = type { i32, %struct.myri10ge_slice_state*, i64, i64, i64, i64, i64, i64, i64, i64, i64, %struct.TYPE_15__*, i64, i64, i32 }
%struct.myri10ge_slice_state = type { %struct.TYPE_14__, %struct.TYPE_11__, %struct.TYPE_10__, %struct.TYPE_9__, %struct.TYPE_16__*, i32* }
%struct.TYPE_14__ = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i32, i32, i32 }
%struct.TYPE_11__ = type { i64, i64, i64, i64, i64, i64, i64 }
%struct.TYPE_10__ = type { i64 }
%struct.TYPE_9__ = type { i64 }
%struct.TYPE_16__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_15__ = type { i64 }

@MYRI10GE_NET_STATS_LEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, %struct.ethtool_stats*, i32*)* @myri10ge_get_ethtool_stats to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @myri10ge_get_ethtool_stats(%struct.net_device* %0, %struct.ethtool_stats* %1, i32* %2) #0 {
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.ethtool_stats*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.myri10ge_priv*, align 8
  %8 = alloca %struct.myri10ge_slice_state*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.ethtool_stats* %1, %struct.ethtool_stats** %5, align 8
  store i32* %2, i32** %6, align 8
  %11 = load %struct.net_device*, %struct.net_device** %4, align 8
  %12 = call %struct.myri10ge_priv* @netdev_priv(%struct.net_device* %11)
  store %struct.myri10ge_priv* %12, %struct.myri10ge_priv** %7, align 8
  %13 = load %struct.net_device*, %struct.net_device** %4, align 8
  %14 = call i32 @myri10ge_get_stats(%struct.net_device* %13)
  store i32 0, i32* %10, align 4
  br label %15

15:                                               ; preds = %32, %3
  %16 = load i32, i32* %10, align 4
  %17 = load i32, i32* @MYRI10GE_NET_STATS_LEN, align 4
  %18 = icmp slt i32 %16, %17
  br i1 %18, label %19, label %35

19:                                               ; preds = %15
  %20 = load %struct.myri10ge_priv*, %struct.myri10ge_priv** %7, align 8
  %21 = getelementptr inbounds %struct.myri10ge_priv, %struct.myri10ge_priv* %20, i32 0, i32 14
  %22 = bitcast i32* %21 to i64*
  %23 = load i32, i32* %10, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i64, i64* %22, i64 %24
  %26 = load i64, i64* %25, align 8
  %27 = trunc i64 %26 to i32
  %28 = load i32*, i32** %6, align 8
  %29 = load i32, i32* %10, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i32, i32* %28, i64 %30
  store i32 %27, i32* %31, align 4
  br label %32

32:                                               ; preds = %19
  %33 = load i32, i32* %10, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %10, align 4
  br label %15

35:                                               ; preds = %15
  %36 = load %struct.myri10ge_priv*, %struct.myri10ge_priv** %7, align 8
  %37 = getelementptr inbounds %struct.myri10ge_priv, %struct.myri10ge_priv* %36, i32 0, i32 13
  %38 = load i64, i64* %37, align 8
  %39 = trunc i64 %38 to i32
  %40 = load i32*, i32** %6, align 8
  %41 = load i32, i32* %10, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %10, align 4
  %43 = sext i32 %41 to i64
  %44 = getelementptr inbounds i32, i32* %40, i64 %43
  store i32 %39, i32* %44, align 4
  %45 = load %struct.myri10ge_priv*, %struct.myri10ge_priv** %7, align 8
  %46 = getelementptr inbounds %struct.myri10ge_priv, %struct.myri10ge_priv* %45, i32 0, i32 12
  %47 = load i64, i64* %46, align 8
  %48 = trunc i64 %47 to i32
  %49 = load i32*, i32** %6, align 8
  %50 = load i32, i32* %10, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %10, align 4
  %52 = sext i32 %50 to i64
  %53 = getelementptr inbounds i32, i32* %49, i64 %52
  store i32 %48, i32* %53, align 4
  %54 = load %struct.myri10ge_priv*, %struct.myri10ge_priv** %7, align 8
  %55 = getelementptr inbounds %struct.myri10ge_priv, %struct.myri10ge_priv* %54, i32 0, i32 11
  %56 = load %struct.TYPE_15__*, %struct.TYPE_15__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = trunc i64 %58 to i32
  %60 = load i32*, i32** %6, align 8
  %61 = load i32, i32* %10, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %10, align 4
  %63 = sext i32 %61 to i64
  %64 = getelementptr inbounds i32, i32* %60, i64 %63
  store i32 %59, i32* %64, align 4
  %65 = load %struct.myri10ge_priv*, %struct.myri10ge_priv** %7, align 8
  %66 = getelementptr inbounds %struct.myri10ge_priv, %struct.myri10ge_priv* %65, i32 0, i32 10
  %67 = load i64, i64* %66, align 8
  %68 = trunc i64 %67 to i32
  %69 = load i32*, i32** %6, align 8
  %70 = load i32, i32* %10, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %10, align 4
  %72 = sext i32 %70 to i64
  %73 = getelementptr inbounds i32, i32* %69, i64 %72
  store i32 %68, i32* %73, align 4
  %74 = load %struct.myri10ge_priv*, %struct.myri10ge_priv** %7, align 8
  %75 = getelementptr inbounds %struct.myri10ge_priv, %struct.myri10ge_priv* %74, i32 0, i32 9
  %76 = load i64, i64* %75, align 8
  %77 = trunc i64 %76 to i32
  %78 = load i32*, i32** %6, align 8
  %79 = load i32, i32* %10, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %10, align 4
  %81 = sext i32 %79 to i64
  %82 = getelementptr inbounds i32, i32* %78, i64 %81
  store i32 %77, i32* %82, align 4
  %83 = load %struct.myri10ge_priv*, %struct.myri10ge_priv** %7, align 8
  %84 = getelementptr inbounds %struct.myri10ge_priv, %struct.myri10ge_priv* %83, i32 0, i32 8
  %85 = load i64, i64* %84, align 8
  %86 = trunc i64 %85 to i32
  %87 = load i32*, i32** %6, align 8
  %88 = load i32, i32* %10, align 4
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %10, align 4
  %90 = sext i32 %88 to i64
  %91 = getelementptr inbounds i32, i32* %87, i64 %90
  store i32 %86, i32* %91, align 4
  %92 = load %struct.myri10ge_priv*, %struct.myri10ge_priv** %7, align 8
  %93 = getelementptr inbounds %struct.myri10ge_priv, %struct.myri10ge_priv* %92, i32 0, i32 7
  %94 = load i64, i64* %93, align 8
  %95 = trunc i64 %94 to i32
  %96 = load i32*, i32** %6, align 8
  %97 = load i32, i32* %10, align 4
  %98 = add nsw i32 %97, 1
  store i32 %98, i32* %10, align 4
  %99 = sext i32 %97 to i64
  %100 = getelementptr inbounds i32, i32* %96, i64 %99
  store i32 %95, i32* %100, align 4
  %101 = load %struct.myri10ge_priv*, %struct.myri10ge_priv** %7, align 8
  %102 = getelementptr inbounds %struct.myri10ge_priv, %struct.myri10ge_priv* %101, i32 0, i32 6
  %103 = load i64, i64* %102, align 8
  %104 = trunc i64 %103 to i32
  %105 = load i32*, i32** %6, align 8
  %106 = load i32, i32* %10, align 4
  %107 = add nsw i32 %106, 1
  store i32 %107, i32* %10, align 4
  %108 = sext i32 %106 to i64
  %109 = getelementptr inbounds i32, i32* %105, i64 %108
  store i32 %104, i32* %109, align 4
  %110 = load %struct.myri10ge_priv*, %struct.myri10ge_priv** %7, align 8
  %111 = getelementptr inbounds %struct.myri10ge_priv, %struct.myri10ge_priv* %110, i32 0, i32 5
  %112 = load i64, i64* %111, align 8
  %113 = trunc i64 %112 to i32
  %114 = load i32*, i32** %6, align 8
  %115 = load i32, i32* %10, align 4
  %116 = add nsw i32 %115, 1
  store i32 %116, i32* %10, align 4
  %117 = sext i32 %115 to i64
  %118 = getelementptr inbounds i32, i32* %114, i64 %117
  store i32 %113, i32* %118, align 4
  %119 = load %struct.myri10ge_priv*, %struct.myri10ge_priv** %7, align 8
  %120 = getelementptr inbounds %struct.myri10ge_priv, %struct.myri10ge_priv* %119, i32 0, i32 4
  %121 = load i64, i64* %120, align 8
  %122 = trunc i64 %121 to i32
  %123 = load i32*, i32** %6, align 8
  %124 = load i32, i32* %10, align 4
  %125 = add nsw i32 %124, 1
  store i32 %125, i32* %10, align 4
  %126 = sext i32 %124 to i64
  %127 = getelementptr inbounds i32, i32* %123, i64 %126
  store i32 %122, i32* %127, align 4
  %128 = load %struct.myri10ge_priv*, %struct.myri10ge_priv** %7, align 8
  %129 = getelementptr inbounds %struct.myri10ge_priv, %struct.myri10ge_priv* %128, i32 0, i32 2
  %130 = load i64, i64* %129, align 8
  %131 = trunc i64 %130 to i32
  %132 = load i32*, i32** %6, align 8
  %133 = load i32, i32* %10, align 4
  %134 = add nsw i32 %133, 1
  store i32 %134, i32* %10, align 4
  %135 = sext i32 %133 to i64
  %136 = getelementptr inbounds i32, i32* %132, i64 %135
  store i32 %131, i32* %136, align 4
  %137 = load %struct.myri10ge_priv*, %struct.myri10ge_priv** %7, align 8
  %138 = getelementptr inbounds %struct.myri10ge_priv, %struct.myri10ge_priv* %137, i32 0, i32 1
  %139 = load %struct.myri10ge_slice_state*, %struct.myri10ge_slice_state** %138, align 8
  %140 = getelementptr inbounds %struct.myri10ge_slice_state, %struct.myri10ge_slice_state* %139, i64 0
  store %struct.myri10ge_slice_state* %140, %struct.myri10ge_slice_state** %8, align 8
  %141 = load %struct.myri10ge_slice_state*, %struct.myri10ge_slice_state** %8, align 8
  %142 = getelementptr inbounds %struct.myri10ge_slice_state, %struct.myri10ge_slice_state* %141, i32 0, i32 4
  %143 = load %struct.TYPE_16__*, %struct.TYPE_16__** %142, align 8
  %144 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %143, i32 0, i32 11
  %145 = load i32, i32* %144, align 4
  %146 = call i64 @ntohl(i32 %145)
  %147 = trunc i64 %146 to i32
  %148 = load i32*, i32** %6, align 8
  %149 = load i32, i32* %10, align 4
  %150 = add nsw i32 %149, 1
  store i32 %150, i32* %10, align 4
  %151 = sext i32 %149 to i64
  %152 = getelementptr inbounds i32, i32* %148, i64 %151
  store i32 %147, i32* %152, align 4
  %153 = load %struct.myri10ge_slice_state*, %struct.myri10ge_slice_state** %8, align 8
  %154 = getelementptr inbounds %struct.myri10ge_slice_state, %struct.myri10ge_slice_state* %153, i32 0, i32 4
  %155 = load %struct.TYPE_16__*, %struct.TYPE_16__** %154, align 8
  %156 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %155, i32 0, i32 10
  %157 = load i32, i32* %156, align 4
  %158 = call i64 @ntohl(i32 %157)
  %159 = trunc i64 %158 to i32
  %160 = load i32*, i32** %6, align 8
  %161 = load i32, i32* %10, align 4
  %162 = add nsw i32 %161, 1
  store i32 %162, i32* %10, align 4
  %163 = sext i32 %161 to i64
  %164 = getelementptr inbounds i32, i32* %160, i64 %163
  store i32 %159, i32* %164, align 4
  %165 = load %struct.myri10ge_slice_state*, %struct.myri10ge_slice_state** %8, align 8
  %166 = getelementptr inbounds %struct.myri10ge_slice_state, %struct.myri10ge_slice_state* %165, i32 0, i32 4
  %167 = load %struct.TYPE_16__*, %struct.TYPE_16__** %166, align 8
  %168 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %167, i32 0, i32 9
  %169 = load i32, i32* %168, align 4
  %170 = call i64 @ntohl(i32 %169)
  %171 = trunc i64 %170 to i32
  %172 = load i32*, i32** %6, align 8
  %173 = load i32, i32* %10, align 4
  %174 = add nsw i32 %173, 1
  store i32 %174, i32* %10, align 4
  %175 = sext i32 %173 to i64
  %176 = getelementptr inbounds i32, i32* %172, i64 %175
  store i32 %171, i32* %176, align 4
  %177 = load %struct.myri10ge_slice_state*, %struct.myri10ge_slice_state** %8, align 8
  %178 = getelementptr inbounds %struct.myri10ge_slice_state, %struct.myri10ge_slice_state* %177, i32 0, i32 4
  %179 = load %struct.TYPE_16__*, %struct.TYPE_16__** %178, align 8
  %180 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %179, i32 0, i32 8
  %181 = load i32, i32* %180, align 4
  %182 = call i64 @ntohl(i32 %181)
  %183 = trunc i64 %182 to i32
  %184 = load i32*, i32** %6, align 8
  %185 = load i32, i32* %10, align 4
  %186 = add nsw i32 %185, 1
  store i32 %186, i32* %10, align 4
  %187 = sext i32 %185 to i64
  %188 = getelementptr inbounds i32, i32* %184, i64 %187
  store i32 %183, i32* %188, align 4
  %189 = load %struct.myri10ge_slice_state*, %struct.myri10ge_slice_state** %8, align 8
  %190 = getelementptr inbounds %struct.myri10ge_slice_state, %struct.myri10ge_slice_state* %189, i32 0, i32 4
  %191 = load %struct.TYPE_16__*, %struct.TYPE_16__** %190, align 8
  %192 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %191, i32 0, i32 7
  %193 = load i32, i32* %192, align 4
  %194 = call i64 @ntohl(i32 %193)
  %195 = trunc i64 %194 to i32
  %196 = load i32*, i32** %6, align 8
  %197 = load i32, i32* %10, align 4
  %198 = add nsw i32 %197, 1
  store i32 %198, i32* %10, align 4
  %199 = sext i32 %197 to i64
  %200 = getelementptr inbounds i32, i32* %196, i64 %199
  store i32 %195, i32* %200, align 4
  %201 = load %struct.myri10ge_slice_state*, %struct.myri10ge_slice_state** %8, align 8
  %202 = getelementptr inbounds %struct.myri10ge_slice_state, %struct.myri10ge_slice_state* %201, i32 0, i32 4
  %203 = load %struct.TYPE_16__*, %struct.TYPE_16__** %202, align 8
  %204 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %203, i32 0, i32 6
  %205 = load i32, i32* %204, align 4
  %206 = call i64 @ntohl(i32 %205)
  %207 = trunc i64 %206 to i32
  %208 = load i32*, i32** %6, align 8
  %209 = load i32, i32* %10, align 4
  %210 = add nsw i32 %209, 1
  store i32 %210, i32* %10, align 4
  %211 = sext i32 %209 to i64
  %212 = getelementptr inbounds i32, i32* %208, i64 %211
  store i32 %207, i32* %212, align 4
  %213 = load %struct.myri10ge_slice_state*, %struct.myri10ge_slice_state** %8, align 8
  %214 = getelementptr inbounds %struct.myri10ge_slice_state, %struct.myri10ge_slice_state* %213, i32 0, i32 4
  %215 = load %struct.TYPE_16__*, %struct.TYPE_16__** %214, align 8
  %216 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %215, i32 0, i32 5
  %217 = load i32, i32* %216, align 4
  %218 = call i64 @ntohl(i32 %217)
  %219 = trunc i64 %218 to i32
  %220 = load i32*, i32** %6, align 8
  %221 = load i32, i32* %10, align 4
  %222 = add nsw i32 %221, 1
  store i32 %222, i32* %10, align 4
  %223 = sext i32 %221 to i64
  %224 = getelementptr inbounds i32, i32* %220, i64 %223
  store i32 %219, i32* %224, align 4
  %225 = load %struct.myri10ge_slice_state*, %struct.myri10ge_slice_state** %8, align 8
  %226 = getelementptr inbounds %struct.myri10ge_slice_state, %struct.myri10ge_slice_state* %225, i32 0, i32 4
  %227 = load %struct.TYPE_16__*, %struct.TYPE_16__** %226, align 8
  %228 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %227, i32 0, i32 4
  %229 = load i32, i32* %228, align 4
  %230 = call i64 @ntohl(i32 %229)
  %231 = trunc i64 %230 to i32
  %232 = load i32*, i32** %6, align 8
  %233 = load i32, i32* %10, align 4
  %234 = add nsw i32 %233, 1
  store i32 %234, i32* %10, align 4
  %235 = sext i32 %233 to i64
  %236 = getelementptr inbounds i32, i32* %232, i64 %235
  store i32 %231, i32* %236, align 4
  %237 = load %struct.myri10ge_slice_state*, %struct.myri10ge_slice_state** %8, align 8
  %238 = getelementptr inbounds %struct.myri10ge_slice_state, %struct.myri10ge_slice_state* %237, i32 0, i32 4
  %239 = load %struct.TYPE_16__*, %struct.TYPE_16__** %238, align 8
  %240 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %239, i32 0, i32 3
  %241 = load i32, i32* %240, align 4
  %242 = call i64 @ntohl(i32 %241)
  %243 = trunc i64 %242 to i32
  %244 = load i32*, i32** %6, align 8
  %245 = load i32, i32* %10, align 4
  %246 = add nsw i32 %245, 1
  store i32 %246, i32* %10, align 4
  %247 = sext i32 %245 to i64
  %248 = getelementptr inbounds i32, i32* %244, i64 %247
  store i32 %243, i32* %248, align 4
  %249 = load %struct.myri10ge_slice_state*, %struct.myri10ge_slice_state** %8, align 8
  %250 = getelementptr inbounds %struct.myri10ge_slice_state, %struct.myri10ge_slice_state* %249, i32 0, i32 4
  %251 = load %struct.TYPE_16__*, %struct.TYPE_16__** %250, align 8
  %252 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %251, i32 0, i32 2
  %253 = load i32, i32* %252, align 4
  %254 = call i64 @ntohl(i32 %253)
  %255 = trunc i64 %254 to i32
  %256 = load i32*, i32** %6, align 8
  %257 = load i32, i32* %10, align 4
  %258 = add nsw i32 %257, 1
  store i32 %258, i32* %10, align 4
  %259 = sext i32 %257 to i64
  %260 = getelementptr inbounds i32, i32* %256, i64 %259
  store i32 %255, i32* %260, align 4
  %261 = load %struct.myri10ge_slice_state*, %struct.myri10ge_slice_state** %8, align 8
  %262 = getelementptr inbounds %struct.myri10ge_slice_state, %struct.myri10ge_slice_state* %261, i32 0, i32 4
  %263 = load %struct.TYPE_16__*, %struct.TYPE_16__** %262, align 8
  %264 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %263, i32 0, i32 1
  %265 = load i32, i32* %264, align 4
  %266 = call i64 @ntohl(i32 %265)
  %267 = trunc i64 %266 to i32
  %268 = load i32*, i32** %6, align 8
  %269 = load i32, i32* %10, align 4
  %270 = add nsw i32 %269, 1
  store i32 %270, i32* %10, align 4
  %271 = sext i32 %269 to i64
  %272 = getelementptr inbounds i32, i32* %268, i64 %271
  store i32 %267, i32* %272, align 4
  %273 = load %struct.myri10ge_slice_state*, %struct.myri10ge_slice_state** %8, align 8
  %274 = getelementptr inbounds %struct.myri10ge_slice_state, %struct.myri10ge_slice_state* %273, i32 0, i32 4
  %275 = load %struct.TYPE_16__*, %struct.TYPE_16__** %274, align 8
  %276 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %275, i32 0, i32 0
  %277 = load i32, i32* %276, align 4
  %278 = call i64 @ntohl(i32 %277)
  %279 = trunc i64 %278 to i32
  %280 = load i32*, i32** %6, align 8
  %281 = load i32, i32* %10, align 4
  %282 = add nsw i32 %281, 1
  store i32 %282, i32* %10, align 4
  %283 = sext i32 %281 to i64
  %284 = getelementptr inbounds i32, i32* %280, i64 %283
  store i32 %279, i32* %284, align 4
  store i32 0, i32* %9, align 4
  br label %285

285:                                              ; preds = %460, %35
  %286 = load i32, i32* %9, align 4
  %287 = load %struct.myri10ge_priv*, %struct.myri10ge_priv** %7, align 8
  %288 = getelementptr inbounds %struct.myri10ge_priv, %struct.myri10ge_priv* %287, i32 0, i32 0
  %289 = load i32, i32* %288, align 8
  %290 = icmp slt i32 %286, %289
  br i1 %290, label %291, label %463

291:                                              ; preds = %285
  %292 = load %struct.myri10ge_priv*, %struct.myri10ge_priv** %7, align 8
  %293 = getelementptr inbounds %struct.myri10ge_priv, %struct.myri10ge_priv* %292, i32 0, i32 1
  %294 = load %struct.myri10ge_slice_state*, %struct.myri10ge_slice_state** %293, align 8
  %295 = load i32, i32* %9, align 4
  %296 = sext i32 %295 to i64
  %297 = getelementptr inbounds %struct.myri10ge_slice_state, %struct.myri10ge_slice_state* %294, i64 %296
  store %struct.myri10ge_slice_state* %297, %struct.myri10ge_slice_state** %8, align 8
  %298 = load i32, i32* %9, align 4
  %299 = load i32*, i32** %6, align 8
  %300 = load i32, i32* %10, align 4
  %301 = add nsw i32 %300, 1
  store i32 %301, i32* %10, align 4
  %302 = sext i32 %300 to i64
  %303 = getelementptr inbounds i32, i32* %299, i64 %302
  store i32 %298, i32* %303, align 4
  %304 = load %struct.myri10ge_slice_state*, %struct.myri10ge_slice_state** %8, align 8
  %305 = getelementptr inbounds %struct.myri10ge_slice_state, %struct.myri10ge_slice_state* %304, i32 0, i32 1
  %306 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %305, i32 0, i32 6
  %307 = load i64, i64* %306, align 8
  %308 = trunc i64 %307 to i32
  %309 = load i32*, i32** %6, align 8
  %310 = load i32, i32* %10, align 4
  %311 = add nsw i32 %310, 1
  store i32 %311, i32* %10, align 4
  %312 = sext i32 %310 to i64
  %313 = getelementptr inbounds i32, i32* %309, i64 %312
  store i32 %308, i32* %313, align 4
  %314 = load %struct.myri10ge_slice_state*, %struct.myri10ge_slice_state** %8, align 8
  %315 = getelementptr inbounds %struct.myri10ge_slice_state, %struct.myri10ge_slice_state* %314, i32 0, i32 1
  %316 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %315, i32 0, i32 5
  %317 = load i64, i64* %316, align 8
  %318 = trunc i64 %317 to i32
  %319 = load i32*, i32** %6, align 8
  %320 = load i32, i32* %10, align 4
  %321 = add nsw i32 %320, 1
  store i32 %321, i32* %10, align 4
  %322 = sext i32 %320 to i64
  %323 = getelementptr inbounds i32, i32* %319, i64 %322
  store i32 %318, i32* %323, align 4
  %324 = load %struct.myri10ge_slice_state*, %struct.myri10ge_slice_state** %8, align 8
  %325 = getelementptr inbounds %struct.myri10ge_slice_state, %struct.myri10ge_slice_state* %324, i32 0, i32 1
  %326 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %325, i32 0, i32 4
  %327 = load i64, i64* %326, align 8
  %328 = trunc i64 %327 to i32
  %329 = load i32*, i32** %6, align 8
  %330 = load i32, i32* %10, align 4
  %331 = add nsw i32 %330, 1
  store i32 %331, i32* %10, align 4
  %332 = sext i32 %330 to i64
  %333 = getelementptr inbounds i32, i32* %329, i64 %332
  store i32 %328, i32* %333, align 4
  %334 = load %struct.myri10ge_slice_state*, %struct.myri10ge_slice_state** %8, align 8
  %335 = getelementptr inbounds %struct.myri10ge_slice_state, %struct.myri10ge_slice_state* %334, i32 0, i32 1
  %336 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %335, i32 0, i32 3
  %337 = load i64, i64* %336, align 8
  %338 = trunc i64 %337 to i32
  %339 = load i32*, i32** %6, align 8
  %340 = load i32, i32* %10, align 4
  %341 = add nsw i32 %340, 1
  store i32 %341, i32* %10, align 4
  %342 = sext i32 %340 to i64
  %343 = getelementptr inbounds i32, i32* %339, i64 %342
  store i32 %338, i32* %343, align 4
  %344 = load %struct.myri10ge_slice_state*, %struct.myri10ge_slice_state** %8, align 8
  %345 = getelementptr inbounds %struct.myri10ge_slice_state, %struct.myri10ge_slice_state* %344, i32 0, i32 3
  %346 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %345, i32 0, i32 0
  %347 = load i64, i64* %346, align 8
  %348 = trunc i64 %347 to i32
  %349 = load i32*, i32** %6, align 8
  %350 = load i32, i32* %10, align 4
  %351 = add nsw i32 %350, 1
  store i32 %351, i32* %10, align 4
  %352 = sext i32 %350 to i64
  %353 = getelementptr inbounds i32, i32* %349, i64 %352
  store i32 %348, i32* %353, align 4
  %354 = load %struct.myri10ge_slice_state*, %struct.myri10ge_slice_state** %8, align 8
  %355 = getelementptr inbounds %struct.myri10ge_slice_state, %struct.myri10ge_slice_state* %354, i32 0, i32 2
  %356 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %355, i32 0, i32 0
  %357 = load i64, i64* %356, align 8
  %358 = trunc i64 %357 to i32
  %359 = load i32*, i32** %6, align 8
  %360 = load i32, i32* %10, align 4
  %361 = add nsw i32 %360, 1
  store i32 %361, i32* %10, align 4
  %362 = sext i32 %360 to i64
  %363 = getelementptr inbounds i32, i32* %359, i64 %362
  store i32 %358, i32* %363, align 4
  %364 = load %struct.myri10ge_slice_state*, %struct.myri10ge_slice_state** %8, align 8
  %365 = getelementptr inbounds %struct.myri10ge_slice_state, %struct.myri10ge_slice_state* %364, i32 0, i32 1
  %366 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %365, i32 0, i32 2
  %367 = load i64, i64* %366, align 8
  %368 = trunc i64 %367 to i32
  %369 = load i32*, i32** %6, align 8
  %370 = load i32, i32* %10, align 4
  %371 = add nsw i32 %370, 1
  store i32 %371, i32* %10, align 4
  %372 = sext i32 %370 to i64
  %373 = getelementptr inbounds i32, i32* %369, i64 %372
  store i32 %368, i32* %373, align 4
  %374 = load %struct.myri10ge_slice_state*, %struct.myri10ge_slice_state** %8, align 8
  %375 = getelementptr inbounds %struct.myri10ge_slice_state, %struct.myri10ge_slice_state* %374, i32 0, i32 1
  %376 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %375, i32 0, i32 1
  %377 = load i64, i64* %376, align 8
  %378 = trunc i64 %377 to i32
  %379 = load i32*, i32** %6, align 8
  %380 = load i32, i32* %10, align 4
  %381 = add nsw i32 %380, 1
  store i32 %381, i32* %10, align 4
  %382 = sext i32 %380 to i64
  %383 = getelementptr inbounds i32, i32* %379, i64 %382
  store i32 %378, i32* %383, align 4
  %384 = load %struct.myri10ge_slice_state*, %struct.myri10ge_slice_state** %8, align 8
  %385 = getelementptr inbounds %struct.myri10ge_slice_state, %struct.myri10ge_slice_state* %384, i32 0, i32 1
  %386 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %385, i32 0, i32 0
  %387 = load i64, i64* %386, align 8
  %388 = trunc i64 %387 to i32
  %389 = load i32*, i32** %6, align 8
  %390 = load i32, i32* %10, align 4
  %391 = add nsw i32 %390, 1
  store i32 %391, i32* %10, align 4
  %392 = sext i32 %390 to i64
  %393 = getelementptr inbounds i32, i32* %389, i64 %392
  store i32 %388, i32* %393, align 4
  %394 = load %struct.myri10ge_slice_state*, %struct.myri10ge_slice_state** %8, align 8
  %395 = getelementptr inbounds %struct.myri10ge_slice_state, %struct.myri10ge_slice_state* %394, i32 0, i32 0
  %396 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %395, i32 0, i32 0
  %397 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %396, i32 0, i32 0
  %398 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %397, i32 0, i32 0
  %399 = load i32, i32* %398, align 8
  %400 = load i32*, i32** %6, align 8
  %401 = load i32, i32* %10, align 4
  %402 = add nsw i32 %401, 1
  store i32 %402, i32* %10, align 4
  %403 = sext i32 %401 to i64
  %404 = getelementptr inbounds i32, i32* %400, i64 %403
  store i32 %399, i32* %404, align 4
  %405 = load %struct.myri10ge_slice_state*, %struct.myri10ge_slice_state** %8, align 8
  %406 = getelementptr inbounds %struct.myri10ge_slice_state, %struct.myri10ge_slice_state* %405, i32 0, i32 0
  %407 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %406, i32 0, i32 0
  %408 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %407, i32 0, i32 0
  %409 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %408, i32 0, i32 1
  %410 = load i32, i32* %409, align 4
  %411 = load i32*, i32** %6, align 8
  %412 = load i32, i32* %10, align 4
  %413 = add nsw i32 %412, 1
  store i32 %413, i32* %10, align 4
  %414 = sext i32 %412 to i64
  %415 = getelementptr inbounds i32, i32* %411, i64 %414
  store i32 %410, i32* %415, align 4
  %416 = load %struct.myri10ge_slice_state*, %struct.myri10ge_slice_state** %8, align 8
  %417 = getelementptr inbounds %struct.myri10ge_slice_state, %struct.myri10ge_slice_state* %416, i32 0, i32 0
  %418 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %417, i32 0, i32 0
  %419 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %418, i32 0, i32 0
  %420 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %419, i32 0, i32 1
  %421 = load i32, i32* %420, align 4
  %422 = icmp ne i32 %421, 0
  br i1 %422, label %423, label %442

423:                                              ; preds = %291
  %424 = load %struct.myri10ge_slice_state*, %struct.myri10ge_slice_state** %8, align 8
  %425 = getelementptr inbounds %struct.myri10ge_slice_state, %struct.myri10ge_slice_state* %424, i32 0, i32 0
  %426 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %425, i32 0, i32 0
  %427 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %426, i32 0, i32 0
  %428 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %427, i32 0, i32 0
  %429 = load i32, i32* %428, align 8
  %430 = load %struct.myri10ge_slice_state*, %struct.myri10ge_slice_state** %8, align 8
  %431 = getelementptr inbounds %struct.myri10ge_slice_state, %struct.myri10ge_slice_state* %430, i32 0, i32 0
  %432 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %431, i32 0, i32 0
  %433 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %432, i32 0, i32 0
  %434 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %433, i32 0, i32 1
  %435 = load i32, i32* %434, align 4
  %436 = sdiv i32 %429, %435
  %437 = load i32*, i32** %6, align 8
  %438 = load i32, i32* %10, align 4
  %439 = add nsw i32 %438, 1
  store i32 %439, i32* %10, align 4
  %440 = sext i32 %438 to i64
  %441 = getelementptr inbounds i32, i32* %437, i64 %440
  store i32 %436, i32* %441, align 4
  br label %448

442:                                              ; preds = %291
  %443 = load i32*, i32** %6, align 8
  %444 = load i32, i32* %10, align 4
  %445 = add nsw i32 %444, 1
  store i32 %445, i32* %10, align 4
  %446 = sext i32 %444 to i64
  %447 = getelementptr inbounds i32, i32* %443, i64 %446
  store i32 0, i32* %447, align 4
  br label %448

448:                                              ; preds = %442, %423
  %449 = load %struct.myri10ge_slice_state*, %struct.myri10ge_slice_state** %8, align 8
  %450 = getelementptr inbounds %struct.myri10ge_slice_state, %struct.myri10ge_slice_state* %449, i32 0, i32 0
  %451 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %450, i32 0, i32 0
  %452 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %451, i32 0, i32 0
  %453 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %452, i32 0, i32 2
  %454 = load i32, i32* %453, align 8
  %455 = load i32*, i32** %6, align 8
  %456 = load i32, i32* %10, align 4
  %457 = add nsw i32 %456, 1
  store i32 %457, i32* %10, align 4
  %458 = sext i32 %456 to i64
  %459 = getelementptr inbounds i32, i32* %455, i64 %458
  store i32 %454, i32* %459, align 4
  br label %460

460:                                              ; preds = %448
  %461 = load i32, i32* %9, align 4
  %462 = add nsw i32 %461, 1
  store i32 %462, i32* %9, align 4
  br label %285

463:                                              ; preds = %285
  ret void
}

declare dso_local %struct.myri10ge_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @myri10ge_get_stats(%struct.net_device*) #1

declare dso_local i64 @ntohl(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
