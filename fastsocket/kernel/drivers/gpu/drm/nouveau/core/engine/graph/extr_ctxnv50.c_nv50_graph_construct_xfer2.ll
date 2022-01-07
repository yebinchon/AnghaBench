; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/engine/graph/extr_ctxnv50.c_nv50_graph_construct_xfer2.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/engine/graph/extr_ctxnv50.c_nv50_graph_construct_xfer2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nouveau_grctx = type { i32, %struct.nouveau_device* }
%struct.nouveau_device = type { i32 }

@CP_SET_XFER_POINTER = common dso_local global i32 0, align 4
@CP_SEEK_2 = common dso_local global i32 0, align 4
@CP_XFER_2 = common dso_local global i32 0, align 4
@XFER = common dso_local global i32 0, align 4
@BUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nouveau_grctx*)* @nv50_graph_construct_xfer2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nv50_graph_construct_xfer2(%struct.nouveau_grctx* %0) #0 {
  %2 = alloca %struct.nouveau_grctx*, align 8
  %3 = alloca %struct.nouveau_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.nouveau_grctx* %0, %struct.nouveau_grctx** %2, align 8
  %8 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %9 = getelementptr inbounds %struct.nouveau_grctx, %struct.nouveau_grctx* %8, i32 0, i32 1
  %10 = load %struct.nouveau_device*, %struct.nouveau_device** %9, align 8
  store %struct.nouveau_device* %10, %struct.nouveau_device** %3, align 8
  %11 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %12 = getelementptr inbounds %struct.nouveau_grctx, %struct.nouveau_grctx* %11, i32 0, i32 1
  %13 = load %struct.nouveau_device*, %struct.nouveau_device** %12, align 8
  %14 = call i32 @nv_rd32(%struct.nouveau_device* %13, i32 5440)
  store i32 %14, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %15 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %16 = getelementptr inbounds %struct.nouveau_grctx, %struct.nouveau_grctx* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = add nsw i32 %17, 63
  %19 = and i32 %18, -64
  store i32 %19, i32* %5, align 4
  %20 = load %struct.nouveau_device*, %struct.nouveau_device** %3, align 8
  %21 = getelementptr inbounds %struct.nouveau_device, %struct.nouveau_device* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = icmp slt i32 %22, 160
  br i1 %23, label %24, label %69

24:                                               ; preds = %1
  store i32 0, i32* %4, align 4
  br label %25

25:                                               ; preds = %65, %24
  %26 = load i32, i32* %4, align 4
  %27 = icmp slt i32 %26, 8
  br i1 %27, label %28, label %68

28:                                               ; preds = %25
  %29 = load i32, i32* %5, align 4
  %30 = load i32, i32* %4, align 4
  %31 = add nsw i32 %29, %30
  %32 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %33 = getelementptr inbounds %struct.nouveau_grctx, %struct.nouveau_grctx* %32, i32 0, i32 0
  store i32 %31, i32* %33, align 8
  %34 = load i32, i32* %4, align 4
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %28
  %37 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %38 = call i32 @xf_emit(%struct.nouveau_grctx* %37, i32 1, i32 135269394)
  br label %39

39:                                               ; preds = %36, %28
  %40 = load i32, i32* %6, align 4
  %41 = load i32, i32* %4, align 4
  %42 = shl i32 1, %41
  %43 = and i32 %40, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %39
  %46 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %47 = call i32 @nv50_graph_construct_xfer_mpc(%struct.nouveau_grctx* %46)
  br label %48

48:                                               ; preds = %45, %39
  %49 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %50 = getelementptr inbounds %struct.nouveau_grctx, %struct.nouveau_grctx* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = load i32, i32* %5, align 4
  %53 = sub nsw i32 %51, %52
  %54 = sdiv i32 %53, 8
  %55 = load i32, i32* %7, align 4
  %56 = icmp sgt i32 %54, %55
  br i1 %56, label %57, label %64

57:                                               ; preds = %48
  %58 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %59 = getelementptr inbounds %struct.nouveau_grctx, %struct.nouveau_grctx* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = load i32, i32* %5, align 4
  %62 = sub nsw i32 %60, %61
  %63 = sdiv i32 %62, 8
  store i32 %63, i32* %7, align 4
  br label %64

64:                                               ; preds = %57, %48
  br label %65

65:                                               ; preds = %64
  %66 = load i32, i32* %4, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %4, align 4
  br label %25

68:                                               ; preds = %25
  br label %221

69:                                               ; preds = %1
  %70 = load i32, i32* %5, align 4
  %71 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %72 = getelementptr inbounds %struct.nouveau_grctx, %struct.nouveau_grctx* %71, i32 0, i32 0
  store i32 %70, i32* %72, align 8
  %73 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %74 = call i32 @xf_emit(%struct.nouveau_grctx* %73, i32 1, i32 135269394)
  %75 = load i32, i32* %6, align 4
  %76 = and i32 %75, 1
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %81

78:                                               ; preds = %69
  %79 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %80 = call i32 @nv50_graph_construct_xfer_mpc(%struct.nouveau_grctx* %79)
  br label %81

81:                                               ; preds = %78, %69
  %82 = load i32, i32* %6, align 4
  %83 = and i32 %82, 2
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %88

85:                                               ; preds = %81
  %86 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %87 = call i32 @nv50_graph_construct_xfer_mpc(%struct.nouveau_grctx* %86)
  br label %88

88:                                               ; preds = %85, %81
  %89 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %90 = getelementptr inbounds %struct.nouveau_grctx, %struct.nouveau_grctx* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = load i32, i32* %5, align 4
  %93 = sub nsw i32 %91, %92
  %94 = sdiv i32 %93, 8
  %95 = load i32, i32* %7, align 4
  %96 = icmp sgt i32 %94, %95
  br i1 %96, label %97, label %104

97:                                               ; preds = %88
  %98 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %99 = getelementptr inbounds %struct.nouveau_grctx, %struct.nouveau_grctx* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = load i32, i32* %5, align 4
  %102 = sub nsw i32 %100, %101
  %103 = sdiv i32 %102, 8
  store i32 %103, i32* %7, align 4
  br label %104

104:                                              ; preds = %97, %88
  %105 = load i32, i32* %5, align 4
  %106 = add nsw i32 %105, 1
  %107 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %108 = getelementptr inbounds %struct.nouveau_grctx, %struct.nouveau_grctx* %107, i32 0, i32 0
  store i32 %106, i32* %108, align 8
  %109 = load i32, i32* %6, align 4
  %110 = and i32 %109, 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %115

112:                                              ; preds = %104
  %113 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %114 = call i32 @nv50_graph_construct_xfer_mpc(%struct.nouveau_grctx* %113)
  br label %115

115:                                              ; preds = %112, %104
  %116 = load i32, i32* %6, align 4
  %117 = and i32 %116, 8
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %122

119:                                              ; preds = %115
  %120 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %121 = call i32 @nv50_graph_construct_xfer_mpc(%struct.nouveau_grctx* %120)
  br label %122

122:                                              ; preds = %119, %115
  %123 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %124 = getelementptr inbounds %struct.nouveau_grctx, %struct.nouveau_grctx* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 8
  %126 = load i32, i32* %5, align 4
  %127 = sub nsw i32 %125, %126
  %128 = sdiv i32 %127, 8
  %129 = load i32, i32* %7, align 4
  %130 = icmp sgt i32 %128, %129
  br i1 %130, label %131, label %138

131:                                              ; preds = %122
  %132 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %133 = getelementptr inbounds %struct.nouveau_grctx, %struct.nouveau_grctx* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 8
  %135 = load i32, i32* %5, align 4
  %136 = sub nsw i32 %134, %135
  %137 = sdiv i32 %136, 8
  store i32 %137, i32* %7, align 4
  br label %138

138:                                              ; preds = %131, %122
  %139 = load i32, i32* %5, align 4
  %140 = add nsw i32 %139, 2
  %141 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %142 = getelementptr inbounds %struct.nouveau_grctx, %struct.nouveau_grctx* %141, i32 0, i32 0
  store i32 %140, i32* %142, align 8
  %143 = load i32, i32* %6, align 4
  %144 = and i32 %143, 16
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %146, label %149

146:                                              ; preds = %138
  %147 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %148 = call i32 @nv50_graph_construct_xfer_mpc(%struct.nouveau_grctx* %147)
  br label %149

149:                                              ; preds = %146, %138
  %150 = load i32, i32* %6, align 4
  %151 = and i32 %150, 32
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %153, label %156

153:                                              ; preds = %149
  %154 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %155 = call i32 @nv50_graph_construct_xfer_mpc(%struct.nouveau_grctx* %154)
  br label %156

156:                                              ; preds = %153, %149
  %157 = load i32, i32* %6, align 4
  %158 = and i32 %157, 64
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %160, label %163

160:                                              ; preds = %156
  %161 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %162 = call i32 @nv50_graph_construct_xfer_mpc(%struct.nouveau_grctx* %161)
  br label %163

163:                                              ; preds = %160, %156
  %164 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %165 = getelementptr inbounds %struct.nouveau_grctx, %struct.nouveau_grctx* %164, i32 0, i32 0
  %166 = load i32, i32* %165, align 8
  %167 = load i32, i32* %5, align 4
  %168 = sub nsw i32 %166, %167
  %169 = sdiv i32 %168, 8
  %170 = load i32, i32* %7, align 4
  %171 = icmp sgt i32 %169, %170
  br i1 %171, label %172, label %179

172:                                              ; preds = %163
  %173 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %174 = getelementptr inbounds %struct.nouveau_grctx, %struct.nouveau_grctx* %173, i32 0, i32 0
  %175 = load i32, i32* %174, align 8
  %176 = load i32, i32* %5, align 4
  %177 = sub nsw i32 %175, %176
  %178 = sdiv i32 %177, 8
  store i32 %178, i32* %7, align 4
  br label %179

179:                                              ; preds = %172, %163
  %180 = load i32, i32* %5, align 4
  %181 = add nsw i32 %180, 3
  %182 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %183 = getelementptr inbounds %struct.nouveau_grctx, %struct.nouveau_grctx* %182, i32 0, i32 0
  store i32 %181, i32* %183, align 8
  %184 = load i32, i32* %6, align 4
  %185 = and i32 %184, 128
  %186 = icmp ne i32 %185, 0
  br i1 %186, label %187, label %190

187:                                              ; preds = %179
  %188 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %189 = call i32 @nv50_graph_construct_xfer_mpc(%struct.nouveau_grctx* %188)
  br label %190

190:                                              ; preds = %187, %179
  %191 = load i32, i32* %6, align 4
  %192 = and i32 %191, 256
  %193 = icmp ne i32 %192, 0
  br i1 %193, label %194, label %197

194:                                              ; preds = %190
  %195 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %196 = call i32 @nv50_graph_construct_xfer_mpc(%struct.nouveau_grctx* %195)
  br label %197

197:                                              ; preds = %194, %190
  %198 = load i32, i32* %6, align 4
  %199 = and i32 %198, 512
  %200 = icmp ne i32 %199, 0
  br i1 %200, label %201, label %204

201:                                              ; preds = %197
  %202 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %203 = call i32 @nv50_graph_construct_xfer_mpc(%struct.nouveau_grctx* %202)
  br label %204

204:                                              ; preds = %201, %197
  %205 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %206 = getelementptr inbounds %struct.nouveau_grctx, %struct.nouveau_grctx* %205, i32 0, i32 0
  %207 = load i32, i32* %206, align 8
  %208 = load i32, i32* %5, align 4
  %209 = sub nsw i32 %207, %208
  %210 = sdiv i32 %209, 8
  %211 = load i32, i32* %7, align 4
  %212 = icmp sgt i32 %210, %211
  br i1 %212, label %213, label %220

213:                                              ; preds = %204
  %214 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %215 = getelementptr inbounds %struct.nouveau_grctx, %struct.nouveau_grctx* %214, i32 0, i32 0
  %216 = load i32, i32* %215, align 8
  %217 = load i32, i32* %5, align 4
  %218 = sub nsw i32 %216, %217
  %219 = sdiv i32 %218, 8
  store i32 %219, i32* %7, align 4
  br label %220

220:                                              ; preds = %213, %204
  br label %221

221:                                              ; preds = %220, %68
  %222 = load i32, i32* %5, align 4
  %223 = load i32, i32* %7, align 4
  %224 = mul nsw i32 %223, 8
  %225 = add nsw i32 %222, %224
  %226 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %227 = getelementptr inbounds %struct.nouveau_grctx, %struct.nouveau_grctx* %226, i32 0, i32 0
  store i32 %225, i32* %227, align 8
  %228 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %229 = getelementptr inbounds %struct.nouveau_grctx, %struct.nouveau_grctx* %228, i32 0, i32 0
  %230 = load i32, i32* %229, align 8
  %231 = add nsw i32 %230, 63
  %232 = and i32 %231, -64
  %233 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %234 = getelementptr inbounds %struct.nouveau_grctx, %struct.nouveau_grctx* %233, i32 0, i32 0
  store i32 %232, i32* %234, align 8
  %235 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %236 = load i32, i32* %5, align 4
  %237 = call i32 @cp_lsr(%struct.nouveau_grctx* %235, i32 %236)
  %238 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %239 = load i32, i32* @CP_SET_XFER_POINTER, align 4
  %240 = call i32 @cp_out(%struct.nouveau_grctx* %238, i32 %239)
  %241 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %242 = load i32, i32* %7, align 4
  %243 = call i32 @cp_lsr(%struct.nouveau_grctx* %241, i32 %242)
  %244 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %245 = load i32, i32* @CP_SEEK_2, align 4
  %246 = call i32 @cp_out(%struct.nouveau_grctx* %244, i32 %245)
  %247 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %248 = load i32, i32* @CP_XFER_2, align 4
  %249 = call i32 @cp_out(%struct.nouveau_grctx* %247, i32 %248)
  %250 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %251 = load i32, i32* @XFER, align 4
  %252 = load i32, i32* @BUSY, align 4
  %253 = call i32 @cp_wait(%struct.nouveau_grctx* %250, i32 %251, i32 %252)
  ret void
}

declare dso_local i32 @nv_rd32(%struct.nouveau_device*, i32) #1

declare dso_local i32 @xf_emit(%struct.nouveau_grctx*, i32, i32) #1

declare dso_local i32 @nv50_graph_construct_xfer_mpc(%struct.nouveau_grctx*) #1

declare dso_local i32 @cp_lsr(%struct.nouveau_grctx*, i32) #1

declare dso_local i32 @cp_out(%struct.nouveau_grctx*, i32) #1

declare dso_local i32 @cp_wait(%struct.nouveau_grctx*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
