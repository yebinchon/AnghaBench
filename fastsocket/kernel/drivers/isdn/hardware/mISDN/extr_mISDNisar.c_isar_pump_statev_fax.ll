; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hardware/mISDN/extr_mISDNisar.c_isar_pump_statev_fax.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hardware/mISDN/extr_mISDNisar.c_isar_pump_statev_fax.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.isar_ch = type { i8*, i32, i32, i32, i32, i32, %struct.TYPE_6__*, %struct.TYPE_5__, %struct.TYPE_7__, i32 }
%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_7__ = type { i32 }

@.str = private unnamed_addr constant [21 x i8] c"%s: pump stev TIMER\0A\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"%s: pump stev RSP_READY\0A\00", align 1
@STFAX_READY = common dso_local global i8* null, align 8
@HW_MOD_READY = common dso_local global i32 0, align 4
@STFAX_LINE = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [25 x i8] c"%s: pump stev LINE_TX_H\0A\00", align 1
@STFAX_CONT = common dso_local global i8* null, align 8
@ISAR_HIS_PUMPCTRL = common dso_local global i32 0, align 4
@PCTRL_CMD_CONT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [37 x i8] c"%s: pump stev LINE_TX_H wrong st %x\0A\00", align 1
@.str.4 = private unnamed_addr constant [25 x i8] c"%s: pump stev LINE_RX_H\0A\00", align 1
@.str.5 = private unnamed_addr constant [37 x i8] c"%s: pump stev LINE_RX_H wrong st %x\0A\00", align 1
@.str.6 = private unnamed_addr constant [25 x i8] c"%s: pump stev LINE_TX_B\0A\00", align 1
@.str.7 = private unnamed_addr constant [37 x i8] c"%s: pump stev LINE_TX_B wrong st %x\0A\00", align 1
@.str.8 = private unnamed_addr constant [25 x i8] c"%s: pump stev LINE_RX_B\0A\00", align 1
@.str.9 = private unnamed_addr constant [37 x i8] c"%s: pump stev LINE_RX_B wrong st %x\0A\00", align 1
@.str.10 = private unnamed_addr constant [24 x i8] c"%s: pump stev RSP_CONN\0A\00", align 1
@STFAX_ACTIV = common dso_local global i8* null, align 8
@ISAR_RATE_REQ = common dso_local global i32 0, align 4
@ISAR_HIS_PSTREQ = common dso_local global i32 0, align 4
@FLG_FTI_RUN = common dso_local global i32 0, align 4
@jiffies = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@FLG_LL_CONN = common dso_local global i32 0, align 4
@HW_MOD_CONNECT = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [36 x i8] c"%s: pump stev RSP_CONN wrong st %x\0A\00", align 1
@.str.12 = private unnamed_addr constant [25 x i8] c"%s: pump stev FLAGS_DET\0A\00", align 1
@.str.13 = private unnamed_addr constant [34 x i8] c"%s: pump stev RSP_DISC state(%d)\0A\00", align 1
@STFAX_ESCAPE = common dso_local global i8* null, align 8
@PCTRL_CMD_SILON = common dso_local global i32 0, align 4
@STFAX_SILDET = common dso_local global i8* null, align 8
@.str.14 = private unnamed_addr constant [32 x i8] c"%s: RSP_DISC unknown newcmd %x\0A\00", align 1
@FLG_LL_OK = common dso_local global i32 0, align 4
@HW_MOD_OK = common dso_local global i32 0, align 4
@HW_MOD_NOCARR = common dso_local global i32 0, align 4
@HW_MOD_FCERROR = common dso_local global i32 0, align 4
@.str.15 = private unnamed_addr constant [26 x i8] c"%s: pump stev RSP_SILDET\0A\00", align 1
@.str.16 = private unnamed_addr constant [26 x i8] c"%s: pump stev RSP_SILOFF\0A\00", align 1
@.str.17 = private unnamed_addr constant [32 x i8] c"%s: pump stev RSP_FCERR try %d\0A\00", align 1
@.str.18 = private unnamed_addr constant [25 x i8] c"%s: pump stev RSP_FCERR\0A\00", align 1
@PCTRL_CMD_ESC = common dso_local global i32 0, align 4
@BC_FLG_ORIG = common dso_local global i32 0, align 4
@HW_MOD_FRH = common dso_local global i32 0, align 4
@HW_MOD_FTH = common dso_local global i32 0, align 4
@bch = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.isar_ch*, i32)* @isar_pump_statev_fax to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @isar_pump_statev_fax(%struct.isar_ch* %0, i32 %1) #0 {
  %3 = alloca %struct.isar_ch*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.isar_ch* %0, %struct.isar_ch** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.isar_ch*, %struct.isar_ch** %3, align 8
  %9 = getelementptr inbounds %struct.isar_ch, %struct.isar_ch* %8, i32 0, i32 9
  %10 = load i32, i32* %9, align 8
  %11 = call i32 @SET_DPS(i32 %10)
  store i32 %11, i32* %5, align 4
  %12 = load i32, i32* %4, align 4
  switch i32 %12, label %504 [
    i32 139, label %13
    i32 130, label %20
    i32 134, label %33
    i32 136, label %68
    i32 135, label %103
    i32 137, label %138
    i32 133, label %173
    i32 138, label %257
    i32 132, label %264
    i32 129, label %395
    i32 128, label %441
    i32 131, label %448
  ]

13:                                               ; preds = %2
  %14 = load %struct.isar_ch*, %struct.isar_ch** %3, align 8
  %15 = getelementptr inbounds %struct.isar_ch, %struct.isar_ch* %14, i32 0, i32 6
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 (i8*, i32, ...) @pr_debug(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %18)
  br label %505

20:                                               ; preds = %2
  %21 = load %struct.isar_ch*, %struct.isar_ch** %3, align 8
  %22 = getelementptr inbounds %struct.isar_ch, %struct.isar_ch* %21, i32 0, i32 6
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 (i8*, i32, ...) @pr_debug(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 %25)
  %27 = load i8*, i8** @STFAX_READY, align 8
  %28 = load %struct.isar_ch*, %struct.isar_ch** %3, align 8
  %29 = getelementptr inbounds %struct.isar_ch, %struct.isar_ch* %28, i32 0, i32 0
  store i8* %27, i8** %29, align 8
  %30 = load %struct.isar_ch*, %struct.isar_ch** %3, align 8
  %31 = load i32, i32* @HW_MOD_READY, align 4
  %32 = call i32 @deliver_status(%struct.isar_ch* %30, i32 %31)
  br label %505

33:                                               ; preds = %2
  %34 = load %struct.isar_ch*, %struct.isar_ch** %3, align 8
  %35 = getelementptr inbounds %struct.isar_ch, %struct.isar_ch* %34, i32 0, i32 0
  %36 = load i8*, i8** %35, align 8
  %37 = load i8*, i8** @STFAX_LINE, align 8
  %38 = icmp eq i8* %36, %37
  br i1 %38, label %39, label %57

39:                                               ; preds = %33
  %40 = load %struct.isar_ch*, %struct.isar_ch** %3, align 8
  %41 = getelementptr inbounds %struct.isar_ch, %struct.isar_ch* %40, i32 0, i32 6
  %42 = load %struct.TYPE_6__*, %struct.TYPE_6__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i32 (i8*, i32, ...) @pr_debug(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i32 %44)
  %46 = load i8*, i8** @STFAX_CONT, align 8
  %47 = load %struct.isar_ch*, %struct.isar_ch** %3, align 8
  %48 = getelementptr inbounds %struct.isar_ch, %struct.isar_ch* %47, i32 0, i32 0
  store i8* %46, i8** %48, align 8
  %49 = load %struct.isar_ch*, %struct.isar_ch** %3, align 8
  %50 = getelementptr inbounds %struct.isar_ch, %struct.isar_ch* %49, i32 0, i32 6
  %51 = load %struct.TYPE_6__*, %struct.TYPE_6__** %50, align 8
  %52 = load i32, i32* %5, align 4
  %53 = load i32, i32* @ISAR_HIS_PUMPCTRL, align 4
  %54 = or i32 %52, %53
  %55 = load i32, i32* @PCTRL_CMD_CONT, align 4
  %56 = call i32 @send_mbox(%struct.TYPE_6__* %51, i32 %54, i32 %55, i32 0, i32* null)
  br label %67

57:                                               ; preds = %33
  %58 = load %struct.isar_ch*, %struct.isar_ch** %3, align 8
  %59 = getelementptr inbounds %struct.isar_ch, %struct.isar_ch* %58, i32 0, i32 6
  %60 = load %struct.TYPE_6__*, %struct.TYPE_6__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.isar_ch*, %struct.isar_ch** %3, align 8
  %64 = getelementptr inbounds %struct.isar_ch, %struct.isar_ch* %63, i32 0, i32 0
  %65 = load i8*, i8** %64, align 8
  %66 = call i32 (i8*, i32, ...) @pr_debug(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i64 0, i64 0), i32 %62, i8* %65)
  br label %67

67:                                               ; preds = %57, %39
  br label %505

68:                                               ; preds = %2
  %69 = load %struct.isar_ch*, %struct.isar_ch** %3, align 8
  %70 = getelementptr inbounds %struct.isar_ch, %struct.isar_ch* %69, i32 0, i32 0
  %71 = load i8*, i8** %70, align 8
  %72 = load i8*, i8** @STFAX_LINE, align 8
  %73 = icmp eq i8* %71, %72
  br i1 %73, label %74, label %92

74:                                               ; preds = %68
  %75 = load %struct.isar_ch*, %struct.isar_ch** %3, align 8
  %76 = getelementptr inbounds %struct.isar_ch, %struct.isar_ch* %75, i32 0, i32 6
  %77 = load %struct.TYPE_6__*, %struct.TYPE_6__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = call i32 (i8*, i32, ...) @pr_debug(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0), i32 %79)
  %81 = load i8*, i8** @STFAX_CONT, align 8
  %82 = load %struct.isar_ch*, %struct.isar_ch** %3, align 8
  %83 = getelementptr inbounds %struct.isar_ch, %struct.isar_ch* %82, i32 0, i32 0
  store i8* %81, i8** %83, align 8
  %84 = load %struct.isar_ch*, %struct.isar_ch** %3, align 8
  %85 = getelementptr inbounds %struct.isar_ch, %struct.isar_ch* %84, i32 0, i32 6
  %86 = load %struct.TYPE_6__*, %struct.TYPE_6__** %85, align 8
  %87 = load i32, i32* %5, align 4
  %88 = load i32, i32* @ISAR_HIS_PUMPCTRL, align 4
  %89 = or i32 %87, %88
  %90 = load i32, i32* @PCTRL_CMD_CONT, align 4
  %91 = call i32 @send_mbox(%struct.TYPE_6__* %86, i32 %89, i32 %90, i32 0, i32* null)
  br label %102

92:                                               ; preds = %68
  %93 = load %struct.isar_ch*, %struct.isar_ch** %3, align 8
  %94 = getelementptr inbounds %struct.isar_ch, %struct.isar_ch* %93, i32 0, i32 6
  %95 = load %struct.TYPE_6__*, %struct.TYPE_6__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = load %struct.isar_ch*, %struct.isar_ch** %3, align 8
  %99 = getelementptr inbounds %struct.isar_ch, %struct.isar_ch* %98, i32 0, i32 0
  %100 = load i8*, i8** %99, align 8
  %101 = call i32 (i8*, i32, ...) @pr_debug(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.5, i64 0, i64 0), i32 %97, i8* %100)
  br label %102

102:                                              ; preds = %92, %74
  br label %505

103:                                              ; preds = %2
  %104 = load %struct.isar_ch*, %struct.isar_ch** %3, align 8
  %105 = getelementptr inbounds %struct.isar_ch, %struct.isar_ch* %104, i32 0, i32 0
  %106 = load i8*, i8** %105, align 8
  %107 = load i8*, i8** @STFAX_LINE, align 8
  %108 = icmp eq i8* %106, %107
  br i1 %108, label %109, label %127

109:                                              ; preds = %103
  %110 = load %struct.isar_ch*, %struct.isar_ch** %3, align 8
  %111 = getelementptr inbounds %struct.isar_ch, %struct.isar_ch* %110, i32 0, i32 6
  %112 = load %struct.TYPE_6__*, %struct.TYPE_6__** %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  %115 = call i32 (i8*, i32, ...) @pr_debug(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.6, i64 0, i64 0), i32 %114)
  %116 = load i8*, i8** @STFAX_CONT, align 8
  %117 = load %struct.isar_ch*, %struct.isar_ch** %3, align 8
  %118 = getelementptr inbounds %struct.isar_ch, %struct.isar_ch* %117, i32 0, i32 0
  store i8* %116, i8** %118, align 8
  %119 = load %struct.isar_ch*, %struct.isar_ch** %3, align 8
  %120 = getelementptr inbounds %struct.isar_ch, %struct.isar_ch* %119, i32 0, i32 6
  %121 = load %struct.TYPE_6__*, %struct.TYPE_6__** %120, align 8
  %122 = load i32, i32* %5, align 4
  %123 = load i32, i32* @ISAR_HIS_PUMPCTRL, align 4
  %124 = or i32 %122, %123
  %125 = load i32, i32* @PCTRL_CMD_CONT, align 4
  %126 = call i32 @send_mbox(%struct.TYPE_6__* %121, i32 %124, i32 %125, i32 0, i32* null)
  br label %137

127:                                              ; preds = %103
  %128 = load %struct.isar_ch*, %struct.isar_ch** %3, align 8
  %129 = getelementptr inbounds %struct.isar_ch, %struct.isar_ch* %128, i32 0, i32 6
  %130 = load %struct.TYPE_6__*, %struct.TYPE_6__** %129, align 8
  %131 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 4
  %133 = load %struct.isar_ch*, %struct.isar_ch** %3, align 8
  %134 = getelementptr inbounds %struct.isar_ch, %struct.isar_ch* %133, i32 0, i32 0
  %135 = load i8*, i8** %134, align 8
  %136 = call i32 (i8*, i32, ...) @pr_debug(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.7, i64 0, i64 0), i32 %132, i8* %135)
  br label %137

137:                                              ; preds = %127, %109
  br label %505

138:                                              ; preds = %2
  %139 = load %struct.isar_ch*, %struct.isar_ch** %3, align 8
  %140 = getelementptr inbounds %struct.isar_ch, %struct.isar_ch* %139, i32 0, i32 0
  %141 = load i8*, i8** %140, align 8
  %142 = load i8*, i8** @STFAX_LINE, align 8
  %143 = icmp eq i8* %141, %142
  br i1 %143, label %144, label %162

144:                                              ; preds = %138
  %145 = load %struct.isar_ch*, %struct.isar_ch** %3, align 8
  %146 = getelementptr inbounds %struct.isar_ch, %struct.isar_ch* %145, i32 0, i32 6
  %147 = load %struct.TYPE_6__*, %struct.TYPE_6__** %146, align 8
  %148 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 4
  %150 = call i32 (i8*, i32, ...) @pr_debug(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.8, i64 0, i64 0), i32 %149)
  %151 = load i8*, i8** @STFAX_CONT, align 8
  %152 = load %struct.isar_ch*, %struct.isar_ch** %3, align 8
  %153 = getelementptr inbounds %struct.isar_ch, %struct.isar_ch* %152, i32 0, i32 0
  store i8* %151, i8** %153, align 8
  %154 = load %struct.isar_ch*, %struct.isar_ch** %3, align 8
  %155 = getelementptr inbounds %struct.isar_ch, %struct.isar_ch* %154, i32 0, i32 6
  %156 = load %struct.TYPE_6__*, %struct.TYPE_6__** %155, align 8
  %157 = load i32, i32* %5, align 4
  %158 = load i32, i32* @ISAR_HIS_PUMPCTRL, align 4
  %159 = or i32 %157, %158
  %160 = load i32, i32* @PCTRL_CMD_CONT, align 4
  %161 = call i32 @send_mbox(%struct.TYPE_6__* %156, i32 %159, i32 %160, i32 0, i32* null)
  br label %172

162:                                              ; preds = %138
  %163 = load %struct.isar_ch*, %struct.isar_ch** %3, align 8
  %164 = getelementptr inbounds %struct.isar_ch, %struct.isar_ch* %163, i32 0, i32 6
  %165 = load %struct.TYPE_6__*, %struct.TYPE_6__** %164, align 8
  %166 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %165, i32 0, i32 0
  %167 = load i32, i32* %166, align 4
  %168 = load %struct.isar_ch*, %struct.isar_ch** %3, align 8
  %169 = getelementptr inbounds %struct.isar_ch, %struct.isar_ch* %168, i32 0, i32 0
  %170 = load i8*, i8** %169, align 8
  %171 = call i32 (i8*, i32, ...) @pr_debug(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.9, i64 0, i64 0), i32 %167, i8* %170)
  br label %172

172:                                              ; preds = %162, %144
  br label %505

173:                                              ; preds = %2
  %174 = load %struct.isar_ch*, %struct.isar_ch** %3, align 8
  %175 = getelementptr inbounds %struct.isar_ch, %struct.isar_ch* %174, i32 0, i32 0
  %176 = load i8*, i8** %175, align 8
  %177 = load i8*, i8** @STFAX_CONT, align 8
  %178 = icmp eq i8* %176, %177
  br i1 %178, label %179, label %246

179:                                              ; preds = %173
  %180 = load %struct.isar_ch*, %struct.isar_ch** %3, align 8
  %181 = getelementptr inbounds %struct.isar_ch, %struct.isar_ch* %180, i32 0, i32 6
  %182 = load %struct.TYPE_6__*, %struct.TYPE_6__** %181, align 8
  %183 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %182, i32 0, i32 0
  %184 = load i32, i32* %183, align 4
  %185 = call i32 (i8*, i32, ...) @pr_debug(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.10, i64 0, i64 0), i32 %184)
  %186 = load i8*, i8** @STFAX_ACTIV, align 8
  %187 = load %struct.isar_ch*, %struct.isar_ch** %3, align 8
  %188 = getelementptr inbounds %struct.isar_ch, %struct.isar_ch* %187, i32 0, i32 0
  store i8* %186, i8** %188, align 8
  %189 = load i32, i32* @ISAR_RATE_REQ, align 4
  %190 = load %struct.isar_ch*, %struct.isar_ch** %3, align 8
  %191 = getelementptr inbounds %struct.isar_ch, %struct.isar_ch* %190, i32 0, i32 6
  %192 = load %struct.TYPE_6__*, %struct.TYPE_6__** %191, align 8
  %193 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %192, i32 0, i32 1
  %194 = call i32 @test_and_set_bit(i32 %189, i32* %193)
  %195 = load %struct.isar_ch*, %struct.isar_ch** %3, align 8
  %196 = getelementptr inbounds %struct.isar_ch, %struct.isar_ch* %195, i32 0, i32 6
  %197 = load %struct.TYPE_6__*, %struct.TYPE_6__** %196, align 8
  %198 = load i32, i32* %5, align 4
  %199 = load i32, i32* @ISAR_HIS_PSTREQ, align 4
  %200 = or i32 %198, %199
  %201 = call i32 @send_mbox(%struct.TYPE_6__* %197, i32 %200, i32 0, i32 0, i32* null)
  %202 = load %struct.isar_ch*, %struct.isar_ch** %3, align 8
  %203 = getelementptr inbounds %struct.isar_ch, %struct.isar_ch* %202, i32 0, i32 1
  %204 = load i32, i32* %203, align 8
  %205 = icmp eq i32 %204, 141
  br i1 %205, label %206, label %241

206:                                              ; preds = %179
  %207 = load %struct.isar_ch*, %struct.isar_ch** %3, align 8
  %208 = getelementptr inbounds %struct.isar_ch, %struct.isar_ch* %207, i32 0, i32 2
  %209 = load i32, i32* %208, align 4
  %210 = icmp eq i32 %209, 3
  %211 = zext i1 %210 to i64
  %212 = select i1 %210, i32 1000, i32 200
  store i32 %212, i32* %7, align 4
  %213 = load i32, i32* @FLG_FTI_RUN, align 4
  %214 = load %struct.isar_ch*, %struct.isar_ch** %3, align 8
  %215 = getelementptr inbounds %struct.isar_ch, %struct.isar_ch* %214, i32 0, i32 7
  %216 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %215, i32 0, i32 0
  %217 = call i32 @test_and_set_bit(i32 %213, i32* %216)
  %218 = icmp ne i32 %217, 0
  br i1 %218, label %219, label %223

219:                                              ; preds = %206
  %220 = load %struct.isar_ch*, %struct.isar_ch** %3, align 8
  %221 = getelementptr inbounds %struct.isar_ch, %struct.isar_ch* %220, i32 0, i32 8
  %222 = call i32 @del_timer(%struct.TYPE_7__* %221)
  br label %223

223:                                              ; preds = %219, %206
  %224 = load i32, i32* @jiffies, align 4
  %225 = load i32, i32* %7, align 4
  %226 = load i32, i32* @HZ, align 4
  %227 = mul nsw i32 %225, %226
  %228 = sdiv i32 %227, 1000
  %229 = add nsw i32 %224, %228
  %230 = load %struct.isar_ch*, %struct.isar_ch** %3, align 8
  %231 = getelementptr inbounds %struct.isar_ch, %struct.isar_ch* %230, i32 0, i32 8
  %232 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %231, i32 0, i32 0
  store i32 %229, i32* %232, align 4
  %233 = load i32, i32* @FLG_LL_CONN, align 4
  %234 = load %struct.isar_ch*, %struct.isar_ch** %3, align 8
  %235 = getelementptr inbounds %struct.isar_ch, %struct.isar_ch* %234, i32 0, i32 7
  %236 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %235, i32 0, i32 0
  %237 = call i32 @test_and_set_bit(i32 %233, i32* %236)
  %238 = load %struct.isar_ch*, %struct.isar_ch** %3, align 8
  %239 = getelementptr inbounds %struct.isar_ch, %struct.isar_ch* %238, i32 0, i32 8
  %240 = call i32 @add_timer(%struct.TYPE_7__* %239)
  br label %245

241:                                              ; preds = %179
  %242 = load %struct.isar_ch*, %struct.isar_ch** %3, align 8
  %243 = load i32, i32* @HW_MOD_CONNECT, align 4
  %244 = call i32 @deliver_status(%struct.isar_ch* %242, i32 %243)
  br label %245

245:                                              ; preds = %241, %223
  br label %256

246:                                              ; preds = %173
  %247 = load %struct.isar_ch*, %struct.isar_ch** %3, align 8
  %248 = getelementptr inbounds %struct.isar_ch, %struct.isar_ch* %247, i32 0, i32 6
  %249 = load %struct.TYPE_6__*, %struct.TYPE_6__** %248, align 8
  %250 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %249, i32 0, i32 0
  %251 = load i32, i32* %250, align 4
  %252 = load %struct.isar_ch*, %struct.isar_ch** %3, align 8
  %253 = getelementptr inbounds %struct.isar_ch, %struct.isar_ch* %252, i32 0, i32 0
  %254 = load i8*, i8** %253, align 8
  %255 = call i32 (i8*, i32, ...) @pr_debug(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.11, i64 0, i64 0), i32 %251, i8* %254)
  br label %256

256:                                              ; preds = %246, %245
  br label %505

257:                                              ; preds = %2
  %258 = load %struct.isar_ch*, %struct.isar_ch** %3, align 8
  %259 = getelementptr inbounds %struct.isar_ch, %struct.isar_ch* %258, i32 0, i32 6
  %260 = load %struct.TYPE_6__*, %struct.TYPE_6__** %259, align 8
  %261 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %260, i32 0, i32 0
  %262 = load i32, i32* %261, align 4
  %263 = call i32 (i8*, i32, ...) @pr_debug(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.12, i64 0, i64 0), i32 %262)
  br label %505

264:                                              ; preds = %2
  %265 = load %struct.isar_ch*, %struct.isar_ch** %3, align 8
  %266 = getelementptr inbounds %struct.isar_ch, %struct.isar_ch* %265, i32 0, i32 6
  %267 = load %struct.TYPE_6__*, %struct.TYPE_6__** %266, align 8
  %268 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %267, i32 0, i32 0
  %269 = load i32, i32* %268, align 4
  %270 = load %struct.isar_ch*, %struct.isar_ch** %3, align 8
  %271 = getelementptr inbounds %struct.isar_ch, %struct.isar_ch* %270, i32 0, i32 0
  %272 = load i8*, i8** %271, align 8
  %273 = call i32 (i8*, i32, ...) @pr_debug(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.13, i64 0, i64 0), i32 %269, i8* %272)
  %274 = load %struct.isar_ch*, %struct.isar_ch** %3, align 8
  %275 = getelementptr inbounds %struct.isar_ch, %struct.isar_ch* %274, i32 0, i32 0
  %276 = load i8*, i8** %275, align 8
  %277 = load i8*, i8** @STFAX_ESCAPE, align 8
  %278 = icmp eq i8* %276, %277
  br i1 %278, label %279, label %344

279:                                              ; preds = %264
  store i32 5, i32* %6, align 4
  %280 = load %struct.isar_ch*, %struct.isar_ch** %3, align 8
  %281 = getelementptr inbounds %struct.isar_ch, %struct.isar_ch* %280, i32 0, i32 3
  %282 = load i32, i32* %281, align 8
  switch i32 %282, label %333 [
    i32 0, label %283
    i32 140, label %287
    i32 141, label %288
    i32 143, label %300
    i32 142, label %300
  ]

283:                                              ; preds = %279
  %284 = load i8*, i8** @STFAX_READY, align 8
  %285 = load %struct.isar_ch*, %struct.isar_ch** %3, align 8
  %286 = getelementptr inbounds %struct.isar_ch, %struct.isar_ch* %285, i32 0, i32 0
  store i8* %284, i8** %286, align 8
  br label %343

287:                                              ; preds = %279
  store i32 2, i32* %6, align 4
  br label %288

288:                                              ; preds = %279, %287
  %289 = load %struct.isar_ch*, %struct.isar_ch** %3, align 8
  %290 = getelementptr inbounds %struct.isar_ch, %struct.isar_ch* %289, i32 0, i32 6
  %291 = load %struct.TYPE_6__*, %struct.TYPE_6__** %290, align 8
  %292 = load i32, i32* %5, align 4
  %293 = load i32, i32* @ISAR_HIS_PUMPCTRL, align 4
  %294 = or i32 %292, %293
  %295 = load i32, i32* @PCTRL_CMD_SILON, align 4
  %296 = call i32 @send_mbox(%struct.TYPE_6__* %291, i32 %294, i32 %295, i32 1, i32* %6)
  %297 = load i8*, i8** @STFAX_SILDET, align 8
  %298 = load %struct.isar_ch*, %struct.isar_ch** %3, align 8
  %299 = getelementptr inbounds %struct.isar_ch, %struct.isar_ch* %298, i32 0, i32 0
  store i8* %297, i8** %299, align 8
  br label %343

300:                                              ; preds = %279, %279
  %301 = load %struct.isar_ch*, %struct.isar_ch** %3, align 8
  %302 = getelementptr inbounds %struct.isar_ch, %struct.isar_ch* %301, i32 0, i32 4
  %303 = load i32, i32* %302, align 4
  %304 = load %struct.isar_ch*, %struct.isar_ch** %3, align 8
  %305 = getelementptr inbounds %struct.isar_ch, %struct.isar_ch* %304, i32 0, i32 2
  store i32 %303, i32* %305, align 4
  %306 = load %struct.isar_ch*, %struct.isar_ch** %3, align 8
  %307 = getelementptr inbounds %struct.isar_ch, %struct.isar_ch* %306, i32 0, i32 4
  %308 = load i32, i32* %307, align 4
  store i32 %308, i32* %6, align 4
  %309 = load %struct.isar_ch*, %struct.isar_ch** %3, align 8
  %310 = getelementptr inbounds %struct.isar_ch, %struct.isar_ch* %309, i32 0, i32 4
  store i32 0, i32* %310, align 4
  %311 = load %struct.isar_ch*, %struct.isar_ch** %3, align 8
  %312 = getelementptr inbounds %struct.isar_ch, %struct.isar_ch* %311, i32 0, i32 3
  %313 = load i32, i32* %312, align 8
  %314 = load %struct.isar_ch*, %struct.isar_ch** %3, align 8
  %315 = getelementptr inbounds %struct.isar_ch, %struct.isar_ch* %314, i32 0, i32 1
  store i32 %313, i32* %315, align 8
  %316 = load %struct.isar_ch*, %struct.isar_ch** %3, align 8
  %317 = getelementptr inbounds %struct.isar_ch, %struct.isar_ch* %316, i32 0, i32 3
  store i32 0, i32* %317, align 8
  %318 = load %struct.isar_ch*, %struct.isar_ch** %3, align 8
  %319 = getelementptr inbounds %struct.isar_ch, %struct.isar_ch* %318, i32 0, i32 6
  %320 = load %struct.TYPE_6__*, %struct.TYPE_6__** %319, align 8
  %321 = load i32, i32* %5, align 4
  %322 = load i32, i32* @ISAR_HIS_PUMPCTRL, align 4
  %323 = or i32 %321, %322
  %324 = load %struct.isar_ch*, %struct.isar_ch** %3, align 8
  %325 = getelementptr inbounds %struct.isar_ch, %struct.isar_ch* %324, i32 0, i32 1
  %326 = load i32, i32* %325, align 8
  %327 = call i32 @send_mbox(%struct.TYPE_6__* %320, i32 %323, i32 %326, i32 1, i32* %6)
  %328 = load i8*, i8** @STFAX_LINE, align 8
  %329 = load %struct.isar_ch*, %struct.isar_ch** %3, align 8
  %330 = getelementptr inbounds %struct.isar_ch, %struct.isar_ch* %329, i32 0, i32 0
  store i8* %328, i8** %330, align 8
  %331 = load %struct.isar_ch*, %struct.isar_ch** %3, align 8
  %332 = getelementptr inbounds %struct.isar_ch, %struct.isar_ch* %331, i32 0, i32 5
  store i32 3, i32* %332, align 8
  br label %343

333:                                              ; preds = %279
  %334 = load %struct.isar_ch*, %struct.isar_ch** %3, align 8
  %335 = getelementptr inbounds %struct.isar_ch, %struct.isar_ch* %334, i32 0, i32 6
  %336 = load %struct.TYPE_6__*, %struct.TYPE_6__** %335, align 8
  %337 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %336, i32 0, i32 0
  %338 = load i32, i32* %337, align 4
  %339 = load %struct.isar_ch*, %struct.isar_ch** %3, align 8
  %340 = getelementptr inbounds %struct.isar_ch, %struct.isar_ch* %339, i32 0, i32 3
  %341 = load i32, i32* %340, align 8
  %342 = call i32 (i8*, i32, ...) @pr_debug(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.14, i64 0, i64 0), i32 %338, i32 %341)
  br label %343

343:                                              ; preds = %333, %300, %288, %283
  br label %394

344:                                              ; preds = %264
  %345 = load %struct.isar_ch*, %struct.isar_ch** %3, align 8
  %346 = getelementptr inbounds %struct.isar_ch, %struct.isar_ch* %345, i32 0, i32 0
  %347 = load i8*, i8** %346, align 8
  %348 = load i8*, i8** @STFAX_ACTIV, align 8
  %349 = icmp eq i8* %347, %348
  br i1 %349, label %350, label %379

350:                                              ; preds = %344
  %351 = load i32, i32* @FLG_LL_OK, align 4
  %352 = load %struct.isar_ch*, %struct.isar_ch** %3, align 8
  %353 = getelementptr inbounds %struct.isar_ch, %struct.isar_ch* %352, i32 0, i32 7
  %354 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %353, i32 0, i32 0
  %355 = call i32 @test_and_clear_bit(i32 %351, i32* %354)
  %356 = icmp ne i32 %355, 0
  br i1 %356, label %357, label %361

357:                                              ; preds = %350
  %358 = load %struct.isar_ch*, %struct.isar_ch** %3, align 8
  %359 = load i32, i32* @HW_MOD_OK, align 4
  %360 = call i32 @deliver_status(%struct.isar_ch* %358, i32 %359)
  br label %375

361:                                              ; preds = %350
  %362 = load %struct.isar_ch*, %struct.isar_ch** %3, align 8
  %363 = getelementptr inbounds %struct.isar_ch, %struct.isar_ch* %362, i32 0, i32 1
  %364 = load i32, i32* %363, align 8
  %365 = icmp eq i32 %364, 142
  br i1 %365, label %366, label %370

366:                                              ; preds = %361
  %367 = load %struct.isar_ch*, %struct.isar_ch** %3, align 8
  %368 = load i32, i32* @HW_MOD_NOCARR, align 4
  %369 = call i32 @deliver_status(%struct.isar_ch* %367, i32 %368)
  br label %374

370:                                              ; preds = %361
  %371 = load %struct.isar_ch*, %struct.isar_ch** %3, align 8
  %372 = load i32, i32* @HW_MOD_FCERROR, align 4
  %373 = call i32 @deliver_status(%struct.isar_ch* %371, i32 %372)
  br label %374

374:                                              ; preds = %370, %366
  br label %375

375:                                              ; preds = %374, %357
  %376 = load i8*, i8** @STFAX_READY, align 8
  %377 = load %struct.isar_ch*, %struct.isar_ch** %3, align 8
  %378 = getelementptr inbounds %struct.isar_ch, %struct.isar_ch* %377, i32 0, i32 0
  store i8* %376, i8** %378, align 8
  br label %393

379:                                              ; preds = %344
  %380 = load %struct.isar_ch*, %struct.isar_ch** %3, align 8
  %381 = getelementptr inbounds %struct.isar_ch, %struct.isar_ch* %380, i32 0, i32 0
  %382 = load i8*, i8** %381, align 8
  %383 = load i8*, i8** @STFAX_SILDET, align 8
  %384 = icmp ne i8* %382, %383
  br i1 %384, label %385, label %392

385:                                              ; preds = %379
  %386 = load i8*, i8** @STFAX_READY, align 8
  %387 = load %struct.isar_ch*, %struct.isar_ch** %3, align 8
  %388 = getelementptr inbounds %struct.isar_ch, %struct.isar_ch* %387, i32 0, i32 0
  store i8* %386, i8** %388, align 8
  %389 = load %struct.isar_ch*, %struct.isar_ch** %3, align 8
  %390 = load i32, i32* @HW_MOD_FCERROR, align 4
  %391 = call i32 @deliver_status(%struct.isar_ch* %389, i32 %390)
  br label %392

392:                                              ; preds = %385, %379
  br label %393

393:                                              ; preds = %392, %375
  br label %394

394:                                              ; preds = %393, %343
  br label %505

395:                                              ; preds = %2
  %396 = load %struct.isar_ch*, %struct.isar_ch** %3, align 8
  %397 = getelementptr inbounds %struct.isar_ch, %struct.isar_ch* %396, i32 0, i32 6
  %398 = load %struct.TYPE_6__*, %struct.TYPE_6__** %397, align 8
  %399 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %398, i32 0, i32 0
  %400 = load i32, i32* %399, align 4
  %401 = call i32 (i8*, i32, ...) @pr_debug(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.15, i64 0, i64 0), i32 %400)
  %402 = load %struct.isar_ch*, %struct.isar_ch** %3, align 8
  %403 = getelementptr inbounds %struct.isar_ch, %struct.isar_ch* %402, i32 0, i32 0
  %404 = load i8*, i8** %403, align 8
  %405 = load i8*, i8** @STFAX_SILDET, align 8
  %406 = icmp eq i8* %404, %405
  br i1 %406, label %407, label %440

407:                                              ; preds = %395
  %408 = load %struct.isar_ch*, %struct.isar_ch** %3, align 8
  %409 = getelementptr inbounds %struct.isar_ch, %struct.isar_ch* %408, i32 0, i32 4
  %410 = load i32, i32* %409, align 4
  %411 = load %struct.isar_ch*, %struct.isar_ch** %3, align 8
  %412 = getelementptr inbounds %struct.isar_ch, %struct.isar_ch* %411, i32 0, i32 2
  store i32 %410, i32* %412, align 4
  %413 = load %struct.isar_ch*, %struct.isar_ch** %3, align 8
  %414 = getelementptr inbounds %struct.isar_ch, %struct.isar_ch* %413, i32 0, i32 4
  %415 = load i32, i32* %414, align 4
  store i32 %415, i32* %6, align 4
  %416 = load %struct.isar_ch*, %struct.isar_ch** %3, align 8
  %417 = getelementptr inbounds %struct.isar_ch, %struct.isar_ch* %416, i32 0, i32 4
  store i32 0, i32* %417, align 4
  %418 = load %struct.isar_ch*, %struct.isar_ch** %3, align 8
  %419 = getelementptr inbounds %struct.isar_ch, %struct.isar_ch* %418, i32 0, i32 3
  %420 = load i32, i32* %419, align 8
  %421 = load %struct.isar_ch*, %struct.isar_ch** %3, align 8
  %422 = getelementptr inbounds %struct.isar_ch, %struct.isar_ch* %421, i32 0, i32 1
  store i32 %420, i32* %422, align 8
  %423 = load %struct.isar_ch*, %struct.isar_ch** %3, align 8
  %424 = getelementptr inbounds %struct.isar_ch, %struct.isar_ch* %423, i32 0, i32 3
  store i32 0, i32* %424, align 8
  %425 = load %struct.isar_ch*, %struct.isar_ch** %3, align 8
  %426 = getelementptr inbounds %struct.isar_ch, %struct.isar_ch* %425, i32 0, i32 6
  %427 = load %struct.TYPE_6__*, %struct.TYPE_6__** %426, align 8
  %428 = load i32, i32* %5, align 4
  %429 = load i32, i32* @ISAR_HIS_PUMPCTRL, align 4
  %430 = or i32 %428, %429
  %431 = load %struct.isar_ch*, %struct.isar_ch** %3, align 8
  %432 = getelementptr inbounds %struct.isar_ch, %struct.isar_ch* %431, i32 0, i32 1
  %433 = load i32, i32* %432, align 8
  %434 = call i32 @send_mbox(%struct.TYPE_6__* %427, i32 %430, i32 %433, i32 1, i32* %6)
  %435 = load i8*, i8** @STFAX_LINE, align 8
  %436 = load %struct.isar_ch*, %struct.isar_ch** %3, align 8
  %437 = getelementptr inbounds %struct.isar_ch, %struct.isar_ch* %436, i32 0, i32 0
  store i8* %435, i8** %437, align 8
  %438 = load %struct.isar_ch*, %struct.isar_ch** %3, align 8
  %439 = getelementptr inbounds %struct.isar_ch, %struct.isar_ch* %438, i32 0, i32 5
  store i32 3, i32* %439, align 8
  br label %440

440:                                              ; preds = %407, %395
  br label %505

441:                                              ; preds = %2
  %442 = load %struct.isar_ch*, %struct.isar_ch** %3, align 8
  %443 = getelementptr inbounds %struct.isar_ch, %struct.isar_ch* %442, i32 0, i32 6
  %444 = load %struct.TYPE_6__*, %struct.TYPE_6__** %443, align 8
  %445 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %444, i32 0, i32 0
  %446 = load i32, i32* %445, align 4
  %447 = call i32 (i8*, i32, ...) @pr_debug(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.16, i64 0, i64 0), i32 %446)
  br label %505

448:                                              ; preds = %2
  %449 = load %struct.isar_ch*, %struct.isar_ch** %3, align 8
  %450 = getelementptr inbounds %struct.isar_ch, %struct.isar_ch* %449, i32 0, i32 0
  %451 = load i8*, i8** %450, align 8
  %452 = load i8*, i8** @STFAX_LINE, align 8
  %453 = icmp eq i8* %451, %452
  br i1 %453, label %454, label %483

454:                                              ; preds = %448
  %455 = load %struct.isar_ch*, %struct.isar_ch** %3, align 8
  %456 = getelementptr inbounds %struct.isar_ch, %struct.isar_ch* %455, i32 0, i32 6
  %457 = load %struct.TYPE_6__*, %struct.TYPE_6__** %456, align 8
  %458 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %457, i32 0, i32 0
  %459 = load i32, i32* %458, align 4
  %460 = load %struct.isar_ch*, %struct.isar_ch** %3, align 8
  %461 = getelementptr inbounds %struct.isar_ch, %struct.isar_ch* %460, i32 0, i32 5
  %462 = load i32, i32* %461, align 8
  %463 = call i32 (i8*, i32, ...) @pr_debug(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.17, i64 0, i64 0), i32 %459, i32 %462)
  %464 = load %struct.isar_ch*, %struct.isar_ch** %3, align 8
  %465 = getelementptr inbounds %struct.isar_ch, %struct.isar_ch* %464, i32 0, i32 5
  %466 = load i32, i32* %465, align 8
  %467 = add nsw i32 %466, -1
  store i32 %467, i32* %465, align 8
  %468 = icmp ne i32 %466, 0
  br i1 %468, label %469, label %482

469:                                              ; preds = %454
  %470 = load %struct.isar_ch*, %struct.isar_ch** %3, align 8
  %471 = getelementptr inbounds %struct.isar_ch, %struct.isar_ch* %470, i32 0, i32 6
  %472 = load %struct.TYPE_6__*, %struct.TYPE_6__** %471, align 8
  %473 = load i32, i32* %5, align 4
  %474 = load i32, i32* @ISAR_HIS_PUMPCTRL, align 4
  %475 = or i32 %473, %474
  %476 = load %struct.isar_ch*, %struct.isar_ch** %3, align 8
  %477 = getelementptr inbounds %struct.isar_ch, %struct.isar_ch* %476, i32 0, i32 1
  %478 = load i32, i32* %477, align 8
  %479 = load %struct.isar_ch*, %struct.isar_ch** %3, align 8
  %480 = getelementptr inbounds %struct.isar_ch, %struct.isar_ch* %479, i32 0, i32 2
  %481 = call i32 @send_mbox(%struct.TYPE_6__* %472, i32 %475, i32 %478, i32 1, i32* %480)
  br label %505

482:                                              ; preds = %454
  br label %483

483:                                              ; preds = %482, %448
  %484 = load %struct.isar_ch*, %struct.isar_ch** %3, align 8
  %485 = getelementptr inbounds %struct.isar_ch, %struct.isar_ch* %484, i32 0, i32 6
  %486 = load %struct.TYPE_6__*, %struct.TYPE_6__** %485, align 8
  %487 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %486, i32 0, i32 0
  %488 = load i32, i32* %487, align 4
  %489 = call i32 (i8*, i32, ...) @pr_debug(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.18, i64 0, i64 0), i32 %488)
  %490 = load i8*, i8** @STFAX_ESCAPE, align 8
  %491 = load %struct.isar_ch*, %struct.isar_ch** %3, align 8
  %492 = getelementptr inbounds %struct.isar_ch, %struct.isar_ch* %491, i32 0, i32 0
  store i8* %490, i8** %492, align 8
  %493 = load %struct.isar_ch*, %struct.isar_ch** %3, align 8
  %494 = getelementptr inbounds %struct.isar_ch, %struct.isar_ch* %493, i32 0, i32 6
  %495 = load %struct.TYPE_6__*, %struct.TYPE_6__** %494, align 8
  %496 = load i32, i32* %5, align 4
  %497 = load i32, i32* @ISAR_HIS_PUMPCTRL, align 4
  %498 = or i32 %496, %497
  %499 = load i32, i32* @PCTRL_CMD_ESC, align 4
  %500 = call i32 @send_mbox(%struct.TYPE_6__* %495, i32 %498, i32 %499, i32 0, i32* null)
  %501 = load %struct.isar_ch*, %struct.isar_ch** %3, align 8
  %502 = load i32, i32* @HW_MOD_FCERROR, align 4
  %503 = call i32 @deliver_status(%struct.isar_ch* %501, i32 %502)
  br label %505

504:                                              ; preds = %2
  br label %505

505:                                              ; preds = %504, %483, %469, %441, %440, %394, %257, %256, %172, %137, %102, %67, %20, %13
  ret void
}

declare dso_local i32 @SET_DPS(i32) #1

declare dso_local i32 @pr_debug(i8*, i32, ...) #1

declare dso_local i32 @deliver_status(%struct.isar_ch*, i32) #1

declare dso_local i32 @send_mbox(%struct.TYPE_6__*, i32, i32, i32, i32*) #1

declare dso_local i32 @test_and_set_bit(i32, i32*) #1

declare dso_local i32 @del_timer(%struct.TYPE_7__*) #1

declare dso_local i32 @add_timer(%struct.TYPE_7__*) #1

declare dso_local i32 @test_and_clear_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
