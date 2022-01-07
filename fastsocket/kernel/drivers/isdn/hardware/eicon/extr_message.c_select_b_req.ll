; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hardware/eicon/extr_message.c_select_b_req.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hardware/eicon/extr_message.c_select_b_req.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_26__ = type { i32 }
%struct.TYPE_25__ = type { %struct.TYPE_26__*, i64 }
%struct.TYPE_24__ = type { i32, i64, i64, i64, i32, i64, i64, i32, i32, %struct.TYPE_26__*, i64, i64, %struct.TYPE_23__, i32 }
%struct.TYPE_23__ = type { i32 }
%struct.TYPE_27__ = type { i64, i32* }

@_WRONG_IDENTIFIER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [66 x i8] c"select_b_req[%d],PLCI=0x%x,Tel=0x%x,NL=0x%x,appl=0x%x,sstate=0x%x\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"PlciState=0x%x\00", align 1
@IDLE = common dso_local global i64 0, align 8
@OUTG_DIS_PENDING = common dso_local global i64 0, align 8
@INC_DIS_PENDING = common dso_local global i64 0, align 8
@_WRONG_STATE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [7 x i8] c"wwwsss\00", align 1
@_WRONG_MESSAGE_FORMAT = common dso_local global i32 0, align 4
@INC_CON_PENDING = common dso_local global i64 0, align 8
@INC_CON_ALERT = common dso_local global i64 0, align 8
@EXT_CONTROLLER = common dso_local global i32 0, align 4
@_SELECT_B_REQ = common dso_local global i32 0, align 4
@CONFIRM = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@INC_CON_CONNECTED_ALERT = common dso_local global i64 0, align 8
@max_appl = common dso_local global i32 0, align 4
@application = common dso_local global %struct.TYPE_26__* null, align 8
@_DISCONNECT_I = common dso_local global i32 0, align 4
@_OTHER_APPL_CONNECTED = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [2 x i8] c"s\00", align 1
@.str.5 = private unnamed_addr constant [18 x i8] c"Ext_Ctrl in use 1\00", align 1
@.str.6 = private unnamed_addr constant [18 x i8] c"Ext_Ctrl in use 2\00", align 1
@.str.7 = private unnamed_addr constant [15 x i8] c"Ext_Ctrl start\00", align 1
@.str.8 = private unnamed_addr constant [26 x i8] c"Error in codec procedures\00", align 1
@SPOOFING_REQUIRED = common dso_local global i64 0, align 8
@AWAITING_SELECT_B = common dso_local global i64 0, align 8
@BLOCK_PLCI = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [25 x i8] c"continue if codec loaded\00", align 1
@.str.10 = private unnamed_addr constant [17 x i8] c"Ext_Ctrl disable\00", align 1
@.str.11 = private unnamed_addr constant [23 x i8] c"Ext_Ctrl not requested\00", align 1
@CALL_DIR_OUT = common dso_local global i32 0, align 4
@CALL_DIR_ORIGINATE = common dso_local global i32 0, align 4
@CALL_DIR_IN = common dso_local global i32 0, align 4
@CALL_DIR_ANSWER = common dso_local global i32 0, align 4
@select_b_command = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, %struct.TYPE_25__*, %struct.TYPE_24__*, %struct.TYPE_26__*, %struct.TYPE_27__*)* @select_b_req to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @select_b_req(i32 %0, i32 %1, %struct.TYPE_25__* %2, %struct.TYPE_24__* %3, %struct.TYPE_26__* %4, %struct.TYPE_27__* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_25__*, align 8
  %11 = alloca %struct.TYPE_24__*, align 8
  %12 = alloca %struct.TYPE_26__*, align 8
  %13 = alloca %struct.TYPE_27__*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca [7 x %struct.TYPE_27__], align 16
  store i32 %0, i32* %8, align 4
  store i32 %1, i32* %9, align 4
  store %struct.TYPE_25__* %2, %struct.TYPE_25__** %10, align 8
  store %struct.TYPE_24__* %3, %struct.TYPE_24__** %11, align 8
  store %struct.TYPE_26__* %4, %struct.TYPE_26__** %12, align 8
  store %struct.TYPE_27__* %5, %struct.TYPE_27__** %13, align 8
  store i32 0, i32* %14, align 4
  %18 = load %struct.TYPE_24__*, %struct.TYPE_24__** %11, align 8
  %19 = icmp ne %struct.TYPE_24__* %18, null
  br i1 %19, label %20, label %23

20:                                               ; preds = %6
  %21 = load %struct.TYPE_27__*, %struct.TYPE_27__** %13, align 8
  %22 = icmp ne %struct.TYPE_27__* %21, null
  br i1 %22, label %25, label %23

23:                                               ; preds = %20, %6
  %24 = load i32, i32* @_WRONG_IDENTIFIER, align 4
  store i32 %24, i32* %14, align 4
  br label %316

25:                                               ; preds = %20
  %26 = load %struct.TYPE_27__*, %struct.TYPE_27__** %13, align 8
  %27 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load %struct.TYPE_24__*, %struct.TYPE_24__** %11, align 8
  %30 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %29, i32 0, i32 13
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.TYPE_24__*, %struct.TYPE_24__** %11, align 8
  %33 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = load %struct.TYPE_24__*, %struct.TYPE_24__** %11, align 8
  %36 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %35, i32 0, i32 12
  %37 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = load %struct.TYPE_24__*, %struct.TYPE_24__** %11, align 8
  %40 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %39, i32 0, i32 9
  %41 = load %struct.TYPE_26__*, %struct.TYPE_26__** %40, align 8
  %42 = load %struct.TYPE_24__*, %struct.TYPE_24__** %11, align 8
  %43 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = call i32 (i8*, ...) @dprintf(i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str, i64 0, i64 0), i64 %28, i32 %31, i32 %34, i32 %38, %struct.TYPE_26__* %41, i64 %44)
  %46 = call i32 @dbug(i32 1, i32 %45)
  %47 = load %struct.TYPE_24__*, %struct.TYPE_24__** %11, align 8
  %48 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %47, i32 0, i32 2
  %49 = load i64, i64* %48, align 8
  %50 = call i32 (i8*, ...) @dprintf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i64 %49)
  %51 = call i32 @dbug(i32 1, i32 %50)
  store i32 0, i32* %15, align 4
  br label %52

52:                                               ; preds = %60, %25
  %53 = load i32, i32* %15, align 4
  %54 = icmp slt i32 %53, 7
  br i1 %54, label %55, label %63

55:                                               ; preds = %52
  %56 = load i32, i32* %15, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds [7 x %struct.TYPE_27__], [7 x %struct.TYPE_27__]* %17, i64 0, i64 %57
  %59 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %58, i32 0, i32 0
  store i64 0, i64* %59, align 16
  br label %60

60:                                               ; preds = %55
  %61 = load i32, i32* %15, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %15, align 4
  br label %52

63:                                               ; preds = %52
  %64 = load %struct.TYPE_24__*, %struct.TYPE_24__** %11, align 8
  %65 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %64, i32 0, i32 2
  %66 = load i64, i64* %65, align 8
  %67 = load i64, i64* @IDLE, align 8
  %68 = icmp eq i64 %66, %67
  br i1 %68, label %97, label %69

69:                                               ; preds = %63
  %70 = load %struct.TYPE_24__*, %struct.TYPE_24__** %11, align 8
  %71 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %70, i32 0, i32 2
  %72 = load i64, i64* %71, align 8
  %73 = load i64, i64* @OUTG_DIS_PENDING, align 8
  %74 = icmp eq i64 %72, %73
  br i1 %74, label %97, label %75

75:                                               ; preds = %69
  %76 = load %struct.TYPE_24__*, %struct.TYPE_24__** %11, align 8
  %77 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %76, i32 0, i32 2
  %78 = load i64, i64* %77, align 8
  %79 = load i64, i64* @INC_DIS_PENDING, align 8
  %80 = icmp eq i64 %78, %79
  br i1 %80, label %97, label %81

81:                                               ; preds = %75
  %82 = load %struct.TYPE_24__*, %struct.TYPE_24__** %11, align 8
  %83 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %82, i32 0, i32 1
  %84 = load i64, i64* %83, align 8
  %85 = load i64, i64* @IDLE, align 8
  %86 = icmp ne i64 %84, %85
  br i1 %86, label %97, label %87

87:                                               ; preds = %81
  %88 = load %struct.TYPE_24__*, %struct.TYPE_24__** %11, align 8
  %89 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %88, i32 0, i32 11
  %90 = load i64, i64* %89, align 8
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %97, label %92

92:                                               ; preds = %87
  %93 = load %struct.TYPE_24__*, %struct.TYPE_24__** %11, align 8
  %94 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %93, i32 0, i32 10
  %95 = load i64, i64* %94, align 8
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %99

97:                                               ; preds = %92, %87, %81, %75, %69, %63
  %98 = load i32, i32* @_WRONG_STATE, align 4
  store i32 %98, i32* %14, align 4
  br label %315

99:                                               ; preds = %92
  %100 = load %struct.TYPE_27__*, %struct.TYPE_27__** %13, align 8
  %101 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %100, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %118

104:                                              ; preds = %99
  %105 = load %struct.TYPE_27__*, %struct.TYPE_27__** %13, align 8
  %106 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %105, i32 0, i32 1
  %107 = load i32*, i32** %106, align 8
  %108 = getelementptr inbounds i32, i32* %107, i64 1
  %109 = load %struct.TYPE_27__*, %struct.TYPE_27__** %13, align 8
  %110 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %109, i32 0, i32 0
  %111 = load i64, i64* %110, align 8
  %112 = trunc i64 %111 to i32
  %113 = getelementptr inbounds [7 x %struct.TYPE_27__], [7 x %struct.TYPE_27__]* %17, i64 0, i64 0
  %114 = call i64 @api_parse(i32* %108, i32 %112, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), %struct.TYPE_27__* %113)
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %118

116:                                              ; preds = %104
  %117 = load i32, i32* @_WRONG_MESSAGE_FORMAT, align 4
  store i32 %117, i32* %14, align 4
  br label %314

118:                                              ; preds = %104, %99
  %119 = load %struct.TYPE_24__*, %struct.TYPE_24__** %11, align 8
  %120 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %119, i32 0, i32 2
  %121 = load i64, i64* %120, align 8
  %122 = load i64, i64* @INC_CON_PENDING, align 8
  %123 = icmp eq i64 %121, %122
  br i1 %123, label %130, label %124

124:                                              ; preds = %118
  %125 = load %struct.TYPE_24__*, %struct.TYPE_24__** %11, align 8
  %126 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %125, i32 0, i32 2
  %127 = load i64, i64* %126, align 8
  %128 = load i64, i64* @INC_CON_ALERT, align 8
  %129 = icmp eq i64 %127, %128
  br i1 %129, label %130, label %181

130:                                              ; preds = %124, %118
  %131 = load i32, i32* %8, align 4
  %132 = load i32, i32* @EXT_CONTROLLER, align 4
  %133 = and i32 %131, %132
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %143

135:                                              ; preds = %130
  %136 = load %struct.TYPE_26__*, %struct.TYPE_26__** %12, align 8
  %137 = load i32, i32* @_SELECT_B_REQ, align 4
  %138 = load i32, i32* @CONFIRM, align 4
  %139 = or i32 %137, %138
  %140 = load i32, i32* %8, align 4
  %141 = load i32, i32* %9, align 4
  %142 = call i32 @sendf(%struct.TYPE_26__* %136, i32 %139, i32 %140, i32 %141, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0), i32 8194)
  store i32 0, i32* %7, align 4
  br label %325

143:                                              ; preds = %130
  %144 = load i64, i64* @INC_CON_CONNECTED_ALERT, align 8
  %145 = load %struct.TYPE_24__*, %struct.TYPE_24__** %11, align 8
  %146 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %145, i32 0, i32 2
  store i64 %144, i64* %146, align 8
  %147 = load %struct.TYPE_26__*, %struct.TYPE_26__** %12, align 8
  %148 = load %struct.TYPE_24__*, %struct.TYPE_24__** %11, align 8
  %149 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %148, i32 0, i32 9
  store %struct.TYPE_26__* %147, %struct.TYPE_26__** %149, align 8
  %150 = load %struct.TYPE_24__*, %struct.TYPE_24__** %11, align 8
  %151 = load %struct.TYPE_26__*, %struct.TYPE_26__** %12, align 8
  %152 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 4
  %154 = sub nsw i32 %153, 1
  %155 = call i32 @clear_c_ind_mask_bit(%struct.TYPE_24__* %150, i32 %154)
  %156 = load %struct.TYPE_24__*, %struct.TYPE_24__** %11, align 8
  %157 = call i32 @dump_c_ind_mask(%struct.TYPE_24__* %156)
  store i32 0, i32* %15, align 4
  br label %158

158:                                              ; preds = %177, %143
  %159 = load i32, i32* %15, align 4
  %160 = load i32, i32* @max_appl, align 4
  %161 = icmp slt i32 %159, %160
  br i1 %161, label %162, label %180

162:                                              ; preds = %158
  %163 = load %struct.TYPE_24__*, %struct.TYPE_24__** %11, align 8
  %164 = load i32, i32* %15, align 4
  %165 = call i64 @test_c_ind_mask_bit(%struct.TYPE_24__* %163, i32 %164)
  %166 = icmp ne i64 %165, 0
  br i1 %166, label %167, label %176

167:                                              ; preds = %162
  %168 = load %struct.TYPE_26__*, %struct.TYPE_26__** @application, align 8
  %169 = load i32, i32* %15, align 4
  %170 = sext i32 %169 to i64
  %171 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %168, i64 %170
  %172 = load i32, i32* @_DISCONNECT_I, align 4
  %173 = load i32, i32* %8, align 4
  %174 = load i32, i32* @_OTHER_APPL_CONNECTED, align 4
  %175 = call i32 @sendf(%struct.TYPE_26__* %171, i32 %172, i32 %173, i32 0, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0), i32 %174)
  br label %176

176:                                              ; preds = %167, %162
  br label %177

177:                                              ; preds = %176
  %178 = load i32, i32* %15, align 4
  %179 = add nsw i32 %178, 1
  store i32 %179, i32* %15, align 4
  br label %158

180:                                              ; preds = %158
  br label %181

181:                                              ; preds = %180, %124
  %182 = load %struct.TYPE_27__*, %struct.TYPE_27__** %13, align 8
  %183 = load %struct.TYPE_24__*, %struct.TYPE_24__** %11, align 8
  %184 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %183, i32 0, i32 8
  %185 = call i32 @api_save_msg(%struct.TYPE_27__* %182, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0), i32* %184)
  %186 = load %struct.TYPE_24__*, %struct.TYPE_24__** %11, align 8
  %187 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %186, i32 0, i32 0
  %188 = load i32, i32* %187, align 8
  store i32 %188, i32* %16, align 4
  %189 = load i32, i32* %8, align 4
  %190 = load i32, i32* @EXT_CONTROLLER, align 4
  %191 = and i32 %189, %190
  %192 = icmp ne i32 %191, 0
  br i1 %192, label %193, label %254

193:                                              ; preds = %181
  %194 = load i32, i32* %16, align 4
  %195 = icmp ne i32 %194, 0
  br i1 %195, label %196, label %212

196:                                              ; preds = %193
  %197 = load %struct.TYPE_25__*, %struct.TYPE_25__** %10, align 8
  %198 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %197, i32 0, i32 0
  %199 = load %struct.TYPE_26__*, %struct.TYPE_26__** %198, align 8
  %200 = icmp ne %struct.TYPE_26__* %199, null
  br i1 %200, label %201, label %211

201:                                              ; preds = %196
  %202 = load %struct.TYPE_25__*, %struct.TYPE_25__** %10, align 8
  %203 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %202, i32 0, i32 0
  %204 = load %struct.TYPE_26__*, %struct.TYPE_26__** %203, align 8
  %205 = load %struct.TYPE_26__*, %struct.TYPE_26__** %12, align 8
  %206 = icmp ne %struct.TYPE_26__* %204, %205
  br i1 %206, label %207, label %211

207:                                              ; preds = %201
  %208 = call i32 (i8*, ...) @dprintf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i64 0, i64 0))
  %209 = call i32 @dbug(i32 1, i32 %208)
  %210 = load i32, i32* @_WRONG_STATE, align 4
  store i32 %210, i32* %14, align 4
  br label %211

211:                                              ; preds = %207, %201, %196
  br label %253

212:                                              ; preds = %193
  %213 = load %struct.TYPE_25__*, %struct.TYPE_25__** %10, align 8
  %214 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %213, i32 0, i32 1
  %215 = load i64, i64* %214, align 8
  %216 = icmp ne i64 %215, 0
  br i1 %216, label %217, label %221

217:                                              ; preds = %212
  %218 = call i32 (i8*, ...) @dprintf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.6, i64 0, i64 0))
  %219 = call i32 @dbug(i32 1, i32 %218)
  %220 = load i32, i32* @_WRONG_STATE, align 4
  store i32 %220, i32* %14, align 4
  br label %252

221:                                              ; preds = %212
  %222 = call i32 (i8*, ...) @dprintf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.7, i64 0, i64 0))
  %223 = call i32 @dbug(i32 1, i32 %222)
  %224 = load %struct.TYPE_25__*, %struct.TYPE_25__** %10, align 8
  %225 = load %struct.TYPE_24__*, %struct.TYPE_24__** %11, align 8
  %226 = load %struct.TYPE_26__*, %struct.TYPE_26__** %12, align 8
  %227 = call i64 @AdvCodecSupport(%struct.TYPE_25__* %224, %struct.TYPE_24__* %225, %struct.TYPE_26__* %226, i32 0)
  %228 = icmp ne i64 %227, 0
  br i1 %228, label %229, label %233

229:                                              ; preds = %221
  %230 = call i32 (i8*, ...) @dprintf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.8, i64 0, i64 0))
  %231 = call i32 @dbug(i32 1, i32 %230)
  %232 = load i32, i32* @_WRONG_STATE, align 4
  store i32 %232, i32* %14, align 4
  br label %251

233:                                              ; preds = %221
  %234 = load %struct.TYPE_24__*, %struct.TYPE_24__** %11, align 8
  %235 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %234, i32 0, i32 3
  %236 = load i64, i64* %235, align 8
  %237 = load i64, i64* @SPOOFING_REQUIRED, align 8
  %238 = icmp eq i64 %236, %237
  br i1 %238, label %239, label %250

239:                                              ; preds = %233
  %240 = load i64, i64* @AWAITING_SELECT_B, align 8
  %241 = load %struct.TYPE_24__*, %struct.TYPE_24__** %11, align 8
  %242 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %241, i32 0, i32 3
  store i64 %240, i64* %242, align 8
  %243 = load i32, i32* @BLOCK_PLCI, align 4
  %244 = load %struct.TYPE_24__*, %struct.TYPE_24__** %11, align 8
  %245 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %244, i32 0, i32 7
  store i32 %243, i32* %245, align 8
  %246 = load %struct.TYPE_24__*, %struct.TYPE_24__** %11, align 8
  %247 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %246, i32 0, i32 6
  store i64 0, i64* %247, align 8
  %248 = call i32 (i8*, ...) @dprintf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.9, i64 0, i64 0))
  %249 = call i32 @dbug(i32 1, i32 %248)
  store i32 0, i32* %7, align 4
  br label %325

250:                                              ; preds = %233
  br label %251

251:                                              ; preds = %250, %229
  br label %252

252:                                              ; preds = %251, %217
  br label %253

253:                                              ; preds = %252, %211
  br label %278

254:                                              ; preds = %181
  %255 = load i32, i32* %16, align 4
  %256 = icmp ne i32 %255, 0
  br i1 %256, label %257, label %277

257:                                              ; preds = %254
  %258 = load %struct.TYPE_25__*, %struct.TYPE_25__** %10, align 8
  %259 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %258, i32 0, i32 0
  %260 = load %struct.TYPE_26__*, %struct.TYPE_26__** %259, align 8
  %261 = load %struct.TYPE_26__*, %struct.TYPE_26__** %12, align 8
  %262 = icmp eq %struct.TYPE_26__* %260, %261
  br i1 %262, label %263, label %273

263:                                              ; preds = %257
  %264 = load %struct.TYPE_25__*, %struct.TYPE_25__** %10, align 8
  %265 = load %struct.TYPE_24__*, %struct.TYPE_24__** %11, align 8
  %266 = call i32 @CodecIdCheck(%struct.TYPE_25__* %264, %struct.TYPE_24__* %265)
  %267 = load %struct.TYPE_24__*, %struct.TYPE_24__** %11, align 8
  %268 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %267, i32 0, i32 0
  store i32 0, i32* %268, align 8
  %269 = load %struct.TYPE_24__*, %struct.TYPE_24__** %11, align 8
  %270 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %269, i32 0, i32 5
  store i64 0, i64* %270, align 8
  %271 = call i32 (i8*, ...) @dprintf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.10, i64 0, i64 0))
  %272 = call i32 @dbug(i32 1, i32 %271)
  br label %276

273:                                              ; preds = %257
  %274 = call i32 (i8*, ...) @dprintf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.11, i64 0, i64 0))
  %275 = call i32 @dbug(i32 1, i32 %274)
  br label %276

276:                                              ; preds = %273, %263
  br label %277

277:                                              ; preds = %276, %254
  br label %278

278:                                              ; preds = %277, %253
  %279 = load i32, i32* %14, align 4
  %280 = icmp ne i32 %279, 0
  br i1 %280, label %313, label %281

281:                                              ; preds = %278
  %282 = load %struct.TYPE_24__*, %struct.TYPE_24__** %11, align 8
  %283 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %282, i32 0, i32 4
  %284 = load i32, i32* %283, align 8
  %285 = load i32, i32* @CALL_DIR_OUT, align 4
  %286 = and i32 %284, %285
  %287 = icmp ne i32 %286, 0
  br i1 %287, label %288, label %294

288:                                              ; preds = %281
  %289 = load i32, i32* @CALL_DIR_OUT, align 4
  %290 = load i32, i32* @CALL_DIR_ORIGINATE, align 4
  %291 = or i32 %289, %290
  %292 = load %struct.TYPE_24__*, %struct.TYPE_24__** %11, align 8
  %293 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %292, i32 0, i32 4
  store i32 %291, i32* %293, align 8
  br label %308

294:                                              ; preds = %281
  %295 = load %struct.TYPE_24__*, %struct.TYPE_24__** %11, align 8
  %296 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %295, i32 0, i32 4
  %297 = load i32, i32* %296, align 8
  %298 = load i32, i32* @CALL_DIR_IN, align 4
  %299 = and i32 %297, %298
  %300 = icmp ne i32 %299, 0
  br i1 %300, label %301, label %307

301:                                              ; preds = %294
  %302 = load i32, i32* @CALL_DIR_IN, align 4
  %303 = load i32, i32* @CALL_DIR_ANSWER, align 4
  %304 = or i32 %302, %303
  %305 = load %struct.TYPE_24__*, %struct.TYPE_24__** %11, align 8
  %306 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %305, i32 0, i32 4
  store i32 %304, i32* %306, align 8
  br label %307

307:                                              ; preds = %301, %294
  br label %308

308:                                              ; preds = %307, %288
  %309 = load i32, i32* %8, align 4
  %310 = load %struct.TYPE_24__*, %struct.TYPE_24__** %11, align 8
  %311 = load i32, i32* @select_b_command, align 4
  %312 = call i32 @start_internal_command(i32 %309, %struct.TYPE_24__* %310, i32 %311)
  store i32 0, i32* %7, align 4
  br label %325

313:                                              ; preds = %278
  br label %314

314:                                              ; preds = %313, %116
  br label %315

315:                                              ; preds = %314, %97
  br label %316

316:                                              ; preds = %315, %23
  %317 = load %struct.TYPE_26__*, %struct.TYPE_26__** %12, align 8
  %318 = load i32, i32* @_SELECT_B_REQ, align 4
  %319 = load i32, i32* @CONFIRM, align 4
  %320 = or i32 %318, %319
  %321 = load i32, i32* %8, align 4
  %322 = load i32, i32* %9, align 4
  %323 = load i32, i32* %14, align 4
  %324 = call i32 @sendf(%struct.TYPE_26__* %317, i32 %320, i32 %321, i32 %322, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0), i32 %323)
  store i32 0, i32* %7, align 4
  br label %325

325:                                              ; preds = %316, %308, %239, %135
  %326 = load i32, i32* %7, align 4
  ret i32 %326
}

declare dso_local i32 @dbug(i32, i32) #1

declare dso_local i32 @dprintf(i8*, ...) #1

declare dso_local i64 @api_parse(i32*, i32, i8*, %struct.TYPE_27__*) #1

declare dso_local i32 @sendf(%struct.TYPE_26__*, i32, i32, i32, i8*, i32) #1

declare dso_local i32 @clear_c_ind_mask_bit(%struct.TYPE_24__*, i32) #1

declare dso_local i32 @dump_c_ind_mask(%struct.TYPE_24__*) #1

declare dso_local i64 @test_c_ind_mask_bit(%struct.TYPE_24__*, i32) #1

declare dso_local i32 @api_save_msg(%struct.TYPE_27__*, i8*, i32*) #1

declare dso_local i64 @AdvCodecSupport(%struct.TYPE_25__*, %struct.TYPE_24__*, %struct.TYPE_26__*, i32) #1

declare dso_local i32 @CodecIdCheck(%struct.TYPE_25__*, %struct.TYPE_24__*) #1

declare dso_local i32 @start_internal_command(i32, %struct.TYPE_24__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
