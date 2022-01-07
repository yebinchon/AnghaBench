; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/cx231xx/extr_cx231xx-i2c.c_cx231xx_i2c_send_bytes.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/cx231xx/extr_cx231xx-i2c.c_cx231xx_i2c_send_bytes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_adapter = type { %struct.cx231xx_i2c* }
%struct.cx231xx_i2c = type { i32, i32, i32, %struct.cx231xx* }
%struct.cx231xx = type { i64, i32, i32 (%struct.cx231xx*, i32, i32*, i32)*, i32 (%struct.cx231xx_i2c*, %struct.cx231xx_i2c_xfer_data*)* }
%struct.cx231xx_i2c_xfer_data = type { i32, i32, i32, i32, i32*, i32 }
%struct.i2c_msg = type { i32, i32, i32*, i32 }

@TUNER_XC5000 = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [43 x i8] c"GPIO WRITE: addr 0x%x, len %d, saddr 0x%x\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cx231xx_i2c_send_bytes(%struct.i2c_adapter* %0, %struct.i2c_msg* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_adapter*, align 8
  %5 = alloca %struct.i2c_msg*, align 8
  %6 = alloca %struct.cx231xx_i2c*, align 8
  %7 = alloca %struct.cx231xx*, align 8
  %8 = alloca %struct.cx231xx_i2c_xfer_data, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.i2c_adapter* %0, %struct.i2c_adapter** %4, align 8
  store %struct.i2c_msg* %1, %struct.i2c_msg** %5, align 8
  %16 = load %struct.i2c_adapter*, %struct.i2c_adapter** %4, align 8
  %17 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %16, i32 0, i32 0
  %18 = load %struct.cx231xx_i2c*, %struct.cx231xx_i2c** %17, align 8
  store %struct.cx231xx_i2c* %18, %struct.cx231xx_i2c** %6, align 8
  %19 = load %struct.cx231xx_i2c*, %struct.cx231xx_i2c** %6, align 8
  %20 = getelementptr inbounds %struct.cx231xx_i2c, %struct.cx231xx_i2c* %19, i32 0, i32 3
  %21 = load %struct.cx231xx*, %struct.cx231xx** %20, align 8
  store %struct.cx231xx* %21, %struct.cx231xx** %7, align 8
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  store i32 1, i32* %12, align 4
  store i32* null, i32** %13, align 8
  store i32 0, i32* %14, align 4
  store i32 0, i32* %15, align 4
  %22 = load %struct.cx231xx_i2c*, %struct.cx231xx_i2c** %6, align 8
  %23 = getelementptr inbounds %struct.cx231xx_i2c, %struct.cx231xx_i2c* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = icmp eq i32 %24, 1
  br i1 %25, label %26, label %191

26:                                               ; preds = %2
  %27 = load %struct.i2c_msg*, %struct.i2c_msg** %5, align 8
  %28 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = icmp eq i32 %29, 97
  br i1 %30, label %31, label %191

31:                                               ; preds = %26
  %32 = load %struct.cx231xx*, %struct.cx231xx** %7, align 8
  %33 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @TUNER_XC5000, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %191

37:                                               ; preds = %31
  %38 = load %struct.i2c_msg*, %struct.i2c_msg** %5, align 8
  %39 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  store i32 %40, i32* %10, align 4
  %41 = load i32, i32* %10, align 4
  %42 = icmp eq i32 %41, 2
  br i1 %42, label %43, label %44

43:                                               ; preds = %37
  store i32 0, i32* %3, align 4
  br label %223

44:                                               ; preds = %37
  %45 = load i32, i32* %10, align 4
  %46 = icmp eq i32 %45, 4
  br i1 %46, label %47, label %117

47:                                               ; preds = %44
  %48 = load %struct.i2c_msg*, %struct.i2c_msg** %5, align 8
  %49 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = icmp sge i32 %50, 2
  br i1 %51, label %52, label %65

52:                                               ; preds = %47
  %53 = load %struct.i2c_msg*, %struct.i2c_msg** %5, align 8
  %54 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %53, i32 0, i32 2
  %55 = load i32*, i32** %54, align 8
  %56 = getelementptr inbounds i32, i32* %55, i64 0
  %57 = load i32, i32* %56, align 4
  %58 = shl i32 %57, 8
  %59 = load %struct.i2c_msg*, %struct.i2c_msg** %5, align 8
  %60 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %59, i32 0, i32 2
  %61 = load i32*, i32** %60, align 8
  %62 = getelementptr inbounds i32, i32* %61, i64 1
  %63 = load i32, i32* %62, align 4
  %64 = or i32 %58, %63
  store i32 %64, i32* %14, align 4
  br label %77

65:                                               ; preds = %47
  %66 = load %struct.i2c_msg*, %struct.i2c_msg** %5, align 8
  %67 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = icmp eq i32 %68, 1
  br i1 %69, label %70, label %76

70:                                               ; preds = %65
  %71 = load %struct.i2c_msg*, %struct.i2c_msg** %5, align 8
  %72 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %71, i32 0, i32 2
  %73 = load i32*, i32** %72, align 8
  %74 = getelementptr inbounds i32, i32* %73, i64 0
  %75 = load i32, i32* %74, align 4
  store i32 %75, i32* %14, align 4
  br label %76

76:                                               ; preds = %70, %65
  br label %77

77:                                               ; preds = %76, %52
  %78 = load i32, i32* %14, align 4
  switch i32 %78, label %83 [
    i32 0, label %79
    i32 13, label %82
    i32 1, label %82
    i32 2, label %82
    i32 3, label %82
  ]

79:                                               ; preds = %77
  store i32 1, i32* %15, align 4
  %80 = load %struct.cx231xx*, %struct.cx231xx** %7, align 8
  %81 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %80, i32 0, i32 1
  store i32 1, i32* %81, align 8
  br label %90

82:                                               ; preds = %77, %77, %77, %77
  store i32 1, i32* %15, align 4
  br label %90

83:                                               ; preds = %77
  %84 = load %struct.cx231xx*, %struct.cx231xx** %7, align 8
  %85 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 8
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %89

88:                                               ; preds = %83
  store i32 1, i32* %15, align 4
  br label %89

89:                                               ; preds = %88, %83
  br label %90

90:                                               ; preds = %89, %82, %79
  %91 = load i32, i32* %15, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %116

93:                                               ; preds = %90
  %94 = load %struct.i2c_msg*, %struct.i2c_msg** %5, align 8
  %95 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = load %struct.i2c_msg*, %struct.i2c_msg** %5, align 8
  %98 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  %100 = load i32, i32* %14, align 4
  %101 = call i32 @dprintk1(i32 1, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32 %96, i32 %99, i32 %100)
  %102 = load %struct.cx231xx*, %struct.cx231xx** %7, align 8
  %103 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %102, i32 0, i32 2
  %104 = load i32 (%struct.cx231xx*, i32, i32*, i32)*, i32 (%struct.cx231xx*, i32, i32*, i32)** %103, align 8
  %105 = load %struct.cx231xx*, %struct.cx231xx** %7, align 8
  %106 = load %struct.i2c_msg*, %struct.i2c_msg** %5, align 8
  %107 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  %109 = load %struct.i2c_msg*, %struct.i2c_msg** %5, align 8
  %110 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %109, i32 0, i32 2
  %111 = load i32*, i32** %110, align 8
  %112 = load %struct.i2c_msg*, %struct.i2c_msg** %5, align 8
  %113 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 4
  %115 = call i32 %104(%struct.cx231xx* %105, i32 %108, i32* %111, i32 %114)
  store i32 %115, i32* %3, align 4
  br label %223

116:                                              ; preds = %90
  br label %117

117:                                              ; preds = %116, %44
  br label %118

118:                                              ; preds = %117
  store i32 1, i32* %12, align 4
  %119 = load i32, i32* %12, align 4
  %120 = load i32, i32* %10, align 4
  %121 = sub nsw i32 %120, %119
  store i32 %121, i32* %10, align 4
  %122 = load %struct.i2c_msg*, %struct.i2c_msg** %5, align 8
  %123 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %122, i32 0, i32 2
  %124 = load i32*, i32** %123, align 8
  %125 = getelementptr inbounds i32, i32* %124, i64 1
  store i32* %125, i32** %13, align 8
  br label %126

126:                                              ; preds = %183, %118
  %127 = load %struct.i2c_msg*, %struct.i2c_msg** %5, align 8
  %128 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 8
  %130 = getelementptr inbounds %struct.cx231xx_i2c_xfer_data, %struct.cx231xx_i2c_xfer_data* %8, i32 0, i32 0
  store i32 %129, i32* %130, align 8
  %131 = load %struct.i2c_msg*, %struct.i2c_msg** %5, align 8
  %132 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %131, i32 0, i32 3
  %133 = load i32, i32* %132, align 8
  %134 = getelementptr inbounds %struct.cx231xx_i2c_xfer_data, %struct.cx231xx_i2c_xfer_data* %8, i32 0, i32 5
  store i32 %133, i32* %134, align 8
  %135 = load i32, i32* %12, align 4
  %136 = getelementptr inbounds %struct.cx231xx_i2c_xfer_data, %struct.cx231xx_i2c_xfer_data* %8, i32 0, i32 1
  store i32 %135, i32* %136, align 4
  %137 = load %struct.i2c_msg*, %struct.i2c_msg** %5, align 8
  %138 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %137, i32 0, i32 2
  %139 = load i32*, i32** %138, align 8
  %140 = getelementptr inbounds i32, i32* %139, i64 0
  %141 = load i32, i32* %140, align 4
  %142 = getelementptr inbounds %struct.cx231xx_i2c_xfer_data, %struct.cx231xx_i2c_xfer_data* %8, i32 0, i32 2
  store i32 %141, i32* %142, align 8
  %143 = load i32, i32* %10, align 4
  %144 = icmp sgt i32 %143, 16
  br i1 %144, label %145, label %146

145:                                              ; preds = %126
  br label %148

146:                                              ; preds = %126
  %147 = load i32, i32* %10, align 4
  br label %148

148:                                              ; preds = %146, %145
  %149 = phi i32 [ 16, %145 ], [ %147, %146 ]
  %150 = getelementptr inbounds %struct.cx231xx_i2c_xfer_data, %struct.cx231xx_i2c_xfer_data* %8, i32 0, i32 3
  store i32 %149, i32* %150, align 4
  %151 = load i32*, i32** %13, align 8
  %152 = load i32, i32* %11, align 4
  %153 = mul nsw i32 %152, 16
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds i32, i32* %151, i64 %154
  %156 = getelementptr inbounds %struct.cx231xx_i2c_xfer_data, %struct.cx231xx_i2c_xfer_data* %8, i32 0, i32 4
  store i32* %155, i32** %156, align 8
  %157 = load i32, i32* %10, align 4
  %158 = icmp sgt i32 %157, 16
  %159 = zext i1 %158 to i64
  %160 = select i1 %158, i32 1, i32 0
  %161 = load %struct.cx231xx_i2c*, %struct.cx231xx_i2c** %6, align 8
  %162 = getelementptr inbounds %struct.cx231xx_i2c, %struct.cx231xx_i2c* %161, i32 0, i32 1
  store i32 %160, i32* %162, align 4
  %163 = load i32, i32* %11, align 4
  %164 = icmp eq i32 %163, 0
  %165 = zext i1 %164 to i64
  %166 = select i1 %164, i32 0, i32 1
  %167 = load %struct.cx231xx_i2c*, %struct.cx231xx_i2c** %6, align 8
  %168 = getelementptr inbounds %struct.cx231xx_i2c, %struct.cx231xx_i2c* %167, i32 0, i32 2
  store i32 %166, i32* %168, align 8
  %169 = load %struct.cx231xx*, %struct.cx231xx** %7, align 8
  %170 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %169, i32 0, i32 3
  %171 = load i32 (%struct.cx231xx_i2c*, %struct.cx231xx_i2c_xfer_data*)*, i32 (%struct.cx231xx_i2c*, %struct.cx231xx_i2c_xfer_data*)** %170, align 8
  %172 = load %struct.cx231xx_i2c*, %struct.cx231xx_i2c** %6, align 8
  %173 = call i32 %171(%struct.cx231xx_i2c* %172, %struct.cx231xx_i2c_xfer_data* %8)
  store i32 %173, i32* %9, align 4
  %174 = load i32, i32* %11, align 4
  %175 = add nsw i32 %174, 1
  store i32 %175, i32* %11, align 4
  %176 = load i32, i32* %10, align 4
  %177 = icmp sge i32 %176, 16
  br i1 %177, label %178, label %181

178:                                              ; preds = %148
  %179 = load i32, i32* %10, align 4
  %180 = sub nsw i32 %179, 16
  store i32 %180, i32* %10, align 4
  br label %182

181:                                              ; preds = %148
  store i32 0, i32* %10, align 4
  br label %182

182:                                              ; preds = %181, %178
  br label %183

183:                                              ; preds = %182
  %184 = load i32, i32* %10, align 4
  %185 = icmp sgt i32 %184, 0
  br i1 %185, label %126, label %186

186:                                              ; preds = %183
  %187 = load %struct.cx231xx_i2c*, %struct.cx231xx_i2c** %6, align 8
  %188 = getelementptr inbounds %struct.cx231xx_i2c, %struct.cx231xx_i2c* %187, i32 0, i32 1
  store i32 0, i32* %188, align 4
  %189 = load %struct.cx231xx_i2c*, %struct.cx231xx_i2c** %6, align 8
  %190 = getelementptr inbounds %struct.cx231xx_i2c, %struct.cx231xx_i2c* %189, i32 0, i32 2
  store i32 0, i32* %190, align 8
  br label %215

191:                                              ; preds = %31, %26, %2
  %192 = load %struct.i2c_msg*, %struct.i2c_msg** %5, align 8
  %193 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %192, i32 0, i32 0
  %194 = load i32, i32* %193, align 8
  %195 = getelementptr inbounds %struct.cx231xx_i2c_xfer_data, %struct.cx231xx_i2c_xfer_data* %8, i32 0, i32 0
  store i32 %194, i32* %195, align 8
  %196 = load %struct.i2c_msg*, %struct.i2c_msg** %5, align 8
  %197 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %196, i32 0, i32 3
  %198 = load i32, i32* %197, align 8
  %199 = getelementptr inbounds %struct.cx231xx_i2c_xfer_data, %struct.cx231xx_i2c_xfer_data* %8, i32 0, i32 5
  store i32 %198, i32* %199, align 8
  %200 = getelementptr inbounds %struct.cx231xx_i2c_xfer_data, %struct.cx231xx_i2c_xfer_data* %8, i32 0, i32 1
  store i32 0, i32* %200, align 4
  %201 = getelementptr inbounds %struct.cx231xx_i2c_xfer_data, %struct.cx231xx_i2c_xfer_data* %8, i32 0, i32 2
  store i32 0, i32* %201, align 8
  %202 = load %struct.i2c_msg*, %struct.i2c_msg** %5, align 8
  %203 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %202, i32 0, i32 1
  %204 = load i32, i32* %203, align 4
  %205 = getelementptr inbounds %struct.cx231xx_i2c_xfer_data, %struct.cx231xx_i2c_xfer_data* %8, i32 0, i32 3
  store i32 %204, i32* %205, align 4
  %206 = load %struct.i2c_msg*, %struct.i2c_msg** %5, align 8
  %207 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %206, i32 0, i32 2
  %208 = load i32*, i32** %207, align 8
  %209 = getelementptr inbounds %struct.cx231xx_i2c_xfer_data, %struct.cx231xx_i2c_xfer_data* %8, i32 0, i32 4
  store i32* %208, i32** %209, align 8
  %210 = load %struct.cx231xx*, %struct.cx231xx** %7, align 8
  %211 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %210, i32 0, i32 3
  %212 = load i32 (%struct.cx231xx_i2c*, %struct.cx231xx_i2c_xfer_data*)*, i32 (%struct.cx231xx_i2c*, %struct.cx231xx_i2c_xfer_data*)** %211, align 8
  %213 = load %struct.cx231xx_i2c*, %struct.cx231xx_i2c** %6, align 8
  %214 = call i32 %212(%struct.cx231xx_i2c* %213, %struct.cx231xx_i2c_xfer_data* %8)
  store i32 %214, i32* %9, align 4
  br label %215

215:                                              ; preds = %191, %186
  %216 = load i32, i32* %9, align 4
  %217 = icmp slt i32 %216, 0
  br i1 %217, label %218, label %220

218:                                              ; preds = %215
  %219 = load i32, i32* %9, align 4
  br label %221

220:                                              ; preds = %215
  br label %221

221:                                              ; preds = %220, %218
  %222 = phi i32 [ %219, %218 ], [ 0, %220 ]
  store i32 %222, i32* %3, align 4
  br label %223

223:                                              ; preds = %221, %93, %43
  %224 = load i32, i32* %3, align 4
  ret i32 %224
}

declare dso_local i32 @dprintk1(i32, i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
