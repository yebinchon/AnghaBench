; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/engine/graph/extr_ctxnvc0.c_nvc0_grctx_generate_gpc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/engine/graph/extr_ctxnvc0.c_nvc0_grctx_generate_gpc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvc0_graph_priv = type { i32 }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nvc0_graph_priv*)* @nvc0_grctx_generate_gpc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nvc0_grctx_generate_gpc(%struct.nvc0_graph_priv* %0) #0 {
  %2 = alloca %struct.nvc0_graph_priv*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.nvc0_graph_priv* %0, %struct.nvc0_graph_priv** %2, align 8
  %5 = load %struct.nvc0_graph_priv*, %struct.nvc0_graph_priv** %2, align 8
  %6 = call %struct.TYPE_2__* @nv_device(%struct.nvc0_graph_priv* %5)
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  store i32 %8, i32* %3, align 4
  %9 = load %struct.nvc0_graph_priv*, %struct.nvc0_graph_priv** %2, align 8
  %10 = call i32 @nv_wr32(%struct.nvc0_graph_priv* %9, i32 4293504, i32 22)
  %11 = load %struct.nvc0_graph_priv*, %struct.nvc0_graph_priv** %2, align 8
  %12 = call i32 @nv_wr32(%struct.nvc0_graph_priv* %11, i32 4293632, i32 939544064)
  %13 = load %struct.nvc0_graph_priv*, %struct.nvc0_graph_priv** %2, align 8
  %14 = call i32 @nv_wr32(%struct.nvc0_graph_priv* %13, i32 4293636, i32 1910571007)
  %15 = load %struct.nvc0_graph_priv*, %struct.nvc0_graph_priv** %2, align 8
  %16 = call i32 @nv_wr32(%struct.nvc0_graph_priv* %15, i32 4293640, i32 0)
  %17 = load %struct.nvc0_graph_priv*, %struct.nvc0_graph_priv** %2, align 8
  %18 = call i32 @nv_wr32(%struct.nvc0_graph_priv* %17, i32 4293644, i32 4104)
  %19 = load %struct.nvc0_graph_priv*, %struct.nvc0_graph_priv** %2, align 8
  %20 = call i32 @nv_wr32(%struct.nvc0_graph_priv* %19, i32 4293648, i32 268374015)
  %21 = load %struct.nvc0_graph_priv*, %struct.nvc0_graph_priv** %2, align 8
  %22 = load i32, i32* %3, align 4
  %23 = icmp ne i32 %22, 217
  %24 = zext i1 %23 to i64
  %25 = select i1 %23, i32 2101247, i32 35655679
  %26 = call i32 @nv_wr32(%struct.nvc0_graph_priv* %21, i32 4293652, i32 %25)
  %27 = load %struct.nvc0_graph_priv*, %struct.nvc0_graph_priv** %2, align 8
  %28 = call i32 @nv_wr32(%struct.nvc0_graph_priv* %27, i32 4293712, i32 0)
  %29 = load %struct.nvc0_graph_priv*, %struct.nvc0_graph_priv** %2, align 8
  %30 = call i32 @nv_wr32(%struct.nvc0_graph_priv* %29, i32 4293716, i32 0)
  %31 = load %struct.nvc0_graph_priv*, %struct.nvc0_graph_priv** %2, align 8
  %32 = call i32 @nv_wr32(%struct.nvc0_graph_priv* %31, i32 4293720, i32 0)
  %33 = load %struct.nvc0_graph_priv*, %struct.nvc0_graph_priv** %2, align 8
  %34 = call i32 @nv_wr32(%struct.nvc0_graph_priv* %33, i32 4293724, i32 0)
  %35 = load %struct.nvc0_graph_priv*, %struct.nvc0_graph_priv** %2, align 8
  %36 = call i32 @nv_wr32(%struct.nvc0_graph_priv* %35, i32 4293728, i32 0)
  %37 = load %struct.nvc0_graph_priv*, %struct.nvc0_graph_priv** %2, align 8
  %38 = call i32 @nv_wr32(%struct.nvc0_graph_priv* %37, i32 4293732, i32 0)
  %39 = load %struct.nvc0_graph_priv*, %struct.nvc0_graph_priv** %2, align 8
  %40 = call i32 @nv_wr32(%struct.nvc0_graph_priv* %39, i32 4293736, i32 1)
  %41 = load %struct.nvc0_graph_priv*, %struct.nvc0_graph_priv** %2, align 8
  %42 = call i32 @nv_wr32(%struct.nvc0_graph_priv* %41, i32 4293740, i32 0)
  %43 = load %struct.nvc0_graph_priv*, %struct.nvc0_graph_priv** %2, align 8
  %44 = call i32 @nv_wr32(%struct.nvc0_graph_priv* %43, i32 4293744, i32 0)
  %45 = load %struct.nvc0_graph_priv*, %struct.nvc0_graph_priv** %2, align 8
  %46 = call i32 @nv_wr32(%struct.nvc0_graph_priv* %45, i32 4294144, i32 31)
  %47 = load %struct.nvc0_graph_priv*, %struct.nvc0_graph_priv** %2, align 8
  %48 = call i32 @nv_wr32(%struct.nvc0_graph_priv* %47, i32 4294276, i32 15)
  %49 = load %struct.nvc0_graph_priv*, %struct.nvc0_graph_priv** %2, align 8
  %50 = call i32 @nv_wr32(%struct.nvc0_graph_priv* %49, i32 4294400, i32 2)
  %51 = load %struct.nvc0_graph_priv*, %struct.nvc0_graph_priv** %2, align 8
  %52 = call i32 @nv_wr32(%struct.nvc0_graph_priv* %51, i32 4294404, i32 128)
  %53 = load %struct.nvc0_graph_priv*, %struct.nvc0_graph_priv** %2, align 8
  %54 = call i32 @nv_wr32(%struct.nvc0_graph_priv* %53, i32 4294408, i32 0)
  %55 = load %struct.nvc0_graph_priv*, %struct.nvc0_graph_priv** %2, align 8
  %56 = load i32, i32* %3, align 4
  %57 = icmp ne i32 %56, 217
  %58 = zext i1 %57 to i64
  %59 = select i1 %57, i32 130547712, i32 0
  %60 = call i32 @nv_wr32(%struct.nvc0_graph_priv* %55, i32 4294412, i32 %59)
  %61 = load %struct.nvc0_graph_priv*, %struct.nvc0_graph_priv** %2, align 8
  %62 = call i32 @nv_wr32(%struct.nvc0_graph_priv* %61, i32 4294416, i32 0)
  %63 = load %struct.nvc0_graph_priv*, %struct.nvc0_graph_priv** %2, align 8
  %64 = load i32, i32* %3, align 4
  %65 = icmp ne i32 %64, 217
  %66 = zext i1 %65 to i64
  %67 = select i1 %65, i32 427530, i32 1879475722
  %68 = call i32 @nv_wr32(%struct.nvc0_graph_priv* %63, i32 4294656, i32 %67)
  %69 = load %struct.nvc0_graph_priv*, %struct.nvc0_graph_priv** %2, align 8
  %70 = call i32 @nv_wr32(%struct.nvc0_graph_priv* %69, i32 4294664, i32 0)
  %71 = load %struct.nvc0_graph_priv*, %struct.nvc0_graph_priv** %2, align 8
  %72 = call i32 @nv_wr32(%struct.nvc0_graph_priv* %71, i32 4294668, i32 0)
  %73 = load %struct.nvc0_graph_priv*, %struct.nvc0_graph_priv** %2, align 8
  %74 = call i32 @nv_wr32(%struct.nvc0_graph_priv* %73, i32 4294672, i32 0)
  %75 = load %struct.nvc0_graph_priv*, %struct.nvc0_graph_priv** %2, align 8
  %76 = call i32 @nv_wr32(%struct.nvc0_graph_priv* %75, i32 4294696, i32 33858)
  %77 = load i32, i32* %3, align 4
  %78 = icmp eq i32 %77, 193
  br i1 %78, label %82, label %79

79:                                               ; preds = %1
  %80 = load i32, i32* %3, align 4
  %81 = icmp eq i32 %80, 217
  br i1 %81, label %82, label %85

82:                                               ; preds = %79, %1
  %83 = load %struct.nvc0_graph_priv*, %struct.nvc0_graph_priv** %2, align 8
  %84 = call i32 @nv_wr32(%struct.nvc0_graph_priv* %83, i32 4294704, i32 268435457)
  br label %88

85:                                               ; preds = %79
  %86 = load %struct.nvc0_graph_priv*, %struct.nvc0_graph_priv** %2, align 8
  %87 = call i32 @nv_wr32(%struct.nvc0_graph_priv* %86, i32 4294704, i32 1)
  br label %88

88:                                               ; preds = %85, %82
  %89 = load %struct.nvc0_graph_priv*, %struct.nvc0_graph_priv** %2, align 8
  %90 = call i32 @nv_wr32(%struct.nvc0_graph_priv* %89, i32 4294872, i32 8)
  %91 = load %struct.nvc0_graph_priv*, %struct.nvc0_graph_priv** %2, align 8
  %92 = call i32 @nv_wr32(%struct.nvc0_graph_priv* %91, i32 4294880, i32 16777216)
  %93 = load %struct.nvc0_graph_priv*, %struct.nvc0_graph_priv** %2, align 8
  %94 = call i32 @nv_wr32(%struct.nvc0_graph_priv* %93, i32 4294888, i32 0)
  %95 = load %struct.nvc0_graph_priv*, %struct.nvc0_graph_priv** %2, align 8
  %96 = call i32 @nv_wr32(%struct.nvc0_graph_priv* %95, i32 4294892, i32 0)
  %97 = load %struct.nvc0_graph_priv*, %struct.nvc0_graph_priv** %2, align 8
  %98 = call i32 @nv_wr32(%struct.nvc0_graph_priv* %97, i32 4294896, i32 0)
  %99 = load %struct.nvc0_graph_priv*, %struct.nvc0_graph_priv** %2, align 8
  %100 = call i32 @nv_wr32(%struct.nvc0_graph_priv* %99, i32 4294900, i32 0)
  %101 = load %struct.nvc0_graph_priv*, %struct.nvc0_graph_priv** %2, align 8
  %102 = call i32 @nv_wr32(%struct.nvc0_graph_priv* %101, i32 4294904, i32 0)
  %103 = load i32, i32* %3, align 4
  %104 = icmp eq i32 %103, 217
  br i1 %104, label %105, label %108

105:                                              ; preds = %88
  %106 = load %struct.nvc0_graph_priv*, %struct.nvc0_graph_priv** %2, align 8
  %107 = call i32 @nv_wr32(%struct.nvc0_graph_priv* %106, i32 4294908, i32 537919496)
  br label %118

108:                                              ; preds = %88
  %109 = load i32, i32* %3, align 4
  %110 = icmp eq i32 %109, 193
  br i1 %110, label %111, label %114

111:                                              ; preds = %108
  %112 = load %struct.nvc0_graph_priv*, %struct.nvc0_graph_priv** %2, align 8
  %113 = call i32 @nv_wr32(%struct.nvc0_graph_priv* %112, i32 4294908, i32 1048600)
  br label %117

114:                                              ; preds = %108
  %115 = load %struct.nvc0_graph_priv*, %struct.nvc0_graph_priv** %2, align 8
  %116 = call i32 @nv_wr32(%struct.nvc0_graph_priv* %115, i32 4294908, i32 1048576)
  br label %117

117:                                              ; preds = %114, %111
  br label %118

118:                                              ; preds = %117, %105
  %119 = load %struct.nvc0_graph_priv*, %struct.nvc0_graph_priv** %2, align 8
  %120 = call i32 @nv_wr32(%struct.nvc0_graph_priv* %119, i32 4294940, i32 16711935)
  %121 = load %struct.nvc0_graph_priv*, %struct.nvc0_graph_priv** %2, align 8
  %122 = call i32 @nv_wr32(%struct.nvc0_graph_priv* %121, i32 4294948, i32 0)
  %123 = load %struct.nvc0_graph_priv*, %struct.nvc0_graph_priv** %2, align 8
  %124 = call i32 @nv_wr32(%struct.nvc0_graph_priv* %123, i32 4294952, i32 16776960)
  %125 = load %struct.nvc0_graph_priv*, %struct.nvc0_graph_priv** %2, align 8
  %126 = call i32 @nv_wr32(%struct.nvc0_graph_priv* %125, i32 4294956, i32 65280)
  store i32 0, i32* %4, align 4
  br label %127

127:                                              ; preds = %166, %118
  %128 = load i32, i32* %4, align 4
  %129 = icmp slt i32 %128, 8
  br i1 %129, label %130, label %169

130:                                              ; preds = %127
  %131 = load %struct.nvc0_graph_priv*, %struct.nvc0_graph_priv** %2, align 8
  %132 = load i32, i32* %4, align 4
  %133 = mul nsw i32 %132, 32
  %134 = add nsw i32 4295168, %133
  %135 = call i32 @nv_wr32(%struct.nvc0_graph_priv* %131, i32 %134, i32 0)
  %136 = load %struct.nvc0_graph_priv*, %struct.nvc0_graph_priv** %2, align 8
  %137 = load i32, i32* %4, align 4
  %138 = mul nsw i32 %137, 32
  %139 = add nsw i32 4295172, %138
  %140 = call i32 @nv_wr32(%struct.nvc0_graph_priv* %136, i32 %139, i32 0)
  %141 = load %struct.nvc0_graph_priv*, %struct.nvc0_graph_priv** %2, align 8
  %142 = load i32, i32* %4, align 4
  %143 = mul nsw i32 %142, 32
  %144 = add nsw i32 4295176, %143
  %145 = call i32 @nv_wr32(%struct.nvc0_graph_priv* %141, i32 %144, i32 0)
  %146 = load %struct.nvc0_graph_priv*, %struct.nvc0_graph_priv** %2, align 8
  %147 = load i32, i32* %4, align 4
  %148 = mul nsw i32 %147, 32
  %149 = add nsw i32 4295180, %148
  %150 = call i32 @nv_wr32(%struct.nvc0_graph_priv* %146, i32 %149, i32 65536)
  %151 = load %struct.nvc0_graph_priv*, %struct.nvc0_graph_priv** %2, align 8
  %152 = load i32, i32* %4, align 4
  %153 = mul nsw i32 %152, 32
  %154 = add nsw i32 4295184, %153
  %155 = call i32 @nv_wr32(%struct.nvc0_graph_priv* %151, i32 %154, i32 0)
  %156 = load %struct.nvc0_graph_priv*, %struct.nvc0_graph_priv** %2, align 8
  %157 = load i32, i32* %4, align 4
  %158 = mul nsw i32 %157, 32
  %159 = add nsw i32 4295188, %158
  %160 = call i32 @nv_wr32(%struct.nvc0_graph_priv* %156, i32 %159, i32 0)
  %161 = load %struct.nvc0_graph_priv*, %struct.nvc0_graph_priv** %2, align 8
  %162 = load i32, i32* %4, align 4
  %163 = mul nsw i32 %162, 32
  %164 = add nsw i32 4295192, %163
  %165 = call i32 @nv_wr32(%struct.nvc0_graph_priv* %161, i32 %164, i32 0)
  br label %166

166:                                              ; preds = %130
  %167 = load i32, i32* %4, align 4
  %168 = add nsw i32 %167, 1
  store i32 %168, i32* %4, align 4
  br label %127

169:                                              ; preds = %127
  %170 = load %struct.nvc0_graph_priv*, %struct.nvc0_graph_priv** %2, align 8
  %171 = load i32, i32* %3, align 4
  %172 = icmp ne i32 %171, 217
  %173 = zext i1 %172 to i64
  %174 = select i1 %172, i32 0, i32 6
  %175 = call i32 @nv_wr32(%struct.nvc0_graph_priv* %170, i32 4295424, i32 %174)
  %176 = load %struct.nvc0_graph_priv*, %struct.nvc0_graph_priv** %2, align 8
  %177 = call i32 @nv_wr32(%struct.nvc0_graph_priv* %176, i32 4295432, i32 172066848)
  %178 = load %struct.nvc0_graph_priv*, %struct.nvc0_graph_priv** %2, align 8
  %179 = call i32 @nv_wr32(%struct.nvc0_graph_priv* %178, i32 4295436, i32 102793446)
  %180 = load %struct.nvc0_graph_priv*, %struct.nvc0_graph_priv** %2, align 8
  %181 = call i32 @nv_wr32(%struct.nvc0_graph_priv* %180, i32 4295440, i32 33790116)
  %182 = load %struct.nvc0_graph_priv*, %struct.nvc0_graph_priv** %2, align 8
  %183 = call i32 @nv_wr32(%struct.nvc0_graph_priv* %182, i32 4295444, i32 241340514)
  %184 = load %struct.nvc0_graph_priv*, %struct.nvc0_graph_priv** %2, align 8
  %185 = call i32 @nv_wr32(%struct.nvc0_graph_priv* %184, i32 4295448, i32 172066848)
  %186 = load %struct.nvc0_graph_priv*, %struct.nvc0_graph_priv** %2, align 8
  %187 = call i32 @nv_wr32(%struct.nvc0_graph_priv* %186, i32 4295452, i32 230)
  %188 = load %struct.nvc0_graph_priv*, %struct.nvc0_graph_priv** %2, align 8
  %189 = call i32 @nv_wr32(%struct.nvc0_graph_priv* %188, i32 4295608, i32 259)
  %190 = load %struct.nvc0_graph_priv*, %struct.nvc0_graph_priv** %2, align 8
  %191 = call i32 @nv_wr32(%struct.nvc0_graph_priv* %190, i32 4295688, i32 1)
  %192 = load %struct.nvc0_graph_priv*, %struct.nvc0_graph_priv** %2, align 8
  %193 = call i32 @nv_wr32(%struct.nvc0_graph_priv* %192, i32 4295696, i32 0)
  %194 = load %struct.nvc0_graph_priv*, %struct.nvc0_graph_priv** %2, align 8
  %195 = call i32 @nv_wr32(%struct.nvc0_graph_priv* %194, i32 4295700, i32 0)
  %196 = load %struct.nvc0_graph_priv*, %struct.nvc0_graph_priv** %2, align 8
  %197 = call i32 @nv_wr32(%struct.nvc0_graph_priv* %196, i32 4295704, i32 0)
  %198 = load %struct.nvc0_graph_priv*, %struct.nvc0_graph_priv** %2, align 8
  %199 = call i32 @nv_wr32(%struct.nvc0_graph_priv* %198, i32 4295708, i32 0)
  %200 = load %struct.nvc0_graph_priv*, %struct.nvc0_graph_priv** %2, align 8
  %201 = call i32 @nv_wr32(%struct.nvc0_graph_priv* %200, i32 4295712, i32 0)
  %202 = load %struct.nvc0_graph_priv*, %struct.nvc0_graph_priv** %2, align 8
  %203 = call i32 @nv_wr32(%struct.nvc0_graph_priv* %202, i32 4295716, i32 0)
  %204 = load %struct.nvc0_graph_priv*, %struct.nvc0_graph_priv** %2, align 8
  %205 = call i32 @nv_wr32(%struct.nvc0_graph_priv* %204, i32 4295720, i32 0)
  %206 = load %struct.nvc0_graph_priv*, %struct.nvc0_graph_priv** %2, align 8
  %207 = call i32 @nv_wr32(%struct.nvc0_graph_priv* %206, i32 4295724, i32 0)
  %208 = load i32, i32* %3, align 4
  %209 = icmp eq i32 %208, 193
  br i1 %209, label %213, label %210

210:                                              ; preds = %169
  %211 = load i32, i32* %3, align 4
  %212 = icmp eq i32 %211, 217
  br i1 %212, label %213, label %216

213:                                              ; preds = %210, %169
  %214 = load %struct.nvc0_graph_priv*, %struct.nvc0_graph_priv** %2, align 8
  %215 = call i32 @nv_wr32(%struct.nvc0_graph_priv* %214, i32 4295788, i32 1)
  br label %216

216:                                              ; preds = %213, %210
  %217 = load %struct.nvc0_graph_priv*, %struct.nvc0_graph_priv** %2, align 8
  %218 = call i32 @nv_wr32(%struct.nvc0_graph_priv* %217, i32 4295808, i32 538968068)
  %219 = load %struct.nvc0_graph_priv*, %struct.nvc0_graph_priv** %2, align 8
  %220 = call i32 @nv_wr32(%struct.nvc0_graph_priv* %219, i32 4295820, i32 1)
  %221 = load %struct.nvc0_graph_priv*, %struct.nvc0_graph_priv** %2, align 8
  %222 = call i32 @nv_wr32(%struct.nvc0_graph_priv* %221, i32 4296704, i32 1920)
  %223 = load %struct.nvc0_graph_priv*, %struct.nvc0_graph_priv** %2, align 8
  %224 = call i32 @nv_wr32(%struct.nvc0_graph_priv* %223, i32 4296708, i32 0)
  %225 = load %struct.nvc0_graph_priv*, %struct.nvc0_graph_priv** %2, align 8
  %226 = call i32 @nv_wr32(%struct.nvc0_graph_priv* %225, i32 4296712, i32 0)
  %227 = load %struct.nvc0_graph_priv*, %struct.nvc0_graph_priv** %2, align 8
  %228 = call i32 @nv_wr32(%struct.nvc0_graph_priv* %227, i32 4296724, i32 4)
  ret void
}

declare dso_local %struct.TYPE_2__* @nv_device(%struct.nvc0_graph_priv*) #1

declare dso_local i32 @nv_wr32(%struct.nvc0_graph_priv*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
