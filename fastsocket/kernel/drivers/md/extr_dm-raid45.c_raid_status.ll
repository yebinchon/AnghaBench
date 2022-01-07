; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-raid45.c_raid_status.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-raid45.c_raid_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dm_target = type { %struct.raid_set* }
%struct.raid_set = type { %struct.TYPE_16__*, %struct.TYPE_13__, %struct.TYPE_12__, %struct.TYPE_9__ }
%struct.TYPE_16__ = type { i64, %struct.TYPE_15__* }
%struct.TYPE_15__ = type { %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_13__ = type { i32, i32, i32, i32, i32, i64, %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i64 }
%struct.TYPE_12__ = type { i32, i32, i32, i32, %struct.dm_dirty_log*, i64 }
%struct.dm_dirty_log = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32 (%struct.dm_dirty_log*, i32, i8*, i32)*, i64 (%struct.dm_dirty_log*)* }
%struct.TYPE_9__ = type { i32 }

@BDEVNAME_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"%u \00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%s \00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"2 \00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"%c\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"p\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"i\00", align 1
@.str.6 = private unnamed_addr constant [12 x i8] c" %llu/%llu \00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"%s %u \00", align 1
@.str.8 = private unnamed_addr constant [4 x i8] c"%d \00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"sync\00", align 1
@.str.10 = private unnamed_addr constant [7 x i8] c"nosync\00", align 1
@.str.11 = private unnamed_addr constant [7 x i8] c"%u %d \00", align 1
@.str.12 = private unnamed_addr constant [9 x i8] c"%s %llu \00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dm_target*, i32, i8*, i32)* @raid_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @raid_status(%struct.dm_target* %0, i32 %1, i8* %2, i32 %3) #0 {
  %5 = alloca %struct.dm_target*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.raid_set*, align 8
  %14 = alloca %struct.dm_dirty_log*, align 8
  %15 = alloca [7 x i32], align 16
  store %struct.dm_target* %0, %struct.dm_target** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  store i32 %3, i32* %8, align 4
  store i32 0, i32* %10, align 4
  %16 = load i32, i32* @BDEVNAME_SIZE, align 4
  %17 = zext i32 %16 to i64
  %18 = call i8* @llvm.stacksave()
  store i8* %18, i8** %11, align 8
  %19 = alloca i8, i64 %17, align 16
  store i64 %17, i64* %12, align 8
  %20 = load %struct.dm_target*, %struct.dm_target** %5, align 8
  %21 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %20, i32 0, i32 0
  %22 = load %struct.raid_set*, %struct.raid_set** %21, align 8
  store %struct.raid_set* %22, %struct.raid_set** %13, align 8
  %23 = load %struct.raid_set*, %struct.raid_set** %13, align 8
  %24 = getelementptr inbounds %struct.raid_set, %struct.raid_set* %23, i32 0, i32 2
  %25 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %24, i32 0, i32 4
  %26 = load %struct.dm_dirty_log*, %struct.dm_dirty_log** %25, align 8
  store %struct.dm_dirty_log* %26, %struct.dm_dirty_log** %14, align 8
  %27 = getelementptr inbounds [7 x i32], [7 x i32]* %15, i64 0, i64 0
  %28 = load %struct.raid_set*, %struct.raid_set** %13, align 8
  %29 = getelementptr inbounds %struct.raid_set, %struct.raid_set* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  store i32 %31, i32* %27, align 4
  %32 = getelementptr inbounds i32, i32* %27, i64 1
  %33 = load %struct.raid_set*, %struct.raid_set** %13, align 8
  %34 = getelementptr inbounds %struct.raid_set, %struct.raid_set* %33, i32 0, i32 3
  %35 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  store i32 %36, i32* %32, align 4
  %37 = getelementptr inbounds i32, i32* %32, i64 1
  %38 = load %struct.raid_set*, %struct.raid_set** %13, align 8
  %39 = getelementptr inbounds %struct.raid_set, %struct.raid_set* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  store i32 %41, i32* %37, align 4
  %42 = getelementptr inbounds i32, i32* %37, i64 1
  %43 = load %struct.raid_set*, %struct.raid_set** %13, align 8
  %44 = getelementptr inbounds %struct.raid_set, %struct.raid_set* %43, i32 0, i32 2
  %45 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  store i32 %46, i32* %42, align 4
  %47 = getelementptr inbounds i32, i32* %42, i64 1
  %48 = load %struct.raid_set*, %struct.raid_set** %13, align 8
  %49 = getelementptr inbounds %struct.raid_set, %struct.raid_set* %48, i32 0, i32 2
  %50 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  store i32 %51, i32* %47, align 4
  %52 = getelementptr inbounds i32, i32* %47, i64 1
  store i32 -2, i32* %52, align 4
  %53 = getelementptr inbounds i32, i32* %52, i64 1
  %54 = load %struct.raid_set*, %struct.raid_set** %13, align 8
  %55 = getelementptr inbounds %struct.raid_set, %struct.raid_set* %54, i32 0, i32 2
  %56 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 8
  store i32 %57, i32* %53, align 4
  %58 = load i32, i32* %6, align 4
  switch i32 %58, label %278 [
    i32 129, label %59
    i32 128, label %173
  ]

59:                                               ; preds = %4
  %60 = load %struct.raid_set*, %struct.raid_set** %13, align 8
  %61 = call i32 @RSDevelStats(%struct.raid_set* %60)
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %68

63:                                               ; preds = %59
  %64 = load %struct.dm_target*, %struct.dm_target** %5, align 8
  %65 = load i8*, i8** %7, align 8
  %66 = load i32, i32* %8, align 4
  %67 = call i32 @raid_devel_stats(%struct.dm_target* %64, i8* %65, i32* %10, i32 %66)
  br label %68

68:                                               ; preds = %63, %59
  %69 = load %struct.raid_set*, %struct.raid_set** %13, align 8
  %70 = getelementptr inbounds %struct.raid_set, %struct.raid_set* %69, i32 0, i32 1
  %71 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 8
  %73 = call i32 (i8*, ...) @DMEMIT(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %72)
  store i32 0, i32* %9, align 4
  br label %74

74:                                               ; preds = %96, %68
  %75 = load i32, i32* %9, align 4
  %76 = load %struct.raid_set*, %struct.raid_set** %13, align 8
  %77 = getelementptr inbounds %struct.raid_set, %struct.raid_set* %76, i32 0, i32 1
  %78 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %77, i32 0, i32 2
  %79 = load i32, i32* %78, align 8
  %80 = icmp ult i32 %75, %79
  br i1 %80, label %81, label %99

81:                                               ; preds = %74
  %82 = load %struct.raid_set*, %struct.raid_set** %13, align 8
  %83 = getelementptr inbounds %struct.raid_set, %struct.raid_set* %82, i32 0, i32 0
  %84 = load %struct.TYPE_16__*, %struct.TYPE_16__** %83, align 8
  %85 = load i32, i32* %9, align 4
  %86 = zext i32 %85 to i64
  %87 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %84, i64 %86
  %88 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %87, i32 0, i32 1
  %89 = load %struct.TYPE_15__*, %struct.TYPE_15__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %89, i32 0, i32 0
  %91 = load %struct.TYPE_14__*, %struct.TYPE_14__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = call i64 @format_dev_t(i8* %19, i32 %93)
  %95 = call i32 (i8*, ...) @DMEMIT(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i64 %94)
  br label %96

96:                                               ; preds = %81
  %97 = load i32, i32* %9, align 4
  %98 = add i32 %97, 1
  store i32 %98, i32* %9, align 4
  br label %74

99:                                               ; preds = %74
  %100 = call i32 (i8*, ...) @DMEMIT(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  store i32 0, i32* %9, align 4
  br label %101

101:                                              ; preds = %140, %99
  %102 = load i32, i32* %9, align 4
  %103 = load %struct.raid_set*, %struct.raid_set** %13, align 8
  %104 = getelementptr inbounds %struct.raid_set, %struct.raid_set* %103, i32 0, i32 1
  %105 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %104, i32 0, i32 2
  %106 = load i32, i32* %105, align 8
  %107 = icmp ult i32 %102, %106
  br i1 %107, label %108, label %143

108:                                              ; preds = %101
  %109 = load %struct.raid_set*, %struct.raid_set** %13, align 8
  %110 = getelementptr inbounds %struct.raid_set, %struct.raid_set* %109, i32 0, i32 0
  %111 = load %struct.TYPE_16__*, %struct.TYPE_16__** %110, align 8
  %112 = load i32, i32* %9, align 4
  %113 = zext i32 %112 to i64
  %114 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %111, i64 %113
  %115 = ptrtoint %struct.TYPE_16__* %114 to i32
  %116 = call i32 @DevFailed(i32 %115)
  %117 = icmp ne i32 %116, 0
  %118 = xor i1 %117, true
  %119 = zext i1 %118 to i64
  %120 = select i1 %118, i32 65, i32 68
  %121 = call i32 (i8*, ...) @DMEMIT(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i32 %120)
  %122 = load i32, i32* %9, align 4
  %123 = load %struct.raid_set*, %struct.raid_set** %13, align 8
  %124 = getelementptr inbounds %struct.raid_set, %struct.raid_set* %123, i32 0, i32 1
  %125 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %124, i32 0, i32 3
  %126 = load i32, i32* %125, align 4
  %127 = icmp eq i32 %122, %126
  br i1 %127, label %128, label %130

128:                                              ; preds = %108
  %129 = call i32 (i8*, ...) @DMEMIT(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  br label %130

130:                                              ; preds = %128, %108
  %131 = load i32, i32* %9, align 4
  %132 = load %struct.raid_set*, %struct.raid_set** %13, align 8
  %133 = getelementptr inbounds %struct.raid_set, %struct.raid_set* %132, i32 0, i32 1
  %134 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %133, i32 0, i32 4
  %135 = load i32, i32* %134, align 8
  %136 = icmp eq i32 %131, %135
  br i1 %136, label %137, label %139

137:                                              ; preds = %130
  %138 = call i32 (i8*, ...) @DMEMIT(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0))
  br label %139

139:                                              ; preds = %137, %130
  br label %140

140:                                              ; preds = %139
  %141 = load i32, i32* %9, align 4
  %142 = add i32 %141, 1
  store i32 %142, i32* %9, align 4
  br label %101

143:                                              ; preds = %101
  %144 = load %struct.dm_dirty_log*, %struct.dm_dirty_log** %14, align 8
  %145 = getelementptr inbounds %struct.dm_dirty_log, %struct.dm_dirty_log* %144, i32 0, i32 0
  %146 = load %struct.TYPE_10__*, %struct.TYPE_10__** %145, align 8
  %147 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %146, i32 0, i32 1
  %148 = load i64 (%struct.dm_dirty_log*)*, i64 (%struct.dm_dirty_log*)** %147, align 8
  %149 = load %struct.dm_dirty_log*, %struct.dm_dirty_log** %14, align 8
  %150 = call i64 %148(%struct.dm_dirty_log* %149)
  %151 = load %struct.raid_set*, %struct.raid_set** %13, align 8
  %152 = getelementptr inbounds %struct.raid_set, %struct.raid_set* %151, i32 0, i32 2
  %153 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %152, i32 0, i32 5
  %154 = load i64, i64* %153, align 8
  %155 = call i32 (i8*, ...) @DMEMIT(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i64 0, i64 0), i64 %150, i64 %154)
  %156 = load %struct.dm_dirty_log*, %struct.dm_dirty_log** %14, align 8
  %157 = getelementptr inbounds %struct.dm_dirty_log, %struct.dm_dirty_log* %156, i32 0, i32 0
  %158 = load %struct.TYPE_10__*, %struct.TYPE_10__** %157, align 8
  %159 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %158, i32 0, i32 0
  %160 = load i32 (%struct.dm_dirty_log*, i32, i8*, i32)*, i32 (%struct.dm_dirty_log*, i32, i8*, i32)** %159, align 8
  %161 = load %struct.dm_dirty_log*, %struct.dm_dirty_log** %14, align 8
  %162 = load i32, i32* %6, align 4
  %163 = load i8*, i8** %7, align 8
  %164 = load i32, i32* %10, align 4
  %165 = zext i32 %164 to i64
  %166 = getelementptr inbounds i8, i8* %163, i64 %165
  %167 = load i32, i32* %8, align 4
  %168 = load i32, i32* %10, align 4
  %169 = sub i32 %167, %168
  %170 = call i32 %160(%struct.dm_dirty_log* %161, i32 %162, i8* %166, i32 %169)
  %171 = load i32, i32* %10, align 4
  %172 = add i32 %171, %170
  store i32 %172, i32* %10, align 4
  br label %278

173:                                              ; preds = %4
  %174 = load %struct.raid_set*, %struct.raid_set** %13, align 8
  %175 = getelementptr inbounds %struct.raid_set, %struct.raid_set* %174, i32 0, i32 2
  %176 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %175, i32 0, i32 4
  %177 = load %struct.dm_dirty_log*, %struct.dm_dirty_log** %176, align 8
  %178 = getelementptr inbounds %struct.dm_dirty_log, %struct.dm_dirty_log* %177, i32 0, i32 0
  %179 = load %struct.TYPE_10__*, %struct.TYPE_10__** %178, align 8
  %180 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %179, i32 0, i32 0
  %181 = load i32 (%struct.dm_dirty_log*, i32, i8*, i32)*, i32 (%struct.dm_dirty_log*, i32, i8*, i32)** %180, align 8
  %182 = load %struct.raid_set*, %struct.raid_set** %13, align 8
  %183 = getelementptr inbounds %struct.raid_set, %struct.raid_set* %182, i32 0, i32 2
  %184 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %183, i32 0, i32 4
  %185 = load %struct.dm_dirty_log*, %struct.dm_dirty_log** %184, align 8
  %186 = load i32, i32* %6, align 4
  %187 = load i8*, i8** %7, align 8
  %188 = load i32, i32* %8, align 4
  %189 = call i32 %181(%struct.dm_dirty_log* %185, i32 %186, i8* %187, i32 %188)
  store i32 %189, i32* %10, align 4
  %190 = load %struct.raid_set*, %struct.raid_set** %13, align 8
  %191 = getelementptr inbounds %struct.raid_set, %struct.raid_set* %190, i32 0, i32 1
  %192 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %191, i32 0, i32 6
  %193 = load %struct.TYPE_11__*, %struct.TYPE_11__** %192, align 8
  %194 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %193, i32 0, i32 0
  %195 = load i64, i64* %194, align 8
  %196 = load %struct.raid_set*, %struct.raid_set** %13, align 8
  %197 = getelementptr inbounds %struct.raid_set, %struct.raid_set* %196, i32 0, i32 1
  %198 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %197, i32 0, i32 5
  %199 = load i64, i64* %198, align 8
  %200 = call i32 (i8*, ...) @DMEMIT(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0), i64 %195, i64 %199)
  store i32 0, i32* %9, align 4
  br label %201

201:                                              ; preds = %231, %173
  %202 = load i32, i32* %9, align 4
  %203 = zext i32 %202 to i64
  %204 = load %struct.raid_set*, %struct.raid_set** %13, align 8
  %205 = getelementptr inbounds %struct.raid_set, %struct.raid_set* %204, i32 0, i32 1
  %206 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %205, i32 0, i32 5
  %207 = load i64, i64* %206, align 8
  %208 = icmp ult i64 %203, %207
  br i1 %208, label %209, label %234

209:                                              ; preds = %201
  %210 = load i32, i32* %9, align 4
  %211 = zext i32 %210 to i64
  %212 = getelementptr inbounds [7 x i32], [7 x i32]* %15, i64 0, i64 %211
  %213 = load i32, i32* %212, align 4
  %214 = icmp sgt i32 %213, -2
  br i1 %214, label %215, label %221

215:                                              ; preds = %209
  %216 = load i32, i32* %9, align 4
  %217 = zext i32 %216 to i64
  %218 = getelementptr inbounds [7 x i32], [7 x i32]* %15, i64 0, i64 %217
  %219 = load i32, i32* %218, align 4
  %220 = call i32 (i8*, ...) @DMEMIT(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0), i32 %219)
  br label %230

221:                                              ; preds = %209
  %222 = load %struct.raid_set*, %struct.raid_set** %13, align 8
  %223 = getelementptr inbounds %struct.raid_set, %struct.raid_set* %222, i32 0, i32 2
  %224 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %223, i32 0, i32 3
  %225 = load i32, i32* %224, align 4
  %226 = icmp ne i32 %225, 0
  %227 = zext i1 %226 to i64
  %228 = select i1 %226, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i64 0, i64 0)
  %229 = call i32 (i8*, ...) @DMEMIT(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* %228)
  br label %230

230:                                              ; preds = %221, %215
  br label %231

231:                                              ; preds = %230
  %232 = load i32, i32* %9, align 4
  %233 = add i32 %232, 1
  store i32 %233, i32* %9, align 4
  br label %201

234:                                              ; preds = %201
  %235 = load %struct.raid_set*, %struct.raid_set** %13, align 8
  %236 = getelementptr inbounds %struct.raid_set, %struct.raid_set* %235, i32 0, i32 1
  %237 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %236, i32 0, i32 2
  %238 = load i32, i32* %237, align 8
  %239 = load %struct.raid_set*, %struct.raid_set** %13, align 8
  %240 = getelementptr inbounds %struct.raid_set, %struct.raid_set* %239, i32 0, i32 1
  %241 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %240, i32 0, i32 4
  %242 = load i32, i32* %241, align 8
  %243 = call i32 (i8*, ...) @DMEMIT(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.11, i64 0, i64 0), i32 %238, i32 %242)
  store i32 0, i32* %9, align 4
  br label %244

244:                                              ; preds = %274, %234
  %245 = load i32, i32* %9, align 4
  %246 = load %struct.raid_set*, %struct.raid_set** %13, align 8
  %247 = getelementptr inbounds %struct.raid_set, %struct.raid_set* %246, i32 0, i32 1
  %248 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %247, i32 0, i32 2
  %249 = load i32, i32* %248, align 8
  %250 = icmp ult i32 %245, %249
  br i1 %250, label %251, label %277

251:                                              ; preds = %244
  %252 = load %struct.raid_set*, %struct.raid_set** %13, align 8
  %253 = getelementptr inbounds %struct.raid_set, %struct.raid_set* %252, i32 0, i32 0
  %254 = load %struct.TYPE_16__*, %struct.TYPE_16__** %253, align 8
  %255 = load i32, i32* %9, align 4
  %256 = zext i32 %255 to i64
  %257 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %254, i64 %256
  %258 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %257, i32 0, i32 1
  %259 = load %struct.TYPE_15__*, %struct.TYPE_15__** %258, align 8
  %260 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %259, i32 0, i32 0
  %261 = load %struct.TYPE_14__*, %struct.TYPE_14__** %260, align 8
  %262 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %261, i32 0, i32 0
  %263 = load i32, i32* %262, align 4
  %264 = call i64 @format_dev_t(i8* %19, i32 %263)
  %265 = load %struct.raid_set*, %struct.raid_set** %13, align 8
  %266 = getelementptr inbounds %struct.raid_set, %struct.raid_set* %265, i32 0, i32 0
  %267 = load %struct.TYPE_16__*, %struct.TYPE_16__** %266, align 8
  %268 = load i32, i32* %9, align 4
  %269 = zext i32 %268 to i64
  %270 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %267, i64 %269
  %271 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %270, i32 0, i32 0
  %272 = load i64, i64* %271, align 8
  %273 = call i32 (i8*, ...) @DMEMIT(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.12, i64 0, i64 0), i64 %264, i64 %272)
  br label %274

274:                                              ; preds = %251
  %275 = load i32, i32* %9, align 4
  %276 = add i32 %275, 1
  store i32 %276, i32* %9, align 4
  br label %244

277:                                              ; preds = %244
  br label %278

278:                                              ; preds = %277, %4, %143
  %279 = load i8*, i8** %11, align 8
  call void @llvm.stackrestore(i8* %279)
  ret i32 0
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @RSDevelStats(%struct.raid_set*) #2

declare dso_local i32 @raid_devel_stats(%struct.dm_target*, i8*, i32*, i32) #2

declare dso_local i32 @DMEMIT(i8*, ...) #2

declare dso_local i64 @format_dev_t(i8*, i32) #2

declare dso_local i32 @DevFailed(i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
