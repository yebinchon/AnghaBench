; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hardware/eicon/extr_message.c_info_req.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hardware/eicon/extr_message.c_info_req.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_20__ = type { %struct.TYPE_19__* }
%struct.TYPE_19__ = type { %struct.TYPE_21__*, i32, i64 }
%struct.TYPE_21__ = type { i32 }
%struct.TYPE_22__ = type { i64, i32* }

@.str = private unnamed_addr constant [9 x i8] c"info_req\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"ssss\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"AddInfo wrong\00", align 1
@_WRONG_MESSAGE_FORMAT = common dso_local global i32 0, align 4
@_WRONG_STATE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [7 x i8] c"OvlSnd\00", align 1
@CPN = common dso_local global i32 0, align 4
@KEY = common dso_local global i32 0, align 4
@INFO_REQ = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [4 x i8] c"UUI\00", align 1
@UUI = common dso_local global i32 0, align 4
@USER_DATA = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [4 x i8] c"FAC\00", align 1
@FACILITY_REQ = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [8 x i8] c"NCR_FAC\00", align 1
@C_NCR_FAC_REQ = common dso_local global i32 0, align 4
@CAI = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [3 x i8] c"\01\80\00", align 1
@UID = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [8 x i8] c"\06Capi20\00", align 1
@ASSIGN = common dso_local global i32 0, align 4
@DSIG_ID = common dso_local global i32 0, align 4
@_OUT_OF_PLCI = common dso_local global i32 0, align 4
@NCR_FACILITY = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [13 x i8] c"localInfoCon\00", align 1
@_INFO_R = common dso_local global i32 0, align 4
@CONFIRM = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, %struct.TYPE_20__*, %struct.TYPE_19__*, %struct.TYPE_21__*, %struct.TYPE_22__*)* @info_req to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @info_req(i32 %0, i32 %1, %struct.TYPE_20__* %2, %struct.TYPE_19__* %3, %struct.TYPE_21__* %4, %struct.TYPE_22__* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_20__*, align 8
  %11 = alloca %struct.TYPE_19__*, align 8
  %12 = alloca %struct.TYPE_21__*, align 8
  %13 = alloca %struct.TYPE_22__*, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.TYPE_22__*, align 8
  %16 = alloca %struct.TYPE_19__*, align 8
  %17 = alloca [5 x %struct.TYPE_22__], align 16
  %18 = alloca i32, align 4
  store i32 %0, i32* %8, align 4
  store i32 %1, i32* %9, align 4
  store %struct.TYPE_20__* %2, %struct.TYPE_20__** %10, align 8
  store %struct.TYPE_19__* %3, %struct.TYPE_19__** %11, align 8
  store %struct.TYPE_21__* %4, %struct.TYPE_21__** %12, align 8
  store %struct.TYPE_22__* %5, %struct.TYPE_22__** %13, align 8
  store %struct.TYPE_19__* null, %struct.TYPE_19__** %16, align 8
  store i32 0, i32* %18, align 4
  %19 = call i32 @dprintf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %20 = call i32 @dbug(i32 1, i32 %19)
  store i32 0, i32* %14, align 4
  br label %21

21:                                               ; preds = %29, %6
  %22 = load i32, i32* %14, align 4
  %23 = icmp slt i32 %22, 5
  br i1 %23, label %24, label %32

24:                                               ; preds = %21
  %25 = load i32, i32* %14, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds [5 x %struct.TYPE_22__], [5 x %struct.TYPE_22__]* %17, i64 0, i64 %26
  %28 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %27, i32 0, i32 0
  store i64 0, i64* %28, align 16
  br label %29

29:                                               ; preds = %24
  %30 = load i32, i32* %14, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %14, align 4
  br label %21

32:                                               ; preds = %21
  %33 = load %struct.TYPE_22__*, %struct.TYPE_22__** %13, align 8
  %34 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %33, i64 1
  store %struct.TYPE_22__* %34, %struct.TYPE_22__** %15, align 8
  %35 = load %struct.TYPE_22__*, %struct.TYPE_22__** %15, align 8
  %36 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %56

39:                                               ; preds = %32
  %40 = load %struct.TYPE_22__*, %struct.TYPE_22__** %15, align 8
  %41 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %40, i32 0, i32 1
  %42 = load i32*, i32** %41, align 8
  %43 = getelementptr inbounds i32, i32* %42, i64 1
  %44 = load %struct.TYPE_22__*, %struct.TYPE_22__** %15, align 8
  %45 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = trunc i64 %46 to i32
  %48 = getelementptr inbounds [5 x %struct.TYPE_22__], [5 x %struct.TYPE_22__]* %17, i64 0, i64 0
  %49 = call i64 @api_parse(i32* %43, i32 %47, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), %struct.TYPE_22__* %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %55

51:                                               ; preds = %39
  %52 = call i32 @dprintf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0))
  %53 = call i32 @dbug(i32 1, i32 %52)
  %54 = load i32, i32* @_WRONG_MESSAGE_FORMAT, align 4
  store i32 %54, i32* %18, align 4
  br label %55

55:                                               ; preds = %51, %39
  br label %56

56:                                               ; preds = %55, %32
  %57 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %58 = icmp ne %struct.TYPE_20__* %57, null
  br i1 %58, label %61, label %59

59:                                               ; preds = %56
  %60 = load i32, i32* @_WRONG_STATE, align 4
  store i32 %60, i32* %18, align 4
  br label %61

61:                                               ; preds = %59, %56
  %62 = load i32, i32* %18, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %155, label %64

64:                                               ; preds = %61
  %65 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %66 = icmp ne %struct.TYPE_19__* %65, null
  br i1 %66, label %67, label %155

67:                                               ; preds = %64
  %68 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  store %struct.TYPE_19__* %68, %struct.TYPE_19__** %16, align 8
  %69 = getelementptr inbounds [5 x %struct.TYPE_22__], [5 x %struct.TYPE_22__]* %17, i64 0, i64 3
  %70 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 16
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %106, label %73

73:                                               ; preds = %67
  %74 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %75 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %74, i32 0, i32 2
  %76 = load i64, i64* %75, align 8
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %106

78:                                               ; preds = %73
  %79 = load %struct.TYPE_22__*, %struct.TYPE_22__** %13, align 8
  %80 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %79, i64 0
  %81 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %89, label %84

84:                                               ; preds = %78
  %85 = getelementptr inbounds [5 x %struct.TYPE_22__], [5 x %struct.TYPE_22__]* %17, i64 0, i64 1
  %86 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 16
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %106

89:                                               ; preds = %84, %78
  %90 = call i32 @dprintf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0))
  %91 = call i32 @dbug(i32 1, i32 %90)
  %92 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %93 = load i32, i32* @CPN, align 4
  %94 = load %struct.TYPE_22__*, %struct.TYPE_22__** %13, align 8
  %95 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %94, i64 0
  %96 = call i32 @add_s(%struct.TYPE_19__* %92, i32 %93, %struct.TYPE_22__* %95)
  %97 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %98 = load i32, i32* @KEY, align 4
  %99 = getelementptr inbounds [5 x %struct.TYPE_22__], [5 x %struct.TYPE_22__]* %17, i64 0, i64 1
  %100 = call i32 @add_s(%struct.TYPE_19__* %97, i32 %98, %struct.TYPE_22__* %99)
  %101 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %102 = load i32, i32* @INFO_REQ, align 4
  %103 = call i32 @sig_req(%struct.TYPE_19__* %101, i32 %102, i32 0)
  %104 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %105 = call i32 @send_req(%struct.TYPE_19__* %104)
  store i32 0, i32* %7, align 4
  br label %252

106:                                              ; preds = %84, %73, %67
  %107 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %108 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %107, i32 0, i32 2
  %109 = load i64, i64* %108, align 8
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %126

111:                                              ; preds = %106
  %112 = getelementptr inbounds [5 x %struct.TYPE_22__], [5 x %struct.TYPE_22__]* %17, i64 0, i64 2
  %113 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %112, i32 0, i32 0
  %114 = load i64, i64* %113, align 16
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %126

116:                                              ; preds = %111
  %117 = call i32 @dprintf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0))
  %118 = call i32 @dbug(i32 1, i32 %117)
  %119 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %120 = load i32, i32* @UUI, align 4
  %121 = getelementptr inbounds [5 x %struct.TYPE_22__], [5 x %struct.TYPE_22__]* %17, i64 0, i64 2
  %122 = call i32 @add_s(%struct.TYPE_19__* %119, i32 %120, %struct.TYPE_22__* %121)
  %123 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %124 = load i32, i32* @USER_DATA, align 4
  %125 = call i32 @sig_req(%struct.TYPE_19__* %123, i32 %124, i32 0)
  br label %154

126:                                              ; preds = %111, %106
  %127 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %128 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %127, i32 0, i32 2
  %129 = load i64, i64* %128, align 8
  %130 = icmp ne i64 %129, 0
  br i1 %130, label %131, label %151

131:                                              ; preds = %126
  %132 = getelementptr inbounds [5 x %struct.TYPE_22__], [5 x %struct.TYPE_22__]* %17, i64 0, i64 3
  %133 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %132, i32 0, i32 0
  %134 = load i64, i64* %133, align 16
  %135 = icmp ne i64 %134, 0
  br i1 %135, label %136, label %151

136:                                              ; preds = %131
  %137 = call i32 @dprintf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  %138 = call i32 @dbug(i32 1, i32 %137)
  %139 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %140 = load i32, i32* @CPN, align 4
  %141 = load %struct.TYPE_22__*, %struct.TYPE_22__** %13, align 8
  %142 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %141, i64 0
  %143 = call i32 @add_s(%struct.TYPE_19__* %139, i32 %140, %struct.TYPE_22__* %142)
  %144 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %145 = load %struct.TYPE_22__*, %struct.TYPE_22__** %13, align 8
  %146 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %145, i64 1
  %147 = call i32 @add_ai(%struct.TYPE_19__* %144, %struct.TYPE_22__* %146)
  %148 = load %struct.TYPE_19__*, %struct.TYPE_19__** %11, align 8
  %149 = load i32, i32* @FACILITY_REQ, align 4
  %150 = call i32 @sig_req(%struct.TYPE_19__* %148, i32 %149, i32 0)
  br label %153

151:                                              ; preds = %131, %126
  %152 = load i32, i32* @_WRONG_STATE, align 4
  store i32 %152, i32* %18, align 4
  br label %153

153:                                              ; preds = %151, %136
  br label %154

154:                                              ; preds = %153, %116
  br label %229

155:                                              ; preds = %64, %61
  %156 = getelementptr inbounds [5 x %struct.TYPE_22__], [5 x %struct.TYPE_22__]* %17, i64 0, i64 1
  %157 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %156, i32 0, i32 0
  %158 = load i64, i64* %157, align 16
  %159 = icmp ne i64 %158, 0
  br i1 %159, label %170, label %160

160:                                              ; preds = %155
  %161 = getelementptr inbounds [5 x %struct.TYPE_22__], [5 x %struct.TYPE_22__]* %17, i64 0, i64 2
  %162 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %161, i32 0, i32 0
  %163 = load i64, i64* %162, align 16
  %164 = icmp ne i64 %163, 0
  br i1 %164, label %170, label %165

165:                                              ; preds = %160
  %166 = getelementptr inbounds [5 x %struct.TYPE_22__], [5 x %struct.TYPE_22__]* %17, i64 0, i64 3
  %167 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %166, i32 0, i32 0
  %168 = load i64, i64* %167, align 16
  %169 = icmp ne i64 %168, 0
  br i1 %169, label %170, label %228

170:                                              ; preds = %165, %160, %155
  %171 = load i32, i32* %18, align 4
  %172 = icmp ne i32 %171, 0
  br i1 %172, label %228, label %173

173:                                              ; preds = %170
  %174 = call i32 @dprintf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0))
  %175 = call i32 @dbug(i32 1, i32 %174)
  %176 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %177 = call i32 @get_plci(%struct.TYPE_20__* %176)
  store i32 %177, i32* %14, align 4
  %178 = icmp ne i32 %177, 0
  br i1 %178, label %179, label %207

179:                                              ; preds = %173
  %180 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %181 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %180, i32 0, i32 0
  %182 = load %struct.TYPE_19__*, %struct.TYPE_19__** %181, align 8
  %183 = load i32, i32* %14, align 4
  %184 = sub nsw i32 %183, 1
  %185 = sext i32 %184 to i64
  %186 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %182, i64 %185
  store %struct.TYPE_19__* %186, %struct.TYPE_19__** %16, align 8
  %187 = load %struct.TYPE_21__*, %struct.TYPE_21__** %12, align 8
  %188 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %187, i32 0, i32 0
  store i32 1, i32* %188, align 4
  %189 = load i32, i32* @C_NCR_FAC_REQ, align 4
  %190 = load %struct.TYPE_19__*, %struct.TYPE_19__** %16, align 8
  %191 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %190, i32 0, i32 1
  store i32 %189, i32* %191, align 8
  %192 = load %struct.TYPE_21__*, %struct.TYPE_21__** %12, align 8
  %193 = load %struct.TYPE_19__*, %struct.TYPE_19__** %16, align 8
  %194 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %193, i32 0, i32 0
  store %struct.TYPE_21__* %192, %struct.TYPE_21__** %194, align 8
  %195 = load %struct.TYPE_19__*, %struct.TYPE_19__** %16, align 8
  %196 = load i32, i32* @CAI, align 4
  %197 = call i32 @add_p(%struct.TYPE_19__* %195, i32 %196, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0))
  %198 = load %struct.TYPE_19__*, %struct.TYPE_19__** %16, align 8
  %199 = load i32, i32* @UID, align 4
  %200 = call i32 @add_p(%struct.TYPE_19__* %198, i32 %199, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i64 0, i64 0))
  %201 = load %struct.TYPE_19__*, %struct.TYPE_19__** %16, align 8
  %202 = load i32, i32* @ASSIGN, align 4
  %203 = load i32, i32* @DSIG_ID, align 4
  %204 = call i32 @sig_req(%struct.TYPE_19__* %201, i32 %202, i32 %203)
  %205 = load %struct.TYPE_19__*, %struct.TYPE_19__** %16, align 8
  %206 = call i32 @send_req(%struct.TYPE_19__* %205)
  br label %209

207:                                              ; preds = %173
  %208 = load i32, i32* @_OUT_OF_PLCI, align 4
  store i32 %208, i32* %18, align 4
  br label %209

209:                                              ; preds = %207, %179
  %210 = load i32, i32* %18, align 4
  %211 = icmp ne i32 %210, 0
  br i1 %211, label %227, label %212

212:                                              ; preds = %209
  %213 = load %struct.TYPE_19__*, %struct.TYPE_19__** %16, align 8
  %214 = load i32, i32* @CPN, align 4
  %215 = load %struct.TYPE_22__*, %struct.TYPE_22__** %13, align 8
  %216 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %215, i64 0
  %217 = call i32 @add_s(%struct.TYPE_19__* %213, i32 %214, %struct.TYPE_22__* %216)
  %218 = load %struct.TYPE_19__*, %struct.TYPE_19__** %16, align 8
  %219 = load %struct.TYPE_22__*, %struct.TYPE_22__** %13, align 8
  %220 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %219, i64 1
  %221 = call i32 @add_ai(%struct.TYPE_19__* %218, %struct.TYPE_22__* %220)
  %222 = load %struct.TYPE_19__*, %struct.TYPE_19__** %16, align 8
  %223 = load i32, i32* @NCR_FACILITY, align 4
  %224 = call i32 @sig_req(%struct.TYPE_19__* %222, i32 %223, i32 0)
  %225 = load %struct.TYPE_19__*, %struct.TYPE_19__** %16, align 8
  %226 = call i32 @send_req(%struct.TYPE_19__* %225)
  store i32 0, i32* %7, align 4
  br label %252

227:                                              ; preds = %209
  br label %228

228:                                              ; preds = %227, %170, %165
  br label %229

229:                                              ; preds = %228, %154
  %230 = load %struct.TYPE_19__*, %struct.TYPE_19__** %16, align 8
  %231 = icmp ne %struct.TYPE_19__* %230, null
  br i1 %231, label %234, label %232

232:                                              ; preds = %229
  %233 = load i32, i32* @_WRONG_MESSAGE_FORMAT, align 4
  store i32 %233, i32* %18, align 4
  br label %234

234:                                              ; preds = %232, %229
  %235 = load i32, i32* %18, align 4
  %236 = icmp ne i32 %235, 0
  br i1 %236, label %240, label %237

237:                                              ; preds = %234
  %238 = load %struct.TYPE_19__*, %struct.TYPE_19__** %16, align 8
  %239 = call i32 @send_req(%struct.TYPE_19__* %238)
  br label %251

240:                                              ; preds = %234
  %241 = call i32 @dprintf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.9, i64 0, i64 0))
  %242 = call i32 @dbug(i32 1, i32 %241)
  %243 = load %struct.TYPE_21__*, %struct.TYPE_21__** %12, align 8
  %244 = load i32, i32* @_INFO_R, align 4
  %245 = load i32, i32* @CONFIRM, align 4
  %246 = or i32 %244, %245
  %247 = load i32, i32* %8, align 4
  %248 = load i32, i32* %9, align 4
  %249 = load i32, i32* %18, align 4
  %250 = call i32 @sendf(%struct.TYPE_21__* %243, i32 %246, i32 %247, i32 %248, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i64 0, i64 0), i32 %249)
  br label %251

251:                                              ; preds = %240, %237
  store i32 0, i32* %7, align 4
  br label %252

252:                                              ; preds = %251, %212, %89
  %253 = load i32, i32* %7, align 4
  ret i32 %253
}

declare dso_local i32 @dbug(i32, i32) #1

declare dso_local i32 @dprintf(i8*) #1

declare dso_local i64 @api_parse(i32*, i32, i8*, %struct.TYPE_22__*) #1

declare dso_local i32 @add_s(%struct.TYPE_19__*, i32, %struct.TYPE_22__*) #1

declare dso_local i32 @sig_req(%struct.TYPE_19__*, i32, i32) #1

declare dso_local i32 @send_req(%struct.TYPE_19__*) #1

declare dso_local i32 @add_ai(%struct.TYPE_19__*, %struct.TYPE_22__*) #1

declare dso_local i32 @get_plci(%struct.TYPE_20__*) #1

declare dso_local i32 @add_p(%struct.TYPE_19__*, i32, i8*) #1

declare dso_local i32 @sendf(%struct.TYPE_21__*, i32, i32, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
