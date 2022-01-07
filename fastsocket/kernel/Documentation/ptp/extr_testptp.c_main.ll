; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/Documentation/ptp/extr_testptp.c_main.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/Documentation/ptp/extr_testptp.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ptp_clock_caps = type { i32, i32, i32, i32, i32 }
%struct.ptp_extts_event = type { i32, %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i32, i32 }
%struct.ptp_extts_request = type { %struct.TYPE_10__, %struct.TYPE_9__, i64, %struct.TYPE_8__, %struct.TYPE_7__, i64, %struct.TYPE_11__, i32, i32 }
%struct.TYPE_10__ = type { i32, i64 }
%struct.TYPE_9__ = type { i32, i64 }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_11__ = type { i32, i64 }
%struct.ptp_perout_request = type { %struct.TYPE_10__, %struct.TYPE_9__, i64, %struct.TYPE_8__, %struct.TYPE_7__, i64, %struct.TYPE_11__, i32, i32 }
%struct.timespec = type { i32, i32 }
%struct.timex = type { %struct.TYPE_10__, %struct.TYPE_9__, i64, %struct.TYPE_8__, %struct.TYPE_7__, i64, %struct.TYPE_11__, i32, i32 }
%struct.itimerspec = type { %struct.TYPE_10__, %struct.TYPE_9__, i64, %struct.TYPE_8__, %struct.TYPE_7__, i64, %struct.TYPE_11__, i32, i32 }
%struct.sigevent = type { i8*, i8* }

@main.timerid = internal global i32 0, align 4
@DEVICE = common dso_local global i8* null, align 8
@EOF = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"a:A:cd:e:f:ghp:P:sSt:v\00", align 1
@optarg = common dso_local global i8* null, align 8
@O_RDWR = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [16 x i8] c"opening %s: %s\0A\00", align 1
@errno = common dso_local global i32 0, align 4
@CLOCK_INVALID = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [25 x i8] c"failed to read clock id\0A\00", align 1
@PTP_CLOCK_GETCAPS = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [18 x i8] c"PTP_CLOCK_GETCAPS\00", align 1
@.str.4 = private unnamed_addr constant [171 x i8] c"capabilities:\0A  %d maximum frequency adjustment (ppb)\0A  %d programmable alarms\0A  %d external time stamp channels\0A  %d programmable periodic signals\0A  %d pulse per second\0A\00", align 1
@ADJ_FREQUENCY = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [14 x i8] c"clock_adjtime\00", align 1
@.str.6 = private unnamed_addr constant [26 x i8] c"frequency adjustment okay\00", align 1
@ADJ_SETOFFSET = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [16 x i8] c"time shift okay\00", align 1
@.str.8 = private unnamed_addr constant [14 x i8] c"clock_gettime\00", align 1
@.str.9 = private unnamed_addr constant [28 x i8] c"clock time: %ld.%09ld or %s\00", align 1
@CLOCK_REALTIME = common dso_local global i64 0, align 8
@.str.10 = private unnamed_addr constant [14 x i8] c"clock_settime\00", align 1
@.str.11 = private unnamed_addr constant [14 x i8] c"set time okay\00", align 1
@PTP_ENABLE_FEATURE = common dso_local global i64 0, align 8
@PTP_EXTTS_REQUEST = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [18 x i8] c"PTP_EXTTS_REQUEST\00", align 1
@.str.13 = private unnamed_addr constant [33 x i8] c"external time stamp request okay\00", align 1
@.str.14 = private unnamed_addr constant [5 x i8] c"read\00", align 1
@.str.15 = private unnamed_addr constant [29 x i8] c"event index %u at %lld.%09u\0A\00", align 1
@stdout = common dso_local global i32 0, align 4
@SIGALRM = common dso_local global i8* null, align 8
@handle_alarm = common dso_local global i32 0, align 4
@SIGEV_SIGNAL = common dso_local global i8* null, align 8
@.str.16 = private unnamed_addr constant [13 x i8] c"timer_create\00", align 1
@.str.17 = private unnamed_addr constant [14 x i8] c"timer_settime\00", align 1
@PTP_PEROUT_REQUEST = common dso_local global i32 0, align 4
@.str.18 = private unnamed_addr constant [19 x i8] c"PTP_PEROUT_REQUEST\00", align 1
@.str.19 = private unnamed_addr constant [29 x i8] c"periodic output request okay\00", align 1
@PTP_ENABLE_PPS = common dso_local global i32 0, align 4
@.str.20 = private unnamed_addr constant [15 x i8] c"PTP_ENABLE_PPS\00", align 1
@.str.21 = private unnamed_addr constant [33 x i8] c"pps for system time request okay\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca %struct.ptp_clock_caps, align 4
  %7 = alloca %struct.ptp_extts_event, align 4
  %8 = alloca %struct.ptp_extts_request, align 8
  %9 = alloca %struct.ptp_perout_request, align 8
  %10 = alloca %struct.timespec, align 4
  %11 = alloca %struct.timex, align 8
  %12 = alloca %struct.itimerspec, align 8
  %13 = alloca %struct.sigevent, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i8*, align 8
  %19 = alloca i64, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %31 = load i8*, i8** @DEVICE, align 8
  store i8* %31, i8** %18, align 8
  store i32 2147483647, i32* %20, align 4
  store i32 0, i32* %21, align 4
  store i32 0, i32* %22, align 4
  store i32 0, i32* %23, align 4
  store i32 0, i32* %24, align 4
  store i32 0, i32* %25, align 4
  store i32 0, i32* %26, align 4
  store i32 -1, i32* %27, align 4
  store i32 -1, i32* %28, align 4
  store i32 0, i32* %29, align 4
  %32 = load i8**, i8*** %5, align 8
  %33 = getelementptr inbounds i8*, i8** %32, i64 0
  %34 = load i8*, i8** %33, align 8
  %35 = call i8* @strrchr(i8* %34, i8 signext 47)
  store i8* %35, i8** %14, align 8
  %36 = load i8*, i8** %14, align 8
  %37 = icmp ne i8* %36, null
  br i1 %37, label %38, label %41

38:                                               ; preds = %2
  %39 = load i8*, i8** %14, align 8
  %40 = getelementptr inbounds i8, i8* %39, i64 1
  br label %45

41:                                               ; preds = %2
  %42 = load i8**, i8*** %5, align 8
  %43 = getelementptr inbounds i8*, i8** %42, i64 0
  %44 = load i8*, i8** %43, align 8
  br label %45

45:                                               ; preds = %41, %38
  %46 = phi i8* [ %40, %38 ], [ %44, %41 ]
  store i8* %46, i8** %14, align 8
  br label %47

47:                                               ; preds = %89, %45
  %48 = load i32, i32* @EOF, align 4
  %49 = load i32, i32* %4, align 4
  %50 = load i8**, i8*** %5, align 8
  %51 = call i32 @getopt(i32 %49, i8** %50, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  store i32 %51, i32* %15, align 4
  %52 = icmp ne i32 %48, %51
  br i1 %52, label %53, label %90

53:                                               ; preds = %47
  %54 = load i32, i32* %15, align 4
  switch i32 %54, label %86 [
    i32 97, label %55
    i32 65, label %58
    i32 99, label %61
    i32 100, label %62
    i32 101, label %64
    i32 102, label %67
    i32 103, label %70
    i32 112, label %71
    i32 80, label %74
    i32 115, label %77
    i32 83, label %78
    i32 116, label %79
    i32 104, label %82
    i32 63, label %85
  ]

55:                                               ; preds = %53
  %56 = load i8*, i8** @optarg, align 8
  %57 = call i32 @atoi(i8* %56)
  store i32 %57, i32* %25, align 4
  br label %89

58:                                               ; preds = %53
  %59 = load i8*, i8** @optarg, align 8
  %60 = call i32 @atoi(i8* %59)
  store i32 %60, i32* %26, align 4
  br label %89

61:                                               ; preds = %53
  store i32 1, i32* %22, align 4
  br label %89

62:                                               ; preds = %53
  %63 = load i8*, i8** @optarg, align 8
  store i8* %63, i8** %18, align 8
  br label %89

64:                                               ; preds = %53
  %65 = load i8*, i8** @optarg, align 8
  %66 = call i32 @atoi(i8* %65)
  store i32 %66, i32* %23, align 4
  br label %89

67:                                               ; preds = %53
  %68 = load i8*, i8** @optarg, align 8
  %69 = call i32 @atoi(i8* %68)
  store i32 %69, i32* %20, align 4
  br label %89

70:                                               ; preds = %53
  store i32 1, i32* %24, align 4
  br label %89

71:                                               ; preds = %53
  %72 = load i8*, i8** @optarg, align 8
  %73 = call i32 @atoi(i8* %72)
  store i32 %73, i32* %27, align 4
  br label %89

74:                                               ; preds = %53
  %75 = load i8*, i8** @optarg, align 8
  %76 = call i32 @atoi(i8* %75)
  store i32 %76, i32* %28, align 4
  br label %89

77:                                               ; preds = %53
  store i32 1, i32* %29, align 4
  br label %89

78:                                               ; preds = %53
  store i32 2, i32* %29, align 4
  br label %89

79:                                               ; preds = %53
  %80 = load i8*, i8** @optarg, align 8
  %81 = call i32 @atoi(i8* %80)
  store i32 %81, i32* %21, align 4
  br label %89

82:                                               ; preds = %53
  %83 = load i8*, i8** %14, align 8
  %84 = call i32 @usage(i8* %83)
  store i32 0, i32* %3, align 4
  br label %392

85:                                               ; preds = %53
  br label %86

86:                                               ; preds = %53, %85
  %87 = load i8*, i8** %14, align 8
  %88 = call i32 @usage(i8* %87)
  store i32 -1, i32* %3, align 4
  br label %392

89:                                               ; preds = %79, %78, %77, %74, %71, %70, %67, %64, %62, %61, %58, %55
  br label %47

90:                                               ; preds = %47
  %91 = load i8*, i8** %18, align 8
  %92 = load i32, i32* @O_RDWR, align 4
  %93 = call i32 @open(i8* %91, i32 %92)
  store i32 %93, i32* %17, align 4
  %94 = load i32, i32* %17, align 4
  %95 = icmp slt i32 %94, 0
  br i1 %95, label %96, label %102

96:                                               ; preds = %90
  %97 = load i32, i32* @stderr, align 4
  %98 = load i8*, i8** %18, align 8
  %99 = load i32, i32* @errno, align 4
  %100 = call i8* @strerror(i32 %99)
  %101 = call i32 (i32, i8*, ...) @fprintf(i32 %97, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i8* %98, i8* %100)
  store i32 -1, i32* %3, align 4
  br label %392

102:                                              ; preds = %90
  %103 = load i32, i32* %17, align 4
  %104 = call i64 @get_clockid(i32 %103)
  store i64 %104, i64* %19, align 8
  %105 = load i64, i64* @CLOCK_INVALID, align 8
  %106 = load i64, i64* %19, align 8
  %107 = icmp eq i64 %105, %106
  br i1 %107, label %108, label %111

108:                                              ; preds = %102
  %109 = load i32, i32* @stderr, align 4
  %110 = call i32 (i32, i8*, ...) @fprintf(i32 %109, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %392

111:                                              ; preds = %102
  %112 = load i32, i32* %22, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %134

114:                                              ; preds = %111
  %115 = load i32, i32* %17, align 4
  %116 = load i32, i32* @PTP_CLOCK_GETCAPS, align 4
  %117 = call i64 (i32, i32, ...) @ioctl(i32 %115, i32 %116, %struct.ptp_clock_caps* %6)
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %119, label %121

119:                                              ; preds = %114
  %120 = call i32 @perror(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0))
  br label %133

121:                                              ; preds = %114
  %122 = getelementptr inbounds %struct.ptp_clock_caps, %struct.ptp_clock_caps* %6, i32 0, i32 0
  %123 = load i32, i32* %122, align 4
  %124 = getelementptr inbounds %struct.ptp_clock_caps, %struct.ptp_clock_caps* %6, i32 0, i32 1
  %125 = load i32, i32* %124, align 4
  %126 = getelementptr inbounds %struct.ptp_clock_caps, %struct.ptp_clock_caps* %6, i32 0, i32 2
  %127 = load i32, i32* %126, align 4
  %128 = getelementptr inbounds %struct.ptp_clock_caps, %struct.ptp_clock_caps* %6, i32 0, i32 3
  %129 = load i32, i32* %128, align 4
  %130 = getelementptr inbounds %struct.ptp_clock_caps, %struct.ptp_clock_caps* %6, i32 0, i32 4
  %131 = load i32, i32* %130, align 4
  %132 = call i32 (i8*, i32, i32, i32, ...) @printf(i8* getelementptr inbounds ([171 x i8], [171 x i8]* @.str.4, i64 0, i64 0), i32 %123, i32 %125, i32 %127, i32 %129, i32 %131)
  br label %133

133:                                              ; preds = %121, %119
  br label %134

134:                                              ; preds = %133, %111
  %135 = load i32, i32* %20, align 4
  %136 = icmp ne i32 2147483647, %135
  br i1 %136, label %137, label %152

137:                                              ; preds = %134
  %138 = call i32 @memset(%struct.timex* %11, i32 0, i32 80)
  %139 = load i32, i32* @ADJ_FREQUENCY, align 4
  %140 = getelementptr inbounds %struct.timex, %struct.timex* %11, i32 0, i32 7
  store i32 %139, i32* %140, align 8
  %141 = load i32, i32* %20, align 4
  %142 = call i32 @ppb_to_scaled_ppm(i32 %141)
  %143 = getelementptr inbounds %struct.timex, %struct.timex* %11, i32 0, i32 8
  store i32 %142, i32* %143, align 4
  %144 = load i64, i64* %19, align 8
  %145 = call i64 @clock_adjtime(i64 %144, %struct.timex* %11)
  %146 = icmp ne i64 %145, 0
  br i1 %146, label %147, label %149

147:                                              ; preds = %137
  %148 = call i32 @perror(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i64 0, i64 0))
  br label %151

149:                                              ; preds = %137
  %150 = call i32 @puts(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.6, i64 0, i64 0))
  br label %151

151:                                              ; preds = %149, %147
  br label %152

152:                                              ; preds = %151, %134
  %153 = load i32, i32* %21, align 4
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %155, label %172

155:                                              ; preds = %152
  %156 = call i32 @memset(%struct.timex* %11, i32 0, i32 80)
  %157 = load i32, i32* @ADJ_SETOFFSET, align 4
  %158 = getelementptr inbounds %struct.timex, %struct.timex* %11, i32 0, i32 7
  store i32 %157, i32* %158, align 8
  %159 = load i32, i32* %21, align 4
  %160 = getelementptr inbounds %struct.timex, %struct.timex* %11, i32 0, i32 6
  %161 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %160, i32 0, i32 0
  store i32 %159, i32* %161, align 8
  %162 = getelementptr inbounds %struct.timex, %struct.timex* %11, i32 0, i32 6
  %163 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %162, i32 0, i32 1
  store i64 0, i64* %163, align 8
  %164 = load i64, i64* %19, align 8
  %165 = call i64 @clock_adjtime(i64 %164, %struct.timex* %11)
  %166 = icmp slt i64 %165, 0
  br i1 %166, label %167, label %169

167:                                              ; preds = %155
  %168 = call i32 @perror(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i64 0, i64 0))
  br label %171

169:                                              ; preds = %155
  %170 = call i32 @puts(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.7, i64 0, i64 0))
  br label %171

171:                                              ; preds = %169, %167
  br label %172

172:                                              ; preds = %171, %152
  %173 = load i32, i32* %24, align 4
  %174 = icmp ne i32 %173, 0
  br i1 %174, label %175, label %190

175:                                              ; preds = %172
  %176 = load i64, i64* %19, align 8
  %177 = call i64 @clock_gettime(i64 %176, %struct.timespec* %10)
  %178 = icmp ne i64 %177, 0
  br i1 %178, label %179, label %181

179:                                              ; preds = %175
  %180 = call i32 @perror(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.8, i64 0, i64 0))
  br label %189

181:                                              ; preds = %175
  %182 = getelementptr inbounds %struct.timespec, %struct.timespec* %10, i32 0, i32 0
  %183 = load i32, i32* %182, align 4
  %184 = getelementptr inbounds %struct.timespec, %struct.timespec* %10, i32 0, i32 1
  %185 = load i32, i32* %184, align 4
  %186 = getelementptr inbounds %struct.timespec, %struct.timespec* %10, i32 0, i32 0
  %187 = call i32 @ctime(i32* %186)
  %188 = call i32 (i8*, i32, i32, i32, ...) @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.9, i64 0, i64 0), i32 %183, i32 %185, i32 %187)
  br label %189

189:                                              ; preds = %181, %179
  br label %190

190:                                              ; preds = %189, %172
  %191 = load i32, i32* %29, align 4
  %192 = icmp eq i32 %191, 1
  br i1 %192, label %193, label %204

193:                                              ; preds = %190
  %194 = load i64, i64* @CLOCK_REALTIME, align 8
  %195 = call i64 @clock_gettime(i64 %194, %struct.timespec* %10)
  %196 = load i64, i64* %19, align 8
  %197 = call i64 @clock_settime(i64 %196, %struct.timespec* %10)
  %198 = icmp ne i64 %197, 0
  br i1 %198, label %199, label %201

199:                                              ; preds = %193
  %200 = call i32 @perror(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.10, i64 0, i64 0))
  br label %203

201:                                              ; preds = %193
  %202 = call i32 @puts(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.11, i64 0, i64 0))
  br label %203

203:                                              ; preds = %201, %199
  br label %204

204:                                              ; preds = %203, %190
  %205 = load i32, i32* %29, align 4
  %206 = icmp eq i32 %205, 2
  br i1 %206, label %207, label %218

207:                                              ; preds = %204
  %208 = load i64, i64* %19, align 8
  %209 = call i64 @clock_gettime(i64 %208, %struct.timespec* %10)
  %210 = load i64, i64* @CLOCK_REALTIME, align 8
  %211 = call i64 @clock_settime(i64 %210, %struct.timespec* %10)
  %212 = icmp ne i64 %211, 0
  br i1 %212, label %213, label %215

213:                                              ; preds = %207
  %214 = call i32 @perror(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.10, i64 0, i64 0))
  br label %217

215:                                              ; preds = %207
  %216 = call i32 @puts(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.11, i64 0, i64 0))
  br label %217

217:                                              ; preds = %215, %213
  br label %218

218:                                              ; preds = %217, %204
  %219 = load i32, i32* %23, align 4
  %220 = icmp ne i32 %219, 0
  br i1 %220, label %221, label %271

221:                                              ; preds = %218
  %222 = bitcast %struct.ptp_extts_request* %8 to %struct.timex*
  %223 = call i32 @memset(%struct.timex* %222, i32 0, i32 80)
  %224 = getelementptr inbounds %struct.ptp_extts_request, %struct.ptp_extts_request* %8, i32 0, i32 2
  store i64 0, i64* %224, align 8
  %225 = load i64, i64* @PTP_ENABLE_FEATURE, align 8
  %226 = getelementptr inbounds %struct.ptp_extts_request, %struct.ptp_extts_request* %8, i32 0, i32 5
  store i64 %225, i64* %226, align 8
  %227 = load i32, i32* %17, align 4
  %228 = load i32, i32* @PTP_EXTTS_REQUEST, align 4
  %229 = call i64 (i32, i32, ...) @ioctl(i32 %227, i32 %228, %struct.ptp_extts_request* %8)
  %230 = icmp ne i64 %229, 0
  br i1 %230, label %231, label %233

231:                                              ; preds = %221
  %232 = call i32 @perror(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.12, i64 0, i64 0))
  store i32 0, i32* %23, align 4
  br label %235

233:                                              ; preds = %221
  %234 = call i32 @puts(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.13, i64 0, i64 0))
  br label %235

235:                                              ; preds = %233, %231
  br label %236

236:                                              ; preds = %259, %235
  %237 = load i32, i32* %23, align 4
  %238 = icmp ne i32 %237, 0
  br i1 %238, label %239, label %262

239:                                              ; preds = %236
  %240 = load i32, i32* %17, align 4
  %241 = call i32 @read(i32 %240, %struct.ptp_extts_event* %7, i32 12)
  store i32 %241, i32* %16, align 4
  %242 = load i32, i32* %16, align 4
  %243 = sext i32 %242 to i64
  %244 = icmp ne i64 %243, 12
  br i1 %244, label %245, label %247

245:                                              ; preds = %239
  %246 = call i32 @perror(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.14, i64 0, i64 0))
  br label %262

247:                                              ; preds = %239
  %248 = getelementptr inbounds %struct.ptp_extts_event, %struct.ptp_extts_event* %7, i32 0, i32 0
  %249 = load i32, i32* %248, align 4
  %250 = getelementptr inbounds %struct.ptp_extts_event, %struct.ptp_extts_event* %7, i32 0, i32 1
  %251 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %250, i32 0, i32 1
  %252 = load i32, i32* %251, align 4
  %253 = getelementptr inbounds %struct.ptp_extts_event, %struct.ptp_extts_event* %7, i32 0, i32 1
  %254 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %253, i32 0, i32 0
  %255 = load i32, i32* %254, align 4
  %256 = call i32 (i8*, i32, i32, i32, ...) @printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.15, i64 0, i64 0), i32 %249, i32 %252, i32 %255)
  %257 = load i32, i32* @stdout, align 4
  %258 = call i32 @fflush(i32 %257)
  br label %259

259:                                              ; preds = %247
  %260 = load i32, i32* %23, align 4
  %261 = add nsw i32 %260, -1
  store i32 %261, i32* %23, align 4
  br label %236

262:                                              ; preds = %245, %236
  %263 = getelementptr inbounds %struct.ptp_extts_request, %struct.ptp_extts_request* %8, i32 0, i32 5
  store i64 0, i64* %263, align 8
  %264 = load i32, i32* %17, align 4
  %265 = load i32, i32* @PTP_EXTTS_REQUEST, align 4
  %266 = call i64 (i32, i32, ...) @ioctl(i32 %264, i32 %265, %struct.ptp_extts_request* %8)
  %267 = icmp ne i64 %266, 0
  br i1 %267, label %268, label %270

268:                                              ; preds = %262
  %269 = call i32 @perror(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.12, i64 0, i64 0))
  br label %270

270:                                              ; preds = %268, %262
  br label %271

271:                                              ; preds = %270, %218
  %272 = load i32, i32* %25, align 4
  %273 = icmp ne i32 %272, 0
  br i1 %273, label %274, label %303

274:                                              ; preds = %271
  %275 = load i8*, i8** @SIGALRM, align 8
  %276 = load i32, i32* @handle_alarm, align 4
  %277 = call i32 @install_handler(i8* %275, i32 %276)
  %278 = load i8*, i8** @SIGEV_SIGNAL, align 8
  %279 = getelementptr inbounds %struct.sigevent, %struct.sigevent* %13, i32 0, i32 1
  store i8* %278, i8** %279, align 8
  %280 = load i8*, i8** @SIGALRM, align 8
  %281 = getelementptr inbounds %struct.sigevent, %struct.sigevent* %13, i32 0, i32 0
  store i8* %280, i8** %281, align 8
  %282 = load i64, i64* %19, align 8
  %283 = call i64 @timer_create(i64 %282, %struct.sigevent* %13, i32* @main.timerid)
  %284 = icmp ne i64 %283, 0
  br i1 %284, label %285, label %287

285:                                              ; preds = %274
  %286 = call i32 @perror(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.16, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %392

287:                                              ; preds = %274
  %288 = bitcast %struct.itimerspec* %12 to %struct.timex*
  %289 = call i32 @memset(%struct.timex* %288, i32 0, i32 80)
  %290 = load i32, i32* %25, align 4
  %291 = getelementptr inbounds %struct.itimerspec, %struct.itimerspec* %12, i32 0, i32 3
  %292 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %291, i32 0, i32 0
  store i32 %290, i32* %292, align 8
  %293 = load i32, i32* @main.timerid, align 4
  %294 = bitcast %struct.itimerspec* %12 to %struct.timex*
  %295 = call i64 @timer_settime(i32 %293, i32 0, %struct.timex* %294, i32* null)
  %296 = icmp ne i64 %295, 0
  br i1 %296, label %297, label %299

297:                                              ; preds = %287
  %298 = call i32 @perror(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %392

299:                                              ; preds = %287
  %300 = call i32 (...) @pause()
  %301 = load i32, i32* @main.timerid, align 4
  %302 = call i32 @timer_delete(i32 %301)
  br label %303

303:                                              ; preds = %299, %271
  %304 = load i32, i32* %26, align 4
  %305 = icmp ne i32 %304, 0
  br i1 %305, label %306, label %337

306:                                              ; preds = %303
  %307 = load i8*, i8** @SIGALRM, align 8
  %308 = load i32, i32* @handle_alarm, align 4
  %309 = call i32 @install_handler(i8* %307, i32 %308)
  %310 = load i8*, i8** @SIGEV_SIGNAL, align 8
  %311 = getelementptr inbounds %struct.sigevent, %struct.sigevent* %13, i32 0, i32 1
  store i8* %310, i8** %311, align 8
  %312 = load i8*, i8** @SIGALRM, align 8
  %313 = getelementptr inbounds %struct.sigevent, %struct.sigevent* %13, i32 0, i32 0
  store i8* %312, i8** %313, align 8
  %314 = load i64, i64* %19, align 8
  %315 = call i64 @timer_create(i64 %314, %struct.sigevent* %13, i32* @main.timerid)
  %316 = icmp ne i64 %315, 0
  br i1 %316, label %317, label %319

317:                                              ; preds = %306
  %318 = call i32 @perror(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.16, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %392

319:                                              ; preds = %306
  %320 = bitcast %struct.itimerspec* %12 to %struct.timex*
  %321 = call i32 @memset(%struct.timex* %320, i32 0, i32 80)
  %322 = load i32, i32* %26, align 4
  %323 = getelementptr inbounds %struct.itimerspec, %struct.itimerspec* %12, i32 0, i32 4
  %324 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %323, i32 0, i32 0
  store i32 %322, i32* %324, align 4
  %325 = load i32, i32* %26, align 4
  %326 = getelementptr inbounds %struct.itimerspec, %struct.itimerspec* %12, i32 0, i32 3
  %327 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %326, i32 0, i32 0
  store i32 %325, i32* %327, align 8
  %328 = load i32, i32* @main.timerid, align 4
  %329 = bitcast %struct.itimerspec* %12 to %struct.timex*
  %330 = call i64 @timer_settime(i32 %328, i32 0, %struct.timex* %329, i32* null)
  %331 = icmp ne i64 %330, 0
  br i1 %331, label %332, label %334

332:                                              ; preds = %319
  %333 = call i32 @perror(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %392

334:                                              ; preds = %319
  br label %335

335:                                              ; preds = %334, %335
  %336 = call i32 (...) @pause()
  br label %335

337:                                              ; preds = %303
  %338 = load i32, i32* %27, align 4
  %339 = icmp sge i32 %338, 0
  br i1 %339, label %340, label %371

340:                                              ; preds = %337
  %341 = load i64, i64* %19, align 8
  %342 = call i64 @clock_gettime(i64 %341, %struct.timespec* %10)
  %343 = icmp ne i64 %342, 0
  br i1 %343, label %344, label %346

344:                                              ; preds = %340
  %345 = call i32 @perror(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.8, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %392

346:                                              ; preds = %340
  %347 = bitcast %struct.ptp_perout_request* %9 to %struct.timex*
  %348 = call i32 @memset(%struct.timex* %347, i32 0, i32 80)
  %349 = getelementptr inbounds %struct.ptp_perout_request, %struct.ptp_perout_request* %9, i32 0, i32 2
  store i64 0, i64* %349, align 8
  %350 = getelementptr inbounds %struct.timespec, %struct.timespec* %10, i32 0, i32 0
  %351 = load i32, i32* %350, align 4
  %352 = add nsw i32 %351, 2
  %353 = getelementptr inbounds %struct.ptp_perout_request, %struct.ptp_perout_request* %9, i32 0, i32 1
  %354 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %353, i32 0, i32 0
  store i32 %352, i32* %354, align 8
  %355 = getelementptr inbounds %struct.ptp_perout_request, %struct.ptp_perout_request* %9, i32 0, i32 1
  %356 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %355, i32 0, i32 1
  store i64 0, i64* %356, align 8
  %357 = getelementptr inbounds %struct.ptp_perout_request, %struct.ptp_perout_request* %9, i32 0, i32 0
  %358 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %357, i32 0, i32 1
  store i64 0, i64* %358, align 8
  %359 = load i32, i32* %27, align 4
  %360 = getelementptr inbounds %struct.ptp_perout_request, %struct.ptp_perout_request* %9, i32 0, i32 0
  %361 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %360, i32 0, i32 0
  store i32 %359, i32* %361, align 8
  %362 = load i32, i32* %17, align 4
  %363 = load i32, i32* @PTP_PEROUT_REQUEST, align 4
  %364 = call i64 (i32, i32, ...) @ioctl(i32 %362, i32 %363, %struct.ptp_perout_request* %9)
  %365 = icmp ne i64 %364, 0
  br i1 %365, label %366, label %368

366:                                              ; preds = %346
  %367 = call i32 @perror(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.18, i64 0, i64 0))
  br label %370

368:                                              ; preds = %346
  %369 = call i32 @puts(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.19, i64 0, i64 0))
  br label %370

370:                                              ; preds = %368, %366
  br label %371

371:                                              ; preds = %370, %337
  %372 = load i32, i32* %28, align 4
  %373 = icmp ne i32 %372, -1
  br i1 %373, label %374, label %389

374:                                              ; preds = %371
  %375 = load i32, i32* %28, align 4
  %376 = icmp ne i32 %375, 0
  %377 = zext i1 %376 to i64
  %378 = select i1 %376, i32 1, i32 0
  store i32 %378, i32* %30, align 4
  %379 = load i32, i32* %17, align 4
  %380 = load i32, i32* @PTP_ENABLE_PPS, align 4
  %381 = load i32, i32* %30, align 4
  %382 = call i64 (i32, i32, ...) @ioctl(i32 %379, i32 %380, i32 %381)
  %383 = icmp ne i64 %382, 0
  br i1 %383, label %384, label %386

384:                                              ; preds = %374
  %385 = call i32 @perror(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.20, i64 0, i64 0))
  br label %388

386:                                              ; preds = %374
  %387 = call i32 @puts(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.21, i64 0, i64 0))
  br label %388

388:                                              ; preds = %386, %384
  br label %389

389:                                              ; preds = %388, %371
  %390 = load i32, i32* %17, align 4
  %391 = call i32 @close(i32 %390)
  store i32 0, i32* %3, align 4
  br label %392

392:                                              ; preds = %389, %344, %332, %317, %297, %285, %108, %96, %86, %82
  %393 = load i32, i32* %3, align 4
  ret i32 %393
}

declare dso_local i8* @strrchr(i8*, i8 signext) #1

declare dso_local i32 @getopt(i32, i8**, i8*) #1

declare dso_local i32 @atoi(i8*) #1

declare dso_local i32 @usage(i8*) #1

declare dso_local i32 @open(i8*, i32) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i8* @strerror(i32) #1

declare dso_local i64 @get_clockid(i32) #1

declare dso_local i64 @ioctl(i32, i32, ...) #1

declare dso_local i32 @perror(i8*) #1

declare dso_local i32 @printf(i8*, i32, i32, i32, ...) #1

declare dso_local i32 @memset(%struct.timex*, i32, i32) #1

declare dso_local i32 @ppb_to_scaled_ppm(i32) #1

declare dso_local i64 @clock_adjtime(i64, %struct.timex*) #1

declare dso_local i32 @puts(i8*) #1

declare dso_local i64 @clock_gettime(i64, %struct.timespec*) #1

declare dso_local i32 @ctime(i32*) #1

declare dso_local i64 @clock_settime(i64, %struct.timespec*) #1

declare dso_local i32 @read(i32, %struct.ptp_extts_event*, i32) #1

declare dso_local i32 @fflush(i32) #1

declare dso_local i32 @install_handler(i8*, i32) #1

declare dso_local i64 @timer_create(i64, %struct.sigevent*, i32*) #1

declare dso_local i64 @timer_settime(i32, i32, %struct.timex*, i32*) #1

declare dso_local i32 @pause(...) #1

declare dso_local i32 @timer_delete(i32) #1

declare dso_local i32 @close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
