; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/subdev/i2c/extr_anx9805.c_anx9805_xfer.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/subdev/i2c/extr_anx9805.c_anx9805_xfer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_adapter = type { %struct.anx9805_i2c_port* }
%struct.anx9805_i2c_port = type { i32, i32 }
%struct.i2c_msg = type { i32, i32, i32, i32* }
%struct.nouveau_i2c_port = type { i32 }
%struct.TYPE_2__ = type { i64 }

@ETIMEDOUT = common dso_local global i32 0, align 4
@I2C_M_RD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_adapter*, %struct.i2c_msg*, i32)* @anx9805_xfer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @anx9805_xfer(%struct.i2c_adapter* %0, %struct.i2c_msg* %1, i32 %2) #0 {
  %4 = alloca %struct.i2c_adapter*, align 8
  %5 = alloca %struct.i2c_msg*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.anx9805_i2c_port*, align 8
  %8 = alloca %struct.nouveau_i2c_port*, align 8
  %9 = alloca %struct.i2c_msg*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.i2c_adapter* %0, %struct.i2c_adapter** %4, align 8
  store %struct.i2c_msg* %1, %struct.i2c_msg** %5, align 8
  store i32 %2, i32* %6, align 4
  %17 = load %struct.i2c_adapter*, %struct.i2c_adapter** %4, align 8
  %18 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %17, i32 0, i32 0
  %19 = load %struct.anx9805_i2c_port*, %struct.anx9805_i2c_port** %18, align 8
  store %struct.anx9805_i2c_port* %19, %struct.anx9805_i2c_port** %7, align 8
  %20 = load %struct.anx9805_i2c_port*, %struct.anx9805_i2c_port** %7, align 8
  %21 = call %struct.TYPE_2__* @nv_object(%struct.anx9805_i2c_port* %20)
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = inttoptr i64 %23 to i8*
  %25 = bitcast i8* %24 to %struct.nouveau_i2c_port*
  store %struct.nouveau_i2c_port* %25, %struct.nouveau_i2c_port** %8, align 8
  %26 = load %struct.i2c_msg*, %struct.i2c_msg** %5, align 8
  store %struct.i2c_msg* %26, %struct.i2c_msg** %9, align 8
  %27 = load i32, i32* @ETIMEDOUT, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %10, align 4
  %29 = load i32, i32* %6, align 4
  store i32 %29, i32* %13, align 4
  store i32 0, i32* %14, align 4
  store i32 0, i32* %15, align 4
  %30 = load %struct.nouveau_i2c_port*, %struct.nouveau_i2c_port** %8, align 8
  %31 = load %struct.anx9805_i2c_port*, %struct.anx9805_i2c_port** %7, align 8
  %32 = getelementptr inbounds %struct.anx9805_i2c_port, %struct.anx9805_i2c_port* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @nv_rdi2cr(%struct.nouveau_i2c_port* %30, i32 %33, i32 7)
  %35 = and i32 %34, -17
  store i32 %35, i32* %16, align 4
  %36 = load %struct.nouveau_i2c_port*, %struct.nouveau_i2c_port** %8, align 8
  %37 = load %struct.anx9805_i2c_port*, %struct.anx9805_i2c_port** %7, align 8
  %38 = getelementptr inbounds %struct.anx9805_i2c_port, %struct.anx9805_i2c_port* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* %16, align 4
  %41 = or i32 %40, 16
  %42 = call i32 @nv_wri2cr(%struct.nouveau_i2c_port* %36, i32 %39, i32 7, i32 %41)
  %43 = load %struct.nouveau_i2c_port*, %struct.nouveau_i2c_port** %8, align 8
  %44 = load %struct.anx9805_i2c_port*, %struct.anx9805_i2c_port** %7, align 8
  %45 = getelementptr inbounds %struct.anx9805_i2c_port, %struct.anx9805_i2c_port* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* %16, align 4
  %48 = call i32 @nv_wri2cr(%struct.nouveau_i2c_port* %43, i32 %46, i32 7, i32 %47)
  %49 = load %struct.nouveau_i2c_port*, %struct.nouveau_i2c_port** %8, align 8
  %50 = load %struct.anx9805_i2c_port*, %struct.anx9805_i2c_port** %7, align 8
  %51 = getelementptr inbounds %struct.anx9805_i2c_port, %struct.anx9805_i2c_port* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @nv_wri2cr(%struct.nouveau_i2c_port* %49, i32 %52, i32 67, i32 5)
  %54 = call i32 @mdelay(i32 5)
  br label %55

55:                                               ; preds = %193, %3
  %56 = load i32, i32* %13, align 4
  %57 = add nsw i32 %56, -1
  store i32 %57, i32* %13, align 4
  %58 = icmp ne i32 %56, 0
  br i1 %58, label %59, label %196

59:                                               ; preds = %55
  %60 = load %struct.i2c_msg*, %struct.i2c_msg** %9, align 8
  %61 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = load i32, i32* @I2C_M_RD, align 4
  %64 = and i32 %62, %63
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %149

66:                                               ; preds = %59
  %67 = load %struct.i2c_msg*, %struct.i2c_msg** %9, align 8
  %68 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = icmp eq i32 %69, 80
  br i1 %70, label %71, label %149

71:                                               ; preds = %66
  %72 = load %struct.nouveau_i2c_port*, %struct.nouveau_i2c_port** %8, align 8
  %73 = load %struct.anx9805_i2c_port*, %struct.anx9805_i2c_port** %7, align 8
  %74 = getelementptr inbounds %struct.anx9805_i2c_port, %struct.anx9805_i2c_port* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.i2c_msg*, %struct.i2c_msg** %9, align 8
  %77 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = shl i32 %78, 1
  %80 = call i32 @nv_wri2cr(%struct.nouveau_i2c_port* %72, i32 %75, i32 64, i32 %79)
  %81 = load %struct.nouveau_i2c_port*, %struct.nouveau_i2c_port** %8, align 8
  %82 = load %struct.anx9805_i2c_port*, %struct.anx9805_i2c_port** %7, align 8
  %83 = getelementptr inbounds %struct.anx9805_i2c_port, %struct.anx9805_i2c_port* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = load i32, i32* %14, align 4
  %86 = call i32 @nv_wri2cr(%struct.nouveau_i2c_port* %81, i32 %84, i32 65, i32 %85)
  %87 = load %struct.nouveau_i2c_port*, %struct.nouveau_i2c_port** %8, align 8
  %88 = load %struct.anx9805_i2c_port*, %struct.anx9805_i2c_port** %7, align 8
  %89 = getelementptr inbounds %struct.anx9805_i2c_port, %struct.anx9805_i2c_port* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = load i32, i32* %15, align 4
  %92 = call i32 @nv_wri2cr(%struct.nouveau_i2c_port* %87, i32 %90, i32 66, i32 %91)
  %93 = load %struct.nouveau_i2c_port*, %struct.nouveau_i2c_port** %8, align 8
  %94 = load %struct.anx9805_i2c_port*, %struct.anx9805_i2c_port** %7, align 8
  %95 = getelementptr inbounds %struct.anx9805_i2c_port, %struct.anx9805_i2c_port* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = load %struct.i2c_msg*, %struct.i2c_msg** %9, align 8
  %98 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %97, i32 0, i32 2
  %99 = load i32, i32* %98, align 8
  %100 = call i32 @nv_wri2cr(%struct.nouveau_i2c_port* %93, i32 %96, i32 68, i32 %99)
  %101 = load %struct.nouveau_i2c_port*, %struct.nouveau_i2c_port** %8, align 8
  %102 = load %struct.anx9805_i2c_port*, %struct.anx9805_i2c_port** %7, align 8
  %103 = getelementptr inbounds %struct.anx9805_i2c_port, %struct.anx9805_i2c_port* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = call i32 @nv_wri2cr(%struct.nouveau_i2c_port* %101, i32 %104, i32 69, i32 0)
  %106 = load %struct.nouveau_i2c_port*, %struct.nouveau_i2c_port** %8, align 8
  %107 = load %struct.anx9805_i2c_port*, %struct.anx9805_i2c_port** %7, align 8
  %108 = getelementptr inbounds %struct.anx9805_i2c_port, %struct.anx9805_i2c_port* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  %110 = call i32 @nv_wri2cr(%struct.nouveau_i2c_port* %106, i32 %109, i32 67, i32 1)
  store i32 0, i32* %11, align 4
  br label %111

111:                                              ; preds = %145, %71
  %112 = load i32, i32* %11, align 4
  %113 = load %struct.i2c_msg*, %struct.i2c_msg** %9, align 8
  %114 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %113, i32 0, i32 2
  %115 = load i32, i32* %114, align 8
  %116 = icmp slt i32 %112, %115
  br i1 %116, label %117, label %148

117:                                              ; preds = %111
  store i32 0, i32* %12, align 4
  br label %118

118:                                              ; preds = %132, %117
  %119 = load %struct.nouveau_i2c_port*, %struct.nouveau_i2c_port** %8, align 8
  %120 = load %struct.anx9805_i2c_port*, %struct.anx9805_i2c_port** %7, align 8
  %121 = getelementptr inbounds %struct.anx9805_i2c_port, %struct.anx9805_i2c_port* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 4
  %123 = call i32 @nv_rdi2cr(%struct.nouveau_i2c_port* %119, i32 %122, i32 70)
  %124 = and i32 %123, 16
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %133

126:                                              ; preds = %118
  %127 = call i32 @mdelay(i32 5)
  %128 = load i32, i32* %12, align 4
  %129 = add nsw i32 %128, 1
  store i32 %129, i32* %12, align 4
  %130 = icmp eq i32 %128, 32
  br i1 %130, label %131, label %132

131:                                              ; preds = %126
  br label %198

132:                                              ; preds = %126
  br label %118

133:                                              ; preds = %118
  %134 = load %struct.nouveau_i2c_port*, %struct.nouveau_i2c_port** %8, align 8
  %135 = load %struct.anx9805_i2c_port*, %struct.anx9805_i2c_port** %7, align 8
  %136 = getelementptr inbounds %struct.anx9805_i2c_port, %struct.anx9805_i2c_port* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 4
  %138 = call i32 @nv_rdi2cr(%struct.nouveau_i2c_port* %134, i32 %137, i32 71)
  %139 = load %struct.i2c_msg*, %struct.i2c_msg** %9, align 8
  %140 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %139, i32 0, i32 3
  %141 = load i32*, i32** %140, align 8
  %142 = load i32, i32* %11, align 4
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds i32, i32* %141, i64 %143
  store i32 %138, i32* %144, align 4
  br label %145

145:                                              ; preds = %133
  %146 = load i32, i32* %11, align 4
  %147 = add nsw i32 %146, 1
  store i32 %147, i32* %11, align 4
  br label %111

148:                                              ; preds = %111
  br label %193

149:                                              ; preds = %66, %59
  %150 = load %struct.i2c_msg*, %struct.i2c_msg** %9, align 8
  %151 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 8
  %153 = load i32, i32* @I2C_M_RD, align 4
  %154 = and i32 %152, %153
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %191, label %156

156:                                              ; preds = %149
  %157 = load %struct.i2c_msg*, %struct.i2c_msg** %9, align 8
  %158 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %157, i32 0, i32 1
  %159 = load i32, i32* %158, align 4
  %160 = icmp eq i32 %159, 80
  br i1 %160, label %161, label %172

161:                                              ; preds = %156
  %162 = load %struct.i2c_msg*, %struct.i2c_msg** %9, align 8
  %163 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %162, i32 0, i32 2
  %164 = load i32, i32* %163, align 8
  %165 = icmp eq i32 %164, 1
  br i1 %165, label %166, label %172

166:                                              ; preds = %161
  %167 = load %struct.i2c_msg*, %struct.i2c_msg** %9, align 8
  %168 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %167, i32 0, i32 3
  %169 = load i32*, i32** %168, align 8
  %170 = getelementptr inbounds i32, i32* %169, i64 0
  %171 = load i32, i32* %170, align 4
  store i32 %171, i32* %15, align 4
  br label %190

172:                                              ; preds = %161, %156
  %173 = load %struct.i2c_msg*, %struct.i2c_msg** %9, align 8
  %174 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %173, i32 0, i32 1
  %175 = load i32, i32* %174, align 4
  %176 = icmp eq i32 %175, 48
  br i1 %176, label %177, label %188

177:                                              ; preds = %172
  %178 = load %struct.i2c_msg*, %struct.i2c_msg** %9, align 8
  %179 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %178, i32 0, i32 2
  %180 = load i32, i32* %179, align 8
  %181 = icmp eq i32 %180, 1
  br i1 %181, label %182, label %188

182:                                              ; preds = %177
  %183 = load %struct.i2c_msg*, %struct.i2c_msg** %9, align 8
  %184 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %183, i32 0, i32 3
  %185 = load i32*, i32** %184, align 8
  %186 = getelementptr inbounds i32, i32* %185, i64 0
  %187 = load i32, i32* %186, align 4
  store i32 %187, i32* %14, align 4
  br label %189

188:                                              ; preds = %177, %172
  br label %198

189:                                              ; preds = %182
  br label %190

190:                                              ; preds = %189, %166
  br label %192

191:                                              ; preds = %149
  br label %198

192:                                              ; preds = %190
  br label %193

193:                                              ; preds = %192, %148
  %194 = load %struct.i2c_msg*, %struct.i2c_msg** %9, align 8
  %195 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %194, i32 1
  store %struct.i2c_msg* %195, %struct.i2c_msg** %9, align 8
  br label %55

196:                                              ; preds = %55
  %197 = load i32, i32* %6, align 4
  store i32 %197, i32* %10, align 4
  br label %198

198:                                              ; preds = %196, %191, %188, %131
  %199 = load %struct.nouveau_i2c_port*, %struct.nouveau_i2c_port** %8, align 8
  %200 = load %struct.anx9805_i2c_port*, %struct.anx9805_i2c_port** %7, align 8
  %201 = getelementptr inbounds %struct.anx9805_i2c_port, %struct.anx9805_i2c_port* %200, i32 0, i32 0
  %202 = load i32, i32* %201, align 4
  %203 = call i32 @nv_wri2cr(%struct.nouveau_i2c_port* %199, i32 %202, i32 67, i32 0)
  %204 = load i32, i32* %10, align 4
  ret i32 %204
}

declare dso_local %struct.TYPE_2__* @nv_object(%struct.anx9805_i2c_port*) #1

declare dso_local i32 @nv_rdi2cr(%struct.nouveau_i2c_port*, i32, i32) #1

declare dso_local i32 @nv_wri2cr(%struct.nouveau_i2c_port*, i32, i32, i32) #1

declare dso_local i32 @mdelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
