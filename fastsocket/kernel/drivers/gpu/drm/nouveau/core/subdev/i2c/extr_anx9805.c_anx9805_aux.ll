; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/subdev/i2c/extr_anx9805.c_anx9805_aux.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/subdev/i2c/extr_anx9805.c_anx9805_aux.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nouveau_i2c_port = type { i32 }
%struct.anx9805_i2c_port = type { i32, i32 }
%struct.TYPE_2__ = type { i64 }

@ETIMEDOUT = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nouveau_i2c_port*, i32, i32, i32*, i32)* @anx9805_aux to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @anx9805_aux(%struct.nouveau_i2c_port* %0, i32 %1, i32 %2, i32* %3, i32 %4) #0 {
  %6 = alloca %struct.nouveau_i2c_port*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.anx9805_i2c_port*, align 8
  %12 = alloca %struct.nouveau_i2c_port*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.nouveau_i2c_port* %0, %struct.nouveau_i2c_port** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  store i32 %4, i32* %10, align 4
  %16 = load %struct.nouveau_i2c_port*, %struct.nouveau_i2c_port** %6, align 8
  %17 = bitcast %struct.nouveau_i2c_port* %16 to i8*
  %18 = bitcast i8* %17 to %struct.anx9805_i2c_port*
  store %struct.anx9805_i2c_port* %18, %struct.anx9805_i2c_port** %11, align 8
  %19 = load %struct.anx9805_i2c_port*, %struct.anx9805_i2c_port** %11, align 8
  %20 = call %struct.TYPE_2__* @nv_object(%struct.anx9805_i2c_port* %19)
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = inttoptr i64 %22 to i8*
  %24 = bitcast i8* %23 to %struct.nouveau_i2c_port*
  store %struct.nouveau_i2c_port* %24, %struct.nouveau_i2c_port** %12, align 8
  %25 = load i32, i32* @ETIMEDOUT, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %14, align 4
  %27 = load %struct.nouveau_i2c_port*, %struct.nouveau_i2c_port** %12, align 8
  %28 = load %struct.anx9805_i2c_port*, %struct.anx9805_i2c_port** %11, align 8
  %29 = getelementptr inbounds %struct.anx9805_i2c_port, %struct.anx9805_i2c_port* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @nv_rdi2cr(%struct.nouveau_i2c_port* %27, i32 %30, i32 7)
  %32 = and i32 %31, -5
  store i32 %32, i32* %15, align 4
  %33 = load %struct.nouveau_i2c_port*, %struct.nouveau_i2c_port** %12, align 8
  %34 = load %struct.anx9805_i2c_port*, %struct.anx9805_i2c_port** %11, align 8
  %35 = getelementptr inbounds %struct.anx9805_i2c_port, %struct.anx9805_i2c_port* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* %15, align 4
  %38 = or i32 %37, 4
  %39 = call i32 @nv_wri2cr(%struct.nouveau_i2c_port* %33, i32 %36, i32 7, i32 %38)
  %40 = load %struct.nouveau_i2c_port*, %struct.nouveau_i2c_port** %12, align 8
  %41 = load %struct.anx9805_i2c_port*, %struct.anx9805_i2c_port** %11, align 8
  %42 = getelementptr inbounds %struct.anx9805_i2c_port, %struct.anx9805_i2c_port* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* %15, align 4
  %45 = call i32 @nv_wri2cr(%struct.nouveau_i2c_port* %40, i32 %43, i32 7, i32 %44)
  %46 = load %struct.nouveau_i2c_port*, %struct.nouveau_i2c_port** %12, align 8
  %47 = load %struct.anx9805_i2c_port*, %struct.anx9805_i2c_port** %11, align 8
  %48 = getelementptr inbounds %struct.anx9805_i2c_port, %struct.anx9805_i2c_port* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @nv_wri2cr(%struct.nouveau_i2c_port* %46, i32 %49, i32 247, i32 1)
  %51 = load %struct.nouveau_i2c_port*, %struct.nouveau_i2c_port** %12, align 8
  %52 = load %struct.anx9805_i2c_port*, %struct.anx9805_i2c_port** %11, align 8
  %53 = getelementptr inbounds %struct.anx9805_i2c_port, %struct.anx9805_i2c_port* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @nv_wri2cr(%struct.nouveau_i2c_port* %51, i32 %54, i32 228, i32 128)
  store i32 0, i32* %13, align 4
  br label %56

56:                                               ; preds = %79, %5
  %57 = load i32, i32* %7, align 4
  %58 = and i32 %57, 1
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %64, label %60

60:                                               ; preds = %56
  %61 = load i32, i32* %13, align 4
  %62 = load i32, i32* %10, align 4
  %63 = icmp slt i32 %61, %62
  br label %64

64:                                               ; preds = %60, %56
  %65 = phi i1 [ false, %56 ], [ %63, %60 ]
  br i1 %65, label %66, label %82

66:                                               ; preds = %64
  %67 = load %struct.nouveau_i2c_port*, %struct.nouveau_i2c_port** %12, align 8
  %68 = load %struct.anx9805_i2c_port*, %struct.anx9805_i2c_port** %11, align 8
  %69 = getelementptr inbounds %struct.anx9805_i2c_port, %struct.anx9805_i2c_port* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* %13, align 4
  %72 = add nsw i32 240, %71
  %73 = load i32*, i32** %9, align 8
  %74 = load i32, i32* %13, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i32, i32* %73, i64 %75
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @nv_wri2cr(%struct.nouveau_i2c_port* %67, i32 %70, i32 %72, i32 %77)
  br label %79

79:                                               ; preds = %66
  %80 = load i32, i32* %13, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %13, align 4
  br label %56

82:                                               ; preds = %64
  %83 = load %struct.nouveau_i2c_port*, %struct.nouveau_i2c_port** %12, align 8
  %84 = load %struct.anx9805_i2c_port*, %struct.anx9805_i2c_port** %11, align 8
  %85 = getelementptr inbounds %struct.anx9805_i2c_port, %struct.anx9805_i2c_port* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = load i32, i32* %10, align 4
  %88 = sub nsw i32 %87, 1
  %89 = shl i32 %88, 4
  %90 = load i32, i32* %7, align 4
  %91 = or i32 %89, %90
  %92 = call i32 @nv_wri2cr(%struct.nouveau_i2c_port* %83, i32 %86, i32 229, i32 %91)
  %93 = load %struct.nouveau_i2c_port*, %struct.nouveau_i2c_port** %12, align 8
  %94 = load %struct.anx9805_i2c_port*, %struct.anx9805_i2c_port** %11, align 8
  %95 = getelementptr inbounds %struct.anx9805_i2c_port, %struct.anx9805_i2c_port* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  %97 = load i32, i32* %8, align 4
  %98 = and i32 %97, 255
  %99 = ashr i32 %98, 0
  %100 = call i32 @nv_wri2cr(%struct.nouveau_i2c_port* %93, i32 %96, i32 230, i32 %99)
  %101 = load %struct.nouveau_i2c_port*, %struct.nouveau_i2c_port** %12, align 8
  %102 = load %struct.anx9805_i2c_port*, %struct.anx9805_i2c_port** %11, align 8
  %103 = getelementptr inbounds %struct.anx9805_i2c_port, %struct.anx9805_i2c_port* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 4
  %105 = load i32, i32* %8, align 4
  %106 = and i32 %105, 65280
  %107 = ashr i32 %106, 8
  %108 = call i32 @nv_wri2cr(%struct.nouveau_i2c_port* %101, i32 %104, i32 231, i32 %107)
  %109 = load %struct.nouveau_i2c_port*, %struct.nouveau_i2c_port** %12, align 8
  %110 = load %struct.anx9805_i2c_port*, %struct.anx9805_i2c_port** %11, align 8
  %111 = getelementptr inbounds %struct.anx9805_i2c_port, %struct.anx9805_i2c_port* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 4
  %113 = load i32, i32* %8, align 4
  %114 = and i32 %113, 983040
  %115 = ashr i32 %114, 16
  %116 = call i32 @nv_wri2cr(%struct.nouveau_i2c_port* %109, i32 %112, i32 232, i32 %115)
  %117 = load %struct.nouveau_i2c_port*, %struct.nouveau_i2c_port** %12, align 8
  %118 = load %struct.anx9805_i2c_port*, %struct.anx9805_i2c_port** %11, align 8
  %119 = getelementptr inbounds %struct.anx9805_i2c_port, %struct.anx9805_i2c_port* %118, i32 0, i32 1
  %120 = load i32, i32* %119, align 4
  %121 = call i32 @nv_wri2cr(%struct.nouveau_i2c_port* %117, i32 %120, i32 233, i32 1)
  store i32 0, i32* %13, align 4
  br label %122

122:                                              ; preds = %136, %82
  %123 = load %struct.nouveau_i2c_port*, %struct.nouveau_i2c_port** %12, align 8
  %124 = load %struct.anx9805_i2c_port*, %struct.anx9805_i2c_port** %11, align 8
  %125 = getelementptr inbounds %struct.anx9805_i2c_port, %struct.anx9805_i2c_port* %124, i32 0, i32 1
  %126 = load i32, i32* %125, align 4
  %127 = call i32 @nv_rdi2cr(%struct.nouveau_i2c_port* %123, i32 %126, i32 233)
  store i32 %127, i32* %15, align 4
  %128 = and i32 %127, 1
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %137

130:                                              ; preds = %122
  %131 = call i32 @mdelay(i32 5)
  %132 = load i32, i32* %13, align 4
  %133 = add nsw i32 %132, 1
  store i32 %133, i32* %13, align 4
  %134 = icmp eq i32 %132, 32
  br i1 %134, label %135, label %136

135:                                              ; preds = %130
  br label %175

136:                                              ; preds = %130
  br label %122

137:                                              ; preds = %122
  %138 = load %struct.nouveau_i2c_port*, %struct.nouveau_i2c_port** %12, align 8
  %139 = load %struct.anx9805_i2c_port*, %struct.anx9805_i2c_port** %11, align 8
  %140 = getelementptr inbounds %struct.anx9805_i2c_port, %struct.anx9805_i2c_port* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 4
  %142 = call i32 @nv_rdi2cr(%struct.nouveau_i2c_port* %138, i32 %141, i32 247)
  store i32 %142, i32* %15, align 4
  %143 = and i32 %142, 1
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %145, label %148

145:                                              ; preds = %137
  %146 = load i32, i32* @EIO, align 4
  %147 = sub nsw i32 0, %146
  store i32 %147, i32* %14, align 4
  br label %175

148:                                              ; preds = %137
  store i32 0, i32* %13, align 4
  br label %149

149:                                              ; preds = %171, %148
  %150 = load i32, i32* %7, align 4
  %151 = and i32 %150, 1
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %153, label %157

153:                                              ; preds = %149
  %154 = load i32, i32* %13, align 4
  %155 = load i32, i32* %10, align 4
  %156 = icmp slt i32 %154, %155
  br label %157

157:                                              ; preds = %153, %149
  %158 = phi i1 [ false, %149 ], [ %156, %153 ]
  br i1 %158, label %159, label %174

159:                                              ; preds = %157
  %160 = load %struct.nouveau_i2c_port*, %struct.nouveau_i2c_port** %12, align 8
  %161 = load %struct.anx9805_i2c_port*, %struct.anx9805_i2c_port** %11, align 8
  %162 = getelementptr inbounds %struct.anx9805_i2c_port, %struct.anx9805_i2c_port* %161, i32 0, i32 1
  %163 = load i32, i32* %162, align 4
  %164 = load i32, i32* %13, align 4
  %165 = add nsw i32 240, %164
  %166 = call i32 @nv_rdi2cr(%struct.nouveau_i2c_port* %160, i32 %163, i32 %165)
  %167 = load i32*, i32** %9, align 8
  %168 = load i32, i32* %13, align 4
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds i32, i32* %167, i64 %169
  store i32 %166, i32* %170, align 4
  br label %171

171:                                              ; preds = %159
  %172 = load i32, i32* %13, align 4
  %173 = add nsw i32 %172, 1
  store i32 %173, i32* %13, align 4
  br label %149

174:                                              ; preds = %157
  store i32 0, i32* %14, align 4
  br label %175

175:                                              ; preds = %174, %145, %135
  %176 = load %struct.nouveau_i2c_port*, %struct.nouveau_i2c_port** %12, align 8
  %177 = load %struct.anx9805_i2c_port*, %struct.anx9805_i2c_port** %11, align 8
  %178 = getelementptr inbounds %struct.anx9805_i2c_port, %struct.anx9805_i2c_port* %177, i32 0, i32 0
  %179 = load i32, i32* %178, align 4
  %180 = call i32 @nv_wri2cr(%struct.nouveau_i2c_port* %176, i32 %179, i32 247, i32 1)
  %181 = load i32, i32* %14, align 4
  ret i32 %181
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
