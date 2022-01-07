; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/gspca/gl860/extr_gl860.c_gl860_guess_sensor.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/gspca/gl860/extr_gl860.c_gl860_guess_sensor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gspca_dev = type { i32 }
%struct.sd = type { i32 }

@ID_MI1320 = common dso_local global i32 0, align 4
@D_PROBE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"probing for sensor MI2020 or OVXXXX\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"probe=0x%02x\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"0xff -> OVXXXX\00", align 1
@.str.3 = private unnamed_addr constant [36 x i8] c"probing for sensor OV2640 or OV9655\00", align 1
@.str.4 = private unnamed_addr constant [23 x i8] c"probe=0x%02x -> OV2640\00", align 1
@ID_OV2640 = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [23 x i8] c"probe=0x%02x -> OV9655\00", align 1
@ID_OV9655 = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [23 x i8] c"Not any 0xff -> MI2020\00", align 1
@ID_MI2020 = common dso_local global i32 0, align 4
@_MI1320_ = common dso_local global i64 0, align 8
@.str.7 = private unnamed_addr constant [31 x i8] c"05e3:f191 sensor MI1320 (1.3M)\00", align 1
@_MI2020_ = common dso_local global i64 0, align 8
@.str.8 = private unnamed_addr constant [31 x i8] c"05e3:0503 sensor MI2020 (2.0M)\00", align 1
@_OV9655_ = common dso_local global i64 0, align 8
@.str.9 = private unnamed_addr constant [31 x i8] c"05e3:0503 sensor OV9655 (1.3M)\00", align 1
@_OV2640_ = common dso_local global i64 0, align 8
@.str.10 = private unnamed_addr constant [31 x i8] c"05e3:0503 sensor OV2640 (2.0M)\00", align 1
@.str.11 = private unnamed_addr constant [27 x i8] c"***** Unknown sensor *****\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gspca_dev*, i32, i32)* @gl860_guess_sensor to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gl860_guess_sensor(%struct.gspca_dev* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.gspca_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.sd*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.gspca_dev* %0, %struct.gspca_dev** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %14 = load %struct.gspca_dev*, %struct.gspca_dev** %5, align 8
  %15 = bitcast %struct.gspca_dev* %14 to %struct.sd*
  store %struct.sd* %15, %struct.sd** %8, align 8
  %16 = load i32, i32* %7, align 4
  %17 = icmp eq i32 %16, 61841
  br i1 %17, label %18, label %22

18:                                               ; preds = %3
  %19 = load i32, i32* @ID_MI1320, align 4
  %20 = load %struct.sd*, %struct.sd** %8, align 8
  %21 = getelementptr inbounds %struct.sd, %struct.sd* %20, i32 0, i32 0
  store i32 %19, i32* %21, align 4
  br label %22

22:                                               ; preds = %18, %3
  %23 = load %struct.sd*, %struct.sd** %8, align 8
  %24 = getelementptr inbounds %struct.sd, %struct.sd* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = icmp eq i32 %25, 255
  br i1 %26, label %27, label %166

27:                                               ; preds = %22
  %28 = load %struct.gspca_dev*, %struct.gspca_dev** %5, align 8
  %29 = call i32 @ctrl_in(%struct.gspca_dev* %28, i32 192, i32 2, i32 0, i32 4, i32 1, i32* %9)
  %30 = load %struct.gspca_dev*, %struct.gspca_dev** %5, align 8
  %31 = call i32 @ctrl_in(%struct.gspca_dev* %30, i32 192, i32 2, i32 0, i32 4, i32 1, i32* %9)
  %32 = load %struct.gspca_dev*, %struct.gspca_dev** %5, align 8
  %33 = call i32 @ctrl_out(%struct.gspca_dev* %32, i32 64, i32 1, i32 0, i32 0, i32 0, i32* null)
  %34 = call i32 @msleep(i32 3)
  %35 = load %struct.gspca_dev*, %struct.gspca_dev** %5, align 8
  %36 = call i32 @ctrl_out(%struct.gspca_dev* %35, i32 64, i32 1, i32 16, i32 16, i32 0, i32* null)
  %37 = call i32 @msleep(i32 3)
  %38 = load %struct.gspca_dev*, %struct.gspca_dev** %5, align 8
  %39 = call i32 @ctrl_out(%struct.gspca_dev* %38, i32 64, i32 1, i32 8, i32 192, i32 0, i32* null)
  %40 = call i32 @msleep(i32 3)
  %41 = load %struct.gspca_dev*, %struct.gspca_dev** %5, align 8
  %42 = call i32 @ctrl_out(%struct.gspca_dev* %41, i32 64, i32 1, i32 1, i32 193, i32 0, i32* null)
  %43 = call i32 @msleep(i32 3)
  %44 = load %struct.gspca_dev*, %struct.gspca_dev** %5, align 8
  %45 = call i32 @ctrl_out(%struct.gspca_dev* %44, i32 64, i32 1, i32 1, i32 194, i32 0, i32* null)
  %46 = call i32 @msleep(i32 3)
  %47 = load %struct.gspca_dev*, %struct.gspca_dev** %5, align 8
  %48 = call i32 @ctrl_out(%struct.gspca_dev* %47, i32 64, i32 1, i32 32, i32 6, i32 0, i32* null)
  %49 = call i32 @msleep(i32 3)
  %50 = load %struct.gspca_dev*, %struct.gspca_dev** %5, align 8
  %51 = call i32 @ctrl_out(%struct.gspca_dev* %50, i32 64, i32 1, i32 106, i32 13, i32 0, i32* null)
  %52 = call i32 @msleep(i32 56)
  %53 = load i32, i32* @D_PROBE, align 4
  %54 = call i32 (i32, i8*, ...) @PDEBUG(i32 %53, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  br label %55

55:                                               ; preds = %79, %27
  %56 = load i32, i32* %13, align 4
  %57 = icmp slt i32 %56, 4
  br i1 %57, label %58, label %82

58:                                               ; preds = %55
  %59 = load %struct.gspca_dev*, %struct.gspca_dev** %5, align 8
  %60 = call i32 @ctrl_out(%struct.gspca_dev* %59, i32 64, i32 1, i32 64, i32 0, i32 0, i32* null)
  %61 = call i32 @msleep(i32 3)
  %62 = load %struct.gspca_dev*, %struct.gspca_dev** %5, align 8
  %63 = call i32 @ctrl_out(%struct.gspca_dev* %62, i32 64, i32 1, i32 99, i32 6, i32 0, i32* null)
  %64 = call i32 @msleep(i32 3)
  %65 = load %struct.gspca_dev*, %struct.gspca_dev** %5, align 8
  %66 = call i32 @ctrl_out(%struct.gspca_dev* %65, i32 64, i32 1, i32 31232, i32 32816, i32 0, i32* null)
  %67 = call i32 @msleep(i32 10)
  %68 = load %struct.gspca_dev*, %struct.gspca_dev** %5, align 8
  %69 = call i32 @ctrl_in(%struct.gspca_dev* %68, i32 192, i32 2, i32 31232, i32 32816, i32 1, i32* %9)
  %70 = load i32, i32* @D_PROBE, align 4
  %71 = load i32, i32* %9, align 4
  %72 = call i32 (i32, i8*, ...) @PDEBUG(i32 %70, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i32 %71)
  %73 = load i32, i32* %9, align 4
  %74 = icmp eq i32 %73, 255
  br i1 %74, label %75, label %78

75:                                               ; preds = %58
  %76 = load i32, i32* %12, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %12, align 4
  br label %78

78:                                               ; preds = %75, %58
  br label %79

79:                                               ; preds = %78
  %80 = load i32, i32* %13, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %13, align 4
  br label %55

82:                                               ; preds = %55
  %83 = load i32, i32* %12, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %159

85:                                               ; preds = %82
  %86 = load i32, i32* @D_PROBE, align 4
  %87 = call i32 (i32, i8*, ...) @PDEBUG(i32 %86, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0))
  %88 = load i32, i32* @D_PROBE, align 4
  %89 = call i32 (i32, i8*, ...) @PDEBUG(i32 %88, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0))
  store i32 0, i32* %11, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %13, align 4
  br label %90

90:                                               ; preds = %148, %85
  %91 = load i32, i32* %13, align 4
  %92 = icmp slt i32 %91, 4
  br i1 %92, label %93, label %151

93:                                               ; preds = %90
  %94 = load %struct.gspca_dev*, %struct.gspca_dev** %5, align 8
  %95 = call i32 @ctrl_out(%struct.gspca_dev* %94, i32 64, i32 1, i32 64, i32 0, i32 0, i32* null)
  %96 = call i32 @msleep(i32 3)
  %97 = load %struct.gspca_dev*, %struct.gspca_dev** %5, align 8
  %98 = call i32 @ctrl_out(%struct.gspca_dev* %97, i32 64, i32 1, i32 24576, i32 32778, i32 0, i32* null)
  %99 = call i32 @msleep(i32 10)
  %100 = load %struct.gspca_dev*, %struct.gspca_dev** %5, align 8
  %101 = call i32 @ctrl_in(%struct.gspca_dev* %100, i32 192, i32 2, i32 24576, i32 32778, i32 1, i32* %9)
  %102 = load i32, i32* %9, align 4
  %103 = icmp eq i32 %102, 38
  br i1 %103, label %107, label %104

104:                                              ; preds = %93
  %105 = load i32, i32* %9, align 4
  %106 = icmp eq i32 %105, 64
  br i1 %106, label %107, label %116

107:                                              ; preds = %104, %93
  %108 = load i32, i32* @D_PROBE, align 4
  %109 = load i32, i32* %9, align 4
  %110 = call i32 (i32, i8*, ...) @PDEBUG(i32 %108, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0), i32 %109)
  %111 = load i32, i32* @ID_OV2640, align 4
  %112 = load %struct.sd*, %struct.sd** %8, align 8
  %113 = getelementptr inbounds %struct.sd, %struct.sd* %112, i32 0, i32 0
  store i32 %111, i32* %113, align 4
  %114 = load i32, i32* %10, align 4
  %115 = add nsw i32 %114, 4
  store i32 %115, i32* %10, align 4
  br label %151

116:                                              ; preds = %104
  %117 = load i32, i32* %9, align 4
  %118 = icmp eq i32 %117, 150
  br i1 %118, label %122, label %119

119:                                              ; preds = %116
  %120 = load i32, i32* %9, align 4
  %121 = icmp eq i32 %120, 85
  br i1 %121, label %122, label %131

122:                                              ; preds = %119, %116
  %123 = load i32, i32* @D_PROBE, align 4
  %124 = load i32, i32* %9, align 4
  %125 = call i32 (i32, i8*, ...) @PDEBUG(i32 %123, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i64 0, i64 0), i32 %124)
  %126 = load i32, i32* @ID_OV9655, align 4
  %127 = load %struct.sd*, %struct.sd** %8, align 8
  %128 = getelementptr inbounds %struct.sd, %struct.sd* %127, i32 0, i32 0
  store i32 %126, i32* %128, align 4
  %129 = load i32, i32* %11, align 4
  %130 = add nsw i32 %129, 4
  store i32 %130, i32* %11, align 4
  br label %151

131:                                              ; preds = %119
  %132 = load i32, i32* @D_PROBE, align 4
  %133 = load i32, i32* %9, align 4
  %134 = call i32 (i32, i8*, ...) @PDEBUG(i32 %132, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i32 %133)
  %135 = load i32, i32* %9, align 4
  %136 = icmp eq i32 %135, 0
  br i1 %136, label %137, label %140

137:                                              ; preds = %131
  %138 = load i32, i32* %10, align 4
  %139 = add nsw i32 %138, 1
  store i32 %139, i32* %10, align 4
  br label %140

140:                                              ; preds = %137, %131
  %141 = load i32, i32* %9, align 4
  %142 = icmp eq i32 %141, 255
  br i1 %142, label %143, label %146

143:                                              ; preds = %140
  %144 = load i32, i32* %11, align 4
  %145 = add nsw i32 %144, 1
  store i32 %145, i32* %11, align 4
  br label %146

146:                                              ; preds = %143, %140
  %147 = call i32 @msleep(i32 3)
  br label %148

148:                                              ; preds = %146
  %149 = load i32, i32* %13, align 4
  %150 = add nsw i32 %149, 1
  store i32 %150, i32* %13, align 4
  br label %90

151:                                              ; preds = %122, %107, %90
  %152 = load i32, i32* %10, align 4
  %153 = icmp slt i32 %152, 4
  br i1 %153, label %154, label %158

154:                                              ; preds = %151
  %155 = load i32, i32* %11, align 4
  %156 = icmp slt i32 %155, 4
  br i1 %156, label %157, label %158

157:                                              ; preds = %154
  store i32 -1, i32* %4, align 4
  br label %197

158:                                              ; preds = %154, %151
  br label %165

159:                                              ; preds = %82
  %160 = load i32, i32* @D_PROBE, align 4
  %161 = call i32 (i32, i8*, ...) @PDEBUG(i32 %160, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.6, i64 0, i64 0))
  %162 = load i32, i32* @ID_MI2020, align 4
  %163 = load %struct.sd*, %struct.sd** %8, align 8
  %164 = getelementptr inbounds %struct.sd, %struct.sd* %163, i32 0, i32 0
  store i32 %162, i32* %164, align 4
  br label %165

165:                                              ; preds = %159, %158
  br label %166

166:                                              ; preds = %165, %22
  %167 = load i64, i64* @_MI1320_, align 8
  %168 = icmp ne i64 %167, 0
  br i1 %168, label %169, label %172

169:                                              ; preds = %166
  %170 = load i32, i32* @D_PROBE, align 4
  %171 = call i32 (i32, i8*, ...) @PDEBUG(i32 %170, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.7, i64 0, i64 0))
  br label %196

172:                                              ; preds = %166
  %173 = load i64, i64* @_MI2020_, align 8
  %174 = icmp ne i64 %173, 0
  br i1 %174, label %175, label %178

175:                                              ; preds = %172
  %176 = load i32, i32* @D_PROBE, align 4
  %177 = call i32 (i32, i8*, ...) @PDEBUG(i32 %176, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.8, i64 0, i64 0))
  br label %195

178:                                              ; preds = %172
  %179 = load i64, i64* @_OV9655_, align 8
  %180 = icmp ne i64 %179, 0
  br i1 %180, label %181, label %184

181:                                              ; preds = %178
  %182 = load i32, i32* @D_PROBE, align 4
  %183 = call i32 (i32, i8*, ...) @PDEBUG(i32 %182, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.9, i64 0, i64 0))
  br label %194

184:                                              ; preds = %178
  %185 = load i64, i64* @_OV2640_, align 8
  %186 = icmp ne i64 %185, 0
  br i1 %186, label %187, label %190

187:                                              ; preds = %184
  %188 = load i32, i32* @D_PROBE, align 4
  %189 = call i32 (i32, i8*, ...) @PDEBUG(i32 %188, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.10, i64 0, i64 0))
  br label %193

190:                                              ; preds = %184
  %191 = load i32, i32* @D_PROBE, align 4
  %192 = call i32 (i32, i8*, ...) @PDEBUG(i32 %191, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.11, i64 0, i64 0))
  store i32 -1, i32* %4, align 4
  br label %197

193:                                              ; preds = %187
  br label %194

194:                                              ; preds = %193, %181
  br label %195

195:                                              ; preds = %194, %175
  br label %196

196:                                              ; preds = %195, %169
  store i32 0, i32* %4, align 4
  br label %197

197:                                              ; preds = %196, %190, %157
  %198 = load i32, i32* %4, align 4
  ret i32 %198
}

declare dso_local i32 @ctrl_in(%struct.gspca_dev*, i32, i32, i32, i32, i32, i32*) #1

declare dso_local i32 @ctrl_out(%struct.gspca_dev*, i32, i32, i32, i32, i32, i32*) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @PDEBUG(i32, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
