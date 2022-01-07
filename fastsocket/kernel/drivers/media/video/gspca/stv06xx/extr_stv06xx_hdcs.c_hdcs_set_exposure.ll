; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/gspca/stv06xx/extr_stv06xx_hdcs.c_hdcs_set_exposure.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/gspca/stv06xx/extr_stv06xx_hdcs.c_hdcs_set_exposure.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gspca_dev = type { i32 }
%struct.sd = type { %struct.hdcs* }
%struct.hdcs = type { i32, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32 }

@HDCS_CLK_FREQ_MHZ = common dso_local global i32 0, align 4
@HDCS_ADC_START_SIG_DUR = common dso_local global i32 0, align 4
@HDCS20_CONTROL = common dso_local global i32 0, align 4
@HDCS_ROWEXPL = common dso_local global i32 0, align 4
@HDCS_ROWEXPH = common dso_local global i32 0, align 4
@HDCS20_SROWEXP = common dso_local global i32 0, align 4
@HDCS20_ERROR = common dso_local global i32 0, align 4
@HDCS00_CONTROL = common dso_local global i32 0, align 4
@HDCS00_SROWEXPL = common dso_local global i32 0, align 4
@HDCS00_SROWEXPH = common dso_local global i32 0, align 4
@HDCS_STATUS = common dso_local global i32 0, align 4
@D_V4L2 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"Writing exposure %d, rowexp %d, srowexp %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gspca_dev*, i32)* @hdcs_set_exposure to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hdcs_set_exposure(%struct.gspca_dev* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.gspca_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.sd*, align 8
  %7 = alloca %struct.hdcs*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca [14 x i32], align 16
  store %struct.gspca_dev* %0, %struct.gspca_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  %18 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %19 = bitcast %struct.gspca_dev* %18 to %struct.sd*
  store %struct.sd* %19, %struct.sd** %6, align 8
  %20 = load %struct.sd*, %struct.sd** %6, align 8
  %21 = getelementptr inbounds %struct.sd, %struct.sd* %20, i32 0, i32 0
  %22 = load %struct.hdcs*, %struct.hdcs** %21, align 8
  store %struct.hdcs* %22, %struct.hdcs** %7, align 8
  %23 = load i32, i32* %5, align 4
  %24 = and i32 %23, 255
  store i32 %24, i32* %5, align 4
  %25 = load i32, i32* %5, align 4
  %26 = load %struct.hdcs*, %struct.hdcs** %7, align 8
  %27 = getelementptr inbounds %struct.hdcs, %struct.hdcs* %26, i32 0, i32 0
  store i32 %25, i32* %27, align 4
  %28 = load i32, i32* %5, align 4
  %29 = load i32, i32* @HDCS_CLK_FREQ_MHZ, align 4
  %30 = mul nsw i32 %28, %29
  %31 = mul nsw i32 %30, 257
  store i32 %31, i32* %15, align 4
  %32 = load %struct.hdcs*, %struct.hdcs** %7, align 8
  %33 = getelementptr inbounds %struct.hdcs, %struct.hdcs* %32, i32 0, i32 3
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.hdcs*, %struct.hdcs** %7, align 8
  %37 = getelementptr inbounds %struct.hdcs, %struct.hdcs* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = add nsw i32 %35, %38
  %40 = load i32, i32* @HDCS_ADC_START_SIG_DUR, align 4
  %41 = add nsw i32 %40, 2
  %42 = add nsw i32 %39, %41
  store i32 %42, i32* %11, align 4
  %43 = load %struct.hdcs*, %struct.hdcs** %7, align 8
  %44 = getelementptr inbounds %struct.hdcs, %struct.hdcs* %43, i32 0, i32 3
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.hdcs*, %struct.hdcs** %7, align 8
  %48 = getelementptr inbounds %struct.hdcs, %struct.hdcs* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* %11, align 4
  %51 = mul nsw i32 %49, %50
  %52 = sdiv i32 %51, 2
  %53 = add nsw i32 %46, %52
  store i32 %53, i32* %12, align 4
  %54 = load %struct.hdcs*, %struct.hdcs** %7, align 8
  %55 = getelementptr inbounds %struct.hdcs, %struct.hdcs* %54, i32 0, i32 3
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* %12, align 4
  %59 = add nsw i32 %57, %58
  store i32 %59, i32* %13, align 4
  %60 = load i32, i32* %15, align 4
  %61 = load i32, i32* %13, align 4
  %62 = sdiv i32 %60, %61
  store i32 %62, i32* %8, align 4
  %63 = load i32, i32* %8, align 4
  %64 = load i32, i32* %13, align 4
  %65 = mul nsw i32 %63, %64
  %66 = load i32, i32* %15, align 4
  %67 = sub nsw i32 %66, %65
  store i32 %67, i32* %15, align 4
  %68 = load %struct.sd*, %struct.sd** %6, align 8
  %69 = call i64 @IS_1020(%struct.sd* %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %100

71:                                               ; preds = %2
  %72 = load %struct.hdcs*, %struct.hdcs** %7, align 8
  %73 = getelementptr inbounds %struct.hdcs, %struct.hdcs* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 4
  %75 = load i32, i32* %15, align 4
  %76 = load %struct.hdcs*, %struct.hdcs** %7, align 8
  %77 = getelementptr inbounds %struct.hdcs, %struct.hdcs* %76, i32 0, i32 3
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i32 0, i32 2
  %79 = load i32, i32* %78, align 4
  %80 = add nsw i32 %75, %79
  %81 = add nsw i32 %80, 13
  %82 = load i32, i32* %11, align 4
  %83 = sdiv i32 %81, %82
  %84 = sub nsw i32 %74, %83
  store i32 %84, i32* %9, align 4
  %85 = load %struct.hdcs*, %struct.hdcs** %7, align 8
  %86 = getelementptr inbounds %struct.hdcs, %struct.hdcs* %85, i32 0, i32 3
  %87 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %86, i32 0, i32 2
  %88 = load i32, i32* %87, align 4
  %89 = add nsw i32 %88, 12
  %90 = load i32, i32* %11, align 4
  %91 = add nsw i32 %89, %90
  %92 = sub nsw i32 %91, 1
  %93 = load i32, i32* %11, align 4
  %94 = sdiv i32 %92, %93
  store i32 %94, i32* %14, align 4
  %95 = load %struct.hdcs*, %struct.hdcs** %7, align 8
  %96 = getelementptr inbounds %struct.hdcs, %struct.hdcs* %95, i32 0, i32 2
  %97 = load i32, i32* %96, align 4
  %98 = load i32, i32* %14, align 4
  %99 = sub nsw i32 %97, %98
  store i32 %99, i32* %10, align 4
  br label %126

100:                                              ; preds = %2
  %101 = load i32, i32* %12, align 4
  %102 = load %struct.hdcs*, %struct.hdcs** %7, align 8
  %103 = getelementptr inbounds %struct.hdcs, %struct.hdcs* %102, i32 0, i32 3
  %104 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %103, i32 0, i32 2
  %105 = load i32, i32* %104, align 4
  %106 = sub nsw i32 %101, %105
  %107 = sub nsw i32 %106, 6
  %108 = load i32, i32* %15, align 4
  %109 = sub nsw i32 %107, %108
  store i32 %109, i32* %9, align 4
  %110 = load %struct.hdcs*, %struct.hdcs** %7, align 8
  %111 = getelementptr inbounds %struct.hdcs, %struct.hdcs* %110, i32 0, i32 3
  %112 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %111, i32 0, i32 2
  %113 = load i32, i32* %112, align 4
  %114 = add nsw i32 %113, 5
  %115 = load i32, i32* %11, align 4
  %116 = add nsw i32 %114, %115
  %117 = sub nsw i32 %116, 1
  %118 = load i32, i32* %11, align 4
  %119 = sdiv i32 %117, %118
  store i32 %119, i32* %14, align 4
  %120 = load i32, i32* %12, align 4
  %121 = load i32, i32* %14, align 4
  %122 = load i32, i32* %11, align 4
  %123 = mul nsw i32 %121, %122
  %124 = sub nsw i32 %120, %123
  %125 = sub nsw i32 %124, 1
  store i32 %125, i32* %10, align 4
  br label %126

126:                                              ; preds = %100, %71
  %127 = load i32, i32* %9, align 4
  %128 = icmp slt i32 %127, 0
  br i1 %128, label %129, label %130

129:                                              ; preds = %126
  store i32 0, i32* %9, align 4
  br label %137

130:                                              ; preds = %126
  %131 = load i32, i32* %9, align 4
  %132 = load i32, i32* %10, align 4
  %133 = icmp sgt i32 %131, %132
  br i1 %133, label %134, label %136

134:                                              ; preds = %130
  %135 = load i32, i32* %10, align 4
  store i32 %135, i32* %9, align 4
  br label %136

136:                                              ; preds = %134, %130
  br label %137

137:                                              ; preds = %136, %129
  %138 = load %struct.sd*, %struct.sd** %6, align 8
  %139 = call i64 @IS_1020(%struct.sd* %138)
  %140 = icmp ne i64 %139, 0
  br i1 %140, label %141, label %170

141:                                              ; preds = %137
  %142 = load i32, i32* @HDCS20_CONTROL, align 4
  %143 = getelementptr inbounds [14 x i32], [14 x i32]* %17, i64 0, i64 0
  store i32 %142, i32* %143, align 16
  %144 = getelementptr inbounds [14 x i32], [14 x i32]* %17, i64 0, i64 1
  store i32 0, i32* %144, align 4
  %145 = load i32, i32* @HDCS_ROWEXPL, align 4
  %146 = getelementptr inbounds [14 x i32], [14 x i32]* %17, i64 0, i64 2
  store i32 %145, i32* %146, align 8
  %147 = load i32, i32* %8, align 4
  %148 = and i32 %147, 255
  %149 = getelementptr inbounds [14 x i32], [14 x i32]* %17, i64 0, i64 3
  store i32 %148, i32* %149, align 4
  %150 = load i32, i32* @HDCS_ROWEXPH, align 4
  %151 = getelementptr inbounds [14 x i32], [14 x i32]* %17, i64 0, i64 4
  store i32 %150, i32* %151, align 16
  %152 = load i32, i32* %8, align 4
  %153 = ashr i32 %152, 8
  %154 = getelementptr inbounds [14 x i32], [14 x i32]* %17, i64 0, i64 5
  store i32 %153, i32* %154, align 4
  %155 = load i32, i32* @HDCS20_SROWEXP, align 4
  %156 = getelementptr inbounds [14 x i32], [14 x i32]* %17, i64 0, i64 6
  store i32 %155, i32* %156, align 8
  %157 = load i32, i32* %9, align 4
  %158 = ashr i32 %157, 2
  %159 = and i32 %158, 255
  %160 = getelementptr inbounds [14 x i32], [14 x i32]* %17, i64 0, i64 7
  store i32 %159, i32* %160, align 4
  %161 = load i32, i32* @HDCS20_ERROR, align 4
  %162 = getelementptr inbounds [14 x i32], [14 x i32]* %17, i64 0, i64 8
  store i32 %161, i32* %162, align 16
  %163 = getelementptr inbounds [14 x i32], [14 x i32]* %17, i64 0, i64 9
  store i32 16, i32* %163, align 4
  %164 = load i32, i32* @HDCS20_CONTROL, align 4
  %165 = getelementptr inbounds [14 x i32], [14 x i32]* %17, i64 0, i64 10
  store i32 %164, i32* %165, align 8
  %166 = getelementptr inbounds [14 x i32], [14 x i32]* %17, i64 0, i64 11
  store i32 4, i32* %166, align 4
  %167 = load %struct.sd*, %struct.sd** %6, align 8
  %168 = getelementptr inbounds [14 x i32], [14 x i32]* %17, i64 0, i64 0
  %169 = call i32 @stv06xx_write_sensor_bytes(%struct.sd* %167, i32* %168, i32 6)
  store i32 %169, i32* %16, align 4
  br label %208

170:                                              ; preds = %137
  %171 = load i32, i32* @HDCS00_CONTROL, align 4
  %172 = getelementptr inbounds [14 x i32], [14 x i32]* %17, i64 0, i64 0
  store i32 %171, i32* %172, align 16
  %173 = getelementptr inbounds [14 x i32], [14 x i32]* %17, i64 0, i64 1
  store i32 0, i32* %173, align 4
  %174 = load i32, i32* @HDCS_ROWEXPL, align 4
  %175 = getelementptr inbounds [14 x i32], [14 x i32]* %17, i64 0, i64 2
  store i32 %174, i32* %175, align 8
  %176 = load i32, i32* %8, align 4
  %177 = and i32 %176, 255
  %178 = getelementptr inbounds [14 x i32], [14 x i32]* %17, i64 0, i64 3
  store i32 %177, i32* %178, align 4
  %179 = load i32, i32* @HDCS_ROWEXPH, align 4
  %180 = getelementptr inbounds [14 x i32], [14 x i32]* %17, i64 0, i64 4
  store i32 %179, i32* %180, align 16
  %181 = load i32, i32* %8, align 4
  %182 = ashr i32 %181, 8
  %183 = getelementptr inbounds [14 x i32], [14 x i32]* %17, i64 0, i64 5
  store i32 %182, i32* %183, align 4
  %184 = load i32, i32* @HDCS00_SROWEXPL, align 4
  %185 = getelementptr inbounds [14 x i32], [14 x i32]* %17, i64 0, i64 6
  store i32 %184, i32* %185, align 8
  %186 = load i32, i32* %9, align 4
  %187 = and i32 %186, 255
  %188 = getelementptr inbounds [14 x i32], [14 x i32]* %17, i64 0, i64 7
  store i32 %187, i32* %188, align 4
  %189 = load i32, i32* @HDCS00_SROWEXPH, align 4
  %190 = getelementptr inbounds [14 x i32], [14 x i32]* %17, i64 0, i64 8
  store i32 %189, i32* %190, align 16
  %191 = load i32, i32* %9, align 4
  %192 = ashr i32 %191, 8
  %193 = getelementptr inbounds [14 x i32], [14 x i32]* %17, i64 0, i64 9
  store i32 %192, i32* %193, align 4
  %194 = load i32, i32* @HDCS_STATUS, align 4
  %195 = getelementptr inbounds [14 x i32], [14 x i32]* %17, i64 0, i64 10
  store i32 %194, i32* %195, align 8
  %196 = getelementptr inbounds [14 x i32], [14 x i32]* %17, i64 0, i64 11
  store i32 16, i32* %196, align 4
  %197 = load i32, i32* @HDCS00_CONTROL, align 4
  %198 = getelementptr inbounds [14 x i32], [14 x i32]* %17, i64 0, i64 12
  store i32 %197, i32* %198, align 16
  %199 = getelementptr inbounds [14 x i32], [14 x i32]* %17, i64 0, i64 13
  store i32 4, i32* %199, align 4
  %200 = load %struct.sd*, %struct.sd** %6, align 8
  %201 = getelementptr inbounds [14 x i32], [14 x i32]* %17, i64 0, i64 0
  %202 = call i32 @stv06xx_write_sensor_bytes(%struct.sd* %200, i32* %201, i32 7)
  store i32 %202, i32* %16, align 4
  %203 = load i32, i32* %16, align 4
  %204 = icmp slt i32 %203, 0
  br i1 %204, label %205, label %207

205:                                              ; preds = %170
  %206 = load i32, i32* %16, align 4
  store i32 %206, i32* %3, align 4
  br label %215

207:                                              ; preds = %170
  br label %208

208:                                              ; preds = %207, %141
  %209 = load i32, i32* @D_V4L2, align 4
  %210 = load i32, i32* %5, align 4
  %211 = load i32, i32* %8, align 4
  %212 = load i32, i32* %9, align 4
  %213 = call i32 @PDEBUG(i32 %209, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32 %210, i32 %211, i32 %212)
  %214 = load i32, i32* %16, align 4
  store i32 %214, i32* %3, align 4
  br label %215

215:                                              ; preds = %208, %205
  %216 = load i32, i32* %3, align 4
  ret i32 %216
}

declare dso_local i64 @IS_1020(%struct.sd*) #1

declare dso_local i32 @stv06xx_write_sensor_bytes(%struct.sd*, i32*, i32) #1

declare dso_local i32 @PDEBUG(i32, i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
