; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_scsi_error.c_scsi_check_sense.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_scsi_error.c_scsi_check_sense.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_cmnd = type { i32*, %struct.scsi_device* }
%struct.scsi_device = type { i32, i32, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 (%struct.scsi_device*, %struct.scsi_sense_hdr*)* }
%struct.scsi_sense_hdr = type { i32, i32, i32, i32, i32 }

@FAILED = common dso_local global i32 0, align 4
@NEEDS_RETRY = common dso_local global i32 0, align 4
@SCSI_RETURN_NOT_HANDLED = common dso_local global i32 0, align 4
@SUCCESS = common dso_local global i32 0, align 4
@KERN_WARNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [154 x i8] c"Warning! Received an indication that the LUN assignments on this target have changed. The Linux SCSI layer does not automatically remap LUN assignments.\0A\00", align 1
@.str.1 = private unnamed_addr constant [161 x i8] c"Warning! Received an indication that the operating parameters on this target have changed. The Linux SCSI layer does not automatically adjust these parameters.\0A\00", align 1
@.str.2 = private unnamed_addr constant [90 x i8] c"Warning! Received an indication that the LUN reached a thin provisioning soft threshold.\0A\00", align 1
@TARGET_ERROR = common dso_local global i32 0, align 4
@ADD_TO_MLQUEUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.scsi_cmnd*)* @scsi_check_sense to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @scsi_check_sense(%struct.scsi_cmnd* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.scsi_cmnd*, align 8
  %4 = alloca %struct.scsi_device*, align 8
  %5 = alloca %struct.scsi_sense_hdr, align 4
  %6 = alloca i32, align 4
  store %struct.scsi_cmnd* %0, %struct.scsi_cmnd** %3, align 8
  %7 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %8 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %7, i32 0, i32 1
  %9 = load %struct.scsi_device*, %struct.scsi_device** %8, align 8
  store %struct.scsi_device* %9, %struct.scsi_device** %4, align 8
  %10 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %11 = call i32 @scsi_command_normalize_sense(%struct.scsi_cmnd* %10, %struct.scsi_sense_hdr* %5)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %15, label %13

13:                                               ; preds = %1
  %14 = load i32, i32* @FAILED, align 4
  store i32 %14, i32* %2, align 4
  br label %244

15:                                               ; preds = %1
  %16 = call i64 @scsi_sense_is_deferred(%struct.scsi_sense_hdr* %5)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %15
  %19 = load i32, i32* @NEEDS_RETRY, align 4
  store i32 %19, i32* %2, align 4
  br label %244

20:                                               ; preds = %15
  %21 = load %struct.scsi_device*, %struct.scsi_device** %4, align 8
  %22 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %21, i32 0, i32 3
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %22, align 8
  %24 = icmp ne %struct.TYPE_4__* %23, null
  br i1 %24, label %25, label %57

25:                                               ; preds = %20
  %26 = load %struct.scsi_device*, %struct.scsi_device** %4, align 8
  %27 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %26, i32 0, i32 3
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %29, align 8
  %31 = icmp ne %struct.TYPE_3__* %30, null
  br i1 %31, label %32, label %57

32:                                               ; preds = %25
  %33 = load %struct.scsi_device*, %struct.scsi_device** %4, align 8
  %34 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %33, i32 0, i32 3
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 0
  %39 = load i32 (%struct.scsi_device*, %struct.scsi_sense_hdr*)*, i32 (%struct.scsi_device*, %struct.scsi_sense_hdr*)** %38, align 8
  %40 = icmp ne i32 (%struct.scsi_device*, %struct.scsi_sense_hdr*)* %39, null
  br i1 %40, label %41, label %57

41:                                               ; preds = %32
  %42 = load %struct.scsi_device*, %struct.scsi_device** %4, align 8
  %43 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %42, i32 0, i32 3
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  %46 = load %struct.TYPE_3__*, %struct.TYPE_3__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 0
  %48 = load i32 (%struct.scsi_device*, %struct.scsi_sense_hdr*)*, i32 (%struct.scsi_device*, %struct.scsi_sense_hdr*)** %47, align 8
  %49 = load %struct.scsi_device*, %struct.scsi_device** %4, align 8
  %50 = call i32 %48(%struct.scsi_device* %49, %struct.scsi_sense_hdr* %5)
  store i32 %50, i32* %6, align 4
  %51 = load i32, i32* %6, align 4
  %52 = load i32, i32* @SCSI_RETURN_NOT_HANDLED, align 4
  %53 = icmp ne i32 %51, %52
  br i1 %53, label %54, label %56

54:                                               ; preds = %41
  %55 = load i32, i32* %6, align 4
  store i32 %55, i32* %2, align 4
  br label %244

56:                                               ; preds = %41
  br label %57

57:                                               ; preds = %56, %32, %25, %20
  %58 = getelementptr inbounds %struct.scsi_sense_hdr, %struct.scsi_sense_hdr* %5, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = icmp eq i32 %59, 112
  br i1 %60, label %61, label %72

61:                                               ; preds = %57
  %62 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %63 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %62, i32 0, i32 0
  %64 = load i32*, i32** %63, align 8
  %65 = getelementptr inbounds i32, i32* %64, i64 2
  %66 = load i32, i32* %65, align 4
  %67 = and i32 %66, 224
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %71

69:                                               ; preds = %61
  %70 = load i32, i32* @SUCCESS, align 4
  store i32 %70, i32* %2, align 4
  br label %244

71:                                               ; preds = %61
  br label %94

72:                                               ; preds = %57
  %73 = getelementptr inbounds %struct.scsi_sense_hdr, %struct.scsi_sense_hdr* %5, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = icmp sgt i32 %74, 3
  br i1 %75, label %76, label %93

76:                                               ; preds = %72
  %77 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %78 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %77, i32 0, i32 0
  %79 = load i32*, i32** %78, align 8
  %80 = getelementptr inbounds i32, i32* %79, i64 8
  %81 = load i32, i32* %80, align 4
  %82 = icmp eq i32 %81, 4
  br i1 %82, label %83, label %93

83:                                               ; preds = %76
  %84 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %85 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %84, i32 0, i32 0
  %86 = load i32*, i32** %85, align 8
  %87 = getelementptr inbounds i32, i32* %86, i64 11
  %88 = load i32, i32* %87, align 4
  %89 = and i32 %88, 224
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %93

91:                                               ; preds = %83
  %92 = load i32, i32* @SUCCESS, align 4
  store i32 %92, i32* %2, align 4
  br label %244

93:                                               ; preds = %83, %76, %72
  br label %94

94:                                               ; preds = %93, %71
  %95 = getelementptr inbounds %struct.scsi_sense_hdr, %struct.scsi_sense_hdr* %5, i32 0, i32 2
  %96 = load i32, i32* %95, align 4
  switch i32 %96, label %242 [
    i32 131, label %97
    i32 130, label %99
    i32 140, label %101
    i32 132, label %109
    i32 129, label %109
    i32 138, label %193
    i32 128, label %193
    i32 133, label %193
    i32 139, label %193
    i32 137, label %193
    i32 134, label %195
    i32 136, label %211
    i32 135, label %222
  ]

97:                                               ; preds = %94
  %98 = load i32, i32* @SUCCESS, align 4
  store i32 %98, i32* %2, align 4
  br label %244

99:                                               ; preds = %94
  %100 = load i32, i32* @SUCCESS, align 4
  store i32 %100, i32* %2, align 4
  br label %244

101:                                              ; preds = %94
  %102 = getelementptr inbounds %struct.scsi_sense_hdr, %struct.scsi_sense_hdr* %5, i32 0, i32 3
  %103 = load i32, i32* %102, align 4
  %104 = icmp eq i32 %103, 16
  br i1 %104, label %105, label %107

105:                                              ; preds = %101
  %106 = load i32, i32* @SUCCESS, align 4
  store i32 %106, i32* %2, align 4
  br label %244

107:                                              ; preds = %101
  %108 = load i32, i32* @NEEDS_RETRY, align 4
  store i32 %108, i32* %2, align 4
  br label %244

109:                                              ; preds = %94, %94
  %110 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %111 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %110, i32 0, i32 1
  %112 = load %struct.scsi_device*, %struct.scsi_device** %111, align 8
  %113 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %112, i32 0, i32 2
  %114 = load i32, i32* %113, align 8
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %131

116:                                              ; preds = %109
  %117 = getelementptr inbounds %struct.scsi_sense_hdr, %struct.scsi_sense_hdr* %5, i32 0, i32 3
  %118 = load i32, i32* %117, align 4
  %119 = icmp ne i32 %118, 40
  br i1 %119, label %124, label %120

120:                                              ; preds = %116
  %121 = getelementptr inbounds %struct.scsi_sense_hdr, %struct.scsi_sense_hdr* %5, i32 0, i32 4
  %122 = load i32, i32* %121, align 4
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %130

124:                                              ; preds = %120, %116
  %125 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %126 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %125, i32 0, i32 1
  %127 = load %struct.scsi_device*, %struct.scsi_device** %126, align 8
  %128 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %127, i32 0, i32 2
  store i32 0, i32* %128, align 8
  %129 = load i32, i32* @NEEDS_RETRY, align 4
  store i32 %129, i32* %2, align 4
  br label %244

130:                                              ; preds = %120
  br label %131

131:                                              ; preds = %130, %109
  %132 = getelementptr inbounds %struct.scsi_sense_hdr, %struct.scsi_sense_hdr* %5, i32 0, i32 3
  %133 = load i32, i32* %132, align 4
  %134 = icmp eq i32 %133, 4
  br i1 %134, label %135, label %141

135:                                              ; preds = %131
  %136 = getelementptr inbounds %struct.scsi_sense_hdr, %struct.scsi_sense_hdr* %5, i32 0, i32 4
  %137 = load i32, i32* %136, align 4
  %138 = icmp eq i32 %137, 1
  br i1 %138, label %139, label %141

139:                                              ; preds = %135
  %140 = load i32, i32* @NEEDS_RETRY, align 4
  store i32 %140, i32* %2, align 4
  br label %244

141:                                              ; preds = %135, %131
  %142 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %143 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %142, i32 0, i32 1
  %144 = load %struct.scsi_device*, %struct.scsi_device** %143, align 8
  %145 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %144, i32 0, i32 1
  %146 = load i32, i32* %145, align 4
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %158

148:                                              ; preds = %141
  %149 = getelementptr inbounds %struct.scsi_sense_hdr, %struct.scsi_sense_hdr* %5, i32 0, i32 3
  %150 = load i32, i32* %149, align 4
  %151 = icmp eq i32 %150, 4
  br i1 %151, label %152, label %158

152:                                              ; preds = %148
  %153 = getelementptr inbounds %struct.scsi_sense_hdr, %struct.scsi_sense_hdr* %5, i32 0, i32 4
  %154 = load i32, i32* %153, align 4
  %155 = icmp eq i32 %154, 2
  br i1 %155, label %156, label %158

156:                                              ; preds = %152
  %157 = load i32, i32* @FAILED, align 4
  store i32 %157, i32* %2, align 4
  br label %244

158:                                              ; preds = %152, %148, %141
  %159 = getelementptr inbounds %struct.scsi_sense_hdr, %struct.scsi_sense_hdr* %5, i32 0, i32 3
  %160 = load i32, i32* %159, align 4
  %161 = icmp eq i32 %160, 63
  br i1 %161, label %162, label %170

162:                                              ; preds = %158
  %163 = getelementptr inbounds %struct.scsi_sense_hdr, %struct.scsi_sense_hdr* %5, i32 0, i32 4
  %164 = load i32, i32* %163, align 4
  %165 = icmp eq i32 %164, 14
  br i1 %165, label %166, label %170

166:                                              ; preds = %162
  %167 = load i32, i32* @KERN_WARNING, align 4
  %168 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %169 = call i32 @scmd_printk(i32 %167, %struct.scsi_cmnd* %168, i8* getelementptr inbounds ([154 x i8], [154 x i8]* @.str, i64 0, i64 0))
  br label %179

170:                                              ; preds = %162, %158
  %171 = getelementptr inbounds %struct.scsi_sense_hdr, %struct.scsi_sense_hdr* %5, i32 0, i32 3
  %172 = load i32, i32* %171, align 4
  %173 = icmp eq i32 %172, 63
  br i1 %173, label %174, label %178

174:                                              ; preds = %170
  %175 = load i32, i32* @KERN_WARNING, align 4
  %176 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %177 = call i32 @scmd_printk(i32 %175, %struct.scsi_cmnd* %176, i8* getelementptr inbounds ([161 x i8], [161 x i8]* @.str.1, i64 0, i64 0))
  br label %178

178:                                              ; preds = %174, %170
  br label %179

179:                                              ; preds = %178, %166
  %180 = getelementptr inbounds %struct.scsi_sense_hdr, %struct.scsi_sense_hdr* %5, i32 0, i32 3
  %181 = load i32, i32* %180, align 4
  %182 = icmp eq i32 %181, 56
  br i1 %182, label %183, label %191

183:                                              ; preds = %179
  %184 = getelementptr inbounds %struct.scsi_sense_hdr, %struct.scsi_sense_hdr* %5, i32 0, i32 4
  %185 = load i32, i32* %184, align 4
  %186 = icmp eq i32 %185, 7
  br i1 %186, label %187, label %191

187:                                              ; preds = %183
  %188 = load i32, i32* @KERN_WARNING, align 4
  %189 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %190 = call i32 @scmd_printk(i32 %188, %struct.scsi_cmnd* %189, i8* getelementptr inbounds ([90 x i8], [90 x i8]* @.str.2, i64 0, i64 0))
  br label %191

191:                                              ; preds = %187, %183, %179
  %192 = load i32, i32* @SUCCESS, align 4
  store i32 %192, i32* %2, align 4
  br label %244

193:                                              ; preds = %94, %94, %94, %94, %94
  %194 = load i32, i32* @TARGET_ERROR, align 4
  store i32 %194, i32* %2, align 4
  br label %244

195:                                              ; preds = %94
  %196 = getelementptr inbounds %struct.scsi_sense_hdr, %struct.scsi_sense_hdr* %5, i32 0, i32 3
  %197 = load i32, i32* %196, align 4
  %198 = icmp eq i32 %197, 17
  br i1 %198, label %207, label %199

199:                                              ; preds = %195
  %200 = getelementptr inbounds %struct.scsi_sense_hdr, %struct.scsi_sense_hdr* %5, i32 0, i32 3
  %201 = load i32, i32* %200, align 4
  %202 = icmp eq i32 %201, 19
  br i1 %202, label %207, label %203

203:                                              ; preds = %199
  %204 = getelementptr inbounds %struct.scsi_sense_hdr, %struct.scsi_sense_hdr* %5, i32 0, i32 3
  %205 = load i32, i32* %204, align 4
  %206 = icmp eq i32 %205, 20
  br i1 %206, label %207, label %209

207:                                              ; preds = %203, %199, %195
  %208 = load i32, i32* @TARGET_ERROR, align 4
  store i32 %208, i32* %2, align 4
  br label %244

209:                                              ; preds = %203
  %210 = load i32, i32* @NEEDS_RETRY, align 4
  store i32 %210, i32* %2, align 4
  br label %244

211:                                              ; preds = %94
  %212 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %213 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %212, i32 0, i32 1
  %214 = load %struct.scsi_device*, %struct.scsi_device** %213, align 8
  %215 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %214, i32 0, i32 0
  %216 = load i32, i32* %215, align 8
  %217 = icmp ne i32 %216, 0
  br i1 %217, label %218, label %220

218:                                              ; preds = %211
  %219 = load i32, i32* @ADD_TO_MLQUEUE, align 4
  store i32 %219, i32* %2, align 4
  br label %244

220:                                              ; preds = %211
  %221 = load i32, i32* @TARGET_ERROR, align 4
  store i32 %221, i32* %2, align 4
  br label %244

222:                                              ; preds = %94
  %223 = getelementptr inbounds %struct.scsi_sense_hdr, %struct.scsi_sense_hdr* %5, i32 0, i32 3
  %224 = load i32, i32* %223, align 4
  %225 = icmp eq i32 %224, 32
  br i1 %225, label %238, label %226

226:                                              ; preds = %222
  %227 = getelementptr inbounds %struct.scsi_sense_hdr, %struct.scsi_sense_hdr* %5, i32 0, i32 3
  %228 = load i32, i32* %227, align 4
  %229 = icmp eq i32 %228, 33
  br i1 %229, label %238, label %230

230:                                              ; preds = %226
  %231 = getelementptr inbounds %struct.scsi_sense_hdr, %struct.scsi_sense_hdr* %5, i32 0, i32 3
  %232 = load i32, i32* %231, align 4
  %233 = icmp eq i32 %232, 36
  br i1 %233, label %238, label %234

234:                                              ; preds = %230
  %235 = getelementptr inbounds %struct.scsi_sense_hdr, %struct.scsi_sense_hdr* %5, i32 0, i32 3
  %236 = load i32, i32* %235, align 4
  %237 = icmp eq i32 %236, 38
  br i1 %237, label %238, label %240

238:                                              ; preds = %234, %230, %226, %222
  %239 = load i32, i32* @TARGET_ERROR, align 4
  store i32 %239, i32* %2, align 4
  br label %244

240:                                              ; preds = %234
  %241 = load i32, i32* @SUCCESS, align 4
  store i32 %241, i32* %2, align 4
  br label %244

242:                                              ; preds = %94
  %243 = load i32, i32* @SUCCESS, align 4
  store i32 %243, i32* %2, align 4
  br label %244

244:                                              ; preds = %242, %240, %238, %220, %218, %209, %207, %193, %191, %156, %139, %124, %107, %105, %99, %97, %91, %69, %54, %18, %13
  %245 = load i32, i32* %2, align 4
  ret i32 %245
}

declare dso_local i32 @scsi_command_normalize_sense(%struct.scsi_cmnd*, %struct.scsi_sense_hdr*) #1

declare dso_local i64 @scsi_sense_is_deferred(%struct.scsi_sense_hdr*) #1

declare dso_local i32 @scmd_printk(i32, %struct.scsi_cmnd*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
