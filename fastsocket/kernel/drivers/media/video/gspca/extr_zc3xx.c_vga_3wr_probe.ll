; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/gspca/extr_zc3xx.c_vga_3wr_probe.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/gspca/extr_zc3xx.c_vga_3wr_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }
%struct.gspca_dev = type { i32 }
%struct.sd = type { i32 }

@D_PROBE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"probe 3wr vga 1 0x%04x\00", align 1
@chipset_revision_sensor = common dso_local global %struct.TYPE_3__* null, align 8
@SENSOR_PB0330 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"probe 3wr vga type 0a\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"probe 3wr vga type %02x\00", align 1
@SENSOR_GC0305 = common dso_local global i32 0, align 4
@SENSOR_OV7620 = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [23 x i8] c"probe 3wr vga 2 0x%04x\00", align 1
@.str.4 = private unnamed_addr constant [25 x i8] c"sensor PO2030 rev 0x%02x\00", align 1
@SENSOR_PO2030 = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [34 x i8] c"probe 3wr vga type 0a ? ret: %04x\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gspca_dev*)* @vga_3wr_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vga_3wr_probe(%struct.gspca_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.gspca_dev*, align 8
  %4 = alloca %struct.sd*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.gspca_dev* %0, %struct.gspca_dev** %3, align 8
  %8 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %9 = bitcast %struct.gspca_dev* %8 to %struct.sd*
  store %struct.sd* %9, %struct.sd** %4, align 8
  %10 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %11 = call i32 @reg_w(%struct.gspca_dev* %10, i32 2, i32 16)
  %12 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %13 = call i32 @reg_r(%struct.gspca_dev* %12, i32 16)
  %14 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %15 = call i32 @reg_w(%struct.gspca_dev* %14, i32 1, i32 0)
  %16 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %17 = call i32 @reg_w(%struct.gspca_dev* %16, i32 0, i32 16)
  %18 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %19 = call i32 @reg_w(%struct.gspca_dev* %18, i32 1, i32 1)
  %20 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %21 = call i32 @reg_w(%struct.gspca_dev* %20, i32 145, i32 139)
  %22 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %23 = call i32 @reg_w(%struct.gspca_dev* %22, i32 3, i32 18)
  %24 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %25 = call i32 @reg_w(%struct.gspca_dev* %24, i32 1, i32 18)
  %26 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %27 = call i32 @reg_w(%struct.gspca_dev* %26, i32 5, i32 18)
  %28 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %29 = call i32 @i2c_read(%struct.gspca_dev* %28, i32 20)
  store i32 %29, i32* %7, align 4
  %30 = load i32, i32* %7, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %1
  store i32 17, i32* %2, align 4
  br label %241

33:                                               ; preds = %1
  %34 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %35 = call i32 @i2c_read(%struct.gspca_dev* %34, i32 21)
  store i32 %35, i32* %7, align 4
  %36 = load i32, i32* %7, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %33
  store i32 17, i32* %2, align 4
  br label %241

39:                                               ; preds = %33
  %40 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %41 = call i32 @i2c_read(%struct.gspca_dev* %40, i32 22)
  store i32 %41, i32* %7, align 4
  %42 = load i32, i32* %7, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %39
  store i32 17, i32* %2, align 4
  br label %241

45:                                               ; preds = %39
  %46 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %47 = call i32 @reg_w(%struct.gspca_dev* %46, i32 2, i32 16)
  %48 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %49 = call i32 @reg_r(%struct.gspca_dev* %48, i32 11)
  %50 = shl i32 %49, 8
  store i32 %50, i32* %7, align 4
  %51 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %52 = call i32 @reg_r(%struct.gspca_dev* %51, i32 10)
  %53 = load i32, i32* %7, align 4
  %54 = or i32 %53, %52
  store i32 %54, i32* %7, align 4
  %55 = load i32, i32* @D_PROBE, align 4
  %56 = load i32, i32* %7, align 4
  %57 = call i32 (i32, i8*, ...) @PDEBUG(i32 %55, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %56)
  %58 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %59 = call i32 @reg_r(%struct.gspca_dev* %58, i32 16)
  %60 = load i32, i32* %7, align 4
  %61 = and i32 %60, 65280
  %62 = icmp eq i32 %61, 25600
  br i1 %62, label %63, label %64

63:                                               ; preds = %45
  store i32 2, i32* %2, align 4
  br label %241

64:                                               ; preds = %45
  store i32 0, i32* %5, align 4
  br label %65

65:                                               ; preds = %93, %64
  %66 = load i32, i32* %5, align 4
  %67 = load %struct.TYPE_3__*, %struct.TYPE_3__** @chipset_revision_sensor, align 8
  %68 = call i32 @ARRAY_SIZE(%struct.TYPE_3__* %67)
  %69 = icmp slt i32 %66, %68
  br i1 %69, label %70, label %96

70:                                               ; preds = %65
  %71 = load %struct.TYPE_3__*, %struct.TYPE_3__** @chipset_revision_sensor, align 8
  %72 = load i32, i32* %5, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %71, i64 %73
  %75 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = load i32, i32* %7, align 4
  %78 = icmp eq i32 %76, %77
  br i1 %78, label %79, label %92

79:                                               ; preds = %70
  %80 = load i32, i32* %7, align 4
  %81 = load %struct.sd*, %struct.sd** %4, align 8
  %82 = getelementptr inbounds %struct.sd, %struct.sd* %81, i32 0, i32 0
  store i32 %80, i32* %82, align 4
  %83 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %84 = load i32, i32* @SENSOR_PB0330, align 4
  %85 = call i32 @send_unknown(%struct.gspca_dev* %83, i32 %84)
  %86 = load %struct.TYPE_3__*, %struct.TYPE_3__** @chipset_revision_sensor, align 8
  %87 = load i32, i32* %5, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %86, i64 %88
  %90 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  store i32 %91, i32* %2, align 4
  br label %241

92:                                               ; preds = %70
  br label %93

93:                                               ; preds = %92
  %94 = load i32, i32* %5, align 4
  %95 = add nsw i32 %94, 1
  store i32 %95, i32* %5, align 4
  br label %65

96:                                               ; preds = %65
  %97 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %98 = call i32 @reg_w(%struct.gspca_dev* %97, i32 1, i32 0)
  %99 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %100 = call i32 @reg_w(%struct.gspca_dev* %99, i32 1, i32 1)
  %101 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %102 = call i32 @reg_w(%struct.gspca_dev* %101, i32 221, i32 139)
  %103 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %104 = call i32 @reg_w(%struct.gspca_dev* %103, i32 10, i32 16)
  %105 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %106 = call i32 @reg_w(%struct.gspca_dev* %105, i32 3, i32 18)
  %107 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %108 = call i32 @reg_w(%struct.gspca_dev* %107, i32 1, i32 18)
  %109 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %110 = call i32 @i2c_read(%struct.gspca_dev* %109, i32 0)
  store i32 %110, i32* %7, align 4
  %111 = load i32, i32* %7, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %116

113:                                              ; preds = %96
  %114 = load i32, i32* @D_PROBE, align 4
  %115 = call i32 (i32, i8*, ...) @PDEBUG(i32 %114, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  store i32 10, i32* %2, align 4
  br label %241

116:                                              ; preds = %96
  %117 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %118 = call i32 @reg_w(%struct.gspca_dev* %117, i32 1, i32 0)
  %119 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %120 = call i32 @reg_w(%struct.gspca_dev* %119, i32 1, i32 1)
  %121 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %122 = call i32 @reg_w(%struct.gspca_dev* %121, i32 152, i32 139)
  %123 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %124 = call i32 @reg_w(%struct.gspca_dev* %123, i32 1, i32 16)
  %125 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %126 = call i32 @reg_w(%struct.gspca_dev* %125, i32 3, i32 18)
  %127 = call i32 @msleep(i32 2)
  %128 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %129 = call i32 @reg_w(%struct.gspca_dev* %128, i32 1, i32 18)
  %130 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %131 = call i32 @i2c_read(%struct.gspca_dev* %130, i32 0)
  store i32 %131, i32* %7, align 4
  %132 = load i32, i32* %7, align 4
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %150

134:                                              ; preds = %116
  %135 = load i32, i32* @D_PROBE, align 4
  %136 = load i32, i32* %7, align 4
  %137 = call i32 (i32, i8*, ...) @PDEBUG(i32 %135, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0), i32 %136)
  %138 = load i32, i32* %7, align 4
  %139 = icmp eq i32 %138, 17
  br i1 %139, label %140, label %141

140:                                              ; preds = %134
  store i32 771, i32* %2, align 4
  br label %241

141:                                              ; preds = %134
  %142 = load i32, i32* %7, align 4
  %143 = icmp eq i32 %142, 41
  br i1 %143, label %144, label %148

144:                                              ; preds = %141
  %145 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %146 = load i32, i32* @SENSOR_GC0305, align 4
  %147 = call i32 @send_unknown(%struct.gspca_dev* %145, i32 %146)
  br label %148

148:                                              ; preds = %144, %141
  %149 = load i32, i32* %7, align 4
  store i32 %149, i32* %2, align 4
  br label %241

150:                                              ; preds = %116
  %151 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %152 = call i32 @reg_w(%struct.gspca_dev* %151, i32 1, i32 0)
  %153 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %154 = call i32 @reg_w(%struct.gspca_dev* %153, i32 1, i32 1)
  %155 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %156 = call i32 @reg_w(%struct.gspca_dev* %155, i32 161, i32 139)
  %157 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %158 = call i32 @reg_w(%struct.gspca_dev* %157, i32 8, i32 141)
  %159 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %160 = call i32 @reg_w(%struct.gspca_dev* %159, i32 6, i32 16)
  %161 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %162 = call i32 @reg_w(%struct.gspca_dev* %161, i32 1, i32 18)
  %163 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %164 = call i32 @reg_w(%struct.gspca_dev* %163, i32 5, i32 18)
  %165 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %166 = call i32 @i2c_read(%struct.gspca_dev* %165, i32 28)
  %167 = icmp eq i32 %166, 127
  br i1 %167, label %168, label %176

168:                                              ; preds = %150
  %169 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %170 = call i32 @i2c_read(%struct.gspca_dev* %169, i32 29)
  %171 = icmp eq i32 %170, 162
  br i1 %171, label %172, label %176

172:                                              ; preds = %168
  %173 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %174 = load i32, i32* @SENSOR_OV7620, align 4
  %175 = call i32 @send_unknown(%struct.gspca_dev* %173, i32 %174)
  store i32 6, i32* %2, align 4
  br label %241

176:                                              ; preds = %168, %150
  %177 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %178 = call i32 @reg_w(%struct.gspca_dev* %177, i32 1, i32 0)
  %179 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %180 = call i32 @reg_w(%struct.gspca_dev* %179, i32 0, i32 2)
  %181 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %182 = call i32 @reg_w(%struct.gspca_dev* %181, i32 1, i32 16)
  %183 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %184 = call i32 @reg_w(%struct.gspca_dev* %183, i32 1, i32 1)
  %185 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %186 = call i32 @reg_w(%struct.gspca_dev* %185, i32 238, i32 139)
  %187 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %188 = call i32 @reg_w(%struct.gspca_dev* %187, i32 3, i32 18)
  %189 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %190 = call i32 @reg_w(%struct.gspca_dev* %189, i32 1, i32 18)
  %191 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %192 = call i32 @reg_w(%struct.gspca_dev* %191, i32 5, i32 18)
  %193 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %194 = call i32 @i2c_read(%struct.gspca_dev* %193, i32 0)
  %195 = shl i32 %194, 8
  store i32 %195, i32* %7, align 4
  %196 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %197 = call i32 @i2c_read(%struct.gspca_dev* %196, i32 1)
  %198 = load i32, i32* %7, align 4
  %199 = or i32 %198, %197
  store i32 %199, i32* %7, align 4
  %200 = load i32, i32* @D_PROBE, align 4
  %201 = load i32, i32* %7, align 4
  %202 = call i32 (i32, i8*, ...) @PDEBUG(i32 %200, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0), i32 %201)
  %203 = load i32, i32* %7, align 4
  %204 = icmp eq i32 %203, 8240
  br i1 %204, label %205, label %215

205:                                              ; preds = %176
  %206 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %207 = call i32 @i2c_read(%struct.gspca_dev* %206, i32 2)
  store i32 %207, i32* %6, align 4
  %208 = load i32, i32* @D_PROBE, align 4
  %209 = load i32, i32* %6, align 4
  %210 = call i32 (i32, i8*, ...) @PDEBUG(i32 %208, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0), i32 %209)
  %211 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %212 = load i32, i32* @SENSOR_PO2030, align 4
  %213 = call i32 @send_unknown(%struct.gspca_dev* %211, i32 %212)
  %214 = load i32, i32* %7, align 4
  store i32 %214, i32* %2, align 4
  br label %241

215:                                              ; preds = %176
  %216 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %217 = call i32 @reg_w(%struct.gspca_dev* %216, i32 1, i32 0)
  %218 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %219 = call i32 @reg_w(%struct.gspca_dev* %218, i32 10, i32 16)
  %220 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %221 = call i32 @reg_w(%struct.gspca_dev* %220, i32 211, i32 139)
  %222 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %223 = call i32 @reg_w(%struct.gspca_dev* %222, i32 1, i32 1)
  %224 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %225 = call i32 @reg_w(%struct.gspca_dev* %224, i32 3, i32 18)
  %226 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %227 = call i32 @reg_w(%struct.gspca_dev* %226, i32 1, i32 18)
  %228 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %229 = call i32 @reg_w(%struct.gspca_dev* %228, i32 5, i32 18)
  %230 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %231 = call i32 @reg_w(%struct.gspca_dev* %230, i32 211, i32 139)
  %232 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %233 = call i32 @i2c_read(%struct.gspca_dev* %232, i32 1)
  store i32 %233, i32* %7, align 4
  %234 = load i32, i32* %7, align 4
  %235 = icmp ne i32 %234, 0
  br i1 %235, label %236, label %240

236:                                              ; preds = %215
  %237 = load i32, i32* @D_PROBE, align 4
  %238 = load i32, i32* %7, align 4
  %239 = call i32 (i32, i8*, ...) @PDEBUG(i32 %237, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.5, i64 0, i64 0), i32 %238)
  store i32 22, i32* %2, align 4
  br label %241

240:                                              ; preds = %215
  store i32 -1, i32* %2, align 4
  br label %241

241:                                              ; preds = %240, %236, %205, %172, %148, %140, %113, %79, %63, %44, %38, %32
  %242 = load i32, i32* %2, align 4
  ret i32 %242
}

declare dso_local i32 @reg_w(%struct.gspca_dev*, i32, i32) #1

declare dso_local i32 @reg_r(%struct.gspca_dev*, i32) #1

declare dso_local i32 @i2c_read(%struct.gspca_dev*, i32) #1

declare dso_local i32 @PDEBUG(i32, i8*, ...) #1

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_3__*) #1

declare dso_local i32 @send_unknown(%struct.gspca_dev*, i32) #1

declare dso_local i32 @msleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
