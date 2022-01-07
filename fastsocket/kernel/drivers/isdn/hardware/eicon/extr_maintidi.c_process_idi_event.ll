; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hardware/eicon/extr_maintidi.c_process_idi_event.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hardware/eicon/extr_maintidi.c_process_idi_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_20__ = type { i32, i32, i32, i32, %struct.TYPE_19__*, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_19__ = type { %struct.TYPE_18__* }
%struct.TYPE_18__ = type { i8*, i32* }
%struct.TYPE_21__ = type { i32 }

@.str = private unnamed_addr constant [14 x i8] c"State\\B Event\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"State\\FAX Event\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"State\\Modem Event\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"State\\B%d\\Line\00", align 1
@.str.4 = private unnamed_addr constant [22 x i8] c"State\\B%d\\Modem\\Event\00", align 1
@.str.5 = private unnamed_addr constant [20 x i8] c"State\\B%d\\FAX\\Event\00", align 1
@.str.6 = private unnamed_addr constant [12 x i8] c"Events Down\00", align 1
@.str.7 = private unnamed_addr constant [13 x i8] c"State\\Layer1\00", align 1
@DIVA_SUPER_TRACE_INTERFACE_CHANGE = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [17 x i8] c"State\\Layer2 No1\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"Idle\00", align 1
@.str.10 = private unnamed_addr constant [10 x i8] c"Layer2 UP\00", align 1
@.str.11 = private unnamed_addr constant [21 x i8] c"Layer2 Disconnecting\00", align 1
@.str.12 = private unnamed_addr constant [18 x i8] c"Layer2 Connecting\00", align 1
@.str.13 = private unnamed_addr constant [18 x i8] c"SPID Initializing\00", align 1
@.str.14 = private unnamed_addr constant [17 x i8] c"SPID Initialised\00", align 1
@.str.15 = private unnamed_addr constant [18 x i8] c"Auto SPID Stopped\00", align 1
@.str.16 = private unnamed_addr constant [15 x i8] c"Auto SPID Idle\00", align 1
@.str.17 = private unnamed_addr constant [20 x i8] c"Auto SPID Requested\00", align 1
@.str.18 = private unnamed_addr constant [19 x i8] c"Auto SPID Delivery\00", align 1
@.str.19 = private unnamed_addr constant [19 x i8] c"Auto SPID Complete\00", align 1
@.str.20 = private unnamed_addr constant [5 x i8] c"U:%d\00", align 1
@.str.21 = private unnamed_addr constant [32 x i8] c"Statistics\\Incoming Calls\\Calls\00", align 1
@.str.22 = private unnamed_addr constant [36 x i8] c"Statistics\\Incoming Calls\\Connected\00", align 1
@.str.23 = private unnamed_addr constant [32 x i8] c"Statistics\\Outgoing Calls\\Calls\00", align 1
@.str.24 = private unnamed_addr constant [36 x i8] c"Statistics\\Outgoing Calls\\Connected\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_20__*, %struct.TYPE_21__*)* @process_idi_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @process_idi_event(%struct.TYPE_20__* %0, %struct.TYPE_21__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_20__*, align 8
  %5 = alloca %struct.TYPE_21__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca [64 x i8], align 16
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  store %struct.TYPE_20__* %0, %struct.TYPE_20__** %4, align 8
  store %struct.TYPE_21__* %1, %struct.TYPE_21__** %5, align 8
  %14 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %15 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %14, i32 0, i32 0
  %16 = bitcast i32* %15 to i8*
  %17 = getelementptr inbounds i8, i8* %16, i64 1
  store i8* %17, i8** %6, align 8
  %18 = load i8*, i8** %6, align 8
  %19 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @strncmp(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8* %18, i32 %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %71, label %24

24:                                               ; preds = %2
  %25 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %26 = call i32 @diva_trace_read_variable(%struct.TYPE_21__* %25, i64* %9)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %70, label %28

28:                                               ; preds = %24
  %29 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %30 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %29, i32 0, i32 10
  %31 = load i32, i32* %30, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %53, label %33

33:                                               ; preds = %28
  %34 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %35 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %34, i32 0, i32 9
  %36 = load i32, i32* %35, align 8
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %53, label %38

38:                                               ; preds = %33
  store i32 1, i32* %8, align 4
  br label %39

39:                                               ; preds = %49, %38
  %40 = load i32, i32* %8, align 4
  %41 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %42 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = icmp sle i32 %40, %43
  br i1 %44, label %45, label %52

45:                                               ; preds = %39
  %46 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %47 = load i32, i32* %8, align 4
  %48 = call i32 @diva_line_event(%struct.TYPE_20__* %46, i32 %47)
  br label %49

49:                                               ; preds = %45
  %50 = load i32, i32* %8, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %8, align 4
  br label %39

52:                                               ; preds = %39
  store i32 0, i32* %3, align 4
  br label %410

53:                                               ; preds = %33, %28
  %54 = load i64, i64* %9, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %68

56:                                               ; preds = %53
  %57 = load i64, i64* %9, align 8
  %58 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %59 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = sext i32 %60 to i64
  %62 = icmp sle i64 %57, %61
  br i1 %62, label %63, label %68

63:                                               ; preds = %56
  %64 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %65 = load i64, i64* %9, align 8
  %66 = trunc i64 %65 to i32
  %67 = call i32 @diva_line_event(%struct.TYPE_20__* %64, i32 %66)
  store i32 %67, i32* %3, align 4
  br label %410

68:                                               ; preds = %56, %53
  br label %69

69:                                               ; preds = %68
  store i32 0, i32* %3, align 4
  br label %410

70:                                               ; preds = %24
  store i32 -1, i32* %3, align 4
  br label %410

71:                                               ; preds = %2
  %72 = load i8*, i8** %6, align 8
  %73 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %74 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @strncmp(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i8* %72, i32 %75)
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %125, label %78

78:                                               ; preds = %71
  %79 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %80 = call i32 @diva_trace_read_variable(%struct.TYPE_21__* %79, i64* %10)
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %124, label %82

82:                                               ; preds = %78
  %83 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %84 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %83, i32 0, i32 8
  %85 = load i32, i32* %84, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %107, label %87

87:                                               ; preds = %82
  %88 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %89 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %88, i32 0, i32 7
  %90 = load i32, i32* %89, align 8
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %107, label %92

92:                                               ; preds = %87
  store i32 1, i32* %8, align 4
  br label %93

93:                                               ; preds = %103, %92
  %94 = load i32, i32* %8, align 4
  %95 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %96 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = icmp sle i32 %94, %97
  br i1 %98, label %99, label %106

99:                                               ; preds = %93
  %100 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %101 = load i32, i32* %8, align 4
  %102 = call i32 @diva_fax_event(%struct.TYPE_20__* %100, i32 %101)
  br label %103

103:                                              ; preds = %99
  %104 = load i32, i32* %8, align 4
  %105 = add nsw i32 %104, 1
  store i32 %105, i32* %8, align 4
  br label %93

106:                                              ; preds = %93
  store i32 0, i32* %3, align 4
  br label %410

107:                                              ; preds = %87, %82
  %108 = load i64, i64* %10, align 8
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %122

110:                                              ; preds = %107
  %111 = load i64, i64* %10, align 8
  %112 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %113 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  %115 = sext i32 %114 to i64
  %116 = icmp sle i64 %111, %115
  br i1 %116, label %117, label %122

117:                                              ; preds = %110
  %118 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %119 = load i64, i64* %10, align 8
  %120 = trunc i64 %119 to i32
  %121 = call i32 @diva_fax_event(%struct.TYPE_20__* %118, i32 %120)
  store i32 %121, i32* %3, align 4
  br label %410

122:                                              ; preds = %110, %107
  br label %123

123:                                              ; preds = %122
  store i32 0, i32* %3, align 4
  br label %410

124:                                              ; preds = %78
  store i32 -1, i32* %3, align 4
  br label %410

125:                                              ; preds = %71
  %126 = load i8*, i8** %6, align 8
  %127 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %128 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 4
  %130 = call i32 @strncmp(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i8* %126, i32 %129)
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %179, label %132

132:                                              ; preds = %125
  %133 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %134 = call i32 @diva_trace_read_variable(%struct.TYPE_21__* %133, i64* %11)
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %178, label %136

136:                                              ; preds = %132
  %137 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %138 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %137, i32 0, i32 6
  %139 = load i32, i32* %138, align 4
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %161, label %141

141:                                              ; preds = %136
  %142 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %143 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %142, i32 0, i32 5
  %144 = load i32, i32* %143, align 8
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %161, label %146

146:                                              ; preds = %141
  store i32 1, i32* %8, align 4
  br label %147

147:                                              ; preds = %157, %146
  %148 = load i32, i32* %8, align 4
  %149 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %150 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 8
  %152 = icmp sle i32 %148, %151
  br i1 %152, label %153, label %160

153:                                              ; preds = %147
  %154 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %155 = load i32, i32* %8, align 4
  %156 = call i32 @diva_modem_event(%struct.TYPE_20__* %154, i32 %155)
  br label %157

157:                                              ; preds = %153
  %158 = load i32, i32* %8, align 4
  %159 = add nsw i32 %158, 1
  store i32 %159, i32* %8, align 4
  br label %147

160:                                              ; preds = %147
  store i32 0, i32* %3, align 4
  br label %410

161:                                              ; preds = %141, %136
  %162 = load i64, i64* %11, align 8
  %163 = icmp ne i64 %162, 0
  br i1 %163, label %164, label %176

164:                                              ; preds = %161
  %165 = load i64, i64* %11, align 8
  %166 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %167 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %166, i32 0, i32 0
  %168 = load i32, i32* %167, align 8
  %169 = sext i32 %168 to i64
  %170 = icmp sle i64 %165, %169
  br i1 %170, label %171, label %176

171:                                              ; preds = %164
  %172 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %173 = load i64, i64* %11, align 8
  %174 = trunc i64 %173 to i32
  %175 = call i32 @diva_modem_event(%struct.TYPE_20__* %172, i32 %174)
  store i32 %175, i32* %3, align 4
  br label %410

176:                                              ; preds = %164, %161
  br label %177

177:                                              ; preds = %176
  store i32 0, i32* %3, align 4
  br label %410

178:                                              ; preds = %132
  store i32 -1, i32* %3, align 4
  br label %410

179:                                              ; preds = %125
  store i32 1, i32* %8, align 4
  br label %180

180:                                              ; preds = %199, %179
  %181 = load i32, i32* %8, align 4
  %182 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %183 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %182, i32 0, i32 0
  %184 = load i32, i32* %183, align 8
  %185 = icmp sle i32 %181, %184
  br i1 %185, label %186, label %202

186:                                              ; preds = %180
  %187 = getelementptr inbounds [64 x i8], [64 x i8]* %7, i64 0, i64 0
  %188 = load i32, i32* %8, align 4
  %189 = call i32 @sprintf(i8* %187, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0), i32 %188)
  %190 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %191 = getelementptr inbounds [64 x i8], [64 x i8]* %7, i64 0, i64 0
  %192 = call i64 @find_var(%struct.TYPE_21__* %190, i8* %191)
  %193 = icmp ne i64 %192, 0
  br i1 %193, label %194, label %198

194:                                              ; preds = %186
  %195 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %196 = load i32, i32* %8, align 4
  %197 = call i32 @diva_line_event(%struct.TYPE_20__* %195, i32 %196)
  store i32 %197, i32* %3, align 4
  br label %410

198:                                              ; preds = %186
  br label %199

199:                                              ; preds = %198
  %200 = load i32, i32* %8, align 4
  %201 = add nsw i32 %200, 1
  store i32 %201, i32* %8, align 4
  br label %180

202:                                              ; preds = %180
  store i32 1, i32* %8, align 4
  br label %203

203:                                              ; preds = %222, %202
  %204 = load i32, i32* %8, align 4
  %205 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %206 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %205, i32 0, i32 0
  %207 = load i32, i32* %206, align 8
  %208 = icmp sle i32 %204, %207
  br i1 %208, label %209, label %225

209:                                              ; preds = %203
  %210 = getelementptr inbounds [64 x i8], [64 x i8]* %7, i64 0, i64 0
  %211 = load i32, i32* %8, align 4
  %212 = call i32 @sprintf(i8* %210, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i64 0, i64 0), i32 %211)
  %213 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %214 = getelementptr inbounds [64 x i8], [64 x i8]* %7, i64 0, i64 0
  %215 = call i64 @find_var(%struct.TYPE_21__* %213, i8* %214)
  %216 = icmp ne i64 %215, 0
  br i1 %216, label %217, label %221

217:                                              ; preds = %209
  %218 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %219 = load i32, i32* %8, align 4
  %220 = call i32 @diva_modem_event(%struct.TYPE_20__* %218, i32 %219)
  store i32 %220, i32* %3, align 4
  br label %410

221:                                              ; preds = %209
  br label %222

222:                                              ; preds = %221
  %223 = load i32, i32* %8, align 4
  %224 = add nsw i32 %223, 1
  store i32 %224, i32* %8, align 4
  br label %203

225:                                              ; preds = %203
  store i32 1, i32* %8, align 4
  br label %226

226:                                              ; preds = %245, %225
  %227 = load i32, i32* %8, align 4
  %228 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %229 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %228, i32 0, i32 0
  %230 = load i32, i32* %229, align 8
  %231 = icmp sle i32 %227, %230
  br i1 %231, label %232, label %248

232:                                              ; preds = %226
  %233 = getelementptr inbounds [64 x i8], [64 x i8]* %7, i64 0, i64 0
  %234 = load i32, i32* %8, align 4
  %235 = call i32 @sprintf(i8* %233, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.5, i64 0, i64 0), i32 %234)
  %236 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %237 = getelementptr inbounds [64 x i8], [64 x i8]* %7, i64 0, i64 0
  %238 = call i64 @find_var(%struct.TYPE_21__* %236, i8* %237)
  %239 = icmp ne i64 %238, 0
  br i1 %239, label %240, label %244

240:                                              ; preds = %232
  %241 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %242 = load i32, i32* %8, align 4
  %243 = call i32 @diva_fax_event(%struct.TYPE_20__* %241, i32 %242)
  store i32 %243, i32* %3, align 4
  br label %410

244:                                              ; preds = %232
  br label %245

245:                                              ; preds = %244
  %246 = load i32, i32* %8, align 4
  %247 = add nsw i32 %246, 1
  store i32 %247, i32* %8, align 4
  br label %226

248:                                              ; preds = %226
  %249 = load i8*, i8** %6, align 8
  %250 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %251 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %250, i32 0, i32 0
  %252 = load i32, i32* %251, align 4
  %253 = call i32 @strncmp(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i64 0, i64 0), i8* %249, i32 %252)
  %254 = icmp ne i32 %253, 0
  br i1 %254, label %267, label %255

255:                                              ; preds = %248
  %256 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %257 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %256, i32 0, i32 1
  %258 = load i32, i32* %257, align 4
  %259 = icmp eq i32 %258, 1
  br i1 %259, label %260, label %263

260:                                              ; preds = %255
  %261 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %262 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %261, i32 0, i32 1
  store i32 2, i32* %262, align 4
  br label %266

263:                                              ; preds = %255
  %264 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %265 = call i32 @diva_trace_error(%struct.TYPE_20__* %264, i32 1, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i64 0, i64 0), i32 0)
  br label %266

266:                                              ; preds = %263, %260
  store i32 0, i32* %3, align 4
  br label %410

267:                                              ; preds = %248
  %268 = load i8*, i8** %6, align 8
  %269 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %270 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %269, i32 0, i32 0
  %271 = load i32, i32* %270, align 4
  %272 = call i32 @strncmp(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.7, i64 0, i64 0), i8* %268, i32 %271)
  %273 = icmp ne i32 %272, 0
  br i1 %273, label %298, label %274

274:                                              ; preds = %267
  %275 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %276 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %277 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %276, i32 0, i32 4
  %278 = load %struct.TYPE_19__*, %struct.TYPE_19__** %277, align 8
  %279 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %278, i64 0
  %280 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %279, i32 0, i32 0
  %281 = load %struct.TYPE_18__*, %struct.TYPE_18__** %280, align 8
  %282 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %281, i32 0, i32 1
  %283 = load i32*, i32** %282, align 8
  %284 = getelementptr inbounds i32, i32* %283, i64 0
  %285 = call i32 @diva_strace_read_asz(%struct.TYPE_21__* %275, i32* %284)
  %286 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %287 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %286, i32 0, i32 2
  %288 = load i32, i32* %287, align 8
  %289 = icmp eq i32 %288, 1
  br i1 %289, label %290, label %293

290:                                              ; preds = %274
  %291 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %292 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %291, i32 0, i32 2
  store i32 2, i32* %292, align 8
  br label %297

293:                                              ; preds = %274
  %294 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %295 = load i32, i32* @DIVA_SUPER_TRACE_INTERFACE_CHANGE, align 4
  %296 = call i32 @diva_trace_notify_user(%struct.TYPE_20__* %294, i32 0, i32 %295)
  br label %297

297:                                              ; preds = %293, %290
  store i32 0, i32* %3, align 4
  br label %410

298:                                              ; preds = %267
  %299 = load i8*, i8** %6, align 8
  %300 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %301 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %300, i32 0, i32 0
  %302 = load i32, i32* %301, align 4
  %303 = call i32 @strncmp(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.8, i64 0, i64 0), i8* %299, i32 %302)
  %304 = icmp ne i32 %303, 0
  br i1 %304, label %375, label %305

305:                                              ; preds = %298
  %306 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %307 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %306, i32 0, i32 4
  %308 = load %struct.TYPE_19__*, %struct.TYPE_19__** %307, align 8
  %309 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %308, i64 0
  %310 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %309, i32 0, i32 0
  %311 = load %struct.TYPE_18__*, %struct.TYPE_18__** %310, align 8
  %312 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %311, i32 0, i32 0
  %313 = load i8*, i8** %312, align 8
  %314 = getelementptr inbounds i8, i8* %313, i64 0
  store i8* %314, i8** %12, align 8
  %315 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %316 = call i64 @diva_strace_read_uint(%struct.TYPE_21__* %315, i64* %13)
  %317 = icmp ne i64 %316, 0
  br i1 %317, label %318, label %319

318:                                              ; preds = %305
  store i32 -1, i32* %3, align 4
  br label %410

319:                                              ; preds = %305
  %320 = load i64, i64* %13, align 8
  switch i64 %320, label %357 [
    i64 0, label %321
    i64 1, label %324
    i64 2, label %327
    i64 3, label %330
    i64 4, label %333
    i64 5, label %336
    i64 6, label %339
    i64 7, label %342
    i64 8, label %345
    i64 9, label %348
    i64 10, label %351
    i64 11, label %354
  ]

321:                                              ; preds = %319
  %322 = load i8*, i8** %12, align 8
  %323 = call i32 @strcpy(i8* %322, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i64 0, i64 0))
  br label %362

324:                                              ; preds = %319
  %325 = load i8*, i8** %12, align 8
  %326 = call i32 @strcpy(i8* %325, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.10, i64 0, i64 0))
  br label %362

327:                                              ; preds = %319
  %328 = load i8*, i8** %12, align 8
  %329 = call i32 @strcpy(i8* %328, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.11, i64 0, i64 0))
  br label %362

330:                                              ; preds = %319
  %331 = load i8*, i8** %12, align 8
  %332 = call i32 @strcpy(i8* %331, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.12, i64 0, i64 0))
  br label %362

333:                                              ; preds = %319
  %334 = load i8*, i8** %12, align 8
  %335 = call i32 @strcpy(i8* %334, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.13, i64 0, i64 0))
  br label %362

336:                                              ; preds = %319
  %337 = load i8*, i8** %12, align 8
  %338 = call i32 @strcpy(i8* %337, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.14, i64 0, i64 0))
  br label %362

339:                                              ; preds = %319
  %340 = load i8*, i8** %12, align 8
  %341 = call i32 @strcpy(i8* %340, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.12, i64 0, i64 0))
  br label %362

342:                                              ; preds = %319
  %343 = load i8*, i8** %12, align 8
  %344 = call i32 @strcpy(i8* %343, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.15, i64 0, i64 0))
  br label %362

345:                                              ; preds = %319
  %346 = load i8*, i8** %12, align 8
  %347 = call i32 @strcpy(i8* %346, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.16, i64 0, i64 0))
  br label %362

348:                                              ; preds = %319
  %349 = load i8*, i8** %12, align 8
  %350 = call i32 @strcpy(i8* %349, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.17, i64 0, i64 0))
  br label %362

351:                                              ; preds = %319
  %352 = load i8*, i8** %12, align 8
  %353 = call i32 @strcpy(i8* %352, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.18, i64 0, i64 0))
  br label %362

354:                                              ; preds = %319
  %355 = load i8*, i8** %12, align 8
  %356 = call i32 @strcpy(i8* %355, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.19, i64 0, i64 0))
  br label %362

357:                                              ; preds = %319
  %358 = load i8*, i8** %12, align 8
  %359 = load i64, i64* %13, align 8
  %360 = trunc i64 %359 to i32
  %361 = call i32 @sprintf(i8* %358, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.20, i64 0, i64 0), i32 %360)
  br label %362

362:                                              ; preds = %357, %354, %351, %348, %345, %342, %339, %336, %333, %330, %327, %324, %321
  %363 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %364 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %363, i32 0, i32 3
  %365 = load i32, i32* %364, align 4
  %366 = icmp eq i32 %365, 1
  br i1 %366, label %367, label %370

367:                                              ; preds = %362
  %368 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %369 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %368, i32 0, i32 3
  store i32 2, i32* %369, align 4
  br label %374

370:                                              ; preds = %362
  %371 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %372 = load i32, i32* @DIVA_SUPER_TRACE_INTERFACE_CHANGE, align 4
  %373 = call i32 @diva_trace_notify_user(%struct.TYPE_20__* %371, i32 0, i32 %372)
  br label %374

374:                                              ; preds = %370, %367
  store i32 0, i32* %3, align 4
  br label %410

375:                                              ; preds = %298
  %376 = load i8*, i8** %6, align 8
  %377 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %378 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %377, i32 0, i32 0
  %379 = load i32, i32* %378, align 4
  %380 = call i32 @strncmp(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.21, i64 0, i64 0), i8* %376, i32 %379)
  %381 = icmp ne i32 %380, 0
  br i1 %381, label %382, label %389

382:                                              ; preds = %375
  %383 = load i8*, i8** %6, align 8
  %384 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %385 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %384, i32 0, i32 0
  %386 = load i32, i32* %385, align 4
  %387 = call i32 @strncmp(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.22, i64 0, i64 0), i8* %383, i32 %386)
  %388 = icmp ne i32 %387, 0
  br i1 %388, label %392, label %389

389:                                              ; preds = %382, %375
  %390 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %391 = call i32 @SuperTraceGetIncomingCallStatistics(%struct.TYPE_20__* %390)
  store i32 %391, i32* %3, align 4
  br label %410

392:                                              ; preds = %382
  %393 = load i8*, i8** %6, align 8
  %394 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %395 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %394, i32 0, i32 0
  %396 = load i32, i32* %395, align 4
  %397 = call i32 @strncmp(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.23, i64 0, i64 0), i8* %393, i32 %396)
  %398 = icmp ne i32 %397, 0
  br i1 %398, label %399, label %406

399:                                              ; preds = %392
  %400 = load i8*, i8** %6, align 8
  %401 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %402 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %401, i32 0, i32 0
  %403 = load i32, i32* %402, align 4
  %404 = call i32 @strncmp(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.24, i64 0, i64 0), i8* %400, i32 %403)
  %405 = icmp ne i32 %404, 0
  br i1 %405, label %409, label %406

406:                                              ; preds = %399, %392
  %407 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %408 = call i32 @SuperTraceGetOutgoingCallStatistics(%struct.TYPE_20__* %407)
  store i32 %408, i32* %3, align 4
  br label %410

409:                                              ; preds = %399
  store i32 -1, i32* %3, align 4
  br label %410

410:                                              ; preds = %409, %406, %389, %374, %318, %297, %266, %240, %217, %194, %178, %177, %171, %160, %124, %123, %117, %106, %70, %69, %63, %52
  %411 = load i32, i32* %3, align 4
  ret i32 %411
}

declare dso_local i32 @strncmp(i8*, i8*, i32) #1

declare dso_local i32 @diva_trace_read_variable(%struct.TYPE_21__*, i64*) #1

declare dso_local i32 @diva_line_event(%struct.TYPE_20__*, i32) #1

declare dso_local i32 @diva_fax_event(%struct.TYPE_20__*, i32) #1

declare dso_local i32 @diva_modem_event(%struct.TYPE_20__*, i32) #1

declare dso_local i32 @sprintf(i8*, i8*, i32) #1

declare dso_local i64 @find_var(%struct.TYPE_21__*, i8*) #1

declare dso_local i32 @diva_trace_error(%struct.TYPE_20__*, i32, i8*, i32) #1

declare dso_local i32 @diva_strace_read_asz(%struct.TYPE_21__*, i32*) #1

declare dso_local i32 @diva_trace_notify_user(%struct.TYPE_20__*, i32, i32) #1

declare dso_local i64 @diva_strace_read_uint(%struct.TYPE_21__*, i64*) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

declare dso_local i32 @SuperTraceGetIncomingCallStatistics(%struct.TYPE_20__*) #1

declare dso_local i32 @SuperTraceGetOutgoingCallStatistics(%struct.TYPE_20__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
