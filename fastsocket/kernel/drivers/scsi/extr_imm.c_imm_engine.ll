; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_imm.c_imm_engine.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_imm.c_imm_engine.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i16, i32, i32, i32, i64, i64 }
%struct.scsi_cmnd = type { i32, %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i32, i32, i32, i32*, %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i32 }

@jiffies = common dso_local global i32 0, align 4
@HZ = common dso_local global i64 0, align 8
@DID_BUS_BUSY = common dso_local global i32 0, align 4
@CONNECT_EPP_MAYBE = common dso_local global i32 0, align 4
@DID_NO_CONNECT = common dso_local global i32 0, align 4
@IMM_NIBBLE = common dso_local global i32 0, align 4
@IMM_PS2 = common dso_local global i32 0, align 4
@DID_ERROR = common dso_local global i32 0, align 4
@DID_OK = common dso_local global i32 0, align 4
@STATUS_MASK = common dso_local global i8 0, align 1
@.str = private unnamed_addr constant [25 x i8] c"imm: Invalid scsi phase\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_13__*, %struct.scsi_cmnd*)* @imm_engine to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @imm_engine(%struct.TYPE_13__* %0, %struct.scsi_cmnd* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_13__*, align 8
  %5 = alloca %struct.scsi_cmnd*, align 8
  %6 = alloca i16, align 2
  %7 = alloca i8, align 1
  %8 = alloca i8, align 1
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %4, align 8
  store %struct.scsi_cmnd* %1, %struct.scsi_cmnd** %5, align 8
  %11 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %11, i32 0, i32 0
  %13 = load i16, i16* %12, align 8
  store i16 %13, i16* %6, align 2
  store i8 0, i8* %7, align 1
  store i8 0, i8* %8, align 1
  %14 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %14, i32 0, i32 5
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %321

19:                                               ; preds = %2
  %20 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %21 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  switch i32 %23, label %318 [
    i32 0, label %24
    i32 1, label %38
    i32 2, label %47
    i32 3, label %63
    i32 4, label %82
    i32 5, label %144
    i32 6, label %191
    i32 7, label %221
    i32 8, label %259
  ]

24:                                               ; preds = %19
  %25 = load i32, i32* @jiffies, align 4
  %26 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %27 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %26, i32 0, i32 4
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @HZ, align 8
  %30 = add nsw i64 %28, %29
  %31 = call i32 @time_after(i32 %25, i64 %30)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %37

33:                                               ; preds = %24
  %34 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %35 = load i32, i32* @DID_BUS_BUSY, align 4
  %36 = call i32 @imm_fail(%struct.TYPE_13__* %34, i32 %35)
  store i32 0, i32* %3, align 4
  br label %321

37:                                               ; preds = %24
  store i32 1, i32* %3, align 4
  br label %321

38:                                               ; preds = %19
  %39 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %40 = load i32, i32* @CONNECT_EPP_MAYBE, align 4
  %41 = call i32 @imm_connect(%struct.TYPE_13__* %39, i32 %40)
  %42 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %43 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %44, align 8
  br label %47

47:                                               ; preds = %19, %38
  %48 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %49 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %50 = call i32 @scmd_id(%struct.scsi_cmnd* %49)
  %51 = call i32 @imm_select(%struct.TYPE_13__* %48, i32 %50)
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %57, label %53

53:                                               ; preds = %47
  %54 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %55 = load i32, i32* @DID_NO_CONNECT, align 4
  %56 = call i32 @imm_fail(%struct.TYPE_13__* %54, i32 %55)
  store i32 0, i32* %3, align 4
  br label %321

57:                                               ; preds = %47
  %58 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %59 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %58, i32 0, i32 1
  %60 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %60, align 8
  br label %63

63:                                               ; preds = %19, %57
  %64 = load i16, i16* %6, align 2
  %65 = call i32 @w_ctr(i16 zeroext %64, i32 12)
  %66 = load i16, i16* %6, align 2
  %67 = call i32 @r_str(i16 zeroext %66)
  %68 = and i32 %67, 128
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %71, label %70

70:                                               ; preds = %63
  store i32 1, i32* %3, align 4
  br label %321

71:                                               ; preds = %63
  %72 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %73 = call i32 @imm_send_command(%struct.scsi_cmnd* %72)
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %76, label %75

75:                                               ; preds = %71
  store i32 0, i32* %3, align 4
  br label %321

76:                                               ; preds = %71
  %77 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %78 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %77, i32 0, i32 1
  %79 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %79, align 8
  br label %82

82:                                               ; preds = %19, %76
  %83 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %84 = call i32 @scsi_bufflen(%struct.scsi_cmnd* %83)
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %109

86:                                               ; preds = %82
  %87 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %88 = call %struct.TYPE_14__* @scsi_sglist(%struct.scsi_cmnd* %87)
  %89 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %90 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %89, i32 0, i32 1
  %91 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %90, i32 0, i32 4
  store %struct.TYPE_14__* %88, %struct.TYPE_14__** %91, align 8
  %92 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %93 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %92, i32 0, i32 1
  %94 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %93, i32 0, i32 4
  %95 = load %struct.TYPE_14__*, %struct.TYPE_14__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %99 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %98, i32 0, i32 1
  %100 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %99, i32 0, i32 1
  store i32 %97, i32* %100, align 4
  %101 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %102 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %101, i32 0, i32 1
  %103 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %102, i32 0, i32 4
  %104 = load %struct.TYPE_14__*, %struct.TYPE_14__** %103, align 8
  %105 = call i32* @sg_virt(%struct.TYPE_14__* %104)
  %106 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %107 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %106, i32 0, i32 1
  %108 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %107, i32 0, i32 3
  store i32* %105, i32** %108, align 8
  br label %119

109:                                              ; preds = %82
  %110 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %111 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %110, i32 0, i32 1
  %112 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %111, i32 0, i32 4
  store %struct.TYPE_14__* null, %struct.TYPE_14__** %112, align 8
  %113 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %114 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %113, i32 0, i32 1
  %115 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %114, i32 0, i32 1
  store i32 0, i32* %115, align 4
  %116 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %117 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %116, i32 0, i32 1
  %118 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %117, i32 0, i32 3
  store i32* null, i32** %118, align 8
  br label %119

119:                                              ; preds = %109, %86
  %120 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %121 = call i32 @scsi_sg_count(%struct.scsi_cmnd* %120)
  %122 = sub nsw i32 %121, 1
  %123 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %124 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %123, i32 0, i32 1
  %125 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %124, i32 0, i32 2
  store i32 %122, i32* %125, align 8
  %126 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %127 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %126, i32 0, i32 1
  %128 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 8
  %130 = add nsw i32 %129, 1
  store i32 %130, i32* %128, align 8
  %131 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %132 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %131, i32 0, i32 1
  %133 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %132, i32 0, i32 1
  %134 = load i32, i32* %133, align 4
  %135 = and i32 %134, 1
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %143

137:                                              ; preds = %119
  %138 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %139 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %138, i32 0, i32 1
  %140 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %139, i32 0, i32 1
  %141 = load i32, i32* %140, align 4
  %142 = add nsw i32 %141, 1
  store i32 %142, i32* %140, align 4
  br label %143

143:                                              ; preds = %137, %119
  br label %144

144:                                              ; preds = %19, %143
  %145 = load i16, i16* %6, align 2
  %146 = call i32 @w_ctr(i16 zeroext %145, i32 12)
  %147 = load i16, i16* %6, align 2
  %148 = call i32 @r_str(i16 zeroext %147)
  %149 = and i32 %148, 128
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %152, label %151

151:                                              ; preds = %144
  store i32 1, i32* %3, align 4
  br label %321

152:                                              ; preds = %144
  %153 = load i16, i16* %6, align 2
  %154 = call i32 @r_str(i16 zeroext %153)
  %155 = and i32 %154, 184
  store i32 %155, i32* %10, align 4
  %156 = load i32, i32* %10, align 4
  %157 = and i32 %156, 16
  %158 = icmp ne i32 %157, 0
  %159 = zext i1 %158 to i64
  %160 = select i1 %158, i32 1, i32 0
  %161 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %162 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %161, i32 0, i32 1
  store i32 %160, i32* %162, align 4
  %163 = load i32, i32* %10, align 4
  %164 = and i32 %163, 32
  %165 = icmp ne i32 %164, 0
  %166 = zext i1 %165 to i64
  %167 = select i1 %165, i32 0, i32 1
  %168 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %169 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %168, i32 0, i32 2
  store i32 %167, i32* %169, align 8
  %170 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %171 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %170, i32 0, i32 2
  %172 = load i32, i32* %171, align 8
  %173 = icmp ne i32 %172, 0
  br i1 %173, label %174, label %185

174:                                              ; preds = %152
  %175 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %176 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %175, i32 0, i32 1
  %177 = load i32, i32* %176, align 4
  %178 = icmp ne i32 %177, 0
  br i1 %178, label %179, label %185

179:                                              ; preds = %174
  %180 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %181 = call i32 @imm_negotiate(%struct.TYPE_13__* %180)
  %182 = icmp ne i32 %181, 0
  br i1 %182, label %183, label %184

183:                                              ; preds = %179
  store i32 0, i32* %3, align 4
  br label %321

184:                                              ; preds = %179
  br label %185

185:                                              ; preds = %184, %174, %152
  %186 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %187 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %186, i32 0, i32 1
  %188 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %187, i32 0, i32 0
  %189 = load i32, i32* %188, align 8
  %190 = add nsw i32 %189, 1
  store i32 %190, i32* %188, align 8
  br label %191

191:                                              ; preds = %19, %185
  %192 = load i16, i16* %6, align 2
  %193 = call i32 @w_ctr(i16 zeroext %192, i32 12)
  %194 = load i16, i16* %6, align 2
  %195 = call i32 @r_str(i16 zeroext %194)
  %196 = and i32 %195, 128
  %197 = icmp ne i32 %196, 0
  br i1 %197, label %199, label %198

198:                                              ; preds = %191
  store i32 1, i32* %3, align 4
  br label %321

199:                                              ; preds = %191
  %200 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %201 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %200, i32 0, i32 2
  %202 = load i32, i32* %201, align 8
  %203 = icmp ne i32 %202, 0
  br i1 %203, label %204, label %215

204:                                              ; preds = %199
  %205 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %206 = call i32 @imm_completion(%struct.scsi_cmnd* %205)
  store i32 %206, i32* %9, align 4
  %207 = load i32, i32* %9, align 4
  %208 = icmp eq i32 %207, -1
  br i1 %208, label %209, label %210

209:                                              ; preds = %204
  store i32 0, i32* %3, align 4
  br label %321

210:                                              ; preds = %204
  %211 = load i32, i32* %9, align 4
  %212 = icmp eq i32 %211, 0
  br i1 %212, label %213, label %214

213:                                              ; preds = %210
  store i32 1, i32* %3, align 4
  br label %321

214:                                              ; preds = %210
  br label %215

215:                                              ; preds = %214, %199
  %216 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %217 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %216, i32 0, i32 1
  %218 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %217, i32 0, i32 0
  %219 = load i32, i32* %218, align 8
  %220 = add nsw i32 %219, 1
  store i32 %220, i32* %218, align 8
  br label %221

221:                                              ; preds = %19, %215
  %222 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %223 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %222, i32 0, i32 2
  %224 = load i32, i32* %223, align 8
  %225 = icmp ne i32 %224, 0
  br i1 %225, label %226, label %253

226:                                              ; preds = %221
  %227 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %228 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %227, i32 0, i32 1
  %229 = load i32, i32* %228, align 4
  %230 = icmp ne i32 %229, 0
  br i1 %230, label %231, label %253

231:                                              ; preds = %226
  %232 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %233 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %232, i32 0, i32 3
  %234 = load i32, i32* %233, align 4
  %235 = load i32, i32* @IMM_NIBBLE, align 4
  %236 = icmp eq i32 %234, %235
  br i1 %236, label %243, label %237

237:                                              ; preds = %231
  %238 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %239 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %238, i32 0, i32 3
  %240 = load i32, i32* %239, align 4
  %241 = load i32, i32* @IMM_PS2, align 4
  %242 = icmp eq i32 %240, %241
  br i1 %242, label %243, label %252

243:                                              ; preds = %237, %231
  %244 = load i16, i16* %6, align 2
  %245 = call i32 @w_ctr(i16 zeroext %244, i32 4)
  %246 = load i16, i16* %6, align 2
  %247 = call i32 @w_ctr(i16 zeroext %246, i32 12)
  %248 = load i16, i16* %6, align 2
  %249 = call i32 @w_ctr(i16 zeroext %248, i32 14)
  %250 = load i16, i16* %6, align 2
  %251 = call i32 @w_ctr(i16 zeroext %250, i32 4)
  br label %252

252:                                              ; preds = %243, %237
  br label %253

253:                                              ; preds = %252, %226, %221
  %254 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %255 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %254, i32 0, i32 1
  %256 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %255, i32 0, i32 0
  %257 = load i32, i32* %256, align 8
  %258 = add nsw i32 %257, 1
  store i32 %258, i32* %256, align 8
  br label %259

259:                                              ; preds = %19, %253
  %260 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %261 = call zeroext i8 @imm_wait(%struct.TYPE_13__* %260)
  %262 = zext i8 %261 to i32
  %263 = icmp ne i32 %262, 184
  br i1 %263, label %264, label %268

264:                                              ; preds = %259
  %265 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %266 = load i32, i32* @DID_ERROR, align 4
  %267 = call i32 @imm_fail(%struct.TYPE_13__* %265, i32 %266)
  store i32 0, i32* %3, align 4
  br label %321

268:                                              ; preds = %259
  %269 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %270 = call i32 @imm_negotiate(%struct.TYPE_13__* %269)
  %271 = icmp ne i32 %270, 0
  br i1 %271, label %272, label %273

272:                                              ; preds = %268
  store i32 0, i32* %3, align 4
  br label %321

273:                                              ; preds = %268
  %274 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %275 = call i32 @imm_in(%struct.TYPE_13__* %274, i8* %7, i32 1)
  %276 = icmp ne i32 %275, 0
  br i1 %276, label %277, label %296

277:                                              ; preds = %273
  %278 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %279 = call zeroext i8 @imm_wait(%struct.TYPE_13__* %278)
  %280 = zext i8 %279 to i32
  %281 = icmp eq i32 %280, 184
  br i1 %281, label %282, label %285

282:                                              ; preds = %277
  %283 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %284 = call i32 @imm_in(%struct.TYPE_13__* %283, i8* %8, i32 1)
  br label %285

285:                                              ; preds = %282, %277
  %286 = load i32, i32* @DID_OK, align 4
  %287 = shl i32 %286, 16
  %288 = load i8, i8* %7, align 1
  %289 = zext i8 %288 to i32
  %290 = load i8, i8* @STATUS_MASK, align 1
  %291 = zext i8 %290 to i32
  %292 = and i32 %289, %291
  %293 = add nsw i32 %287, %292
  %294 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %295 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %294, i32 0, i32 0
  store i32 %293, i32* %295, align 8
  br label %296

296:                                              ; preds = %285, %273
  %297 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %298 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %297, i32 0, i32 3
  %299 = load i32, i32* %298, align 4
  %300 = load i32, i32* @IMM_NIBBLE, align 4
  %301 = icmp eq i32 %299, %300
  br i1 %301, label %308, label %302

302:                                              ; preds = %296
  %303 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %304 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %303, i32 0, i32 3
  %305 = load i32, i32* %304, align 4
  %306 = load i32, i32* @IMM_PS2, align 4
  %307 = icmp eq i32 %305, %306
  br i1 %307, label %308, label %317

308:                                              ; preds = %302, %296
  %309 = load i16, i16* %6, align 2
  %310 = call i32 @w_ctr(i16 zeroext %309, i32 4)
  %311 = load i16, i16* %6, align 2
  %312 = call i32 @w_ctr(i16 zeroext %311, i32 12)
  %313 = load i16, i16* %6, align 2
  %314 = call i32 @w_ctr(i16 zeroext %313, i32 14)
  %315 = load i16, i16* %6, align 2
  %316 = call i32 @w_ctr(i16 zeroext %315, i32 4)
  br label %317

317:                                              ; preds = %308, %302
  store i32 0, i32* %3, align 4
  br label %321

318:                                              ; preds = %19
  %319 = call i32 @printk(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  br label %320

320:                                              ; preds = %318
  store i32 0, i32* %3, align 4
  br label %321

321:                                              ; preds = %320, %317, %272, %264, %213, %209, %198, %183, %151, %75, %70, %53, %37, %33, %18
  %322 = load i32, i32* %3, align 4
  ret i32 %322
}

declare dso_local i32 @time_after(i32, i64) #1

declare dso_local i32 @imm_fail(%struct.TYPE_13__*, i32) #1

declare dso_local i32 @imm_connect(%struct.TYPE_13__*, i32) #1

declare dso_local i32 @imm_select(%struct.TYPE_13__*, i32) #1

declare dso_local i32 @scmd_id(%struct.scsi_cmnd*) #1

declare dso_local i32 @w_ctr(i16 zeroext, i32) #1

declare dso_local i32 @r_str(i16 zeroext) #1

declare dso_local i32 @imm_send_command(%struct.scsi_cmnd*) #1

declare dso_local i32 @scsi_bufflen(%struct.scsi_cmnd*) #1

declare dso_local %struct.TYPE_14__* @scsi_sglist(%struct.scsi_cmnd*) #1

declare dso_local i32* @sg_virt(%struct.TYPE_14__*) #1

declare dso_local i32 @scsi_sg_count(%struct.scsi_cmnd*) #1

declare dso_local i32 @imm_negotiate(%struct.TYPE_13__*) #1

declare dso_local i32 @imm_completion(%struct.scsi_cmnd*) #1

declare dso_local zeroext i8 @imm_wait(%struct.TYPE_13__*) #1

declare dso_local i32 @imm_in(%struct.TYPE_13__*, i8*, i32) #1

declare dso_local i32 @printk(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
