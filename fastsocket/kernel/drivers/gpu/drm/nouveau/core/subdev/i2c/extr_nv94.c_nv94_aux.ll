; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/subdev/i2c/extr_nv94.c_nv94_aux.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/subdev/i2c/extr_nv94.c_nv94_aux.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nouveau_i2c_port = type { i32 }
%struct.nouveau_i2c = type { i32 }
%struct.nv50_i2c_port = type { i32 }

@.str = private unnamed_addr constant [15 x i8] c"%d: 0x%08x %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"sink not detected\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [11 x i8] c"wr 0x%08x\0A\00", align 1
@EREMOTEIO = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [23 x i8] c"tx req timeout 0x%08x\0A\00", align 1
@.str.4 = private unnamed_addr constant [20 x i8] c"%02d 0x%08x 0x%08x\0A\00", align 1
@.str.5 = private unnamed_addr constant [11 x i8] c"rd 0x%08x\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nv94_aux(%struct.nouveau_i2c_port* %0, i32 %1, i32 %2, i32* %3, i32 %4) #0 {
  %6 = alloca %struct.nouveau_i2c_port*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.nouveau_i2c*, align 8
  %12 = alloca %struct.nv50_i2c_port*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca [4 x i32], align 16
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store %struct.nouveau_i2c_port* %0, %struct.nouveau_i2c_port** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  store i32 %4, i32* %10, align 4
  %21 = load %struct.nouveau_i2c_port*, %struct.nouveau_i2c_port** %6, align 8
  %22 = call %struct.nouveau_i2c* @nouveau_i2c(%struct.nouveau_i2c_port* %21)
  store %struct.nouveau_i2c* %22, %struct.nouveau_i2c** %11, align 8
  %23 = load %struct.nouveau_i2c_port*, %struct.nouveau_i2c_port** %6, align 8
  %24 = bitcast %struct.nouveau_i2c_port* %23 to i8*
  %25 = bitcast i8* %24 to %struct.nv50_i2c_port*
  store %struct.nv50_i2c_port* %25, %struct.nv50_i2c_port** %12, align 8
  %26 = bitcast [4 x i32]* %17 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %26, i8 0, i64 16, i1 false)
  %27 = load %struct.nv50_i2c_port*, %struct.nv50_i2c_port** %12, align 8
  %28 = getelementptr inbounds %struct.nv50_i2c_port, %struct.nv50_i2c_port* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  store i32 %29, i32* %18, align 4
  %30 = load i32, i32* %7, align 4
  %31 = load i32, i32* %8, align 4
  %32 = load i32, i32* %10, align 4
  %33 = call i32 (i8*, ...) @AUX_DBG(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 %30, i32 %31, i32 %32)
  %34 = load %struct.nouveau_i2c*, %struct.nouveau_i2c** %11, align 8
  %35 = load i32, i32* %18, align 4
  %36 = call i32 @auxch_init(%struct.nouveau_i2c* %34, i32 %35)
  store i32 %36, i32* %19, align 4
  %37 = load i32, i32* %19, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %5
  br label %213

40:                                               ; preds = %5
  %41 = load %struct.nouveau_i2c*, %struct.nouveau_i2c** %11, align 8
  %42 = load i32, i32* %18, align 4
  %43 = mul nsw i32 %42, 80
  %44 = add nsw i32 58600, %43
  %45 = call i32 @nv_rd32(%struct.nouveau_i2c* %41, i32 %44)
  store i32 %45, i32* %14, align 4
  %46 = load i32, i32* %14, align 4
  %47 = and i32 %46, 268435456
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %53, label %49

49:                                               ; preds = %40
  %50 = call i32 (i8*, ...) @AUX_DBG(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  %51 = load i32, i32* @ENXIO, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %19, align 4
  br label %213

53:                                               ; preds = %40
  %54 = load i32, i32* %7, align 4
  %55 = and i32 %54, 1
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %88, label %57

57:                                               ; preds = %53
  %58 = getelementptr inbounds [4 x i32], [4 x i32]* %17, i64 0, i64 0
  %59 = load i32*, i32** %9, align 8
  %60 = load i32, i32* %10, align 4
  %61 = call i32 @memcpy(i32* %58, i32* %59, i32 %60)
  store i32 0, i32* %20, align 4
  br label %62

62:                                               ; preds = %84, %57
  %63 = load i32, i32* %20, align 4
  %64 = icmp slt i32 %63, 16
  br i1 %64, label %65, label %87

65:                                               ; preds = %62
  %66 = load i32, i32* %20, align 4
  %67 = sdiv i32 %66, 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds [4 x i32], [4 x i32]* %17, i64 0, i64 %68
  %70 = load i32, i32* %69, align 4
  %71 = call i32 (i8*, ...) @AUX_DBG(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i32 %70)
  %72 = load %struct.nouveau_i2c*, %struct.nouveau_i2c** %11, align 8
  %73 = load i32, i32* %18, align 4
  %74 = mul nsw i32 %73, 80
  %75 = add nsw i32 58560, %74
  %76 = load i32, i32* %20, align 4
  %77 = add nsw i32 %75, %76
  %78 = load i32, i32* %20, align 4
  %79 = sdiv i32 %78, 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds [4 x i32], [4 x i32]* %17, i64 0, i64 %80
  %82 = load i32, i32* %81, align 4
  %83 = call i32 @nv_wr32(%struct.nouveau_i2c* %72, i32 %77, i32 %82)
  br label %84

84:                                               ; preds = %65
  %85 = load i32, i32* %20, align 4
  %86 = add nsw i32 %85, 4
  store i32 %86, i32* %20, align 4
  br label %62

87:                                               ; preds = %62
  br label %88

88:                                               ; preds = %87, %53
  %89 = load %struct.nouveau_i2c*, %struct.nouveau_i2c** %11, align 8
  %90 = load i32, i32* %18, align 4
  %91 = mul nsw i32 %90, 80
  %92 = add nsw i32 58596, %91
  %93 = call i32 @nv_rd32(%struct.nouveau_i2c* %89, i32 %92)
  store i32 %93, i32* %13, align 4
  %94 = load i32, i32* %13, align 4
  %95 = and i32 %94, -127232
  store i32 %95, i32* %13, align 4
  %96 = load i32, i32* %7, align 4
  %97 = shl i32 %96, 12
  %98 = load i32, i32* %13, align 4
  %99 = or i32 %98, %97
  store i32 %99, i32* %13, align 4
  %100 = load i32, i32* %10, align 4
  %101 = sub nsw i32 %100, 1
  %102 = load i32, i32* %13, align 4
  %103 = or i32 %102, %101
  store i32 %103, i32* %13, align 4
  %104 = load %struct.nouveau_i2c*, %struct.nouveau_i2c** %11, align 8
  %105 = load i32, i32* %18, align 4
  %106 = mul nsw i32 %105, 80
  %107 = add nsw i32 58592, %106
  %108 = load i32, i32* %8, align 4
  %109 = call i32 @nv_wr32(%struct.nouveau_i2c* %104, i32 %107, i32 %108)
  %110 = load i32, i32* @EREMOTEIO, align 4
  %111 = sub nsw i32 0, %110
  store i32 %111, i32* %19, align 4
  store i32 0, i32* %16, align 4
  br label %112

112:                                              ; preds = %175, %88
  %113 = load i32, i32* %16, align 4
  %114 = icmp slt i32 %113, 32
  br i1 %114, label %115, label %178

115:                                              ; preds = %112
  %116 = load %struct.nouveau_i2c*, %struct.nouveau_i2c** %11, align 8
  %117 = load i32, i32* %18, align 4
  %118 = mul nsw i32 %117, 80
  %119 = add nsw i32 58596, %118
  %120 = load i32, i32* %13, align 4
  %121 = or i32 -2147483648, %120
  %122 = call i32 @nv_wr32(%struct.nouveau_i2c* %116, i32 %119, i32 %121)
  %123 = load %struct.nouveau_i2c*, %struct.nouveau_i2c** %11, align 8
  %124 = load i32, i32* %18, align 4
  %125 = mul nsw i32 %124, 80
  %126 = add nsw i32 58596, %125
  %127 = load i32, i32* %13, align 4
  %128 = or i32 0, %127
  %129 = call i32 @nv_wr32(%struct.nouveau_i2c* %123, i32 %126, i32 %128)
  %130 = load i32, i32* %16, align 4
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %134

132:                                              ; preds = %115
  %133 = call i32 @udelay(i32 400)
  br label %134

134:                                              ; preds = %132, %115
  %135 = load %struct.nouveau_i2c*, %struct.nouveau_i2c** %11, align 8
  %136 = load i32, i32* %18, align 4
  %137 = mul nsw i32 %136, 80
  %138 = add nsw i32 58596, %137
  %139 = load i32, i32* %13, align 4
  %140 = or i32 65536, %139
  %141 = call i32 @nv_wr32(%struct.nouveau_i2c* %135, i32 %138, i32 %140)
  store i32 1000, i32* %15, align 4
  br label %142

142:                                              ; preds = %156, %134
  %143 = load %struct.nouveau_i2c*, %struct.nouveau_i2c** %11, align 8
  %144 = load i32, i32* %18, align 4
  %145 = mul nsw i32 %144, 80
  %146 = add nsw i32 58596, %145
  %147 = call i32 @nv_rd32(%struct.nouveau_i2c* %143, i32 %146)
  store i32 %147, i32* %13, align 4
  %148 = call i32 @udelay(i32 1)
  %149 = load i32, i32* %15, align 4
  %150 = add nsw i32 %149, -1
  store i32 %150, i32* %15, align 4
  %151 = icmp ne i32 %149, 0
  br i1 %151, label %155, label %152

152:                                              ; preds = %142
  %153 = load i32, i32* %13, align 4
  %154 = call i32 @AUX_ERR(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0), i32 %153)
  br label %213

155:                                              ; preds = %142
  br label %156

156:                                              ; preds = %155
  %157 = load i32, i32* %13, align 4
  %158 = and i32 %157, 65536
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %142, label %160

160:                                              ; preds = %156
  %161 = load %struct.nouveau_i2c*, %struct.nouveau_i2c** %11, align 8
  %162 = load i32, i32* %18, align 4
  %163 = mul nsw i32 %162, 80
  %164 = add nsw i32 58600, %163
  %165 = call i32 @nv_mask(%struct.nouveau_i2c* %161, i32 %164, i32 0, i32 0)
  store i32 %165, i32* %14, align 4
  %166 = load i32, i32* %14, align 4
  %167 = and i32 %166, 986880
  %168 = icmp ne i32 %167, 0
  br i1 %168, label %170, label %169

169:                                              ; preds = %160
  store i32 0, i32* %19, align 4
  br label %178

170:                                              ; preds = %160
  %171 = load i32, i32* %16, align 4
  %172 = load i32, i32* %13, align 4
  %173 = load i32, i32* %14, align 4
  %174 = call i32 (i8*, ...) @AUX_DBG(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0), i32 %171, i32 %172, i32 %173)
  br label %175

175:                                              ; preds = %170
  %176 = load i32, i32* %16, align 4
  %177 = add nsw i32 %176, 1
  store i32 %177, i32* %16, align 4
  br label %112

178:                                              ; preds = %169, %112
  %179 = load i32, i32* %7, align 4
  %180 = and i32 %179, 1
  %181 = icmp ne i32 %180, 0
  br i1 %181, label %182, label %212

182:                                              ; preds = %178
  store i32 0, i32* %20, align 4
  br label %183

183:                                              ; preds = %204, %182
  %184 = load i32, i32* %20, align 4
  %185 = icmp slt i32 %184, 16
  br i1 %185, label %186, label %207

186:                                              ; preds = %183
  %187 = load %struct.nouveau_i2c*, %struct.nouveau_i2c** %11, align 8
  %188 = load i32, i32* %18, align 4
  %189 = mul nsw i32 %188, 80
  %190 = add nsw i32 58576, %189
  %191 = load i32, i32* %20, align 4
  %192 = add nsw i32 %190, %191
  %193 = call i32 @nv_rd32(%struct.nouveau_i2c* %187, i32 %192)
  %194 = load i32, i32* %20, align 4
  %195 = sdiv i32 %194, 4
  %196 = sext i32 %195 to i64
  %197 = getelementptr inbounds [4 x i32], [4 x i32]* %17, i64 0, i64 %196
  store i32 %193, i32* %197, align 4
  %198 = load i32, i32* %20, align 4
  %199 = sdiv i32 %198, 4
  %200 = sext i32 %199 to i64
  %201 = getelementptr inbounds [4 x i32], [4 x i32]* %17, i64 0, i64 %200
  %202 = load i32, i32* %201, align 4
  %203 = call i32 (i8*, ...) @AUX_DBG(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0), i32 %202)
  br label %204

204:                                              ; preds = %186
  %205 = load i32, i32* %20, align 4
  %206 = add nsw i32 %205, 4
  store i32 %206, i32* %20, align 4
  br label %183

207:                                              ; preds = %183
  %208 = load i32*, i32** %9, align 8
  %209 = getelementptr inbounds [4 x i32], [4 x i32]* %17, i64 0, i64 0
  %210 = load i32, i32* %10, align 4
  %211 = call i32 @memcpy(i32* %208, i32* %209, i32 %210)
  br label %212

212:                                              ; preds = %207, %178
  br label %213

213:                                              ; preds = %212, %152, %49, %39
  %214 = load %struct.nouveau_i2c*, %struct.nouveau_i2c** %11, align 8
  %215 = load i32, i32* %18, align 4
  %216 = call i32 @auxch_fini(%struct.nouveau_i2c* %214, i32 %215)
  %217 = load i32, i32* %19, align 4
  ret i32 %217
}

declare dso_local %struct.nouveau_i2c* @nouveau_i2c(%struct.nouveau_i2c_port*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @AUX_DBG(i8*, ...) #1

declare dso_local i32 @auxch_init(%struct.nouveau_i2c*, i32) #1

declare dso_local i32 @nv_rd32(%struct.nouveau_i2c*, i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @nv_wr32(%struct.nouveau_i2c*, i32, i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @AUX_ERR(i8*, i32) #1

declare dso_local i32 @nv_mask(%struct.nouveau_i2c*, i32, i32, i32) #1

declare dso_local i32 @auxch_fini(%struct.nouveau_i2c*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
