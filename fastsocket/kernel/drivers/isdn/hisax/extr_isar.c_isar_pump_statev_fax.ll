; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hisax/extr_isar.c_isar_pump_statev_fax.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hisax/extr_isar.c_isar_pump_statev_fax.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.BCState = type { %struct.TYPE_8__, i32, i32, %struct.IsdnCardState* }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i8*, i32, i32, i32, i32, i32, %struct.TYPE_9__, %struct.TYPE_6__*, i32 }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_6__ = type { i32 }
%struct.IsdnCardState = type { i32 }

@L1_DEB_HSCX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"pump stev TIMER\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"pump stev RSP_READY\00", align 1
@STFAX_READY = common dso_local global i8* null, align 8
@PH_ACTIVATE = common dso_local global i32 0, align 4
@REQUEST = common dso_local global i32 0, align 4
@BC_FLG_ORIG = common dso_local global i32 0, align 4
@ISDN_FAX_CLASS1_FRH = common dso_local global i32 0, align 4
@ISDN_FAX_CLASS1_FTH = common dso_local global i32 0, align 4
@STFAX_LINE = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [20 x i8] c"pump stev LINE_TX_H\00", align 1
@STFAX_CONT = common dso_local global i8* null, align 8
@ISAR_HIS_PUMPCTRL = common dso_local global i32 0, align 4
@PCTRL_CMD_CONT = common dso_local global i32 0, align 4
@L1_DEB_WARN = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [32 x i8] c"pump stev LINE_TX_H wrong st %x\00", align 1
@.str.4 = private unnamed_addr constant [20 x i8] c"pump stev LINE_RX_H\00", align 1
@.str.5 = private unnamed_addr constant [32 x i8] c"pump stev LINE_RX_H wrong st %x\00", align 1
@.str.6 = private unnamed_addr constant [20 x i8] c"pump stev LINE_TX_B\00", align 1
@.str.7 = private unnamed_addr constant [32 x i8] c"pump stev LINE_TX_B wrong st %x\00", align 1
@.str.8 = private unnamed_addr constant [20 x i8] c"pump stev LINE_RX_B\00", align 1
@.str.9 = private unnamed_addr constant [32 x i8] c"pump stev LINE_RX_B wrong st %x\00", align 1
@.str.10 = private unnamed_addr constant [19 x i8] c"pump stev RSP_CONN\00", align 1
@STFAX_ACTIV = common dso_local global i8* null, align 8
@ISAR_RATE_REQ = common dso_local global i32 0, align 4
@ISAR_HIS_PSTREQ = common dso_local global i32 0, align 4
@BC_FLG_FTI_RUN = common dso_local global i32 0, align 4
@jiffies = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@BC_FLG_LL_CONN = common dso_local global i32 0, align 4
@B_LL_CONNECT = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [31 x i8] c"pump stev RSP_CONN wrong st %x\00", align 1
@.str.12 = private unnamed_addr constant [20 x i8] c"pump stev FLAGS_DET\00", align 1
@.str.13 = private unnamed_addr constant [19 x i8] c"pump stev RSP_DISC\00", align 1
@STFAX_ESCAPE = common dso_local global i8* null, align 8
@PCTRL_CMD_SILON = common dso_local global i32 0, align 4
@STFAX_SILDET = common dso_local global i8* null, align 8
@frm_extra_delay = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [27 x i8] c"RSP_DISC unknown newcmd %x\00", align 1
@BC_FLG_LL_OK = common dso_local global i32 0, align 4
@B_LL_OK = common dso_local global i32 0, align 4
@B_LL_NOCARRIER = common dso_local global i32 0, align 4
@ISDN_FAX_CLASS1_FCERROR = common dso_local global i32 0, align 4
@.str.15 = private unnamed_addr constant [21 x i8] c"pump stev RSP_SILDET\00", align 1
@.str.16 = private unnamed_addr constant [21 x i8] c"pump stev RSP_SILOFF\00", align 1
@.str.17 = private unnamed_addr constant [27 x i8] c"pump stev RSP_FCERR try %d\00", align 1
@.str.18 = private unnamed_addr constant [20 x i8] c"pump stev RSP_FCERR\00", align 1
@PCTRL_CMD_ESC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.BCState*, i32)* @isar_pump_statev_fax to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @isar_pump_statev_fax(%struct.BCState* %0, i32 %1) #0 {
  %3 = alloca %struct.BCState*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.IsdnCardState*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.BCState* %0, %struct.BCState** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.BCState*, %struct.BCState** %3, align 8
  %9 = getelementptr inbounds %struct.BCState, %struct.BCState* %8, i32 0, i32 3
  %10 = load %struct.IsdnCardState*, %struct.IsdnCardState** %9, align 8
  store %struct.IsdnCardState* %10, %struct.IsdnCardState** %5, align 8
  %11 = load %struct.BCState*, %struct.BCState** %3, align 8
  %12 = getelementptr inbounds %struct.BCState, %struct.BCState* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 8
  %15 = load i32, i32* %14, align 8
  %16 = call i32 @SET_DPS(i32 %15)
  store i32 %16, i32* %6, align 4
  %17 = load i32, i32* %4, align 4
  switch i32 %17, label %676 [
    i32 139, label %18
    i32 130, label %29
    i32 134, label %66
    i32 136, label %113
    i32 135, label %160
    i32 137, label %207
    i32 133, label %254
    i32 138, label %351
    i32 132, label %362
    i32 129, label %528
    i32 128, label %593
    i32 131, label %604
  ]

18:                                               ; preds = %2
  %19 = load %struct.IsdnCardState*, %struct.IsdnCardState** %5, align 8
  %20 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @L1_DEB_HSCX, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %18
  %26 = load %struct.IsdnCardState*, %struct.IsdnCardState** %5, align 8
  %27 = call i32 (%struct.IsdnCardState*, i8*, ...) @debugl1(%struct.IsdnCardState* %26, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  br label %28

28:                                               ; preds = %25, %18
  br label %677

29:                                               ; preds = %2
  %30 = load %struct.IsdnCardState*, %struct.IsdnCardState** %5, align 8
  %31 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @L1_DEB_HSCX, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %29
  %37 = load %struct.IsdnCardState*, %struct.IsdnCardState** %5, align 8
  %38 = call i32 (%struct.IsdnCardState*, i8*, ...) @debugl1(%struct.IsdnCardState* %37, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  br label %39

39:                                               ; preds = %36, %29
  %40 = load i8*, i8** @STFAX_READY, align 8
  %41 = load %struct.BCState*, %struct.BCState** %3, align 8
  %42 = getelementptr inbounds %struct.BCState, %struct.BCState* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %43, i32 0, i32 0
  store i8* %40, i8** %44, align 8
  %45 = load %struct.BCState*, %struct.BCState** %3, align 8
  %46 = getelementptr inbounds %struct.BCState, %struct.BCState* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @PH_ACTIVATE, align 4
  %49 = load i32, i32* @REQUEST, align 4
  %50 = or i32 %48, %49
  %51 = call i32 @l1_msg_b(i32 %47, i32 %50, i32* null)
  %52 = load i32, i32* @BC_FLG_ORIG, align 4
  %53 = load %struct.BCState*, %struct.BCState** %3, align 8
  %54 = getelementptr inbounds %struct.BCState, %struct.BCState* %53, i32 0, i32 1
  %55 = call i32 @test_bit(i32 %52, i32* %54)
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %61

57:                                               ; preds = %39
  %58 = load %struct.BCState*, %struct.BCState** %3, align 8
  %59 = load i32, i32* @ISDN_FAX_CLASS1_FRH, align 4
  %60 = call i32 @isar_pump_cmd(%struct.BCState* %58, i32 %59, i32 3)
  br label %65

61:                                               ; preds = %39
  %62 = load %struct.BCState*, %struct.BCState** %3, align 8
  %63 = load i32, i32* @ISDN_FAX_CLASS1_FTH, align 4
  %64 = call i32 @isar_pump_cmd(%struct.BCState* %62, i32 %63, i32 3)
  br label %65

65:                                               ; preds = %61, %57
  br label %677

66:                                               ; preds = %2
  %67 = load %struct.BCState*, %struct.BCState** %3, align 8
  %68 = getelementptr inbounds %struct.BCState, %struct.BCState* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %69, i32 0, i32 0
  %71 = load i8*, i8** %70, align 8
  %72 = load i8*, i8** @STFAX_LINE, align 8
  %73 = icmp eq i8* %71, %72
  br i1 %73, label %74, label %96

74:                                               ; preds = %66
  %75 = load %struct.IsdnCardState*, %struct.IsdnCardState** %5, align 8
  %76 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = load i32, i32* @L1_DEB_HSCX, align 4
  %79 = and i32 %77, %78
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %84

81:                                               ; preds = %74
  %82 = load %struct.IsdnCardState*, %struct.IsdnCardState** %5, align 8
  %83 = call i32 (%struct.IsdnCardState*, i8*, ...) @debugl1(%struct.IsdnCardState* %82, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0))
  br label %84

84:                                               ; preds = %81, %74
  %85 = load i8*, i8** @STFAX_CONT, align 8
  %86 = load %struct.BCState*, %struct.BCState** %3, align 8
  %87 = getelementptr inbounds %struct.BCState, %struct.BCState* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %88, i32 0, i32 0
  store i8* %85, i8** %89, align 8
  %90 = load %struct.IsdnCardState*, %struct.IsdnCardState** %5, align 8
  %91 = load i32, i32* %6, align 4
  %92 = load i32, i32* @ISAR_HIS_PUMPCTRL, align 4
  %93 = or i32 %91, %92
  %94 = load i32, i32* @PCTRL_CMD_CONT, align 4
  %95 = call i32 @sendmsg(%struct.IsdnCardState* %90, i32 %93, i32 %94, i32 0, i32* null)
  br label %112

96:                                               ; preds = %66
  %97 = load %struct.IsdnCardState*, %struct.IsdnCardState** %5, align 8
  %98 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = load i32, i32* @L1_DEB_WARN, align 4
  %101 = and i32 %99, %100
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %111

103:                                              ; preds = %96
  %104 = load %struct.IsdnCardState*, %struct.IsdnCardState** %5, align 8
  %105 = load %struct.BCState*, %struct.BCState** %3, align 8
  %106 = getelementptr inbounds %struct.BCState, %struct.BCState* %105, i32 0, i32 0
  %107 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %107, i32 0, i32 0
  %109 = load i8*, i8** %108, align 8
  %110 = call i32 (%struct.IsdnCardState*, i8*, ...) @debugl1(%struct.IsdnCardState* %104, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0), i8* %109)
  br label %111

111:                                              ; preds = %103, %96
  br label %112

112:                                              ; preds = %111, %84
  br label %677

113:                                              ; preds = %2
  %114 = load %struct.BCState*, %struct.BCState** %3, align 8
  %115 = getelementptr inbounds %struct.BCState, %struct.BCState* %114, i32 0, i32 0
  %116 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %115, i32 0, i32 0
  %117 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %116, i32 0, i32 0
  %118 = load i8*, i8** %117, align 8
  %119 = load i8*, i8** @STFAX_LINE, align 8
  %120 = icmp eq i8* %118, %119
  br i1 %120, label %121, label %143

121:                                              ; preds = %113
  %122 = load %struct.IsdnCardState*, %struct.IsdnCardState** %5, align 8
  %123 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 4
  %125 = load i32, i32* @L1_DEB_HSCX, align 4
  %126 = and i32 %124, %125
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %131

128:                                              ; preds = %121
  %129 = load %struct.IsdnCardState*, %struct.IsdnCardState** %5, align 8
  %130 = call i32 (%struct.IsdnCardState*, i8*, ...) @debugl1(%struct.IsdnCardState* %129, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0))
  br label %131

131:                                              ; preds = %128, %121
  %132 = load i8*, i8** @STFAX_CONT, align 8
  %133 = load %struct.BCState*, %struct.BCState** %3, align 8
  %134 = getelementptr inbounds %struct.BCState, %struct.BCState* %133, i32 0, i32 0
  %135 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %134, i32 0, i32 0
  %136 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %135, i32 0, i32 0
  store i8* %132, i8** %136, align 8
  %137 = load %struct.IsdnCardState*, %struct.IsdnCardState** %5, align 8
  %138 = load i32, i32* %6, align 4
  %139 = load i32, i32* @ISAR_HIS_PUMPCTRL, align 4
  %140 = or i32 %138, %139
  %141 = load i32, i32* @PCTRL_CMD_CONT, align 4
  %142 = call i32 @sendmsg(%struct.IsdnCardState* %137, i32 %140, i32 %141, i32 0, i32* null)
  br label %159

143:                                              ; preds = %113
  %144 = load %struct.IsdnCardState*, %struct.IsdnCardState** %5, align 8
  %145 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 4
  %147 = load i32, i32* @L1_DEB_WARN, align 4
  %148 = and i32 %146, %147
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %150, label %158

150:                                              ; preds = %143
  %151 = load %struct.IsdnCardState*, %struct.IsdnCardState** %5, align 8
  %152 = load %struct.BCState*, %struct.BCState** %3, align 8
  %153 = getelementptr inbounds %struct.BCState, %struct.BCState* %152, i32 0, i32 0
  %154 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %153, i32 0, i32 0
  %155 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %154, i32 0, i32 0
  %156 = load i8*, i8** %155, align 8
  %157 = call i32 (%struct.IsdnCardState*, i8*, ...) @debugl1(%struct.IsdnCardState* %151, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.5, i64 0, i64 0), i8* %156)
  br label %158

158:                                              ; preds = %150, %143
  br label %159

159:                                              ; preds = %158, %131
  br label %677

160:                                              ; preds = %2
  %161 = load %struct.BCState*, %struct.BCState** %3, align 8
  %162 = getelementptr inbounds %struct.BCState, %struct.BCState* %161, i32 0, i32 0
  %163 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %162, i32 0, i32 0
  %164 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %163, i32 0, i32 0
  %165 = load i8*, i8** %164, align 8
  %166 = load i8*, i8** @STFAX_LINE, align 8
  %167 = icmp eq i8* %165, %166
  br i1 %167, label %168, label %190

168:                                              ; preds = %160
  %169 = load %struct.IsdnCardState*, %struct.IsdnCardState** %5, align 8
  %170 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %169, i32 0, i32 0
  %171 = load i32, i32* %170, align 4
  %172 = load i32, i32* @L1_DEB_HSCX, align 4
  %173 = and i32 %171, %172
  %174 = icmp ne i32 %173, 0
  br i1 %174, label %175, label %178

175:                                              ; preds = %168
  %176 = load %struct.IsdnCardState*, %struct.IsdnCardState** %5, align 8
  %177 = call i32 (%struct.IsdnCardState*, i8*, ...) @debugl1(%struct.IsdnCardState* %176, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.6, i64 0, i64 0))
  br label %178

178:                                              ; preds = %175, %168
  %179 = load i8*, i8** @STFAX_CONT, align 8
  %180 = load %struct.BCState*, %struct.BCState** %3, align 8
  %181 = getelementptr inbounds %struct.BCState, %struct.BCState* %180, i32 0, i32 0
  %182 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %181, i32 0, i32 0
  %183 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %182, i32 0, i32 0
  store i8* %179, i8** %183, align 8
  %184 = load %struct.IsdnCardState*, %struct.IsdnCardState** %5, align 8
  %185 = load i32, i32* %6, align 4
  %186 = load i32, i32* @ISAR_HIS_PUMPCTRL, align 4
  %187 = or i32 %185, %186
  %188 = load i32, i32* @PCTRL_CMD_CONT, align 4
  %189 = call i32 @sendmsg(%struct.IsdnCardState* %184, i32 %187, i32 %188, i32 0, i32* null)
  br label %206

190:                                              ; preds = %160
  %191 = load %struct.IsdnCardState*, %struct.IsdnCardState** %5, align 8
  %192 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %191, i32 0, i32 0
  %193 = load i32, i32* %192, align 4
  %194 = load i32, i32* @L1_DEB_WARN, align 4
  %195 = and i32 %193, %194
  %196 = icmp ne i32 %195, 0
  br i1 %196, label %197, label %205

197:                                              ; preds = %190
  %198 = load %struct.IsdnCardState*, %struct.IsdnCardState** %5, align 8
  %199 = load %struct.BCState*, %struct.BCState** %3, align 8
  %200 = getelementptr inbounds %struct.BCState, %struct.BCState* %199, i32 0, i32 0
  %201 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %200, i32 0, i32 0
  %202 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %201, i32 0, i32 0
  %203 = load i8*, i8** %202, align 8
  %204 = call i32 (%struct.IsdnCardState*, i8*, ...) @debugl1(%struct.IsdnCardState* %198, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.7, i64 0, i64 0), i8* %203)
  br label %205

205:                                              ; preds = %197, %190
  br label %206

206:                                              ; preds = %205, %178
  br label %677

207:                                              ; preds = %2
  %208 = load %struct.BCState*, %struct.BCState** %3, align 8
  %209 = getelementptr inbounds %struct.BCState, %struct.BCState* %208, i32 0, i32 0
  %210 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %209, i32 0, i32 0
  %211 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %210, i32 0, i32 0
  %212 = load i8*, i8** %211, align 8
  %213 = load i8*, i8** @STFAX_LINE, align 8
  %214 = icmp eq i8* %212, %213
  br i1 %214, label %215, label %237

215:                                              ; preds = %207
  %216 = load %struct.IsdnCardState*, %struct.IsdnCardState** %5, align 8
  %217 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %216, i32 0, i32 0
  %218 = load i32, i32* %217, align 4
  %219 = load i32, i32* @L1_DEB_HSCX, align 4
  %220 = and i32 %218, %219
  %221 = icmp ne i32 %220, 0
  br i1 %221, label %222, label %225

222:                                              ; preds = %215
  %223 = load %struct.IsdnCardState*, %struct.IsdnCardState** %5, align 8
  %224 = call i32 (%struct.IsdnCardState*, i8*, ...) @debugl1(%struct.IsdnCardState* %223, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.8, i64 0, i64 0))
  br label %225

225:                                              ; preds = %222, %215
  %226 = load i8*, i8** @STFAX_CONT, align 8
  %227 = load %struct.BCState*, %struct.BCState** %3, align 8
  %228 = getelementptr inbounds %struct.BCState, %struct.BCState* %227, i32 0, i32 0
  %229 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %228, i32 0, i32 0
  %230 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %229, i32 0, i32 0
  store i8* %226, i8** %230, align 8
  %231 = load %struct.IsdnCardState*, %struct.IsdnCardState** %5, align 8
  %232 = load i32, i32* %6, align 4
  %233 = load i32, i32* @ISAR_HIS_PUMPCTRL, align 4
  %234 = or i32 %232, %233
  %235 = load i32, i32* @PCTRL_CMD_CONT, align 4
  %236 = call i32 @sendmsg(%struct.IsdnCardState* %231, i32 %234, i32 %235, i32 0, i32* null)
  br label %253

237:                                              ; preds = %207
  %238 = load %struct.IsdnCardState*, %struct.IsdnCardState** %5, align 8
  %239 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %238, i32 0, i32 0
  %240 = load i32, i32* %239, align 4
  %241 = load i32, i32* @L1_DEB_WARN, align 4
  %242 = and i32 %240, %241
  %243 = icmp ne i32 %242, 0
  br i1 %243, label %244, label %252

244:                                              ; preds = %237
  %245 = load %struct.IsdnCardState*, %struct.IsdnCardState** %5, align 8
  %246 = load %struct.BCState*, %struct.BCState** %3, align 8
  %247 = getelementptr inbounds %struct.BCState, %struct.BCState* %246, i32 0, i32 0
  %248 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %247, i32 0, i32 0
  %249 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %248, i32 0, i32 0
  %250 = load i8*, i8** %249, align 8
  %251 = call i32 (%struct.IsdnCardState*, i8*, ...) @debugl1(%struct.IsdnCardState* %245, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.9, i64 0, i64 0), i8* %250)
  br label %252

252:                                              ; preds = %244, %237
  br label %253

253:                                              ; preds = %252, %225
  br label %677

254:                                              ; preds = %2
  %255 = load %struct.BCState*, %struct.BCState** %3, align 8
  %256 = getelementptr inbounds %struct.BCState, %struct.BCState* %255, i32 0, i32 0
  %257 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %256, i32 0, i32 0
  %258 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %257, i32 0, i32 0
  %259 = load i8*, i8** %258, align 8
  %260 = load i8*, i8** @STFAX_CONT, align 8
  %261 = icmp eq i8* %259, %260
  br i1 %261, label %262, label %334

262:                                              ; preds = %254
  %263 = load %struct.IsdnCardState*, %struct.IsdnCardState** %5, align 8
  %264 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %263, i32 0, i32 0
  %265 = load i32, i32* %264, align 4
  %266 = load i32, i32* @L1_DEB_HSCX, align 4
  %267 = and i32 %265, %266
  %268 = icmp ne i32 %267, 0
  br i1 %268, label %269, label %272

269:                                              ; preds = %262
  %270 = load %struct.IsdnCardState*, %struct.IsdnCardState** %5, align 8
  %271 = call i32 (%struct.IsdnCardState*, i8*, ...) @debugl1(%struct.IsdnCardState* %270, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.10, i64 0, i64 0))
  br label %272

272:                                              ; preds = %269, %262
  %273 = load i8*, i8** @STFAX_ACTIV, align 8
  %274 = load %struct.BCState*, %struct.BCState** %3, align 8
  %275 = getelementptr inbounds %struct.BCState, %struct.BCState* %274, i32 0, i32 0
  %276 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %275, i32 0, i32 0
  %277 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %276, i32 0, i32 0
  store i8* %273, i8** %277, align 8
  %278 = load i32, i32* @ISAR_RATE_REQ, align 4
  %279 = load %struct.BCState*, %struct.BCState** %3, align 8
  %280 = getelementptr inbounds %struct.BCState, %struct.BCState* %279, i32 0, i32 0
  %281 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %280, i32 0, i32 0
  %282 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %281, i32 0, i32 7
  %283 = load %struct.TYPE_6__*, %struct.TYPE_6__** %282, align 8
  %284 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %283, i32 0, i32 0
  %285 = call i32 @test_and_set_bit(i32 %278, i32* %284)
  %286 = load %struct.IsdnCardState*, %struct.IsdnCardState** %5, align 8
  %287 = load i32, i32* %6, align 4
  %288 = load i32, i32* @ISAR_HIS_PSTREQ, align 4
  %289 = or i32 %287, %288
  %290 = call i32 @sendmsg(%struct.IsdnCardState* %286, i32 %289, i32 0, i32 0, i32* null)
  %291 = load %struct.BCState*, %struct.BCState** %3, align 8
  %292 = getelementptr inbounds %struct.BCState, %struct.BCState* %291, i32 0, i32 0
  %293 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %292, i32 0, i32 0
  %294 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %293, i32 0, i32 1
  %295 = load i32, i32* %294, align 8
  %296 = icmp eq i32 %295, 141
  br i1 %296, label %297, label %329

297:                                              ; preds = %272
  %298 = load i32, i32* @BC_FLG_FTI_RUN, align 4
  %299 = load %struct.BCState*, %struct.BCState** %3, align 8
  %300 = getelementptr inbounds %struct.BCState, %struct.BCState* %299, i32 0, i32 1
  %301 = call i32 @test_and_set_bit(i32 %298, i32* %300)
  %302 = icmp ne i32 %301, 0
  br i1 %302, label %303, label %309

303:                                              ; preds = %297
  %304 = load %struct.BCState*, %struct.BCState** %3, align 8
  %305 = getelementptr inbounds %struct.BCState, %struct.BCState* %304, i32 0, i32 0
  %306 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %305, i32 0, i32 0
  %307 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %306, i32 0, i32 6
  %308 = call i32 @del_timer(%struct.TYPE_9__* %307)
  br label %309

309:                                              ; preds = %303, %297
  %310 = load i32, i32* @jiffies, align 4
  %311 = load i32, i32* @HZ, align 4
  %312 = mul nsw i32 1000, %311
  %313 = sdiv i32 %312, 1000
  %314 = add nsw i32 %310, %313
  %315 = load %struct.BCState*, %struct.BCState** %3, align 8
  %316 = getelementptr inbounds %struct.BCState, %struct.BCState* %315, i32 0, i32 0
  %317 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %316, i32 0, i32 0
  %318 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %317, i32 0, i32 6
  %319 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %318, i32 0, i32 0
  store i32 %314, i32* %319, align 4
  %320 = load i32, i32* @BC_FLG_LL_CONN, align 4
  %321 = load %struct.BCState*, %struct.BCState** %3, align 8
  %322 = getelementptr inbounds %struct.BCState, %struct.BCState* %321, i32 0, i32 1
  %323 = call i32 @test_and_set_bit(i32 %320, i32* %322)
  %324 = load %struct.BCState*, %struct.BCState** %3, align 8
  %325 = getelementptr inbounds %struct.BCState, %struct.BCState* %324, i32 0, i32 0
  %326 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %325, i32 0, i32 0
  %327 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %326, i32 0, i32 6
  %328 = call i32 @add_timer(%struct.TYPE_9__* %327)
  br label %333

329:                                              ; preds = %272
  %330 = load %struct.BCState*, %struct.BCState** %3, align 8
  %331 = load i32, i32* @B_LL_CONNECT, align 4
  %332 = call i32 @schedule_event(%struct.BCState* %330, i32 %331)
  br label %333

333:                                              ; preds = %329, %309
  br label %350

334:                                              ; preds = %254
  %335 = load %struct.IsdnCardState*, %struct.IsdnCardState** %5, align 8
  %336 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %335, i32 0, i32 0
  %337 = load i32, i32* %336, align 4
  %338 = load i32, i32* @L1_DEB_WARN, align 4
  %339 = and i32 %337, %338
  %340 = icmp ne i32 %339, 0
  br i1 %340, label %341, label %349

341:                                              ; preds = %334
  %342 = load %struct.IsdnCardState*, %struct.IsdnCardState** %5, align 8
  %343 = load %struct.BCState*, %struct.BCState** %3, align 8
  %344 = getelementptr inbounds %struct.BCState, %struct.BCState* %343, i32 0, i32 0
  %345 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %344, i32 0, i32 0
  %346 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %345, i32 0, i32 0
  %347 = load i8*, i8** %346, align 8
  %348 = call i32 (%struct.IsdnCardState*, i8*, ...) @debugl1(%struct.IsdnCardState* %342, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.11, i64 0, i64 0), i8* %347)
  br label %349

349:                                              ; preds = %341, %334
  br label %350

350:                                              ; preds = %349, %333
  br label %677

351:                                              ; preds = %2
  %352 = load %struct.IsdnCardState*, %struct.IsdnCardState** %5, align 8
  %353 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %352, i32 0, i32 0
  %354 = load i32, i32* %353, align 4
  %355 = load i32, i32* @L1_DEB_HSCX, align 4
  %356 = and i32 %354, %355
  %357 = icmp ne i32 %356, 0
  br i1 %357, label %358, label %361

358:                                              ; preds = %351
  %359 = load %struct.IsdnCardState*, %struct.IsdnCardState** %5, align 8
  %360 = call i32 (%struct.IsdnCardState*, i8*, ...) @debugl1(%struct.IsdnCardState* %359, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.12, i64 0, i64 0))
  br label %361

361:                                              ; preds = %358, %351
  br label %677

362:                                              ; preds = %2
  %363 = load %struct.IsdnCardState*, %struct.IsdnCardState** %5, align 8
  %364 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %363, i32 0, i32 0
  %365 = load i32, i32* %364, align 4
  %366 = load i32, i32* @L1_DEB_HSCX, align 4
  %367 = and i32 %365, %366
  %368 = icmp ne i32 %367, 0
  br i1 %368, label %369, label %372

369:                                              ; preds = %362
  %370 = load %struct.IsdnCardState*, %struct.IsdnCardState** %5, align 8
  %371 = call i32 (%struct.IsdnCardState*, i8*, ...) @debugl1(%struct.IsdnCardState* %370, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.13, i64 0, i64 0))
  br label %372

372:                                              ; preds = %369, %362
  %373 = load %struct.BCState*, %struct.BCState** %3, align 8
  %374 = getelementptr inbounds %struct.BCState, %struct.BCState* %373, i32 0, i32 0
  %375 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %374, i32 0, i32 0
  %376 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %375, i32 0, i32 0
  %377 = load i8*, i8** %376, align 8
  %378 = load i8*, i8** @STFAX_ESCAPE, align 8
  %379 = icmp eq i8* %377, %378
  br i1 %379, label %380, label %475

380:                                              ; preds = %372
  store i32 5, i32* %7, align 4
  %381 = load %struct.BCState*, %struct.BCState** %3, align 8
  %382 = getelementptr inbounds %struct.BCState, %struct.BCState* %381, i32 0, i32 0
  %383 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %382, i32 0, i32 0
  %384 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %383, i32 0, i32 2
  %385 = load i32, i32* %384, align 4
  switch i32 %385, label %458 [
    i32 0, label %386
    i32 140, label %392
    i32 141, label %393
    i32 142, label %405
    i32 143, label %412
  ]

386:                                              ; preds = %380
  %387 = load i8*, i8** @STFAX_READY, align 8
  %388 = load %struct.BCState*, %struct.BCState** %3, align 8
  %389 = getelementptr inbounds %struct.BCState, %struct.BCState* %388, i32 0, i32 0
  %390 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %389, i32 0, i32 0
  %391 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %390, i32 0, i32 0
  store i8* %387, i8** %391, align 8
  br label %474

392:                                              ; preds = %380
  store i32 2, i32* %7, align 4
  br label %393

393:                                              ; preds = %380, %392
  %394 = load %struct.IsdnCardState*, %struct.IsdnCardState** %5, align 8
  %395 = load i32, i32* %6, align 4
  %396 = load i32, i32* @ISAR_HIS_PUMPCTRL, align 4
  %397 = or i32 %395, %396
  %398 = load i32, i32* @PCTRL_CMD_SILON, align 4
  %399 = call i32 @sendmsg(%struct.IsdnCardState* %394, i32 %397, i32 %398, i32 1, i32* %7)
  %400 = load i8*, i8** @STFAX_SILDET, align 8
  %401 = load %struct.BCState*, %struct.BCState** %3, align 8
  %402 = getelementptr inbounds %struct.BCState, %struct.BCState* %401, i32 0, i32 0
  %403 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %402, i32 0, i32 0
  %404 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %403, i32 0, i32 0
  store i8* %400, i8** %404, align 8
  br label %474

405:                                              ; preds = %380
  %406 = load i32, i32* @frm_extra_delay, align 4
  %407 = icmp ne i32 %406, 0
  br i1 %407, label %408, label %411

408:                                              ; preds = %405
  %409 = load i32, i32* @frm_extra_delay, align 4
  %410 = call i32 @mdelay(i32 %409)
  br label %411

411:                                              ; preds = %408, %405
  br label %412

412:                                              ; preds = %380, %411
  %413 = load %struct.BCState*, %struct.BCState** %3, align 8
  %414 = getelementptr inbounds %struct.BCState, %struct.BCState* %413, i32 0, i32 0
  %415 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %414, i32 0, i32 0
  %416 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %415, i32 0, i32 4
  %417 = load i32, i32* %416, align 4
  %418 = load %struct.BCState*, %struct.BCState** %3, align 8
  %419 = getelementptr inbounds %struct.BCState, %struct.BCState* %418, i32 0, i32 0
  %420 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %419, i32 0, i32 0
  %421 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %420, i32 0, i32 3
  store i32 %417, i32* %421, align 8
  store i32 %417, i32* %7, align 4
  %422 = load %struct.BCState*, %struct.BCState** %3, align 8
  %423 = getelementptr inbounds %struct.BCState, %struct.BCState* %422, i32 0, i32 0
  %424 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %423, i32 0, i32 0
  %425 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %424, i32 0, i32 4
  store i32 0, i32* %425, align 4
  %426 = load %struct.BCState*, %struct.BCState** %3, align 8
  %427 = getelementptr inbounds %struct.BCState, %struct.BCState* %426, i32 0, i32 0
  %428 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %427, i32 0, i32 0
  %429 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %428, i32 0, i32 2
  %430 = load i32, i32* %429, align 4
  %431 = load %struct.BCState*, %struct.BCState** %3, align 8
  %432 = getelementptr inbounds %struct.BCState, %struct.BCState* %431, i32 0, i32 0
  %433 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %432, i32 0, i32 0
  %434 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %433, i32 0, i32 1
  store i32 %430, i32* %434, align 8
  %435 = load %struct.BCState*, %struct.BCState** %3, align 8
  %436 = getelementptr inbounds %struct.BCState, %struct.BCState* %435, i32 0, i32 0
  %437 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %436, i32 0, i32 0
  %438 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %437, i32 0, i32 2
  store i32 0, i32* %438, align 4
  %439 = load %struct.IsdnCardState*, %struct.IsdnCardState** %5, align 8
  %440 = load i32, i32* %6, align 4
  %441 = load i32, i32* @ISAR_HIS_PUMPCTRL, align 4
  %442 = or i32 %440, %441
  %443 = load %struct.BCState*, %struct.BCState** %3, align 8
  %444 = getelementptr inbounds %struct.BCState, %struct.BCState* %443, i32 0, i32 0
  %445 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %444, i32 0, i32 0
  %446 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %445, i32 0, i32 1
  %447 = load i32, i32* %446, align 8
  %448 = call i32 @sendmsg(%struct.IsdnCardState* %439, i32 %442, i32 %447, i32 1, i32* %7)
  %449 = load i8*, i8** @STFAX_LINE, align 8
  %450 = load %struct.BCState*, %struct.BCState** %3, align 8
  %451 = getelementptr inbounds %struct.BCState, %struct.BCState* %450, i32 0, i32 0
  %452 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %451, i32 0, i32 0
  %453 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %452, i32 0, i32 0
  store i8* %449, i8** %453, align 8
  %454 = load %struct.BCState*, %struct.BCState** %3, align 8
  %455 = getelementptr inbounds %struct.BCState, %struct.BCState* %454, i32 0, i32 0
  %456 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %455, i32 0, i32 0
  %457 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %456, i32 0, i32 5
  store i32 3, i32* %457, align 8
  br label %474

458:                                              ; preds = %380
  %459 = load %struct.IsdnCardState*, %struct.IsdnCardState** %5, align 8
  %460 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %459, i32 0, i32 0
  %461 = load i32, i32* %460, align 4
  %462 = load i32, i32* @L1_DEB_HSCX, align 4
  %463 = and i32 %461, %462
  %464 = icmp ne i32 %463, 0
  br i1 %464, label %465, label %473

465:                                              ; preds = %458
  %466 = load %struct.IsdnCardState*, %struct.IsdnCardState** %5, align 8
  %467 = load %struct.BCState*, %struct.BCState** %3, align 8
  %468 = getelementptr inbounds %struct.BCState, %struct.BCState* %467, i32 0, i32 0
  %469 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %468, i32 0, i32 0
  %470 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %469, i32 0, i32 2
  %471 = load i32, i32* %470, align 4
  %472 = call i32 (%struct.IsdnCardState*, i8*, ...) @debugl1(%struct.IsdnCardState* %466, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.14, i64 0, i64 0), i32 %471)
  br label %473

473:                                              ; preds = %465, %458
  br label %474

474:                                              ; preds = %473, %412, %393, %386
  br label %527

475:                                              ; preds = %372
  %476 = load %struct.BCState*, %struct.BCState** %3, align 8
  %477 = getelementptr inbounds %struct.BCState, %struct.BCState* %476, i32 0, i32 0
  %478 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %477, i32 0, i32 0
  %479 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %478, i32 0, i32 0
  %480 = load i8*, i8** %479, align 8
  %481 = load i8*, i8** @STFAX_ACTIV, align 8
  %482 = icmp eq i8* %480, %481
  br i1 %482, label %483, label %517

483:                                              ; preds = %475
  %484 = load i32, i32* @BC_FLG_LL_OK, align 4
  %485 = load %struct.BCState*, %struct.BCState** %3, align 8
  %486 = getelementptr inbounds %struct.BCState, %struct.BCState* %485, i32 0, i32 1
  %487 = call i32 @test_and_clear_bit(i32 %484, i32* %486)
  %488 = icmp ne i32 %487, 0
  br i1 %488, label %489, label %493

489:                                              ; preds = %483
  %490 = load %struct.BCState*, %struct.BCState** %3, align 8
  %491 = load i32, i32* @B_LL_OK, align 4
  %492 = call i32 @schedule_event(%struct.BCState* %490, i32 %491)
  br label %511

493:                                              ; preds = %483
  %494 = load %struct.BCState*, %struct.BCState** %3, align 8
  %495 = getelementptr inbounds %struct.BCState, %struct.BCState* %494, i32 0, i32 0
  %496 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %495, i32 0, i32 0
  %497 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %496, i32 0, i32 1
  %498 = load i32, i32* %497, align 8
  %499 = icmp eq i32 %498, 142
  br i1 %499, label %500, label %506

500:                                              ; preds = %493
  %501 = load %struct.BCState*, %struct.BCState** %3, align 8
  %502 = call i32 @send_DLE_ETX(%struct.BCState* %501)
  %503 = load %struct.BCState*, %struct.BCState** %3, align 8
  %504 = load i32, i32* @B_LL_NOCARRIER, align 4
  %505 = call i32 @schedule_event(%struct.BCState* %503, i32 %504)
  br label %510

506:                                              ; preds = %493
  %507 = load %struct.BCState*, %struct.BCState** %3, align 8
  %508 = load i32, i32* @ISDN_FAX_CLASS1_FCERROR, align 4
  %509 = call i32 @ll_deliver_faxstat(%struct.BCState* %507, i32 %508)
  br label %510

510:                                              ; preds = %506, %500
  br label %511

511:                                              ; preds = %510, %489
  %512 = load i8*, i8** @STFAX_READY, align 8
  %513 = load %struct.BCState*, %struct.BCState** %3, align 8
  %514 = getelementptr inbounds %struct.BCState, %struct.BCState* %513, i32 0, i32 0
  %515 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %514, i32 0, i32 0
  %516 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %515, i32 0, i32 0
  store i8* %512, i8** %516, align 8
  br label %526

517:                                              ; preds = %475
  %518 = load i8*, i8** @STFAX_READY, align 8
  %519 = load %struct.BCState*, %struct.BCState** %3, align 8
  %520 = getelementptr inbounds %struct.BCState, %struct.BCState* %519, i32 0, i32 0
  %521 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %520, i32 0, i32 0
  %522 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %521, i32 0, i32 0
  store i8* %518, i8** %522, align 8
  %523 = load %struct.BCState*, %struct.BCState** %3, align 8
  %524 = load i32, i32* @ISDN_FAX_CLASS1_FCERROR, align 4
  %525 = call i32 @ll_deliver_faxstat(%struct.BCState* %523, i32 %524)
  br label %526

526:                                              ; preds = %517, %511
  br label %527

527:                                              ; preds = %526, %474
  br label %677

528:                                              ; preds = %2
  %529 = load %struct.IsdnCardState*, %struct.IsdnCardState** %5, align 8
  %530 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %529, i32 0, i32 0
  %531 = load i32, i32* %530, align 4
  %532 = load i32, i32* @L1_DEB_HSCX, align 4
  %533 = and i32 %531, %532
  %534 = icmp ne i32 %533, 0
  br i1 %534, label %535, label %538

535:                                              ; preds = %528
  %536 = load %struct.IsdnCardState*, %struct.IsdnCardState** %5, align 8
  %537 = call i32 (%struct.IsdnCardState*, i8*, ...) @debugl1(%struct.IsdnCardState* %536, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.15, i64 0, i64 0))
  br label %538

538:                                              ; preds = %535, %528
  %539 = load %struct.BCState*, %struct.BCState** %3, align 8
  %540 = getelementptr inbounds %struct.BCState, %struct.BCState* %539, i32 0, i32 0
  %541 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %540, i32 0, i32 0
  %542 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %541, i32 0, i32 0
  %543 = load i8*, i8** %542, align 8
  %544 = load i8*, i8** @STFAX_SILDET, align 8
  %545 = icmp eq i8* %543, %544
  br i1 %545, label %546, label %592

546:                                              ; preds = %538
  %547 = load %struct.BCState*, %struct.BCState** %3, align 8
  %548 = getelementptr inbounds %struct.BCState, %struct.BCState* %547, i32 0, i32 0
  %549 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %548, i32 0, i32 0
  %550 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %549, i32 0, i32 4
  %551 = load i32, i32* %550, align 4
  %552 = load %struct.BCState*, %struct.BCState** %3, align 8
  %553 = getelementptr inbounds %struct.BCState, %struct.BCState* %552, i32 0, i32 0
  %554 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %553, i32 0, i32 0
  %555 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %554, i32 0, i32 3
  store i32 %551, i32* %555, align 8
  store i32 %551, i32* %7, align 4
  %556 = load %struct.BCState*, %struct.BCState** %3, align 8
  %557 = getelementptr inbounds %struct.BCState, %struct.BCState* %556, i32 0, i32 0
  %558 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %557, i32 0, i32 0
  %559 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %558, i32 0, i32 4
  store i32 0, i32* %559, align 4
  %560 = load %struct.BCState*, %struct.BCState** %3, align 8
  %561 = getelementptr inbounds %struct.BCState, %struct.BCState* %560, i32 0, i32 0
  %562 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %561, i32 0, i32 0
  %563 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %562, i32 0, i32 2
  %564 = load i32, i32* %563, align 4
  %565 = load %struct.BCState*, %struct.BCState** %3, align 8
  %566 = getelementptr inbounds %struct.BCState, %struct.BCState* %565, i32 0, i32 0
  %567 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %566, i32 0, i32 0
  %568 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %567, i32 0, i32 1
  store i32 %564, i32* %568, align 8
  %569 = load %struct.BCState*, %struct.BCState** %3, align 8
  %570 = getelementptr inbounds %struct.BCState, %struct.BCState* %569, i32 0, i32 0
  %571 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %570, i32 0, i32 0
  %572 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %571, i32 0, i32 2
  store i32 0, i32* %572, align 4
  %573 = load %struct.IsdnCardState*, %struct.IsdnCardState** %5, align 8
  %574 = load i32, i32* %6, align 4
  %575 = load i32, i32* @ISAR_HIS_PUMPCTRL, align 4
  %576 = or i32 %574, %575
  %577 = load %struct.BCState*, %struct.BCState** %3, align 8
  %578 = getelementptr inbounds %struct.BCState, %struct.BCState* %577, i32 0, i32 0
  %579 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %578, i32 0, i32 0
  %580 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %579, i32 0, i32 1
  %581 = load i32, i32* %580, align 8
  %582 = call i32 @sendmsg(%struct.IsdnCardState* %573, i32 %576, i32 %581, i32 1, i32* %7)
  %583 = load i8*, i8** @STFAX_LINE, align 8
  %584 = load %struct.BCState*, %struct.BCState** %3, align 8
  %585 = getelementptr inbounds %struct.BCState, %struct.BCState* %584, i32 0, i32 0
  %586 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %585, i32 0, i32 0
  %587 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %586, i32 0, i32 0
  store i8* %583, i8** %587, align 8
  %588 = load %struct.BCState*, %struct.BCState** %3, align 8
  %589 = getelementptr inbounds %struct.BCState, %struct.BCState* %588, i32 0, i32 0
  %590 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %589, i32 0, i32 0
  %591 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %590, i32 0, i32 5
  store i32 3, i32* %591, align 8
  br label %592

592:                                              ; preds = %546, %538
  br label %677

593:                                              ; preds = %2
  %594 = load %struct.IsdnCardState*, %struct.IsdnCardState** %5, align 8
  %595 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %594, i32 0, i32 0
  %596 = load i32, i32* %595, align 4
  %597 = load i32, i32* @L1_DEB_HSCX, align 4
  %598 = and i32 %596, %597
  %599 = icmp ne i32 %598, 0
  br i1 %599, label %600, label %603

600:                                              ; preds = %593
  %601 = load %struct.IsdnCardState*, %struct.IsdnCardState** %5, align 8
  %602 = call i32 (%struct.IsdnCardState*, i8*, ...) @debugl1(%struct.IsdnCardState* %601, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.16, i64 0, i64 0))
  br label %603

603:                                              ; preds = %600, %593
  br label %677

604:                                              ; preds = %2
  %605 = load %struct.BCState*, %struct.BCState** %3, align 8
  %606 = getelementptr inbounds %struct.BCState, %struct.BCState* %605, i32 0, i32 0
  %607 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %606, i32 0, i32 0
  %608 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %607, i32 0, i32 0
  %609 = load i8*, i8** %608, align 8
  %610 = load i8*, i8** @STFAX_LINE, align 8
  %611 = icmp eq i8* %609, %610
  br i1 %611, label %612, label %651

612:                                              ; preds = %604
  %613 = load %struct.IsdnCardState*, %struct.IsdnCardState** %5, align 8
  %614 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %613, i32 0, i32 0
  %615 = load i32, i32* %614, align 4
  %616 = load i32, i32* @L1_DEB_HSCX, align 4
  %617 = and i32 %615, %616
  %618 = icmp ne i32 %617, 0
  br i1 %618, label %619, label %627

619:                                              ; preds = %612
  %620 = load %struct.IsdnCardState*, %struct.IsdnCardState** %5, align 8
  %621 = load %struct.BCState*, %struct.BCState** %3, align 8
  %622 = getelementptr inbounds %struct.BCState, %struct.BCState* %621, i32 0, i32 0
  %623 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %622, i32 0, i32 0
  %624 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %623, i32 0, i32 5
  %625 = load i32, i32* %624, align 8
  %626 = call i32 (%struct.IsdnCardState*, i8*, ...) @debugl1(%struct.IsdnCardState* %620, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.17, i64 0, i64 0), i32 %625)
  br label %627

627:                                              ; preds = %619, %612
  %628 = load %struct.BCState*, %struct.BCState** %3, align 8
  %629 = getelementptr inbounds %struct.BCState, %struct.BCState* %628, i32 0, i32 0
  %630 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %629, i32 0, i32 0
  %631 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %630, i32 0, i32 5
  %632 = load i32, i32* %631, align 8
  %633 = add nsw i32 %632, -1
  store i32 %633, i32* %631, align 8
  %634 = icmp ne i32 %632, 0
  br i1 %634, label %635, label %650

635:                                              ; preds = %627
  %636 = load %struct.IsdnCardState*, %struct.IsdnCardState** %5, align 8
  %637 = load i32, i32* %6, align 4
  %638 = load i32, i32* @ISAR_HIS_PUMPCTRL, align 4
  %639 = or i32 %637, %638
  %640 = load %struct.BCState*, %struct.BCState** %3, align 8
  %641 = getelementptr inbounds %struct.BCState, %struct.BCState* %640, i32 0, i32 0
  %642 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %641, i32 0, i32 0
  %643 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %642, i32 0, i32 1
  %644 = load i32, i32* %643, align 8
  %645 = load %struct.BCState*, %struct.BCState** %3, align 8
  %646 = getelementptr inbounds %struct.BCState, %struct.BCState* %645, i32 0, i32 0
  %647 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %646, i32 0, i32 0
  %648 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %647, i32 0, i32 3
  %649 = call i32 @sendmsg(%struct.IsdnCardState* %636, i32 %639, i32 %644, i32 1, i32* %648)
  br label %677

650:                                              ; preds = %627
  br label %651

651:                                              ; preds = %650, %604
  %652 = load %struct.IsdnCardState*, %struct.IsdnCardState** %5, align 8
  %653 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %652, i32 0, i32 0
  %654 = load i32, i32* %653, align 4
  %655 = load i32, i32* @L1_DEB_HSCX, align 4
  %656 = and i32 %654, %655
  %657 = icmp ne i32 %656, 0
  br i1 %657, label %658, label %661

658:                                              ; preds = %651
  %659 = load %struct.IsdnCardState*, %struct.IsdnCardState** %5, align 8
  %660 = call i32 (%struct.IsdnCardState*, i8*, ...) @debugl1(%struct.IsdnCardState* %659, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.18, i64 0, i64 0))
  br label %661

661:                                              ; preds = %658, %651
  %662 = load i8*, i8** @STFAX_ESCAPE, align 8
  %663 = load %struct.BCState*, %struct.BCState** %3, align 8
  %664 = getelementptr inbounds %struct.BCState, %struct.BCState* %663, i32 0, i32 0
  %665 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %664, i32 0, i32 0
  %666 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %665, i32 0, i32 0
  store i8* %662, i8** %666, align 8
  %667 = load %struct.IsdnCardState*, %struct.IsdnCardState** %5, align 8
  %668 = load i32, i32* %6, align 4
  %669 = load i32, i32* @ISAR_HIS_PUMPCTRL, align 4
  %670 = or i32 %668, %669
  %671 = load i32, i32* @PCTRL_CMD_ESC, align 4
  %672 = call i32 @sendmsg(%struct.IsdnCardState* %667, i32 %670, i32 %671, i32 0, i32* null)
  %673 = load %struct.BCState*, %struct.BCState** %3, align 8
  %674 = load i32, i32* @ISDN_FAX_CLASS1_FCERROR, align 4
  %675 = call i32 @ll_deliver_faxstat(%struct.BCState* %673, i32 %674)
  br label %677

676:                                              ; preds = %2
  br label %677

677:                                              ; preds = %676, %661, %635, %603, %592, %527, %361, %350, %253, %206, %159, %112, %65, %28
  ret void
}

declare dso_local i32 @SET_DPS(i32) #1

declare dso_local i32 @debugl1(%struct.IsdnCardState*, i8*, ...) #1

declare dso_local i32 @l1_msg_b(i32, i32, i32*) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @isar_pump_cmd(%struct.BCState*, i32, i32) #1

declare dso_local i32 @sendmsg(%struct.IsdnCardState*, i32, i32, i32, i32*) #1

declare dso_local i32 @test_and_set_bit(i32, i32*) #1

declare dso_local i32 @del_timer(%struct.TYPE_9__*) #1

declare dso_local i32 @add_timer(%struct.TYPE_9__*) #1

declare dso_local i32 @schedule_event(%struct.BCState*, i32) #1

declare dso_local i32 @mdelay(i32) #1

declare dso_local i32 @test_and_clear_bit(i32, i32*) #1

declare dso_local i32 @send_DLE_ETX(%struct.BCState*) #1

declare dso_local i32 @ll_deliver_faxstat(%struct.BCState*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
