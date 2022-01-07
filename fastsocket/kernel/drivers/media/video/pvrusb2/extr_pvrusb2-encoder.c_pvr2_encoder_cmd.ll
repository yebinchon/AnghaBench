; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/pvrusb2/extr_pvrusb2-encoder.c_pvr2_encoder_cmd.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/pvrusb2/extr_pvrusb2-encoder.c_pvr2_encoder_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pvr2_hdw = type { i32, i64, i64, i32 }

@PVR2_TRACE_ERROR_LEGS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [84 x i8] c"Failed to write cx23416 command - too many input arguments (was given %u limit %lu)\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [85 x i8] c"Failed to write cx23416 command - too many return arguments (was given %u limit %lu)\00", align 1
@EIO = common dso_local global i32 0, align 4
@MBOX_BASE = common dso_local global i32 0, align 4
@IVTV_MBOX_DRIVER_DONE = common dso_local global i32 0, align 4
@IVTV_MBOX_DRIVER_BUSY = common dso_local global i32 0, align 4
@IVTV_MBOX_FIRMWARE_DONE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [53 x i8] c"Encoder timed out waiting for us; arranging to retry\00", align 1
@.str.3 = private unnamed_addr constant [67 x i8] c"***WARNING*** device's encoder appears to be stuck (status=0x%08x)\00", align 1
@.str.4 = private unnamed_addr constant [24 x i8] c"Encoder command: 0x%02x\00", align 1
@.str.5 = private unnamed_addr constant [22 x i8] c"Encoder arg%d: 0x%08x\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [20 x i8] c"Too many retries...\00", align 1
@PVR2_TRACE_STBITS = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [20 x i8] c"State bit %s <-- %s\00", align 1
@.str.8 = private unnamed_addr constant [17 x i8] c"state_encoder_ok\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"true\00", align 1
@.str.10 = private unnamed_addr constant [6 x i8] c"false\00", align 1
@.str.11 = private unnamed_addr constant [20 x i8] c"state_encoder_runok\00", align 1
@.str.12 = private unnamed_addr constant [161 x i8] c"Giving up on command.  This is normally recovered via a firmware reload and re-initialization; concern is only warranted if this happens repeatedly and rapidly.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, i32, i32, i32*)* @pvr2_encoder_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pvr2_encoder_cmd(i8* %0, i32 %1, i32 %2, i32 %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca [16 x i32], align 16
  %18 = alloca [16 x i32], align 16
  %19 = alloca %struct.pvr2_hdw*, align 8
  store i8* %0, i8** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  store i32 0, i32* %13, align 4
  store i32 0, i32* %15, align 4
  %20 = load i8*, i8** %7, align 8
  %21 = bitcast i8* %20 to %struct.pvr2_hdw*
  store %struct.pvr2_hdw* %21, %struct.pvr2_hdw** %19, align 8
  %22 = load i32, i32* %9, align 4
  %23 = getelementptr inbounds [16 x i32], [16 x i32]* %17, i64 0, i64 0
  %24 = call i32 @ARRAY_SIZE(i32* %23)
  %25 = sub nsw i32 %24, 4
  %26 = icmp sgt i32 %22, %25
  br i1 %26, label %27, label %37

27:                                               ; preds = %5
  %28 = load i32, i32* @PVR2_TRACE_ERROR_LEGS, align 4
  %29 = load i32, i32* %9, align 4
  %30 = getelementptr inbounds [16 x i32], [16 x i32]* %17, i64 0, i64 0
  %31 = call i32 @ARRAY_SIZE(i32* %30)
  %32 = sext i32 %31 to i64
  %33 = sub i64 %32, 4
  %34 = call i32 (i32, i8*, ...) @pvr2_trace(i32 %28, i8* getelementptr inbounds ([84 x i8], [84 x i8]* @.str, i64 0, i64 0), i32 %29, i64 %33)
  %35 = load i32, i32* @EINVAL, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %6, align 4
  br label %272

37:                                               ; preds = %5
  %38 = load i32, i32* %10, align 4
  %39 = getelementptr inbounds [16 x i32], [16 x i32]* %18, i64 0, i64 0
  %40 = call i32 @ARRAY_SIZE(i32* %39)
  %41 = sub nsw i32 %40, 4
  %42 = icmp sgt i32 %38, %41
  br i1 %42, label %43, label %53

43:                                               ; preds = %37
  %44 = load i32, i32* @PVR2_TRACE_ERROR_LEGS, align 4
  %45 = load i32, i32* %10, align 4
  %46 = getelementptr inbounds [16 x i32], [16 x i32]* %18, i64 0, i64 0
  %47 = call i32 @ARRAY_SIZE(i32* %46)
  %48 = sext i32 %47 to i64
  %49 = sub i64 %48, 4
  %50 = call i32 (i32, i8*, ...) @pvr2_trace(i32 %44, i8* getelementptr inbounds ([85 x i8], [85 x i8]* @.str.1, i64 0, i64 0), i32 %45, i64 %49)
  %51 = load i32, i32* @EINVAL, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %6, align 4
  br label %272

53:                                               ; preds = %37
  %54 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %19, align 8
  %55 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = call i32 @LOCK_TAKE(i32 %56)
  br label %58

58:                                               ; preds = %53
  %59 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %19, align 8
  %60 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %59, i32 0, i32 2
  %61 = load i64, i64* %60, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %66, label %63

63:                                               ; preds = %58
  %64 = load i32, i32* @EIO, align 4
  %65 = sub nsw i32 0, %64
  store i32 %65, i32* %15, align 4
  br label %266

66:                                               ; preds = %58
  store i32 0, i32* %14, align 4
  %67 = load i32, i32* %13, align 4
  %68 = add i32 %67, 1
  store i32 %68, i32* %13, align 4
  store i32 0, i32* %15, align 4
  %69 = getelementptr inbounds [16 x i32], [16 x i32]* %17, i64 0, i64 0
  store i32 0, i32* %69, align 16
  %70 = load i32, i32* %8, align 4
  %71 = getelementptr inbounds [16 x i32], [16 x i32]* %17, i64 0, i64 1
  store i32 %70, i32* %71, align 4
  %72 = getelementptr inbounds [16 x i32], [16 x i32]* %17, i64 0, i64 2
  store i32 0, i32* %72, align 8
  %73 = getelementptr inbounds [16 x i32], [16 x i32]* %17, i64 0, i64 3
  store i32 393216, i32* %73, align 4
  store i32 0, i32* %16, align 4
  br label %74

74:                                               ; preds = %88, %66
  %75 = load i32, i32* %16, align 4
  %76 = load i32, i32* %9, align 4
  %77 = icmp ult i32 %75, %76
  br i1 %77, label %78, label %91

78:                                               ; preds = %74
  %79 = load i32*, i32** %11, align 8
  %80 = load i32, i32* %16, align 4
  %81 = zext i32 %80 to i64
  %82 = getelementptr inbounds i32, i32* %79, i64 %81
  %83 = load i32, i32* %82, align 4
  %84 = load i32, i32* %16, align 4
  %85 = add i32 %84, 4
  %86 = zext i32 %85 to i64
  %87 = getelementptr inbounds [16 x i32], [16 x i32]* %17, i64 0, i64 %86
  store i32 %83, i32* %87, align 4
  br label %88

88:                                               ; preds = %78
  %89 = load i32, i32* %16, align 4
  %90 = add i32 %89, 1
  store i32 %90, i32* %16, align 4
  br label %74

91:                                               ; preds = %74
  br label %92

92:                                               ; preds = %103, %91
  %93 = load i32, i32* %16, align 4
  %94 = getelementptr inbounds [16 x i32], [16 x i32]* %17, i64 0, i64 0
  %95 = call i32 @ARRAY_SIZE(i32* %94)
  %96 = sub nsw i32 %95, 4
  %97 = icmp ult i32 %93, %96
  br i1 %97, label %98, label %106

98:                                               ; preds = %92
  %99 = load i32, i32* %16, align 4
  %100 = add i32 %99, 4
  %101 = zext i32 %100 to i64
  %102 = getelementptr inbounds [16 x i32], [16 x i32]* %17, i64 0, i64 %101
  store i32 0, i32* %102, align 4
  br label %103

103:                                              ; preds = %98
  %104 = load i32, i32* %16, align 4
  %105 = add i32 %104, 1
  store i32 %105, i32* %16, align 4
  br label %92

106:                                              ; preds = %92
  %107 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %19, align 8
  %108 = load i32, i32* @MBOX_BASE, align 4
  %109 = getelementptr inbounds [16 x i32], [16 x i32]* %17, i64 0, i64 0
  %110 = load i32, i32* %16, align 4
  %111 = call i32 @pvr2_encoder_write_words(%struct.pvr2_hdw* %107, i32 %108, i32* %109, i32 %110)
  store i32 %111, i32* %15, align 4
  %112 = load i32, i32* %15, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %115

114:                                              ; preds = %106
  br label %266

115:                                              ; preds = %106
  %116 = load i32, i32* @IVTV_MBOX_DRIVER_DONE, align 4
  %117 = load i32, i32* @IVTV_MBOX_DRIVER_BUSY, align 4
  %118 = or i32 %116, %117
  %119 = getelementptr inbounds [16 x i32], [16 x i32]* %17, i64 0, i64 0
  store i32 %118, i32* %119, align 16
  %120 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %19, align 8
  %121 = load i32, i32* @MBOX_BASE, align 4
  %122 = getelementptr inbounds [16 x i32], [16 x i32]* %17, i64 0, i64 0
  %123 = call i32 @pvr2_encoder_write_words(%struct.pvr2_hdw* %120, i32 %121, i32* %122, i32 1)
  store i32 %123, i32* %15, align 4
  %124 = load i32, i32* %15, align 4
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %127

126:                                              ; preds = %115
  br label %266

127:                                              ; preds = %115
  store i32 0, i32* %12, align 4
  br label %128

128:                                              ; preds = %127, %154
  %129 = load i32, i32* %12, align 4
  %130 = add i32 %129, 1
  store i32 %130, i32* %12, align 4
  %131 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %19, align 8
  %132 = load i32, i32* @MBOX_BASE, align 4
  %133 = getelementptr inbounds [16 x i32], [16 x i32]* %18, i64 0, i64 0
  %134 = load i32, i32* %10, align 4
  %135 = add nsw i32 %134, 4
  %136 = call i32 @pvr2_encoder_read_words(%struct.pvr2_hdw* %131, i32 %132, i32* %133, i32 %135)
  store i32 %136, i32* %15, align 4
  %137 = load i32, i32* %15, align 4
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %140

139:                                              ; preds = %128
  br label %190

140:                                              ; preds = %128
  %141 = getelementptr inbounds [16 x i32], [16 x i32]* %18, i64 0, i64 0
  %142 = load i32, i32* %141, align 16
  %143 = load i32, i32* @IVTV_MBOX_FIRMWARE_DONE, align 4
  %144 = and i32 %142, %143
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %146, label %147

146:                                              ; preds = %140
  br label %190

147:                                              ; preds = %140
  %148 = getelementptr inbounds [16 x i32], [16 x i32]* %18, i64 0, i64 0
  %149 = load i32, i32* %148, align 16
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %151, label %155

151:                                              ; preds = %147
  %152 = load i32, i32* %12, align 4
  %153 = icmp ult i32 %152, 1000
  br i1 %153, label %154, label %155

154:                                              ; preds = %151
  br label %128

155:                                              ; preds = %151, %147
  %156 = getelementptr inbounds [16 x i32], [16 x i32]* %18, i64 0, i64 0
  %157 = load i32, i32* %156, align 16
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %162, label %159

159:                                              ; preds = %155
  store i32 1, i32* %14, align 4
  %160 = load i32, i32* @PVR2_TRACE_ERROR_LEGS, align 4
  %161 = call i32 (i32, i8*, ...) @pvr2_trace(i32 %160, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.2, i64 0, i64 0))
  br label %167

162:                                              ; preds = %155
  %163 = load i32, i32* @PVR2_TRACE_ERROR_LEGS, align 4
  %164 = getelementptr inbounds [16 x i32], [16 x i32]* %18, i64 0, i64 0
  %165 = load i32, i32* %164, align 16
  %166 = call i32 (i32, i8*, ...) @pvr2_trace(i32 %163, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.3, i64 0, i64 0), i32 %165)
  br label %167

167:                                              ; preds = %162, %159
  %168 = load i32, i32* @PVR2_TRACE_ERROR_LEGS, align 4
  %169 = load i32, i32* %8, align 4
  %170 = call i32 (i32, i8*, ...) @pvr2_trace(i32 %168, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0), i32 %169)
  store i32 4, i32* %16, align 4
  br label %171

171:                                              ; preds = %184, %167
  %172 = load i32, i32* %16, align 4
  %173 = load i32, i32* %9, align 4
  %174 = icmp ult i32 %172, %173
  br i1 %174, label %175, label %187

175:                                              ; preds = %171
  %176 = load i32, i32* @PVR2_TRACE_ERROR_LEGS, align 4
  %177 = load i32, i32* %16, align 4
  %178 = sub i32 %177, 3
  %179 = load i32, i32* %16, align 4
  %180 = zext i32 %179 to i64
  %181 = getelementptr inbounds [16 x i32], [16 x i32]* %17, i64 0, i64 %180
  %182 = load i32, i32* %181, align 4
  %183 = call i32 (i32, i8*, ...) @pvr2_trace(i32 %176, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i64 0, i64 0), i32 %178, i32 %182)
  br label %184

184:                                              ; preds = %175
  %185 = load i32, i32* %16, align 4
  %186 = add i32 %185, 1
  store i32 %186, i32* %16, align 4
  br label %171

187:                                              ; preds = %171
  %188 = load i32, i32* @EBUSY, align 4
  %189 = sub nsw i32 0, %188
  store i32 %189, i32* %15, align 4
  br label %190

190:                                              ; preds = %187, %146, %139
  %191 = load i32, i32* %14, align 4
  %192 = icmp ne i32 %191, 0
  br i1 %192, label %193, label %202

193:                                              ; preds = %190
  %194 = load i32, i32* %13, align 4
  %195 = icmp ult i32 %194, 20
  br i1 %195, label %196, label %197

196:                                              ; preds = %193
  br label %266

197:                                              ; preds = %193
  %198 = load i32, i32* @PVR2_TRACE_ERROR_LEGS, align 4
  %199 = call i32 (i32, i8*, ...) @pvr2_trace(i32 %198, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.6, i64 0, i64 0))
  %200 = load i32, i32* @EBUSY, align 4
  %201 = sub nsw i32 0, %200
  store i32 %201, i32* %15, align 4
  br label %202

202:                                              ; preds = %197, %190
  %203 = load i32, i32* %15, align 4
  %204 = icmp ne i32 %203, 0
  br i1 %204, label %205, label %237

205:                                              ; preds = %202
  %206 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %19, align 8
  %207 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %206, i32 0, i32 3
  %208 = call i32 @del_timer_sync(i32* %207)
  %209 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %19, align 8
  %210 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %209, i32 0, i32 2
  store i64 0, i64* %210, align 8
  %211 = load i32, i32* @PVR2_TRACE_STBITS, align 4
  %212 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %19, align 8
  %213 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %212, i32 0, i32 2
  %214 = load i64, i64* %213, align 8
  %215 = icmp ne i64 %214, 0
  %216 = zext i1 %215 to i64
  %217 = select i1 %215, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i64 0, i64 0)
  %218 = call i32 (i32, i8*, ...) @pvr2_trace(i32 %211, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.8, i64 0, i64 0), i8* %217)
  %219 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %19, align 8
  %220 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %219, i32 0, i32 1
  %221 = load i64, i64* %220, align 8
  %222 = icmp ne i64 %221, 0
  br i1 %222, label %223, label %234

223:                                              ; preds = %205
  %224 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %19, align 8
  %225 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %224, i32 0, i32 1
  store i64 0, i64* %225, align 8
  %226 = load i32, i32* @PVR2_TRACE_STBITS, align 4
  %227 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %19, align 8
  %228 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %227, i32 0, i32 1
  %229 = load i64, i64* %228, align 8
  %230 = icmp ne i64 %229, 0
  %231 = zext i1 %230 to i64
  %232 = select i1 %230, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i64 0, i64 0)
  %233 = call i32 (i32, i8*, ...) @pvr2_trace(i32 %226, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.11, i64 0, i64 0), i8* %232)
  br label %234

234:                                              ; preds = %223, %205
  %235 = load i32, i32* @PVR2_TRACE_ERROR_LEGS, align 4
  %236 = call i32 (i32, i8*, ...) @pvr2_trace(i32 %235, i8* getelementptr inbounds ([161 x i8], [161 x i8]* @.str.12, i64 0, i64 0))
  br label %266

237:                                              ; preds = %202
  %238 = getelementptr inbounds [16 x i32], [16 x i32]* %17, i64 0, i64 0
  store i32 7, i32* %238, align 16
  store i32 0, i32* %16, align 4
  br label %239

239:                                              ; preds = %253, %237
  %240 = load i32, i32* %16, align 4
  %241 = load i32, i32* %10, align 4
  %242 = icmp ult i32 %240, %241
  br i1 %242, label %243, label %256

243:                                              ; preds = %239
  %244 = load i32, i32* %16, align 4
  %245 = add i32 %244, 4
  %246 = zext i32 %245 to i64
  %247 = getelementptr inbounds [16 x i32], [16 x i32]* %18, i64 0, i64 %246
  %248 = load i32, i32* %247, align 4
  %249 = load i32*, i32** %11, align 8
  %250 = load i32, i32* %16, align 4
  %251 = zext i32 %250 to i64
  %252 = getelementptr inbounds i32, i32* %249, i64 %251
  store i32 %248, i32* %252, align 4
  br label %253

253:                                              ; preds = %243
  %254 = load i32, i32* %16, align 4
  %255 = add i32 %254, 1
  store i32 %255, i32* %16, align 4
  br label %239

256:                                              ; preds = %239
  %257 = getelementptr inbounds [16 x i32], [16 x i32]* %17, i64 0, i64 0
  store i32 0, i32* %257, align 16
  %258 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %19, align 8
  %259 = load i32, i32* @MBOX_BASE, align 4
  %260 = getelementptr inbounds [16 x i32], [16 x i32]* %17, i64 0, i64 0
  %261 = call i32 @pvr2_encoder_write_words(%struct.pvr2_hdw* %258, i32 %259, i32* %260, i32 1)
  store i32 %261, i32* %15, align 4
  %262 = load i32, i32* %15, align 4
  %263 = icmp ne i32 %262, 0
  br i1 %263, label %264, label %265

264:                                              ; preds = %256
  br label %266

265:                                              ; preds = %256
  br label %266

266:                                              ; preds = %196, %265, %264, %234, %126, %114, %63
  %267 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %19, align 8
  %268 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %267, i32 0, i32 0
  %269 = load i32, i32* %268, align 8
  %270 = call i32 @LOCK_GIVE(i32 %269)
  %271 = load i32, i32* %15, align 4
  store i32 %271, i32* %6, align 4
  br label %272

272:                                              ; preds = %266, %43, %27
  %273 = load i32, i32* %6, align 4
  ret i32 %273
}

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @pvr2_trace(i32, i8*, ...) #1

declare dso_local i32 @LOCK_TAKE(i32) #1

declare dso_local i32 @pvr2_encoder_write_words(%struct.pvr2_hdw*, i32, i32*, i32) #1

declare dso_local i32 @pvr2_encoder_read_words(%struct.pvr2_hdw*, i32, i32*, i32) #1

declare dso_local i32 @del_timer_sync(i32*) #1

declare dso_local i32 @LOCK_GIVE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
