; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_md.c_slot_store.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_md.c_slot_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.md_rdev = type { i32, i32, i32, i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32, i32, %struct.TYPE_5__*, i32, i32 }
%struct.TYPE_5__ = type { i32 (%struct.TYPE_6__*, %struct.md_rdev*)*, i32* }

@.str = private unnamed_addr constant [5 x i8] c"none\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@EEXIST = common dso_local global i32 0, align 4
@Blocked = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@MD_RECOVERY_NEEDED = common dso_local global i32 0, align 4
@MD_RECOVERY_RUNNING = common dso_local global i32 0, align 4
@ENOSPC = common dso_local global i32 0, align 4
@In_sync = common dso_local global i32 0, align 4
@Faulty = common dso_local global i32 0, align 4
@WriteMostly = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.md_rdev*, i8*, i64)* @slot_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @slot_store(%struct.md_rdev* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.md_rdev*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.md_rdev* %0, %struct.md_rdev** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %11 = load i8*, i8** %6, align 8
  %12 = call i32 @simple_strtoul(i8* %11, i8** %8, i32 10)
  store i32 %12, i32* %10, align 4
  %13 = load i8*, i8** %6, align 8
  %14 = call i64 @strncmp(i8* %13, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 4)
  %15 = icmp eq i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %3
  store i32 -1, i32* %10, align 4
  br label %35

17:                                               ; preds = %3
  %18 = load i8*, i8** %8, align 8
  %19 = load i8*, i8** %6, align 8
  %20 = icmp eq i8* %18, %19
  br i1 %20, label %31, label %21

21:                                               ; preds = %17
  %22 = load i8*, i8** %8, align 8
  %23 = load i8, i8* %22, align 1
  %24 = sext i8 %23 to i32
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %34

26:                                               ; preds = %21
  %27 = load i8*, i8** %8, align 8
  %28 = load i8, i8* %27, align 1
  %29 = sext i8 %28 to i32
  %30 = icmp ne i32 %29, 10
  br i1 %30, label %31, label %34

31:                                               ; preds = %26, %17
  %32 = load i32, i32* @EINVAL, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %4, align 4
  br label %260

34:                                               ; preds = %26, %21
  br label %35

35:                                               ; preds = %34, %16
  %36 = load %struct.md_rdev*, %struct.md_rdev** %5, align 8
  %37 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %36, i32 0, i32 4
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 2
  %40 = load %struct.TYPE_5__*, %struct.TYPE_5__** %39, align 8
  %41 = icmp ne %struct.TYPE_5__* %40, null
  br i1 %41, label %42, label %95

42:                                               ; preds = %35
  %43 = load i32, i32* %10, align 4
  %44 = icmp eq i32 %43, -1
  br i1 %44, label %45, label %95

45:                                               ; preds = %42
  %46 = load %struct.md_rdev*, %struct.md_rdev** %5, align 8
  %47 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = icmp eq i32 %48, -1
  br i1 %49, label %50, label %53

50:                                               ; preds = %45
  %51 = load i32, i32* @EEXIST, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %4, align 4
  br label %260

53:                                               ; preds = %45
  %54 = load %struct.md_rdev*, %struct.md_rdev** %5, align 8
  %55 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %54, i32 0, i32 4
  %56 = load %struct.TYPE_6__*, %struct.TYPE_6__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 2
  %58 = load %struct.TYPE_5__*, %struct.TYPE_5__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i32 0, i32 1
  %60 = load i32*, i32** %59, align 8
  %61 = icmp eq i32* %60, null
  br i1 %61, label %62, label %65

62:                                               ; preds = %53
  %63 = load i32, i32* @EINVAL, align 4
  %64 = sub nsw i32 0, %63
  store i32 %64, i32* %4, align 4
  br label %260

65:                                               ; preds = %53
  %66 = load i32, i32* @Blocked, align 4
  %67 = load %struct.md_rdev*, %struct.md_rdev** %5, align 8
  %68 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %67, i32 0, i32 3
  %69 = call i32 @clear_bit(i32 %66, i32* %68)
  %70 = load %struct.md_rdev*, %struct.md_rdev** %5, align 8
  %71 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %70, i32 0, i32 4
  %72 = load %struct.TYPE_6__*, %struct.TYPE_6__** %71, align 8
  %73 = load %struct.md_rdev*, %struct.md_rdev** %5, align 8
  %74 = call i32 @remove_and_add_spares(%struct.TYPE_6__* %72, %struct.md_rdev* %73)
  %75 = load %struct.md_rdev*, %struct.md_rdev** %5, align 8
  %76 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = icmp sge i32 %77, 0
  br i1 %78, label %79, label %82

79:                                               ; preds = %65
  %80 = load i32, i32* @EBUSY, align 4
  %81 = sub nsw i32 0, %80
  store i32 %81, i32* %4, align 4
  br label %260

82:                                               ; preds = %65
  %83 = load i32, i32* @MD_RECOVERY_NEEDED, align 4
  %84 = load %struct.md_rdev*, %struct.md_rdev** %5, align 8
  %85 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %84, i32 0, i32 4
  %86 = load %struct.TYPE_6__*, %struct.TYPE_6__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %86, i32 0, i32 3
  %88 = call i32 @set_bit(i32 %83, i32* %87)
  %89 = load %struct.md_rdev*, %struct.md_rdev** %5, align 8
  %90 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %89, i32 0, i32 4
  %91 = load %struct.TYPE_6__*, %struct.TYPE_6__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %91, i32 0, i32 4
  %93 = load i32, i32* %92, align 4
  %94 = call i32 @md_wakeup_thread(i32 %93)
  br label %257

95:                                               ; preds = %42, %35
  %96 = load %struct.md_rdev*, %struct.md_rdev** %5, align 8
  %97 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %96, i32 0, i32 4
  %98 = load %struct.TYPE_6__*, %struct.TYPE_6__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %98, i32 0, i32 2
  %100 = load %struct.TYPE_5__*, %struct.TYPE_5__** %99, align 8
  %101 = icmp ne %struct.TYPE_5__* %100, null
  br i1 %101, label %102, label %211

102:                                              ; preds = %95
  %103 = load %struct.md_rdev*, %struct.md_rdev** %5, align 8
  %104 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = icmp ne i32 %105, -1
  br i1 %106, label %107, label %110

107:                                              ; preds = %102
  %108 = load i32, i32* @EBUSY, align 4
  %109 = sub nsw i32 0, %108
  store i32 %109, i32* %4, align 4
  br label %260

110:                                              ; preds = %102
  %111 = load i32, i32* @MD_RECOVERY_RUNNING, align 4
  %112 = load %struct.md_rdev*, %struct.md_rdev** %5, align 8
  %113 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %112, i32 0, i32 4
  %114 = load %struct.TYPE_6__*, %struct.TYPE_6__** %113, align 8
  %115 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %114, i32 0, i32 3
  %116 = call i64 @test_bit(i32 %111, i32* %115)
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %121

118:                                              ; preds = %110
  %119 = load i32, i32* @EBUSY, align 4
  %120 = sub nsw i32 0, %119
  store i32 %120, i32* %4, align 4
  br label %260

121:                                              ; preds = %110
  %122 = load %struct.md_rdev*, %struct.md_rdev** %5, align 8
  %123 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %122, i32 0, i32 4
  %124 = load %struct.TYPE_6__*, %struct.TYPE_6__** %123, align 8
  %125 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %124, i32 0, i32 2
  %126 = load %struct.TYPE_5__*, %struct.TYPE_5__** %125, align 8
  %127 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %126, i32 0, i32 0
  %128 = load i32 (%struct.TYPE_6__*, %struct.md_rdev*)*, i32 (%struct.TYPE_6__*, %struct.md_rdev*)** %127, align 8
  %129 = icmp eq i32 (%struct.TYPE_6__*, %struct.md_rdev*)* %128, null
  br i1 %129, label %130, label %133

130:                                              ; preds = %121
  %131 = load i32, i32* @EINVAL, align 4
  %132 = sub nsw i32 0, %131
  store i32 %132, i32* %4, align 4
  br label %260

133:                                              ; preds = %121
  %134 = load i32, i32* %10, align 4
  %135 = load %struct.md_rdev*, %struct.md_rdev** %5, align 8
  %136 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %135, i32 0, i32 4
  %137 = load %struct.TYPE_6__*, %struct.TYPE_6__** %136, align 8
  %138 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 8
  %140 = icmp sge i32 %134, %139
  br i1 %140, label %141, label %158

141:                                              ; preds = %133
  %142 = load i32, i32* %10, align 4
  %143 = load %struct.md_rdev*, %struct.md_rdev** %5, align 8
  %144 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %143, i32 0, i32 4
  %145 = load %struct.TYPE_6__*, %struct.TYPE_6__** %144, align 8
  %146 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 8
  %148 = load %struct.md_rdev*, %struct.md_rdev** %5, align 8
  %149 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %148, i32 0, i32 4
  %150 = load %struct.TYPE_6__*, %struct.TYPE_6__** %149, align 8
  %151 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %150, i32 0, i32 1
  %152 = load i32, i32* %151, align 4
  %153 = add nsw i32 %147, %152
  %154 = icmp sge i32 %142, %153
  br i1 %154, label %155, label %158

155:                                              ; preds = %141
  %156 = load i32, i32* @ENOSPC, align 4
  %157 = sub nsw i32 0, %156
  store i32 %157, i32* %4, align 4
  br label %260

158:                                              ; preds = %141, %133
  %159 = load i32, i32* %10, align 4
  %160 = load %struct.md_rdev*, %struct.md_rdev** %5, align 8
  %161 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %160, i32 0, i32 0
  store i32 %159, i32* %161, align 8
  %162 = load i32, i32* @In_sync, align 4
  %163 = load %struct.md_rdev*, %struct.md_rdev** %5, align 8
  %164 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %163, i32 0, i32 3
  %165 = call i64 @test_bit(i32 %162, i32* %164)
  %166 = icmp ne i64 %165, 0
  br i1 %166, label %167, label %171

167:                                              ; preds = %158
  %168 = load i32, i32* %10, align 4
  %169 = load %struct.md_rdev*, %struct.md_rdev** %5, align 8
  %170 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %169, i32 0, i32 1
  store i32 %168, i32* %170, align 4
  br label %174

171:                                              ; preds = %158
  %172 = load %struct.md_rdev*, %struct.md_rdev** %5, align 8
  %173 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %172, i32 0, i32 1
  store i32 -1, i32* %173, align 4
  br label %174

174:                                              ; preds = %171, %167
  %175 = load i32, i32* @In_sync, align 4
  %176 = load %struct.md_rdev*, %struct.md_rdev** %5, align 8
  %177 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %176, i32 0, i32 3
  %178 = call i32 @clear_bit(i32 %175, i32* %177)
  %179 = load %struct.md_rdev*, %struct.md_rdev** %5, align 8
  %180 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %179, i32 0, i32 4
  %181 = load %struct.TYPE_6__*, %struct.TYPE_6__** %180, align 8
  %182 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %181, i32 0, i32 2
  %183 = load %struct.TYPE_5__*, %struct.TYPE_5__** %182, align 8
  %184 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %183, i32 0, i32 0
  %185 = load i32 (%struct.TYPE_6__*, %struct.md_rdev*)*, i32 (%struct.TYPE_6__*, %struct.md_rdev*)** %184, align 8
  %186 = load %struct.md_rdev*, %struct.md_rdev** %5, align 8
  %187 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %186, i32 0, i32 4
  %188 = load %struct.TYPE_6__*, %struct.TYPE_6__** %187, align 8
  %189 = load %struct.md_rdev*, %struct.md_rdev** %5, align 8
  %190 = call i32 %185(%struct.TYPE_6__* %188, %struct.md_rdev* %189)
  store i32 %190, i32* %9, align 4
  %191 = load i32, i32* %9, align 4
  %192 = icmp ne i32 %191, 0
  br i1 %192, label %193, label %197

193:                                              ; preds = %174
  %194 = load %struct.md_rdev*, %struct.md_rdev** %5, align 8
  %195 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %194, i32 0, i32 0
  store i32 -1, i32* %195, align 8
  %196 = load i32, i32* %9, align 4
  store i32 %196, i32* %4, align 4
  br label %260

197:                                              ; preds = %174
  %198 = load %struct.md_rdev*, %struct.md_rdev** %5, align 8
  %199 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %198, i32 0, i32 2
  %200 = load i32, i32* %199, align 8
  %201 = call i32 @sysfs_notify_dirent_safe(i32 %200)
  br label %202

202:                                              ; preds = %197
  %203 = load %struct.md_rdev*, %struct.md_rdev** %5, align 8
  %204 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %203, i32 0, i32 4
  %205 = load %struct.TYPE_6__*, %struct.TYPE_6__** %204, align 8
  %206 = load %struct.md_rdev*, %struct.md_rdev** %5, align 8
  %207 = call i64 @sysfs_link_rdev(%struct.TYPE_6__* %205, %struct.md_rdev* %206)
  %208 = icmp ne i64 %207, 0
  br i1 %208, label %209, label %210

209:                                              ; preds = %202
  br label %210

210:                                              ; preds = %209, %202
  br label %256

211:                                              ; preds = %95
  %212 = load i32, i32* %10, align 4
  %213 = load %struct.md_rdev*, %struct.md_rdev** %5, align 8
  %214 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %213, i32 0, i32 4
  %215 = load %struct.TYPE_6__*, %struct.TYPE_6__** %214, align 8
  %216 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %215, i32 0, i32 0
  %217 = load i32, i32* %216, align 8
  %218 = icmp sge i32 %212, %217
  br i1 %218, label %219, label %236

219:                                              ; preds = %211
  %220 = load i32, i32* %10, align 4
  %221 = load %struct.md_rdev*, %struct.md_rdev** %5, align 8
  %222 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %221, i32 0, i32 4
  %223 = load %struct.TYPE_6__*, %struct.TYPE_6__** %222, align 8
  %224 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %223, i32 0, i32 0
  %225 = load i32, i32* %224, align 8
  %226 = load %struct.md_rdev*, %struct.md_rdev** %5, align 8
  %227 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %226, i32 0, i32 4
  %228 = load %struct.TYPE_6__*, %struct.TYPE_6__** %227, align 8
  %229 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %228, i32 0, i32 1
  %230 = load i32, i32* %229, align 4
  %231 = add nsw i32 %225, %230
  %232 = icmp sge i32 %220, %231
  br i1 %232, label %233, label %236

233:                                              ; preds = %219
  %234 = load i32, i32* @ENOSPC, align 4
  %235 = sub nsw i32 0, %234
  store i32 %235, i32* %4, align 4
  br label %260

236:                                              ; preds = %219, %211
  %237 = load i32, i32* %10, align 4
  %238 = load %struct.md_rdev*, %struct.md_rdev** %5, align 8
  %239 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %238, i32 0, i32 0
  store i32 %237, i32* %239, align 8
  %240 = load i32, i32* @Faulty, align 4
  %241 = load %struct.md_rdev*, %struct.md_rdev** %5, align 8
  %242 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %241, i32 0, i32 3
  %243 = call i32 @clear_bit(i32 %240, i32* %242)
  %244 = load i32, i32* @WriteMostly, align 4
  %245 = load %struct.md_rdev*, %struct.md_rdev** %5, align 8
  %246 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %245, i32 0, i32 3
  %247 = call i32 @clear_bit(i32 %244, i32* %246)
  %248 = load i32, i32* @In_sync, align 4
  %249 = load %struct.md_rdev*, %struct.md_rdev** %5, align 8
  %250 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %249, i32 0, i32 3
  %251 = call i32 @set_bit(i32 %248, i32* %250)
  %252 = load %struct.md_rdev*, %struct.md_rdev** %5, align 8
  %253 = getelementptr inbounds %struct.md_rdev, %struct.md_rdev* %252, i32 0, i32 2
  %254 = load i32, i32* %253, align 8
  %255 = call i32 @sysfs_notify_dirent_safe(i32 %254)
  br label %256

256:                                              ; preds = %236, %210
  br label %257

257:                                              ; preds = %256, %82
  %258 = load i64, i64* %7, align 8
  %259 = trunc i64 %258 to i32
  store i32 %259, i32* %4, align 4
  br label %260

260:                                              ; preds = %257, %233, %193, %155, %130, %118, %107, %79, %62, %50, %31
  %261 = load i32, i32* %4, align 4
  ret i32 %261
}

declare dso_local i32 @simple_strtoul(i8*, i8**, i32) #1

declare dso_local i64 @strncmp(i8*, i8*, i32) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @remove_and_add_spares(%struct.TYPE_6__*, %struct.md_rdev*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @md_wakeup_thread(i32) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @sysfs_notify_dirent_safe(i32) #1

declare dso_local i64 @sysfs_link_rdev(%struct.TYPE_6__*, %struct.md_rdev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
