; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/gigaset/extr_i4l.c_gigaset_isdn_icall.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/gigaset/extr_i4l.c_gigaset_isdn_icall.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.at_state_t = type { i64*, %struct.bc_state*, %struct.cardstate* }
%struct.bc_state = type { i32, i64 }
%struct.cardstate = type { i32, %struct.TYPE_8__, i32 }
%struct.TYPE_8__ = type { i32 (%struct.TYPE_9__*)* }
%struct.TYPE_9__ = type { i32, i64, i32, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32, i64*, i64*, i64, i64 }

@STR_ZBC = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [5 x i8] c"8890\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"8090A3\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"9090A3\00", align 1
@.str.3 = private unnamed_addr constant [34 x i8] c"RING ignored - unsupported BC %s\0A\00", align 1
@ICALL_IGNORE = common dso_local global i32 0, align 4
@STR_NMBR = common dso_local global i64 0, align 8
@STR_ZCPN = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [30 x i8] c"no channel for incoming call\0A\00", align 1
@ISDN_STAT_ICALLW = common dso_local global i32 0, align 4
@DEBUG_CMD = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [14 x i8] c"Sending ICALL\00", align 1
@ISDN_STAT_ICALL = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [13 x i8] c"Response: %d\00", align 1
@CHS_NOTIFY_LL = common dso_local global i32 0, align 4
@ICALL_ACCEPT = common dso_local global i32 0, align 4
@ICALL_REJECT = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [53 x i8] c"LL requested unsupported feature: Incomplete Number\0A\00", align 1
@.str.8 = private unnamed_addr constant [51 x i8] c"LL requested unsupported feature: Call Deflection\0A\00", align 1
@.str.9 = private unnamed_addr constant [22 x i8] c"LL error %d on ICALL\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @gigaset_isdn_icall(%struct.at_state_t* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.at_state_t*, align 8
  %4 = alloca %struct.cardstate*, align 8
  %5 = alloca %struct.bc_state*, align 8
  %6 = alloca %struct.TYPE_9__, align 8
  %7 = alloca i32, align 4
  store %struct.at_state_t* %0, %struct.at_state_t** %3, align 8
  %8 = load %struct.at_state_t*, %struct.at_state_t** %3, align 8
  %9 = getelementptr inbounds %struct.at_state_t, %struct.at_state_t* %8, i32 0, i32 2
  %10 = load %struct.cardstate*, %struct.cardstate** %9, align 8
  store %struct.cardstate* %10, %struct.cardstate** %4, align 8
  %11 = load %struct.at_state_t*, %struct.at_state_t** %3, align 8
  %12 = getelementptr inbounds %struct.at_state_t, %struct.at_state_t* %11, i32 0, i32 1
  %13 = load %struct.bc_state*, %struct.bc_state** %12, align 8
  store %struct.bc_state* %13, %struct.bc_state** %5, align 8
  %14 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %6, i32 0, i32 3
  %15 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 0
  store i32 0, i32* %16, align 8
  %17 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %6, i32 0, i32 3
  %18 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 1
  store i32 0, i32* %19, align 4
  %20 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %6, i32 0, i32 3
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 5
  store i64 0, i64* %22, align 8
  %23 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %6, i32 0, i32 3
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 4
  store i64 0, i64* %25, align 8
  %26 = load %struct.at_state_t*, %struct.at_state_t** %3, align 8
  %27 = getelementptr inbounds %struct.at_state_t, %struct.at_state_t* %26, i32 0, i32 0
  %28 = load i64*, i64** %27, align 8
  %29 = load i64, i64* @STR_ZBC, align 8
  %30 = getelementptr inbounds i64, i64* %28, i64 %29
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %37, label %33

33:                                               ; preds = %1
  %34 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %6, i32 0, i32 3
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 0
  store i32 1, i32* %36, align 8
  br label %94

37:                                               ; preds = %1
  %38 = load %struct.at_state_t*, %struct.at_state_t** %3, align 8
  %39 = getelementptr inbounds %struct.at_state_t, %struct.at_state_t* %38, i32 0, i32 0
  %40 = load i64*, i64** %39, align 8
  %41 = load i64, i64* @STR_ZBC, align 8
  %42 = getelementptr inbounds i64, i64* %40, i64 %41
  %43 = load i64, i64* %42, align 8
  %44 = call i32 @strcmp(i64 %43, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %50, label %46

46:                                               ; preds = %37
  %47 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %6, i32 0, i32 3
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 0
  store i32 7, i32* %49, align 8
  br label %93

50:                                               ; preds = %37
  %51 = load %struct.at_state_t*, %struct.at_state_t** %3, align 8
  %52 = getelementptr inbounds %struct.at_state_t, %struct.at_state_t* %51, i32 0, i32 0
  %53 = load i64*, i64** %52, align 8
  %54 = load i64, i64* @STR_ZBC, align 8
  %55 = getelementptr inbounds i64, i64* %53, i64 %54
  %56 = load i64, i64* %55, align 8
  %57 = call i32 @strcmp(i64 %56, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %63, label %59

59:                                               ; preds = %50
  %60 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %6, i32 0, i32 3
  %61 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 0
  store i32 1, i32* %62, align 8
  br label %92

63:                                               ; preds = %50
  %64 = load %struct.at_state_t*, %struct.at_state_t** %3, align 8
  %65 = getelementptr inbounds %struct.at_state_t, %struct.at_state_t* %64, i32 0, i32 0
  %66 = load i64*, i64** %65, align 8
  %67 = load i64, i64* @STR_ZBC, align 8
  %68 = getelementptr inbounds i64, i64* %66, i64 %67
  %69 = load i64, i64* %68, align 8
  %70 = call i32 @strcmp(i64 %69, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %79, label %72

72:                                               ; preds = %63
  %73 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %6, i32 0, i32 3
  %74 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %74, i32 0, i32 0
  store i32 1, i32* %75, align 8
  %76 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %6, i32 0, i32 3
  %77 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %77, i32 0, i32 1
  store i32 2, i32* %78, align 4
  br label %91

79:                                               ; preds = %63
  %80 = load %struct.cardstate*, %struct.cardstate** %4, align 8
  %81 = getelementptr inbounds %struct.cardstate, %struct.cardstate* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = load %struct.at_state_t*, %struct.at_state_t** %3, align 8
  %84 = getelementptr inbounds %struct.at_state_t, %struct.at_state_t* %83, i32 0, i32 0
  %85 = load i64*, i64** %84, align 8
  %86 = load i64, i64* @STR_ZBC, align 8
  %87 = getelementptr inbounds i64, i64* %85, i64 %86
  %88 = load i64, i64* %87, align 8
  %89 = call i32 (i32, i8*, ...) @dev_warn(i32 %82, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0), i64 %88)
  %90 = load i32, i32* @ICALL_IGNORE, align 4
  store i32 %90, i32* %2, align 4
  br label %222

91:                                               ; preds = %72
  br label %92

92:                                               ; preds = %91, %59
  br label %93

93:                                               ; preds = %92, %46
  br label %94

94:                                               ; preds = %93, %33
  %95 = load %struct.at_state_t*, %struct.at_state_t** %3, align 8
  %96 = getelementptr inbounds %struct.at_state_t, %struct.at_state_t* %95, i32 0, i32 0
  %97 = load i64*, i64** %96, align 8
  %98 = load i64, i64* @STR_NMBR, align 8
  %99 = getelementptr inbounds i64, i64* %97, i64 %98
  %100 = load i64, i64* %99, align 8
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %119

102:                                              ; preds = %94
  %103 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %6, i32 0, i32 3
  %104 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %104, i32 0, i32 3
  %106 = load i64*, i64** %105, align 8
  %107 = load %struct.at_state_t*, %struct.at_state_t** %3, align 8
  %108 = getelementptr inbounds %struct.at_state_t, %struct.at_state_t* %107, i32 0, i32 0
  %109 = load i64*, i64** %108, align 8
  %110 = load i64, i64* @STR_NMBR, align 8
  %111 = getelementptr inbounds i64, i64* %109, i64 %110
  %112 = load i64, i64* %111, align 8
  %113 = call i32 @strncpy(i64* %106, i64 %112, i32 7)
  %114 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %6, i32 0, i32 3
  %115 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %114, i32 0, i32 0
  %116 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %115, i32 0, i32 3
  %117 = load i64*, i64** %116, align 8
  %118 = getelementptr inbounds i64, i64* %117, i64 7
  store i64 0, i64* %118, align 8
  br label %125

119:                                              ; preds = %94
  %120 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %6, i32 0, i32 3
  %121 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %120, i32 0, i32 0
  %122 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %121, i32 0, i32 3
  %123 = load i64*, i64** %122, align 8
  %124 = getelementptr inbounds i64, i64* %123, i64 0
  store i64 0, i64* %124, align 8
  br label %125

125:                                              ; preds = %119, %102
  %126 = load %struct.at_state_t*, %struct.at_state_t** %3, align 8
  %127 = getelementptr inbounds %struct.at_state_t, %struct.at_state_t* %126, i32 0, i32 0
  %128 = load i64*, i64** %127, align 8
  %129 = load i64, i64* @STR_ZCPN, align 8
  %130 = getelementptr inbounds i64, i64* %128, i64 %129
  %131 = load i64, i64* %130, align 8
  %132 = icmp ne i64 %131, 0
  br i1 %132, label %133, label %150

133:                                              ; preds = %125
  %134 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %6, i32 0, i32 3
  %135 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %134, i32 0, i32 0
  %136 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %135, i32 0, i32 2
  %137 = load i64*, i64** %136, align 8
  %138 = load %struct.at_state_t*, %struct.at_state_t** %3, align 8
  %139 = getelementptr inbounds %struct.at_state_t, %struct.at_state_t* %138, i32 0, i32 0
  %140 = load i64*, i64** %139, align 8
  %141 = load i64, i64* @STR_ZCPN, align 8
  %142 = getelementptr inbounds i64, i64* %140, i64 %141
  %143 = load i64, i64* %142, align 8
  %144 = call i32 @strncpy(i64* %137, i64 %143, i32 7)
  %145 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %6, i32 0, i32 3
  %146 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %145, i32 0, i32 0
  %147 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %146, i32 0, i32 2
  %148 = load i64*, i64** %147, align 8
  %149 = getelementptr inbounds i64, i64* %148, i64 7
  store i64 0, i64* %149, align 8
  br label %156

150:                                              ; preds = %125
  %151 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %6, i32 0, i32 3
  %152 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %151, i32 0, i32 0
  %153 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %152, i32 0, i32 2
  %154 = load i64*, i64** %153, align 8
  %155 = getelementptr inbounds i64, i64* %154, i64 0
  store i64 0, i64* %155, align 8
  br label %156

156:                                              ; preds = %150, %133
  %157 = load %struct.bc_state*, %struct.bc_state** %5, align 8
  %158 = icmp ne %struct.bc_state* %157, null
  br i1 %158, label %167, label %159

159:                                              ; preds = %156
  %160 = load %struct.cardstate*, %struct.cardstate** %4, align 8
  %161 = getelementptr inbounds %struct.cardstate, %struct.cardstate* %160, i32 0, i32 0
  %162 = load i32, i32* %161, align 8
  %163 = call i32 @dev_notice(i32 %162, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i64 0, i64 0))
  %164 = load i32, i32* @ISDN_STAT_ICALLW, align 4
  %165 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %6, i32 0, i32 2
  store i32 %164, i32* %165, align 8
  %166 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %6, i32 0, i32 1
  store i64 0, i64* %166, align 8
  br label %176

167:                                              ; preds = %156
  %168 = load i32, i32* @DEBUG_CMD, align 4
  %169 = call i32 (i32, i8*, ...) @gig_dbg(i32 %168, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i64 0, i64 0))
  %170 = load i32, i32* @ISDN_STAT_ICALL, align 4
  %171 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %6, i32 0, i32 2
  store i32 %170, i32* %171, align 8
  %172 = load %struct.bc_state*, %struct.bc_state** %5, align 8
  %173 = getelementptr inbounds %struct.bc_state, %struct.bc_state* %172, i32 0, i32 1
  %174 = load i64, i64* %173, align 8
  %175 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %6, i32 0, i32 1
  store i64 %174, i64* %175, align 8
  br label %176

176:                                              ; preds = %167, %159
  %177 = load %struct.cardstate*, %struct.cardstate** %4, align 8
  %178 = getelementptr inbounds %struct.cardstate, %struct.cardstate* %177, i32 0, i32 2
  %179 = load i32, i32* %178, align 8
  %180 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %6, i32 0, i32 0
  store i32 %179, i32* %180, align 8
  %181 = load %struct.cardstate*, %struct.cardstate** %4, align 8
  %182 = getelementptr inbounds %struct.cardstate, %struct.cardstate* %181, i32 0, i32 1
  %183 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %182, i32 0, i32 0
  %184 = load i32 (%struct.TYPE_9__*)*, i32 (%struct.TYPE_9__*)** %183, align 8
  %185 = call i32 %184(%struct.TYPE_9__* %6)
  store i32 %185, i32* %7, align 4
  %186 = load i32, i32* @DEBUG_CMD, align 4
  %187 = load i32, i32* %7, align 4
  %188 = call i32 (i32, i8*, ...) @gig_dbg(i32 %186, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i64 0, i64 0), i32 %187)
  %189 = load i32, i32* %7, align 4
  switch i32 %189, label %215 [
    i32 0, label %190
    i32 1, label %192
    i32 2, label %199
    i32 3, label %201
    i32 4, label %207
    i32 5, label %209
  ]

190:                                              ; preds = %176
  %191 = load i32, i32* @ICALL_IGNORE, align 4
  store i32 %191, i32* %2, align 4
  br label %222

192:                                              ; preds = %176
  %193 = load i32, i32* @CHS_NOTIFY_LL, align 4
  %194 = load %struct.bc_state*, %struct.bc_state** %5, align 8
  %195 = getelementptr inbounds %struct.bc_state, %struct.bc_state* %194, i32 0, i32 0
  %196 = load i32, i32* %195, align 8
  %197 = or i32 %196, %193
  store i32 %197, i32* %195, align 8
  %198 = load i32, i32* @ICALL_ACCEPT, align 4
  store i32 %198, i32* %2, align 4
  br label %222

199:                                              ; preds = %176
  %200 = load i32, i32* @ICALL_REJECT, align 4
  store i32 %200, i32* %2, align 4
  br label %222

201:                                              ; preds = %176
  %202 = load %struct.cardstate*, %struct.cardstate** %4, align 8
  %203 = getelementptr inbounds %struct.cardstate, %struct.cardstate* %202, i32 0, i32 0
  %204 = load i32, i32* %203, align 8
  %205 = call i32 (i32, i8*, ...) @dev_warn(i32 %204, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.7, i64 0, i64 0))
  %206 = load i32, i32* @ICALL_IGNORE, align 4
  store i32 %206, i32* %2, align 4
  br label %222

207:                                              ; preds = %176
  %208 = load i32, i32* @ICALL_ACCEPT, align 4
  store i32 %208, i32* %2, align 4
  br label %222

209:                                              ; preds = %176
  %210 = load %struct.cardstate*, %struct.cardstate** %4, align 8
  %211 = getelementptr inbounds %struct.cardstate, %struct.cardstate* %210, i32 0, i32 0
  %212 = load i32, i32* %211, align 8
  %213 = call i32 (i32, i8*, ...) @dev_warn(i32 %212, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.8, i64 0, i64 0))
  %214 = load i32, i32* @ICALL_IGNORE, align 4
  store i32 %214, i32* %2, align 4
  br label %222

215:                                              ; preds = %176
  %216 = load %struct.cardstate*, %struct.cardstate** %4, align 8
  %217 = getelementptr inbounds %struct.cardstate, %struct.cardstate* %216, i32 0, i32 0
  %218 = load i32, i32* %217, align 8
  %219 = load i32, i32* %7, align 4
  %220 = call i32 @dev_err(i32 %218, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.9, i64 0, i64 0), i32 %219)
  %221 = load i32, i32* @ICALL_IGNORE, align 4
  store i32 %221, i32* %2, align 4
  br label %222

222:                                              ; preds = %215, %209, %207, %201, %199, %192, %190, %79
  %223 = load i32, i32* %2, align 4
  ret i32 %223
}

declare dso_local i32 @strcmp(i64, i8*) #1

declare dso_local i32 @dev_warn(i32, i8*, ...) #1

declare dso_local i32 @strncpy(i64*, i64, i32) #1

declare dso_local i32 @dev_notice(i32, i8*) #1

declare dso_local i32 @gig_dbg(i32, i8*, ...) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
