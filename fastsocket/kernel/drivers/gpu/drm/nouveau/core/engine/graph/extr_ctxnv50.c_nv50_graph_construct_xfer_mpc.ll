; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/engine/graph/extr_ctxnv50.c_nv50_graph_construct_xfer_mpc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/engine/graph/extr_ctxnv50.c_nv50_graph_construct_xfer_mpc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nouveau_grctx = type { %struct.nouveau_device* }
%struct.nouveau_device = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nouveau_grctx*)* @nv50_graph_construct_xfer_mpc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nv50_graph_construct_xfer_mpc(%struct.nouveau_grctx* %0) #0 {
  %2 = alloca %struct.nouveau_grctx*, align 8
  %3 = alloca %struct.nouveau_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.nouveau_grctx* %0, %struct.nouveau_grctx** %2, align 8
  %6 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %7 = getelementptr inbounds %struct.nouveau_grctx, %struct.nouveau_grctx* %6, i32 0, i32 0
  %8 = load %struct.nouveau_device*, %struct.nouveau_device** %7, align 8
  store %struct.nouveau_device* %8, %struct.nouveau_device** %3, align 8
  store i32 2, i32* %5, align 4
  %9 = load %struct.nouveau_device*, %struct.nouveau_device** %3, align 8
  %10 = getelementptr inbounds %struct.nouveau_device, %struct.nouveau_device* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  switch i32 %11, label %15 [
    i32 152, label %12
    i32 170, label %12
    i32 80, label %13
    i32 132, label %13
    i32 134, label %13
    i32 146, label %13
    i32 148, label %13
    i32 150, label %13
    i32 168, label %13
    i32 172, label %13
    i32 160, label %14
    i32 163, label %14
    i32 165, label %14
    i32 175, label %14
  ]

12:                                               ; preds = %1, %1
  store i32 1, i32* %5, align 4
  br label %15

13:                                               ; preds = %1, %1, %1, %1, %1, %1, %1, %1
  store i32 2, i32* %5, align 4
  br label %15

14:                                               ; preds = %1, %1, %1, %1
  store i32 3, i32* %5, align 4
  br label %15

15:                                               ; preds = %1, %14, %13, %12
  store i32 0, i32* %4, align 4
  br label %16

16:                                               ; preds = %112, %15
  %17 = load i32, i32* %4, align 4
  %18 = load i32, i32* %5, align 4
  %19 = icmp slt i32 %17, %18
  br i1 %19, label %20, label %115

20:                                               ; preds = %16
  %21 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %22 = call i32 @xf_emit(%struct.nouveau_grctx* %21, i32 1, i32 0)
  %23 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %24 = call i32 @xf_emit(%struct.nouveau_grctx* %23, i32 1, i32 128)
  %25 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %26 = call i32 @xf_emit(%struct.nouveau_grctx* %25, i32 1, i32 -2147454972)
  %27 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %28 = call i32 @xf_emit(%struct.nouveau_grctx* %27, i32 1, i32 67109888)
  %29 = load %struct.nouveau_device*, %struct.nouveau_device** %3, align 8
  %30 = getelementptr inbounds %struct.nouveau_device, %struct.nouveau_device* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = icmp sge i32 %31, 160
  br i1 %32, label %33, label %36

33:                                               ; preds = %20
  %34 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %35 = call i32 @xf_emit(%struct.nouveau_grctx* %34, i32 1, i32 192)
  br label %36

36:                                               ; preds = %33, %20
  %37 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %38 = call i32 @xf_emit(%struct.nouveau_grctx* %37, i32 1, i32 4096)
  %39 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %40 = call i32 @xf_emit(%struct.nouveau_grctx* %39, i32 1, i32 0)
  %41 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %42 = call i32 @xf_emit(%struct.nouveau_grctx* %41, i32 1, i32 0)
  %43 = load %struct.nouveau_device*, %struct.nouveau_device** %3, align 8
  %44 = getelementptr inbounds %struct.nouveau_device, %struct.nouveau_device* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = icmp eq i32 %45, 134
  br i1 %46, label %63, label %47

47:                                               ; preds = %36
  %48 = load %struct.nouveau_device*, %struct.nouveau_device** %3, align 8
  %49 = getelementptr inbounds %struct.nouveau_device, %struct.nouveau_device* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = icmp eq i32 %50, 152
  br i1 %51, label %63, label %52

52:                                               ; preds = %47
  %53 = load %struct.nouveau_device*, %struct.nouveau_device** %3, align 8
  %54 = getelementptr inbounds %struct.nouveau_device, %struct.nouveau_device* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = icmp eq i32 %55, 168
  br i1 %56, label %63, label %57

57:                                               ; preds = %52
  %58 = load %struct.nouveau_device*, %struct.nouveau_device** %3, align 8
  %59 = getelementptr inbounds %struct.nouveau_device, %struct.nouveau_device* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = call i64 @IS_NVAAF(i32 %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %68

63:                                               ; preds = %57, %52, %47, %36
  %64 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %65 = call i32 @xf_emit(%struct.nouveau_grctx* %64, i32 1, i32 3584)
  %66 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %67 = call i32 @xf_emit(%struct.nouveau_grctx* %66, i32 1, i32 7680)
  br label %68

68:                                               ; preds = %63, %57
  %69 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %70 = call i32 @xf_emit(%struct.nouveau_grctx* %69, i32 1, i32 1)
  %71 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %72 = call i32 @xf_emit(%struct.nouveau_grctx* %71, i32 1, i32 0)
  %73 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %74 = call i32 @xf_emit(%struct.nouveau_grctx* %73, i32 1, i32 0)
  %75 = load %struct.nouveau_device*, %struct.nouveau_device** %3, align 8
  %76 = getelementptr inbounds %struct.nouveau_device, %struct.nouveau_device* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = icmp eq i32 %77, 80
  br i1 %78, label %79, label %82

79:                                               ; preds = %68
  %80 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %81 = call i32 @xf_emit(%struct.nouveau_grctx* %80, i32 2, i32 4096)
  br label %82

82:                                               ; preds = %79, %68
  %83 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %84 = call i32 @xf_emit(%struct.nouveau_grctx* %83, i32 1, i32 1)
  %85 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %86 = call i32 @xf_emit(%struct.nouveau_grctx* %85, i32 1, i32 0)
  %87 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %88 = call i32 @xf_emit(%struct.nouveau_grctx* %87, i32 1, i32 4)
  %89 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %90 = call i32 @xf_emit(%struct.nouveau_grctx* %89, i32 1, i32 2)
  %91 = load %struct.nouveau_device*, %struct.nouveau_device** %3, align 8
  %92 = getelementptr inbounds %struct.nouveau_device, %struct.nouveau_device* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = call i64 @IS_NVAAF(i32 %93)
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %99

96:                                               ; preds = %82
  %97 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %98 = call i32 @xf_emit(%struct.nouveau_grctx* %97, i32 11, i32 0)
  br label %111

99:                                               ; preds = %82
  %100 = load %struct.nouveau_device*, %struct.nouveau_device** %3, align 8
  %101 = getelementptr inbounds %struct.nouveau_device, %struct.nouveau_device* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = icmp sge i32 %102, 160
  br i1 %103, label %104, label %107

104:                                              ; preds = %99
  %105 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %106 = call i32 @xf_emit(%struct.nouveau_grctx* %105, i32 12, i32 0)
  br label %110

107:                                              ; preds = %99
  %108 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %109 = call i32 @xf_emit(%struct.nouveau_grctx* %108, i32 10, i32 0)
  br label %110

110:                                              ; preds = %107, %104
  br label %111

111:                                              ; preds = %110, %96
  br label %112

112:                                              ; preds = %111
  %113 = load i32, i32* %4, align 4
  %114 = add nsw i32 %113, 1
  store i32 %114, i32* %4, align 4
  br label %16

115:                                              ; preds = %16
  %116 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %117 = call i32 @xf_emit(%struct.nouveau_grctx* %116, i32 1, i32 135269394)
  %118 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %119 = call i32 @xf_emit(%struct.nouveau_grctx* %118, i32 1, i32 0)
  %120 = load %struct.nouveau_device*, %struct.nouveau_device** %3, align 8
  %121 = getelementptr inbounds %struct.nouveau_device, %struct.nouveau_device* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 4
  %123 = icmp sge i32 %122, 160
  br i1 %123, label %124, label %127

124:                                              ; preds = %115
  %125 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %126 = call i32 @xf_emit(%struct.nouveau_grctx* %125, i32 1, i32 130593)
  br label %127

127:                                              ; preds = %124, %115
  %128 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %129 = call i32 @xf_emit(%struct.nouveau_grctx* %128, i32 3, i32 0)
  %130 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %131 = call i32 @xf_emit(%struct.nouveau_grctx* %130, i32 1, i32 0)
  %132 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %133 = call i32 @xf_emit(%struct.nouveau_grctx* %132, i32 1, i32 0)
  %134 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %135 = call i32 @xf_emit(%struct.nouveau_grctx* %134, i32 4, i32 65535)
  %136 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %137 = call i32 @xf_emit(%struct.nouveau_grctx* %136, i32 1, i32 1)
  %138 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %139 = call i32 @xf_emit(%struct.nouveau_grctx* %138, i32 1, i32 65537)
  %140 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %141 = call i32 @xf_emit(%struct.nouveau_grctx* %140, i32 1, i32 65537)
  %142 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %143 = call i32 @xf_emit(%struct.nouveau_grctx* %142, i32 1, i32 1)
  %144 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %145 = call i32 @xf_emit(%struct.nouveau_grctx* %144, i32 1, i32 0)
  %146 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %147 = call i32 @xf_emit(%struct.nouveau_grctx* %146, i32 1, i32 130593)
  %148 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %149 = call i32 @xf_emit(%struct.nouveau_grctx* %148, i32 1, i32 0)
  %150 = load %struct.nouveau_device*, %struct.nouveau_device** %3, align 8
  %151 = getelementptr inbounds %struct.nouveau_device, %struct.nouveau_device* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 4
  %153 = call i64 @IS_NVA3F(i32 %152)
  %154 = icmp ne i64 %153, 0
  br i1 %154, label %155, label %158

155:                                              ; preds = %127
  %156 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %157 = call i32 @xf_emit(%struct.nouveau_grctx* %156, i32 1, i32 1)
  br label %158

158:                                              ; preds = %155, %127
  %159 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %160 = call i32 @xf_emit(%struct.nouveau_grctx* %159, i32 1, i32 0)
  %161 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %162 = call i32 @xf_emit(%struct.nouveau_grctx* %161, i32 1, i32 0)
  %163 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %164 = call i32 @xf_emit(%struct.nouveau_grctx* %163, i32 1, i32 0)
  %165 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %166 = call i32 @xf_emit(%struct.nouveau_grctx* %165, i32 1, i32 0)
  %167 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %168 = call i32 @xf_emit(%struct.nouveau_grctx* %167, i32 1, i32 135269394)
  %169 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %170 = call i32 @xf_emit(%struct.nouveau_grctx* %169, i32 1, i32 4)
  %171 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %172 = call i32 @xf_emit(%struct.nouveau_grctx* %171, i32 1, i32 0)
  %173 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %174 = call i32 @xf_emit(%struct.nouveau_grctx* %173, i32 1, i32 2)
  %175 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %176 = call i32 @xf_emit(%struct.nouveau_grctx* %175, i32 1, i32 17)
  %177 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %178 = call i32 @xf_emit(%struct.nouveau_grctx* %177, i32 7, i32 0)
  %179 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %180 = call i32 @xf_emit(%struct.nouveau_grctx* %179, i32 1, i32 0)
  %181 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %182 = call i32 @xf_emit(%struct.nouveau_grctx* %181, i32 1, i32 262957185)
  %183 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %184 = call i32 @xf_emit(%struct.nouveau_grctx* %183, i32 1, i32 0)
  %185 = load %struct.nouveau_device*, %struct.nouveau_device** %3, align 8
  %186 = getelementptr inbounds %struct.nouveau_device, %struct.nouveau_device* %185, i32 0, i32 0
  %187 = load i32, i32* %186, align 4
  %188 = call i64 @IS_NVA3F(i32 %187)
  %189 = icmp ne i64 %188, 0
  br i1 %189, label %190, label %193

190:                                              ; preds = %158
  %191 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %192 = call i32 @xf_emit(%struct.nouveau_grctx* %191, i32 1, i32 3)
  br label %193

193:                                              ; preds = %190, %158
  %194 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %195 = call i32 @xf_emit(%struct.nouveau_grctx* %194, i32 1, i32 0)
  %196 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %197 = call i32 @xf_emit(%struct.nouveau_grctx* %196, i32 1, i32 0)
  %198 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %199 = call i32 @xf_emit(%struct.nouveau_grctx* %198, i32 1, i32 0)
  %200 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %201 = call i32 @xf_emit(%struct.nouveau_grctx* %200, i32 1, i32 4)
  %202 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %203 = call i32 @xf_emit(%struct.nouveau_grctx* %202, i32 8, i32 0)
  %204 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %205 = call i32 @xf_emit(%struct.nouveau_grctx* %204, i32 1, i32 0)
  %206 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %207 = call i32 @xf_emit(%struct.nouveau_grctx* %206, i32 1, i32 2)
  %208 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %209 = call i32 @xf_emit(%struct.nouveau_grctx* %208, i32 1, i32 1)
  %210 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %211 = call i32 @xf_emit(%struct.nouveau_grctx* %210, i32 1, i32 1)
  %212 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %213 = call i32 @xf_emit(%struct.nouveau_grctx* %212, i32 1, i32 2)
  %214 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %215 = call i32 @xf_emit(%struct.nouveau_grctx* %214, i32 1, i32 1)
  %216 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %217 = call i32 @xf_emit(%struct.nouveau_grctx* %216, i32 1, i32 1)
  %218 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %219 = call i32 @xf_emit(%struct.nouveau_grctx* %218, i32 1, i32 1)
  %220 = load %struct.nouveau_device*, %struct.nouveau_device** %3, align 8
  %221 = getelementptr inbounds %struct.nouveau_device, %struct.nouveau_device* %220, i32 0, i32 0
  %222 = load i32, i32* %221, align 4
  %223 = call i64 @IS_NVA3F(i32 %222)
  %224 = icmp ne i64 %223, 0
  br i1 %224, label %225, label %246

225:                                              ; preds = %193
  %226 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %227 = call i32 @xf_emit(%struct.nouveau_grctx* %226, i32 1, i32 0)
  %228 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %229 = call i32 @xf_emit(%struct.nouveau_grctx* %228, i32 8, i32 2)
  %230 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %231 = call i32 @xf_emit(%struct.nouveau_grctx* %230, i32 8, i32 1)
  %232 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %233 = call i32 @xf_emit(%struct.nouveau_grctx* %232, i32 8, i32 1)
  %234 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %235 = call i32 @xf_emit(%struct.nouveau_grctx* %234, i32 8, i32 2)
  %236 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %237 = call i32 @xf_emit(%struct.nouveau_grctx* %236, i32 8, i32 1)
  %238 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %239 = call i32 @xf_emit(%struct.nouveau_grctx* %238, i32 8, i32 1)
  %240 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %241 = call i32 @xf_emit(%struct.nouveau_grctx* %240, i32 8, i32 1)
  %242 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %243 = call i32 @xf_emit(%struct.nouveau_grctx* %242, i32 1, i32 0)
  %244 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %245 = call i32 @xf_emit(%struct.nouveau_grctx* %244, i32 1, i32 0)
  br label %246

246:                                              ; preds = %225, %193
  %247 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %248 = call i32 @xf_emit(%struct.nouveau_grctx* %247, i32 1, i32 0)
  %249 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %250 = call i32 @xf_emit(%struct.nouveau_grctx* %249, i32 1, i32 4)
  %251 = load %struct.nouveau_device*, %struct.nouveau_device** %3, align 8
  %252 = getelementptr inbounds %struct.nouveau_device, %struct.nouveau_device* %251, i32 0, i32 0
  %253 = load i32, i32* %252, align 4
  %254 = icmp eq i32 %253, 80
  br i1 %254, label %255, label %258

255:                                              ; preds = %246
  %256 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %257 = call i32 @xf_emit(%struct.nouveau_grctx* %256, i32 928, i32 0)
  br label %284

258:                                              ; preds = %246
  %259 = load %struct.nouveau_device*, %struct.nouveau_device** %3, align 8
  %260 = getelementptr inbounds %struct.nouveau_device, %struct.nouveau_device* %259, i32 0, i32 0
  %261 = load i32, i32* %260, align 4
  %262 = icmp slt i32 %261, 148
  br i1 %262, label %263, label %266

263:                                              ; preds = %258
  %264 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %265 = call i32 @xf_emit(%struct.nouveau_grctx* %264, i32 930, i32 0)
  br label %283

266:                                              ; preds = %258
  %267 = load %struct.nouveau_device*, %struct.nouveau_device** %3, align 8
  %268 = getelementptr inbounds %struct.nouveau_device, %struct.nouveau_device* %267, i32 0, i32 0
  %269 = load i32, i32* %268, align 4
  %270 = icmp eq i32 %269, 152
  br i1 %270, label %276, label %271

271:                                              ; preds = %266
  %272 = load %struct.nouveau_device*, %struct.nouveau_device** %3, align 8
  %273 = getelementptr inbounds %struct.nouveau_device, %struct.nouveau_device* %272, i32 0, i32 0
  %274 = load i32, i32* %273, align 4
  %275 = icmp eq i32 %274, 170
  br i1 %275, label %276, label %279

276:                                              ; preds = %271, %266
  %277 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %278 = call i32 @xf_emit(%struct.nouveau_grctx* %277, i32 927, i32 0)
  br label %282

279:                                              ; preds = %271
  %280 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %281 = call i32 @xf_emit(%struct.nouveau_grctx* %280, i32 931, i32 0)
  br label %282

282:                                              ; preds = %279, %276
  br label %283

283:                                              ; preds = %282, %263
  br label %284

284:                                              ; preds = %283, %255
  %285 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %286 = call i32 @xf_emit(%struct.nouveau_grctx* %285, i32 1, i32 17)
  %287 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %288 = call i32 @xf_emit(%struct.nouveau_grctx* %287, i32 1, i32 0)
  %289 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %290 = call i32 @xf_emit(%struct.nouveau_grctx* %289, i32 1, i32 1)
  %291 = load %struct.nouveau_grctx*, %struct.nouveau_grctx** %2, align 8
  %292 = call i32 @xf_emit(%struct.nouveau_grctx* %291, i32 45, i32 0)
  ret void
}

declare dso_local i32 @xf_emit(%struct.nouveau_grctx*, i32, i32) #1

declare dso_local i64 @IS_NVAAF(i32) #1

declare dso_local i64 @IS_NVA3F(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
