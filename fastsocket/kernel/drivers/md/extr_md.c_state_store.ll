; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_md.c_state_store.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_md.c_state_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.md_rdev = type { i32, i32, i32, %struct.mddev*, i32, %struct.TYPE_2__ }
%struct.mddev = type { i64, i32, i32 }
%struct.TYPE_2__ = type { i64 }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"faulty\00", align 1
@Faulty = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"remove\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"writemostly\00", align 1
@WriteMostly = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [13 x i8] c"-writemostly\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"blocked\00", align 1
@Blocked = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [9 x i8] c"-blocked\00", align 1
@BlockedBadBlocks = common dso_local global i32 0, align 4
@MD_RECOVERY_NEEDED = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [7 x i8] c"insync\00", align 1
@In_sync = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [12 x i8] c"write_error\00", align 1
@WriteErrorSeen = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [13 x i8] c"-write_error\00", align 1
@.str.9 = private unnamed_addr constant [17 x i8] c"want_replacement\00", align 1
@Replacement = common dso_local global i32 0, align 4
@WantReplacement = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [18 x i8] c"-want_replacement\00", align 1
@.str.11 = private unnamed_addr constant [12 x i8] c"replacement\00", align 1
@.str.12 = private unnamed_addr constant [13 x i8] c"-replacement\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.md_rdev*, i8*, i64)* @state_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @state_store(%struct.md_rdev* %0, i8* %1, i64 %2) #0 {
  %4 = alloca %struct.md_rdev*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.mddev*, align 8
  store %struct.md_rdev* %0, %struct.md_rdev** %4, align 8
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  %9 = load i32, i32* @EINVAL, align 4
  %10 = sub nsw i32 0, %9
  store i32 %10, i32* %7, align 4
  %11 = load i8*, i8** %5, align 8
  %12 = call i64 @cmd_match(i8* %11, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %37

14:                                               ; preds = %3
  %15 = load %struct.md_rdev*, %struct.md_rdev** %4, align 8
  %16 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %15, i32 0, i32 3
  %17 = load %struct.mddev*, %struct.mddev** %16, align 8
  %18 = getelementptr inbounds %struct.mddev, %struct.mddev* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %37

21:                                               ; preds = %14
  %22 = load %struct.md_rdev*, %struct.md_rdev** %4, align 8
  %23 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %22, i32 0, i32 3
  %24 = load %struct.mddev*, %struct.mddev** %23, align 8
  %25 = load %struct.md_rdev*, %struct.md_rdev** %4, align 8
  %26 = call i32 @md_error(%struct.mddev* %24, %struct.md_rdev* %25)
  %27 = load i32, i32* @Faulty, align 4
  %28 = load %struct.md_rdev*, %struct.md_rdev** %4, align 8
  %29 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %28, i32 0, i32 2
  %30 = call i64 @test_bit(i32 %27, i32* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %21
  store i32 0, i32* %7, align 4
  br label %36

33:                                               ; preds = %21
  %34 = load i32, i32* @EBUSY, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %7, align 4
  br label %36

36:                                               ; preds = %33, %32
  br label %265

37:                                               ; preds = %14, %3
  %38 = load i8*, i8** %5, align 8
  %39 = call i64 @cmd_match(i8* %38, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %66

41:                                               ; preds = %37
  %42 = load %struct.md_rdev*, %struct.md_rdev** %4, align 8
  %43 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = icmp sge i32 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %41
  %47 = load i32, i32* @EBUSY, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %7, align 4
  br label %65

49:                                               ; preds = %41
  %50 = load %struct.md_rdev*, %struct.md_rdev** %4, align 8
  %51 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %50, i32 0, i32 3
  %52 = load %struct.mddev*, %struct.mddev** %51, align 8
  store %struct.mddev* %52, %struct.mddev** %8, align 8
  %53 = load %struct.md_rdev*, %struct.md_rdev** %4, align 8
  %54 = call i32 @kick_rdev_from_array(%struct.md_rdev* %53)
  %55 = load %struct.mddev*, %struct.mddev** %8, align 8
  %56 = getelementptr inbounds %struct.mddev, %struct.mddev* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %62

59:                                               ; preds = %49
  %60 = load %struct.mddev*, %struct.mddev** %8, align 8
  %61 = call i32 @md_update_sb(%struct.mddev* %60, i32 1)
  br label %62

62:                                               ; preds = %59, %49
  %63 = load %struct.mddev*, %struct.mddev** %8, align 8
  %64 = call i32 @md_new_event(%struct.mddev* %63)
  store i32 0, i32* %7, align 4
  br label %65

65:                                               ; preds = %62, %46
  br label %264

66:                                               ; preds = %37
  %67 = load i8*, i8** %5, align 8
  %68 = call i64 @cmd_match(i8* %67, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0))
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %75

70:                                               ; preds = %66
  %71 = load i32, i32* @WriteMostly, align 4
  %72 = load %struct.md_rdev*, %struct.md_rdev** %4, align 8
  %73 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %72, i32 0, i32 2
  %74 = call i32 @set_bit(i32 %71, i32* %73)
  store i32 0, i32* %7, align 4
  br label %263

75:                                               ; preds = %66
  %76 = load i8*, i8** %5, align 8
  %77 = call i64 @cmd_match(i8* %76, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0))
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %84

79:                                               ; preds = %75
  %80 = load i32, i32* @WriteMostly, align 4
  %81 = load %struct.md_rdev*, %struct.md_rdev** %4, align 8
  %82 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %81, i32 0, i32 2
  %83 = call i32 @clear_bit(i32 %80, i32* %82)
  store i32 0, i32* %7, align 4
  br label %262

84:                                               ; preds = %75
  %85 = load i8*, i8** %5, align 8
  %86 = call i64 @cmd_match(i8* %85, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0))
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %93

88:                                               ; preds = %84
  %89 = load i32, i32* @Blocked, align 4
  %90 = load %struct.md_rdev*, %struct.md_rdev** %4, align 8
  %91 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %90, i32 0, i32 2
  %92 = call i32 @set_bit(i32 %89, i32* %91)
  store i32 0, i32* %7, align 4
  br label %261

93:                                               ; preds = %84
  %94 = load i8*, i8** %5, align 8
  %95 = call i64 @cmd_match(i8* %94, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0))
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %139

97:                                               ; preds = %93
  %98 = load i32, i32* @Faulty, align 4
  %99 = load %struct.md_rdev*, %struct.md_rdev** %4, align 8
  %100 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %99, i32 0, i32 2
  %101 = call i64 @test_bit(i32 %98, i32* %100)
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %115, label %103

103:                                              ; preds = %97
  %104 = load %struct.md_rdev*, %struct.md_rdev** %4, align 8
  %105 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %104, i32 0, i32 5
  %106 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %105, i32 0, i32 0
  %107 = load i64, i64* %106, align 8
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %115

109:                                              ; preds = %103
  %110 = load %struct.md_rdev*, %struct.md_rdev** %4, align 8
  %111 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %110, i32 0, i32 3
  %112 = load %struct.mddev*, %struct.mddev** %111, align 8
  %113 = load %struct.md_rdev*, %struct.md_rdev** %4, align 8
  %114 = call i32 @md_error(%struct.mddev* %112, %struct.md_rdev* %113)
  br label %115

115:                                              ; preds = %109, %103, %97
  %116 = load i32, i32* @Blocked, align 4
  %117 = load %struct.md_rdev*, %struct.md_rdev** %4, align 8
  %118 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %117, i32 0, i32 2
  %119 = call i32 @clear_bit(i32 %116, i32* %118)
  %120 = load i32, i32* @BlockedBadBlocks, align 4
  %121 = load %struct.md_rdev*, %struct.md_rdev** %4, align 8
  %122 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %121, i32 0, i32 2
  %123 = call i32 @clear_bit(i32 %120, i32* %122)
  %124 = load %struct.md_rdev*, %struct.md_rdev** %4, align 8
  %125 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %124, i32 0, i32 4
  %126 = call i32 @wake_up(i32* %125)
  %127 = load i32, i32* @MD_RECOVERY_NEEDED, align 4
  %128 = load %struct.md_rdev*, %struct.md_rdev** %4, align 8
  %129 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %128, i32 0, i32 3
  %130 = load %struct.mddev*, %struct.mddev** %129, align 8
  %131 = getelementptr inbounds %struct.mddev, %struct.mddev* %130, i32 0, i32 2
  %132 = call i32 @set_bit(i32 %127, i32* %131)
  %133 = load %struct.md_rdev*, %struct.md_rdev** %4, align 8
  %134 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %133, i32 0, i32 3
  %135 = load %struct.mddev*, %struct.mddev** %134, align 8
  %136 = getelementptr inbounds %struct.mddev, %struct.mddev* %135, i32 0, i32 1
  %137 = load i32, i32* %136, align 8
  %138 = call i32 @md_wakeup_thread(i32 %137)
  store i32 0, i32* %7, align 4
  br label %260

139:                                              ; preds = %93
  %140 = load i8*, i8** %5, align 8
  %141 = call i64 @cmd_match(i8* %140, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0))
  %142 = icmp ne i64 %141, 0
  br i1 %142, label %143, label %153

143:                                              ; preds = %139
  %144 = load %struct.md_rdev*, %struct.md_rdev** %4, align 8
  %145 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 8
  %147 = icmp eq i32 %146, -1
  br i1 %147, label %148, label %153

148:                                              ; preds = %143
  %149 = load i32, i32* @In_sync, align 4
  %150 = load %struct.md_rdev*, %struct.md_rdev** %4, align 8
  %151 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %150, i32 0, i32 2
  %152 = call i32 @set_bit(i32 %149, i32* %151)
  store i32 0, i32* %7, align 4
  br label %259

153:                                              ; preds = %143, %139
  %154 = load i8*, i8** %5, align 8
  %155 = call i64 @cmd_match(i8* %154, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.7, i64 0, i64 0))
  %156 = icmp ne i64 %155, 0
  br i1 %156, label %157, label %162

157:                                              ; preds = %153
  %158 = load i32, i32* @WriteErrorSeen, align 4
  %159 = load %struct.md_rdev*, %struct.md_rdev** %4, align 8
  %160 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %159, i32 0, i32 2
  %161 = call i32 @set_bit(i32 %158, i32* %160)
  store i32 0, i32* %7, align 4
  br label %258

162:                                              ; preds = %153
  %163 = load i8*, i8** %5, align 8
  %164 = call i64 @cmd_match(i8* %163, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.8, i64 0, i64 0))
  %165 = icmp ne i64 %164, 0
  br i1 %165, label %166, label %171

166:                                              ; preds = %162
  %167 = load i32, i32* @WriteErrorSeen, align 4
  %168 = load %struct.md_rdev*, %struct.md_rdev** %4, align 8
  %169 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %168, i32 0, i32 2
  %170 = call i32 @clear_bit(i32 %167, i32* %169)
  store i32 0, i32* %7, align 4
  br label %257

171:                                              ; preds = %162
  %172 = load i8*, i8** %5, align 8
  %173 = call i64 @cmd_match(i8* %172, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.9, i64 0, i64 0))
  %174 = icmp ne i64 %173, 0
  br i1 %174, label %175, label %204

175:                                              ; preds = %171
  %176 = load %struct.md_rdev*, %struct.md_rdev** %4, align 8
  %177 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %176, i32 0, i32 0
  %178 = load i32, i32* %177, align 8
  %179 = icmp sge i32 %178, 0
  br i1 %179, label %180, label %191

180:                                              ; preds = %175
  %181 = load i32, i32* @Replacement, align 4
  %182 = load %struct.md_rdev*, %struct.md_rdev** %4, align 8
  %183 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %182, i32 0, i32 2
  %184 = call i64 @test_bit(i32 %181, i32* %183)
  %185 = icmp ne i64 %184, 0
  br i1 %185, label %191, label %186

186:                                              ; preds = %180
  %187 = load i32, i32* @WantReplacement, align 4
  %188 = load %struct.md_rdev*, %struct.md_rdev** %4, align 8
  %189 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %188, i32 0, i32 2
  %190 = call i32 @set_bit(i32 %187, i32* %189)
  br label %191

191:                                              ; preds = %186, %180, %175
  %192 = load i32, i32* @MD_RECOVERY_NEEDED, align 4
  %193 = load %struct.md_rdev*, %struct.md_rdev** %4, align 8
  %194 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %193, i32 0, i32 3
  %195 = load %struct.mddev*, %struct.mddev** %194, align 8
  %196 = getelementptr inbounds %struct.mddev, %struct.mddev* %195, i32 0, i32 2
  %197 = call i32 @set_bit(i32 %192, i32* %196)
  %198 = load %struct.md_rdev*, %struct.md_rdev** %4, align 8
  %199 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %198, i32 0, i32 3
  %200 = load %struct.mddev*, %struct.mddev** %199, align 8
  %201 = getelementptr inbounds %struct.mddev, %struct.mddev* %200, i32 0, i32 1
  %202 = load i32, i32* %201, align 8
  %203 = call i32 @md_wakeup_thread(i32 %202)
  store i32 0, i32* %7, align 4
  br label %256

204:                                              ; preds = %171
  %205 = load i8*, i8** %5, align 8
  %206 = call i64 @cmd_match(i8* %205, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.10, i64 0, i64 0))
  %207 = icmp ne i64 %206, 0
  br i1 %207, label %208, label %213

208:                                              ; preds = %204
  store i32 0, i32* %7, align 4
  %209 = load i32, i32* @WantReplacement, align 4
  %210 = load %struct.md_rdev*, %struct.md_rdev** %4, align 8
  %211 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %210, i32 0, i32 2
  %212 = call i32 @clear_bit(i32 %209, i32* %211)
  br label %255

213:                                              ; preds = %204
  %214 = load i8*, i8** %5, align 8
  %215 = call i64 @cmd_match(i8* %214, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.11, i64 0, i64 0))
  %216 = icmp ne i64 %215, 0
  br i1 %216, label %217, label %233

217:                                              ; preds = %213
  %218 = load %struct.md_rdev*, %struct.md_rdev** %4, align 8
  %219 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %218, i32 0, i32 3
  %220 = load %struct.mddev*, %struct.mddev** %219, align 8
  %221 = getelementptr inbounds %struct.mddev, %struct.mddev* %220, i32 0, i32 0
  %222 = load i64, i64* %221, align 8
  %223 = icmp ne i64 %222, 0
  br i1 %223, label %224, label %227

224:                                              ; preds = %217
  %225 = load i32, i32* @EBUSY, align 4
  %226 = sub nsw i32 0, %225
  store i32 %226, i32* %7, align 4
  br label %232

227:                                              ; preds = %217
  %228 = load i32, i32* @Replacement, align 4
  %229 = load %struct.md_rdev*, %struct.md_rdev** %4, align 8
  %230 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %229, i32 0, i32 2
  %231 = call i32 @set_bit(i32 %228, i32* %230)
  store i32 0, i32* %7, align 4
  br label %232

232:                                              ; preds = %227, %224
  br label %254

233:                                              ; preds = %213
  %234 = load i8*, i8** %5, align 8
  %235 = call i64 @cmd_match(i8* %234, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.12, i64 0, i64 0))
  %236 = icmp ne i64 %235, 0
  br i1 %236, label %237, label %253

237:                                              ; preds = %233
  %238 = load %struct.md_rdev*, %struct.md_rdev** %4, align 8
  %239 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %238, i32 0, i32 3
  %240 = load %struct.mddev*, %struct.mddev** %239, align 8
  %241 = getelementptr inbounds %struct.mddev, %struct.mddev* %240, i32 0, i32 0
  %242 = load i64, i64* %241, align 8
  %243 = icmp ne i64 %242, 0
  br i1 %243, label %244, label %247

244:                                              ; preds = %237
  %245 = load i32, i32* @EBUSY, align 4
  %246 = sub nsw i32 0, %245
  store i32 %246, i32* %7, align 4
  br label %252

247:                                              ; preds = %237
  %248 = load i32, i32* @Replacement, align 4
  %249 = load %struct.md_rdev*, %struct.md_rdev** %4, align 8
  %250 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %249, i32 0, i32 2
  %251 = call i32 @clear_bit(i32 %248, i32* %250)
  store i32 0, i32* %7, align 4
  br label %252

252:                                              ; preds = %247, %244
  br label %253

253:                                              ; preds = %252, %233
  br label %254

254:                                              ; preds = %253, %232
  br label %255

255:                                              ; preds = %254, %208
  br label %256

256:                                              ; preds = %255, %191
  br label %257

257:                                              ; preds = %256, %166
  br label %258

258:                                              ; preds = %257, %157
  br label %259

259:                                              ; preds = %258, %148
  br label %260

260:                                              ; preds = %259, %115
  br label %261

261:                                              ; preds = %260, %88
  br label %262

262:                                              ; preds = %261, %79
  br label %263

263:                                              ; preds = %262, %70
  br label %264

264:                                              ; preds = %263, %65
  br label %265

265:                                              ; preds = %264, %36
  %266 = load i32, i32* %7, align 4
  %267 = icmp ne i32 %266, 0
  br i1 %267, label %273, label %268

268:                                              ; preds = %265
  %269 = load %struct.md_rdev*, %struct.md_rdev** %4, align 8
  %270 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %269, i32 0, i32 1
  %271 = load i32, i32* %270, align 4
  %272 = call i32 @sysfs_notify_dirent_safe(i32 %271)
  br label %273

273:                                              ; preds = %268, %265
  %274 = load i32, i32* %7, align 4
  %275 = icmp ne i32 %274, 0
  br i1 %275, label %276, label %279

276:                                              ; preds = %273
  %277 = load i32, i32* %7, align 4
  %278 = sext i32 %277 to i64
  br label %281

279:                                              ; preds = %273
  %280 = load i64, i64* %6, align 8
  br label %281

281:                                              ; preds = %279, %276
  %282 = phi i64 [ %278, %276 ], [ %280, %279 ]
  %283 = trunc i64 %282 to i32
  ret i32 %283
}

declare dso_local i64 @cmd_match(i8*, i8*) #1

declare dso_local i32 @md_error(%struct.mddev*, %struct.md_rdev*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @kick_rdev_from_array(%struct.md_rdev*) #1

declare dso_local i32 @md_update_sb(%struct.mddev*, i32) #1

declare dso_local i32 @md_new_event(%struct.mddev*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @wake_up(i32*) #1

declare dso_local i32 @md_wakeup_thread(i32) #1

declare dso_local i32 @sysfs_notify_dirent_safe(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
