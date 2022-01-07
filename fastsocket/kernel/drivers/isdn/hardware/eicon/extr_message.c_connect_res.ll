; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hardware/eicon/extr_message.c_connect_res.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hardware/eicon/extr_message.c_connect_res.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_33__ = type { i32 }
%struct.TYPE_32__ = type { i32*, i64 }
%struct.TYPE_31__ = type { i64, i64, i64, i32, i64, i32, i32, i64, %struct.TYPE_33__* }
%struct.TYPE_34__ = type { i32*, i64 }

@connect_res.cau_t = internal global [9 x i32] [i32 0, i32 0, i32 144, i32 145, i32 172, i32 157, i32 134, i32 216, i32 155], align 16
@connect_res.esc_t = internal global [4 x i32] [i32 3, i32 8, i32 0, i32 0], align 16
@.str = private unnamed_addr constant [21 x i8] c"connect_res(no plci)\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"connect_res(State=0x%x)\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"ai->length=%d\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"ssss\00", align 1
@.str.4 = private unnamed_addr constant [27 x i8] c"ai_parms[0].length=%d/0x%x\00", align 1
@.str.5 = private unnamed_addr constant [11 x i8] c"BCH-I=0x%x\00", align 1
@INC_CON_CONNECTED_ALERT = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [25 x i8] c"Connected Alert Call_Res\00", align 1
@LLI = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [3 x i8] c"\01\01\00", align 1
@CONN_NR = common dso_local global i32 0, align 4
@LLC = common dso_local global i32 0, align 4
@INC_CON_ACCEPT = common dso_local global i8* null, align 8
@CALL_RES = common dso_local global i64 0, align 8
@INC_CON_PENDING = common dso_local global i64 0, align 8
@INC_CON_ALERT = common dso_local global i64 0, align 8
@.str.8 = private unnamed_addr constant [12 x i8] c"Reject=0x%x\00", align 1
@ESC = common dso_local global i32 0, align 4
@REJECT = common dso_local global i64 0, align 8
@HANGUP = common dso_local global i64 0, align 8
@_DISCONNECT_I = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@_OTHER_APPL_CONNECTED = common dso_local global i32 0, align 4
@EXT_CONTROLLER = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [40 x i8] c"connect_res(error from AdvCodecSupport)\00", align 1
@ADV_VOICE = common dso_local global i64 0, align 8
@.str.11 = private unnamed_addr constant [32 x i8] c"connect_res(error from add_b23)\00", align 1
@ASSIGN = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [34 x i8] c"connect_res(error from add_b23 2)\00", align 1
@SPOOFING_REQUIRED = common dso_local global i64 0, align 8
@.str.13 = private unnamed_addr constant [7 x i8] c"wsssss\00", align 1
@BLOCK_PLCI = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [6 x i8] c"Spoof\00", align 1
@max_appl = common dso_local global i32 0, align 4
@application = common dso_local global %struct.TYPE_33__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, %struct.TYPE_32__*, %struct.TYPE_31__*, %struct.TYPE_33__*, %struct.TYPE_34__*)* @connect_res to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @connect_res(i32 %0, i32 %1, %struct.TYPE_32__* %2, %struct.TYPE_31__* %3, %struct.TYPE_33__* %4, %struct.TYPE_34__* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_32__*, align 8
  %11 = alloca %struct.TYPE_31__*, align 8
  %12 = alloca %struct.TYPE_33__*, align 8
  %13 = alloca %struct.TYPE_34__*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.TYPE_34__*, align 8
  %18 = alloca [5 x %struct.TYPE_34__], align 16
  %19 = alloca i32, align 4
  store i32 %0, i32* %8, align 4
  store i32 %1, i32* %9, align 4
  store %struct.TYPE_32__* %2, %struct.TYPE_32__** %10, align 8
  store %struct.TYPE_31__* %3, %struct.TYPE_31__** %11, align 8
  store %struct.TYPE_33__* %4, %struct.TYPE_33__** %12, align 8
  store %struct.TYPE_34__* %5, %struct.TYPE_34__** %13, align 8
  store i32 0, i32* %19, align 4
  %20 = load %struct.TYPE_31__*, %struct.TYPE_31__** %11, align 8
  %21 = icmp ne %struct.TYPE_31__* %20, null
  br i1 %21, label %25, label %22

22:                                               ; preds = %6
  %23 = call i32 (i8*, ...) @dprintf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %24 = call i32 @dbug(i32 1, i32 %23)
  store i32 0, i32* %7, align 4
  br label %407

25:                                               ; preds = %6
  %26 = load %struct.TYPE_31__*, %struct.TYPE_31__** %11, align 8
  %27 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = call i32 (i8*, ...) @dprintf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i64 %28)
  %30 = call i32 @dbug(i32 1, i32 %29)
  store i32 0, i32* %14, align 4
  br label %31

31:                                               ; preds = %39, %25
  %32 = load i32, i32* %14, align 4
  %33 = icmp slt i32 %32, 5
  br i1 %33, label %34, label %42

34:                                               ; preds = %31
  %35 = load i32, i32* %14, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds [5 x %struct.TYPE_34__], [5 x %struct.TYPE_34__]* %18, i64 0, i64 %36
  %38 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %37, i32 0, i32 1
  store i64 0, i64* %38, align 8
  br label %39

39:                                               ; preds = %34
  %40 = load i32, i32* %14, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %14, align 4
  br label %31

42:                                               ; preds = %31
  %43 = load %struct.TYPE_34__*, %struct.TYPE_34__** %13, align 8
  %44 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %43, i64 5
  store %struct.TYPE_34__* %44, %struct.TYPE_34__** %17, align 8
  %45 = load %struct.TYPE_34__*, %struct.TYPE_34__** %17, align 8
  %46 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = call i32 (i8*, ...) @dprintf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0), i64 %47)
  %49 = call i32 @dbug(i32 1, i32 %48)
  %50 = load %struct.TYPE_34__*, %struct.TYPE_34__** %17, align 8
  %51 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %92

54:                                               ; preds = %42
  %55 = load %struct.TYPE_34__*, %struct.TYPE_34__** %17, align 8
  %56 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %55, i32 0, i32 0
  %57 = load i32*, i32** %56, align 8
  %58 = getelementptr inbounds i32, i32* %57, i64 1
  %59 = load %struct.TYPE_34__*, %struct.TYPE_34__** %17, align 8
  %60 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %59, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  %62 = trunc i64 %61 to i32
  %63 = getelementptr inbounds [5 x %struct.TYPE_34__], [5 x %struct.TYPE_34__]* %18, i64 0, i64 0
  %64 = call i32 @api_parse(i32* %58, i32 %62, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), %struct.TYPE_34__* %63)
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %91, label %66

66:                                               ; preds = %54
  %67 = getelementptr inbounds [5 x %struct.TYPE_34__], [5 x %struct.TYPE_34__]* %18, i64 0, i64 0
  %68 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %67, i32 0, i32 1
  %69 = load i64, i64* %68, align 8
  %70 = getelementptr inbounds [5 x %struct.TYPE_34__], [5 x %struct.TYPE_34__]* %18, i64 0, i64 0
  %71 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %70, i32 0, i32 0
  %72 = load i32*, i32** %71, align 16
  %73 = getelementptr inbounds i32, i32* %72, i64 1
  %74 = call i32 @GET_WORD(i32* %73)
  %75 = call i32 (i8*, ...) @dprintf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0), i64 %69, i32 %74)
  %76 = call i32 @dbug(i32 1, i32 %75)
  store i32 0, i32* %19, align 4
  %77 = getelementptr inbounds [5 x %struct.TYPE_34__], [5 x %struct.TYPE_34__]* %18, i64 0, i64 0
  %78 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %77, i32 0, i32 1
  %79 = load i64, i64* %78, align 8
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %90

81:                                               ; preds = %66
  %82 = getelementptr inbounds [5 x %struct.TYPE_34__], [5 x %struct.TYPE_34__]* %18, i64 0, i64 0
  %83 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %82, i32 0, i32 0
  %84 = load i32*, i32** %83, align 16
  %85 = getelementptr inbounds i32, i32* %84, i64 1
  %86 = call i32 @GET_WORD(i32* %85)
  store i32 %86, i32* %19, align 4
  %87 = load i32, i32* %19, align 4
  %88 = call i32 (i8*, ...) @dprintf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0), i32 %87)
  %89 = call i32 @dbug(i32 1, i32 %88)
  br label %90

90:                                               ; preds = %81, %66
  br label %91

91:                                               ; preds = %90, %54
  br label %92

92:                                               ; preds = %91, %42
  %93 = load %struct.TYPE_31__*, %struct.TYPE_31__** %11, align 8
  %94 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = load i64, i64* @INC_CON_CONNECTED_ALERT, align 8
  %97 = icmp eq i64 %95, %96
  br i1 %97, label %98, label %139

98:                                               ; preds = %92
  %99 = call i32 (i8*, ...) @dprintf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.6, i64 0, i64 0))
  %100 = call i32 @dbug(i32 1, i32 %99)
  %101 = load %struct.TYPE_32__*, %struct.TYPE_32__** %10, align 8
  %102 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %101, i32 0, i32 0
  %103 = load i32*, i32** %102, align 8
  %104 = load %struct.TYPE_33__*, %struct.TYPE_33__** %12, align 8
  %105 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = sub nsw i32 %106, 1
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds i32, i32* %103, i64 %108
  %110 = load i32, i32* %109, align 4
  %111 = and i32 %110, 512
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %117

113:                                              ; preds = %98
  %114 = load %struct.TYPE_31__*, %struct.TYPE_31__** %11, align 8
  %115 = load i32, i32* @LLI, align 4
  %116 = call i32 (%struct.TYPE_31__*, i32, ...) @add_p(%struct.TYPE_31__* %114, i32 %115, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0))
  br label %117

117:                                              ; preds = %113, %98
  %118 = load %struct.TYPE_31__*, %struct.TYPE_31__** %11, align 8
  %119 = load i32, i32* @CONN_NR, align 4
  %120 = load %struct.TYPE_34__*, %struct.TYPE_34__** %13, align 8
  %121 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %120, i64 2
  %122 = call i32 @add_s(%struct.TYPE_31__* %118, i32 %119, %struct.TYPE_34__* %121)
  %123 = load %struct.TYPE_31__*, %struct.TYPE_31__** %11, align 8
  %124 = load i32, i32* @LLC, align 4
  %125 = load %struct.TYPE_34__*, %struct.TYPE_34__** %13, align 8
  %126 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %125, i64 4
  %127 = call i32 @add_s(%struct.TYPE_31__* %123, i32 %124, %struct.TYPE_34__* %126)
  %128 = load %struct.TYPE_31__*, %struct.TYPE_31__** %11, align 8
  %129 = load %struct.TYPE_34__*, %struct.TYPE_34__** %13, align 8
  %130 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %129, i64 5
  %131 = call i32 @add_ai(%struct.TYPE_31__* %128, %struct.TYPE_34__* %130)
  %132 = load i8*, i8** @INC_CON_ACCEPT, align 8
  %133 = ptrtoint i8* %132 to i64
  %134 = load %struct.TYPE_31__*, %struct.TYPE_31__** %11, align 8
  %135 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %134, i32 0, i32 0
  store i64 %133, i64* %135, align 8
  %136 = load %struct.TYPE_31__*, %struct.TYPE_31__** %11, align 8
  %137 = load i64, i64* @CALL_RES, align 8
  %138 = call i32 @sig_req(%struct.TYPE_31__* %136, i64 %137, i32 0)
  store i32 1, i32* %7, align 4
  br label %407

139:                                              ; preds = %92
  %140 = load %struct.TYPE_31__*, %struct.TYPE_31__** %11, align 8
  %141 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %140, i32 0, i32 0
  %142 = load i64, i64* %141, align 8
  %143 = load i64, i64* @INC_CON_PENDING, align 8
  %144 = icmp eq i64 %142, %143
  br i1 %144, label %151, label %145

145:                                              ; preds = %139
  %146 = load %struct.TYPE_31__*, %struct.TYPE_31__** %11, align 8
  %147 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %146, i32 0, i32 0
  %148 = load i64, i64* %147, align 8
  %149 = load i64, i64* @INC_CON_ALERT, align 8
  %150 = icmp eq i64 %148, %149
  br i1 %150, label %151, label %405

151:                                              ; preds = %145, %139
  %152 = load %struct.TYPE_31__*, %struct.TYPE_31__** %11, align 8
  %153 = load %struct.TYPE_33__*, %struct.TYPE_33__** %12, align 8
  %154 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 4
  %156 = sub nsw i32 %155, 1
  %157 = call i32 @clear_c_ind_mask_bit(%struct.TYPE_31__* %152, i32 %156)
  %158 = load %struct.TYPE_31__*, %struct.TYPE_31__** %11, align 8
  %159 = call i32 @dump_c_ind_mask(%struct.TYPE_31__* %158)
  %160 = load %struct.TYPE_34__*, %struct.TYPE_34__** %13, align 8
  %161 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %160, i64 0
  %162 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %161, i32 0, i32 0
  %163 = load i32*, i32** %162, align 8
  %164 = call i32 @GET_WORD(i32* %163)
  store i32 %164, i32* %16, align 4
  %165 = load i32, i32* %16, align 4
  %166 = call i32 (i8*, ...) @dprintf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.8, i64 0, i64 0), i32 %165)
  %167 = call i32 @dbug(i32 1, i32 %166)
  %168 = load i32, i32* %16, align 4
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %170, label %234

170:                                              ; preds = %151
  %171 = load %struct.TYPE_31__*, %struct.TYPE_31__** %11, align 8
  %172 = call i64 @c_ind_mask_empty(%struct.TYPE_31__* %171)
  %173 = icmp ne i64 %172, 0
  br i1 %173, label %174, label %227

174:                                              ; preds = %170
  %175 = load i32, i32* %16, align 4
  %176 = and i32 %175, 65280
  %177 = icmp eq i32 %176, 13312
  br i1 %177, label %178, label %192

178:                                              ; preds = %174
  %179 = load i32, i32* %16, align 4
  %180 = and i32 %179, 255
  %181 = or i32 %180, 128
  store i32 %181, i32* getelementptr inbounds ([4 x i32], [4 x i32]* @connect_res.esc_t, i64 0, i64 2), align 8
  %182 = load %struct.TYPE_31__*, %struct.TYPE_31__** %11, align 8
  %183 = load i32, i32* @ESC, align 4
  %184 = call i32 (%struct.TYPE_31__*, i32, ...) @add_p(%struct.TYPE_31__* %182, i32 %183, i32* getelementptr inbounds ([4 x i32], [4 x i32]* @connect_res.esc_t, i64 0, i64 0))
  %185 = load %struct.TYPE_31__*, %struct.TYPE_31__** %11, align 8
  %186 = load %struct.TYPE_34__*, %struct.TYPE_34__** %13, align 8
  %187 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %186, i64 5
  %188 = call i32 @add_ai(%struct.TYPE_31__* %185, %struct.TYPE_34__* %187)
  %189 = load %struct.TYPE_31__*, %struct.TYPE_31__** %11, align 8
  %190 = load i64, i64* @REJECT, align 8
  %191 = call i32 @sig_req(%struct.TYPE_31__* %189, i64 %190, i32 0)
  br label %223

192:                                              ; preds = %174
  %193 = load i32, i32* %16, align 4
  %194 = icmp eq i32 %193, 1
  br i1 %194, label %198, label %195

195:                                              ; preds = %192
  %196 = load i32, i32* %16, align 4
  %197 = icmp sgt i32 %196, 9
  br i1 %197, label %198, label %206

198:                                              ; preds = %195, %192
  %199 = load %struct.TYPE_31__*, %struct.TYPE_31__** %11, align 8
  %200 = load %struct.TYPE_34__*, %struct.TYPE_34__** %13, align 8
  %201 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %200, i64 5
  %202 = call i32 @add_ai(%struct.TYPE_31__* %199, %struct.TYPE_34__* %201)
  %203 = load %struct.TYPE_31__*, %struct.TYPE_31__** %11, align 8
  %204 = load i64, i64* @HANGUP, align 8
  %205 = call i32 @sig_req(%struct.TYPE_31__* %203, i64 %204, i32 0)
  br label %222

206:                                              ; preds = %195
  %207 = load i32, i32* %16, align 4
  %208 = and i32 %207, 15
  %209 = sext i32 %208 to i64
  %210 = getelementptr inbounds [9 x i32], [9 x i32]* @connect_res.cau_t, i64 0, i64 %209
  %211 = load i32, i32* %210, align 4
  store i32 %211, i32* getelementptr inbounds ([4 x i32], [4 x i32]* @connect_res.esc_t, i64 0, i64 2), align 8
  %212 = load %struct.TYPE_31__*, %struct.TYPE_31__** %11, align 8
  %213 = load i32, i32* @ESC, align 4
  %214 = call i32 (%struct.TYPE_31__*, i32, ...) @add_p(%struct.TYPE_31__* %212, i32 %213, i32* getelementptr inbounds ([4 x i32], [4 x i32]* @connect_res.esc_t, i64 0, i64 0))
  %215 = load %struct.TYPE_31__*, %struct.TYPE_31__** %11, align 8
  %216 = load %struct.TYPE_34__*, %struct.TYPE_34__** %13, align 8
  %217 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %216, i64 5
  %218 = call i32 @add_ai(%struct.TYPE_31__* %215, %struct.TYPE_34__* %217)
  %219 = load %struct.TYPE_31__*, %struct.TYPE_31__** %11, align 8
  %220 = load i64, i64* @REJECT, align 8
  %221 = call i32 @sig_req(%struct.TYPE_31__* %219, i64 %220, i32 0)
  br label %222

222:                                              ; preds = %206, %198
  br label %223

223:                                              ; preds = %222, %178
  %224 = load %struct.TYPE_33__*, %struct.TYPE_33__** %12, align 8
  %225 = load %struct.TYPE_31__*, %struct.TYPE_31__** %11, align 8
  %226 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %225, i32 0, i32 8
  store %struct.TYPE_33__* %224, %struct.TYPE_33__** %226, align 8
  br label %233

227:                                              ; preds = %170
  %228 = load %struct.TYPE_33__*, %struct.TYPE_33__** %12, align 8
  %229 = load i32, i32* @_DISCONNECT_I, align 4
  %230 = load i32, i32* %8, align 4
  %231 = load i32, i32* @_OTHER_APPL_CONNECTED, align 4
  %232 = call i32 @sendf(%struct.TYPE_33__* %228, i32 %229, i32 %230, i32 0, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i64 0, i64 0), i32 %231)
  br label %233

233:                                              ; preds = %227, %223
  br label %404

234:                                              ; preds = %151
  %235 = load %struct.TYPE_33__*, %struct.TYPE_33__** %12, align 8
  %236 = load %struct.TYPE_31__*, %struct.TYPE_31__** %11, align 8
  %237 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %236, i32 0, i32 8
  store %struct.TYPE_33__* %235, %struct.TYPE_33__** %237, align 8
  %238 = load i32, i32* %8, align 4
  %239 = load i32, i32* @EXT_CONTROLLER, align 4
  %240 = and i32 %238, %239
  %241 = icmp ne i32 %240, 0
  br i1 %241, label %242, label %289

242:                                              ; preds = %234
  %243 = load %struct.TYPE_32__*, %struct.TYPE_32__** %10, align 8
  %244 = load %struct.TYPE_31__*, %struct.TYPE_31__** %11, align 8
  %245 = load %struct.TYPE_33__*, %struct.TYPE_33__** %12, align 8
  %246 = call i64 @AdvCodecSupport(%struct.TYPE_32__* %243, %struct.TYPE_31__* %244, %struct.TYPE_33__* %245, i32 0)
  %247 = icmp ne i64 %246, 0
  br i1 %247, label %248, label %254

248:                                              ; preds = %242
  %249 = call i32 (i8*, ...) @dprintf(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.10, i64 0, i64 0))
  %250 = call i32 @dbug(i32 1, i32 %249)
  %251 = load %struct.TYPE_31__*, %struct.TYPE_31__** %11, align 8
  %252 = load i64, i64* @HANGUP, align 8
  %253 = call i32 @sig_req(%struct.TYPE_31__* %251, i64 %252, i32 0)
  store i32 1, i32* %7, align 4
  br label %407

254:                                              ; preds = %242
  %255 = load %struct.TYPE_31__*, %struct.TYPE_31__** %11, align 8
  %256 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %255, i32 0, i32 1
  %257 = load i64, i64* %256, align 8
  %258 = load i64, i64* @ADV_VOICE, align 8
  %259 = icmp eq i64 %257, %258
  br i1 %259, label %260, label %288

260:                                              ; preds = %254
  %261 = load %struct.TYPE_32__*, %struct.TYPE_32__** %10, align 8
  %262 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %261, i32 0, i32 1
  %263 = load i64, i64* %262, align 8
  %264 = icmp ne i64 %263, 0
  br i1 %264, label %265, label %288

265:                                              ; preds = %260
  %266 = load %struct.TYPE_31__*, %struct.TYPE_31__** %11, align 8
  %267 = load %struct.TYPE_34__*, %struct.TYPE_34__** %13, align 8
  %268 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %267, i64 1
  %269 = call i32 @add_b23(%struct.TYPE_31__* %266, %struct.TYPE_34__* %268)
  store i32 %269, i32* %15, align 4
  %270 = load i32, i32* %15, align 4
  %271 = icmp ne i32 %270, 0
  br i1 %271, label %272, label %278

272:                                              ; preds = %265
  %273 = call i32 (i8*, ...) @dprintf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.11, i64 0, i64 0))
  %274 = call i32 @dbug(i32 1, i32 %273)
  %275 = load %struct.TYPE_31__*, %struct.TYPE_31__** %11, align 8
  %276 = load i64, i64* @HANGUP, align 8
  %277 = call i32 @sig_req(%struct.TYPE_31__* %275, i64 %276, i32 0)
  store i32 1, i32* %7, align 4
  br label %407

278:                                              ; preds = %265
  %279 = load %struct.TYPE_31__*, %struct.TYPE_31__** %11, align 8
  %280 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %279, i32 0, i32 7
  %281 = load i64, i64* %280, align 8
  %282 = icmp ne i64 %281, 0
  br i1 %282, label %283, label %287

283:                                              ; preds = %278
  %284 = load %struct.TYPE_31__*, %struct.TYPE_31__** %11, align 8
  %285 = load i32, i32* @ASSIGN, align 4
  %286 = call i32 @nl_req_ncci(%struct.TYPE_31__* %284, i32 %285, i32 0)
  br label %287

287:                                              ; preds = %283, %278
  br label %288

288:                                              ; preds = %287, %260, %254
  br label %312

289:                                              ; preds = %234
  %290 = load %struct.TYPE_31__*, %struct.TYPE_31__** %11, align 8
  %291 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %290, i32 0, i32 1
  store i64 0, i64* %291, align 8
  %292 = load i32, i32* %19, align 4
  %293 = icmp ne i32 %292, 2
  br i1 %293, label %294, label %308

294:                                              ; preds = %289
  %295 = load %struct.TYPE_31__*, %struct.TYPE_31__** %11, align 8
  %296 = load %struct.TYPE_34__*, %struct.TYPE_34__** %13, align 8
  %297 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %296, i64 1
  %298 = call i32 @add_b23(%struct.TYPE_31__* %295, %struct.TYPE_34__* %297)
  store i32 %298, i32* %15, align 4
  %299 = load i32, i32* %15, align 4
  %300 = icmp ne i32 %299, 0
  br i1 %300, label %301, label %307

301:                                              ; preds = %294
  %302 = call i32 (i8*, ...) @dprintf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.12, i64 0, i64 0))
  %303 = call i32 @dbug(i32 1, i32 %302)
  %304 = load %struct.TYPE_31__*, %struct.TYPE_31__** %11, align 8
  %305 = load i64, i64* @HANGUP, align 8
  %306 = call i32 @sig_req(%struct.TYPE_31__* %304, i64 %305, i32 0)
  store i32 1, i32* %7, align 4
  br label %407

307:                                              ; preds = %294
  br label %308

308:                                              ; preds = %307, %289
  %309 = load %struct.TYPE_31__*, %struct.TYPE_31__** %11, align 8
  %310 = load i32, i32* @ASSIGN, align 4
  %311 = call i32 @nl_req_ncci(%struct.TYPE_31__* %309, i32 %310, i32 0)
  br label %312

312:                                              ; preds = %308, %288
  %313 = load %struct.TYPE_31__*, %struct.TYPE_31__** %11, align 8
  %314 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %313, i32 0, i32 2
  %315 = load i64, i64* %314, align 8
  %316 = load i64, i64* @SPOOFING_REQUIRED, align 8
  %317 = icmp eq i64 %315, %316
  br i1 %317, label %318, label %333

318:                                              ; preds = %312
  %319 = load %struct.TYPE_34__*, %struct.TYPE_34__** %13, align 8
  %320 = load %struct.TYPE_31__*, %struct.TYPE_31__** %11, align 8
  %321 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %320, i32 0, i32 6
  %322 = call i32 @api_save_msg(%struct.TYPE_34__* %319, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.13, i64 0, i64 0), i32* %321)
  %323 = load i64, i64* @CALL_RES, align 8
  %324 = load %struct.TYPE_31__*, %struct.TYPE_31__** %11, align 8
  %325 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %324, i32 0, i32 2
  store i64 %323, i64* %325, align 8
  %326 = load i32, i32* @BLOCK_PLCI, align 4
  %327 = load %struct.TYPE_31__*, %struct.TYPE_31__** %11, align 8
  %328 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %327, i32 0, i32 5
  store i32 %326, i32* %328, align 8
  %329 = load %struct.TYPE_31__*, %struct.TYPE_31__** %11, align 8
  %330 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %329, i32 0, i32 4
  store i64 0, i64* %330, align 8
  %331 = call i32 (i8*, ...) @dprintf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.14, i64 0, i64 0))
  %332 = call i32 @dbug(i32 1, i32 %331)
  br label %380

333:                                              ; preds = %312
  %334 = load %struct.TYPE_31__*, %struct.TYPE_31__** %11, align 8
  %335 = load %struct.TYPE_34__*, %struct.TYPE_34__** %13, align 8
  %336 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %335, i64 1
  %337 = load i32, i32* %19, align 4
  %338 = load %struct.TYPE_31__*, %struct.TYPE_31__** %11, align 8
  %339 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %338, i32 0, i32 3
  %340 = load i32, i32* %339, align 8
  %341 = call i32 @add_b1(%struct.TYPE_31__* %334, %struct.TYPE_34__* %336, i32 %337, i32 %340)
  %342 = load %struct.TYPE_32__*, %struct.TYPE_32__** %10, align 8
  %343 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %342, i32 0, i32 0
  %344 = load i32*, i32** %343, align 8
  %345 = load %struct.TYPE_33__*, %struct.TYPE_33__** %12, align 8
  %346 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %345, i32 0, i32 0
  %347 = load i32, i32* %346, align 4
  %348 = sub nsw i32 %347, 1
  %349 = sext i32 %348 to i64
  %350 = getelementptr inbounds i32, i32* %344, i64 %349
  %351 = load i32, i32* %350, align 4
  %352 = and i32 %351, 512
  %353 = icmp ne i32 %352, 0
  br i1 %353, label %354, label %358

354:                                              ; preds = %333
  %355 = load %struct.TYPE_31__*, %struct.TYPE_31__** %11, align 8
  %356 = load i32, i32* @LLI, align 4
  %357 = call i32 (%struct.TYPE_31__*, i32, ...) @add_p(%struct.TYPE_31__* %355, i32 %356, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0))
  br label %358

358:                                              ; preds = %354, %333
  %359 = load %struct.TYPE_31__*, %struct.TYPE_31__** %11, align 8
  %360 = load i32, i32* @CONN_NR, align 4
  %361 = load %struct.TYPE_34__*, %struct.TYPE_34__** %13, align 8
  %362 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %361, i64 2
  %363 = call i32 @add_s(%struct.TYPE_31__* %359, i32 %360, %struct.TYPE_34__* %362)
  %364 = load %struct.TYPE_31__*, %struct.TYPE_31__** %11, align 8
  %365 = load i32, i32* @LLC, align 4
  %366 = load %struct.TYPE_34__*, %struct.TYPE_34__** %13, align 8
  %367 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %366, i64 4
  %368 = call i32 @add_s(%struct.TYPE_31__* %364, i32 %365, %struct.TYPE_34__* %367)
  %369 = load %struct.TYPE_31__*, %struct.TYPE_31__** %11, align 8
  %370 = load %struct.TYPE_34__*, %struct.TYPE_34__** %13, align 8
  %371 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %370, i64 5
  %372 = call i32 @add_ai(%struct.TYPE_31__* %369, %struct.TYPE_34__* %371)
  %373 = load i8*, i8** @INC_CON_ACCEPT, align 8
  %374 = ptrtoint i8* %373 to i64
  %375 = load %struct.TYPE_31__*, %struct.TYPE_31__** %11, align 8
  %376 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %375, i32 0, i32 0
  store i64 %374, i64* %376, align 8
  %377 = load %struct.TYPE_31__*, %struct.TYPE_31__** %11, align 8
  %378 = load i64, i64* @CALL_RES, align 8
  %379 = call i32 @sig_req(%struct.TYPE_31__* %377, i64 %378, i32 0)
  br label %380

380:                                              ; preds = %358, %318
  store i32 0, i32* %14, align 4
  br label %381

381:                                              ; preds = %400, %380
  %382 = load i32, i32* %14, align 4
  %383 = load i32, i32* @max_appl, align 4
  %384 = icmp slt i32 %382, %383
  br i1 %384, label %385, label %403

385:                                              ; preds = %381
  %386 = load %struct.TYPE_31__*, %struct.TYPE_31__** %11, align 8
  %387 = load i32, i32* %14, align 4
  %388 = call i64 @test_c_ind_mask_bit(%struct.TYPE_31__* %386, i32 %387)
  %389 = icmp ne i64 %388, 0
  br i1 %389, label %390, label %399

390:                                              ; preds = %385
  %391 = load %struct.TYPE_33__*, %struct.TYPE_33__** @application, align 8
  %392 = load i32, i32* %14, align 4
  %393 = sext i32 %392 to i64
  %394 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %391, i64 %393
  %395 = load i32, i32* @_DISCONNECT_I, align 4
  %396 = load i32, i32* %8, align 4
  %397 = load i32, i32* @_OTHER_APPL_CONNECTED, align 4
  %398 = call i32 @sendf(%struct.TYPE_33__* %394, i32 %395, i32 %396, i32 0, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i64 0, i64 0), i32 %397)
  br label %399

399:                                              ; preds = %390, %385
  br label %400

400:                                              ; preds = %399
  %401 = load i32, i32* %14, align 4
  %402 = add nsw i32 %401, 1
  store i32 %402, i32* %14, align 4
  br label %381

403:                                              ; preds = %381
  br label %404

404:                                              ; preds = %403, %233
  br label %405

405:                                              ; preds = %404, %145
  br label %406

406:                                              ; preds = %405
  store i32 1, i32* %7, align 4
  br label %407

407:                                              ; preds = %406, %301, %272, %248, %117, %22
  %408 = load i32, i32* %7, align 4
  ret i32 %408
}

declare dso_local i32 @dbug(i32, i32) #1

declare dso_local i32 @dprintf(i8*, ...) #1

declare dso_local i32 @api_parse(i32*, i32, i8*, %struct.TYPE_34__*) #1

declare dso_local i32 @GET_WORD(i32*) #1

declare dso_local i32 @add_p(%struct.TYPE_31__*, i32, ...) #1

declare dso_local i32 @add_s(%struct.TYPE_31__*, i32, %struct.TYPE_34__*) #1

declare dso_local i32 @add_ai(%struct.TYPE_31__*, %struct.TYPE_34__*) #1

declare dso_local i32 @sig_req(%struct.TYPE_31__*, i64, i32) #1

declare dso_local i32 @clear_c_ind_mask_bit(%struct.TYPE_31__*, i32) #1

declare dso_local i32 @dump_c_ind_mask(%struct.TYPE_31__*) #1

declare dso_local i64 @c_ind_mask_empty(%struct.TYPE_31__*) #1

declare dso_local i32 @sendf(%struct.TYPE_33__*, i32, i32, i32, i8*, i32) #1

declare dso_local i64 @AdvCodecSupport(%struct.TYPE_32__*, %struct.TYPE_31__*, %struct.TYPE_33__*, i32) #1

declare dso_local i32 @add_b23(%struct.TYPE_31__*, %struct.TYPE_34__*) #1

declare dso_local i32 @nl_req_ncci(%struct.TYPE_31__*, i32, i32) #1

declare dso_local i32 @api_save_msg(%struct.TYPE_34__*, i8*, i32*) #1

declare dso_local i32 @add_b1(%struct.TYPE_31__*, %struct.TYPE_34__*, i32, i32) #1

declare dso_local i64 @test_c_ind_mask_bit(%struct.TYPE_31__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
