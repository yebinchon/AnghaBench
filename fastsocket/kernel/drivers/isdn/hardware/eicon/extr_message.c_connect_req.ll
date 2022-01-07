; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hardware/eicon/extr_message.c_connect_req.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hardware/eicon/extr_message.c_connect_req.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_31__ = type { i32, i32*, i64, %struct.TYPE_30__*, i64 }
%struct.TYPE_30__ = type { i32, i32, i32, i32, i64, i64, %struct.TYPE_32__*, i32, i32, i32, i64, %struct.TYPE_29__, i32 }
%struct.TYPE_29__ = type { i32 }
%struct.TYPE_32__ = type { i32 }
%struct.TYPE_33__ = type { i32, i32* }

@connect_req.esc_chi = internal global <{ i32, i32, i32, [32 x i32] }> <{ i32 2, i32 24, i32 1, [32 x i32] zeroinitializer }>, align 16
@connect_req.lli = internal global [2 x i32] [i32 1, i32 0], align 4
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"connect_req(%d)\00", align 1
@_WRONG_IDENTIFIER = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [17 x i8] c"adapter disabled\00", align 1
@_CONNECT_R = common dso_local global i32 0, align 4
@CONFIRM = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@_DISCONNECT_I = common dso_local global i32 0, align 4
@_L1_ERROR = common dso_local global i32 0, align 4
@_OUT_OF_PLCI = common dso_local global i32 0, align 4
@CALL_DIR_OUT = common dso_local global i32 0, align 4
@CALL_DIR_ORIGINATE = common dso_local global i32 0, align 4
@EXT_CONTROLLER = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [5 x i8] c"ssss\00", align 1
@CHI = common dso_local global i32 0, align 4
@_WRONG_MESSAGE_FORMAT = common dso_local global i32 0, align 4
@LLI = common dso_local global i32 0, align 4
@ESC = common dso_local global i32 0, align 4
@LOCAL_CONNECT = common dso_local global i32 0, align 4
@CALL_DIR_FORCE_OUTG_NL = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [21 x i8] c"ch=%x,dir=%x,p_ch=%d\00", align 1
@OAD = common dso_local global i32 0, align 4
@OSA = common dso_local global i32 0, align 4
@BC = common dso_local global i32 0, align 4
@LLC = common dso_local global i32 0, align 4
@HLC = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [3 x i8] c"\01\01\00", align 1
@cip_bc = common dso_local global i8*** null, align 8
@cip_hlc = common dso_local global i8** null, align 8
@UID = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [8 x i8] c"\06Capi20\00", align 1
@ASSIGN = common dso_local global i64 0, align 8
@DSIG_ID = common dso_local global i32 0, align 4
@SPOOFING_REQUIRED = common dso_local global i64 0, align 8
@.str.8 = private unnamed_addr constant [11 x i8] c"wsssssssss\00", align 1
@CALL_REQ = common dso_local global i64 0, align 8
@BLOCK_PLCI = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [6 x i8] c"Spoof\00", align 1
@CPN = common dso_local global i32 0, align 4
@DSA = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [4 x i8] c"\02\18\FD\00", align 1
@PERM_LIST_REQ = common dso_local global i32 0, align 4
@LISTEN_REQ = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, %struct.TYPE_31__*, %struct.TYPE_30__*, %struct.TYPE_32__*, %struct.TYPE_33__*)* @connect_req to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @connect_req(i32 %0, i32 %1, %struct.TYPE_31__* %2, %struct.TYPE_30__* %3, %struct.TYPE_32__* %4, %struct.TYPE_33__* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_31__*, align 8
  %11 = alloca %struct.TYPE_30__*, align 8
  %12 = alloca %struct.TYPE_32__*, align 8
  %13 = alloca %struct.TYPE_33__*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca %struct.TYPE_33__*, align 8
  %20 = alloca %struct.TYPE_33__*, align 8
  %21 = alloca [5 x %struct.TYPE_33__], align 16
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32*, align 8
  store i32 %0, i32* %8, align 4
  store i32 %1, i32* %9, align 4
  store %struct.TYPE_31__* %2, %struct.TYPE_31__** %10, align 8
  store %struct.TYPE_30__* %3, %struct.TYPE_30__** %11, align 8
  store %struct.TYPE_32__* %4, %struct.TYPE_32__** %12, align 8
  store %struct.TYPE_33__* %5, %struct.TYPE_33__** %13, align 8
  store i32 0, i32* %22, align 4
  store i32 0, i32* %25, align 4
  store i32 0, i32* %26, align 4
  store i32* bitcast ([1 x i8]* @.str to i32*), i32** %27, align 8
  store i32 0, i32* %15, align 4
  br label %28

28:                                               ; preds = %36, %6
  %29 = load i32, i32* %15, align 4
  %30 = icmp slt i32 %29, 5
  br i1 %30, label %31, label %39

31:                                               ; preds = %28
  %32 = load i32, i32* %15, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds [5 x %struct.TYPE_33__], [5 x %struct.TYPE_33__]* %21, i64 0, i64 %33
  %35 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %34, i32 0, i32 0
  store i32 0, i32* %35, align 16
  br label %36

36:                                               ; preds = %31
  %37 = load i32, i32* %15, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %15, align 4
  br label %28

39:                                               ; preds = %28
  %40 = load %struct.TYPE_33__*, %struct.TYPE_33__** %13, align 8
  %41 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = call i32 (i8*, ...) @dprintf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i32 %42)
  %44 = call i32 @dbug(i32 1, i32 %43)
  %45 = load i32, i32* @_WRONG_IDENTIFIER, align 4
  store i32 %45, i32* %16, align 4
  %46 = load %struct.TYPE_31__*, %struct.TYPE_31__** %10, align 8
  %47 = icmp ne %struct.TYPE_31__* %46, null
  br i1 %47, label %48, label %630

48:                                               ; preds = %39
  %49 = load %struct.TYPE_31__*, %struct.TYPE_31__** %10, align 8
  %50 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %49, i32 0, i32 4
  %51 = load i64, i64* %50, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %72

53:                                               ; preds = %48
  %54 = call i32 (i8*, ...) @dprintf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0))
  %55 = call i32 @dbug(i32 1, i32 %54)
  %56 = load %struct.TYPE_31__*, %struct.TYPE_31__** %10, align 8
  %57 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = or i32 256, %58
  store i32 %59, i32* %8, align 4
  %60 = load %struct.TYPE_32__*, %struct.TYPE_32__** %12, align 8
  %61 = load i32, i32* @_CONNECT_R, align 4
  %62 = load i32, i32* @CONFIRM, align 4
  %63 = or i32 %61, %62
  %64 = load i32, i32* %8, align 4
  %65 = load i32, i32* %9, align 4
  %66 = call i32 @sendf(%struct.TYPE_32__* %60, i32 %63, i32 %64, i32 %65, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0), i32 0)
  %67 = load %struct.TYPE_32__*, %struct.TYPE_32__** %12, align 8
  %68 = load i32, i32* @_DISCONNECT_I, align 4
  %69 = load i32, i32* %8, align 4
  %70 = load i32, i32* @_L1_ERROR, align 4
  %71 = call i32 @sendf(%struct.TYPE_32__* %67, i32 %68, i32 %69, i32 0, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0), i32 %70)
  store i32 0, i32* %7, align 4
  br label %639

72:                                               ; preds = %48
  %73 = load i32, i32* @_OUT_OF_PLCI, align 4
  store i32 %73, i32* %16, align 4
  %74 = load %struct.TYPE_31__*, %struct.TYPE_31__** %10, align 8
  %75 = call i32 @get_plci(%struct.TYPE_31__* %74)
  store i32 %75, i32* %15, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %629

77:                                               ; preds = %72
  store i32 0, i32* %16, align 4
  %78 = load %struct.TYPE_31__*, %struct.TYPE_31__** %10, align 8
  %79 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %78, i32 0, i32 3
  %80 = load %struct.TYPE_30__*, %struct.TYPE_30__** %79, align 8
  %81 = load i32, i32* %15, align 4
  %82 = sub nsw i32 %81, 1
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %80, i64 %83
  store %struct.TYPE_30__* %84, %struct.TYPE_30__** %11, align 8
  %85 = load %struct.TYPE_32__*, %struct.TYPE_32__** %12, align 8
  %86 = load %struct.TYPE_30__*, %struct.TYPE_30__** %11, align 8
  %87 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %86, i32 0, i32 6
  store %struct.TYPE_32__* %85, %struct.TYPE_32__** %87, align 8
  %88 = load i32, i32* @CALL_DIR_OUT, align 4
  %89 = load i32, i32* @CALL_DIR_ORIGINATE, align 4
  %90 = or i32 %88, %89
  %91 = load %struct.TYPE_30__*, %struct.TYPE_30__** %11, align 8
  %92 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %91, i32 0, i32 0
  store i32 %90, i32* %92, align 8
  %93 = load i32, i32* %8, align 4
  %94 = load i32, i32* @EXT_CONTROLLER, align 4
  %95 = and i32 %93, %94
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %115

97:                                               ; preds = %77
  %98 = load %struct.TYPE_31__*, %struct.TYPE_31__** %10, align 8
  %99 = load %struct.TYPE_30__*, %struct.TYPE_30__** %11, align 8
  %100 = load %struct.TYPE_32__*, %struct.TYPE_32__** %12, align 8
  %101 = call i64 @AdvCodecSupport(%struct.TYPE_31__* %98, %struct.TYPE_30__* %99, %struct.TYPE_32__* %100, i32 0)
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %114

103:                                              ; preds = %97
  %104 = load %struct.TYPE_30__*, %struct.TYPE_30__** %11, align 8
  %105 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %104, i32 0, i32 5
  store i64 0, i64* %105, align 8
  %106 = load %struct.TYPE_32__*, %struct.TYPE_32__** %12, align 8
  %107 = load i32, i32* @_CONNECT_R, align 4
  %108 = load i32, i32* @CONFIRM, align 4
  %109 = or i32 %107, %108
  %110 = load i32, i32* %8, align 4
  %111 = load i32, i32* %9, align 4
  %112 = load i32, i32* @_WRONG_IDENTIFIER, align 4
  %113 = call i32 @sendf(%struct.TYPE_32__* %106, i32 %109, i32 %110, i32 %111, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0), i32 %112)
  store i32 2, i32* %7, align 4
  br label %639

114:                                              ; preds = %97
  br label %115

115:                                              ; preds = %114, %77
  %116 = load %struct.TYPE_33__*, %struct.TYPE_33__** %13, align 8
  %117 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %116, i64 9
  store %struct.TYPE_33__* %117, %struct.TYPE_33__** %19, align 8
  %118 = load %struct.TYPE_33__*, %struct.TYPE_33__** %13, align 8
  %119 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %118, i64 5
  store %struct.TYPE_33__* %119, %struct.TYPE_33__** %20, align 8
  store i32 0, i32* %14, align 4
  %120 = load %struct.TYPE_33__*, %struct.TYPE_33__** %20, align 8
  %121 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 8
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %130

124:                                              ; preds = %115
  %125 = load %struct.TYPE_33__*, %struct.TYPE_33__** %20, align 8
  %126 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %125, i32 0, i32 1
  %127 = load i32*, i32** %126, align 8
  %128 = getelementptr inbounds i32, i32* %127, i64 3
  %129 = load i32, i32* %128, align 4
  store i32 %129, i32* %18, align 4
  br label %131

130:                                              ; preds = %115
  store i32 0, i32* %18, align 4
  br label %131

131:                                              ; preds = %130, %124
  %132 = load %struct.TYPE_33__*, %struct.TYPE_33__** %19, align 8
  %133 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 8
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %349

136:                                              ; preds = %131
  store i32 65535, i32* %14, align 4
  %137 = load %struct.TYPE_33__*, %struct.TYPE_33__** %19, align 8
  %138 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %137, i32 0, i32 1
  %139 = load i32*, i32** %138, align 8
  %140 = getelementptr inbounds i32, i32* %139, i64 1
  %141 = load %struct.TYPE_33__*, %struct.TYPE_33__** %19, align 8
  %142 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 8
  %144 = getelementptr inbounds [5 x %struct.TYPE_33__], [5 x %struct.TYPE_33__]* %21, i64 0, i64 0
  %145 = call i32 @api_parse(i32* %140, i32 %143, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), %struct.TYPE_33__* %144)
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %346, label %147

147:                                              ; preds = %136
  store i32 0, i32* %14, align 4
  %148 = getelementptr inbounds [5 x %struct.TYPE_33__], [5 x %struct.TYPE_33__]* %21, i64 0, i64 0
  %149 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 16
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %152, label %345

152:                                              ; preds = %147
  %153 = getelementptr inbounds [5 x %struct.TYPE_33__], [5 x %struct.TYPE_33__]* %21, i64 0, i64 0
  %154 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %153, i32 0, i32 1
  %155 = load i32*, i32** %154, align 8
  %156 = getelementptr inbounds i32, i32* %155, i64 1
  %157 = call i64 @GET_WORD(i32* %156)
  %158 = trunc i64 %157 to i32
  store i32 %158, i32* %14, align 4
  %159 = load i32, i32* %14, align 4
  %160 = icmp sgt i32 %159, 4
  br i1 %160, label %161, label %162

161:                                              ; preds = %152
  store i32 0, i32* %14, align 4
  br label %162

162:                                              ; preds = %161, %152
  %163 = load i32, i32* %14, align 4
  %164 = icmp eq i32 %163, 4
  br i1 %164, label %165, label %201

165:                                              ; preds = %162
  %166 = getelementptr inbounds [5 x %struct.TYPE_33__], [5 x %struct.TYPE_33__]* %21, i64 0, i64 0
  %167 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %166, i32 0, i32 1
  %168 = load i32*, i32** %167, align 8
  %169 = getelementptr inbounds i32, i32* %168, i64 3
  %170 = load i32, i32* %169, align 4
  %171 = icmp sge i32 %170, 1
  br i1 %171, label %172, label %198

172:                                              ; preds = %165
  %173 = getelementptr inbounds [5 x %struct.TYPE_33__], [5 x %struct.TYPE_33__]* %21, i64 0, i64 0
  %174 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %173, i32 0, i32 1
  %175 = load i32*, i32** %174, align 8
  %176 = getelementptr inbounds i32, i32* %175, i64 4
  %177 = load i32, i32* %176, align 4
  %178 = load i32, i32* @CHI, align 4
  %179 = icmp eq i32 %177, %178
  br i1 %179, label %180, label %185

180:                                              ; preds = %172
  %181 = getelementptr inbounds [5 x %struct.TYPE_33__], [5 x %struct.TYPE_33__]* %21, i64 0, i64 0
  %182 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %181, i32 0, i32 1
  %183 = load i32*, i32** %182, align 8
  %184 = getelementptr inbounds i32, i32* %183, i64 5
  store i32* %184, i32** %27, align 8
  br label %190

185:                                              ; preds = %172
  %186 = getelementptr inbounds [5 x %struct.TYPE_33__], [5 x %struct.TYPE_33__]* %21, i64 0, i64 0
  %187 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %186, i32 0, i32 1
  %188 = load i32*, i32** %187, align 8
  %189 = getelementptr inbounds i32, i32* %188, i64 3
  store i32* %189, i32** %27, align 8
  br label %190

190:                                              ; preds = %185, %180
  %191 = load i32*, i32** %27, align 8
  %192 = getelementptr inbounds i32, i32* %191, i64 0
  %193 = load i32, i32* %192, align 4
  %194 = icmp sgt i32 %193, 35
  br i1 %194, label %195, label %197

195:                                              ; preds = %190
  %196 = load i32, i32* @_WRONG_MESSAGE_FORMAT, align 4
  store i32 %196, i32* %16, align 4
  br label %197

197:                                              ; preds = %195, %190
  br label %200

198:                                              ; preds = %165
  %199 = load i32, i32* @_WRONG_MESSAGE_FORMAT, align 4
  store i32 %199, i32* %16, align 4
  br label %200

200:                                              ; preds = %198, %197
  br label %201

201:                                              ; preds = %200, %162
  %202 = load i32, i32* %14, align 4
  %203 = icmp eq i32 %202, 3
  br i1 %203, label %204, label %344

204:                                              ; preds = %201
  %205 = getelementptr inbounds [5 x %struct.TYPE_33__], [5 x %struct.TYPE_33__]* %21, i64 0, i64 0
  %206 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %205, i32 0, i32 0
  %207 = load i32, i32* %206, align 16
  %208 = icmp sge i32 %207, 7
  br i1 %208, label %209, label %344

209:                                              ; preds = %204
  %210 = getelementptr inbounds [5 x %struct.TYPE_33__], [5 x %struct.TYPE_33__]* %21, i64 0, i64 0
  %211 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %210, i32 0, i32 0
  %212 = load i32, i32* %211, align 16
  %213 = icmp sle i32 %212, 36
  br i1 %213, label %214, label %344

214:                                              ; preds = %209
  %215 = getelementptr inbounds [5 x %struct.TYPE_33__], [5 x %struct.TYPE_33__]* %21, i64 0, i64 0
  %216 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %215, i32 0, i32 1
  %217 = load i32*, i32** %216, align 8
  %218 = getelementptr inbounds i32, i32* %217, i64 3
  %219 = call i64 @GET_WORD(i32* %218)
  %220 = trunc i64 %219 to i32
  store i32 %220, i32* %26, align 4
  store i32 0, i32* %23, align 4
  store i32 63, i32* %24, align 4
  store i32 0, i32* %15, align 4
  br label %221

221:                                              ; preds = %267, %214
  %222 = load i32, i32* %15, align 4
  %223 = add nsw i32 %222, 5
  %224 = getelementptr inbounds [5 x %struct.TYPE_33__], [5 x %struct.TYPE_33__]* %21, i64 0, i64 0
  %225 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %224, i32 0, i32 0
  %226 = load i32, i32* %225, align 16
  %227 = icmp sle i32 %223, %226
  br i1 %227, label %228, label %270

228:                                              ; preds = %221
  %229 = getelementptr inbounds [5 x %struct.TYPE_33__], [5 x %struct.TYPE_33__]* %21, i64 0, i64 0
  %230 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %229, i32 0, i32 1
  %231 = load i32*, i32** %230, align 8
  %232 = load i32, i32* %15, align 4
  %233 = add nsw i32 %232, 5
  %234 = sext i32 %233 to i64
  %235 = getelementptr inbounds i32, i32* %231, i64 %234
  %236 = load i32, i32* %235, align 4
  %237 = icmp ne i32 %236, 0
  br i1 %237, label %238, label %266

238:                                              ; preds = %228
  %239 = getelementptr inbounds [5 x %struct.TYPE_33__], [5 x %struct.TYPE_33__]* %21, i64 0, i64 0
  %240 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %239, i32 0, i32 1
  %241 = load i32*, i32** %240, align 8
  %242 = load i32, i32* %15, align 4
  %243 = add nsw i32 %242, 5
  %244 = sext i32 %243 to i64
  %245 = getelementptr inbounds i32, i32* %241, i64 %244
  %246 = load i32, i32* %245, align 4
  %247 = load i32, i32* %24, align 4
  %248 = or i32 %246, %247
  %249 = icmp ne i32 %248, 255
  br i1 %249, label %250, label %252

250:                                              ; preds = %238
  %251 = load i32, i32* @_WRONG_MESSAGE_FORMAT, align 4
  store i32 %251, i32* %16, align 4
  br label %265

252:                                              ; preds = %238
  %253 = load i32, i32* %23, align 4
  %254 = icmp eq i32 %253, 0
  br i1 %254, label %255, label %257

255:                                              ; preds = %252
  %256 = load i32, i32* %15, align 4
  store i32 %256, i32* %22, align 4
  br label %257

257:                                              ; preds = %255, %252
  %258 = load i32, i32* %15, align 4
  %259 = zext i32 %258 to i64
  %260 = shl i64 1, %259
  %261 = load i32, i32* %23, align 4
  %262 = sext i32 %261 to i64
  %263 = or i64 %262, %260
  %264 = trunc i64 %263 to i32
  store i32 %264, i32* %23, align 4
  br label %265

265:                                              ; preds = %257, %250
  br label %266

266:                                              ; preds = %265, %228
  store i32 0, i32* %24, align 4
  br label %267

267:                                              ; preds = %266
  %268 = load i32, i32* %15, align 4
  %269 = add nsw i32 %268, 1
  store i32 %269, i32* %15, align 4
  br label %221

270:                                              ; preds = %221
  %271 = load i32, i32* %23, align 4
  %272 = icmp eq i32 %271, 0
  br i1 %272, label %273, label %275

273:                                              ; preds = %270
  %274 = load i32, i32* @_WRONG_MESSAGE_FORMAT, align 4
  store i32 %274, i32* %16, align 4
  br label %275

275:                                              ; preds = %273, %270
  %276 = load i32, i32* %16, align 4
  %277 = icmp ne i32 %276, 0
  br i1 %277, label %343, label %278

278:                                              ; preds = %275
  %279 = getelementptr inbounds [5 x %struct.TYPE_33__], [5 x %struct.TYPE_33__]* %21, i64 0, i64 0
  %280 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %279, i32 0, i32 0
  %281 = load i32, i32* %280, align 16
  %282 = icmp eq i32 %281, 36
  br i1 %282, label %290, label %283

283:                                              ; preds = %278
  %284 = load i32, i32* %23, align 4
  %285 = load i32, i32* %22, align 4
  %286 = zext i32 %285 to i64
  %287 = shl i64 1, %286
  %288 = trunc i64 %287 to i32
  %289 = icmp ne i32 %284, %288
  br i1 %289, label %290, label %319

290:                                              ; preds = %283, %278
  %291 = getelementptr inbounds [5 x %struct.TYPE_33__], [5 x %struct.TYPE_33__]* %21, i64 0, i64 0
  %292 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %291, i32 0, i32 0
  %293 = load i32, i32* %292, align 16
  %294 = sub nsw i32 %293, 2
  store i32 %294, i32* getelementptr inbounds ([35 x i32], [35 x i32]* bitcast (<{ i32, i32, i32, [32 x i32] }>* @connect_req.esc_chi to [35 x i32]*), i64 0, i64 0), align 16
  store i32 0, i32* %15, align 4
  br label %295

295:                                              ; preds = %315, %290
  %296 = load i32, i32* %15, align 4
  %297 = add nsw i32 %296, 5
  %298 = getelementptr inbounds [5 x %struct.TYPE_33__], [5 x %struct.TYPE_33__]* %21, i64 0, i64 0
  %299 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %298, i32 0, i32 0
  %300 = load i32, i32* %299, align 16
  %301 = icmp sle i32 %297, %300
  br i1 %301, label %302, label %318

302:                                              ; preds = %295
  %303 = getelementptr inbounds [5 x %struct.TYPE_33__], [5 x %struct.TYPE_33__]* %21, i64 0, i64 0
  %304 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %303, i32 0, i32 1
  %305 = load i32*, i32** %304, align 8
  %306 = load i32, i32* %15, align 4
  %307 = add nsw i32 %306, 5
  %308 = sext i32 %307 to i64
  %309 = getelementptr inbounds i32, i32* %305, i64 %308
  %310 = load i32, i32* %309, align 4
  %311 = load i32, i32* %15, align 4
  %312 = add nsw i32 %311, 3
  %313 = sext i32 %312 to i64
  %314 = getelementptr inbounds [35 x i32], [35 x i32]* bitcast (<{ i32, i32, i32, [32 x i32] }>* @connect_req.esc_chi to [35 x i32]*), i64 0, i64 %313
  store i32 %310, i32* %314, align 4
  br label %315

315:                                              ; preds = %302
  %316 = load i32, i32* %15, align 4
  %317 = add nsw i32 %316, 1
  store i32 %317, i32* %15, align 4
  br label %295

318:                                              ; preds = %295
  br label %320

319:                                              ; preds = %283
  store i32 2, i32* getelementptr inbounds ([35 x i32], [35 x i32]* bitcast (<{ i32, i32, i32, [32 x i32] }>* @connect_req.esc_chi to [35 x i32]*), i64 0, i64 0), align 16
  br label %320

320:                                              ; preds = %319, %318
  %321 = load i32, i32* %22, align 4
  store i32 %321, i32* getelementptr inbounds ([35 x i32], [35 x i32]* bitcast (<{ i32, i32, i32, [32 x i32] }>* @connect_req.esc_chi to [35 x i32]*), i64 0, i64 2), align 8
  %322 = load i32, i32* %22, align 4
  %323 = load %struct.TYPE_30__*, %struct.TYPE_30__** %11, align 8
  %324 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %323, i32 0, i32 1
  store i32 %322, i32* %324, align 4
  %325 = load %struct.TYPE_30__*, %struct.TYPE_30__** %11, align 8
  %326 = load i32, i32* @LLI, align 4
  %327 = call i32 (%struct.TYPE_30__*, i32, ...) @add_p(%struct.TYPE_30__* %325, i32 %326, i32* getelementptr inbounds ([2 x i32], [2 x i32]* @connect_req.lli, i64 0, i64 0))
  %328 = load %struct.TYPE_30__*, %struct.TYPE_30__** %11, align 8
  %329 = load i32, i32* @ESC, align 4
  %330 = call i32 (%struct.TYPE_30__*, i32, ...) @add_p(%struct.TYPE_30__* %328, i32 %329, i32* getelementptr inbounds ([35 x i32], [35 x i32]* bitcast (<{ i32, i32, i32, [32 x i32] }>* @connect_req.esc_chi to [35 x i32]*), i64 0, i64 0))
  %331 = load i32, i32* @LOCAL_CONNECT, align 4
  %332 = load %struct.TYPE_30__*, %struct.TYPE_30__** %11, align 8
  %333 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %332, i32 0, i32 12
  store i32 %331, i32* %333, align 4
  %334 = load i32, i32* %26, align 4
  %335 = icmp ne i32 %334, 0
  br i1 %335, label %342, label %336

336:                                              ; preds = %320
  %337 = load i32, i32* @CALL_DIR_FORCE_OUTG_NL, align 4
  %338 = load %struct.TYPE_30__*, %struct.TYPE_30__** %11, align 8
  %339 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %338, i32 0, i32 0
  %340 = load i32, i32* %339, align 8
  %341 = or i32 %340, %337
  store i32 %341, i32* %339, align 8
  br label %342

342:                                              ; preds = %336, %320
  br label %343

343:                                              ; preds = %342, %275
  br label %344

344:                                              ; preds = %343, %209, %204, %201
  br label %345

345:                                              ; preds = %344, %147
  br label %348

346:                                              ; preds = %136
  %347 = load i32, i32* @_WRONG_MESSAGE_FORMAT, align 4
  store i32 %347, i32* %16, align 4
  br label %348

348:                                              ; preds = %346, %345
  br label %349

349:                                              ; preds = %348, %131
  %350 = load i32, i32* %14, align 4
  %351 = load i32, i32* %26, align 4
  %352 = load i32, i32* %22, align 4
  %353 = call i32 (i8*, ...) @dprintf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i64 0, i64 0), i32 %350, i32 %351, i32 %352)
  %354 = call i32 @dbug(i32 1, i32 %353)
  %355 = load i32, i32* @_CONNECT_R, align 4
  %356 = load %struct.TYPE_30__*, %struct.TYPE_30__** %11, align 8
  %357 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %356, i32 0, i32 2
  store i32 %355, i32* %357, align 8
  %358 = load i32, i32* %9, align 4
  %359 = load %struct.TYPE_30__*, %struct.TYPE_30__** %11, align 8
  %360 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %359, i32 0, i32 3
  store i32 %358, i32* %360, align 4
  %361 = load i32, i32* %14, align 4
  %362 = icmp eq i32 %361, 1
  br i1 %362, label %363, label %370

363:                                              ; preds = %349
  %364 = load i32, i32* %18, align 4
  %365 = icmp ne i32 %364, 3
  br i1 %365, label %366, label %370

366:                                              ; preds = %363
  %367 = load i32, i32* %18, align 4
  %368 = icmp ne i32 %367, 12
  br i1 %368, label %369, label %370

369:                                              ; preds = %366
  store i32 1, i32* %25, align 4
  br label %370

370:                                              ; preds = %369, %366, %363, %349
  %371 = load i32, i32* %14, align 4
  %372 = icmp eq i32 %371, 0
  br i1 %372, label %385, label %373

373:                                              ; preds = %370
  %374 = load i32, i32* %14, align 4
  %375 = icmp eq i32 %374, 2
  br i1 %375, label %385, label %376

376:                                              ; preds = %373
  %377 = load i32, i32* %25, align 4
  %378 = icmp ne i32 %377, 0
  br i1 %378, label %385, label %379

379:                                              ; preds = %376
  %380 = load i32, i32* %14, align 4
  %381 = icmp eq i32 %380, 3
  br i1 %381, label %385, label %382

382:                                              ; preds = %379
  %383 = load i32, i32* %14, align 4
  %384 = icmp eq i32 %383, 4
  br i1 %384, label %385, label %493

385:                                              ; preds = %382, %379, %376, %373, %370
  %386 = load i32, i32* %16, align 4
  %387 = icmp ne i32 %386, 0
  br i1 %387, label %493, label %388

388:                                              ; preds = %385
  %389 = load i32, i32* %25, align 4
  %390 = icmp ne i32 %389, 0
  br i1 %390, label %391, label %396

391:                                              ; preds = %388
  %392 = load %struct.TYPE_30__*, %struct.TYPE_30__** %11, align 8
  %393 = load %struct.TYPE_33__*, %struct.TYPE_33__** %13, align 8
  %394 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %393, i64 5
  %395 = call i32 @add_b1(%struct.TYPE_30__* %392, %struct.TYPE_33__* %394, i32 2, i32 0)
  store i32 %395, i32* %16, align 4
  br label %402

396:                                              ; preds = %388
  %397 = load %struct.TYPE_30__*, %struct.TYPE_30__** %11, align 8
  %398 = load %struct.TYPE_33__*, %struct.TYPE_33__** %13, align 8
  %399 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %398, i64 5
  %400 = load i32, i32* %14, align 4
  %401 = call i32 @add_b1(%struct.TYPE_30__* %397, %struct.TYPE_33__* %399, i32 %400, i32 0)
  store i32 %401, i32* %16, align 4
  br label %402

402:                                              ; preds = %396, %391
  %403 = load %struct.TYPE_30__*, %struct.TYPE_30__** %11, align 8
  %404 = load i32, i32* @OAD, align 4
  %405 = load %struct.TYPE_33__*, %struct.TYPE_33__** %13, align 8
  %406 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %405, i64 2
  %407 = call i32 @add_s(%struct.TYPE_30__* %403, i32 %404, %struct.TYPE_33__* %406)
  %408 = load %struct.TYPE_30__*, %struct.TYPE_30__** %11, align 8
  %409 = load i32, i32* @OSA, align 4
  %410 = load %struct.TYPE_33__*, %struct.TYPE_33__** %13, align 8
  %411 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %410, i64 4
  %412 = call i32 @add_s(%struct.TYPE_30__* %408, i32 %409, %struct.TYPE_33__* %411)
  %413 = load %struct.TYPE_30__*, %struct.TYPE_30__** %11, align 8
  %414 = load i32, i32* @BC, align 4
  %415 = load %struct.TYPE_33__*, %struct.TYPE_33__** %13, align 8
  %416 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %415, i64 6
  %417 = call i32 @add_s(%struct.TYPE_30__* %413, i32 %414, %struct.TYPE_33__* %416)
  %418 = load %struct.TYPE_30__*, %struct.TYPE_30__** %11, align 8
  %419 = load i32, i32* @LLC, align 4
  %420 = load %struct.TYPE_33__*, %struct.TYPE_33__** %13, align 8
  %421 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %420, i64 7
  %422 = call i32 @add_s(%struct.TYPE_30__* %418, i32 %419, %struct.TYPE_33__* %421)
  %423 = load %struct.TYPE_30__*, %struct.TYPE_30__** %11, align 8
  %424 = load i32, i32* @HLC, align 4
  %425 = load %struct.TYPE_33__*, %struct.TYPE_33__** %13, align 8
  %426 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %425, i64 8
  %427 = call i32 @add_s(%struct.TYPE_30__* %423, i32 %424, %struct.TYPE_33__* %426)
  %428 = load %struct.TYPE_33__*, %struct.TYPE_33__** %13, align 8
  %429 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %428, i64 0
  %430 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %429, i32 0, i32 1
  %431 = load i32*, i32** %430, align 8
  %432 = call i64 @GET_WORD(i32* %431)
  %433 = trunc i64 %432 to i32
  store i32 %433, i32* %17, align 4
  %434 = load %struct.TYPE_31__*, %struct.TYPE_31__** %10, align 8
  %435 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %434, i32 0, i32 1
  %436 = load i32*, i32** %435, align 8
  %437 = load %struct.TYPE_32__*, %struct.TYPE_32__** %12, align 8
  %438 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %437, i32 0, i32 0
  %439 = load i32, i32* %438, align 4
  %440 = sub nsw i32 %439, 1
  %441 = sext i32 %440 to i64
  %442 = getelementptr inbounds i32, i32* %436, i64 %441
  %443 = load i32, i32* %442, align 4
  %444 = and i32 %443, 512
  %445 = icmp ne i32 %444, 0
  br i1 %445, label %446, label %450

446:                                              ; preds = %402
  %447 = load %struct.TYPE_30__*, %struct.TYPE_30__** %11, align 8
  %448 = load i32, i32* @LLI, align 4
  %449 = call i32 (%struct.TYPE_30__*, i32, ...) @add_p(%struct.TYPE_30__* %447, i32 %448, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0))
  br label %450

450:                                              ; preds = %446, %402
  %451 = load %struct.TYPE_33__*, %struct.TYPE_33__** %13, align 8
  %452 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %451, i64 0
  %453 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %452, i32 0, i32 1
  %454 = load i32*, i32** %453, align 8
  %455 = call i64 @GET_WORD(i32* %454)
  %456 = icmp ult i64 %455, 29
  br i1 %456, label %457, label %485

457:                                              ; preds = %450
  %458 = load %struct.TYPE_30__*, %struct.TYPE_30__** %11, align 8
  %459 = load i32, i32* @BC, align 4
  %460 = load i8***, i8**** @cip_bc, align 8
  %461 = load %struct.TYPE_33__*, %struct.TYPE_33__** %13, align 8
  %462 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %461, i64 0
  %463 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %462, i32 0, i32 1
  %464 = load i32*, i32** %463, align 8
  %465 = call i64 @GET_WORD(i32* %464)
  %466 = getelementptr inbounds i8**, i8*** %460, i64 %465
  %467 = load i8**, i8*** %466, align 8
  %468 = load %struct.TYPE_31__*, %struct.TYPE_31__** %10, align 8
  %469 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %468, i32 0, i32 2
  %470 = load i64, i64* %469, align 8
  %471 = getelementptr inbounds i8*, i8** %467, i64 %470
  %472 = load i8*, i8** %471, align 8
  %473 = call i32 (%struct.TYPE_30__*, i32, ...) @add_p(%struct.TYPE_30__* %458, i32 %459, i8* %472)
  %474 = load %struct.TYPE_30__*, %struct.TYPE_30__** %11, align 8
  %475 = load i32, i32* @HLC, align 4
  %476 = load i8**, i8*** @cip_hlc, align 8
  %477 = load %struct.TYPE_33__*, %struct.TYPE_33__** %13, align 8
  %478 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %477, i64 0
  %479 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %478, i32 0, i32 1
  %480 = load i32*, i32** %479, align 8
  %481 = call i64 @GET_WORD(i32* %480)
  %482 = getelementptr inbounds i8*, i8** %476, i64 %481
  %483 = load i8*, i8** %482, align 8
  %484 = call i32 (%struct.TYPE_30__*, i32, ...) @add_p(%struct.TYPE_30__* %474, i32 %475, i8* %483)
  br label %485

485:                                              ; preds = %457, %450
  %486 = load %struct.TYPE_30__*, %struct.TYPE_30__** %11, align 8
  %487 = load i32, i32* @UID, align 4
  %488 = call i32 (%struct.TYPE_30__*, i32, ...) @add_p(%struct.TYPE_30__* %486, i32 %487, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0))
  %489 = load %struct.TYPE_30__*, %struct.TYPE_30__** %11, align 8
  %490 = load i64, i64* @ASSIGN, align 8
  %491 = load i32, i32* @DSIG_ID, align 4
  %492 = call i32 @sig_req(%struct.TYPE_30__* %489, i64 %490, i32 %491)
  br label %501

493:                                              ; preds = %385, %382
  %494 = load i32, i32* %14, align 4
  %495 = icmp eq i32 %494, 1
  br i1 %495, label %496, label %500

496:                                              ; preds = %493
  %497 = load %struct.TYPE_30__*, %struct.TYPE_30__** %11, align 8
  %498 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %497, i32 0, i32 11
  %499 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %498, i32 0, i32 0
  store i32 255, i32* %499, align 8
  store i32 0, i32* %16, align 4
  br label %500

500:                                              ; preds = %496, %493
  br label %501

501:                                              ; preds = %500, %485
  %502 = load i32, i32* %16, align 4
  %503 = icmp ne i32 %502, 0
  br i1 %503, label %533, label %504

504:                                              ; preds = %501
  %505 = load i32, i32* %14, align 4
  %506 = icmp ne i32 %505, 2
  br i1 %506, label %507, label %533

507:                                              ; preds = %504
  %508 = load i32, i32* %25, align 4
  %509 = icmp ne i32 %508, 0
  br i1 %509, label %533, label %510

510:                                              ; preds = %507
  %511 = load %struct.TYPE_30__*, %struct.TYPE_30__** %11, align 8
  %512 = load %struct.TYPE_33__*, %struct.TYPE_33__** %13, align 8
  %513 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %512, i64 5
  %514 = call i32 @add_b23(%struct.TYPE_30__* %511, %struct.TYPE_33__* %513)
  store i32 %514, i32* %16, align 4
  %515 = load i32, i32* %16, align 4
  %516 = icmp ne i32 %515, 0
  br i1 %516, label %532, label %517

517:                                              ; preds = %510
  %518 = load %struct.TYPE_30__*, %struct.TYPE_30__** %11, align 8
  %519 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %518, i32 0, i32 10
  %520 = load i64, i64* %519, align 8
  %521 = icmp ne i64 %520, 0
  br i1 %521, label %522, label %527

522:                                              ; preds = %517
  %523 = load %struct.TYPE_30__*, %struct.TYPE_30__** %11, align 8
  %524 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %523, i32 0, i32 9
  %525 = load i32, i32* %524, align 8
  %526 = icmp ne i32 %525, 0
  br i1 %526, label %527, label %531

527:                                              ; preds = %522, %517
  %528 = load %struct.TYPE_30__*, %struct.TYPE_30__** %11, align 8
  %529 = load i64, i64* @ASSIGN, align 8
  %530 = call i32 @nl_req_ncci(%struct.TYPE_30__* %528, i64 %529, i32 0)
  br label %531

531:                                              ; preds = %527, %522
  br label %532

532:                                              ; preds = %531, %510
  br label %533

533:                                              ; preds = %532, %507, %504, %501
  %534 = load i32, i32* %16, align 4
  %535 = icmp ne i32 %534, 0
  br i1 %535, label %626, label %536

536:                                              ; preds = %533
  %537 = load i32, i32* %14, align 4
  %538 = icmp eq i32 %537, 0
  br i1 %538, label %551, label %539

539:                                              ; preds = %536
  %540 = load i32, i32* %14, align 4
  %541 = icmp eq i32 %540, 2
  br i1 %541, label %551, label %542

542:                                              ; preds = %539
  %543 = load i32, i32* %14, align 4
  %544 = icmp eq i32 %543, 3
  br i1 %544, label %551, label %545

545:                                              ; preds = %542
  %546 = load i32, i32* %25, align 4
  %547 = icmp ne i32 %546, 0
  br i1 %547, label %551, label %548

548:                                              ; preds = %545
  %549 = load i32, i32* %14, align 4
  %550 = icmp eq i32 %549, 4
  br i1 %550, label %551, label %623

551:                                              ; preds = %548, %545, %542, %539, %536
  %552 = load %struct.TYPE_30__*, %struct.TYPE_30__** %11, align 8
  %553 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %552, i32 0, i32 4
  %554 = load i64, i64* %553, align 8
  %555 = load i64, i64* @SPOOFING_REQUIRED, align 8
  %556 = icmp eq i64 %554, %555
  br i1 %556, label %557, label %574

557:                                              ; preds = %551
  %558 = load %struct.TYPE_33__*, %struct.TYPE_33__** %13, align 8
  %559 = load %struct.TYPE_30__*, %struct.TYPE_30__** %11, align 8
  %560 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %559, i32 0, i32 8
  %561 = call i32 @api_save_msg(%struct.TYPE_33__* %558, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.8, i64 0, i64 0), i32* %560)
  %562 = load i64, i64* @CALL_REQ, align 8
  %563 = load %struct.TYPE_30__*, %struct.TYPE_30__** %11, align 8
  %564 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %563, i32 0, i32 4
  store i64 %562, i64* %564, align 8
  %565 = load i32, i32* @BLOCK_PLCI, align 4
  %566 = load %struct.TYPE_30__*, %struct.TYPE_30__** %11, align 8
  %567 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %566, i32 0, i32 7
  store i32 %565, i32* %567, align 8
  %568 = load %struct.TYPE_30__*, %struct.TYPE_30__** %11, align 8
  %569 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %568, i32 0, i32 2
  store i32 0, i32* %569, align 8
  %570 = call i32 (i8*, ...) @dprintf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0))
  %571 = call i32 @dbug(i32 1, i32 %570)
  %572 = load %struct.TYPE_30__*, %struct.TYPE_30__** %11, align 8
  %573 = call i32 @send_req(%struct.TYPE_30__* %572)
  store i32 0, i32* %7, align 4
  br label %639

574:                                              ; preds = %551
  %575 = load i32, i32* %14, align 4
  %576 = icmp eq i32 %575, 4
  br i1 %576, label %577, label %582

577:                                              ; preds = %574
  %578 = load %struct.TYPE_30__*, %struct.TYPE_30__** %11, align 8
  %579 = load i32, i32* @CHI, align 4
  %580 = load i32*, i32** %27, align 8
  %581 = call i32 (%struct.TYPE_30__*, i32, ...) @add_p(%struct.TYPE_30__* %578, i32 %579, i32* %580)
  br label %582

582:                                              ; preds = %577, %574
  %583 = load %struct.TYPE_30__*, %struct.TYPE_30__** %11, align 8
  %584 = load i32, i32* @CPN, align 4
  %585 = load %struct.TYPE_33__*, %struct.TYPE_33__** %13, align 8
  %586 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %585, i64 1
  %587 = call i32 @add_s(%struct.TYPE_30__* %583, i32 %584, %struct.TYPE_33__* %586)
  %588 = load %struct.TYPE_30__*, %struct.TYPE_30__** %11, align 8
  %589 = load i32, i32* @DSA, align 4
  %590 = load %struct.TYPE_33__*, %struct.TYPE_33__** %13, align 8
  %591 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %590, i64 3
  %592 = call i32 @add_s(%struct.TYPE_30__* %588, i32 %589, %struct.TYPE_33__* %591)
  %593 = load i32, i32* %25, align 4
  %594 = icmp ne i32 %593, 0
  br i1 %594, label %595, label %599

595:                                              ; preds = %582
  %596 = load %struct.TYPE_30__*, %struct.TYPE_30__** %11, align 8
  %597 = load i32, i32* @ESC, align 4
  %598 = call i32 (%struct.TYPE_30__*, i32, ...) @add_p(%struct.TYPE_30__* %596, i32 %597, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i64 0, i64 0))
  br label %599

599:                                              ; preds = %595, %582
  %600 = load %struct.TYPE_30__*, %struct.TYPE_30__** %11, align 8
  %601 = load %struct.TYPE_33__*, %struct.TYPE_33__** %13, align 8
  %602 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %601, i64 9
  %603 = call i32 @add_ai(%struct.TYPE_30__* %600, %struct.TYPE_33__* %602)
  %604 = load i32, i32* %26, align 4
  %605 = icmp ne i32 %604, 0
  br i1 %605, label %610, label %606

606:                                              ; preds = %599
  %607 = load %struct.TYPE_30__*, %struct.TYPE_30__** %11, align 8
  %608 = load i64, i64* @CALL_REQ, align 8
  %609 = call i32 @sig_req(%struct.TYPE_30__* %607, i64 %608, i32 0)
  br label %622

610:                                              ; preds = %599
  %611 = load i32, i32* @PERM_LIST_REQ, align 4
  %612 = load %struct.TYPE_30__*, %struct.TYPE_30__** %11, align 8
  %613 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %612, i32 0, i32 2
  store i32 %611, i32* %613, align 8
  %614 = load %struct.TYPE_32__*, %struct.TYPE_32__** %12, align 8
  %615 = load %struct.TYPE_30__*, %struct.TYPE_30__** %11, align 8
  %616 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %615, i32 0, i32 6
  store %struct.TYPE_32__* %614, %struct.TYPE_32__** %616, align 8
  %617 = load %struct.TYPE_30__*, %struct.TYPE_30__** %11, align 8
  %618 = load i64, i64* @LISTEN_REQ, align 8
  %619 = call i32 @sig_req(%struct.TYPE_30__* %617, i64 %618, i32 0)
  %620 = load %struct.TYPE_30__*, %struct.TYPE_30__** %11, align 8
  %621 = call i32 @send_req(%struct.TYPE_30__* %620)
  store i32 0, i32* %7, align 4
  br label %639

622:                                              ; preds = %606
  br label %623

623:                                              ; preds = %622, %548
  %624 = load %struct.TYPE_30__*, %struct.TYPE_30__** %11, align 8
  %625 = call i32 @send_req(%struct.TYPE_30__* %624)
  store i32 0, i32* %7, align 4
  br label %639

626:                                              ; preds = %533
  %627 = load %struct.TYPE_30__*, %struct.TYPE_30__** %11, align 8
  %628 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %627, i32 0, i32 5
  store i64 0, i64* %628, align 8
  br label %629

629:                                              ; preds = %626, %72
  br label %630

630:                                              ; preds = %629, %39
  %631 = load %struct.TYPE_32__*, %struct.TYPE_32__** %12, align 8
  %632 = load i32, i32* @_CONNECT_R, align 4
  %633 = load i32, i32* @CONFIRM, align 4
  %634 = or i32 %632, %633
  %635 = load i32, i32* %8, align 4
  %636 = load i32, i32* %9, align 4
  %637 = load i32, i32* %16, align 4
  %638 = call i32 @sendf(%struct.TYPE_32__* %631, i32 %634, i32 %635, i32 %636, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0), i32 %637)
  store i32 2, i32* %7, align 4
  br label %639

639:                                              ; preds = %630, %623, %610, %557, %103, %53
  %640 = load i32, i32* %7, align 4
  ret i32 %640
}

declare dso_local i32 @dbug(i32, i32) #1

declare dso_local i32 @dprintf(i8*, ...) #1

declare dso_local i32 @sendf(%struct.TYPE_32__*, i32, i32, i32, i8*, i32) #1

declare dso_local i32 @get_plci(%struct.TYPE_31__*) #1

declare dso_local i64 @AdvCodecSupport(%struct.TYPE_31__*, %struct.TYPE_30__*, %struct.TYPE_32__*, i32) #1

declare dso_local i32 @api_parse(i32*, i32, i8*, %struct.TYPE_33__*) #1

declare dso_local i64 @GET_WORD(i32*) #1

declare dso_local i32 @add_p(%struct.TYPE_30__*, i32, ...) #1

declare dso_local i32 @add_b1(%struct.TYPE_30__*, %struct.TYPE_33__*, i32, i32) #1

declare dso_local i32 @add_s(%struct.TYPE_30__*, i32, %struct.TYPE_33__*) #1

declare dso_local i32 @sig_req(%struct.TYPE_30__*, i64, i32) #1

declare dso_local i32 @add_b23(%struct.TYPE_30__*, %struct.TYPE_33__*) #1

declare dso_local i32 @nl_req_ncci(%struct.TYPE_30__*, i64, i32) #1

declare dso_local i32 @api_save_msg(%struct.TYPE_33__*, i8*, i32*) #1

declare dso_local i32 @send_req(%struct.TYPE_30__*) #1

declare dso_local i32 @add_ai(%struct.TYPE_30__*, %struct.TYPE_33__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
