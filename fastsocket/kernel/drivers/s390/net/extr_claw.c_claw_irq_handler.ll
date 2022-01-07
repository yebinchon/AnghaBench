; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/net/extr_claw.c_claw_irq_handler.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/net/extr_claw.c_claw_irq_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ccw_device = type { i32 }
%struct.irb = type { %struct.TYPE_13__, i32* }
%struct.TYPE_13__ = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i32, i32, i32 }
%struct.chbk = type { i32, i32, i32, i32, i32, %struct.TYPE_14__*, %struct.TYPE_15__, i32, i32, i32, i64, %struct.ccw_device* }
%struct.TYPE_14__ = type { i32*, %struct.TYPE_11__ }
%struct.TYPE_11__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32, i32, i32 }
%struct.TYPE_15__ = type { i64, i32, i8* }
%struct.claw_privbk = type { %struct.chbk*, %struct.TYPE_9__, %struct.claw_env* }
%struct.TYPE_9__ = type { i32 }
%struct.claw_env = type { i32, i32 }
%struct.net_device = type { i32 }

@trace = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"clawirq\00", align 1
@.str.1 = private unnamed_addr constant [61 x i8] c"An uninitialized CLAW device received an IRQ, c-%02x d-%02x\0A\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"badirq\00", align 1
@READ = common dso_local global i64 0, align 8
@WRITE = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [33 x i8] c"The device is not a CLAW device\0A\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"badchan\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"IRQCH=%d\00", align 1
@SCHN_STAT_PCI = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [81 x i8] c"%s: subchannel check for device: %04x - Sch Stat %02x  Dev Stat %02x CPA - %04x\0A\00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c"chanchk\00", align 1
@DEV_STAT_UNIT_CHECK = common dso_local global i32 0, align 4
@SCSW_STCTL_SEC_STATUS = common dso_local global i32 0, align 4
@SCSW_STCTL_STATUS_PEND = common dso_local global i32 0, align 4
@SCSW_STCTL_ALERT_STATUS = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [5 x i8] c"stop\00", align 1
@.str.9 = private unnamed_addr constant [7 x i8] c"haltio\00", align 1
@CLAW_READ = common dso_local global i32 0, align 4
@CLAW_WRITE = common dso_local global i32 0, align 4
@LOCK_NO = common dso_local global i32 0, align 4
@SYSTEM_VALIDATE_REQUEST = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [59 x i8] c"The CLAW device received an unexpected IRQ, c-%02x d-%02x\0A\00", align 1
@.str.11 = private unnamed_addr constant [8 x i8] c"ReadIRQ\00", align 1
@.str.12 = private unnamed_addr constant [53 x i8] c"%s: Restart is required after remote side recovers \0A\00", align 1
@.str.13 = private unnamed_addr constant [7 x i8] c"notrdy\00", align 1
@CLAW_BH_ACTIVE = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [8 x i8] c"PCINoBH\00", align 1
@.str.15 = private unnamed_addr constant [9 x i8] c"PCI_read\00", align 1
@.str.16 = private unnamed_addr constant [9 x i8] c"SPend_rd\00", align 1
@TB_RETRY = common dso_local global i32 0, align 4
@.str.17 = private unnamed_addr constant [8 x i8] c"RdBHAct\00", align 1
@.str.18 = private unnamed_addr constant [9 x i8] c"RdIRQXit\00", align 1
@.str.19 = private unnamed_addr constant [41 x i8] c"%s: Unit Check Occured in write channel\0A\00", align 1
@.str.20 = private unnamed_addr constant [31 x i8] c"%s: Resetting Event occurred:\0A\00", align 1
@claw_write_retry = common dso_local global i64 0, align 8
@jiffies = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@.str.21 = private unnamed_addr constant [33 x i8] c"%s: write connection restarting\0A\00", align 1
@.str.22 = private unnamed_addr constant [9 x i8] c"rstrtwrt\00", align 1
@DEV_STAT_UNIT_EXCEP = common dso_local global i32 0, align 4
@.str.23 = private unnamed_addr constant [46 x i8] c"%s: Unit Exception occurred in write channel\0A\00", align 1
@.str.24 = private unnamed_addr constant [8 x i8] c"writeUE\00", align 1
@TB_TX = common dso_local global i32 0, align 4
@.str.25 = private unnamed_addr constant [9 x i8] c"StWtExit\00", align 1
@.str.26 = private unnamed_addr constant [51 x i8] c"The CLAW device for %s received an unexpected IRQ\0A\00", align 1
@.str.27 = private unnamed_addr constant [7 x i8] c"badIRQ\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ccw_device*, i64, %struct.irb*)* @claw_irq_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @claw_irq_handler(%struct.ccw_device* %0, i64 %1, %struct.irb* %2) #0 {
  %4 = alloca %struct.ccw_device*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.irb*, align 8
  %7 = alloca %struct.chbk*, align 8
  %8 = alloca %struct.claw_privbk*, align 8
  %9 = alloca %struct.net_device*, align 8
  %10 = alloca %struct.claw_env*, align 8
  %11 = alloca %struct.chbk*, align 8
  store %struct.ccw_device* %0, %struct.ccw_device** %4, align 8
  store i64 %1, i64* %5, align 8
  store %struct.irb* %2, %struct.irb** %6, align 8
  store %struct.chbk* null, %struct.chbk** %7, align 8
  store %struct.claw_privbk* null, %struct.claw_privbk** %8, align 8
  store %struct.net_device* null, %struct.net_device** %9, align 8
  store %struct.chbk* null, %struct.chbk** %11, align 8
  %12 = load i32, i32* @trace, align 4
  %13 = call i32 @CLAW_DBF_TEXT(i32 4, i32 %12, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %14 = load %struct.ccw_device*, %struct.ccw_device** %4, align 8
  %15 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %14, i32 0, i32 0
  %16 = call %struct.claw_privbk* @dev_get_drvdata(i32* %15)
  store %struct.claw_privbk* %16, %struct.claw_privbk** %8, align 8
  %17 = load %struct.claw_privbk*, %struct.claw_privbk** %8, align 8
  %18 = icmp ne %struct.claw_privbk* %17, null
  br i1 %18, label %35, label %19

19:                                               ; preds = %3
  %20 = load %struct.ccw_device*, %struct.ccw_device** %4, align 8
  %21 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %20, i32 0, i32 0
  %22 = load %struct.irb*, %struct.irb** %6, align 8
  %23 = getelementptr inbounds %struct.irb, %struct.irb* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load %struct.irb*, %struct.irb** %6, align 8
  %28 = getelementptr inbounds %struct.irb, %struct.irb* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = call i32 (i32*, i8*, ...) @dev_warn(i32* %21, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.1, i64 0, i64 0), i32 %26, i32 %31)
  %33 = load i32, i32* @trace, align 4
  %34 = call i32 @CLAW_DBF_TEXT(i32 2, i32 %33, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  br label %620

35:                                               ; preds = %3
  %36 = load %struct.claw_privbk*, %struct.claw_privbk** %8, align 8
  %37 = getelementptr inbounds %struct.claw_privbk, %struct.claw_privbk* %36, i32 0, i32 0
  %38 = load %struct.chbk*, %struct.chbk** %37, align 8
  %39 = load i64, i64* @READ, align 8
  %40 = getelementptr inbounds %struct.chbk, %struct.chbk* %38, i64 %39
  %41 = getelementptr inbounds %struct.chbk, %struct.chbk* %40, i32 0, i32 11
  %42 = load %struct.ccw_device*, %struct.ccw_device** %41, align 8
  %43 = load %struct.ccw_device*, %struct.ccw_device** %4, align 8
  %44 = icmp eq %struct.ccw_device* %42, %43
  br i1 %44, label %45, label %51

45:                                               ; preds = %35
  %46 = load %struct.claw_privbk*, %struct.claw_privbk** %8, align 8
  %47 = getelementptr inbounds %struct.claw_privbk, %struct.claw_privbk* %46, i32 0, i32 0
  %48 = load %struct.chbk*, %struct.chbk** %47, align 8
  %49 = load i64, i64* @READ, align 8
  %50 = getelementptr inbounds %struct.chbk, %struct.chbk* %48, i64 %49
  store %struct.chbk* %50, %struct.chbk** %7, align 8
  br label %74

51:                                               ; preds = %35
  %52 = load %struct.claw_privbk*, %struct.claw_privbk** %8, align 8
  %53 = getelementptr inbounds %struct.claw_privbk, %struct.claw_privbk* %52, i32 0, i32 0
  %54 = load %struct.chbk*, %struct.chbk** %53, align 8
  %55 = load i64, i64* @WRITE, align 8
  %56 = getelementptr inbounds %struct.chbk, %struct.chbk* %54, i64 %55
  %57 = getelementptr inbounds %struct.chbk, %struct.chbk* %56, i32 0, i32 11
  %58 = load %struct.ccw_device*, %struct.ccw_device** %57, align 8
  %59 = load %struct.ccw_device*, %struct.ccw_device** %4, align 8
  %60 = icmp eq %struct.ccw_device* %58, %59
  br i1 %60, label %61, label %67

61:                                               ; preds = %51
  %62 = load %struct.claw_privbk*, %struct.claw_privbk** %8, align 8
  %63 = getelementptr inbounds %struct.claw_privbk, %struct.claw_privbk* %62, i32 0, i32 0
  %64 = load %struct.chbk*, %struct.chbk** %63, align 8
  %65 = load i64, i64* @WRITE, align 8
  %66 = getelementptr inbounds %struct.chbk, %struct.chbk* %64, i64 %65
  store %struct.chbk* %66, %struct.chbk** %7, align 8
  br label %73

67:                                               ; preds = %51
  %68 = load %struct.ccw_device*, %struct.ccw_device** %4, align 8
  %69 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %68, i32 0, i32 0
  %70 = call i32 (i32*, i8*, ...) @dev_warn(i32* %69, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0))
  %71 = load i32, i32* @trace, align 4
  %72 = call i32 @CLAW_DBF_TEXT(i32 2, i32 %71, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0))
  br label %620

73:                                               ; preds = %61
  br label %74

74:                                               ; preds = %73, %45
  %75 = load i32, i32* @trace, align 4
  %76 = load %struct.chbk*, %struct.chbk** %7, align 8
  %77 = getelementptr inbounds %struct.chbk, %struct.chbk* %76, i32 0, i32 7
  %78 = load i32, i32* %77, align 8
  %79 = call i32 @CLAW_DBF_TEXT_(i32 4, i32 %75, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0), i32 %78)
  %80 = load %struct.chbk*, %struct.chbk** %7, align 8
  %81 = getelementptr inbounds %struct.chbk, %struct.chbk* %80, i32 0, i32 10
  %82 = load i64, i64* %81, align 8
  %83 = inttoptr i64 %82 to %struct.net_device*
  store %struct.net_device* %83, %struct.net_device** %9, align 8
  %84 = load %struct.claw_privbk*, %struct.claw_privbk** %8, align 8
  %85 = getelementptr inbounds %struct.claw_privbk, %struct.claw_privbk* %84, i32 0, i32 2
  %86 = load %struct.claw_env*, %struct.claw_env** %85, align 8
  store %struct.claw_env* %86, %struct.claw_env** %10, align 8
  %87 = load %struct.chbk*, %struct.chbk** %7, align 8
  %88 = getelementptr inbounds %struct.chbk, %struct.chbk* %87, i32 0, i32 5
  %89 = load %struct.TYPE_14__*, %struct.TYPE_14__** %88, align 8
  %90 = load %struct.irb*, %struct.irb** %6, align 8
  %91 = call i32 @memcpy(%struct.TYPE_14__* %89, %struct.irb* %90, i32 24)
  %92 = load %struct.irb*, %struct.irb** %6, align 8
  %93 = getelementptr inbounds %struct.irb, %struct.irb* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %134

98:                                               ; preds = %74
  %99 = load %struct.irb*, %struct.irb** %6, align 8
  %100 = getelementptr inbounds %struct.irb, %struct.irb* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = load i32, i32* @SCHN_STAT_PCI, align 4
  %105 = and i32 %103, %104
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %134, label %107

107:                                              ; preds = %98
  %108 = load %struct.ccw_device*, %struct.ccw_device** %4, align 8
  %109 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %108, i32 0, i32 0
  %110 = load %struct.net_device*, %struct.net_device** %9, align 8
  %111 = getelementptr inbounds %struct.net_device, %struct.net_device* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  %113 = load %struct.chbk*, %struct.chbk** %7, align 8
  %114 = getelementptr inbounds %struct.chbk, %struct.chbk* %113, i32 0, i32 9
  %115 = load i32, i32* %114, align 8
  %116 = load %struct.irb*, %struct.irb** %6, align 8
  %117 = getelementptr inbounds %struct.irb, %struct.irb* %116, i32 0, i32 0
  %118 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %117, i32 0, i32 0
  %119 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 8
  %121 = load %struct.irb*, %struct.irb** %6, align 8
  %122 = getelementptr inbounds %struct.irb, %struct.irb* %121, i32 0, i32 0
  %123 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %122, i32 0, i32 0
  %124 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %123, i32 0, i32 1
  %125 = load i32, i32* %124, align 4
  %126 = load %struct.irb*, %struct.irb** %6, align 8
  %127 = getelementptr inbounds %struct.irb, %struct.irb* %126, i32 0, i32 0
  %128 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %127, i32 0, i32 0
  %129 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %128, i32 0, i32 2
  %130 = load i32, i32* %129, align 8
  %131 = call i32 (i32*, i8*, i32, ...) @dev_info(i32* %109, i8* getelementptr inbounds ([81 x i8], [81 x i8]* @.str.6, i64 0, i64 0), i32 %112, i32 %115, i32 %120, i32 %125, i32 %130)
  %132 = load i32, i32* @trace, align 4
  %133 = call i32 @CLAW_DBF_TEXT(i32 2, i32 %132, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0))
  br label %134

134:                                              ; preds = %107, %98, %74
  %135 = load %struct.irb*, %struct.irb** %6, align 8
  %136 = getelementptr inbounds %struct.irb, %struct.irb* %135, i32 0, i32 0
  %137 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %136, i32 0, i32 0
  %138 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %137, i32 0, i32 1
  %139 = load i32, i32* %138, align 4
  %140 = load i32, i32* @DEV_STAT_UNIT_CHECK, align 4
  %141 = and i32 %139, %140
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %151

143:                                              ; preds = %134
  %144 = load %struct.chbk*, %struct.chbk** %7, align 8
  %145 = load %struct.irb*, %struct.irb** %6, align 8
  %146 = getelementptr inbounds %struct.irb, %struct.irb* %145, i32 0, i32 1
  %147 = load i32*, i32** %146, align 8
  %148 = getelementptr inbounds i32, i32* %147, i64 0
  %149 = load i32, i32* %148, align 4
  %150 = call i32 @ccw_check_unit_check(%struct.chbk* %144, i32 %149)
  br label %151

151:                                              ; preds = %143, %134
  %152 = load %struct.irb*, %struct.irb** %6, align 8
  %153 = getelementptr inbounds %struct.irb, %struct.irb* %152, i32 0, i32 0
  %154 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %153, i32 0, i32 0
  %155 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %154, i32 0, i32 1
  %156 = load i32, i32* %155, align 4
  %157 = load %struct.chbk*, %struct.chbk** %7, align 8
  %158 = getelementptr inbounds %struct.chbk, %struct.chbk* %157, i32 0, i32 0
  store i32 %156, i32* %158, align 8
  %159 = load %struct.chbk*, %struct.chbk** %7, align 8
  %160 = getelementptr inbounds %struct.chbk, %struct.chbk* %159, i32 0, i32 1
  %161 = load i32, i32* %160, align 4
  switch i32 %161, label %611 [
    i32 128, label %162
    i32 131, label %202
    i32 130, label %289
    i32 129, label %447
  ]

162:                                              ; preds = %151
  %163 = load %struct.chbk*, %struct.chbk** %7, align 8
  %164 = getelementptr inbounds %struct.chbk, %struct.chbk* %163, i32 0, i32 5
  %165 = load %struct.TYPE_14__*, %struct.TYPE_14__** %164, align 8
  %166 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %165, i32 0, i32 1
  %167 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %166, i32 0, i32 0
  %168 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %167, i32 0, i32 0
  %169 = load i32, i32* %168, align 8
  %170 = load i32, i32* @SCSW_STCTL_SEC_STATUS, align 4
  %171 = and i32 %169, %170
  %172 = icmp ne i32 %171, 0
  br i1 %172, label %196, label %173

173:                                              ; preds = %162
  %174 = load %struct.chbk*, %struct.chbk** %7, align 8
  %175 = getelementptr inbounds %struct.chbk, %struct.chbk* %174, i32 0, i32 5
  %176 = load %struct.TYPE_14__*, %struct.TYPE_14__** %175, align 8
  %177 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %176, i32 0, i32 1
  %178 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %177, i32 0, i32 0
  %179 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %178, i32 0, i32 0
  %180 = load i32, i32* %179, align 8
  %181 = load i32, i32* @SCSW_STCTL_STATUS_PEND, align 4
  %182 = icmp eq i32 %180, %181
  br i1 %182, label %196, label %183

183:                                              ; preds = %173
  %184 = load %struct.chbk*, %struct.chbk** %7, align 8
  %185 = getelementptr inbounds %struct.chbk, %struct.chbk* %184, i32 0, i32 5
  %186 = load %struct.TYPE_14__*, %struct.TYPE_14__** %185, align 8
  %187 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %186, i32 0, i32 1
  %188 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %187, i32 0, i32 0
  %189 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %188, i32 0, i32 0
  %190 = load i32, i32* %189, align 8
  %191 = load i32, i32* @SCSW_STCTL_ALERT_STATUS, align 4
  %192 = load i32, i32* @SCSW_STCTL_STATUS_PEND, align 4
  %193 = or i32 %191, %192
  %194 = icmp eq i32 %190, %193
  br i1 %194, label %196, label %195

195:                                              ; preds = %183
  br label %620

196:                                              ; preds = %183, %173, %162
  %197 = load %struct.chbk*, %struct.chbk** %7, align 8
  %198 = getelementptr inbounds %struct.chbk, %struct.chbk* %197, i32 0, i32 8
  %199 = call i32 @wake_up(i32* %198)
  %200 = load i32, i32* @trace, align 4
  %201 = call i32 @CLAW_DBF_TEXT(i32 4, i32 %200, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0))
  br label %620

202:                                              ; preds = %151
  %203 = load %struct.chbk*, %struct.chbk** %7, align 8
  %204 = getelementptr inbounds %struct.chbk, %struct.chbk* %203, i32 0, i32 5
  %205 = load %struct.TYPE_14__*, %struct.TYPE_14__** %204, align 8
  %206 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %205, i32 0, i32 1
  %207 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %206, i32 0, i32 0
  %208 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %207, i32 0, i32 0
  %209 = load i32, i32* %208, align 8
  %210 = load i32, i32* @SCSW_STCTL_SEC_STATUS, align 4
  %211 = and i32 %209, %210
  %212 = icmp ne i32 %211, 0
  br i1 %212, label %238, label %213

213:                                              ; preds = %202
  %214 = load %struct.chbk*, %struct.chbk** %7, align 8
  %215 = getelementptr inbounds %struct.chbk, %struct.chbk* %214, i32 0, i32 5
  %216 = load %struct.TYPE_14__*, %struct.TYPE_14__** %215, align 8
  %217 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %216, i32 0, i32 1
  %218 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %217, i32 0, i32 0
  %219 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %218, i32 0, i32 0
  %220 = load i32, i32* %219, align 8
  %221 = load i32, i32* @SCSW_STCTL_STATUS_PEND, align 4
  %222 = icmp eq i32 %220, %221
  br i1 %222, label %238, label %223

223:                                              ; preds = %213
  %224 = load %struct.chbk*, %struct.chbk** %7, align 8
  %225 = getelementptr inbounds %struct.chbk, %struct.chbk* %224, i32 0, i32 5
  %226 = load %struct.TYPE_14__*, %struct.TYPE_14__** %225, align 8
  %227 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %226, i32 0, i32 1
  %228 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %227, i32 0, i32 0
  %229 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %228, i32 0, i32 0
  %230 = load i32, i32* %229, align 8
  %231 = load i32, i32* @SCSW_STCTL_ALERT_STATUS, align 4
  %232 = load i32, i32* @SCSW_STCTL_STATUS_PEND, align 4
  %233 = or i32 %231, %232
  %234 = icmp eq i32 %230, %233
  br i1 %234, label %238, label %235

235:                                              ; preds = %223
  %236 = load i32, i32* @trace, align 4
  %237 = call i32 @CLAW_DBF_TEXT(i32 4, i32 %236, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i64 0, i64 0))
  br label %620

238:                                              ; preds = %223, %213, %202
  %239 = load %struct.chbk*, %struct.chbk** %7, align 8
  %240 = getelementptr inbounds %struct.chbk, %struct.chbk* %239, i32 0, i32 7
  %241 = load i32, i32* %240, align 8
  %242 = load i32, i32* @CLAW_READ, align 4
  %243 = icmp eq i32 %241, %242
  br i1 %243, label %244, label %250

244:                                              ; preds = %238
  %245 = load %struct.chbk*, %struct.chbk** %7, align 8
  %246 = getelementptr inbounds %struct.chbk, %struct.chbk* %245, i32 0, i32 1
  store i32 130, i32* %246, align 4
  %247 = load %struct.chbk*, %struct.chbk** %7, align 8
  %248 = getelementptr inbounds %struct.chbk, %struct.chbk* %247, i32 0, i32 8
  %249 = call i32 @wake_up(i32* %248)
  br label %286

250:                                              ; preds = %238
  %251 = load %struct.chbk*, %struct.chbk** %7, align 8
  %252 = getelementptr inbounds %struct.chbk, %struct.chbk* %251, i32 0, i32 7
  %253 = load i32, i32* %252, align 8
  %254 = load i32, i32* @CLAW_WRITE, align 4
  %255 = icmp eq i32 %253, %254
  br i1 %255, label %256, label %271

256:                                              ; preds = %250
  %257 = load %struct.chbk*, %struct.chbk** %7, align 8
  %258 = getelementptr inbounds %struct.chbk, %struct.chbk* %257, i32 0, i32 1
  store i32 129, i32* %258, align 4
  %259 = load %struct.net_device*, %struct.net_device** %9, align 8
  %260 = load i32, i32* @LOCK_NO, align 4
  %261 = call i32 @claw_strt_read(%struct.net_device* %259, i32 %260)
  %262 = load %struct.net_device*, %struct.net_device** %9, align 8
  %263 = load i32, i32* @SYSTEM_VALIDATE_REQUEST, align 4
  %264 = load %struct.claw_env*, %struct.claw_env** %10, align 8
  %265 = getelementptr inbounds %struct.claw_env, %struct.claw_env* %264, i32 0, i32 1
  %266 = load i32, i32* %265, align 4
  %267 = load %struct.claw_env*, %struct.claw_env** %10, align 8
  %268 = getelementptr inbounds %struct.claw_env, %struct.claw_env* %267, i32 0, i32 0
  %269 = load i32, i32* %268, align 4
  %270 = call i32 @claw_send_control(%struct.net_device* %262, i32 %263, i32 0, i32 0, i32 0, i32 %266, i32 %269)
  br label %285

271:                                              ; preds = %250
  %272 = load %struct.ccw_device*, %struct.ccw_device** %4, align 8
  %273 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %272, i32 0, i32 0
  %274 = load %struct.irb*, %struct.irb** %6, align 8
  %275 = getelementptr inbounds %struct.irb, %struct.irb* %274, i32 0, i32 0
  %276 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %275, i32 0, i32 0
  %277 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %276, i32 0, i32 0
  %278 = load i32, i32* %277, align 8
  %279 = load %struct.irb*, %struct.irb** %6, align 8
  %280 = getelementptr inbounds %struct.irb, %struct.irb* %279, i32 0, i32 0
  %281 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %280, i32 0, i32 0
  %282 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %281, i32 0, i32 1
  %283 = load i32, i32* %282, align 4
  %284 = call i32 (i32*, i8*, ...) @dev_warn(i32* %273, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.10, i64 0, i64 0), i32 %278, i32 %283)
  br label %620

285:                                              ; preds = %256
  br label %286

286:                                              ; preds = %285, %244
  %287 = load i32, i32* @trace, align 4
  %288 = call i32 @CLAW_DBF_TEXT(i32 4, i32 %287, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i64 0, i64 0))
  br label %620

289:                                              ; preds = %151
  %290 = load i32, i32* @trace, align 4
  %291 = call i32 @CLAW_DBF_TEXT(i32 4, i32 %290, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.11, i64 0, i64 0))
  %292 = load %struct.chbk*, %struct.chbk** %7, align 8
  %293 = getelementptr inbounds %struct.chbk, %struct.chbk* %292, i32 0, i32 5
  %294 = load %struct.TYPE_14__*, %struct.TYPE_14__** %293, align 8
  %295 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %294, i32 0, i32 1
  %296 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %295, i32 0, i32 0
  %297 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %296, i32 0, i32 1
  %298 = load i32, i32* %297, align 4
  %299 = load i32, i32* @DEV_STAT_UNIT_CHECK, align 4
  %300 = and i32 %298, %299
  %301 = icmp ne i32 %300, 0
  br i1 %301, label %302, label %350

302:                                              ; preds = %289
  %303 = load %struct.chbk*, %struct.chbk** %7, align 8
  %304 = getelementptr inbounds %struct.chbk, %struct.chbk* %303, i32 0, i32 4
  %305 = bitcast i32* %304 to i8*
  %306 = call i32 @clear_bit(i32 0, i8* %305)
  %307 = load %struct.chbk*, %struct.chbk** %7, align 8
  %308 = getelementptr inbounds %struct.chbk, %struct.chbk* %307, i32 0, i32 5
  %309 = load %struct.TYPE_14__*, %struct.TYPE_14__** %308, align 8
  %310 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %309, i32 0, i32 0
  %311 = load i32*, i32** %310, align 8
  %312 = getelementptr inbounds i32, i32* %311, i64 0
  %313 = load i32, i32* %312, align 4
  %314 = and i32 %313, 65
  %315 = icmp eq i32 %314, 65
  br i1 %315, label %335, label %316

316:                                              ; preds = %302
  %317 = load %struct.chbk*, %struct.chbk** %7, align 8
  %318 = getelementptr inbounds %struct.chbk, %struct.chbk* %317, i32 0, i32 5
  %319 = load %struct.TYPE_14__*, %struct.TYPE_14__** %318, align 8
  %320 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %319, i32 0, i32 0
  %321 = load i32*, i32** %320, align 8
  %322 = getelementptr inbounds i32, i32* %321, i64 0
  %323 = load i32, i32* %322, align 4
  %324 = and i32 %323, 64
  %325 = icmp eq i32 %324, 64
  br i1 %325, label %335, label %326

326:                                              ; preds = %316
  %327 = load %struct.chbk*, %struct.chbk** %7, align 8
  %328 = getelementptr inbounds %struct.chbk, %struct.chbk* %327, i32 0, i32 5
  %329 = load %struct.TYPE_14__*, %struct.TYPE_14__** %328, align 8
  %330 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %329, i32 0, i32 0
  %331 = load i32*, i32** %330, align 8
  %332 = getelementptr inbounds i32, i32* %331, i64 0
  %333 = load i32, i32* %332, align 4
  %334 = icmp eq i32 %333, 0
  br i1 %334, label %335, label %347

335:                                              ; preds = %326, %316, %302
  %336 = load %struct.claw_privbk*, %struct.claw_privbk** %8, align 8
  %337 = getelementptr inbounds %struct.claw_privbk, %struct.claw_privbk* %336, i32 0, i32 1
  %338 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %337, i32 0, i32 0
  %339 = load i32, i32* %338, align 8
  %340 = add nsw i32 %339, 1
  store i32 %340, i32* %338, align 8
  %341 = load %struct.ccw_device*, %struct.ccw_device** %4, align 8
  %342 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %341, i32 0, i32 0
  %343 = load %struct.net_device*, %struct.net_device** %9, align 8
  %344 = getelementptr inbounds %struct.net_device, %struct.net_device* %343, i32 0, i32 0
  %345 = load i32, i32* %344, align 4
  %346 = call i32 (i32*, i8*, i32, ...) @dev_info(i32* %342, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.12, i64 0, i64 0), i32 %345)
  br label %347

347:                                              ; preds = %335, %326
  %348 = load i32, i32* @trace, align 4
  %349 = call i32 @CLAW_DBF_TEXT(i32 4, i32 %348, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.13, i64 0, i64 0))
  br label %620

350:                                              ; preds = %289
  %351 = load %struct.chbk*, %struct.chbk** %7, align 8
  %352 = getelementptr inbounds %struct.chbk, %struct.chbk* %351, i32 0, i32 5
  %353 = load %struct.TYPE_14__*, %struct.TYPE_14__** %352, align 8
  %354 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %353, i32 0, i32 1
  %355 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %354, i32 0, i32 0
  %356 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %355, i32 0, i32 2
  %357 = load i32, i32* %356, align 8
  %358 = load i32, i32* @SCHN_STAT_PCI, align 4
  %359 = and i32 %357, %358
  %360 = icmp ne i32 %359, 0
  br i1 %360, label %361, label %387

361:                                              ; preds = %350
  %362 = load %struct.chbk*, %struct.chbk** %7, align 8
  %363 = getelementptr inbounds %struct.chbk, %struct.chbk* %362, i32 0, i32 5
  %364 = load %struct.TYPE_14__*, %struct.TYPE_14__** %363, align 8
  %365 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %364, i32 0, i32 1
  %366 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %365, i32 0, i32 0
  %367 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %366, i32 0, i32 1
  %368 = load i32, i32* %367, align 4
  %369 = icmp eq i32 %368, 0
  br i1 %369, label %370, label %387

370:                                              ; preds = %361
  %371 = load i32, i32* @CLAW_BH_ACTIVE, align 4
  %372 = load %struct.chbk*, %struct.chbk** %7, align 8
  %373 = getelementptr inbounds %struct.chbk, %struct.chbk* %372, i32 0, i32 3
  %374 = bitcast i32* %373 to i8*
  %375 = call i32 @test_and_set_bit(i32 %371, i8* %374)
  %376 = icmp eq i32 %375, 0
  br i1 %376, label %377, label %381

377:                                              ; preds = %370
  %378 = load %struct.chbk*, %struct.chbk** %7, align 8
  %379 = getelementptr inbounds %struct.chbk, %struct.chbk* %378, i32 0, i32 2
  %380 = call i32 @tasklet_schedule(i32* %379)
  br label %384

381:                                              ; preds = %370
  %382 = load i32, i32* @trace, align 4
  %383 = call i32 @CLAW_DBF_TEXT(i32 4, i32 %382, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.14, i64 0, i64 0))
  br label %384

384:                                              ; preds = %381, %377
  %385 = load i32, i32* @trace, align 4
  %386 = call i32 @CLAW_DBF_TEXT(i32 4, i32 %385, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.15, i64 0, i64 0))
  br label %620

387:                                              ; preds = %361, %350
  %388 = load %struct.chbk*, %struct.chbk** %7, align 8
  %389 = getelementptr inbounds %struct.chbk, %struct.chbk* %388, i32 0, i32 5
  %390 = load %struct.TYPE_14__*, %struct.TYPE_14__** %389, align 8
  %391 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %390, i32 0, i32 1
  %392 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %391, i32 0, i32 0
  %393 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %392, i32 0, i32 0
  %394 = load i32, i32* %393, align 8
  %395 = load i32, i32* @SCSW_STCTL_SEC_STATUS, align 4
  %396 = and i32 %394, %395
  %397 = icmp ne i32 %396, 0
  br i1 %397, label %423, label %398

398:                                              ; preds = %387
  %399 = load %struct.chbk*, %struct.chbk** %7, align 8
  %400 = getelementptr inbounds %struct.chbk, %struct.chbk* %399, i32 0, i32 5
  %401 = load %struct.TYPE_14__*, %struct.TYPE_14__** %400, align 8
  %402 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %401, i32 0, i32 1
  %403 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %402, i32 0, i32 0
  %404 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %403, i32 0, i32 0
  %405 = load i32, i32* %404, align 8
  %406 = load i32, i32* @SCSW_STCTL_STATUS_PEND, align 4
  %407 = icmp eq i32 %405, %406
  br i1 %407, label %423, label %408

408:                                              ; preds = %398
  %409 = load %struct.chbk*, %struct.chbk** %7, align 8
  %410 = getelementptr inbounds %struct.chbk, %struct.chbk* %409, i32 0, i32 5
  %411 = load %struct.TYPE_14__*, %struct.TYPE_14__** %410, align 8
  %412 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %411, i32 0, i32 1
  %413 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %412, i32 0, i32 0
  %414 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %413, i32 0, i32 0
  %415 = load i32, i32* %414, align 8
  %416 = load i32, i32* @SCSW_STCTL_ALERT_STATUS, align 4
  %417 = load i32, i32* @SCSW_STCTL_STATUS_PEND, align 4
  %418 = or i32 %416, %417
  %419 = icmp eq i32 %415, %418
  br i1 %419, label %423, label %420

420:                                              ; preds = %408
  %421 = load i32, i32* @trace, align 4
  %422 = call i32 @CLAW_DBF_TEXT(i32 4, i32 %421, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.16, i64 0, i64 0))
  br label %620

423:                                              ; preds = %408, %398, %387
  %424 = load %struct.chbk*, %struct.chbk** %7, align 8
  %425 = getelementptr inbounds %struct.chbk, %struct.chbk* %424, i32 0, i32 4
  %426 = bitcast i32* %425 to i8*
  %427 = call i32 @clear_bit(i32 0, i8* %426)
  %428 = load i32, i32* @TB_RETRY, align 4
  %429 = load %struct.net_device*, %struct.net_device** %9, align 8
  %430 = call i32 @claw_clearbit_busy(i32 %428, %struct.net_device* %429)
  %431 = load i32, i32* @CLAW_BH_ACTIVE, align 4
  %432 = load %struct.chbk*, %struct.chbk** %7, align 8
  %433 = getelementptr inbounds %struct.chbk, %struct.chbk* %432, i32 0, i32 3
  %434 = bitcast i32* %433 to i8*
  %435 = call i32 @test_and_set_bit(i32 %431, i8* %434)
  %436 = icmp eq i32 %435, 0
  br i1 %436, label %437, label %441

437:                                              ; preds = %423
  %438 = load %struct.chbk*, %struct.chbk** %7, align 8
  %439 = getelementptr inbounds %struct.chbk, %struct.chbk* %438, i32 0, i32 2
  %440 = call i32 @tasklet_schedule(i32* %439)
  br label %444

441:                                              ; preds = %423
  %442 = load i32, i32* @trace, align 4
  %443 = call i32 @CLAW_DBF_TEXT(i32 4, i32 %442, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.17, i64 0, i64 0))
  br label %444

444:                                              ; preds = %441, %437
  %445 = load i32, i32* @trace, align 4
  %446 = call i32 @CLAW_DBF_TEXT(i32 4, i32 %445, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.18, i64 0, i64 0))
  br label %620

447:                                              ; preds = %151
  %448 = load %struct.chbk*, %struct.chbk** %7, align 8
  %449 = getelementptr inbounds %struct.chbk, %struct.chbk* %448, i32 0, i32 5
  %450 = load %struct.TYPE_14__*, %struct.TYPE_14__** %449, align 8
  %451 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %450, i32 0, i32 1
  %452 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %451, i32 0, i32 0
  %453 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %452, i32 0, i32 1
  %454 = load i32, i32* %453, align 4
  %455 = load i32, i32* @DEV_STAT_UNIT_CHECK, align 4
  %456 = and i32 %454, %455
  %457 = icmp ne i32 %456, 0
  br i1 %457, label %458, label %517

458:                                              ; preds = %447
  %459 = load %struct.ccw_device*, %struct.ccw_device** %4, align 8
  %460 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %459, i32 0, i32 0
  %461 = load %struct.net_device*, %struct.net_device** %9, align 8
  %462 = getelementptr inbounds %struct.net_device, %struct.net_device* %461, i32 0, i32 0
  %463 = load i32, i32* %462, align 4
  %464 = call i32 (i32*, i8*, i32, ...) @dev_info(i32* %460, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.19, i64 0, i64 0), i32 %463)
  %465 = load %struct.chbk*, %struct.chbk** %7, align 8
  %466 = getelementptr inbounds %struct.chbk, %struct.chbk* %465, i32 0, i32 4
  %467 = bitcast i32* %466 to i8*
  %468 = call i32 @clear_bit(i32 0, i8* %467)
  %469 = load %struct.chbk*, %struct.chbk** %7, align 8
  %470 = getelementptr inbounds %struct.chbk, %struct.chbk* %469, i32 0, i32 5
  %471 = load %struct.TYPE_14__*, %struct.TYPE_14__** %470, align 8
  %472 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %471, i32 0, i32 0
  %473 = load i32*, i32** %472, align 8
  %474 = getelementptr inbounds i32, i32* %473, i64 0
  %475 = load i32, i32* %474, align 4
  %476 = and i32 %475, 128
  %477 = icmp ne i32 %476, 0
  br i1 %477, label %478, label %514

478:                                              ; preds = %458
  %479 = load %struct.ccw_device*, %struct.ccw_device** %4, align 8
  %480 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %479, i32 0, i32 0
  %481 = load %struct.net_device*, %struct.net_device** %9, align 8
  %482 = getelementptr inbounds %struct.net_device, %struct.net_device* %481, i32 0, i32 0
  %483 = load i32, i32* %482, align 4
  %484 = call i32 (i32*, i8*, i32, ...) @dev_info(i32* %480, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.20, i64 0, i64 0), i32 %483)
  %485 = load %struct.chbk*, %struct.chbk** %7, align 8
  %486 = getelementptr inbounds %struct.chbk, %struct.chbk* %485, i32 0, i32 6
  %487 = call i32 @init_timer(%struct.TYPE_15__* %486)
  %488 = load i64, i64* @claw_write_retry, align 8
  %489 = inttoptr i64 %488 to i8*
  %490 = load %struct.chbk*, %struct.chbk** %7, align 8
  %491 = getelementptr inbounds %struct.chbk, %struct.chbk* %490, i32 0, i32 6
  %492 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %491, i32 0, i32 2
  store i8* %489, i8** %492, align 8
  %493 = load %struct.chbk*, %struct.chbk** %7, align 8
  %494 = ptrtoint %struct.chbk* %493 to i64
  %495 = load %struct.chbk*, %struct.chbk** %7, align 8
  %496 = getelementptr inbounds %struct.chbk, %struct.chbk* %495, i32 0, i32 6
  %497 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %496, i32 0, i32 0
  store i64 %494, i64* %497, align 8
  %498 = load i32, i32* @jiffies, align 4
  %499 = load i32, i32* @HZ, align 4
  %500 = mul nsw i32 10, %499
  %501 = add nsw i32 %498, %500
  %502 = load %struct.chbk*, %struct.chbk** %7, align 8
  %503 = getelementptr inbounds %struct.chbk, %struct.chbk* %502, i32 0, i32 6
  %504 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %503, i32 0, i32 1
  store i32 %501, i32* %504, align 8
  %505 = load %struct.chbk*, %struct.chbk** %7, align 8
  %506 = getelementptr inbounds %struct.chbk, %struct.chbk* %505, i32 0, i32 6
  %507 = call i32 @add_timer(%struct.TYPE_15__* %506)
  %508 = load %struct.ccw_device*, %struct.ccw_device** %4, align 8
  %509 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %508, i32 0, i32 0
  %510 = load %struct.net_device*, %struct.net_device** %9, align 8
  %511 = getelementptr inbounds %struct.net_device, %struct.net_device* %510, i32 0, i32 0
  %512 = load i32, i32* %511, align 4
  %513 = call i32 (i32*, i8*, i32, ...) @dev_info(i32* %509, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.21, i64 0, i64 0), i32 %512)
  br label %514

514:                                              ; preds = %478, %458
  %515 = load i32, i32* @trace, align 4
  %516 = call i32 @CLAW_DBF_TEXT(i32 4, i32 %515, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.22, i64 0, i64 0))
  br label %620

517:                                              ; preds = %447
  %518 = load %struct.chbk*, %struct.chbk** %7, align 8
  %519 = getelementptr inbounds %struct.chbk, %struct.chbk* %518, i32 0, i32 5
  %520 = load %struct.TYPE_14__*, %struct.TYPE_14__** %519, align 8
  %521 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %520, i32 0, i32 1
  %522 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %521, i32 0, i32 0
  %523 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %522, i32 0, i32 1
  %524 = load i32, i32* %523, align 4
  %525 = load i32, i32* @DEV_STAT_UNIT_EXCEP, align 4
  %526 = and i32 %524, %525
  %527 = icmp ne i32 %526, 0
  br i1 %527, label %528, label %539

528:                                              ; preds = %517
  %529 = load %struct.chbk*, %struct.chbk** %7, align 8
  %530 = getelementptr inbounds %struct.chbk, %struct.chbk* %529, i32 0, i32 4
  %531 = bitcast i32* %530 to i8*
  %532 = call i32 @clear_bit(i32 0, i8* %531)
  %533 = load %struct.ccw_device*, %struct.ccw_device** %4, align 8
  %534 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %533, i32 0, i32 0
  %535 = load %struct.net_device*, %struct.net_device** %9, align 8
  %536 = getelementptr inbounds %struct.net_device, %struct.net_device* %535, i32 0, i32 0
  %537 = load i32, i32* %536, align 4
  %538 = call i32 (i32*, i8*, i32, ...) @dev_info(i32* %534, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.23, i64 0, i64 0), i32 %537)
  br label %539

539:                                              ; preds = %528, %517
  %540 = load %struct.chbk*, %struct.chbk** %7, align 8
  %541 = getelementptr inbounds %struct.chbk, %struct.chbk* %540, i32 0, i32 5
  %542 = load %struct.TYPE_14__*, %struct.TYPE_14__** %541, align 8
  %543 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %542, i32 0, i32 1
  %544 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %543, i32 0, i32 0
  %545 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %544, i32 0, i32 0
  %546 = load i32, i32* %545, align 8
  %547 = load i32, i32* @SCSW_STCTL_SEC_STATUS, align 4
  %548 = and i32 %546, %547
  %549 = icmp ne i32 %548, 0
  br i1 %549, label %575, label %550

550:                                              ; preds = %539
  %551 = load %struct.chbk*, %struct.chbk** %7, align 8
  %552 = getelementptr inbounds %struct.chbk, %struct.chbk* %551, i32 0, i32 5
  %553 = load %struct.TYPE_14__*, %struct.TYPE_14__** %552, align 8
  %554 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %553, i32 0, i32 1
  %555 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %554, i32 0, i32 0
  %556 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %555, i32 0, i32 0
  %557 = load i32, i32* %556, align 8
  %558 = load i32, i32* @SCSW_STCTL_STATUS_PEND, align 4
  %559 = icmp eq i32 %557, %558
  br i1 %559, label %575, label %560

560:                                              ; preds = %550
  %561 = load %struct.chbk*, %struct.chbk** %7, align 8
  %562 = getelementptr inbounds %struct.chbk, %struct.chbk* %561, i32 0, i32 5
  %563 = load %struct.TYPE_14__*, %struct.TYPE_14__** %562, align 8
  %564 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %563, i32 0, i32 1
  %565 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %564, i32 0, i32 0
  %566 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %565, i32 0, i32 0
  %567 = load i32, i32* %566, align 8
  %568 = load i32, i32* @SCSW_STCTL_ALERT_STATUS, align 4
  %569 = load i32, i32* @SCSW_STCTL_STATUS_PEND, align 4
  %570 = or i32 %568, %569
  %571 = icmp eq i32 %567, %570
  br i1 %571, label %575, label %572

572:                                              ; preds = %560
  %573 = load i32, i32* @trace, align 4
  %574 = call i32 @CLAW_DBF_TEXT(i32 4, i32 %573, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.24, i64 0, i64 0))
  br label %620

575:                                              ; preds = %560, %550, %539
  %576 = load %struct.chbk*, %struct.chbk** %7, align 8
  %577 = getelementptr inbounds %struct.chbk, %struct.chbk* %576, i32 0, i32 4
  %578 = bitcast i32* %577 to i8*
  %579 = call i32 @clear_bit(i32 0, i8* %578)
  %580 = load i32, i32* @TB_TX, align 4
  %581 = load %struct.net_device*, %struct.net_device** %9, align 8
  %582 = call i32 @claw_test_and_setbit_busy(i32 %580, %struct.net_device* %581)
  %583 = icmp eq i32 %582, 0
  br i1 %583, label %584, label %592

584:                                              ; preds = %575
  %585 = load %struct.chbk*, %struct.chbk** %7, align 8
  %586 = call i32 @claw_write_next(%struct.chbk* %585)
  %587 = load i32, i32* @TB_TX, align 4
  %588 = load %struct.net_device*, %struct.net_device** %9, align 8
  %589 = call i32 @claw_clearbit_busy(i32 %587, %struct.net_device* %588)
  %590 = load %struct.net_device*, %struct.net_device** %9, align 8
  %591 = call i32 @claw_clear_busy(%struct.net_device* %590)
  br label %592

592:                                              ; preds = %584, %575
  %593 = load %struct.claw_privbk*, %struct.claw_privbk** %8, align 8
  %594 = getelementptr inbounds %struct.claw_privbk, %struct.claw_privbk* %593, i32 0, i32 0
  %595 = load %struct.chbk*, %struct.chbk** %594, align 8
  %596 = load i64, i64* @READ, align 8
  %597 = getelementptr inbounds %struct.chbk, %struct.chbk* %595, i64 %596
  store %struct.chbk* %597, %struct.chbk** %11, align 8
  %598 = load i32, i32* @CLAW_BH_ACTIVE, align 4
  %599 = load %struct.chbk*, %struct.chbk** %11, align 8
  %600 = getelementptr inbounds %struct.chbk, %struct.chbk* %599, i32 0, i32 3
  %601 = bitcast i32* %600 to i8*
  %602 = call i32 @test_and_set_bit(i32 %598, i8* %601)
  %603 = icmp eq i32 %602, 0
  br i1 %603, label %604, label %608

604:                                              ; preds = %592
  %605 = load %struct.chbk*, %struct.chbk** %11, align 8
  %606 = getelementptr inbounds %struct.chbk, %struct.chbk* %605, i32 0, i32 2
  %607 = call i32 @tasklet_schedule(i32* %606)
  br label %608

608:                                              ; preds = %604, %592
  %609 = load i32, i32* @trace, align 4
  %610 = call i32 @CLAW_DBF_TEXT(i32 4, i32 %609, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.25, i64 0, i64 0))
  br label %620

611:                                              ; preds = %151
  %612 = load %struct.ccw_device*, %struct.ccw_device** %4, align 8
  %613 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %612, i32 0, i32 0
  %614 = load %struct.net_device*, %struct.net_device** %9, align 8
  %615 = getelementptr inbounds %struct.net_device, %struct.net_device* %614, i32 0, i32 0
  %616 = load i32, i32* %615, align 4
  %617 = call i32 (i32*, i8*, ...) @dev_warn(i32* %613, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.26, i64 0, i64 0), i32 %616)
  %618 = load i32, i32* @trace, align 4
  %619 = call i32 @CLAW_DBF_TEXT(i32 2, i32 %618, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.27, i64 0, i64 0))
  br label %620

620:                                              ; preds = %611, %608, %572, %514, %444, %420, %384, %347, %286, %271, %235, %196, %195, %67, %19
  ret void
}

declare dso_local i32 @CLAW_DBF_TEXT(i32, i32, i8*) #1

declare dso_local %struct.claw_privbk* @dev_get_drvdata(i32*) #1

declare dso_local i32 @dev_warn(i32*, i8*, ...) #1

declare dso_local i32 @CLAW_DBF_TEXT_(i32, i32, i8*, i32) #1

declare dso_local i32 @memcpy(%struct.TYPE_14__*, %struct.irb*, i32) #1

declare dso_local i32 @dev_info(i32*, i8*, i32, ...) #1

declare dso_local i32 @ccw_check_unit_check(%struct.chbk*, i32) #1

declare dso_local i32 @wake_up(i32*) #1

declare dso_local i32 @claw_strt_read(%struct.net_device*, i32) #1

declare dso_local i32 @claw_send_control(%struct.net_device*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @clear_bit(i32, i8*) #1

declare dso_local i32 @test_and_set_bit(i32, i8*) #1

declare dso_local i32 @tasklet_schedule(i32*) #1

declare dso_local i32 @claw_clearbit_busy(i32, %struct.net_device*) #1

declare dso_local i32 @init_timer(%struct.TYPE_15__*) #1

declare dso_local i32 @add_timer(%struct.TYPE_15__*) #1

declare dso_local i32 @claw_test_and_setbit_busy(i32, %struct.net_device*) #1

declare dso_local i32 @claw_write_next(%struct.chbk*) #1

declare dso_local i32 @claw_clear_busy(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
