; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-raid.c_parse_raid_params.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-raid.c_parse_raid_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.raid_set = type { %struct.TYPE_11__, %struct.TYPE_12__*, %struct.TYPE_8__*, i32, %struct.TYPE_10__* }
%struct.TYPE_11__ = type { i64, i64, i32, i32, i32, i32, i32, i64, i32, i32, %struct.TYPE_7__, i8* }
%struct.TYPE_7__ = type { i64, i64 }
%struct.TYPE_12__ = type { i32, i8* }
%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32, i8* }

@.str = private unnamed_addr constant [5 x i8] c"near\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"Bad chunk size\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [41 x i8] c"Ignoring chunk size parameter for RAID 1\00", align 1
@.str.3 = private unnamed_addr constant [32 x i8] c"Chunk size must be a power of 2\00", align 1
@.str.4 = private unnamed_addr constant [30 x i8] c"Chunk size value is too small\00", align 1
@In_sync = common dso_local global i32 0, align 4
@MaxSector = common dso_local global i8* null, align 8
@.str.5 = private unnamed_addr constant [7 x i8] c"nosync\00", align 1
@DMPF_NOSYNC = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [5 x i8] c"sync\00", align 1
@DMPF_SYNC = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [38 x i8] c"Wrong number of raid parameters given\00", align 1
@.str.8 = private unnamed_addr constant [14 x i8] c"raid10_format\00", align 1
@.str.9 = private unnamed_addr constant [59 x i8] c"'raid10_format' is an invalid parameter for this RAID type\00", align 1
@.str.10 = private unnamed_addr constant [36 x i8] c"Invalid 'raid10_format' value given\00", align 1
@DMPF_RAID10_FORMAT = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [44 x i8] c"Bad numerical argument given in raid params\00", align 1
@.str.12 = private unnamed_addr constant [8 x i8] c"rebuild\00", align 1
@.str.13 = private unnamed_addr constant [28 x i8] c"Invalid rebuild index given\00", align 1
@DMPF_REBUILD = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [13 x i8] c"write_mostly\00", align 1
@.str.15 = private unnamed_addr constant [44 x i8] c"write_mostly option is only valid for RAID1\00", align 1
@.str.16 = private unnamed_addr constant [39 x i8] c"Invalid write_mostly drive index given\00", align 1
@WriteMostly = common dso_local global i32 0, align 4
@.str.17 = private unnamed_addr constant [17 x i8] c"max_write_behind\00", align 1
@.str.18 = private unnamed_addr constant [48 x i8] c"max_write_behind option is only valid for RAID1\00", align 1
@DMPF_MAX_WRITE_BEHIND = common dso_local global i32 0, align 4
@COUNTER_MAX = common dso_local global i64 0, align 8
@.str.19 = private unnamed_addr constant [36 x i8] c"Max write-behind limit out of range\00", align 1
@.str.20 = private unnamed_addr constant [13 x i8] c"daemon_sleep\00", align 1
@DMPF_DAEMON_SLEEP = common dso_local global i32 0, align 4
@MAX_SCHEDULE_TIMEOUT = common dso_local global i64 0, align 8
@.str.21 = private unnamed_addr constant [33 x i8] c"daemon sleep period out of range\00", align 1
@.str.22 = private unnamed_addr constant [13 x i8] c"stripe_cache\00", align 1
@DMPF_STRIPE_CACHE = common dso_local global i32 0, align 4
@.str.23 = private unnamed_addr constant [37 x i8] c"Inappropriate argument: stripe_cache\00", align 1
@.str.24 = private unnamed_addr constant [22 x i8] c"Bad stripe_cache size\00", align 1
@.str.25 = private unnamed_addr constant [18 x i8] c"min_recovery_rate\00", align 1
@DMPF_MIN_RECOVERY_RATE = common dso_local global i32 0, align 4
@INT_MAX = common dso_local global i64 0, align 8
@.str.26 = private unnamed_addr constant [31 x i8] c"min_recovery_rate out of range\00", align 1
@.str.27 = private unnamed_addr constant [18 x i8] c"max_recovery_rate\00", align 1
@DMPF_MAX_RECOVERY_RATE = common dso_local global i32 0, align 4
@.str.28 = private unnamed_addr constant [31 x i8] c"max_recovery_rate out of range\00", align 1
@.str.29 = private unnamed_addr constant [12 x i8] c"region_size\00", align 1
@DMPF_REGION_SIZE = common dso_local global i32 0, align 4
@.str.30 = private unnamed_addr constant [14 x i8] c"raid10_copies\00", align 1
@.str.31 = private unnamed_addr constant [30 x i8] c"Bad value for 'raid10_copies'\00", align 1
@DMPF_RAID10_COPIES = common dso_local global i32 0, align 4
@.str.32 = private unnamed_addr constant [35 x i8] c"Unable to parse RAID parameter: %s\00", align 1
@.str.33 = private unnamed_addr constant [32 x i8] c"Unable to parse RAID parameters\00", align 1
@.str.34 = private unnamed_addr constant [44 x i8] c"Not enough devices to satisfy specification\00", align 1
@.str.35 = private unnamed_addr constant [54 x i8] c"Target length not divisible by number of data devices\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.raid_set*, i8**, i32)* @parse_raid_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_raid_params(%struct.raid_set* %0, i8** %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.raid_set*, align 8
  %6 = alloca i8**, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  store %struct.raid_set* %0, %struct.raid_set** %5, align 8
  store i8** %1, i8*** %6, align 8
  store i32 %2, i32* %7, align 4
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8** %8, align 8
  store i32 2, i32* %9, align 4
  store i64 0, i64* %12, align 8
  %16 = load %struct.raid_set*, %struct.raid_set** %5, align 8
  %17 = getelementptr inbounds %struct.raid_set, %struct.raid_set* %16, i32 0, i32 1
  %18 = load %struct.TYPE_12__*, %struct.TYPE_12__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  store i32 %20, i32* %13, align 4
  %21 = load i8**, i8*** %6, align 8
  %22 = getelementptr inbounds i8*, i8** %21, i64 0
  %23 = load i8*, i8** %22, align 8
  %24 = call i64 @kstrtoul(i8* %23, i32 10, i64* %11)
  %25 = icmp slt i64 %24, 0
  br i1 %25, label %26, label %33

26:                                               ; preds = %3
  %27 = load %struct.raid_set*, %struct.raid_set** %5, align 8
  %28 = getelementptr inbounds %struct.raid_set, %struct.raid_set* %27, i32 0, i32 1
  %29 = load %struct.TYPE_12__*, %struct.TYPE_12__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %29, i32 0, i32 1
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i8** %30, align 8
  %31 = load i32, i32* @EINVAL, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %4, align 4
  br label %668

33:                                               ; preds = %3
  %34 = load %struct.raid_set*, %struct.raid_set** %5, align 8
  %35 = getelementptr inbounds %struct.raid_set, %struct.raid_set* %34, i32 0, i32 2
  %36 = load %struct.TYPE_8__*, %struct.TYPE_8__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = icmp eq i32 %38, 1
  br i1 %39, label %40, label %46

40:                                               ; preds = %33
  %41 = load i64, i64* %11, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %40
  %44 = call i32 (i8*, ...) @DMERR(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0))
  br label %45

45:                                               ; preds = %43, %40
  store i64 0, i64* %11, align 8
  br label %69

46:                                               ; preds = %33
  %47 = load i64, i64* %11, align 8
  %48 = call i32 @is_power_of_2(i64 %47)
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %57, label %50

50:                                               ; preds = %46
  %51 = load %struct.raid_set*, %struct.raid_set** %5, align 8
  %52 = getelementptr inbounds %struct.raid_set, %struct.raid_set* %51, i32 0, i32 1
  %53 = load %struct.TYPE_12__*, %struct.TYPE_12__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %53, i32 0, i32 1
  store i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0), i8** %54, align 8
  %55 = load i32, i32* @EINVAL, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %4, align 4
  br label %668

57:                                               ; preds = %46
  %58 = load i64, i64* %11, align 8
  %59 = icmp ult i64 %58, 8
  br i1 %59, label %60, label %67

60:                                               ; preds = %57
  %61 = load %struct.raid_set*, %struct.raid_set** %5, align 8
  %62 = getelementptr inbounds %struct.raid_set, %struct.raid_set* %61, i32 0, i32 1
  %63 = load %struct.TYPE_12__*, %struct.TYPE_12__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %63, i32 0, i32 1
  store i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i64 0, i64 0), i8** %64, align 8
  %65 = load i32, i32* @EINVAL, align 4
  %66 = sub nsw i32 0, %65
  store i32 %66, i32* %4, align 4
  br label %668

67:                                               ; preds = %57
  br label %68

68:                                               ; preds = %67
  br label %69

69:                                               ; preds = %68, %45
  br label %70

70:                                               ; preds = %69
  %71 = load i64, i64* %11, align 8
  %72 = load %struct.raid_set*, %struct.raid_set** %5, align 8
  %73 = getelementptr inbounds %struct.raid_set, %struct.raid_set* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %73, i32 0, i32 1
  store i64 %71, i64* %74, align 8
  %75 = load %struct.raid_set*, %struct.raid_set** %5, align 8
  %76 = getelementptr inbounds %struct.raid_set, %struct.raid_set* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %76, i32 0, i32 0
  store i64 %71, i64* %77, align 8
  %78 = load i8**, i8*** %6, align 8
  %79 = getelementptr inbounds i8*, i8** %78, i32 1
  store i8** %79, i8*** %6, align 8
  %80 = load i32, i32* %7, align 4
  %81 = add i32 %80, -1
  store i32 %81, i32* %7, align 4
  store i32 0, i32* %10, align 4
  br label %82

82:                                               ; preds = %109, %70
  %83 = load i32, i32* %10, align 4
  %84 = load %struct.raid_set*, %struct.raid_set** %5, align 8
  %85 = getelementptr inbounds %struct.raid_set, %struct.raid_set* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %85, i32 0, i32 2
  %87 = load i32, i32* %86, align 8
  %88 = icmp ult i32 %83, %87
  br i1 %88, label %89, label %112

89:                                               ; preds = %82
  %90 = load i32, i32* @In_sync, align 4
  %91 = load %struct.raid_set*, %struct.raid_set** %5, align 8
  %92 = getelementptr inbounds %struct.raid_set, %struct.raid_set* %91, i32 0, i32 4
  %93 = load %struct.TYPE_10__*, %struct.TYPE_10__** %92, align 8
  %94 = load i32, i32* %10, align 4
  %95 = zext i32 %94 to i64
  %96 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %93, i64 %95
  %97 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %97, i32 0, i32 0
  %99 = call i32 @set_bit(i32 %90, i32* %98)
  %100 = load i8*, i8** @MaxSector, align 8
  %101 = load %struct.raid_set*, %struct.raid_set** %5, align 8
  %102 = getelementptr inbounds %struct.raid_set, %struct.raid_set* %101, i32 0, i32 4
  %103 = load %struct.TYPE_10__*, %struct.TYPE_10__** %102, align 8
  %104 = load i32, i32* %10, align 4
  %105 = zext i32 %104 to i64
  %106 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %103, i64 %105
  %107 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %107, i32 0, i32 1
  store i8* %100, i8** %108, align 8
  br label %109

109:                                              ; preds = %89
  %110 = load i32, i32* %10, align 4
  %111 = add i32 %110, 1
  store i32 %111, i32* %10, align 4
  br label %82

112:                                              ; preds = %82
  store i32 0, i32* %10, align 4
  br label %113

113:                                              ; preds = %544, %112
  %114 = load i32, i32* %10, align 4
  %115 = load i32, i32* %7, align 4
  %116 = icmp ult i32 %114, %115
  br i1 %116, label %117, label %547

117:                                              ; preds = %113
  %118 = load i8**, i8*** %6, align 8
  %119 = load i32, i32* %10, align 4
  %120 = zext i32 %119 to i64
  %121 = getelementptr inbounds i8*, i8** %118, i64 %120
  %122 = load i8*, i8** %121, align 8
  %123 = call i32 @strcasecmp(i8* %122, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0))
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %135, label %125

125:                                              ; preds = %117
  %126 = load i8*, i8** @MaxSector, align 8
  %127 = load %struct.raid_set*, %struct.raid_set** %5, align 8
  %128 = getelementptr inbounds %struct.raid_set, %struct.raid_set* %127, i32 0, i32 0
  %129 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %128, i32 0, i32 11
  store i8* %126, i8** %129, align 8
  %130 = load i32, i32* @DMPF_NOSYNC, align 4
  %131 = load %struct.raid_set*, %struct.raid_set** %5, align 8
  %132 = getelementptr inbounds %struct.raid_set, %struct.raid_set* %131, i32 0, i32 3
  %133 = load i32, i32* %132, align 8
  %134 = or i32 %133, %130
  store i32 %134, i32* %132, align 8
  br label %544

135:                                              ; preds = %117
  %136 = load i8**, i8*** %6, align 8
  %137 = load i32, i32* %10, align 4
  %138 = zext i32 %137 to i64
  %139 = getelementptr inbounds i8*, i8** %136, i64 %138
  %140 = load i8*, i8** %139, align 8
  %141 = call i32 @strcasecmp(i8* %140, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0))
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %152, label %143

143:                                              ; preds = %135
  %144 = load %struct.raid_set*, %struct.raid_set** %5, align 8
  %145 = getelementptr inbounds %struct.raid_set, %struct.raid_set* %144, i32 0, i32 0
  %146 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %145, i32 0, i32 11
  store i8* null, i8** %146, align 8
  %147 = load i32, i32* @DMPF_SYNC, align 4
  %148 = load %struct.raid_set*, %struct.raid_set** %5, align 8
  %149 = getelementptr inbounds %struct.raid_set, %struct.raid_set* %148, i32 0, i32 3
  %150 = load i32, i32* %149, align 8
  %151 = or i32 %150, %147
  store i32 %151, i32* %149, align 8
  br label %544

152:                                              ; preds = %135
  %153 = load i32, i32* %10, align 4
  %154 = add i32 %153, 1
  %155 = load i32, i32* %7, align 4
  %156 = icmp uge i32 %154, %155
  br i1 %156, label %157, label %164

157:                                              ; preds = %152
  %158 = load %struct.raid_set*, %struct.raid_set** %5, align 8
  %159 = getelementptr inbounds %struct.raid_set, %struct.raid_set* %158, i32 0, i32 1
  %160 = load %struct.TYPE_12__*, %struct.TYPE_12__** %159, align 8
  %161 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %160, i32 0, i32 1
  store i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.7, i64 0, i64 0), i8** %161, align 8
  %162 = load i32, i32* @EINVAL, align 4
  %163 = sub nsw i32 0, %162
  store i32 %163, i32* %4, align 4
  br label %668

164:                                              ; preds = %152
  %165 = load i8**, i8*** %6, align 8
  %166 = load i32, i32* %10, align 4
  %167 = add i32 %166, 1
  store i32 %167, i32* %10, align 4
  %168 = zext i32 %166 to i64
  %169 = getelementptr inbounds i8*, i8** %165, i64 %168
  %170 = load i8*, i8** %169, align 8
  store i8* %170, i8** %15, align 8
  %171 = load i8*, i8** %15, align 8
  %172 = call i32 @strcasecmp(i8* %171, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.8, i64 0, i64 0))
  %173 = icmp ne i32 %172, 0
  br i1 %173, label %214, label %174

174:                                              ; preds = %164
  %175 = load %struct.raid_set*, %struct.raid_set** %5, align 8
  %176 = getelementptr inbounds %struct.raid_set, %struct.raid_set* %175, i32 0, i32 2
  %177 = load %struct.TYPE_8__*, %struct.TYPE_8__** %176, align 8
  %178 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %177, i32 0, i32 0
  %179 = load i32, i32* %178, align 4
  %180 = icmp ne i32 %179, 10
  br i1 %180, label %181, label %188

181:                                              ; preds = %174
  %182 = load %struct.raid_set*, %struct.raid_set** %5, align 8
  %183 = getelementptr inbounds %struct.raid_set, %struct.raid_set* %182, i32 0, i32 1
  %184 = load %struct.TYPE_12__*, %struct.TYPE_12__** %183, align 8
  %185 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %184, i32 0, i32 1
  store i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.9, i64 0, i64 0), i8** %185, align 8
  %186 = load i32, i32* @EINVAL, align 4
  %187 = sub nsw i32 0, %186
  store i32 %187, i32* %4, align 4
  br label %668

188:                                              ; preds = %174
  %189 = load i8**, i8*** %6, align 8
  %190 = load i32, i32* %10, align 4
  %191 = zext i32 %190 to i64
  %192 = getelementptr inbounds i8*, i8** %189, i64 %191
  %193 = load i8*, i8** %192, align 8
  %194 = call i64 @strcmp(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* %193)
  %195 = icmp ne i64 %194, 0
  br i1 %195, label %196, label %203

196:                                              ; preds = %188
  %197 = load %struct.raid_set*, %struct.raid_set** %5, align 8
  %198 = getelementptr inbounds %struct.raid_set, %struct.raid_set* %197, i32 0, i32 1
  %199 = load %struct.TYPE_12__*, %struct.TYPE_12__** %198, align 8
  %200 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %199, i32 0, i32 1
  store i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.10, i64 0, i64 0), i8** %200, align 8
  %201 = load i32, i32* @EINVAL, align 4
  %202 = sub nsw i32 0, %201
  store i32 %202, i32* %4, align 4
  br label %668

203:                                              ; preds = %188
  %204 = load i8**, i8*** %6, align 8
  %205 = load i32, i32* %10, align 4
  %206 = zext i32 %205 to i64
  %207 = getelementptr inbounds i8*, i8** %204, i64 %206
  %208 = load i8*, i8** %207, align 8
  store i8* %208, i8** %8, align 8
  %209 = load i32, i32* @DMPF_RAID10_FORMAT, align 4
  %210 = load %struct.raid_set*, %struct.raid_set** %5, align 8
  %211 = getelementptr inbounds %struct.raid_set, %struct.raid_set* %210, i32 0, i32 3
  %212 = load i32, i32* %211, align 8
  %213 = or i32 %212, %209
  store i32 %213, i32* %211, align 8
  br label %544

214:                                              ; preds = %164
  %215 = load i8**, i8*** %6, align 8
  %216 = load i32, i32* %10, align 4
  %217 = zext i32 %216 to i64
  %218 = getelementptr inbounds i8*, i8** %215, i64 %217
  %219 = load i8*, i8** %218, align 8
  %220 = call i64 @kstrtoul(i8* %219, i32 10, i64* %11)
  %221 = icmp slt i64 %220, 0
  br i1 %221, label %222, label %229

222:                                              ; preds = %214
  %223 = load %struct.raid_set*, %struct.raid_set** %5, align 8
  %224 = getelementptr inbounds %struct.raid_set, %struct.raid_set* %223, i32 0, i32 1
  %225 = load %struct.TYPE_12__*, %struct.TYPE_12__** %224, align 8
  %226 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %225, i32 0, i32 1
  store i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.11, i64 0, i64 0), i8** %226, align 8
  %227 = load i32, i32* @EINVAL, align 4
  %228 = sub nsw i32 0, %227
  store i32 %228, i32* %4, align 4
  br label %668

229:                                              ; preds = %214
  %230 = load i8*, i8** %15, align 8
  %231 = call i32 @strcasecmp(i8* %230, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.12, i64 0, i64 0))
  %232 = icmp ne i32 %231, 0
  br i1 %232, label %270, label %233

233:                                              ; preds = %229
  %234 = load i64, i64* %11, align 8
  %235 = load %struct.raid_set*, %struct.raid_set** %5, align 8
  %236 = getelementptr inbounds %struct.raid_set, %struct.raid_set* %235, i32 0, i32 0
  %237 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %236, i32 0, i32 2
  %238 = load i32, i32* %237, align 8
  %239 = zext i32 %238 to i64
  %240 = icmp uge i64 %234, %239
  br i1 %240, label %241, label %248

241:                                              ; preds = %233
  %242 = load %struct.raid_set*, %struct.raid_set** %5, align 8
  %243 = getelementptr inbounds %struct.raid_set, %struct.raid_set* %242, i32 0, i32 1
  %244 = load %struct.TYPE_12__*, %struct.TYPE_12__** %243, align 8
  %245 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %244, i32 0, i32 1
  store i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.13, i64 0, i64 0), i8** %245, align 8
  %246 = load i32, i32* @EINVAL, align 4
  %247 = sub nsw i32 0, %246
  store i32 %247, i32* %4, align 4
  br label %668

248:                                              ; preds = %233
  %249 = load i32, i32* @In_sync, align 4
  %250 = load %struct.raid_set*, %struct.raid_set** %5, align 8
  %251 = getelementptr inbounds %struct.raid_set, %struct.raid_set* %250, i32 0, i32 4
  %252 = load %struct.TYPE_10__*, %struct.TYPE_10__** %251, align 8
  %253 = load i64, i64* %11, align 8
  %254 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %252, i64 %253
  %255 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %254, i32 0, i32 0
  %256 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %255, i32 0, i32 0
  %257 = call i32 @clear_bit(i32 %249, i32* %256)
  %258 = load %struct.raid_set*, %struct.raid_set** %5, align 8
  %259 = getelementptr inbounds %struct.raid_set, %struct.raid_set* %258, i32 0, i32 4
  %260 = load %struct.TYPE_10__*, %struct.TYPE_10__** %259, align 8
  %261 = load i64, i64* %11, align 8
  %262 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %260, i64 %261
  %263 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %262, i32 0, i32 0
  %264 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %263, i32 0, i32 1
  store i8* null, i8** %264, align 8
  %265 = load i32, i32* @DMPF_REBUILD, align 4
  %266 = load %struct.raid_set*, %struct.raid_set** %5, align 8
  %267 = getelementptr inbounds %struct.raid_set, %struct.raid_set* %266, i32 0, i32 3
  %268 = load i32, i32* %267, align 8
  %269 = or i32 %268, %265
  store i32 %269, i32* %267, align 8
  br label %543

270:                                              ; preds = %229
  %271 = load i8*, i8** %15, align 8
  %272 = call i32 @strcasecmp(i8* %271, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.14, i64 0, i64 0))
  %273 = icmp ne i32 %272, 0
  br i1 %273, label %313, label %274

274:                                              ; preds = %270
  %275 = load %struct.raid_set*, %struct.raid_set** %5, align 8
  %276 = getelementptr inbounds %struct.raid_set, %struct.raid_set* %275, i32 0, i32 2
  %277 = load %struct.TYPE_8__*, %struct.TYPE_8__** %276, align 8
  %278 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %277, i32 0, i32 0
  %279 = load i32, i32* %278, align 4
  %280 = icmp ne i32 %279, 1
  br i1 %280, label %281, label %288

281:                                              ; preds = %274
  %282 = load %struct.raid_set*, %struct.raid_set** %5, align 8
  %283 = getelementptr inbounds %struct.raid_set, %struct.raid_set* %282, i32 0, i32 1
  %284 = load %struct.TYPE_12__*, %struct.TYPE_12__** %283, align 8
  %285 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %284, i32 0, i32 1
  store i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.15, i64 0, i64 0), i8** %285, align 8
  %286 = load i32, i32* @EINVAL, align 4
  %287 = sub nsw i32 0, %286
  store i32 %287, i32* %4, align 4
  br label %668

288:                                              ; preds = %274
  %289 = load i64, i64* %11, align 8
  %290 = load %struct.raid_set*, %struct.raid_set** %5, align 8
  %291 = getelementptr inbounds %struct.raid_set, %struct.raid_set* %290, i32 0, i32 0
  %292 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %291, i32 0, i32 2
  %293 = load i32, i32* %292, align 8
  %294 = zext i32 %293 to i64
  %295 = icmp uge i64 %289, %294
  br i1 %295, label %296, label %303

296:                                              ; preds = %288
  %297 = load %struct.raid_set*, %struct.raid_set** %5, align 8
  %298 = getelementptr inbounds %struct.raid_set, %struct.raid_set* %297, i32 0, i32 1
  %299 = load %struct.TYPE_12__*, %struct.TYPE_12__** %298, align 8
  %300 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %299, i32 0, i32 1
  store i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.16, i64 0, i64 0), i8** %300, align 8
  %301 = load i32, i32* @EINVAL, align 4
  %302 = sub nsw i32 0, %301
  store i32 %302, i32* %4, align 4
  br label %668

303:                                              ; preds = %288
  %304 = load i32, i32* @WriteMostly, align 4
  %305 = load %struct.raid_set*, %struct.raid_set** %5, align 8
  %306 = getelementptr inbounds %struct.raid_set, %struct.raid_set* %305, i32 0, i32 4
  %307 = load %struct.TYPE_10__*, %struct.TYPE_10__** %306, align 8
  %308 = load i64, i64* %11, align 8
  %309 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %307, i64 %308
  %310 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %309, i32 0, i32 0
  %311 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %310, i32 0, i32 0
  %312 = call i32 @set_bit(i32 %304, i32* %311)
  br label %542

313:                                              ; preds = %270
  %314 = load i8*, i8** %15, align 8
  %315 = call i32 @strcasecmp(i8* %314, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.17, i64 0, i64 0))
  %316 = icmp ne i32 %315, 0
  br i1 %316, label %355, label %317

317:                                              ; preds = %313
  %318 = load %struct.raid_set*, %struct.raid_set** %5, align 8
  %319 = getelementptr inbounds %struct.raid_set, %struct.raid_set* %318, i32 0, i32 2
  %320 = load %struct.TYPE_8__*, %struct.TYPE_8__** %319, align 8
  %321 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %320, i32 0, i32 0
  %322 = load i32, i32* %321, align 4
  %323 = icmp ne i32 %322, 1
  br i1 %323, label %324, label %331

324:                                              ; preds = %317
  %325 = load %struct.raid_set*, %struct.raid_set** %5, align 8
  %326 = getelementptr inbounds %struct.raid_set, %struct.raid_set* %325, i32 0, i32 1
  %327 = load %struct.TYPE_12__*, %struct.TYPE_12__** %326, align 8
  %328 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %327, i32 0, i32 1
  store i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.18, i64 0, i64 0), i8** %328, align 8
  %329 = load i32, i32* @EINVAL, align 4
  %330 = sub nsw i32 0, %329
  store i32 %330, i32* %4, align 4
  br label %668

331:                                              ; preds = %317
  %332 = load i32, i32* @DMPF_MAX_WRITE_BEHIND, align 4
  %333 = load %struct.raid_set*, %struct.raid_set** %5, align 8
  %334 = getelementptr inbounds %struct.raid_set, %struct.raid_set* %333, i32 0, i32 3
  %335 = load i32, i32* %334, align 8
  %336 = or i32 %335, %332
  store i32 %336, i32* %334, align 8
  %337 = load i64, i64* %11, align 8
  %338 = udiv i64 %337, 2
  store i64 %338, i64* %11, align 8
  %339 = load i64, i64* %11, align 8
  %340 = load i64, i64* @COUNTER_MAX, align 8
  %341 = icmp ugt i64 %339, %340
  br i1 %341, label %342, label %349

342:                                              ; preds = %331
  %343 = load %struct.raid_set*, %struct.raid_set** %5, align 8
  %344 = getelementptr inbounds %struct.raid_set, %struct.raid_set* %343, i32 0, i32 1
  %345 = load %struct.TYPE_12__*, %struct.TYPE_12__** %344, align 8
  %346 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %345, i32 0, i32 1
  store i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.19, i64 0, i64 0), i8** %346, align 8
  %347 = load i32, i32* @EINVAL, align 4
  %348 = sub nsw i32 0, %347
  store i32 %348, i32* %4, align 4
  br label %668

349:                                              ; preds = %331
  %350 = load i64, i64* %11, align 8
  %351 = load %struct.raid_set*, %struct.raid_set** %5, align 8
  %352 = getelementptr inbounds %struct.raid_set, %struct.raid_set* %351, i32 0, i32 0
  %353 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %352, i32 0, i32 10
  %354 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %353, i32 0, i32 0
  store i64 %350, i64* %354, align 8
  br label %541

355:                                              ; preds = %313
  %356 = load i8*, i8** %15, align 8
  %357 = call i32 @strcasecmp(i8* %356, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.20, i64 0, i64 0))
  %358 = icmp ne i32 %357, 0
  br i1 %358, label %384, label %359

359:                                              ; preds = %355
  %360 = load i32, i32* @DMPF_DAEMON_SLEEP, align 4
  %361 = load %struct.raid_set*, %struct.raid_set** %5, align 8
  %362 = getelementptr inbounds %struct.raid_set, %struct.raid_set* %361, i32 0, i32 3
  %363 = load i32, i32* %362, align 8
  %364 = or i32 %363, %360
  store i32 %364, i32* %362, align 8
  %365 = load i64, i64* %11, align 8
  %366 = icmp ne i64 %365, 0
  br i1 %366, label %367, label %371

367:                                              ; preds = %359
  %368 = load i64, i64* %11, align 8
  %369 = load i64, i64* @MAX_SCHEDULE_TIMEOUT, align 8
  %370 = icmp ugt i64 %368, %369
  br i1 %370, label %371, label %378

371:                                              ; preds = %367, %359
  %372 = load %struct.raid_set*, %struct.raid_set** %5, align 8
  %373 = getelementptr inbounds %struct.raid_set, %struct.raid_set* %372, i32 0, i32 1
  %374 = load %struct.TYPE_12__*, %struct.TYPE_12__** %373, align 8
  %375 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %374, i32 0, i32 1
  store i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.21, i64 0, i64 0), i8** %375, align 8
  %376 = load i32, i32* @EINVAL, align 4
  %377 = sub nsw i32 0, %376
  store i32 %377, i32* %4, align 4
  br label %668

378:                                              ; preds = %367
  %379 = load i64, i64* %11, align 8
  %380 = load %struct.raid_set*, %struct.raid_set** %5, align 8
  %381 = getelementptr inbounds %struct.raid_set, %struct.raid_set* %380, i32 0, i32 0
  %382 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %381, i32 0, i32 10
  %383 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %382, i32 0, i32 1
  store i64 %379, i64* %383, align 8
  br label %540

384:                                              ; preds = %355
  %385 = load i8*, i8** %15, align 8
  %386 = call i32 @strcasecmp(i8* %385, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.22, i64 0, i64 0))
  %387 = icmp ne i32 %386, 0
  br i1 %387, label %431, label %388

388:                                              ; preds = %384
  %389 = load i32, i32* @DMPF_STRIPE_CACHE, align 4
  %390 = load %struct.raid_set*, %struct.raid_set** %5, align 8
  %391 = getelementptr inbounds %struct.raid_set, %struct.raid_set* %390, i32 0, i32 3
  %392 = load i32, i32* %391, align 8
  %393 = or i32 %392, %389
  store i32 %393, i32* %391, align 8
  %394 = load i64, i64* %11, align 8
  %395 = udiv i64 %394, 2
  store i64 %395, i64* %11, align 8
  %396 = load %struct.raid_set*, %struct.raid_set** %5, align 8
  %397 = getelementptr inbounds %struct.raid_set, %struct.raid_set* %396, i32 0, i32 2
  %398 = load %struct.TYPE_8__*, %struct.TYPE_8__** %397, align 8
  %399 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %398, i32 0, i32 0
  %400 = load i32, i32* %399, align 4
  %401 = icmp ne i32 %400, 5
  br i1 %401, label %402, label %416

402:                                              ; preds = %388
  %403 = load %struct.raid_set*, %struct.raid_set** %5, align 8
  %404 = getelementptr inbounds %struct.raid_set, %struct.raid_set* %403, i32 0, i32 2
  %405 = load %struct.TYPE_8__*, %struct.TYPE_8__** %404, align 8
  %406 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %405, i32 0, i32 0
  %407 = load i32, i32* %406, align 4
  %408 = icmp ne i32 %407, 6
  br i1 %408, label %409, label %416

409:                                              ; preds = %402
  %410 = load %struct.raid_set*, %struct.raid_set** %5, align 8
  %411 = getelementptr inbounds %struct.raid_set, %struct.raid_set* %410, i32 0, i32 1
  %412 = load %struct.TYPE_12__*, %struct.TYPE_12__** %411, align 8
  %413 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %412, i32 0, i32 1
  store i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.23, i64 0, i64 0), i8** %413, align 8
  %414 = load i32, i32* @EINVAL, align 4
  %415 = sub nsw i32 0, %414
  store i32 %415, i32* %4, align 4
  br label %668

416:                                              ; preds = %402, %388
  %417 = load %struct.raid_set*, %struct.raid_set** %5, align 8
  %418 = getelementptr inbounds %struct.raid_set, %struct.raid_set* %417, i32 0, i32 0
  %419 = load i64, i64* %11, align 8
  %420 = trunc i64 %419 to i32
  %421 = call i64 @raid5_set_cache_size(%struct.TYPE_11__* %418, i32 %420)
  %422 = icmp ne i64 %421, 0
  br i1 %422, label %423, label %430

423:                                              ; preds = %416
  %424 = load %struct.raid_set*, %struct.raid_set** %5, align 8
  %425 = getelementptr inbounds %struct.raid_set, %struct.raid_set* %424, i32 0, i32 1
  %426 = load %struct.TYPE_12__*, %struct.TYPE_12__** %425, align 8
  %427 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %426, i32 0, i32 1
  store i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.24, i64 0, i64 0), i8** %427, align 8
  %428 = load i32, i32* @EINVAL, align 4
  %429 = sub nsw i32 0, %428
  store i32 %429, i32* %4, align 4
  br label %668

430:                                              ; preds = %416
  br label %539

431:                                              ; preds = %384
  %432 = load i8*, i8** %15, align 8
  %433 = call i32 @strcasecmp(i8* %432, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.25, i64 0, i64 0))
  %434 = icmp ne i32 %433, 0
  br i1 %434, label %457, label %435

435:                                              ; preds = %431
  %436 = load i32, i32* @DMPF_MIN_RECOVERY_RATE, align 4
  %437 = load %struct.raid_set*, %struct.raid_set** %5, align 8
  %438 = getelementptr inbounds %struct.raid_set, %struct.raid_set* %437, i32 0, i32 3
  %439 = load i32, i32* %438, align 8
  %440 = or i32 %439, %436
  store i32 %440, i32* %438, align 8
  %441 = load i64, i64* %11, align 8
  %442 = load i64, i64* @INT_MAX, align 8
  %443 = icmp ugt i64 %441, %442
  br i1 %443, label %444, label %451

444:                                              ; preds = %435
  %445 = load %struct.raid_set*, %struct.raid_set** %5, align 8
  %446 = getelementptr inbounds %struct.raid_set, %struct.raid_set* %445, i32 0, i32 1
  %447 = load %struct.TYPE_12__*, %struct.TYPE_12__** %446, align 8
  %448 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %447, i32 0, i32 1
  store i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.26, i64 0, i64 0), i8** %448, align 8
  %449 = load i32, i32* @EINVAL, align 4
  %450 = sub nsw i32 0, %449
  store i32 %450, i32* %4, align 4
  br label %668

451:                                              ; preds = %435
  %452 = load i64, i64* %11, align 8
  %453 = trunc i64 %452 to i32
  %454 = load %struct.raid_set*, %struct.raid_set** %5, align 8
  %455 = getelementptr inbounds %struct.raid_set, %struct.raid_set* %454, i32 0, i32 0
  %456 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %455, i32 0, i32 3
  store i32 %453, i32* %456, align 4
  br label %538

457:                                              ; preds = %431
  %458 = load i8*, i8** %15, align 8
  %459 = call i32 @strcasecmp(i8* %458, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.27, i64 0, i64 0))
  %460 = icmp ne i32 %459, 0
  br i1 %460, label %483, label %461

461:                                              ; preds = %457
  %462 = load i32, i32* @DMPF_MAX_RECOVERY_RATE, align 4
  %463 = load %struct.raid_set*, %struct.raid_set** %5, align 8
  %464 = getelementptr inbounds %struct.raid_set, %struct.raid_set* %463, i32 0, i32 3
  %465 = load i32, i32* %464, align 8
  %466 = or i32 %465, %462
  store i32 %466, i32* %464, align 8
  %467 = load i64, i64* %11, align 8
  %468 = load i64, i64* @INT_MAX, align 8
  %469 = icmp ugt i64 %467, %468
  br i1 %469, label %470, label %477

470:                                              ; preds = %461
  %471 = load %struct.raid_set*, %struct.raid_set** %5, align 8
  %472 = getelementptr inbounds %struct.raid_set, %struct.raid_set* %471, i32 0, i32 1
  %473 = load %struct.TYPE_12__*, %struct.TYPE_12__** %472, align 8
  %474 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %473, i32 0, i32 1
  store i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.28, i64 0, i64 0), i8** %474, align 8
  %475 = load i32, i32* @EINVAL, align 4
  %476 = sub nsw i32 0, %475
  store i32 %476, i32* %4, align 4
  br label %668

477:                                              ; preds = %461
  %478 = load i64, i64* %11, align 8
  %479 = trunc i64 %478 to i32
  %480 = load %struct.raid_set*, %struct.raid_set** %5, align 8
  %481 = getelementptr inbounds %struct.raid_set, %struct.raid_set* %480, i32 0, i32 0
  %482 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %481, i32 0, i32 4
  store i32 %479, i32* %482, align 8
  br label %537

483:                                              ; preds = %457
  %484 = load i8*, i8** %15, align 8
  %485 = call i32 @strcasecmp(i8* %484, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.29, i64 0, i64 0))
  %486 = icmp ne i32 %485, 0
  br i1 %486, label %494, label %487

487:                                              ; preds = %483
  %488 = load i32, i32* @DMPF_REGION_SIZE, align 4
  %489 = load %struct.raid_set*, %struct.raid_set** %5, align 8
  %490 = getelementptr inbounds %struct.raid_set, %struct.raid_set* %489, i32 0, i32 3
  %491 = load i32, i32* %490, align 8
  %492 = or i32 %491, %488
  store i32 %492, i32* %490, align 8
  %493 = load i64, i64* %11, align 8
  store i64 %493, i64* %12, align 8
  br label %536

494:                                              ; preds = %483
  %495 = load i8*, i8** %15, align 8
  %496 = call i32 @strcasecmp(i8* %495, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.30, i64 0, i64 0))
  %497 = icmp ne i32 %496, 0
  br i1 %497, label %526, label %498

498:                                              ; preds = %494
  %499 = load %struct.raid_set*, %struct.raid_set** %5, align 8
  %500 = getelementptr inbounds %struct.raid_set, %struct.raid_set* %499, i32 0, i32 2
  %501 = load %struct.TYPE_8__*, %struct.TYPE_8__** %500, align 8
  %502 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %501, i32 0, i32 0
  %503 = load i32, i32* %502, align 4
  %504 = icmp eq i32 %503, 10
  br i1 %504, label %505, label %526

505:                                              ; preds = %498
  %506 = load i64, i64* %11, align 8
  %507 = icmp ult i64 %506, 2
  br i1 %507, label %511, label %508

508:                                              ; preds = %505
  %509 = load i64, i64* %11, align 8
  %510 = icmp ugt i64 %509, 255
  br i1 %510, label %511, label %518

511:                                              ; preds = %508, %505
  %512 = load %struct.raid_set*, %struct.raid_set** %5, align 8
  %513 = getelementptr inbounds %struct.raid_set, %struct.raid_set* %512, i32 0, i32 1
  %514 = load %struct.TYPE_12__*, %struct.TYPE_12__** %513, align 8
  %515 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %514, i32 0, i32 1
  store i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.31, i64 0, i64 0), i8** %515, align 8
  %516 = load i32, i32* @EINVAL, align 4
  %517 = sub nsw i32 0, %516
  store i32 %517, i32* %4, align 4
  br label %668

518:                                              ; preds = %508
  %519 = load i32, i32* @DMPF_RAID10_COPIES, align 4
  %520 = load %struct.raid_set*, %struct.raid_set** %5, align 8
  %521 = getelementptr inbounds %struct.raid_set, %struct.raid_set* %520, i32 0, i32 3
  %522 = load i32, i32* %521, align 8
  %523 = or i32 %522, %519
  store i32 %523, i32* %521, align 8
  %524 = load i64, i64* %11, align 8
  %525 = trunc i64 %524 to i32
  store i32 %525, i32* %9, align 4
  br label %535

526:                                              ; preds = %498, %494
  %527 = load i8*, i8** %15, align 8
  %528 = call i32 (i8*, ...) @DMERR(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.32, i64 0, i64 0), i8* %527)
  %529 = load %struct.raid_set*, %struct.raid_set** %5, align 8
  %530 = getelementptr inbounds %struct.raid_set, %struct.raid_set* %529, i32 0, i32 1
  %531 = load %struct.TYPE_12__*, %struct.TYPE_12__** %530, align 8
  %532 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %531, i32 0, i32 1
  store i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.33, i64 0, i64 0), i8** %532, align 8
  %533 = load i32, i32* @EINVAL, align 4
  %534 = sub nsw i32 0, %533
  store i32 %534, i32* %4, align 4
  br label %668

535:                                              ; preds = %518
  br label %536

536:                                              ; preds = %535, %487
  br label %537

537:                                              ; preds = %536, %477
  br label %538

538:                                              ; preds = %537, %451
  br label %539

539:                                              ; preds = %538, %430
  br label %540

540:                                              ; preds = %539, %378
  br label %541

541:                                              ; preds = %540, %349
  br label %542

542:                                              ; preds = %541, %303
  br label %543

543:                                              ; preds = %542, %248
  br label %544

544:                                              ; preds = %543, %203, %143, %125
  %545 = load i32, i32* %10, align 4
  %546 = add i32 %545, 1
  store i32 %546, i32* %10, align 4
  br label %113

547:                                              ; preds = %113
  %548 = load %struct.raid_set*, %struct.raid_set** %5, align 8
  %549 = load i64, i64* %12, align 8
  %550 = call i64 @validate_region_size(%struct.raid_set* %548, i64 %549)
  %551 = icmp ne i64 %550, 0
  br i1 %551, label %552, label %555

552:                                              ; preds = %547
  %553 = load i32, i32* @EINVAL, align 4
  %554 = sub nsw i32 0, %553
  store i32 %554, i32* %4, align 4
  br label %668

555:                                              ; preds = %547
  %556 = load %struct.raid_set*, %struct.raid_set** %5, align 8
  %557 = getelementptr inbounds %struct.raid_set, %struct.raid_set* %556, i32 0, i32 0
  %558 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %557, i32 0, i32 1
  %559 = load i64, i64* %558, align 8
  %560 = icmp ne i64 %559, 0
  br i1 %560, label %561, label %567

561:                                              ; preds = %555
  %562 = load %struct.raid_set*, %struct.raid_set** %5, align 8
  %563 = getelementptr inbounds %struct.raid_set, %struct.raid_set* %562, i32 0, i32 0
  %564 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %563, i32 0, i32 1
  %565 = load i64, i64* %564, align 8
  %566 = trunc i64 %565 to i32
  store i32 %566, i32* %14, align 4
  br label %570

567:                                              ; preds = %555
  %568 = load i64, i64* %12, align 8
  %569 = trunc i64 %568 to i32
  store i32 %569, i32* %14, align 4
  br label %570

570:                                              ; preds = %567, %561
  %571 = load %struct.raid_set*, %struct.raid_set** %5, align 8
  %572 = getelementptr inbounds %struct.raid_set, %struct.raid_set* %571, i32 0, i32 1
  %573 = load %struct.TYPE_12__*, %struct.TYPE_12__** %572, align 8
  %574 = load i32, i32* %14, align 4
  %575 = call i64 @dm_set_target_max_io_len(%struct.TYPE_12__* %573, i32 %574)
  %576 = icmp ne i64 %575, 0
  br i1 %576, label %577, label %580

577:                                              ; preds = %570
  %578 = load i32, i32* @EINVAL, align 4
  %579 = sub nsw i32 0, %578
  store i32 %579, i32* %4, align 4
  br label %668

580:                                              ; preds = %570
  %581 = load %struct.raid_set*, %struct.raid_set** %5, align 8
  %582 = getelementptr inbounds %struct.raid_set, %struct.raid_set* %581, i32 0, i32 2
  %583 = load %struct.TYPE_8__*, %struct.TYPE_8__** %582, align 8
  %584 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %583, i32 0, i32 0
  %585 = load i32, i32* %584, align 4
  %586 = icmp eq i32 %585, 10
  br i1 %586, label %587, label %628

587:                                              ; preds = %580
  %588 = load i32, i32* %9, align 4
  %589 = load %struct.raid_set*, %struct.raid_set** %5, align 8
  %590 = getelementptr inbounds %struct.raid_set, %struct.raid_set* %589, i32 0, i32 0
  %591 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %590, i32 0, i32 2
  %592 = load i32, i32* %591, align 8
  %593 = icmp ugt i32 %588, %592
  br i1 %593, label %594, label %601

594:                                              ; preds = %587
  %595 = load %struct.raid_set*, %struct.raid_set** %5, align 8
  %596 = getelementptr inbounds %struct.raid_set, %struct.raid_set* %595, i32 0, i32 1
  %597 = load %struct.TYPE_12__*, %struct.TYPE_12__** %596, align 8
  %598 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %597, i32 0, i32 1
  store i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.34, i64 0, i64 0), i8** %598, align 8
  %599 = load i32, i32* @EINVAL, align 4
  %600 = sub nsw i32 0, %599
  store i32 %600, i32* %4, align 4
  br label %668

601:                                              ; preds = %587
  %602 = load %struct.raid_set*, %struct.raid_set** %5, align 8
  %603 = getelementptr inbounds %struct.raid_set, %struct.raid_set* %602, i32 0, i32 1
  %604 = load %struct.TYPE_12__*, %struct.TYPE_12__** %603, align 8
  %605 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %604, i32 0, i32 0
  %606 = load i32, i32* %605, align 8
  %607 = load i32, i32* %9, align 4
  %608 = mul i32 %606, %607
  store i32 %608, i32* %13, align 4
  %609 = load i32, i32* %13, align 4
  %610 = load %struct.raid_set*, %struct.raid_set** %5, align 8
  %611 = getelementptr inbounds %struct.raid_set, %struct.raid_set* %610, i32 0, i32 0
  %612 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %611, i32 0, i32 2
  %613 = load i32, i32* %612, align 8
  %614 = call i64 @sector_div(i32 %609, i32 %613)
  %615 = load i8*, i8** %8, align 8
  %616 = load i32, i32* %9, align 4
  %617 = call i32 @raid10_format_to_md_layout(i8* %615, i32 %616)
  %618 = load %struct.raid_set*, %struct.raid_set** %5, align 8
  %619 = getelementptr inbounds %struct.raid_set, %struct.raid_set* %618, i32 0, i32 0
  %620 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %619, i32 0, i32 8
  store i32 %617, i32* %620, align 8
  %621 = load %struct.raid_set*, %struct.raid_set** %5, align 8
  %622 = getelementptr inbounds %struct.raid_set, %struct.raid_set* %621, i32 0, i32 0
  %623 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %622, i32 0, i32 8
  %624 = load i32, i32* %623, align 8
  %625 = load %struct.raid_set*, %struct.raid_set** %5, align 8
  %626 = getelementptr inbounds %struct.raid_set, %struct.raid_set* %625, i32 0, i32 0
  %627 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %626, i32 0, i32 9
  store i32 %624, i32* %627, align 4
  br label %657

628:                                              ; preds = %580
  %629 = load %struct.raid_set*, %struct.raid_set** %5, align 8
  %630 = getelementptr inbounds %struct.raid_set, %struct.raid_set* %629, i32 0, i32 2
  %631 = load %struct.TYPE_8__*, %struct.TYPE_8__** %630, align 8
  %632 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %631, i32 0, i32 0
  %633 = load i32, i32* %632, align 4
  %634 = icmp sgt i32 %633, 1
  br i1 %634, label %635, label %656

635:                                              ; preds = %628
  %636 = load i32, i32* %13, align 4
  %637 = load %struct.raid_set*, %struct.raid_set** %5, align 8
  %638 = getelementptr inbounds %struct.raid_set, %struct.raid_set* %637, i32 0, i32 0
  %639 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %638, i32 0, i32 2
  %640 = load i32, i32* %639, align 8
  %641 = load %struct.raid_set*, %struct.raid_set** %5, align 8
  %642 = getelementptr inbounds %struct.raid_set, %struct.raid_set* %641, i32 0, i32 2
  %643 = load %struct.TYPE_8__*, %struct.TYPE_8__** %642, align 8
  %644 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %643, i32 0, i32 1
  %645 = load i32, i32* %644, align 4
  %646 = sub i32 %640, %645
  %647 = call i64 @sector_div(i32 %636, i32 %646)
  %648 = icmp ne i64 %647, 0
  br i1 %648, label %649, label %656

649:                                              ; preds = %635
  %650 = load %struct.raid_set*, %struct.raid_set** %5, align 8
  %651 = getelementptr inbounds %struct.raid_set, %struct.raid_set* %650, i32 0, i32 1
  %652 = load %struct.TYPE_12__*, %struct.TYPE_12__** %651, align 8
  %653 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %652, i32 0, i32 1
  store i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.35, i64 0, i64 0), i8** %653, align 8
  %654 = load i32, i32* @EINVAL, align 4
  %655 = sub nsw i32 0, %654
  store i32 %655, i32* %4, align 4
  br label %668

656:                                              ; preds = %635, %628
  br label %657

657:                                              ; preds = %656, %601
  %658 = load i32, i32* %13, align 4
  %659 = load %struct.raid_set*, %struct.raid_set** %5, align 8
  %660 = getelementptr inbounds %struct.raid_set, %struct.raid_set* %659, i32 0, i32 0
  %661 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %660, i32 0, i32 5
  store i32 %658, i32* %661, align 4
  %662 = load %struct.raid_set*, %struct.raid_set** %5, align 8
  %663 = getelementptr inbounds %struct.raid_set, %struct.raid_set* %662, i32 0, i32 0
  %664 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %663, i32 0, i32 7
  store i64 0, i64* %664, align 8
  %665 = load %struct.raid_set*, %struct.raid_set** %5, align 8
  %666 = getelementptr inbounds %struct.raid_set, %struct.raid_set* %665, i32 0, i32 0
  %667 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %666, i32 0, i32 6
  store i32 1, i32* %667, align 8
  store i32 0, i32* %4, align 4
  br label %668

668:                                              ; preds = %657, %649, %594, %577, %552, %526, %511, %470, %444, %423, %409, %371, %342, %324, %296, %281, %241, %222, %196, %181, %157, %60, %50, %26
  %669 = load i32, i32* %4, align 4
  ret i32 %669
}

declare dso_local i64 @kstrtoul(i8*, i32, i64*) #1

declare dso_local i32 @DMERR(i8*, ...) #1

declare dso_local i32 @is_power_of_2(i64) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @strcasecmp(i8*, i8*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i64 @raid5_set_cache_size(%struct.TYPE_11__*, i32) #1

declare dso_local i64 @validate_region_size(%struct.raid_set*, i64) #1

declare dso_local i64 @dm_set_target_max_io_len(%struct.TYPE_12__*, i32) #1

declare dso_local i64 @sector_div(i32, i32) #1

declare dso_local i32 @raid10_format_to_md_layout(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
