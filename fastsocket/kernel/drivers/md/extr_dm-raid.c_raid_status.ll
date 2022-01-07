; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-raid.c_raid_status.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-raid.c_raid_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dm_target = type { %struct.raid_set* }
%struct.raid_set = type { i32, %struct.TYPE_12__*, %struct.TYPE_14__, %struct.TYPE_13__* }
%struct.TYPE_12__ = type { %struct.TYPE_10__*, %struct.TYPE_9__*, %struct.TYPE_11__ }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_14__ = type { i32, i32, %struct.TYPE_8__, %struct.r5conf*, i32, i32, i64, i32, i32, i32, i64, i32, i64 }
%struct.TYPE_8__ = type { i32, i32, i32 }
%struct.r5conf = type { i32 }
%struct.TYPE_13__ = type { i32 }

@.str = private unnamed_addr constant [7 x i8] c"%s %d \00", align 1
@MD_RECOVERY_RUNNING = common dso_local global i32 0, align 4
@MD_RECOVERY_REQUESTED = common dso_local global i32 0, align 4
@In_sync = common dso_local global i32 0, align 4
@Faulty = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [2 x i8] c"D\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"a\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"A\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c" %llu/%llu\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c" %s\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c" %llu\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"check\00", align 1
@DMPF_REBUILD = common dso_local global i32 0, align 4
@WriteMostly = common dso_local global i32 0, align 4
@DMPF_SYNC = common dso_local global i32 0, align 4
@DMPF_NOSYNC = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [9 x i8] c"%s %u %u\00", align 1
@MaxSector = common dso_local global i64 0, align 8
@.str.9 = private unnamed_addr constant [6 x i8] c" sync\00", align 1
@.str.10 = private unnamed_addr constant [8 x i8] c" nosync\00", align 1
@.str.11 = private unnamed_addr constant [12 x i8] c" rebuild %u\00", align 1
@DMPF_DAEMON_SLEEP = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [18 x i8] c" daemon_sleep %lu\00", align 1
@DMPF_MIN_RECOVERY_RATE = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [22 x i8] c" min_recovery_rate %d\00", align 1
@DMPF_MAX_RECOVERY_RATE = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [22 x i8] c" max_recovery_rate %d\00", align 1
@.str.15 = private unnamed_addr constant [17 x i8] c" write_mostly %u\00", align 1
@DMPF_MAX_WRITE_BEHIND = common dso_local global i32 0, align 4
@.str.16 = private unnamed_addr constant [22 x i8] c" max_write_behind %lu\00", align 1
@DMPF_STRIPE_CACHE = common dso_local global i32 0, align 4
@.str.17 = private unnamed_addr constant [17 x i8] c" stripe_cache %d\00", align 1
@DMPF_REGION_SIZE = common dso_local global i32 0, align 4
@.str.18 = private unnamed_addr constant [17 x i8] c" region_size %lu\00", align 1
@DMPF_RAID10_COPIES = common dso_local global i32 0, align 4
@.str.19 = private unnamed_addr constant [18 x i8] c" raid10_copies %u\00", align 1
@DMPF_RAID10_FORMAT = common dso_local global i32 0, align 4
@.str.20 = private unnamed_addr constant [20 x i8] c" raid10_format near\00", align 1
@.str.21 = private unnamed_addr constant [4 x i8] c" %d\00", align 1
@.str.22 = private unnamed_addr constant [3 x i8] c" -\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dm_target*, i32, i8*, i32)* @raid_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @raid_status(%struct.dm_target* %0, i32 %1, i8* %2, i32 %3) #0 {
  %5 = alloca %struct.dm_target*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.raid_set*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca %struct.r5conf*, align 8
  store %struct.dm_target* %0, %struct.dm_target** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  store i32 %3, i32* %8, align 4
  %16 = load %struct.dm_target*, %struct.dm_target** %5, align 8
  %17 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %16, i32 0, i32 0
  %18 = load %struct.raid_set*, %struct.raid_set** %17, align 8
  store %struct.raid_set* %18, %struct.raid_set** %9, align 8
  store i32 1, i32* %10, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %13, align 4
  %19 = load i32, i32* %6, align 4
  switch i32 %19, label %555 [
    i32 129, label %20
    i32 128, label %166
  ]

20:                                               ; preds = %4
  %21 = load %struct.raid_set*, %struct.raid_set** %9, align 8
  %22 = getelementptr inbounds %struct.raid_set, %struct.raid_set* %21, i32 0, i32 3
  %23 = load %struct.TYPE_13__*, %struct.TYPE_13__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.raid_set*, %struct.raid_set** %9, align 8
  %27 = getelementptr inbounds %struct.raid_set, %struct.raid_set* %26, i32 0, i32 2
  %28 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = call i32 (i8*, ...) @DMEMIT(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %25, i32 %29)
  %31 = load i32, i32* @MD_RECOVERY_RUNNING, align 4
  %32 = load %struct.raid_set*, %struct.raid_set** %9, align 8
  %33 = getelementptr inbounds %struct.raid_set, %struct.raid_set* %32, i32 0, i32 2
  %34 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %33, i32 0, i32 11
  %35 = call i32 @test_bit(i32 %31, i32* %34)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %42

37:                                               ; preds = %20
  %38 = load %struct.raid_set*, %struct.raid_set** %9, align 8
  %39 = getelementptr inbounds %struct.raid_set, %struct.raid_set* %38, i32 0, i32 2
  %40 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %39, i32 0, i32 12
  %41 = load i64, i64* %40, align 8
  store i64 %41, i64* %14, align 8
  br label %47

42:                                               ; preds = %20
  %43 = load %struct.raid_set*, %struct.raid_set** %9, align 8
  %44 = getelementptr inbounds %struct.raid_set, %struct.raid_set* %43, i32 0, i32 2
  %45 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %44, i32 0, i32 6
  %46 = load i64, i64* %45, align 8
  store i64 %46, i64* %14, align 8
  br label %47

47:                                               ; preds = %42, %37
  %48 = load i64, i64* %14, align 8
  %49 = load %struct.raid_set*, %struct.raid_set** %9, align 8
  %50 = getelementptr inbounds %struct.raid_set, %struct.raid_set* %49, i32 0, i32 2
  %51 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %50, i32 0, i32 10
  %52 = load i64, i64* %51, align 8
  %53 = icmp sge i64 %48, %52
  br i1 %53, label %54, label %59

54:                                               ; preds = %47
  store i32 1, i32* %13, align 4
  %55 = load %struct.raid_set*, %struct.raid_set** %9, align 8
  %56 = getelementptr inbounds %struct.raid_set, %struct.raid_set* %55, i32 0, i32 2
  %57 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %56, i32 0, i32 10
  %58 = load i64, i64* %57, align 8
  store i64 %58, i64* %14, align 8
  br label %94

59:                                               ; preds = %47
  %60 = load i32, i32* @MD_RECOVERY_REQUESTED, align 4
  %61 = load %struct.raid_set*, %struct.raid_set** %9, align 8
  %62 = getelementptr inbounds %struct.raid_set, %struct.raid_set* %61, i32 0, i32 2
  %63 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %62, i32 0, i32 11
  %64 = call i32 @test_bit(i32 %60, i32* %63)
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %59
  store i32 1, i32* %13, align 4
  br label %93

67:                                               ; preds = %59
  store i32 0, i32* %12, align 4
  br label %68

68:                                               ; preds = %89, %67
  %69 = load i32, i32* %12, align 4
  %70 = load %struct.raid_set*, %struct.raid_set** %9, align 8
  %71 = getelementptr inbounds %struct.raid_set, %struct.raid_set* %70, i32 0, i32 2
  %72 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = icmp slt i32 %69, %73
  br i1 %74, label %75, label %92

75:                                               ; preds = %68
  %76 = load i32, i32* @In_sync, align 4
  %77 = load %struct.raid_set*, %struct.raid_set** %9, align 8
  %78 = getelementptr inbounds %struct.raid_set, %struct.raid_set* %77, i32 0, i32 1
  %79 = load %struct.TYPE_12__*, %struct.TYPE_12__** %78, align 8
  %80 = load i32, i32* %12, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %79, i64 %81
  %83 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %82, i32 0, i32 2
  %84 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %83, i32 0, i32 0
  %85 = call i32 @test_bit(i32 %76, i32* %84)
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %88, label %87

87:                                               ; preds = %75
  store i32 1, i32* %13, align 4
  br label %88

88:                                               ; preds = %87, %75
  br label %89

89:                                               ; preds = %88
  %90 = load i32, i32* %12, align 4
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* %12, align 4
  br label %68

92:                                               ; preds = %68
  br label %93

93:                                               ; preds = %92, %66
  br label %94

94:                                               ; preds = %93, %54
  store i32 0, i32* %12, align 4
  br label %95

95:                                               ; preds = %137, %94
  %96 = load i32, i32* %12, align 4
  %97 = load %struct.raid_set*, %struct.raid_set** %9, align 8
  %98 = getelementptr inbounds %struct.raid_set, %struct.raid_set* %97, i32 0, i32 2
  %99 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = icmp slt i32 %96, %100
  br i1 %101, label %102, label %140

102:                                              ; preds = %95
  %103 = load i32, i32* @Faulty, align 4
  %104 = load %struct.raid_set*, %struct.raid_set** %9, align 8
  %105 = getelementptr inbounds %struct.raid_set, %struct.raid_set* %104, i32 0, i32 1
  %106 = load %struct.TYPE_12__*, %struct.TYPE_12__** %105, align 8
  %107 = load i32, i32* %12, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %106, i64 %108
  %110 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %109, i32 0, i32 2
  %111 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %110, i32 0, i32 0
  %112 = call i32 @test_bit(i32 %103, i32* %111)
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %116

114:                                              ; preds = %102
  %115 = call i32 (i8*, ...) @DMEMIT(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  br label %136

116:                                              ; preds = %102
  %117 = load i32, i32* %13, align 4
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %131

119:                                              ; preds = %116
  %120 = load i32, i32* @In_sync, align 4
  %121 = load %struct.raid_set*, %struct.raid_set** %9, align 8
  %122 = getelementptr inbounds %struct.raid_set, %struct.raid_set* %121, i32 0, i32 1
  %123 = load %struct.TYPE_12__*, %struct.TYPE_12__** %122, align 8
  %124 = load i32, i32* %12, align 4
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %123, i64 %125
  %127 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %126, i32 0, i32 2
  %128 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %127, i32 0, i32 0
  %129 = call i32 @test_bit(i32 %120, i32* %128)
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %133, label %131

131:                                              ; preds = %119, %116
  %132 = call i32 (i8*, ...) @DMEMIT(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  br label %135

133:                                              ; preds = %119
  %134 = call i32 (i8*, ...) @DMEMIT(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  br label %135

135:                                              ; preds = %133, %131
  br label %136

136:                                              ; preds = %135, %114
  br label %137

137:                                              ; preds = %136
  %138 = load i32, i32* %12, align 4
  %139 = add nsw i32 %138, 1
  store i32 %139, i32* %12, align 4
  br label %95

140:                                              ; preds = %95
  %141 = load i64, i64* %14, align 8
  %142 = load %struct.raid_set*, %struct.raid_set** %9, align 8
  %143 = getelementptr inbounds %struct.raid_set, %struct.raid_set* %142, i32 0, i32 2
  %144 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %143, i32 0, i32 10
  %145 = load i64, i64* %144, align 8
  %146 = call i32 (i8*, ...) @DMEMIT(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0), i64 %141, i64 %145)
  %147 = load %struct.raid_set*, %struct.raid_set** %9, align 8
  %148 = getelementptr inbounds %struct.raid_set, %struct.raid_set* %147, i32 0, i32 2
  %149 = call i32 @decipher_sync_action(%struct.TYPE_14__* %148)
  %150 = call i32 (i8*, ...) @DMEMIT(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), i32 %149)
  %151 = load %struct.raid_set*, %struct.raid_set** %9, align 8
  %152 = getelementptr inbounds %struct.raid_set, %struct.raid_set* %151, i32 0, i32 2
  %153 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %152, i32 0, i32 9
  %154 = load i32, i32* %153, align 8
  %155 = call i32 @strcmp(i32 %154, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0))
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %157, label %158

157:                                              ; preds = %140
  br label %163

158:                                              ; preds = %140
  %159 = load %struct.raid_set*, %struct.raid_set** %9, align 8
  %160 = getelementptr inbounds %struct.raid_set, %struct.raid_set* %159, i32 0, i32 2
  %161 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %160, i32 0, i32 8
  %162 = call i64 @atomic64_read(i32* %161)
  br label %163

163:                                              ; preds = %158, %157
  %164 = phi i64 [ 0, %157 ], [ %162, %158 ]
  %165 = call i32 (i8*, ...) @DMEMIT(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0), i64 %164)
  br label %555

166:                                              ; preds = %4
  store i32 0, i32* %12, align 4
  br label %167

167:                                              ; preds = %232, %166
  %168 = load i32, i32* %12, align 4
  %169 = load %struct.raid_set*, %struct.raid_set** %9, align 8
  %170 = getelementptr inbounds %struct.raid_set, %struct.raid_set* %169, i32 0, i32 2
  %171 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %170, i32 0, i32 0
  %172 = load i32, i32* %171, align 8
  %173 = icmp slt i32 %168, %172
  br i1 %173, label %174, label %235

174:                                              ; preds = %167
  %175 = load %struct.raid_set*, %struct.raid_set** %9, align 8
  %176 = getelementptr inbounds %struct.raid_set, %struct.raid_set* %175, i32 0, i32 0
  %177 = load i32, i32* %176, align 8
  %178 = load i32, i32* @DMPF_REBUILD, align 4
  %179 = and i32 %177, %178
  %180 = icmp ne i32 %179, 0
  br i1 %180, label %181, label %206

181:                                              ; preds = %174
  %182 = load %struct.raid_set*, %struct.raid_set** %9, align 8
  %183 = getelementptr inbounds %struct.raid_set, %struct.raid_set* %182, i32 0, i32 1
  %184 = load %struct.TYPE_12__*, %struct.TYPE_12__** %183, align 8
  %185 = load i32, i32* %12, align 4
  %186 = sext i32 %185 to i64
  %187 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %184, i64 %186
  %188 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %187, i32 0, i32 0
  %189 = load %struct.TYPE_10__*, %struct.TYPE_10__** %188, align 8
  %190 = icmp ne %struct.TYPE_10__* %189, null
  br i1 %190, label %191, label %206

191:                                              ; preds = %181
  %192 = load i32, i32* @In_sync, align 4
  %193 = load %struct.raid_set*, %struct.raid_set** %9, align 8
  %194 = getelementptr inbounds %struct.raid_set, %struct.raid_set* %193, i32 0, i32 1
  %195 = load %struct.TYPE_12__*, %struct.TYPE_12__** %194, align 8
  %196 = load i32, i32* %12, align 4
  %197 = sext i32 %196 to i64
  %198 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %195, i64 %197
  %199 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %198, i32 0, i32 2
  %200 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %199, i32 0, i32 0
  %201 = call i32 @test_bit(i32 %192, i32* %200)
  %202 = icmp ne i32 %201, 0
  br i1 %202, label %206, label %203

203:                                              ; preds = %191
  %204 = load i32, i32* %10, align 4
  %205 = add i32 %204, 2
  store i32 %205, i32* %10, align 4
  br label %206

206:                                              ; preds = %203, %191, %181, %174
  %207 = load %struct.raid_set*, %struct.raid_set** %9, align 8
  %208 = getelementptr inbounds %struct.raid_set, %struct.raid_set* %207, i32 0, i32 1
  %209 = load %struct.TYPE_12__*, %struct.TYPE_12__** %208, align 8
  %210 = load i32, i32* %12, align 4
  %211 = sext i32 %210 to i64
  %212 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %209, i64 %211
  %213 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %212, i32 0, i32 0
  %214 = load %struct.TYPE_10__*, %struct.TYPE_10__** %213, align 8
  %215 = icmp ne %struct.TYPE_10__* %214, null
  br i1 %215, label %216, label %231

216:                                              ; preds = %206
  %217 = load i32, i32* @WriteMostly, align 4
  %218 = load %struct.raid_set*, %struct.raid_set** %9, align 8
  %219 = getelementptr inbounds %struct.raid_set, %struct.raid_set* %218, i32 0, i32 1
  %220 = load %struct.TYPE_12__*, %struct.TYPE_12__** %219, align 8
  %221 = load i32, i32* %12, align 4
  %222 = sext i32 %221 to i64
  %223 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %220, i64 %222
  %224 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %223, i32 0, i32 2
  %225 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %224, i32 0, i32 0
  %226 = call i32 @test_bit(i32 %217, i32* %225)
  %227 = icmp ne i32 %226, 0
  br i1 %227, label %228, label %231

228:                                              ; preds = %216
  %229 = load i32, i32* %10, align 4
  %230 = add i32 %229, 2
  store i32 %230, i32* %10, align 4
  br label %231

231:                                              ; preds = %228, %216, %206
  br label %232

232:                                              ; preds = %231
  %233 = load i32, i32* %12, align 4
  %234 = add nsw i32 %233, 1
  store i32 %234, i32* %12, align 4
  br label %167

235:                                              ; preds = %167
  %236 = load %struct.raid_set*, %struct.raid_set** %9, align 8
  %237 = getelementptr inbounds %struct.raid_set, %struct.raid_set* %236, i32 0, i32 0
  %238 = load i32, i32* %237, align 8
  %239 = load i32, i32* @DMPF_REBUILD, align 4
  %240 = xor i32 %239, -1
  %241 = and i32 %238, %240
  %242 = call i32 @hweight32(i32 %241)
  %243 = mul nsw i32 %242, 2
  %244 = load i32, i32* %10, align 4
  %245 = add i32 %244, %243
  store i32 %245, i32* %10, align 4
  %246 = load %struct.raid_set*, %struct.raid_set** %9, align 8
  %247 = getelementptr inbounds %struct.raid_set, %struct.raid_set* %246, i32 0, i32 0
  %248 = load i32, i32* %247, align 8
  %249 = load i32, i32* @DMPF_SYNC, align 4
  %250 = load i32, i32* @DMPF_NOSYNC, align 4
  %251 = or i32 %249, %250
  %252 = and i32 %248, %251
  %253 = icmp ne i32 %252, 0
  br i1 %253, label %254, label %257

254:                                              ; preds = %235
  %255 = load i32, i32* %10, align 4
  %256 = add i32 %255, -1
  store i32 %256, i32* %10, align 4
  br label %257

257:                                              ; preds = %254, %235
  %258 = load %struct.raid_set*, %struct.raid_set** %9, align 8
  %259 = getelementptr inbounds %struct.raid_set, %struct.raid_set* %258, i32 0, i32 3
  %260 = load %struct.TYPE_13__*, %struct.TYPE_13__** %259, align 8
  %261 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %260, i32 0, i32 0
  %262 = load i32, i32* %261, align 4
  %263 = load i32, i32* %10, align 4
  %264 = load %struct.raid_set*, %struct.raid_set** %9, align 8
  %265 = getelementptr inbounds %struct.raid_set, %struct.raid_set* %264, i32 0, i32 2
  %266 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %265, i32 0, i32 7
  %267 = load i32, i32* %266, align 8
  %268 = call i32 (i8*, ...) @DMEMIT(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i64 0, i64 0), i32 %262, i32 %263, i32 %267)
  %269 = load %struct.raid_set*, %struct.raid_set** %9, align 8
  %270 = getelementptr inbounds %struct.raid_set, %struct.raid_set* %269, i32 0, i32 0
  %271 = load i32, i32* %270, align 8
  %272 = load i32, i32* @DMPF_SYNC, align 4
  %273 = and i32 %271, %272
  %274 = icmp ne i32 %273, 0
  br i1 %274, label %275, label %284

275:                                              ; preds = %257
  %276 = load %struct.raid_set*, %struct.raid_set** %9, align 8
  %277 = getelementptr inbounds %struct.raid_set, %struct.raid_set* %276, i32 0, i32 2
  %278 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %277, i32 0, i32 6
  %279 = load i64, i64* %278, align 8
  %280 = load i64, i64* @MaxSector, align 8
  %281 = icmp eq i64 %279, %280
  br i1 %281, label %282, label %284

282:                                              ; preds = %275
  %283 = call i32 (i8*, ...) @DMEMIT(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0))
  br label %284

284:                                              ; preds = %282, %275, %257
  %285 = load %struct.raid_set*, %struct.raid_set** %9, align 8
  %286 = getelementptr inbounds %struct.raid_set, %struct.raid_set* %285, i32 0, i32 0
  %287 = load i32, i32* %286, align 8
  %288 = load i32, i32* @DMPF_NOSYNC, align 4
  %289 = and i32 %287, %288
  %290 = icmp ne i32 %289, 0
  br i1 %290, label %291, label %293

291:                                              ; preds = %284
  %292 = call i32 (i8*, ...) @DMEMIT(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.10, i64 0, i64 0))
  br label %293

293:                                              ; preds = %291, %284
  store i32 0, i32* %12, align 4
  br label %294

294:                                              ; preds = %334, %293
  %295 = load i32, i32* %12, align 4
  %296 = load %struct.raid_set*, %struct.raid_set** %9, align 8
  %297 = getelementptr inbounds %struct.raid_set, %struct.raid_set* %296, i32 0, i32 2
  %298 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %297, i32 0, i32 0
  %299 = load i32, i32* %298, align 8
  %300 = icmp slt i32 %295, %299
  br i1 %300, label %301, label %337

301:                                              ; preds = %294
  %302 = load %struct.raid_set*, %struct.raid_set** %9, align 8
  %303 = getelementptr inbounds %struct.raid_set, %struct.raid_set* %302, i32 0, i32 0
  %304 = load i32, i32* %303, align 8
  %305 = load i32, i32* @DMPF_REBUILD, align 4
  %306 = and i32 %304, %305
  %307 = icmp ne i32 %306, 0
  br i1 %307, label %308, label %333

308:                                              ; preds = %301
  %309 = load %struct.raid_set*, %struct.raid_set** %9, align 8
  %310 = getelementptr inbounds %struct.raid_set, %struct.raid_set* %309, i32 0, i32 1
  %311 = load %struct.TYPE_12__*, %struct.TYPE_12__** %310, align 8
  %312 = load i32, i32* %12, align 4
  %313 = sext i32 %312 to i64
  %314 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %311, i64 %313
  %315 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %314, i32 0, i32 0
  %316 = load %struct.TYPE_10__*, %struct.TYPE_10__** %315, align 8
  %317 = icmp ne %struct.TYPE_10__* %316, null
  br i1 %317, label %318, label %333

318:                                              ; preds = %308
  %319 = load i32, i32* @In_sync, align 4
  %320 = load %struct.raid_set*, %struct.raid_set** %9, align 8
  %321 = getelementptr inbounds %struct.raid_set, %struct.raid_set* %320, i32 0, i32 1
  %322 = load %struct.TYPE_12__*, %struct.TYPE_12__** %321, align 8
  %323 = load i32, i32* %12, align 4
  %324 = sext i32 %323 to i64
  %325 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %322, i64 %324
  %326 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %325, i32 0, i32 2
  %327 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %326, i32 0, i32 0
  %328 = call i32 @test_bit(i32 %319, i32* %327)
  %329 = icmp ne i32 %328, 0
  br i1 %329, label %333, label %330

330:                                              ; preds = %318
  %331 = load i32, i32* %12, align 4
  %332 = call i32 (i8*, ...) @DMEMIT(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.11, i64 0, i64 0), i32 %331)
  br label %333

333:                                              ; preds = %330, %318, %308, %301
  br label %334

334:                                              ; preds = %333
  %335 = load i32, i32* %12, align 4
  %336 = add nsw i32 %335, 1
  store i32 %336, i32* %12, align 4
  br label %294

337:                                              ; preds = %294
  %338 = load %struct.raid_set*, %struct.raid_set** %9, align 8
  %339 = getelementptr inbounds %struct.raid_set, %struct.raid_set* %338, i32 0, i32 0
  %340 = load i32, i32* %339, align 8
  %341 = load i32, i32* @DMPF_DAEMON_SLEEP, align 4
  %342 = and i32 %340, %341
  %343 = icmp ne i32 %342, 0
  br i1 %343, label %344, label %351

344:                                              ; preds = %337
  %345 = load %struct.raid_set*, %struct.raid_set** %9, align 8
  %346 = getelementptr inbounds %struct.raid_set, %struct.raid_set* %345, i32 0, i32 2
  %347 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %346, i32 0, i32 2
  %348 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %347, i32 0, i32 2
  %349 = load i32, i32* %348, align 8
  %350 = call i32 (i8*, ...) @DMEMIT(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.12, i64 0, i64 0), i32 %349)
  br label %351

351:                                              ; preds = %344, %337
  %352 = load %struct.raid_set*, %struct.raid_set** %9, align 8
  %353 = getelementptr inbounds %struct.raid_set, %struct.raid_set* %352, i32 0, i32 0
  %354 = load i32, i32* %353, align 8
  %355 = load i32, i32* @DMPF_MIN_RECOVERY_RATE, align 4
  %356 = and i32 %354, %355
  %357 = icmp ne i32 %356, 0
  br i1 %357, label %358, label %364

358:                                              ; preds = %351
  %359 = load %struct.raid_set*, %struct.raid_set** %9, align 8
  %360 = getelementptr inbounds %struct.raid_set, %struct.raid_set* %359, i32 0, i32 2
  %361 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %360, i32 0, i32 5
  %362 = load i32, i32* %361, align 4
  %363 = call i32 (i8*, ...) @DMEMIT(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.13, i64 0, i64 0), i32 %362)
  br label %364

364:                                              ; preds = %358, %351
  %365 = load %struct.raid_set*, %struct.raid_set** %9, align 8
  %366 = getelementptr inbounds %struct.raid_set, %struct.raid_set* %365, i32 0, i32 0
  %367 = load i32, i32* %366, align 8
  %368 = load i32, i32* @DMPF_MAX_RECOVERY_RATE, align 4
  %369 = and i32 %367, %368
  %370 = icmp ne i32 %369, 0
  br i1 %370, label %371, label %377

371:                                              ; preds = %364
  %372 = load %struct.raid_set*, %struct.raid_set** %9, align 8
  %373 = getelementptr inbounds %struct.raid_set, %struct.raid_set* %372, i32 0, i32 2
  %374 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %373, i32 0, i32 4
  %375 = load i32, i32* %374, align 8
  %376 = call i32 (i8*, ...) @DMEMIT(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.14, i64 0, i64 0), i32 %375)
  br label %377

377:                                              ; preds = %371, %364
  store i32 0, i32* %12, align 4
  br label %378

378:                                              ; preds = %411, %377
  %379 = load i32, i32* %12, align 4
  %380 = load %struct.raid_set*, %struct.raid_set** %9, align 8
  %381 = getelementptr inbounds %struct.raid_set, %struct.raid_set* %380, i32 0, i32 2
  %382 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %381, i32 0, i32 0
  %383 = load i32, i32* %382, align 8
  %384 = icmp slt i32 %379, %383
  br i1 %384, label %385, label %414

385:                                              ; preds = %378
  %386 = load %struct.raid_set*, %struct.raid_set** %9, align 8
  %387 = getelementptr inbounds %struct.raid_set, %struct.raid_set* %386, i32 0, i32 1
  %388 = load %struct.TYPE_12__*, %struct.TYPE_12__** %387, align 8
  %389 = load i32, i32* %12, align 4
  %390 = sext i32 %389 to i64
  %391 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %388, i64 %390
  %392 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %391, i32 0, i32 0
  %393 = load %struct.TYPE_10__*, %struct.TYPE_10__** %392, align 8
  %394 = icmp ne %struct.TYPE_10__* %393, null
  br i1 %394, label %395, label %410

395:                                              ; preds = %385
  %396 = load i32, i32* @WriteMostly, align 4
  %397 = load %struct.raid_set*, %struct.raid_set** %9, align 8
  %398 = getelementptr inbounds %struct.raid_set, %struct.raid_set* %397, i32 0, i32 1
  %399 = load %struct.TYPE_12__*, %struct.TYPE_12__** %398, align 8
  %400 = load i32, i32* %12, align 4
  %401 = sext i32 %400 to i64
  %402 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %399, i64 %401
  %403 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %402, i32 0, i32 2
  %404 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %403, i32 0, i32 0
  %405 = call i32 @test_bit(i32 %396, i32* %404)
  %406 = icmp ne i32 %405, 0
  br i1 %406, label %407, label %410

407:                                              ; preds = %395
  %408 = load i32, i32* %12, align 4
  %409 = call i32 (i8*, ...) @DMEMIT(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.15, i64 0, i64 0), i32 %408)
  br label %410

410:                                              ; preds = %407, %395, %385
  br label %411

411:                                              ; preds = %410
  %412 = load i32, i32* %12, align 4
  %413 = add nsw i32 %412, 1
  store i32 %413, i32* %12, align 4
  br label %378

414:                                              ; preds = %378
  %415 = load %struct.raid_set*, %struct.raid_set** %9, align 8
  %416 = getelementptr inbounds %struct.raid_set, %struct.raid_set* %415, i32 0, i32 0
  %417 = load i32, i32* %416, align 8
  %418 = load i32, i32* @DMPF_MAX_WRITE_BEHIND, align 4
  %419 = and i32 %417, %418
  %420 = icmp ne i32 %419, 0
  br i1 %420, label %421, label %428

421:                                              ; preds = %414
  %422 = load %struct.raid_set*, %struct.raid_set** %9, align 8
  %423 = getelementptr inbounds %struct.raid_set, %struct.raid_set* %422, i32 0, i32 2
  %424 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %423, i32 0, i32 2
  %425 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %424, i32 0, i32 1
  %426 = load i32, i32* %425, align 4
  %427 = call i32 (i8*, ...) @DMEMIT(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i64 0, i64 0), i32 %426)
  br label %428

428:                                              ; preds = %421, %414
  %429 = load %struct.raid_set*, %struct.raid_set** %9, align 8
  %430 = getelementptr inbounds %struct.raid_set, %struct.raid_set* %429, i32 0, i32 0
  %431 = load i32, i32* %430, align 8
  %432 = load i32, i32* @DMPF_STRIPE_CACHE, align 4
  %433 = and i32 %431, %432
  %434 = icmp ne i32 %433, 0
  br i1 %434, label %435, label %451

435:                                              ; preds = %428
  %436 = load %struct.raid_set*, %struct.raid_set** %9, align 8
  %437 = getelementptr inbounds %struct.raid_set, %struct.raid_set* %436, i32 0, i32 2
  %438 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %437, i32 0, i32 3
  %439 = load %struct.r5conf*, %struct.r5conf** %438, align 8
  store %struct.r5conf* %439, %struct.r5conf** %15, align 8
  %440 = load %struct.r5conf*, %struct.r5conf** %15, align 8
  %441 = icmp ne %struct.r5conf* %440, null
  br i1 %441, label %442, label %447

442:                                              ; preds = %435
  %443 = load %struct.r5conf*, %struct.r5conf** %15, align 8
  %444 = getelementptr inbounds %struct.r5conf, %struct.r5conf* %443, i32 0, i32 0
  %445 = load i32, i32* %444, align 4
  %446 = mul nsw i32 %445, 2
  br label %448

447:                                              ; preds = %435
  br label %448

448:                                              ; preds = %447, %442
  %449 = phi i32 [ %446, %442 ], [ 0, %447 ]
  %450 = call i32 (i8*, ...) @DMEMIT(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.17, i64 0, i64 0), i32 %449)
  br label %451

451:                                              ; preds = %448, %428
  %452 = load %struct.raid_set*, %struct.raid_set** %9, align 8
  %453 = getelementptr inbounds %struct.raid_set, %struct.raid_set* %452, i32 0, i32 0
  %454 = load i32, i32* %453, align 8
  %455 = load i32, i32* @DMPF_REGION_SIZE, align 4
  %456 = and i32 %454, %455
  %457 = icmp ne i32 %456, 0
  br i1 %457, label %458, label %466

458:                                              ; preds = %451
  %459 = load %struct.raid_set*, %struct.raid_set** %9, align 8
  %460 = getelementptr inbounds %struct.raid_set, %struct.raid_set* %459, i32 0, i32 2
  %461 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %460, i32 0, i32 2
  %462 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %461, i32 0, i32 0
  %463 = load i32, i32* %462, align 8
  %464 = ashr i32 %463, 9
  %465 = call i32 (i8*, ...) @DMEMIT(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.18, i64 0, i64 0), i32 %464)
  br label %466

466:                                              ; preds = %458, %451
  %467 = load %struct.raid_set*, %struct.raid_set** %9, align 8
  %468 = getelementptr inbounds %struct.raid_set, %struct.raid_set* %467, i32 0, i32 0
  %469 = load i32, i32* %468, align 8
  %470 = load i32, i32* @DMPF_RAID10_COPIES, align 4
  %471 = and i32 %469, %470
  %472 = icmp ne i32 %471, 0
  br i1 %472, label %473, label %480

473:                                              ; preds = %466
  %474 = load %struct.raid_set*, %struct.raid_set** %9, align 8
  %475 = getelementptr inbounds %struct.raid_set, %struct.raid_set* %474, i32 0, i32 2
  %476 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %475, i32 0, i32 1
  %477 = load i32, i32* %476, align 4
  %478 = call i32 @raid10_md_layout_to_copies(i32 %477)
  %479 = call i32 (i8*, ...) @DMEMIT(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.19, i64 0, i64 0), i32 %478)
  br label %480

480:                                              ; preds = %473, %466
  %481 = load %struct.raid_set*, %struct.raid_set** %9, align 8
  %482 = getelementptr inbounds %struct.raid_set, %struct.raid_set* %481, i32 0, i32 0
  %483 = load i32, i32* %482, align 8
  %484 = load i32, i32* @DMPF_RAID10_FORMAT, align 4
  %485 = and i32 %483, %484
  %486 = icmp ne i32 %485, 0
  br i1 %486, label %487, label %489

487:                                              ; preds = %480
  %488 = call i32 (i8*, ...) @DMEMIT(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.20, i64 0, i64 0))
  br label %489

489:                                              ; preds = %487, %480
  %490 = load %struct.raid_set*, %struct.raid_set** %9, align 8
  %491 = getelementptr inbounds %struct.raid_set, %struct.raid_set* %490, i32 0, i32 2
  %492 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %491, i32 0, i32 0
  %493 = load i32, i32* %492, align 8
  %494 = call i32 (i8*, ...) @DMEMIT(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.21, i64 0, i64 0), i32 %493)
  store i32 0, i32* %12, align 4
  br label %495

495:                                              ; preds = %551, %489
  %496 = load i32, i32* %12, align 4
  %497 = load %struct.raid_set*, %struct.raid_set** %9, align 8
  %498 = getelementptr inbounds %struct.raid_set, %struct.raid_set* %497, i32 0, i32 2
  %499 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %498, i32 0, i32 0
  %500 = load i32, i32* %499, align 8
  %501 = icmp slt i32 %496, %500
  br i1 %501, label %502, label %554

502:                                              ; preds = %495
  %503 = load %struct.raid_set*, %struct.raid_set** %9, align 8
  %504 = getelementptr inbounds %struct.raid_set, %struct.raid_set* %503, i32 0, i32 1
  %505 = load %struct.TYPE_12__*, %struct.TYPE_12__** %504, align 8
  %506 = load i32, i32* %12, align 4
  %507 = sext i32 %506 to i64
  %508 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %505, i64 %507
  %509 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %508, i32 0, i32 1
  %510 = load %struct.TYPE_9__*, %struct.TYPE_9__** %509, align 8
  %511 = icmp ne %struct.TYPE_9__* %510, null
  br i1 %511, label %512, label %524

512:                                              ; preds = %502
  %513 = load %struct.raid_set*, %struct.raid_set** %9, align 8
  %514 = getelementptr inbounds %struct.raid_set, %struct.raid_set* %513, i32 0, i32 1
  %515 = load %struct.TYPE_12__*, %struct.TYPE_12__** %514, align 8
  %516 = load i32, i32* %12, align 4
  %517 = sext i32 %516 to i64
  %518 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %515, i64 %517
  %519 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %518, i32 0, i32 1
  %520 = load %struct.TYPE_9__*, %struct.TYPE_9__** %519, align 8
  %521 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %520, i32 0, i32 0
  %522 = load i32, i32* %521, align 4
  %523 = call i32 (i8*, ...) @DMEMIT(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), i32 %522)
  br label %526

524:                                              ; preds = %502
  %525 = call i32 (i8*, ...) @DMEMIT(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.22, i64 0, i64 0))
  br label %526

526:                                              ; preds = %524, %512
  %527 = load %struct.raid_set*, %struct.raid_set** %9, align 8
  %528 = getelementptr inbounds %struct.raid_set, %struct.raid_set* %527, i32 0, i32 1
  %529 = load %struct.TYPE_12__*, %struct.TYPE_12__** %528, align 8
  %530 = load i32, i32* %12, align 4
  %531 = sext i32 %530 to i64
  %532 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %529, i64 %531
  %533 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %532, i32 0, i32 0
  %534 = load %struct.TYPE_10__*, %struct.TYPE_10__** %533, align 8
  %535 = icmp ne %struct.TYPE_10__* %534, null
  br i1 %535, label %536, label %548

536:                                              ; preds = %526
  %537 = load %struct.raid_set*, %struct.raid_set** %9, align 8
  %538 = getelementptr inbounds %struct.raid_set, %struct.raid_set* %537, i32 0, i32 1
  %539 = load %struct.TYPE_12__*, %struct.TYPE_12__** %538, align 8
  %540 = load i32, i32* %12, align 4
  %541 = sext i32 %540 to i64
  %542 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %539, i64 %541
  %543 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %542, i32 0, i32 0
  %544 = load %struct.TYPE_10__*, %struct.TYPE_10__** %543, align 8
  %545 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %544, i32 0, i32 0
  %546 = load i32, i32* %545, align 4
  %547 = call i32 (i8*, ...) @DMEMIT(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), i32 %546)
  br label %550

548:                                              ; preds = %526
  %549 = call i32 (i8*, ...) @DMEMIT(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.22, i64 0, i64 0))
  br label %550

550:                                              ; preds = %548, %536
  br label %551

551:                                              ; preds = %550
  %552 = load i32, i32* %12, align 4
  %553 = add nsw i32 %552, 1
  store i32 %553, i32* %12, align 4
  br label %495

554:                                              ; preds = %495
  br label %555

555:                                              ; preds = %554, %4, %163
  ret i32 0
}

declare dso_local i32 @DMEMIT(i8*, ...) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @decipher_sync_action(%struct.TYPE_14__*) #1

declare dso_local i32 @strcmp(i32, i8*) #1

declare dso_local i64 @atomic64_read(i32*) #1

declare dso_local i32 @hweight32(i32) #1

declare dso_local i32 @raid10_md_layout_to_copies(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
