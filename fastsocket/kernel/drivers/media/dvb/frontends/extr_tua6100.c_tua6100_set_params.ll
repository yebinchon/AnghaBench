; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/frontends/extr_tua6100.c_tua6100_set_params.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/frontends/extr_tua6100.c_tua6100_set_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.TYPE_2__, %struct.tua6100_priv* }
%struct.TYPE_2__ = type { i32 (%struct.dvb_frontend.0*, i32)* }
%struct.dvb_frontend.0 = type opaque
%struct.tua6100_priv = type { i32, i32, i32 }
%struct.dvb_frontend_parameters = type { i32 }
%struct.i2c_msg = type { i32*, i32, i32, i32 }

@__const.tua6100_set_params.reg1 = private unnamed_addr constant [4 x i32] [i32 1, i32 0, i32 0, i32 0], align 16
@__const.tua6100_set_params.reg2 = private unnamed_addr constant [3 x i32] [i32 2, i32 0, i32 0], align 4
@EIO = common dso_local global i32 0, align 4
@_P = common dso_local global i32 0, align 4
@_R = common dso_local global i32 0, align 4
@_ri = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_frontend*, %struct.dvb_frontend_parameters*)* @tua6100_set_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tua6100_set_params(%struct.dvb_frontend* %0, %struct.dvb_frontend_parameters* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dvb_frontend*, align 8
  %5 = alloca %struct.dvb_frontend_parameters*, align 8
  %6 = alloca %struct.tua6100_priv*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca [2 x i32], align 4
  %10 = alloca [4 x i32], align 16
  %11 = alloca [3 x i32], align 4
  %12 = alloca %struct.i2c_msg, align 8
  %13 = alloca %struct.i2c_msg, align 8
  %14 = alloca %struct.i2c_msg, align 8
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %4, align 8
  store %struct.dvb_frontend_parameters* %1, %struct.dvb_frontend_parameters** %5, align 8
  %15 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %16 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %15, i32 0, i32 1
  %17 = load %struct.tua6100_priv*, %struct.tua6100_priv** %16, align 8
  store %struct.tua6100_priv* %17, %struct.tua6100_priv** %6, align 8
  %18 = bitcast [2 x i32]* %9 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %18, i8 0, i64 8, i1 false)
  %19 = bitcast [4 x i32]* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %19, i8* align 16 bitcast ([4 x i32]* @__const.tua6100_set_params.reg1 to i8*), i64 16, i1 false)
  %20 = bitcast [3 x i32]* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %20, i8* align 4 bitcast ([3 x i32]* @__const.tua6100_set_params.reg2 to i8*), i64 12, i1 false)
  %21 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %12, i32 0, i32 0
  %22 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 0
  store i32* %22, i32** %21, align 8
  %23 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %12, i32 0, i32 1
  store i32 2, i32* %23, align 8
  %24 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %12, i32 0, i32 2
  store i32 0, i32* %24, align 4
  %25 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %12, i32 0, i32 3
  %26 = load %struct.tua6100_priv*, %struct.tua6100_priv** %6, align 8
  %27 = getelementptr inbounds %struct.tua6100_priv, %struct.tua6100_priv* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 4
  store i32 %28, i32* %25, align 8
  %29 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %13, i32 0, i32 0
  %30 = getelementptr inbounds [4 x i32], [4 x i32]* %10, i64 0, i64 0
  store i32* %30, i32** %29, align 8
  %31 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %13, i32 0, i32 1
  store i32 4, i32* %31, align 8
  %32 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %13, i32 0, i32 2
  store i32 0, i32* %32, align 4
  %33 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %13, i32 0, i32 3
  %34 = load %struct.tua6100_priv*, %struct.tua6100_priv** %6, align 8
  %35 = getelementptr inbounds %struct.tua6100_priv, %struct.tua6100_priv* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 4
  store i32 %36, i32* %33, align 8
  %37 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %14, i32 0, i32 0
  %38 = getelementptr inbounds [3 x i32], [3 x i32]* %11, i64 0, i64 0
  store i32* %38, i32** %37, align 8
  %39 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %14, i32 0, i32 1
  store i32 3, i32* %39, align 8
  %40 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %14, i32 0, i32 2
  store i32 0, i32* %40, align 4
  %41 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %14, i32 0, i32 3
  %42 = load %struct.tua6100_priv*, %struct.tua6100_priv** %6, align 8
  %43 = getelementptr inbounds %struct.tua6100_priv, %struct.tua6100_priv* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 4
  store i32 %44, i32* %41, align 8
  %45 = load %struct.dvb_frontend_parameters*, %struct.dvb_frontend_parameters** %5, align 8
  %46 = getelementptr inbounds %struct.dvb_frontend_parameters, %struct.dvb_frontend_parameters* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = icmp slt i32 %47, 2000000
  br i1 %48, label %49, label %51

49:                                               ; preds = %2
  %50 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 1
  store i32 3, i32* %50, align 4
  br label %53

51:                                               ; preds = %2
  %52 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 1
  store i32 7, i32* %52, align 4
  br label %53

53:                                               ; preds = %51, %49
  %54 = load %struct.dvb_frontend_parameters*, %struct.dvb_frontend_parameters** %5, align 8
  %55 = getelementptr inbounds %struct.dvb_frontend_parameters, %struct.dvb_frontend_parameters* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = icmp slt i32 %56, 1630000
  br i1 %57, label %58, label %60

58:                                               ; preds = %53
  %59 = getelementptr inbounds [4 x i32], [4 x i32]* %10, i64 0, i64 1
  store i32 44, i32* %59, align 4
  br label %62

60:                                               ; preds = %53
  %61 = getelementptr inbounds [4 x i32], [4 x i32]* %10, i64 0, i64 1
  store i32 12, i32* %61, align 4
  br label %62

62:                                               ; preds = %60, %58
  %63 = load %struct.dvb_frontend_parameters*, %struct.dvb_frontend_parameters** %5, align 8
  %64 = getelementptr inbounds %struct.dvb_frontend_parameters, %struct.dvb_frontend_parameters* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = icmp sge i32 %65, 1525000
  br i1 %66, label %67, label %71

67:                                               ; preds = %62
  %68 = getelementptr inbounds [4 x i32], [4 x i32]* %10, i64 0, i64 1
  %69 = load i32, i32* %68, align 4
  %70 = or i32 %69, 128
  store i32 %70, i32* %68, align 4
  br label %71

71:                                               ; preds = %67, %62
  %72 = getelementptr inbounds [3 x i32], [3 x i32]* %11, i64 0, i64 1
  store i32 0, i32* %72, align 4
  %73 = getelementptr inbounds [3 x i32], [3 x i32]* %11, i64 0, i64 2
  store i32 4, i32* %73, align 4
  %74 = load %struct.dvb_frontend_parameters*, %struct.dvb_frontend_parameters** %5, align 8
  %75 = getelementptr inbounds %struct.dvb_frontend_parameters, %struct.dvb_frontend_parameters* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = icmp slt i32 %76, 1455000
  br i1 %77, label %78, label %82

78:                                               ; preds = %71
  %79 = getelementptr inbounds [3 x i32], [3 x i32]* %11, i64 0, i64 1
  %80 = load i32, i32* %79, align 4
  %81 = or i32 %80, 28
  store i32 %81, i32* %79, align 4
  br label %96

82:                                               ; preds = %71
  %83 = load %struct.dvb_frontend_parameters*, %struct.dvb_frontend_parameters** %5, align 8
  %84 = getelementptr inbounds %struct.dvb_frontend_parameters, %struct.dvb_frontend_parameters* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = icmp slt i32 %85, 1630000
  br i1 %86, label %87, label %91

87:                                               ; preds = %82
  %88 = getelementptr inbounds [3 x i32], [3 x i32]* %11, i64 0, i64 1
  %89 = load i32, i32* %88, align 4
  %90 = or i32 %89, 12
  store i32 %90, i32* %88, align 4
  br label %95

91:                                               ; preds = %82
  %92 = getelementptr inbounds [3 x i32], [3 x i32]* %11, i64 0, i64 1
  %93 = load i32, i32* %92, align 4
  %94 = or i32 %93, 28
  store i32 %94, i32* %92, align 4
  br label %95

95:                                               ; preds = %91, %87
  br label %96

96:                                               ; preds = %95, %78
  %97 = load %struct.dvb_frontend_parameters*, %struct.dvb_frontend_parameters** %5, align 8
  %98 = getelementptr inbounds %struct.dvb_frontend_parameters, %struct.dvb_frontend_parameters* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = mul nsw i32 %99, 4
  %101 = sdiv i32 %100, 4000
  store i32 %101, i32* %8, align 4
  %102 = load i32, i32* %8, align 4
  %103 = sdiv i32 %102, 32
  store i32 %103, i32* %7, align 4
  %104 = load i32, i32* %7, align 4
  %105 = ashr i32 %104, 9
  %106 = and i32 %105, 3
  %107 = getelementptr inbounds [4 x i32], [4 x i32]* %10, i64 0, i64 1
  %108 = load i32, i32* %107, align 4
  %109 = or i32 %108, %106
  store i32 %109, i32* %107, align 4
  %110 = load i32, i32* %7, align 4
  %111 = ashr i32 %110, 1
  %112 = getelementptr inbounds [4 x i32], [4 x i32]* %10, i64 0, i64 2
  store i32 %111, i32* %112, align 8
  %113 = load i32, i32* %7, align 4
  %114 = shl i32 %113, 7
  %115 = getelementptr inbounds [4 x i32], [4 x i32]* %10, i64 0, i64 3
  store i32 %114, i32* %115, align 4
  %116 = load i32, i32* %7, align 4
  %117 = mul nsw i32 %116, 32
  %118 = mul nsw i32 %117, 4000
  %119 = sdiv i32 %118, 4
  %120 = load %struct.tua6100_priv*, %struct.tua6100_priv** %6, align 8
  %121 = getelementptr inbounds %struct.tua6100_priv, %struct.tua6100_priv* %120, i32 0, i32 0
  store i32 %119, i32* %121, align 4
  %122 = load i32, i32* %8, align 4
  %123 = load i32, i32* %7, align 4
  %124 = mul nsw i32 %123, 32
  %125 = sub nsw i32 %122, %124
  %126 = and i32 %125, 127
  %127 = getelementptr inbounds [4 x i32], [4 x i32]* %10, i64 0, i64 3
  %128 = load i32, i32* %127, align 4
  %129 = or i32 %128, %126
  store i32 %129, i32* %127, align 4
  %130 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %131 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %130, i32 0, i32 0
  %132 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %131, i32 0, i32 0
  %133 = load i32 (%struct.dvb_frontend.0*, i32)*, i32 (%struct.dvb_frontend.0*, i32)** %132, align 8
  %134 = icmp ne i32 (%struct.dvb_frontend.0*, i32)* %133, null
  br i1 %134, label %135, label %143

135:                                              ; preds = %96
  %136 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %137 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %136, i32 0, i32 0
  %138 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %137, i32 0, i32 0
  %139 = load i32 (%struct.dvb_frontend.0*, i32)*, i32 (%struct.dvb_frontend.0*, i32)** %138, align 8
  %140 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %141 = bitcast %struct.dvb_frontend* %140 to %struct.dvb_frontend.0*
  %142 = call i32 %139(%struct.dvb_frontend.0* %141, i32 1)
  br label %143

143:                                              ; preds = %135, %96
  %144 = load %struct.tua6100_priv*, %struct.tua6100_priv** %6, align 8
  %145 = getelementptr inbounds %struct.tua6100_priv, %struct.tua6100_priv* %144, i32 0, i32 1
  %146 = load i32, i32* %145, align 4
  %147 = call i32 @i2c_transfer(i32 %146, %struct.i2c_msg* %12, i32 1)
  %148 = icmp ne i32 %147, 1
  br i1 %148, label %149, label %152

149:                                              ; preds = %143
  %150 = load i32, i32* @EIO, align 4
  %151 = sub nsw i32 0, %150
  store i32 %151, i32* %3, align 4
  br label %213

152:                                              ; preds = %143
  %153 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %154 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %153, i32 0, i32 0
  %155 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %154, i32 0, i32 0
  %156 = load i32 (%struct.dvb_frontend.0*, i32)*, i32 (%struct.dvb_frontend.0*, i32)** %155, align 8
  %157 = icmp ne i32 (%struct.dvb_frontend.0*, i32)* %156, null
  br i1 %157, label %158, label %166

158:                                              ; preds = %152
  %159 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %160 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %159, i32 0, i32 0
  %161 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %160, i32 0, i32 0
  %162 = load i32 (%struct.dvb_frontend.0*, i32)*, i32 (%struct.dvb_frontend.0*, i32)** %161, align 8
  %163 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %164 = bitcast %struct.dvb_frontend* %163 to %struct.dvb_frontend.0*
  %165 = call i32 %162(%struct.dvb_frontend.0* %164, i32 1)
  br label %166

166:                                              ; preds = %158, %152
  %167 = load %struct.tua6100_priv*, %struct.tua6100_priv** %6, align 8
  %168 = getelementptr inbounds %struct.tua6100_priv, %struct.tua6100_priv* %167, i32 0, i32 1
  %169 = load i32, i32* %168, align 4
  %170 = call i32 @i2c_transfer(i32 %169, %struct.i2c_msg* %14, i32 1)
  %171 = icmp ne i32 %170, 1
  br i1 %171, label %172, label %175

172:                                              ; preds = %166
  %173 = load i32, i32* @EIO, align 4
  %174 = sub nsw i32 0, %173
  store i32 %174, i32* %3, align 4
  br label %213

175:                                              ; preds = %166
  %176 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %177 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %176, i32 0, i32 0
  %178 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %177, i32 0, i32 0
  %179 = load i32 (%struct.dvb_frontend.0*, i32)*, i32 (%struct.dvb_frontend.0*, i32)** %178, align 8
  %180 = icmp ne i32 (%struct.dvb_frontend.0*, i32)* %179, null
  br i1 %180, label %181, label %189

181:                                              ; preds = %175
  %182 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %183 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %182, i32 0, i32 0
  %184 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %183, i32 0, i32 0
  %185 = load i32 (%struct.dvb_frontend.0*, i32)*, i32 (%struct.dvb_frontend.0*, i32)** %184, align 8
  %186 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %187 = bitcast %struct.dvb_frontend* %186 to %struct.dvb_frontend.0*
  %188 = call i32 %185(%struct.dvb_frontend.0* %187, i32 1)
  br label %189

189:                                              ; preds = %181, %175
  %190 = load %struct.tua6100_priv*, %struct.tua6100_priv** %6, align 8
  %191 = getelementptr inbounds %struct.tua6100_priv, %struct.tua6100_priv* %190, i32 0, i32 1
  %192 = load i32, i32* %191, align 4
  %193 = call i32 @i2c_transfer(i32 %192, %struct.i2c_msg* %13, i32 1)
  %194 = icmp ne i32 %193, 1
  br i1 %194, label %195, label %198

195:                                              ; preds = %189
  %196 = load i32, i32* @EIO, align 4
  %197 = sub nsw i32 0, %196
  store i32 %197, i32* %3, align 4
  br label %213

198:                                              ; preds = %189
  %199 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %200 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %199, i32 0, i32 0
  %201 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %200, i32 0, i32 0
  %202 = load i32 (%struct.dvb_frontend.0*, i32)*, i32 (%struct.dvb_frontend.0*, i32)** %201, align 8
  %203 = icmp ne i32 (%struct.dvb_frontend.0*, i32)* %202, null
  br i1 %203, label %204, label %212

204:                                              ; preds = %198
  %205 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %206 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %205, i32 0, i32 0
  %207 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %206, i32 0, i32 0
  %208 = load i32 (%struct.dvb_frontend.0*, i32)*, i32 (%struct.dvb_frontend.0*, i32)** %207, align 8
  %209 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %210 = bitcast %struct.dvb_frontend* %209 to %struct.dvb_frontend.0*
  %211 = call i32 %208(%struct.dvb_frontend.0* %210, i32 0)
  br label %212

212:                                              ; preds = %204, %198
  store i32 0, i32* %3, align 4
  br label %213

213:                                              ; preds = %212, %195, %172, %149
  %214 = load i32, i32* %3, align 4
  ret i32 %214
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @i2c_transfer(i32, %struct.i2c_msg*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
