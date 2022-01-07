; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/aic7xxx/extr_aic79xx_core.c_ahd_parse_msg.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/aic7xxx/extr_aic79xx_core.c_ahd_parse_msg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ahd_softc = type { i32*, i32, i32, i32*, i64, i32, %struct.ahd_tmode_tstate** }
%struct.ahd_tmode_tstate = type { %struct.ahd_tmode_lstate** }
%struct.ahd_tmode_lstate = type { i32 }
%struct.ahd_devinfo = type { i32, i64, i32, i32, i32 }
%struct.ahd_initiator_tinfo = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@MSGLOOP_IN_PROG = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@MSGLOOP_TERMINATED = common dso_local global i32 0, align 4
@MSGLOOP_MSGCOMPLETE = common dso_local global i32 0, align 4
@MSG_EXT_SDTR_LEN = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@bootverbose = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [85 x i8] c"(%s:%c:%d:%d): Received SDTR period %x, offset %x\0A\09Filtered to period %x, offset %x\0A\00", align 1
@AHD_TRANS_ACTIVE = common dso_local global i32 0, align 4
@AHD_TRANS_GOAL = common dso_local global i32 0, align 4
@AHDMSG_EXT = common dso_local global i32 0, align 4
@ROLE_INITIATOR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [38 x i8] c"(%s:%c:%d:%d): Target Initiated SDTR\0A\00", align 1
@MSG_EXT_WDTR_LEN = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [48 x i8] c"(%s:%c:%d:%d): Received WDTR %x filtered to %x\0A\00", align 1
@.str.3 = private unnamed_addr constant [57 x i8] c"(%s:%c:%d:%d): requested %dBit transfers.  Rejecting...\0A\00", align 1
@.str.4 = private unnamed_addr constant [38 x i8] c"(%s:%c:%d:%d): Target Initiated WDTR\0A\00", align 1
@AHD_NEG_ALWAYS = common dso_local global i32 0, align 4
@MSG_EXT_PPR_LEN = common dso_local global i32 0, align 4
@MSG_EXT_PPR_DT_REQ = common dso_local global i32 0, align 4
@MSG_EXT_PPR_QAS_REQ = common dso_local global i32 0, align 4
@ROLE_TARGET = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [37 x i8] c"(%s:%c:%d:%d): Target Initiated PPR\0A\00", align 1
@.str.6 = private unnamed_addr constant [40 x i8] c"(%s:%c:%d:%d): Initiator Initiated PPR\0A\00", align 1
@.str.7 = private unnamed_addr constant [127 x i8] c"(%s:%c:%d:%d): Received PPR width %x, period %x, offset %x,options %x\0A\09Filtered to width %x, period %x, offset %x, options %x\0A\00", align 1
@MSG_FLAG_EXPECT_QASREJ_BUSFREE = common dso_local global i32 0, align 4
@AHD_SHOW_MESSAGES = common dso_local global i32 0, align 4
@CAM_BDR_SENT = common dso_local global i32 0, align 4
@CAM_LUN_WILDCARD = common dso_local global i32 0, align 4
@CAM_REQ_ABORTED = common dso_local global i32 0, align 4
@INITIATOR_TAG = common dso_local global i32 0, align 4
@SCB_LIST_NULL = common dso_local global i32 0, align 4
@SCSISIGI = common dso_local global i32 0, align 4
@ahd_debug = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ahd_softc*, %struct.ahd_devinfo*)* @ahd_parse_msg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ahd_parse_msg(%struct.ahd_softc* %0, %struct.ahd_devinfo* %1) #0 {
  %3 = alloca %struct.ahd_softc*, align 8
  %4 = alloca %struct.ahd_devinfo*, align 8
  %5 = alloca %struct.ahd_initiator_tinfo*, align 8
  %6 = alloca %struct.ahd_tmode_tstate*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  store %struct.ahd_softc* %0, %struct.ahd_softc** %3, align 8
  store %struct.ahd_devinfo* %1, %struct.ahd_devinfo** %4, align 8
  %24 = load i32, i32* @MSGLOOP_IN_PROG, align 4
  store i32 %24, i32* %8, align 4
  %25 = load i32, i32* @FALSE, align 4
  store i32 %25, i32* %9, align 4
  %26 = load i32, i32* @FALSE, align 4
  store i32 %26, i32* %7, align 4
  %27 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %28 = load %struct.ahd_devinfo*, %struct.ahd_devinfo** %4, align 8
  %29 = getelementptr inbounds %struct.ahd_devinfo, %struct.ahd_devinfo* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load %struct.ahd_devinfo*, %struct.ahd_devinfo** %4, align 8
  %32 = getelementptr inbounds %struct.ahd_devinfo, %struct.ahd_devinfo* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = load %struct.ahd_devinfo*, %struct.ahd_devinfo** %4, align 8
  %35 = getelementptr inbounds %struct.ahd_devinfo, %struct.ahd_devinfo* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 8
  %37 = call %struct.ahd_initiator_tinfo* @ahd_fetch_transinfo(%struct.ahd_softc* %27, i32 %30, i64 %33, i32 %36, %struct.ahd_tmode_tstate** %6)
  store %struct.ahd_initiator_tinfo* %37, %struct.ahd_initiator_tinfo** %5, align 8
  %38 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %39 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %38, i32 0, i32 0
  %40 = load i32*, i32** %39, align 8
  %41 = getelementptr inbounds i32, i32* %40, i64 0
  %42 = load i32, i32* %41, align 4
  switch i32 %42, label %542 [
    i32 139, label %43
    i32 129, label %43
    i32 140, label %43
    i32 130, label %43
    i32 134, label %43
    i32 133, label %45
    i32 132, label %49
    i32 138, label %51
    i32 131, label %535
    i32 128, label %541
  ]

43:                                               ; preds = %2, %2, %2, %2, %2
  %44 = load i32, i32* @MSGLOOP_TERMINATED, align 4
  store i32 %44, i32* %8, align 4
  br label %544

45:                                               ; preds = %2
  %46 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %47 = load %struct.ahd_devinfo*, %struct.ahd_devinfo** %4, align 8
  %48 = call i32 @ahd_handle_msg_reject(%struct.ahd_softc* %46, %struct.ahd_devinfo* %47)
  store i32 %48, i32* %9, align 4
  br label %49

49:                                               ; preds = %2, %45
  %50 = load i32, i32* @MSGLOOP_MSGCOMPLETE, align 4
  store i32 %50, i32* %8, align 4
  br label %544

51:                                               ; preds = %2
  %52 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %53 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 8
  %55 = icmp slt i32 %54, 2
  br i1 %55, label %56, label %57

56:                                               ; preds = %51
  br label %544

57:                                               ; preds = %51
  %58 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %59 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %58, i32 0, i32 0
  %60 = load i32*, i32** %59, align 8
  %61 = getelementptr inbounds i32, i32* %60, i64 2
  %62 = load i32, i32* %61, align 4
  switch i32 %62, label %532 [
    i32 136, label %63
    i32 135, label %192
    i32 137, label %339
  ]

63:                                               ; preds = %57
  %64 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %65 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %64, i32 0, i32 0
  %66 = load i32*, i32** %65, align 8
  %67 = getelementptr inbounds i32, i32* %66, i64 1
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* @MSG_EXT_SDTR_LEN, align 4
  %70 = icmp ne i32 %68, %69
  br i1 %70, label %71, label %73

71:                                               ; preds = %63
  %72 = load i32, i32* @TRUE, align 4
  store i32 %72, i32* %7, align 4
  br label %534

73:                                               ; preds = %63
  %74 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %75 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 8
  %77 = load i32, i32* @MSG_EXT_SDTR_LEN, align 4
  %78 = add nsw i32 %77, 1
  %79 = icmp slt i32 %76, %78
  br i1 %79, label %80, label %81

80:                                               ; preds = %73
  br label %534

81:                                               ; preds = %73
  %82 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %83 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %82, i32 0, i32 0
  %84 = load i32*, i32** %83, align 8
  %85 = getelementptr inbounds i32, i32* %84, i64 3
  %86 = load i32, i32* %85, align 4
  store i32 %86, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %87 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %88 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %87, i32 0, i32 0
  %89 = load i32*, i32** %88, align 8
  %90 = getelementptr inbounds i32, i32* %89, i64 4
  %91 = load i32, i32* %90, align 4
  store i32 %91, i32* %12, align 4
  store i32 %91, i32* %13, align 4
  %92 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %93 = load %struct.ahd_initiator_tinfo*, %struct.ahd_initiator_tinfo** %5, align 8
  %94 = load %struct.ahd_devinfo*, %struct.ahd_devinfo** %4, align 8
  %95 = getelementptr inbounds %struct.ahd_devinfo, %struct.ahd_devinfo* %94, i32 0, i32 4
  %96 = load i32, i32* %95, align 8
  %97 = call i32 @ahd_devlimited_syncrate(%struct.ahd_softc* %92, %struct.ahd_initiator_tinfo* %93, i32* %10, i32* %11, i32 %96)
  %98 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %99 = load %struct.ahd_initiator_tinfo*, %struct.ahd_initiator_tinfo** %5, align 8
  %100 = load i32, i32* %10, align 4
  %101 = load %struct.ahd_initiator_tinfo*, %struct.ahd_initiator_tinfo** %5, align 8
  %102 = getelementptr inbounds %struct.ahd_initiator_tinfo, %struct.ahd_initiator_tinfo* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = load %struct.ahd_devinfo*, %struct.ahd_devinfo** %4, align 8
  %106 = getelementptr inbounds %struct.ahd_devinfo, %struct.ahd_devinfo* %105, i32 0, i32 4
  %107 = load i32, i32* %106, align 8
  %108 = call i32 @ahd_validate_offset(%struct.ahd_softc* %98, %struct.ahd_initiator_tinfo* %99, i32 %100, i32* %12, i32 %104, i32 %107)
  %109 = load i32, i32* @bootverbose, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %132

111:                                              ; preds = %81
  %112 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %113 = call i8* @ahd_name(%struct.ahd_softc* %112)
  %114 = load %struct.ahd_devinfo*, %struct.ahd_devinfo** %4, align 8
  %115 = getelementptr inbounds %struct.ahd_devinfo, %struct.ahd_devinfo* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 8
  %117 = load %struct.ahd_devinfo*, %struct.ahd_devinfo** %4, align 8
  %118 = getelementptr inbounds %struct.ahd_devinfo, %struct.ahd_devinfo* %117, i32 0, i32 2
  %119 = load i32, i32* %118, align 8
  %120 = load %struct.ahd_devinfo*, %struct.ahd_devinfo** %4, align 8
  %121 = getelementptr inbounds %struct.ahd_devinfo, %struct.ahd_devinfo* %120, i32 0, i32 3
  %122 = load i32, i32* %121, align 4
  %123 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %124 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %123, i32 0, i32 0
  %125 = load i32*, i32** %124, align 8
  %126 = getelementptr inbounds i32, i32* %125, i64 3
  %127 = load i32, i32* %126, align 4
  %128 = load i32, i32* %13, align 4
  %129 = load i32, i32* %10, align 4
  %130 = load i32, i32* %12, align 4
  %131 = call i32 (i8*, i8*, i32, ...) @printf(i8* getelementptr inbounds ([85 x i8], [85 x i8]* @.str, i64 0, i64 0), i8* %113, i32 %116, i32 %119, i32 %122, i32 %127, i32 %128, i32 %129, i32 %130)
  br label %132

132:                                              ; preds = %111, %81
  %133 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %134 = load %struct.ahd_devinfo*, %struct.ahd_devinfo** %4, align 8
  %135 = load i32, i32* %10, align 4
  %136 = load i32, i32* %12, align 4
  %137 = load i32, i32* %11, align 4
  %138 = load i32, i32* @AHD_TRANS_ACTIVE, align 4
  %139 = load i32, i32* @AHD_TRANS_GOAL, align 4
  %140 = or i32 %138, %139
  %141 = load i32, i32* @TRUE, align 4
  %142 = call i32 @ahd_set_syncrate(%struct.ahd_softc* %133, %struct.ahd_devinfo* %134, i32 %135, i32 %136, i32 %137, i32 %140, i32 %141)
  %143 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %144 = load i32, i32* @AHDMSG_EXT, align 4
  %145 = load i32, i32* @TRUE, align 4
  %146 = call i32 @ahd_sent_msg(%struct.ahd_softc* %143, i32 %144, i32 136, i32 %145)
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %155

148:                                              ; preds = %132
  %149 = load i32, i32* %13, align 4
  %150 = load i32, i32* %12, align 4
  %151 = icmp ne i32 %149, %150
  br i1 %151, label %152, label %154

152:                                              ; preds = %148
  %153 = load i32, i32* @TRUE, align 4
  store i32 %153, i32* %7, align 4
  br label %154

154:                                              ; preds = %152, %148
  br label %190

155:                                              ; preds = %132
  %156 = load i32, i32* @bootverbose, align 4
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %158, label %177

158:                                              ; preds = %155
  %159 = load %struct.ahd_devinfo*, %struct.ahd_devinfo** %4, align 8
  %160 = getelementptr inbounds %struct.ahd_devinfo, %struct.ahd_devinfo* %159, i32 0, i32 4
  %161 = load i32, i32* %160, align 8
  %162 = load i32, i32* @ROLE_INITIATOR, align 4
  %163 = icmp eq i32 %161, %162
  br i1 %163, label %164, label %177

164:                                              ; preds = %158
  %165 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %166 = call i8* @ahd_name(%struct.ahd_softc* %165)
  %167 = load %struct.ahd_devinfo*, %struct.ahd_devinfo** %4, align 8
  %168 = getelementptr inbounds %struct.ahd_devinfo, %struct.ahd_devinfo* %167, i32 0, i32 0
  %169 = load i32, i32* %168, align 8
  %170 = load %struct.ahd_devinfo*, %struct.ahd_devinfo** %4, align 8
  %171 = getelementptr inbounds %struct.ahd_devinfo, %struct.ahd_devinfo* %170, i32 0, i32 2
  %172 = load i32, i32* %171, align 8
  %173 = load %struct.ahd_devinfo*, %struct.ahd_devinfo** %4, align 8
  %174 = getelementptr inbounds %struct.ahd_devinfo, %struct.ahd_devinfo* %173, i32 0, i32 3
  %175 = load i32, i32* %174, align 4
  %176 = call i32 (i8*, i8*, i32, ...) @printf(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i8* %166, i32 %169, i32 %172, i32 %175)
  br label %177

177:                                              ; preds = %164, %158, %155
  %178 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %179 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %178, i32 0, i32 4
  store i64 0, i64* %179, align 8
  %180 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %181 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %180, i32 0, i32 2
  store i32 0, i32* %181, align 4
  %182 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %183 = load %struct.ahd_devinfo*, %struct.ahd_devinfo** %4, align 8
  %184 = load i32, i32* %10, align 4
  %185 = load i32, i32* %12, align 4
  %186 = call i32 @ahd_construct_sdtr(%struct.ahd_softc* %182, %struct.ahd_devinfo* %183, i32 %184, i32 %185)
  %187 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %188 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %187, i32 0, i32 4
  store i64 0, i64* %188, align 8
  %189 = load i32, i32* @TRUE, align 4
  store i32 %189, i32* %9, align 4
  br label %190

190:                                              ; preds = %177, %154
  %191 = load i32, i32* @MSGLOOP_MSGCOMPLETE, align 4
  store i32 %191, i32* %8, align 4
  br label %534

192:                                              ; preds = %57
  %193 = load i32, i32* @FALSE, align 4
  store i32 %193, i32* %16, align 4
  %194 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %195 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %194, i32 0, i32 0
  %196 = load i32*, i32** %195, align 8
  %197 = getelementptr inbounds i32, i32* %196, i64 1
  %198 = load i32, i32* %197, align 4
  %199 = load i32, i32* @MSG_EXT_WDTR_LEN, align 4
  %200 = icmp ne i32 %198, %199
  br i1 %200, label %201, label %203

201:                                              ; preds = %192
  %202 = load i32, i32* @TRUE, align 4
  store i32 %202, i32* %7, align 4
  br label %534

203:                                              ; preds = %192
  %204 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %205 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %204, i32 0, i32 1
  %206 = load i32, i32* %205, align 8
  %207 = load i32, i32* @MSG_EXT_WDTR_LEN, align 4
  %208 = add nsw i32 %207, 1
  %209 = icmp slt i32 %206, %208
  br i1 %209, label %210, label %211

210:                                              ; preds = %203
  br label %534

211:                                              ; preds = %203
  %212 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %213 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %212, i32 0, i32 0
  %214 = load i32*, i32** %213, align 8
  %215 = getelementptr inbounds i32, i32* %214, i64 3
  %216 = load i32, i32* %215, align 4
  store i32 %216, i32* %14, align 4
  %217 = load i32, i32* %14, align 4
  store i32 %217, i32* %15, align 4
  %218 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %219 = load %struct.ahd_initiator_tinfo*, %struct.ahd_initiator_tinfo** %5, align 8
  %220 = load %struct.ahd_devinfo*, %struct.ahd_devinfo** %4, align 8
  %221 = getelementptr inbounds %struct.ahd_devinfo, %struct.ahd_devinfo* %220, i32 0, i32 4
  %222 = load i32, i32* %221, align 8
  %223 = call i32 @ahd_validate_width(%struct.ahd_softc* %218, %struct.ahd_initiator_tinfo* %219, i32* %14, i32 %222)
  %224 = load i32, i32* @bootverbose, align 4
  %225 = icmp ne i32 %224, 0
  br i1 %225, label %226, label %241

226:                                              ; preds = %211
  %227 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %228 = call i8* @ahd_name(%struct.ahd_softc* %227)
  %229 = load %struct.ahd_devinfo*, %struct.ahd_devinfo** %4, align 8
  %230 = getelementptr inbounds %struct.ahd_devinfo, %struct.ahd_devinfo* %229, i32 0, i32 0
  %231 = load i32, i32* %230, align 8
  %232 = load %struct.ahd_devinfo*, %struct.ahd_devinfo** %4, align 8
  %233 = getelementptr inbounds %struct.ahd_devinfo, %struct.ahd_devinfo* %232, i32 0, i32 2
  %234 = load i32, i32* %233, align 8
  %235 = load %struct.ahd_devinfo*, %struct.ahd_devinfo** %4, align 8
  %236 = getelementptr inbounds %struct.ahd_devinfo, %struct.ahd_devinfo* %235, i32 0, i32 3
  %237 = load i32, i32* %236, align 4
  %238 = load i32, i32* %15, align 4
  %239 = load i32, i32* %14, align 4
  %240 = call i32 (i8*, i8*, i32, ...) @printf(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.2, i64 0, i64 0), i8* %228, i32 %231, i32 %234, i32 %237, i32 %238, i32 %239)
  br label %241

241:                                              ; preds = %226, %211
  %242 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %243 = load i32, i32* @AHDMSG_EXT, align 4
  %244 = load i32, i32* @TRUE, align 4
  %245 = call i32 @ahd_sent_msg(%struct.ahd_softc* %242, i32 %243, i32 135, i32 %244)
  %246 = icmp ne i32 %245, 0
  br i1 %246, label %247, label %269

247:                                              ; preds = %241
  %248 = load i32, i32* %15, align 4
  %249 = load i32, i32* %14, align 4
  %250 = icmp sgt i32 %248, %249
  br i1 %250, label %251, label %268

251:                                              ; preds = %247
  %252 = load i32, i32* @TRUE, align 4
  store i32 %252, i32* %7, align 4
  %253 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %254 = call i8* @ahd_name(%struct.ahd_softc* %253)
  %255 = load %struct.ahd_devinfo*, %struct.ahd_devinfo** %4, align 8
  %256 = getelementptr inbounds %struct.ahd_devinfo, %struct.ahd_devinfo* %255, i32 0, i32 0
  %257 = load i32, i32* %256, align 8
  %258 = load %struct.ahd_devinfo*, %struct.ahd_devinfo** %4, align 8
  %259 = getelementptr inbounds %struct.ahd_devinfo, %struct.ahd_devinfo* %258, i32 0, i32 2
  %260 = load i32, i32* %259, align 8
  %261 = load %struct.ahd_devinfo*, %struct.ahd_devinfo** %4, align 8
  %262 = getelementptr inbounds %struct.ahd_devinfo, %struct.ahd_devinfo* %261, i32 0, i32 3
  %263 = load i32, i32* %262, align 4
  %264 = load i32, i32* %14, align 4
  %265 = shl i32 1, %264
  %266 = mul nsw i32 8, %265
  %267 = call i32 (i8*, i8*, i32, ...) @printf(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.3, i64 0, i64 0), i8* %254, i32 %257, i32 %260, i32 %263, i32 %266)
  store i32 0, i32* %14, align 4
  br label %268

268:                                              ; preds = %251, %247
  br label %304

269:                                              ; preds = %241
  %270 = load i32, i32* @bootverbose, align 4
  %271 = icmp ne i32 %270, 0
  br i1 %271, label %272, label %291

272:                                              ; preds = %269
  %273 = load %struct.ahd_devinfo*, %struct.ahd_devinfo** %4, align 8
  %274 = getelementptr inbounds %struct.ahd_devinfo, %struct.ahd_devinfo* %273, i32 0, i32 4
  %275 = load i32, i32* %274, align 8
  %276 = load i32, i32* @ROLE_INITIATOR, align 4
  %277 = icmp eq i32 %275, %276
  br i1 %277, label %278, label %291

278:                                              ; preds = %272
  %279 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %280 = call i8* @ahd_name(%struct.ahd_softc* %279)
  %281 = load %struct.ahd_devinfo*, %struct.ahd_devinfo** %4, align 8
  %282 = getelementptr inbounds %struct.ahd_devinfo, %struct.ahd_devinfo* %281, i32 0, i32 0
  %283 = load i32, i32* %282, align 8
  %284 = load %struct.ahd_devinfo*, %struct.ahd_devinfo** %4, align 8
  %285 = getelementptr inbounds %struct.ahd_devinfo, %struct.ahd_devinfo* %284, i32 0, i32 2
  %286 = load i32, i32* %285, align 8
  %287 = load %struct.ahd_devinfo*, %struct.ahd_devinfo** %4, align 8
  %288 = getelementptr inbounds %struct.ahd_devinfo, %struct.ahd_devinfo* %287, i32 0, i32 3
  %289 = load i32, i32* %288, align 4
  %290 = call i32 (i8*, i8*, i32, ...) @printf(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.4, i64 0, i64 0), i8* %280, i32 %283, i32 %286, i32 %289)
  br label %291

291:                                              ; preds = %278, %272, %269
  %292 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %293 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %292, i32 0, i32 4
  store i64 0, i64* %293, align 8
  %294 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %295 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %294, i32 0, i32 2
  store i32 0, i32* %295, align 4
  %296 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %297 = load %struct.ahd_devinfo*, %struct.ahd_devinfo** %4, align 8
  %298 = load i32, i32* %14, align 4
  %299 = call i32 @ahd_construct_wdtr(%struct.ahd_softc* %296, %struct.ahd_devinfo* %297, i32 %298)
  %300 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %301 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %300, i32 0, i32 4
  store i64 0, i64* %301, align 8
  %302 = load i32, i32* @TRUE, align 4
  store i32 %302, i32* %9, align 4
  %303 = load i32, i32* @TRUE, align 4
  store i32 %303, i32* %16, align 4
  br label %304

304:                                              ; preds = %291, %268
  %305 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %306 = load %struct.ahd_devinfo*, %struct.ahd_devinfo** %4, align 8
  %307 = load %struct.ahd_tmode_tstate*, %struct.ahd_tmode_tstate** %6, align 8
  %308 = load %struct.ahd_initiator_tinfo*, %struct.ahd_initiator_tinfo** %5, align 8
  %309 = load i32, i32* @AHD_NEG_ALWAYS, align 4
  %310 = call i32 @ahd_update_neg_request(%struct.ahd_softc* %305, %struct.ahd_devinfo* %306, %struct.ahd_tmode_tstate* %307, %struct.ahd_initiator_tinfo* %308, i32 %309)
  %311 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %312 = load %struct.ahd_devinfo*, %struct.ahd_devinfo** %4, align 8
  %313 = load i32, i32* %14, align 4
  %314 = load i32, i32* @AHD_TRANS_ACTIVE, align 4
  %315 = load i32, i32* @AHD_TRANS_GOAL, align 4
  %316 = or i32 %314, %315
  %317 = load i32, i32* @TRUE, align 4
  %318 = call i32 @ahd_set_width(%struct.ahd_softc* %311, %struct.ahd_devinfo* %312, i32 %313, i32 %316, i32 %317)
  %319 = load i32, i32* %16, align 4
  %320 = load i32, i32* @FALSE, align 4
  %321 = icmp eq i32 %319, %320
  br i1 %321, label %322, label %337

322:                                              ; preds = %304
  %323 = load i32, i32* %7, align 4
  %324 = load i32, i32* @FALSE, align 4
  %325 = icmp eq i32 %323, %324
  br i1 %325, label %326, label %337

326:                                              ; preds = %322
  %327 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %328 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %327, i32 0, i32 4
  store i64 0, i64* %328, align 8
  %329 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %330 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %329, i32 0, i32 2
  store i32 0, i32* %330, align 4
  %331 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %332 = load %struct.ahd_devinfo*, %struct.ahd_devinfo** %4, align 8
  %333 = call i32 @ahd_build_transfer_msg(%struct.ahd_softc* %331, %struct.ahd_devinfo* %332)
  %334 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %335 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %334, i32 0, i32 4
  store i64 0, i64* %335, align 8
  %336 = load i32, i32* @TRUE, align 4
  store i32 %336, i32* %9, align 4
  br label %337

337:                                              ; preds = %326, %322, %304
  %338 = load i32, i32* @MSGLOOP_MSGCOMPLETE, align 4
  store i32 %338, i32* %8, align 4
  br label %534

339:                                              ; preds = %57
  %340 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %341 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %340, i32 0, i32 0
  %342 = load i32*, i32** %341, align 8
  %343 = getelementptr inbounds i32, i32* %342, i64 1
  %344 = load i32, i32* %343, align 4
  %345 = load i32, i32* @MSG_EXT_PPR_LEN, align 4
  %346 = icmp ne i32 %344, %345
  br i1 %346, label %347, label %349

347:                                              ; preds = %339
  %348 = load i32, i32* @TRUE, align 4
  store i32 %348, i32* %7, align 4
  br label %534

349:                                              ; preds = %339
  %350 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %351 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %350, i32 0, i32 1
  %352 = load i32, i32* %351, align 8
  %353 = load i32, i32* @MSG_EXT_PPR_LEN, align 4
  %354 = add nsw i32 %353, 1
  %355 = icmp slt i32 %352, %354
  br i1 %355, label %356, label %357

356:                                              ; preds = %349
  br label %534

357:                                              ; preds = %349
  %358 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %359 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %358, i32 0, i32 0
  %360 = load i32*, i32** %359, align 8
  %361 = getelementptr inbounds i32, i32* %360, i64 3
  %362 = load i32, i32* %361, align 4
  store i32 %362, i32* %17, align 4
  %363 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %364 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %363, i32 0, i32 0
  %365 = load i32*, i32** %364, align 8
  %366 = getelementptr inbounds i32, i32* %365, i64 5
  %367 = load i32, i32* %366, align 4
  store i32 %367, i32* %18, align 4
  %368 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %369 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %368, i32 0, i32 0
  %370 = load i32*, i32** %369, align 8
  %371 = getelementptr inbounds i32, i32* %370, i64 6
  %372 = load i32, i32* %371, align 4
  store i32 %372, i32* %19, align 4
  %373 = load i32, i32* %19, align 4
  store i32 %373, i32* %21, align 4
  %374 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %375 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %374, i32 0, i32 0
  %376 = load i32*, i32** %375, align 8
  %377 = getelementptr inbounds i32, i32* %376, i64 7
  %378 = load i32, i32* %377, align 4
  store i32 %378, i32* %20, align 4
  %379 = load i32, i32* %20, align 4
  %380 = load i32, i32* @MSG_EXT_PPR_DT_REQ, align 4
  %381 = and i32 %379, %380
  %382 = icmp eq i32 %381, 0
  br i1 %382, label %383, label %387

383:                                              ; preds = %357
  %384 = load i32, i32* %17, align 4
  %385 = icmp sle i32 %384, 9
  br i1 %385, label %386, label %387

386:                                              ; preds = %383
  store i32 0, i32* %18, align 4
  br label %387

387:                                              ; preds = %386, %383, %357
  %388 = load i32, i32* %20, align 4
  store i32 %388, i32* %23, align 4
  %389 = load i32, i32* %18, align 4
  store i32 %389, i32* %22, align 4
  %390 = load i32, i32* %19, align 4
  %391 = icmp eq i32 %390, 0
  br i1 %391, label %392, label %396

392:                                              ; preds = %387
  %393 = load i32, i32* @MSG_EXT_PPR_QAS_REQ, align 4
  %394 = load i32, i32* %20, align 4
  %395 = and i32 %394, %393
  store i32 %395, i32* %20, align 4
  br label %396

396:                                              ; preds = %392, %387
  %397 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %398 = load %struct.ahd_initiator_tinfo*, %struct.ahd_initiator_tinfo** %5, align 8
  %399 = load %struct.ahd_devinfo*, %struct.ahd_devinfo** %4, align 8
  %400 = getelementptr inbounds %struct.ahd_devinfo, %struct.ahd_devinfo* %399, i32 0, i32 4
  %401 = load i32, i32* %400, align 8
  %402 = call i32 @ahd_validate_width(%struct.ahd_softc* %397, %struct.ahd_initiator_tinfo* %398, i32* %19, i32 %401)
  %403 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %404 = load %struct.ahd_initiator_tinfo*, %struct.ahd_initiator_tinfo** %5, align 8
  %405 = load %struct.ahd_devinfo*, %struct.ahd_devinfo** %4, align 8
  %406 = getelementptr inbounds %struct.ahd_devinfo, %struct.ahd_devinfo* %405, i32 0, i32 4
  %407 = load i32, i32* %406, align 8
  %408 = call i32 @ahd_devlimited_syncrate(%struct.ahd_softc* %403, %struct.ahd_initiator_tinfo* %404, i32* %17, i32* %20, i32 %407)
  %409 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %410 = load %struct.ahd_initiator_tinfo*, %struct.ahd_initiator_tinfo** %5, align 8
  %411 = load i32, i32* %17, align 4
  %412 = load i32, i32* %19, align 4
  %413 = load %struct.ahd_devinfo*, %struct.ahd_devinfo** %4, align 8
  %414 = getelementptr inbounds %struct.ahd_devinfo, %struct.ahd_devinfo* %413, i32 0, i32 4
  %415 = load i32, i32* %414, align 8
  %416 = call i32 @ahd_validate_offset(%struct.ahd_softc* %409, %struct.ahd_initiator_tinfo* %410, i32 %411, i32* %18, i32 %412, i32 %415)
  %417 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %418 = load i32, i32* @AHDMSG_EXT, align 4
  %419 = load i32, i32* @TRUE, align 4
  %420 = call i32 @ahd_sent_msg(%struct.ahd_softc* %417, i32 %418, i32 137, i32 %419)
  %421 = icmp ne i32 %420, 0
  br i1 %421, label %422, label %437

422:                                              ; preds = %396
  %423 = load i32, i32* %21, align 4
  %424 = load i32, i32* %19, align 4
  %425 = icmp sgt i32 %423, %424
  br i1 %425, label %434, label %426

426:                                              ; preds = %422
  %427 = load i32, i32* %22, align 4
  %428 = load i32, i32* %18, align 4
  %429 = icmp ne i32 %427, %428
  br i1 %429, label %434, label %430

430:                                              ; preds = %426
  %431 = load i32, i32* %23, align 4
  %432 = load i32, i32* %20, align 4
  %433 = icmp ne i32 %431, %432
  br i1 %433, label %434, label %436

434:                                              ; preds = %430, %426, %422
  %435 = load i32, i32* @TRUE, align 4
  store i32 %435, i32* %7, align 4
  store i32 0, i32* %17, align 4
  store i32 0, i32* %18, align 4
  store i32 0, i32* %19, align 4
  store i32 0, i32* %20, align 4
  br label %436

436:                                              ; preds = %434, %430
  br label %484

437:                                              ; preds = %396
  %438 = load %struct.ahd_devinfo*, %struct.ahd_devinfo** %4, align 8
  %439 = getelementptr inbounds %struct.ahd_devinfo, %struct.ahd_devinfo* %438, i32 0, i32 4
  %440 = load i32, i32* %439, align 8
  %441 = load i32, i32* @ROLE_TARGET, align 4
  %442 = icmp ne i32 %440, %441
  br i1 %442, label %443, label %456

443:                                              ; preds = %437
  %444 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %445 = call i8* @ahd_name(%struct.ahd_softc* %444)
  %446 = load %struct.ahd_devinfo*, %struct.ahd_devinfo** %4, align 8
  %447 = getelementptr inbounds %struct.ahd_devinfo, %struct.ahd_devinfo* %446, i32 0, i32 0
  %448 = load i32, i32* %447, align 8
  %449 = load %struct.ahd_devinfo*, %struct.ahd_devinfo** %4, align 8
  %450 = getelementptr inbounds %struct.ahd_devinfo, %struct.ahd_devinfo* %449, i32 0, i32 2
  %451 = load i32, i32* %450, align 8
  %452 = load %struct.ahd_devinfo*, %struct.ahd_devinfo** %4, align 8
  %453 = getelementptr inbounds %struct.ahd_devinfo, %struct.ahd_devinfo* %452, i32 0, i32 3
  %454 = load i32, i32* %453, align 4
  %455 = call i32 (i8*, i8*, i32, ...) @printf(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.5, i64 0, i64 0), i8* %445, i32 %448, i32 %451, i32 %454)
  br label %469

456:                                              ; preds = %437
  %457 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %458 = call i8* @ahd_name(%struct.ahd_softc* %457)
  %459 = load %struct.ahd_devinfo*, %struct.ahd_devinfo** %4, align 8
  %460 = getelementptr inbounds %struct.ahd_devinfo, %struct.ahd_devinfo* %459, i32 0, i32 0
  %461 = load i32, i32* %460, align 8
  %462 = load %struct.ahd_devinfo*, %struct.ahd_devinfo** %4, align 8
  %463 = getelementptr inbounds %struct.ahd_devinfo, %struct.ahd_devinfo* %462, i32 0, i32 2
  %464 = load i32, i32* %463, align 8
  %465 = load %struct.ahd_devinfo*, %struct.ahd_devinfo** %4, align 8
  %466 = getelementptr inbounds %struct.ahd_devinfo, %struct.ahd_devinfo* %465, i32 0, i32 3
  %467 = load i32, i32* %466, align 4
  %468 = call i32 (i8*, i8*, i32, ...) @printf(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.6, i64 0, i64 0), i8* %458, i32 %461, i32 %464, i32 %467)
  br label %469

469:                                              ; preds = %456, %443
  %470 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %471 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %470, i32 0, i32 4
  store i64 0, i64* %471, align 8
  %472 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %473 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %472, i32 0, i32 2
  store i32 0, i32* %473, align 4
  %474 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %475 = load %struct.ahd_devinfo*, %struct.ahd_devinfo** %4, align 8
  %476 = load i32, i32* %17, align 4
  %477 = load i32, i32* %18, align 4
  %478 = load i32, i32* %19, align 4
  %479 = load i32, i32* %20, align 4
  %480 = call i32 @ahd_construct_ppr(%struct.ahd_softc* %474, %struct.ahd_devinfo* %475, i32 %476, i32 %477, i32 %478, i32 %479)
  %481 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %482 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %481, i32 0, i32 4
  store i64 0, i64* %482, align 8
  %483 = load i32, i32* @TRUE, align 4
  store i32 %483, i32* %9, align 4
  br label %484

484:                                              ; preds = %469, %436
  %485 = load i32, i32* @bootverbose, align 4
  %486 = icmp ne i32 %485, 0
  br i1 %486, label %487, label %512

487:                                              ; preds = %484
  %488 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %489 = call i8* @ahd_name(%struct.ahd_softc* %488)
  %490 = load %struct.ahd_devinfo*, %struct.ahd_devinfo** %4, align 8
  %491 = getelementptr inbounds %struct.ahd_devinfo, %struct.ahd_devinfo* %490, i32 0, i32 0
  %492 = load i32, i32* %491, align 8
  %493 = load %struct.ahd_devinfo*, %struct.ahd_devinfo** %4, align 8
  %494 = getelementptr inbounds %struct.ahd_devinfo, %struct.ahd_devinfo* %493, i32 0, i32 2
  %495 = load i32, i32* %494, align 8
  %496 = load %struct.ahd_devinfo*, %struct.ahd_devinfo** %4, align 8
  %497 = getelementptr inbounds %struct.ahd_devinfo, %struct.ahd_devinfo* %496, i32 0, i32 3
  %498 = load i32, i32* %497, align 4
  %499 = load i32, i32* %21, align 4
  %500 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %501 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %500, i32 0, i32 0
  %502 = load i32*, i32** %501, align 8
  %503 = getelementptr inbounds i32, i32* %502, i64 3
  %504 = load i32, i32* %503, align 4
  %505 = load i32, i32* %22, align 4
  %506 = load i32, i32* %23, align 4
  %507 = load i32, i32* %19, align 4
  %508 = load i32, i32* %17, align 4
  %509 = load i32, i32* %18, align 4
  %510 = load i32, i32* %20, align 4
  %511 = call i32 (i8*, i8*, i32, ...) @printf(i8* getelementptr inbounds ([127 x i8], [127 x i8]* @.str.7, i64 0, i64 0), i8* %489, i32 %492, i32 %495, i32 %498, i32 %499, i32 %504, i32 %505, i32 %506, i32 %507, i32 %508, i32 %509, i32 %510)
  br label %512

512:                                              ; preds = %487, %484
  %513 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %514 = load %struct.ahd_devinfo*, %struct.ahd_devinfo** %4, align 8
  %515 = load i32, i32* %19, align 4
  %516 = load i32, i32* @AHD_TRANS_ACTIVE, align 4
  %517 = load i32, i32* @AHD_TRANS_GOAL, align 4
  %518 = or i32 %516, %517
  %519 = load i32, i32* @TRUE, align 4
  %520 = call i32 @ahd_set_width(%struct.ahd_softc* %513, %struct.ahd_devinfo* %514, i32 %515, i32 %518, i32 %519)
  %521 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %522 = load %struct.ahd_devinfo*, %struct.ahd_devinfo** %4, align 8
  %523 = load i32, i32* %17, align 4
  %524 = load i32, i32* %18, align 4
  %525 = load i32, i32* %20, align 4
  %526 = load i32, i32* @AHD_TRANS_ACTIVE, align 4
  %527 = load i32, i32* @AHD_TRANS_GOAL, align 4
  %528 = or i32 %526, %527
  %529 = load i32, i32* @TRUE, align 4
  %530 = call i32 @ahd_set_syncrate(%struct.ahd_softc* %521, %struct.ahd_devinfo* %522, i32 %523, i32 %524, i32 %525, i32 %528, i32 %529)
  %531 = load i32, i32* @MSGLOOP_MSGCOMPLETE, align 4
  store i32 %531, i32* %8, align 4
  br label %534

532:                                              ; preds = %57
  %533 = load i32, i32* @TRUE, align 4
  store i32 %533, i32* %7, align 4
  br label %534

534:                                              ; preds = %532, %512, %356, %347, %337, %210, %201, %190, %80, %71
  br label %544

535:                                              ; preds = %2
  %536 = load i32, i32* @MSG_FLAG_EXPECT_QASREJ_BUSFREE, align 4
  %537 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %538 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %537, i32 0, i32 5
  %539 = load i32, i32* %538, align 8
  %540 = or i32 %539, %536
  store i32 %540, i32* %538, align 8
  br label %541

541:                                              ; preds = %2, %535
  br label %542

542:                                              ; preds = %2, %541
  %543 = load i32, i32* @TRUE, align 4
  store i32 %543, i32* %7, align 4
  br label %544

544:                                              ; preds = %542, %534, %56, %49, %43
  %545 = load i32, i32* %7, align 4
  %546 = icmp ne i32 %545, 0
  br i1 %546, label %547, label %558

547:                                              ; preds = %544
  %548 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %549 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %548, i32 0, i32 4
  store i64 0, i64* %549, align 8
  %550 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %551 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %550, i32 0, i32 2
  store i32 1, i32* %551, align 4
  %552 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %553 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %552, i32 0, i32 3
  %554 = load i32*, i32** %553, align 8
  %555 = getelementptr inbounds i32, i32* %554, i64 0
  store i32 133, i32* %555, align 4
  %556 = load i32, i32* @MSGLOOP_MSGCOMPLETE, align 4
  store i32 %556, i32* %8, align 4
  %557 = load i32, i32* @TRUE, align 4
  store i32 %557, i32* %9, align 4
  br label %558

558:                                              ; preds = %547, %544
  %559 = load i32, i32* %8, align 4
  %560 = load i32, i32* @MSGLOOP_IN_PROG, align 4
  %561 = icmp ne i32 %559, %560
  br i1 %561, label %562, label %568

562:                                              ; preds = %558
  %563 = load i32, i32* %9, align 4
  %564 = icmp ne i32 %563, 0
  br i1 %564, label %568, label %565

565:                                              ; preds = %562
  %566 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %567 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %566, i32 0, i32 2
  store i32 0, i32* %567, align 4
  br label %568

568:                                              ; preds = %565, %562, %558
  %569 = load i32, i32* %8, align 4
  ret i32 %569
}

declare dso_local %struct.ahd_initiator_tinfo* @ahd_fetch_transinfo(%struct.ahd_softc*, i32, i64, i32, %struct.ahd_tmode_tstate**) #1

declare dso_local i32 @ahd_handle_msg_reject(%struct.ahd_softc*, %struct.ahd_devinfo*) #1

declare dso_local i32 @ahd_devlimited_syncrate(%struct.ahd_softc*, %struct.ahd_initiator_tinfo*, i32*, i32*, i32) #1

declare dso_local i32 @ahd_validate_offset(%struct.ahd_softc*, %struct.ahd_initiator_tinfo*, i32, i32*, i32, i32) #1

declare dso_local i32 @printf(i8*, i8*, i32, ...) #1

declare dso_local i8* @ahd_name(%struct.ahd_softc*) #1

declare dso_local i32 @ahd_set_syncrate(%struct.ahd_softc*, %struct.ahd_devinfo*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @ahd_sent_msg(%struct.ahd_softc*, i32, i32, i32) #1

declare dso_local i32 @ahd_construct_sdtr(%struct.ahd_softc*, %struct.ahd_devinfo*, i32, i32) #1

declare dso_local i32 @ahd_validate_width(%struct.ahd_softc*, %struct.ahd_initiator_tinfo*, i32*, i32) #1

declare dso_local i32 @ahd_construct_wdtr(%struct.ahd_softc*, %struct.ahd_devinfo*, i32) #1

declare dso_local i32 @ahd_update_neg_request(%struct.ahd_softc*, %struct.ahd_devinfo*, %struct.ahd_tmode_tstate*, %struct.ahd_initiator_tinfo*, i32) #1

declare dso_local i32 @ahd_set_width(%struct.ahd_softc*, %struct.ahd_devinfo*, i32, i32, i32) #1

declare dso_local i32 @ahd_build_transfer_msg(%struct.ahd_softc*, %struct.ahd_devinfo*) #1

declare dso_local i32 @ahd_construct_ppr(%struct.ahd_softc*, %struct.ahd_devinfo*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
