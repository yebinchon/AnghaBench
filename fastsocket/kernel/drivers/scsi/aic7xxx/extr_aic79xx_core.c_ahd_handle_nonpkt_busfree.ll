; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/aic7xxx/extr_aic79xx_core.c_ahd_handle_nonpkt_busfree.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/aic7xxx/extr_aic79xx_core.c_ahd_handle_nonpkt_busfree.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ahd_softc = type { i32, i32*, i32 }
%struct.ahd_devinfo = type { i32, i32, i32 }
%struct.scb = type { i32, %struct.TYPE_7__*, %struct.TYPE_9__* }
%struct.TYPE_7__ = type { i64, i32 }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i64 }
%struct.ahd_initiator_tinfo = type { %struct.TYPE_11__, %struct.TYPE_10__ }
%struct.TYPE_11__ = type { i32, i64 }
%struct.TYPE_10__ = type { i32, i32 }
%struct.ahd_tmode_tstate = type { i32 }
%struct.TYPE_12__ = type { i8* }

@LASTPHASE = common dso_local global i32 0, align 4
@SAVED_SCSIID = common dso_local global i32 0, align 4
@SAVED_LUN = common dso_local global i32 0, align 4
@ROLE_INITIATOR = common dso_local global i32 0, align 4
@SEQ_FLAGS = common dso_local global i32 0, align 4
@NOT_IDENTIFIED = common dso_local global i64 0, align 8
@MSG_FLAG_EXPECT_PPR_BUSFREE = common dso_local global i32 0, align 4
@P_MESGOUT = common dso_local global i64 0, align 8
@SCB_LIST_NULL = common dso_local global i64 0, align 8
@AHDMSG_1B = common dso_local global i32 0, align 4
@MSG_ABORT_TAG = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@MSG_ABORT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"Abort for unidentified connection completed.\0A\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"SCB %d - Abort%s Completed.\0A\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.3 = private unnamed_addr constant [5 x i8] c" Tag\00", align 1
@SCB_EXTERNAL_RESET = common dso_local global i32 0, align 4
@CAM_REQ_ABORTED = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [15 x i8] c"found == 0x%x\0A\00", align 1
@MSG_BUS_DEV_RESET = common dso_local global i32 0, align 4
@CAM_LUN_WILDCARD = common dso_local global i32 0, align 4
@CAM_BDR_SENT = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [17 x i8] c"Bus Device Reset\00", align 1
@AHDMSG_EXT = common dso_local global i32 0, align 4
@MSG_EXT_PPR = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@MSG_EXT_PPR_IU_REQ = common dso_local global i32 0, align 4
@MSG_EXT_WDTR_BUS_8_BIT = common dso_local global i32 0, align 4
@AHD_TRANS_CUR = common dso_local global i32 0, align 4
@MSG_EXT_WDTR = common dso_local global i32 0, align 4
@AHD_TRANS_GOAL = common dso_local global i32 0, align 4
@MSG_EXT_SDTR = common dso_local global i32 0, align 4
@MSG_FLAG_EXPECT_IDE_BUSFREE = common dso_local global i32 0, align 4
@MSG_INITIATOR_DET_ERR = common dso_local global i32 0, align 4
@MSG_FLAG_EXPECT_QASREJ_BUSFREE = common dso_local global i32 0, align 4
@MSG_MESSAGE_REJECT = common dso_local global i32 0, align 4
@P_MESGIN = common dso_local global i64 0, align 8
@CAM_REQUEUE_REQ = common dso_local global i32 0, align 4
@MSG_FLAG_IU_REQ_CHANGED = common dso_local global i32 0, align 4
@TAG_ENB = common dso_local global i32 0, align 4
@CAM_UNEXP_BUSFREE = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [5 x i8] c"%s: \00", align 1
@.str.7 = private unnamed_addr constant [57 x i8] c"Unexpected busfree %s, %d SCBs aborted, PRGMCNT == 0x%x\0A\00", align 1
@PRGMCNT = common dso_local global i32 0, align 4
@P_BUSFREE = common dso_local global i64 0, align 8
@AHD_SHOW_MESSAGES = common dso_local global i32 0, align 4
@CAM_REQ_CMP = common dso_local global i32 0, align 4
@XPT_RESET_DEV = common dso_local global i64 0, align 8
@ahd_debug = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ahd_softc*)* @ahd_handle_nonpkt_busfree to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ahd_handle_nonpkt_busfree(%struct.ahd_softc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ahd_softc*, align 8
  %4 = alloca %struct.ahd_devinfo, align 4
  %5 = alloca %struct.scb*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.ahd_initiator_tinfo*, align 8
  %18 = alloca %struct.ahd_tmode_tstate*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i64, align 8
  store %struct.ahd_softc* %0, %struct.ahd_softc** %3, align 8
  %21 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %22 = load i32, i32* @LASTPHASE, align 4
  %23 = call i64 @ahd_inb(%struct.ahd_softc* %21, i32 %22)
  store i64 %23, i64* %6, align 8
  %24 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %25 = load i32, i32* @SAVED_SCSIID, align 4
  %26 = call i64 @ahd_inb(%struct.ahd_softc* %24, i32 %25)
  store i64 %26, i64* %7, align 8
  %27 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %28 = load i32, i32* @SAVED_LUN, align 4
  %29 = call i64 @ahd_inb(%struct.ahd_softc* %27, i32 %28)
  store i64 %29, i64* %8, align 8
  %30 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %31 = load i64, i64* %7, align 8
  %32 = call i64 @SCSIID_TARGET(%struct.ahd_softc* %30, i64 %31)
  store i64 %32, i64* %9, align 8
  %33 = load i64, i64* %7, align 8
  %34 = call i64 @SCSIID_OUR_ID(i64 %33)
  store i64 %34, i64* %10, align 8
  %35 = load i64, i64* %10, align 8
  %36 = load i64, i64* %9, align 8
  %37 = load i64, i64* %8, align 8
  %38 = load i32, i32* @ROLE_INITIATOR, align 4
  %39 = call i32 @ahd_compile_devinfo(%struct.ahd_devinfo* %4, i64 %35, i64 %36, i64 %37, i8 signext 65, i32 %38)
  store i32 1, i32* %13, align 4
  %40 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %41 = call i64 @ahd_get_scbptr(%struct.ahd_softc* %40)
  store i64 %41, i64* %11, align 8
  %42 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %43 = load i64, i64* %11, align 8
  %44 = call %struct.scb* @ahd_lookup_scb(%struct.ahd_softc* %42, i64 %43)
  store %struct.scb* %44, %struct.scb** %5, align 8
  %45 = load %struct.scb*, %struct.scb** %5, align 8
  %46 = icmp ne %struct.scb* %45, null
  br i1 %46, label %47, label %55

47:                                               ; preds = %1
  %48 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %49 = load i32, i32* @SEQ_FLAGS, align 4
  %50 = call i64 @ahd_inb(%struct.ahd_softc* %48, i32 %49)
  %51 = load i64, i64* @NOT_IDENTIFIED, align 8
  %52 = and i64 %50, %51
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %47
  store %struct.scb* null, %struct.scb** %5, align 8
  br label %55

55:                                               ; preds = %54, %47, %1
  %56 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %57 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = load i32, i32* @MSG_FLAG_EXPECT_PPR_BUSFREE, align 4
  %60 = and i32 %58, %59
  %61 = icmp ne i32 %60, 0
  %62 = zext i1 %61 to i32
  %63 = sext i32 %62 to i64
  store i64 %63, i64* %12, align 8
  %64 = load i64, i64* %6, align 8
  %65 = load i64, i64* @P_MESGOUT, align 8
  %66 = icmp eq i64 %64, %65
  br i1 %66, label %67, label %305

67:                                               ; preds = %55
  %68 = load i64, i64* @SCB_LIST_NULL, align 8
  store i64 %68, i64* %14, align 8
  %69 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %70 = load i32, i32* @AHDMSG_1B, align 4
  %71 = load i32, i32* @MSG_ABORT_TAG, align 4
  %72 = load i32, i32* @TRUE, align 4
  %73 = call i64 @ahd_sent_msg(%struct.ahd_softc* %69, i32 %70, i32 %71, i32 %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %82, label %75

75:                                               ; preds = %67
  %76 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %77 = load i32, i32* @AHDMSG_1B, align 4
  %78 = load i32, i32* @MSG_ABORT, align 4
  %79 = load i32, i32* @TRUE, align 4
  %80 = call i64 @ahd_sent_msg(%struct.ahd_softc* %76, i32 %77, i32 %78, i32 %79)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %144

82:                                               ; preds = %75, %67
  %83 = load %struct.scb*, %struct.scb** %5, align 8
  %84 = icmp eq %struct.scb* %83, null
  br i1 %84, label %85, label %89

85:                                               ; preds = %82
  %86 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %87 = call i32 @ahd_print_devinfo(%struct.ahd_softc* %86, %struct.ahd_devinfo* %4)
  %88 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* %2, align 4
  br label %417

89:                                               ; preds = %82
  %90 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %91 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %90, i32 0, i32 1
  %92 = load i32*, i32** %91, align 8
  %93 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %94 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %93, i32 0, i32 2
  %95 = load i32, i32* %94, align 8
  %96 = sub nsw i32 %95, 1
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds i32, i32* %92, i64 %97
  %99 = load i32, i32* %98, align 4
  store i32 %99, i32* %16, align 4
  %100 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %101 = load %struct.scb*, %struct.scb** %5, align 8
  %102 = call i32 @ahd_print_path(%struct.ahd_softc* %100, %struct.scb* %101)
  %103 = load %struct.scb*, %struct.scb** %5, align 8
  %104 = call i32 @SCB_GET_TAG(%struct.scb* %103)
  %105 = load i32, i32* %16, align 4
  %106 = load i32, i32* @MSG_ABORT_TAG, align 4
  %107 = icmp eq i32 %105, %106
  %108 = zext i1 %107 to i64
  %109 = select i1 %107, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0)
  %110 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 %104, i8* %109)
  %111 = load i32, i32* %16, align 4
  %112 = load i32, i32* @MSG_ABORT_TAG, align 4
  %113 = icmp eq i32 %111, %112
  br i1 %113, label %114, label %118

114:                                              ; preds = %89
  %115 = load %struct.scb*, %struct.scb** %5, align 8
  %116 = call i32 @SCB_GET_TAG(%struct.scb* %115)
  %117 = sext i32 %116 to i64
  store i64 %117, i64* %14, align 8
  br label %118

118:                                              ; preds = %114, %89
  %119 = load %struct.scb*, %struct.scb** %5, align 8
  %120 = getelementptr inbounds %struct.scb, %struct.scb* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 8
  %122 = load i32, i32* @SCB_EXTERNAL_RESET, align 4
  %123 = and i32 %121, %122
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %134

125:                                              ; preds = %118
  %126 = load %struct.scb*, %struct.scb** %5, align 8
  %127 = call i32 @SCB_GET_TAG(%struct.scb* %126)
  %128 = sext i32 %127 to i64
  store i64 %128, i64* %14, align 8
  %129 = load %struct.scb*, %struct.scb** %5, align 8
  %130 = getelementptr inbounds %struct.scb, %struct.scb* %129, i32 0, i32 1
  %131 = load %struct.TYPE_7__*, %struct.TYPE_7__** %130, align 8
  %132 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %131, i32 0, i32 0
  %133 = load i64, i64* %132, align 8
  store i64 %133, i64* %8, align 8
  br label %134

134:                                              ; preds = %125, %118
  %135 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %136 = load i64, i64* %9, align 8
  %137 = load i64, i64* %8, align 8
  %138 = load i64, i64* %14, align 8
  %139 = load i32, i32* @ROLE_INITIATOR, align 4
  %140 = load i32, i32* @CAM_REQ_ABORTED, align 4
  %141 = call i32 @ahd_abort_scbs(%struct.ahd_softc* %135, i64 %136, i8 signext 65, i64 %137, i64 %138, i32 %139, i32 %140)
  store i32 %141, i32* %15, align 4
  %142 = load i32, i32* %15, align 4
  %143 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0), i32 %142)
  store i32 0, i32* %13, align 4
  br label %304

144:                                              ; preds = %75
  %145 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %146 = load i32, i32* @AHDMSG_1B, align 4
  %147 = load i32, i32* @MSG_BUS_DEV_RESET, align 4
  %148 = load i32, i32* @TRUE, align 4
  %149 = call i64 @ahd_sent_msg(%struct.ahd_softc* %145, i32 %146, i32 %147, i32 %148)
  %150 = icmp ne i64 %149, 0
  br i1 %150, label %151, label %156

151:                                              ; preds = %144
  %152 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %153 = load i32, i32* @CAM_LUN_WILDCARD, align 4
  %154 = load i32, i32* @CAM_BDR_SENT, align 4
  %155 = call i32 @ahd_handle_devreset(%struct.ahd_softc* %152, %struct.ahd_devinfo* %4, i32 %153, i32 %154, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i64 0, i64 0), i32 0)
  store i32 0, i32* %13, align 4
  br label %303

156:                                              ; preds = %144
  %157 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %158 = load i32, i32* @AHDMSG_EXT, align 4
  %159 = load i32, i32* @MSG_EXT_PPR, align 4
  %160 = load i32, i32* @FALSE, align 4
  %161 = call i64 @ahd_sent_msg(%struct.ahd_softc* %157, i32 %158, i32 %159, i32 %160)
  %162 = icmp ne i64 %161, 0
  br i1 %162, label %163, label %213

163:                                              ; preds = %156
  %164 = load i64, i64* %12, align 8
  %165 = icmp eq i64 %164, 0
  br i1 %165, label %166, label %213

166:                                              ; preds = %163
  %167 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %168 = getelementptr inbounds %struct.ahd_devinfo, %struct.ahd_devinfo* %4, i32 0, i32 2
  %169 = load i32, i32* %168, align 4
  %170 = getelementptr inbounds %struct.ahd_devinfo, %struct.ahd_devinfo* %4, i32 0, i32 1
  %171 = load i32, i32* %170, align 4
  %172 = getelementptr inbounds %struct.ahd_devinfo, %struct.ahd_devinfo* %4, i32 0, i32 0
  %173 = load i32, i32* %172, align 4
  %174 = call %struct.ahd_initiator_tinfo* @ahd_fetch_transinfo(%struct.ahd_softc* %167, i32 %169, i32 %171, i32 %173, %struct.ahd_tmode_tstate** %18)
  store %struct.ahd_initiator_tinfo* %174, %struct.ahd_initiator_tinfo** %17, align 8
  %175 = load %struct.ahd_initiator_tinfo*, %struct.ahd_initiator_tinfo** %17, align 8
  %176 = getelementptr inbounds %struct.ahd_initiator_tinfo, %struct.ahd_initiator_tinfo* %175, i32 0, i32 1
  %177 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %176, i32 0, i32 0
  %178 = load i32, i32* %177, align 8
  %179 = load i32, i32* @MSG_EXT_PPR_IU_REQ, align 4
  %180 = and i32 %178, %179
  %181 = icmp ne i32 %180, 0
  br i1 %181, label %182, label %192

182:                                              ; preds = %166
  %183 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %184 = load i32, i32* @MSG_EXT_WDTR_BUS_8_BIT, align 4
  %185 = load i32, i32* @AHD_TRANS_CUR, align 4
  %186 = load i32, i32* @TRUE, align 4
  %187 = call i32 @ahd_set_width(%struct.ahd_softc* %183, %struct.ahd_devinfo* %4, i32 %184, i32 %185, i32 %186)
  %188 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %189 = load i32, i32* @AHD_TRANS_CUR, align 4
  %190 = load i32, i32* @TRUE, align 4
  %191 = call i32 @ahd_set_syncrate(%struct.ahd_softc* %188, %struct.ahd_devinfo* %4, i32 0, i32 0, i32 0, i32 %189, i32 %190)
  br label %212

192:                                              ; preds = %166
  %193 = load %struct.ahd_initiator_tinfo*, %struct.ahd_initiator_tinfo** %17, align 8
  %194 = getelementptr inbounds %struct.ahd_initiator_tinfo, %struct.ahd_initiator_tinfo* %193, i32 0, i32 1
  %195 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %194, i32 0, i32 1
  store i32 2, i32* %195, align 4
  %196 = load %struct.ahd_initiator_tinfo*, %struct.ahd_initiator_tinfo** %17, align 8
  %197 = getelementptr inbounds %struct.ahd_initiator_tinfo, %struct.ahd_initiator_tinfo* %196, i32 0, i32 0
  %198 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %197, i32 0, i32 0
  store i32 2, i32* %198, align 8
  %199 = load %struct.ahd_initiator_tinfo*, %struct.ahd_initiator_tinfo** %17, align 8
  %200 = getelementptr inbounds %struct.ahd_initiator_tinfo, %struct.ahd_initiator_tinfo* %199, i32 0, i32 0
  %201 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %200, i32 0, i32 1
  store i64 0, i64* %201, align 8
  %202 = load %struct.scb*, %struct.scb** %5, align 8
  %203 = icmp ne %struct.scb* %202, null
  br i1 %203, label %204, label %211

204:                                              ; preds = %192
  %205 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %206 = load %struct.scb*, %struct.scb** %5, align 8
  %207 = call i32 @ahd_freeze_devq(%struct.ahd_softc* %205, %struct.scb* %206)
  %208 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %209 = load %struct.scb*, %struct.scb** %5, align 8
  %210 = call i32 @ahd_qinfifo_requeue_tail(%struct.ahd_softc* %208, %struct.scb* %209)
  br label %211

211:                                              ; preds = %204, %192
  store i32 0, i32* %13, align 4
  br label %212

212:                                              ; preds = %211, %182
  br label %302

213:                                              ; preds = %163, %156
  %214 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %215 = load i32, i32* @AHDMSG_EXT, align 4
  %216 = load i32, i32* @MSG_EXT_WDTR, align 4
  %217 = load i32, i32* @FALSE, align 4
  %218 = call i64 @ahd_sent_msg(%struct.ahd_softc* %214, i32 %215, i32 %216, i32 %217)
  %219 = icmp ne i64 %218, 0
  br i1 %219, label %220, label %241

220:                                              ; preds = %213
  %221 = load i64, i64* %12, align 8
  %222 = icmp eq i64 %221, 0
  br i1 %222, label %223, label %241

223:                                              ; preds = %220
  %224 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %225 = load i32, i32* @MSG_EXT_WDTR_BUS_8_BIT, align 4
  %226 = load i32, i32* @AHD_TRANS_CUR, align 4
  %227 = load i32, i32* @AHD_TRANS_GOAL, align 4
  %228 = or i32 %226, %227
  %229 = load i32, i32* @TRUE, align 4
  %230 = call i32 @ahd_set_width(%struct.ahd_softc* %224, %struct.ahd_devinfo* %4, i32 %225, i32 %228, i32 %229)
  %231 = load %struct.scb*, %struct.scb** %5, align 8
  %232 = icmp ne %struct.scb* %231, null
  br i1 %232, label %233, label %240

233:                                              ; preds = %223
  %234 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %235 = load %struct.scb*, %struct.scb** %5, align 8
  %236 = call i32 @ahd_freeze_devq(%struct.ahd_softc* %234, %struct.scb* %235)
  %237 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %238 = load %struct.scb*, %struct.scb** %5, align 8
  %239 = call i32 @ahd_qinfifo_requeue_tail(%struct.ahd_softc* %237, %struct.scb* %238)
  br label %240

240:                                              ; preds = %233, %223
  store i32 0, i32* %13, align 4
  br label %301

241:                                              ; preds = %220, %213
  %242 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %243 = load i32, i32* @AHDMSG_EXT, align 4
  %244 = load i32, i32* @MSG_EXT_SDTR, align 4
  %245 = load i32, i32* @FALSE, align 4
  %246 = call i64 @ahd_sent_msg(%struct.ahd_softc* %242, i32 %243, i32 %244, i32 %245)
  %247 = icmp ne i64 %246, 0
  br i1 %247, label %248, label %268

248:                                              ; preds = %241
  %249 = load i64, i64* %12, align 8
  %250 = icmp eq i64 %249, 0
  br i1 %250, label %251, label %268

251:                                              ; preds = %248
  %252 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %253 = load i32, i32* @AHD_TRANS_CUR, align 4
  %254 = load i32, i32* @AHD_TRANS_GOAL, align 4
  %255 = or i32 %253, %254
  %256 = load i32, i32* @TRUE, align 4
  %257 = call i32 @ahd_set_syncrate(%struct.ahd_softc* %252, %struct.ahd_devinfo* %4, i32 0, i32 0, i32 0, i32 %255, i32 %256)
  %258 = load %struct.scb*, %struct.scb** %5, align 8
  %259 = icmp ne %struct.scb* %258, null
  br i1 %259, label %260, label %267

260:                                              ; preds = %251
  %261 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %262 = load %struct.scb*, %struct.scb** %5, align 8
  %263 = call i32 @ahd_freeze_devq(%struct.ahd_softc* %261, %struct.scb* %262)
  %264 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %265 = load %struct.scb*, %struct.scb** %5, align 8
  %266 = call i32 @ahd_qinfifo_requeue_tail(%struct.ahd_softc* %264, %struct.scb* %265)
  br label %267

267:                                              ; preds = %260, %251
  store i32 0, i32* %13, align 4
  br label %300

268:                                              ; preds = %248, %241
  %269 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %270 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %269, i32 0, i32 0
  %271 = load i32, i32* %270, align 8
  %272 = load i32, i32* @MSG_FLAG_EXPECT_IDE_BUSFREE, align 4
  %273 = and i32 %271, %272
  %274 = icmp ne i32 %273, 0
  br i1 %274, label %275, label %283

275:                                              ; preds = %268
  %276 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %277 = load i32, i32* @AHDMSG_1B, align 4
  %278 = load i32, i32* @MSG_INITIATOR_DET_ERR, align 4
  %279 = load i32, i32* @TRUE, align 4
  %280 = call i64 @ahd_sent_msg(%struct.ahd_softc* %276, i32 %277, i32 %278, i32 %279)
  %281 = icmp ne i64 %280, 0
  br i1 %281, label %282, label %283

282:                                              ; preds = %275
  store i32 0, i32* %13, align 4
  br label %299

283:                                              ; preds = %275, %268
  %284 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %285 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %284, i32 0, i32 0
  %286 = load i32, i32* %285, align 8
  %287 = load i32, i32* @MSG_FLAG_EXPECT_QASREJ_BUSFREE, align 4
  %288 = and i32 %286, %287
  %289 = icmp ne i32 %288, 0
  br i1 %289, label %290, label %298

290:                                              ; preds = %283
  %291 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %292 = load i32, i32* @AHDMSG_1B, align 4
  %293 = load i32, i32* @MSG_MESSAGE_REJECT, align 4
  %294 = load i32, i32* @TRUE, align 4
  %295 = call i64 @ahd_sent_msg(%struct.ahd_softc* %291, i32 %292, i32 %293, i32 %294)
  %296 = icmp ne i64 %295, 0
  br i1 %296, label %297, label %298

297:                                              ; preds = %290
  store i32 0, i32* %13, align 4
  br label %298

298:                                              ; preds = %297, %290, %283
  br label %299

299:                                              ; preds = %298, %282
  br label %300

300:                                              ; preds = %299, %267
  br label %301

301:                                              ; preds = %300, %240
  br label %302

302:                                              ; preds = %301, %212
  br label %303

303:                                              ; preds = %302, %151
  br label %304

304:                                              ; preds = %303, %134
  br label %305

305:                                              ; preds = %304, %55
  %306 = load %struct.scb*, %struct.scb** %5, align 8
  %307 = icmp ne %struct.scb* %306, null
  br i1 %307, label %308, label %360

308:                                              ; preds = %305
  %309 = load i32, i32* %13, align 4
  %310 = icmp ne i32 %309, 0
  br i1 %310, label %311, label %360

311:                                              ; preds = %308
  %312 = load i64, i64* %6, align 8
  %313 = load i64, i64* @P_MESGIN, align 8
  %314 = icmp eq i64 %312, %313
  br i1 %314, label %319, label %315

315:                                              ; preds = %311
  %316 = load i64, i64* %6, align 8
  %317 = load i64, i64* @P_MESGOUT, align 8
  %318 = icmp eq i64 %316, %317
  br i1 %318, label %319, label %360

319:                                              ; preds = %315, %311
  %320 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %321 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %320, i32 0, i32 0
  %322 = load i32, i32* %321, align 8
  %323 = load i32, i32* @MSG_FLAG_EXPECT_PPR_BUSFREE, align 4
  %324 = and i32 %322, %323
  %325 = icmp ne i32 %324, 0
  br i1 %325, label %326, label %360

326:                                              ; preds = %319
  %327 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %328 = load %struct.scb*, %struct.scb** %5, align 8
  %329 = call i32 @ahd_freeze_devq(%struct.ahd_softc* %327, %struct.scb* %328)
  %330 = load %struct.scb*, %struct.scb** %5, align 8
  %331 = load i32, i32* @CAM_REQUEUE_REQ, align 4
  %332 = call i32 @ahd_set_transaction_status(%struct.scb* %330, i32 %331)
  %333 = load %struct.scb*, %struct.scb** %5, align 8
  %334 = call i32 @ahd_freeze_scb(%struct.scb* %333)
  %335 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %336 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %335, i32 0, i32 0
  %337 = load i32, i32* %336, align 8
  %338 = load i32, i32* @MSG_FLAG_IU_REQ_CHANGED, align 4
  %339 = and i32 %337, %338
  %340 = icmp ne i32 %339, 0
  br i1 %340, label %341, label %355

341:                                              ; preds = %326
  %342 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %343 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %344 = load %struct.scb*, %struct.scb** %5, align 8
  %345 = call i64 @SCB_GET_TARGET(%struct.ahd_softc* %343, %struct.scb* %344)
  %346 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %347 = load %struct.scb*, %struct.scb** %5, align 8
  %348 = call signext i8 @SCB_GET_CHANNEL(%struct.ahd_softc* %346, %struct.scb* %347)
  %349 = load %struct.scb*, %struct.scb** %5, align 8
  %350 = call i64 @SCB_GET_LUN(%struct.scb* %349)
  %351 = load i64, i64* @SCB_LIST_NULL, align 8
  %352 = load i32, i32* @ROLE_INITIATOR, align 4
  %353 = load i32, i32* @CAM_REQ_ABORTED, align 4
  %354 = call i32 @ahd_abort_scbs(%struct.ahd_softc* %342, i64 %345, i8 signext %348, i64 %350, i64 %351, i32 %352, i32 %353)
  br label %359

355:                                              ; preds = %326
  %356 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %357 = load %struct.scb*, %struct.scb** %5, align 8
  %358 = call i32 @ahd_done(%struct.ahd_softc* %356, %struct.scb* %357)
  br label %359

359:                                              ; preds = %355, %341
  store i32 0, i32* %13, align 4
  br label %360

360:                                              ; preds = %359, %319, %315, %308, %305
  %361 = load i32, i32* %13, align 4
  %362 = icmp ne i32 %361, 0
  br i1 %362, label %363, label %416

363:                                              ; preds = %360
  store i32 0, i32* %19, align 4
  %364 = load %struct.scb*, %struct.scb** %5, align 8
  %365 = icmp ne %struct.scb* %364, null
  br i1 %365, label %366, label %393

366:                                              ; preds = %363
  %367 = load %struct.scb*, %struct.scb** %5, align 8
  %368 = getelementptr inbounds %struct.scb, %struct.scb* %367, i32 0, i32 1
  %369 = load %struct.TYPE_7__*, %struct.TYPE_7__** %368, align 8
  %370 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %369, i32 0, i32 1
  %371 = load i32, i32* %370, align 8
  %372 = load i32, i32* @TAG_ENB, align 4
  %373 = and i32 %371, %372
  %374 = icmp ne i32 %373, 0
  br i1 %374, label %375, label %379

375:                                              ; preds = %366
  %376 = load %struct.scb*, %struct.scb** %5, align 8
  %377 = call i32 @SCB_GET_TAG(%struct.scb* %376)
  %378 = sext i32 %377 to i64
  store i64 %378, i64* %20, align 8
  br label %381

379:                                              ; preds = %366
  %380 = load i64, i64* @SCB_LIST_NULL, align 8
  store i64 %380, i64* %20, align 8
  br label %381

381:                                              ; preds = %379, %375
  %382 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %383 = load %struct.scb*, %struct.scb** %5, align 8
  %384 = call i32 @ahd_print_path(%struct.ahd_softc* %382, %struct.scb* %383)
  %385 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %386 = load i64, i64* %9, align 8
  %387 = load %struct.scb*, %struct.scb** %5, align 8
  %388 = call i64 @SCB_GET_LUN(%struct.scb* %387)
  %389 = load i64, i64* %20, align 8
  %390 = load i32, i32* @ROLE_INITIATOR, align 4
  %391 = load i32, i32* @CAM_UNEXP_BUSFREE, align 4
  %392 = call i32 @ahd_abort_scbs(%struct.ahd_softc* %385, i64 %386, i8 signext 65, i64 %388, i64 %389, i32 %390, i32 %391)
  store i32 %392, i32* %19, align 4
  br label %397

393:                                              ; preds = %363
  %394 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %395 = call i8* @ahd_name(%struct.ahd_softc* %394)
  %396 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0), i8* %395)
  br label %397

397:                                              ; preds = %393, %381
  %398 = load i64, i64* %6, align 8
  %399 = call %struct.TYPE_12__* @ahd_lookup_phase_entry(i64 %398)
  %400 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %399, i32 0, i32 0
  %401 = load i8*, i8** %400, align 8
  %402 = load i32, i32* %19, align 4
  %403 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %404 = load i32, i32* @PRGMCNT, align 4
  %405 = call i32 @ahd_inw(%struct.ahd_softc* %403, i32 %404)
  %406 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.7, i64 0, i64 0), i8* %401, i32 %402, i32 %405)
  %407 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %408 = call i32 @ahd_dump_card_state(%struct.ahd_softc* %407)
  %409 = load i64, i64* %6, align 8
  %410 = load i64, i64* @P_BUSFREE, align 8
  %411 = icmp ne i64 %409, %410
  br i1 %411, label %412, label %415

412:                                              ; preds = %397
  %413 = load %struct.ahd_softc*, %struct.ahd_softc** %3, align 8
  %414 = call i32 @ahd_force_renegotiation(%struct.ahd_softc* %413, %struct.ahd_devinfo* %4)
  br label %415

415:                                              ; preds = %412, %397
  br label %416

416:                                              ; preds = %415, %360
  store i32 1, i32* %2, align 4
  br label %417

417:                                              ; preds = %416, %85
  %418 = load i32, i32* %2, align 4
  ret i32 %418
}

declare dso_local i64 @ahd_inb(%struct.ahd_softc*, i32) #1

declare dso_local i64 @SCSIID_TARGET(%struct.ahd_softc*, i64) #1

declare dso_local i64 @SCSIID_OUR_ID(i64) #1

declare dso_local i32 @ahd_compile_devinfo(%struct.ahd_devinfo*, i64, i64, i64, i8 signext, i32) #1

declare dso_local i64 @ahd_get_scbptr(%struct.ahd_softc*) #1

declare dso_local %struct.scb* @ahd_lookup_scb(%struct.ahd_softc*, i64) #1

declare dso_local i64 @ahd_sent_msg(%struct.ahd_softc*, i32, i32, i32) #1

declare dso_local i32 @ahd_print_devinfo(%struct.ahd_softc*, %struct.ahd_devinfo*) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @ahd_print_path(%struct.ahd_softc*, %struct.scb*) #1

declare dso_local i32 @SCB_GET_TAG(%struct.scb*) #1

declare dso_local i32 @ahd_abort_scbs(%struct.ahd_softc*, i64, i8 signext, i64, i64, i32, i32) #1

declare dso_local i32 @ahd_handle_devreset(%struct.ahd_softc*, %struct.ahd_devinfo*, i32, i32, i8*, i32) #1

declare dso_local %struct.ahd_initiator_tinfo* @ahd_fetch_transinfo(%struct.ahd_softc*, i32, i32, i32, %struct.ahd_tmode_tstate**) #1

declare dso_local i32 @ahd_set_width(%struct.ahd_softc*, %struct.ahd_devinfo*, i32, i32, i32) #1

declare dso_local i32 @ahd_set_syncrate(%struct.ahd_softc*, %struct.ahd_devinfo*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @ahd_freeze_devq(%struct.ahd_softc*, %struct.scb*) #1

declare dso_local i32 @ahd_qinfifo_requeue_tail(%struct.ahd_softc*, %struct.scb*) #1

declare dso_local i32 @ahd_set_transaction_status(%struct.scb*, i32) #1

declare dso_local i32 @ahd_freeze_scb(%struct.scb*) #1

declare dso_local i64 @SCB_GET_TARGET(%struct.ahd_softc*, %struct.scb*) #1

declare dso_local signext i8 @SCB_GET_CHANNEL(%struct.ahd_softc*, %struct.scb*) #1

declare dso_local i64 @SCB_GET_LUN(%struct.scb*) #1

declare dso_local i32 @ahd_done(%struct.ahd_softc*, %struct.scb*) #1

declare dso_local i8* @ahd_name(%struct.ahd_softc*) #1

declare dso_local %struct.TYPE_12__* @ahd_lookup_phase_entry(i64) #1

declare dso_local i32 @ahd_inw(%struct.ahd_softc*, i32) #1

declare dso_local i32 @ahd_dump_card_state(%struct.ahd_softc*) #1

declare dso_local i32 @ahd_force_renegotiation(%struct.ahd_softc*, %struct.ahd_devinfo*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
