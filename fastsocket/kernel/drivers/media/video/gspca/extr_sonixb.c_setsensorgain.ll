; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/gspca/extr_sonixb.c_setsensorgain.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/gspca/extr_sonixb.c_setsensorgain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.gspca_dev = type { i32 }
%struct.sd = type { i8, i32 }

@__const.setsensorgain.i2c = private unnamed_addr constant [8 x i32] [i32 192, i32 17, i32 49, i32 0, i32 0, i32 0, i32 0, i32 23], align 16
@__const.setsensorgain.i2c.1 = private unnamed_addr constant [8 x i32] [i32 48, i32 17, i32 2, i32 32, i32 112, i32 0, i32 0, i32 16], align 16
@__const.setsensorgain.i2c.2 = private unnamed_addr constant [8 x i32] [i32 176, i32 97, i32 2, i32 0, i32 16, i32 0, i32 0, i32 23], align 16
@__const.setsensorgain.i2c.3 = private unnamed_addr constant [8 x i32] [i32 160, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 16], align 16
@sensor_data = common dso_local global %struct.TYPE_2__* null, align 8
@__const.setsensorgain.i2cpgain = private unnamed_addr constant [8 x i32] [i32 160, i32 64, i32 16, i32 0, i32 0, i32 0, i32 0, i32 21], align 16
@__const.setsensorgain.i2cpcolorgain = private unnamed_addr constant [8 x i32] [i32 192, i32 64, i32 7, i32 0, i32 0, i32 0, i32 0, i32 21], align 16
@__const.setsensorgain.i2cpdoit = private unnamed_addr constant [8 x i32] [i32 160, i32 64, i32 17, i32 1, i32 0, i32 0, i32 0, i32 22], align 16
@D_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"i2c error gain\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gspca_dev*)* @setsensorgain to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @setsensorgain(%struct.gspca_dev* %0) #0 {
  %2 = alloca %struct.gspca_dev*, align 8
  %3 = alloca %struct.sd*, align 8
  %4 = alloca i8, align 1
  %5 = alloca [8 x i32], align 16
  %6 = alloca [8 x i32], align 16
  %7 = alloca [8 x i32], align 16
  %8 = alloca [8 x i32], align 16
  %9 = alloca [8 x i32], align 16
  %10 = alloca [8 x i32], align 16
  %11 = alloca [8 x i32], align 16
  store %struct.gspca_dev* %0, %struct.gspca_dev** %2, align 8
  %12 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %13 = bitcast %struct.gspca_dev* %12 to %struct.sd*
  store %struct.sd* %13, %struct.sd** %3, align 8
  %14 = load %struct.sd*, %struct.sd** %3, align 8
  %15 = getelementptr inbounds %struct.sd, %struct.sd* %14, i32 0, i32 0
  %16 = load i8, i8* %15, align 4
  store i8 %16, i8* %4, align 1
  %17 = load %struct.sd*, %struct.sd** %3, align 8
  %18 = getelementptr inbounds %struct.sd, %struct.sd* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  switch i32 %19, label %217 [
    i32 135, label %20
    i32 130, label %49
    i32 128, label %49
    i32 129, label %61
    i32 134, label %129
    i32 133, label %134
    i32 132, label %155
    i32 131, label %155
  ]

20:                                               ; preds = %1
  %21 = bitcast [8 x i32]* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %21, i8* align 16 bitcast ([8 x i32]* @__const.setsensorgain.i2c to i8*), i64 32, i1 false)
  %22 = load %struct.sd*, %struct.sd** %3, align 8
  %23 = getelementptr inbounds %struct.sd, %struct.sd* %22, i32 0, i32 0
  %24 = load i8, i8* %23, align 4
  %25 = zext i8 %24 to i32
  %26 = sdiv i32 %25, 4
  %27 = sub nsw i32 63, %26
  %28 = getelementptr inbounds [8 x i32], [8 x i32]* %5, i64 0, i64 3
  store i32 %27, i32* %28, align 4
  %29 = load %struct.sd*, %struct.sd** %3, align 8
  %30 = getelementptr inbounds %struct.sd, %struct.sd* %29, i32 0, i32 0
  %31 = load i8, i8* %30, align 4
  %32 = zext i8 %31 to i32
  %33 = sdiv i32 %32, 4
  %34 = sub nsw i32 63, %33
  %35 = getelementptr inbounds [8 x i32], [8 x i32]* %5, i64 0, i64 4
  store i32 %34, i32* %35, align 16
  %36 = load %struct.sd*, %struct.sd** %3, align 8
  %37 = getelementptr inbounds %struct.sd, %struct.sd* %36, i32 0, i32 0
  %38 = load i8, i8* %37, align 4
  %39 = zext i8 %38 to i32
  %40 = sdiv i32 %39, 4
  %41 = sub nsw i32 63, %40
  %42 = getelementptr inbounds [8 x i32], [8 x i32]* %5, i64 0, i64 5
  store i32 %41, i32* %42, align 4
  %43 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %44 = getelementptr inbounds [8 x i32], [8 x i32]* %5, i64 0, i64 0
  %45 = call i32 @i2c_w(%struct.gspca_dev* %43, i32* %44)
  %46 = icmp slt i32 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %20
  br label %218

48:                                               ; preds = %20
  br label %217

49:                                               ; preds = %1, %1
  %50 = bitcast [8 x i32]* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %50, i8* align 16 bitcast ([8 x i32]* @__const.setsensorgain.i2c.1 to i8*), i64 32, i1 false)
  %51 = load i8, i8* %4, align 1
  %52 = zext i8 %51 to i32
  %53 = sub nsw i32 255, %52
  %54 = getelementptr inbounds [8 x i32], [8 x i32]* %6, i64 0, i64 4
  store i32 %53, i32* %54, align 16
  %55 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %56 = getelementptr inbounds [8 x i32], [8 x i32]* %6, i64 0, i64 0
  %57 = call i32 @i2c_w(%struct.gspca_dev* %55, i32* %56)
  %58 = icmp slt i32 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %49
  br label %218

60:                                               ; preds = %49
  br label %217

61:                                               ; preds = %1
  %62 = bitcast [8 x i32]* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %62, i8* align 16 bitcast ([8 x i32]* @__const.setsensorgain.i2c.2 to i8*), i64 32, i1 false)
  %63 = load i8, i8* %4, align 1
  %64 = zext i8 %63 to i32
  %65 = sub nsw i32 255, %64
  %66 = trunc i32 %65 to i8
  store i8 %66, i8* %4, align 1
  %67 = load i8, i8* %4, align 1
  %68 = zext i8 %67 to i32
  %69 = and i32 %68, 128
  %70 = ashr i32 %69, 7
  %71 = getelementptr inbounds [8 x i32], [8 x i32]* %7, i64 0, i64 3
  %72 = load i32, i32* %71, align 4
  %73 = or i32 %72, %70
  store i32 %73, i32* %71, align 4
  %74 = load i8, i8* %4, align 1
  %75 = zext i8 %74 to i32
  %76 = and i32 %75, 64
  %77 = ashr i32 %76, 5
  %78 = getelementptr inbounds [8 x i32], [8 x i32]* %7, i64 0, i64 3
  %79 = load i32, i32* %78, align 4
  %80 = or i32 %79, %77
  store i32 %80, i32* %78, align 4
  %81 = load i8, i8* %4, align 1
  %82 = zext i8 %81 to i32
  %83 = and i32 %82, 32
  %84 = ashr i32 %83, 3
  %85 = getelementptr inbounds [8 x i32], [8 x i32]* %7, i64 0, i64 3
  %86 = load i32, i32* %85, align 4
  %87 = or i32 %86, %84
  store i32 %87, i32* %85, align 4
  %88 = load i8, i8* %4, align 1
  %89 = zext i8 %88 to i32
  %90 = and i32 %89, 16
  %91 = ashr i32 %90, 1
  %92 = getelementptr inbounds [8 x i32], [8 x i32]* %7, i64 0, i64 3
  %93 = load i32, i32* %92, align 4
  %94 = or i32 %93, %91
  store i32 %94, i32* %92, align 4
  %95 = load i8, i8* %4, align 1
  %96 = zext i8 %95 to i32
  %97 = and i32 %96, 8
  %98 = shl i32 %97, 1
  %99 = getelementptr inbounds [8 x i32], [8 x i32]* %7, i64 0, i64 3
  %100 = load i32, i32* %99, align 4
  %101 = or i32 %100, %98
  store i32 %101, i32* %99, align 4
  %102 = load i8, i8* %4, align 1
  %103 = zext i8 %102 to i32
  %104 = and i32 %103, 4
  %105 = shl i32 %104, 3
  %106 = getelementptr inbounds [8 x i32], [8 x i32]* %7, i64 0, i64 3
  %107 = load i32, i32* %106, align 4
  %108 = or i32 %107, %105
  store i32 %108, i32* %106, align 4
  %109 = load i8, i8* %4, align 1
  %110 = zext i8 %109 to i32
  %111 = and i32 %110, 2
  %112 = shl i32 %111, 5
  %113 = getelementptr inbounds [8 x i32], [8 x i32]* %7, i64 0, i64 3
  %114 = load i32, i32* %113, align 4
  %115 = or i32 %114, %112
  store i32 %115, i32* %113, align 4
  %116 = load i8, i8* %4, align 1
  %117 = zext i8 %116 to i32
  %118 = and i32 %117, 1
  %119 = shl i32 %118, 7
  %120 = getelementptr inbounds [8 x i32], [8 x i32]* %7, i64 0, i64 3
  %121 = load i32, i32* %120, align 4
  %122 = or i32 %121, %119
  store i32 %122, i32* %120, align 4
  %123 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %124 = getelementptr inbounds [8 x i32], [8 x i32]* %7, i64 0, i64 0
  %125 = call i32 @i2c_w(%struct.gspca_dev* %123, i32* %124)
  %126 = icmp slt i32 %125, 0
  br i1 %126, label %127, label %128

127:                                              ; preds = %61
  br label %218

128:                                              ; preds = %61
  br label %217

129:                                              ; preds = %1
  %130 = load i8, i8* %4, align 1
  %131 = zext i8 %130 to i32
  %132 = ashr i32 %131, 1
  %133 = trunc i32 %132 to i8
  store i8 %133, i8* %4, align 1
  br label %134

134:                                              ; preds = %1, %129
  %135 = bitcast [8 x i32]* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %135, i8* align 16 bitcast ([8 x i32]* @__const.setsensorgain.i2c.3 to i8*), i64 32, i1 false)
  %136 = load %struct.TYPE_2__*, %struct.TYPE_2__** @sensor_data, align 8
  %137 = load %struct.sd*, %struct.sd** %3, align 8
  %138 = getelementptr inbounds %struct.sd, %struct.sd* %137, i32 0, i32 1
  %139 = load i32, i32* %138, align 4
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %136, i64 %140
  %142 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 4
  %144 = getelementptr inbounds [8 x i32], [8 x i32]* %8, i64 0, i64 1
  store i32 %143, i32* %144, align 4
  %145 = load i8, i8* %4, align 1
  %146 = zext i8 %145 to i32
  %147 = ashr i32 %146, 2
  %148 = getelementptr inbounds [8 x i32], [8 x i32]* %8, i64 0, i64 3
  store i32 %147, i32* %148, align 4
  %149 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %150 = getelementptr inbounds [8 x i32], [8 x i32]* %8, i64 0, i64 0
  %151 = call i32 @i2c_w(%struct.gspca_dev* %149, i32* %150)
  %152 = icmp slt i32 %151, 0
  br i1 %152, label %153, label %154

153:                                              ; preds = %134
  br label %218

154:                                              ; preds = %134
  br label %217

155:                                              ; preds = %1, %1
  %156 = bitcast [8 x i32]* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %156, i8* align 16 bitcast ([8 x i32]* @__const.setsensorgain.i2cpgain to i8*), i64 32, i1 false)
  %157 = bitcast [8 x i32]* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %157, i8* align 16 bitcast ([8 x i32]* @__const.setsensorgain.i2cpcolorgain to i8*), i64 32, i1 false)
  %158 = bitcast [8 x i32]* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %158, i8* align 16 bitcast ([8 x i32]* @__const.setsensorgain.i2cpdoit to i8*), i64 32, i1 false)
  %159 = load %struct.sd*, %struct.sd** %3, align 8
  %160 = getelementptr inbounds %struct.sd, %struct.sd* %159, i32 0, i32 1
  %161 = load i32, i32* %160, align 4
  %162 = icmp eq i32 %161, 132
  br i1 %162, label %163, label %168

163:                                              ; preds = %155
  %164 = getelementptr inbounds [8 x i32], [8 x i32]* %9, i64 0, i64 2
  store i32 14, i32* %164, align 8
  %165 = getelementptr inbounds [8 x i32], [8 x i32]* %10, i64 0, i64 0
  store i32 208, i32* %165, align 16
  %166 = getelementptr inbounds [8 x i32], [8 x i32]* %10, i64 0, i64 2
  store i32 9, i32* %166, align 8
  %167 = getelementptr inbounds [8 x i32], [8 x i32]* %11, i64 0, i64 2
  store i32 19, i32* %167, align 8
  br label %168

168:                                              ; preds = %163, %155
  %169 = load %struct.sd*, %struct.sd** %3, align 8
  %170 = getelementptr inbounds %struct.sd, %struct.sd* %169, i32 0, i32 0
  %171 = load i8, i8* %170, align 4
  %172 = zext i8 %171 to i32
  %173 = ashr i32 %172, 3
  %174 = getelementptr inbounds [8 x i32], [8 x i32]* %9, i64 0, i64 3
  store i32 %173, i32* %174, align 4
  %175 = load %struct.sd*, %struct.sd** %3, align 8
  %176 = getelementptr inbounds %struct.sd, %struct.sd* %175, i32 0, i32 0
  %177 = load i8, i8* %176, align 4
  %178 = zext i8 %177 to i32
  %179 = ashr i32 %178, 4
  %180 = getelementptr inbounds [8 x i32], [8 x i32]* %10, i64 0, i64 3
  store i32 %179, i32* %180, align 4
  %181 = load %struct.sd*, %struct.sd** %3, align 8
  %182 = getelementptr inbounds %struct.sd, %struct.sd* %181, i32 0, i32 0
  %183 = load i8, i8* %182, align 4
  %184 = zext i8 %183 to i32
  %185 = ashr i32 %184, 4
  %186 = getelementptr inbounds [8 x i32], [8 x i32]* %10, i64 0, i64 4
  store i32 %185, i32* %186, align 16
  %187 = load %struct.sd*, %struct.sd** %3, align 8
  %188 = getelementptr inbounds %struct.sd, %struct.sd* %187, i32 0, i32 0
  %189 = load i8, i8* %188, align 4
  %190 = zext i8 %189 to i32
  %191 = ashr i32 %190, 4
  %192 = getelementptr inbounds [8 x i32], [8 x i32]* %10, i64 0, i64 5
  store i32 %191, i32* %192, align 4
  %193 = load %struct.sd*, %struct.sd** %3, align 8
  %194 = getelementptr inbounds %struct.sd, %struct.sd* %193, i32 0, i32 0
  %195 = load i8, i8* %194, align 4
  %196 = zext i8 %195 to i32
  %197 = ashr i32 %196, 4
  %198 = getelementptr inbounds [8 x i32], [8 x i32]* %10, i64 0, i64 6
  store i32 %197, i32* %198, align 8
  %199 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %200 = getelementptr inbounds [8 x i32], [8 x i32]* %9, i64 0, i64 0
  %201 = call i32 @i2c_w(%struct.gspca_dev* %199, i32* %200)
  %202 = icmp slt i32 %201, 0
  br i1 %202, label %203, label %204

203:                                              ; preds = %168
  br label %218

204:                                              ; preds = %168
  %205 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %206 = getelementptr inbounds [8 x i32], [8 x i32]* %10, i64 0, i64 0
  %207 = call i32 @i2c_w(%struct.gspca_dev* %205, i32* %206)
  %208 = icmp slt i32 %207, 0
  br i1 %208, label %209, label %210

209:                                              ; preds = %204
  br label %218

210:                                              ; preds = %204
  %211 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %212 = getelementptr inbounds [8 x i32], [8 x i32]* %11, i64 0, i64 0
  %213 = call i32 @i2c_w(%struct.gspca_dev* %211, i32* %212)
  %214 = icmp slt i32 %213, 0
  br i1 %214, label %215, label %216

215:                                              ; preds = %210
  br label %218

216:                                              ; preds = %210
  br label %217

217:                                              ; preds = %1, %216, %154, %128, %60, %48
  br label %221

218:                                              ; preds = %215, %209, %203, %153, %127, %59, %47
  %219 = load i32, i32* @D_ERR, align 4
  %220 = call i32 @PDEBUG(i32 %219, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  br label %221

221:                                              ; preds = %218, %217
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @i2c_w(%struct.gspca_dev*, i32*) #2

declare dso_local i32 @PDEBUG(i32, i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
