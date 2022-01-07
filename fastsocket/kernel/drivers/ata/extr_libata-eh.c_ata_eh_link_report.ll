; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/ata/extr_libata-eh.c_ata_eh_link_report.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/ata/extr_libata-eh.c_ata_eh_link_report.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ata_link = type { i32, %struct.ata_eh_context, %struct.ata_port* }
%struct.ata_eh_context = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i8*, i32, i32, i32, i64 }
%struct.ata_port = type { i32, i64 }
%struct.ata_queued_cmd = type { i32, i64, i32*, i64, i32, i32, i32, i64, %struct.ata_taskfile, %struct.ata_taskfile }
%struct.ata_taskfile = type { i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@ATA_EHI_QUIET = common dso_local global i32 0, align 4
@ATA_MAX_QUEUE = common dso_local global i32 0, align 4
@ATA_QCFLAG_FAILED = common dso_local global i32 0, align 4
@ATA_QCFLAG_QUIET = common dso_local global i32 0, align 4
@AC_ERR_DEV = common dso_local global i64 0, align 8
@ATA_QCFLAG_SENSE_VALID = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@ATA_PFLAG_FROZEN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c" frozen\00", align 1
@ATA_EH_MAX_TRIES = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [5 x i8] c" t%d\00", align 1
@KERN_ERR = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [58 x i8] c"exception Emask 0x%x SAct 0x%x SErr 0x%x action 0x%x%s%s\0A\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@DMA_NONE = common dso_local global i64 0, align 8
@ata_eh_link_report.dma_str = internal global [131 x i8*] [i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i32 0, i32 0)], align 16
@.str.5 = private unnamed_addr constant [4 x i8] c"out\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"in\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"bidi\00", align 1
@ata_eh_link_report.prot_str = internal global [136 x i8*] [i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* null, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i32 0, i32 0)], align 16
@.str.8 = private unnamed_addr constant [4 x i8] c"pio\00", align 1
@.str.9 = private unnamed_addr constant [4 x i8] c"ncq\00", align 1
@.str.10 = private unnamed_addr constant [4 x i8] c"dma\00", align 1
@.str.11 = private unnamed_addr constant [10 x i8] c" %s %u %s\00", align 1
@.str.12 = private unnamed_addr constant [95 x i8] c"cdb %02x %02x %02x %02x %02x %02x %02x %02x  %02x %02x %02x %02x %02x %02x %02x %02x\0A         \00", align 1
@.str.13 = private unnamed_addr constant [20 x i8] c"failed command: %s\0A\00", align 1
@.str.14 = private unnamed_addr constant [167 x i8] c"cmd %02x/%02x:%02x:%02x:%02x:%02x/%02x:%02x:%02x:%02x:%02x/%02x tag %d%s\0A         %sres %02x/%02x:%02x:%02x:%02x:%02x/%02x:%02x:%02x:%02x:%02x/%02x Emask 0x%x (%s)%s\0A\00", align 1
@AC_ERR_NCQ = common dso_local global i32 0, align 4
@.str.15 = private unnamed_addr constant [5 x i8] c" <F>\00", align 1
@ATA_ABORTED = common dso_local global i32 0, align 4
@ATA_BUSY = common dso_local global i32 0, align 4
@ATA_CMD_PACKET = common dso_local global i32 0, align 4
@ATA_DF = common dso_local global i32 0, align 4
@ATA_DRDY = common dso_local global i32 0, align 4
@ATA_DRQ = common dso_local global i32 0, align 4
@ATA_ERR = common dso_local global i32 0, align 4
@ATA_ICRC = common dso_local global i32 0, align 4
@ATA_IDNF = common dso_local global i32 0, align 4
@ATA_UNC = common dso_local global i32 0, align 4
@SERR_10B_8B_ERR = common dso_local global i32 0, align 4
@SERR_COMM_RECOVERED = common dso_local global i32 0, align 4
@SERR_COMM_WAKE = common dso_local global i32 0, align 4
@SERR_CRC = common dso_local global i32 0, align 4
@SERR_DATA = common dso_local global i32 0, align 4
@SERR_DATA_RECOVERED = common dso_local global i32 0, align 4
@SERR_DEV_XCHG = common dso_local global i32 0, align 4
@SERR_DISPARITY = common dso_local global i32 0, align 4
@SERR_HANDSHAKE = common dso_local global i32 0, align 4
@SERR_INTERNAL = common dso_local global i32 0, align 4
@SERR_LINK_SEQ_ERR = common dso_local global i32 0, align 4
@SERR_PERSISTENT = common dso_local global i32 0, align 4
@SERR_PHYRDY_CHG = common dso_local global i32 0, align 4
@SERR_PHY_INT_ERR = common dso_local global i32 0, align 4
@SERR_PROTOCOL = common dso_local global i32 0, align 4
@SERR_TRANS_ST_ERROR = common dso_local global i32 0, align 4
@SERR_UNRECOG_FIS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ata_link*)* @ata_eh_link_report to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ata_eh_link_report(%struct.ata_link* %0) #0 {
  %2 = alloca %struct.ata_link*, align 8
  %3 = alloca %struct.ata_port*, align 8
  %4 = alloca %struct.ata_eh_context*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca [6 x i8], align 1
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.ata_queued_cmd*, align 8
  %11 = alloca %struct.ata_queued_cmd*, align 8
  %12 = alloca %struct.ata_taskfile*, align 8
  %13 = alloca %struct.ata_taskfile*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca [20 x i8], align 16
  %16 = alloca [70 x i8], align 16
  %17 = alloca i8*, align 8
  store %struct.ata_link* %0, %struct.ata_link** %2, align 8
  %18 = load %struct.ata_link*, %struct.ata_link** %2, align 8
  %19 = getelementptr inbounds %struct.ata_link, %struct.ata_link* %18, i32 0, i32 2
  %20 = load %struct.ata_port*, %struct.ata_port** %19, align 8
  store %struct.ata_port* %20, %struct.ata_port** %3, align 8
  %21 = load %struct.ata_link*, %struct.ata_link** %2, align 8
  %22 = getelementptr inbounds %struct.ata_link, %struct.ata_link* %21, i32 0, i32 1
  store %struct.ata_eh_context* %22, %struct.ata_eh_context** %4, align 8
  store i32 0, i32* %9, align 4
  %23 = load %struct.ata_eh_context*, %struct.ata_eh_context** %4, align 8
  %24 = getelementptr inbounds %struct.ata_eh_context, %struct.ata_eh_context* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* @ATA_EHI_QUIET, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %1
  br label %452

31:                                               ; preds = %1
  store i8* null, i8** %6, align 8
  %32 = load %struct.ata_eh_context*, %struct.ata_eh_context** %4, align 8
  %33 = getelementptr inbounds %struct.ata_eh_context, %struct.ata_eh_context* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 1
  %35 = load i8*, i8** %34, align 8
  %36 = getelementptr inbounds i8, i8* %35, i64 0
  %37 = load i8, i8* %36, align 1
  %38 = sext i8 %37 to i32
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %45

40:                                               ; preds = %31
  %41 = load %struct.ata_eh_context*, %struct.ata_eh_context** %4, align 8
  %42 = getelementptr inbounds %struct.ata_eh_context, %struct.ata_eh_context* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 1
  %44 = load i8*, i8** %43, align 8
  store i8* %44, i8** %6, align 8
  br label %45

45:                                               ; preds = %40, %31
  store i32 0, i32* %8, align 4
  br label %46

46:                                               ; preds = %97, %45
  %47 = load i32, i32* %8, align 4
  %48 = load i32, i32* @ATA_MAX_QUEUE, align 4
  %49 = icmp slt i32 %47, %48
  br i1 %49, label %50, label %100

50:                                               ; preds = %46
  %51 = load %struct.ata_port*, %struct.ata_port** %3, align 8
  %52 = load i32, i32* %8, align 4
  %53 = call %struct.ata_queued_cmd* @__ata_qc_from_tag(%struct.ata_port* %51, i32 %52)
  store %struct.ata_queued_cmd* %53, %struct.ata_queued_cmd** %10, align 8
  %54 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %10, align 8
  %55 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = load i32, i32* @ATA_QCFLAG_FAILED, align 4
  %58 = and i32 %56, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %80

60:                                               ; preds = %50
  %61 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %10, align 8
  %62 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %61, i32 0, i32 5
  %63 = load i32, i32* %62, align 4
  %64 = call %struct.ata_link* @ata_dev_phys_link(i32 %63)
  %65 = load %struct.ata_link*, %struct.ata_link** %2, align 8
  %66 = icmp ne %struct.ata_link* %64, %65
  br i1 %66, label %80, label %67

67:                                               ; preds = %60
  %68 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %10, align 8
  %69 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = load i32, i32* @ATA_QCFLAG_QUIET, align 4
  %72 = and i32 %70, %71
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %81

74:                                               ; preds = %67
  %75 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %10, align 8
  %76 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %75, i32 0, i32 1
  %77 = load i64, i64* %76, align 8
  %78 = load i64, i64* @AC_ERR_DEV, align 8
  %79 = icmp eq i64 %77, %78
  br i1 %79, label %80, label %81

80:                                               ; preds = %74, %60, %50
  br label %97

81:                                               ; preds = %74, %67
  %82 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %10, align 8
  %83 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = load i32, i32* @ATA_QCFLAG_SENSE_VALID, align 4
  %86 = and i32 %84, %85
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %94

88:                                               ; preds = %81
  %89 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %10, align 8
  %90 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %89, i32 0, i32 1
  %91 = load i64, i64* %90, align 8
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %94, label %93

93:                                               ; preds = %88
  br label %97

94:                                               ; preds = %88, %81
  %95 = load i32, i32* %9, align 4
  %96 = add nsw i32 %95, 1
  store i32 %96, i32* %9, align 4
  br label %97

97:                                               ; preds = %94, %93, %80
  %98 = load i32, i32* %8, align 4
  %99 = add nsw i32 %98, 1
  store i32 %99, i32* %8, align 4
  br label %46

100:                                              ; preds = %46
  %101 = load i32, i32* %9, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %110, label %103

103:                                              ; preds = %100
  %104 = load %struct.ata_eh_context*, %struct.ata_eh_context** %4, align 8
  %105 = getelementptr inbounds %struct.ata_eh_context, %struct.ata_eh_context* %104, i32 0, i32 0
  %106 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %105, i32 0, i32 4
  %107 = load i32, i32* %106, align 8
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %110, label %109

109:                                              ; preds = %103
  br label %452

110:                                              ; preds = %103, %100
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8** %5, align 8
  %111 = load %struct.ata_port*, %struct.ata_port** %3, align 8
  %112 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = load i32, i32* @ATA_PFLAG_FROZEN, align 4
  %115 = and i32 %113, %114
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %118

117:                                              ; preds = %110
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8** %5, align 8
  br label %118

118:                                              ; preds = %117, %110
  %119 = getelementptr inbounds [6 x i8], [6 x i8]* %7, i64 0, i64 0
  %120 = call i32 @memset(i8* %119, i32 0, i32 6)
  %121 = load %struct.ata_port*, %struct.ata_port** %3, align 8
  %122 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %121, i32 0, i32 1
  %123 = load i64, i64* %122, align 8
  %124 = load i64, i64* @ATA_EH_MAX_TRIES, align 8
  %125 = icmp slt i64 %123, %124
  br i1 %125, label %126, label %132

126:                                              ; preds = %118
  %127 = getelementptr inbounds [6 x i8], [6 x i8]* %7, i64 0, i64 0
  %128 = load %struct.ata_port*, %struct.ata_port** %3, align 8
  %129 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %128, i32 0, i32 1
  %130 = load i64, i64* %129, align 8
  %131 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %127, i32 5, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i64 %130)
  br label %132

132:                                              ; preds = %126, %118
  %133 = load %struct.ata_eh_context*, %struct.ata_eh_context** %4, align 8
  %134 = getelementptr inbounds %struct.ata_eh_context, %struct.ata_eh_context* %133, i32 0, i32 0
  %135 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %134, i32 0, i32 5
  %136 = load i64, i64* %135, align 8
  %137 = icmp ne i64 %136, 0
  br i1 %137, label %138, label %175

138:                                              ; preds = %132
  %139 = load %struct.ata_eh_context*, %struct.ata_eh_context** %4, align 8
  %140 = getelementptr inbounds %struct.ata_eh_context, %struct.ata_eh_context* %139, i32 0, i32 0
  %141 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %140, i32 0, i32 5
  %142 = load i64, i64* %141, align 8
  %143 = trunc i64 %142 to i32
  %144 = load i32, i32* @KERN_ERR, align 4
  %145 = load %struct.ata_eh_context*, %struct.ata_eh_context** %4, align 8
  %146 = getelementptr inbounds %struct.ata_eh_context, %struct.ata_eh_context* %145, i32 0, i32 0
  %147 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %146, i32 0, i32 4
  %148 = load i32, i32* %147, align 8
  %149 = load %struct.ata_link*, %struct.ata_link** %2, align 8
  %150 = getelementptr inbounds %struct.ata_link, %struct.ata_link* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 8
  %152 = load %struct.ata_eh_context*, %struct.ata_eh_context** %4, align 8
  %153 = getelementptr inbounds %struct.ata_eh_context, %struct.ata_eh_context* %152, i32 0, i32 0
  %154 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %153, i32 0, i32 2
  %155 = load i32, i32* %154, align 8
  %156 = load %struct.ata_eh_context*, %struct.ata_eh_context** %4, align 8
  %157 = getelementptr inbounds %struct.ata_eh_context, %struct.ata_eh_context* %156, i32 0, i32 0
  %158 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %157, i32 0, i32 3
  %159 = load i32, i32* %158, align 4
  %160 = load i8*, i8** %5, align 8
  %161 = getelementptr inbounds [6 x i8], [6 x i8]* %7, i64 0, i64 0
  %162 = call i32 (i32, i32, i8*, ...) @ata_dev_printk(i32 %143, i32 %144, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.3, i64 0, i64 0), i32 %148, i32 %151, i32 %155, i32 %159, i8* %160, i8* %161)
  %163 = load i8*, i8** %6, align 8
  %164 = icmp ne i8* %163, null
  br i1 %164, label %165, label %174

165:                                              ; preds = %138
  %166 = load %struct.ata_eh_context*, %struct.ata_eh_context** %4, align 8
  %167 = getelementptr inbounds %struct.ata_eh_context, %struct.ata_eh_context* %166, i32 0, i32 0
  %168 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %167, i32 0, i32 5
  %169 = load i64, i64* %168, align 8
  %170 = trunc i64 %169 to i32
  %171 = load i32, i32* @KERN_ERR, align 4
  %172 = load i8*, i8** %6, align 8
  %173 = call i32 (i32, i32, i8*, ...) @ata_dev_printk(i32 %170, i32 %171, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i8* %172)
  br label %174

174:                                              ; preds = %165, %138
  br label %206

175:                                              ; preds = %132
  %176 = load %struct.ata_link*, %struct.ata_link** %2, align 8
  %177 = load i32, i32* @KERN_ERR, align 4
  %178 = load %struct.ata_eh_context*, %struct.ata_eh_context** %4, align 8
  %179 = getelementptr inbounds %struct.ata_eh_context, %struct.ata_eh_context* %178, i32 0, i32 0
  %180 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %179, i32 0, i32 4
  %181 = load i32, i32* %180, align 8
  %182 = sext i32 %181 to i64
  %183 = inttoptr i64 %182 to i8*
  %184 = load %struct.ata_link*, %struct.ata_link** %2, align 8
  %185 = getelementptr inbounds %struct.ata_link, %struct.ata_link* %184, i32 0, i32 0
  %186 = load i32, i32* %185, align 8
  %187 = load %struct.ata_eh_context*, %struct.ata_eh_context** %4, align 8
  %188 = getelementptr inbounds %struct.ata_eh_context, %struct.ata_eh_context* %187, i32 0, i32 0
  %189 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %188, i32 0, i32 2
  %190 = load i32, i32* %189, align 8
  %191 = load %struct.ata_eh_context*, %struct.ata_eh_context** %4, align 8
  %192 = getelementptr inbounds %struct.ata_eh_context, %struct.ata_eh_context* %191, i32 0, i32 0
  %193 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %192, i32 0, i32 3
  %194 = load i32, i32* %193, align 4
  %195 = load i8*, i8** %5, align 8
  %196 = getelementptr inbounds [6 x i8], [6 x i8]* %7, i64 0, i64 0
  %197 = call i32 (%struct.ata_link*, i32, i8*, i8*, ...) @ata_link_printk(%struct.ata_link* %176, i32 %177, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.3, i64 0, i64 0), i8* %183, i32 %186, i32 %190, i32 %194, i8* %195, i8* %196)
  %198 = load i8*, i8** %6, align 8
  %199 = icmp ne i8* %198, null
  br i1 %199, label %200, label %205

200:                                              ; preds = %175
  %201 = load %struct.ata_link*, %struct.ata_link** %2, align 8
  %202 = load i32, i32* @KERN_ERR, align 4
  %203 = load i8*, i8** %6, align 8
  %204 = call i32 (%struct.ata_link*, i32, i8*, i8*, ...) @ata_link_printk(%struct.ata_link* %201, i32 %202, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i8* %203)
  br label %205

205:                                              ; preds = %200, %175
  br label %206

206:                                              ; preds = %205, %174
  store i32 0, i32* %8, align 4
  br label %207

207:                                              ; preds = %449, %206
  %208 = load i32, i32* %8, align 4
  %209 = load i32, i32* @ATA_MAX_QUEUE, align 4
  %210 = icmp slt i32 %208, %209
  br i1 %210, label %211, label %452

211:                                              ; preds = %207
  %212 = load %struct.ata_port*, %struct.ata_port** %3, align 8
  %213 = load i32, i32* %8, align 4
  %214 = call %struct.ata_queued_cmd* @__ata_qc_from_tag(%struct.ata_port* %212, i32 %213)
  store %struct.ata_queued_cmd* %214, %struct.ata_queued_cmd** %11, align 8
  %215 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %11, align 8
  %216 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %215, i32 0, i32 8
  store %struct.ata_taskfile* %216, %struct.ata_taskfile** %12, align 8
  %217 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %11, align 8
  %218 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %217, i32 0, i32 9
  store %struct.ata_taskfile* %218, %struct.ata_taskfile** %13, align 8
  %219 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %11, align 8
  %220 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %219, i32 0, i32 2
  %221 = load i32*, i32** %220, align 8
  store i32* %221, i32** %14, align 8
  %222 = bitcast [20 x i8]* %15 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %222, i8 0, i64 20, i1 false)
  %223 = bitcast [70 x i8]* %16 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %223, i8 0, i64 70, i1 false)
  %224 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %11, align 8
  %225 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %224, i32 0, i32 0
  %226 = load i32, i32* %225, align 8
  %227 = load i32, i32* @ATA_QCFLAG_FAILED, align 4
  %228 = and i32 %226, %227
  %229 = icmp ne i32 %228, 0
  br i1 %229, label %230, label %242

230:                                              ; preds = %211
  %231 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %11, align 8
  %232 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %231, i32 0, i32 5
  %233 = load i32, i32* %232, align 4
  %234 = call %struct.ata_link* @ata_dev_phys_link(i32 %233)
  %235 = load %struct.ata_link*, %struct.ata_link** %2, align 8
  %236 = icmp ne %struct.ata_link* %234, %235
  br i1 %236, label %242, label %237

237:                                              ; preds = %230
  %238 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %11, align 8
  %239 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %238, i32 0, i32 1
  %240 = load i64, i64* %239, align 8
  %241 = icmp ne i64 %240, 0
  br i1 %241, label %243, label %242

242:                                              ; preds = %237, %230, %211
  br label %449

243:                                              ; preds = %237
  %244 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %11, align 8
  %245 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %244, i32 0, i32 3
  %246 = load i64, i64* %245, align 8
  %247 = load i64, i64* @DMA_NONE, align 8
  %248 = icmp ne i64 %246, %247
  br i1 %248, label %249, label %266

249:                                              ; preds = %243
  %250 = getelementptr inbounds [20 x i8], [20 x i8]* %15, i64 0, i64 0
  %251 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %11, align 8
  %252 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %251, i32 0, i32 8
  %253 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %252, i32 0, i32 0
  %254 = load i64, i64* %253, align 8
  %255 = getelementptr inbounds [136 x i8*], [136 x i8*]* @ata_eh_link_report.prot_str, i64 0, i64 %254
  %256 = load i8*, i8** %255, align 8
  %257 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %11, align 8
  %258 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %257, i32 0, i32 4
  %259 = load i32, i32* %258, align 8
  %260 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %11, align 8
  %261 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %260, i32 0, i32 3
  %262 = load i64, i64* %261, align 8
  %263 = getelementptr inbounds [131 x i8*], [131 x i8*]* @ata_eh_link_report.dma_str, i64 0, i64 %262
  %264 = load i8*, i8** %263, align 8
  %265 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %250, i32 20, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.11, i64 0, i64 0), i8* %256, i32 %259, i8* %264)
  br label %266

266:                                              ; preds = %249, %243
  %267 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %11, align 8
  %268 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %267, i32 0, i32 8
  %269 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %268, i32 0, i32 0
  %270 = load i64, i64* %269, align 8
  %271 = call i64 @ata_is_atapi(i64 %270)
  %272 = icmp ne i64 %271, 0
  br i1 %272, label %273, label %335

273:                                              ; preds = %266
  %274 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %11, align 8
  %275 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %274, i32 0, i32 7
  %276 = load i64, i64* %275, align 8
  %277 = icmp ne i64 %276, 0
  br i1 %277, label %278, label %283

278:                                              ; preds = %273
  %279 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %11, align 8
  %280 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %279, i32 0, i32 7
  %281 = load i64, i64* %280, align 8
  %282 = call i32 @scsi_print_command(i64 %281)
  br label %334

283:                                              ; preds = %273
  %284 = getelementptr inbounds [70 x i8], [70 x i8]* %16, i64 0, i64 0
  %285 = load i32*, i32** %14, align 8
  %286 = getelementptr inbounds i32, i32* %285, i64 0
  %287 = load i32, i32* %286, align 4
  %288 = load i32*, i32** %14, align 8
  %289 = getelementptr inbounds i32, i32* %288, i64 1
  %290 = load i32, i32* %289, align 4
  %291 = load i32*, i32** %14, align 8
  %292 = getelementptr inbounds i32, i32* %291, i64 2
  %293 = load i32, i32* %292, align 4
  %294 = load i32*, i32** %14, align 8
  %295 = getelementptr inbounds i32, i32* %294, i64 3
  %296 = load i32, i32* %295, align 4
  %297 = load i32*, i32** %14, align 8
  %298 = getelementptr inbounds i32, i32* %297, i64 4
  %299 = load i32, i32* %298, align 4
  %300 = load i32*, i32** %14, align 8
  %301 = getelementptr inbounds i32, i32* %300, i64 5
  %302 = load i32, i32* %301, align 4
  %303 = load i32*, i32** %14, align 8
  %304 = getelementptr inbounds i32, i32* %303, i64 6
  %305 = load i32, i32* %304, align 4
  %306 = load i32*, i32** %14, align 8
  %307 = getelementptr inbounds i32, i32* %306, i64 7
  %308 = load i32, i32* %307, align 4
  %309 = load i32*, i32** %14, align 8
  %310 = getelementptr inbounds i32, i32* %309, i64 8
  %311 = load i32, i32* %310, align 4
  %312 = load i32*, i32** %14, align 8
  %313 = getelementptr inbounds i32, i32* %312, i64 9
  %314 = load i32, i32* %313, align 4
  %315 = load i32*, i32** %14, align 8
  %316 = getelementptr inbounds i32, i32* %315, i64 10
  %317 = load i32, i32* %316, align 4
  %318 = load i32*, i32** %14, align 8
  %319 = getelementptr inbounds i32, i32* %318, i64 11
  %320 = load i32, i32* %319, align 4
  %321 = load i32*, i32** %14, align 8
  %322 = getelementptr inbounds i32, i32* %321, i64 12
  %323 = load i32, i32* %322, align 4
  %324 = load i32*, i32** %14, align 8
  %325 = getelementptr inbounds i32, i32* %324, i64 13
  %326 = load i32, i32* %325, align 4
  %327 = load i32*, i32** %14, align 8
  %328 = getelementptr inbounds i32, i32* %327, i64 14
  %329 = load i32, i32* %328, align 4
  %330 = load i32*, i32** %14, align 8
  %331 = getelementptr inbounds i32, i32* %330, i64 15
  %332 = load i32, i32* %331, align 4
  %333 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %284, i32 70, i8* getelementptr inbounds ([95 x i8], [95 x i8]* @.str.12, i64 0, i64 0), i32 %287, i32 %290, i32 %293, i32 %296, i32 %299, i32 %302, i32 %305, i32 %308, i32 %311, i32 %314, i32 %317, i32 %320, i32 %323, i32 %326, i32 %329, i32 %332)
  br label %334

334:                                              ; preds = %283, %278
  br label %350

335:                                              ; preds = %266
  %336 = load %struct.ata_taskfile*, %struct.ata_taskfile** %12, align 8
  %337 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %336, i32 0, i32 1
  %338 = load i32, i32* %337, align 8
  %339 = call i8* @ata_get_cmd_descript(i32 %338)
  store i8* %339, i8** %17, align 8
  %340 = load i8*, i8** %17, align 8
  %341 = icmp ne i8* %340, null
  br i1 %341, label %342, label %349

342:                                              ; preds = %335
  %343 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %11, align 8
  %344 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %343, i32 0, i32 5
  %345 = load i32, i32* %344, align 4
  %346 = load i32, i32* @KERN_ERR, align 4
  %347 = load i8*, i8** %17, align 8
  %348 = call i32 (i32, i32, i8*, ...) @ata_dev_printk(i32 %345, i32 %346, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.13, i64 0, i64 0), i8* %347)
  br label %349

349:                                              ; preds = %342, %335
  br label %350

350:                                              ; preds = %349, %334
  %351 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %11, align 8
  %352 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %351, i32 0, i32 5
  %353 = load i32, i32* %352, align 4
  %354 = load i32, i32* @KERN_ERR, align 4
  %355 = load %struct.ata_taskfile*, %struct.ata_taskfile** %12, align 8
  %356 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %355, i32 0, i32 1
  %357 = load i32, i32* %356, align 8
  %358 = load %struct.ata_taskfile*, %struct.ata_taskfile** %12, align 8
  %359 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %358, i32 0, i32 2
  %360 = load i32, i32* %359, align 4
  %361 = load %struct.ata_taskfile*, %struct.ata_taskfile** %12, align 8
  %362 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %361, i32 0, i32 12
  %363 = load i32, i32* %362, align 4
  %364 = load %struct.ata_taskfile*, %struct.ata_taskfile** %12, align 8
  %365 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %364, i32 0, i32 11
  %366 = load i32, i32* %365, align 8
  %367 = load %struct.ata_taskfile*, %struct.ata_taskfile** %12, align 8
  %368 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %367, i32 0, i32 10
  %369 = load i32, i32* %368, align 4
  %370 = load %struct.ata_taskfile*, %struct.ata_taskfile** %12, align 8
  %371 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %370, i32 0, i32 9
  %372 = load i32, i32* %371, align 8
  %373 = load %struct.ata_taskfile*, %struct.ata_taskfile** %12, align 8
  %374 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %373, i32 0, i32 8
  %375 = load i32, i32* %374, align 4
  %376 = load %struct.ata_taskfile*, %struct.ata_taskfile** %12, align 8
  %377 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %376, i32 0, i32 7
  %378 = load i32, i32* %377, align 8
  %379 = load %struct.ata_taskfile*, %struct.ata_taskfile** %12, align 8
  %380 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %379, i32 0, i32 6
  %381 = load i32, i32* %380, align 4
  %382 = load %struct.ata_taskfile*, %struct.ata_taskfile** %12, align 8
  %383 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %382, i32 0, i32 5
  %384 = load i32, i32* %383, align 8
  %385 = load %struct.ata_taskfile*, %struct.ata_taskfile** %12, align 8
  %386 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %385, i32 0, i32 4
  %387 = load i32, i32* %386, align 4
  %388 = load %struct.ata_taskfile*, %struct.ata_taskfile** %12, align 8
  %389 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %388, i32 0, i32 3
  %390 = load i32, i32* %389, align 8
  %391 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %11, align 8
  %392 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %391, i32 0, i32 6
  %393 = load i32, i32* %392, align 8
  %394 = getelementptr inbounds [20 x i8], [20 x i8]* %15, i64 0, i64 0
  %395 = getelementptr inbounds [70 x i8], [70 x i8]* %16, i64 0, i64 0
  %396 = load %struct.ata_taskfile*, %struct.ata_taskfile** %13, align 8
  %397 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %396, i32 0, i32 1
  %398 = load i32, i32* %397, align 8
  %399 = load %struct.ata_taskfile*, %struct.ata_taskfile** %13, align 8
  %400 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %399, i32 0, i32 2
  %401 = load i32, i32* %400, align 4
  %402 = load %struct.ata_taskfile*, %struct.ata_taskfile** %13, align 8
  %403 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %402, i32 0, i32 12
  %404 = load i32, i32* %403, align 4
  %405 = load %struct.ata_taskfile*, %struct.ata_taskfile** %13, align 8
  %406 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %405, i32 0, i32 11
  %407 = load i32, i32* %406, align 8
  %408 = load %struct.ata_taskfile*, %struct.ata_taskfile** %13, align 8
  %409 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %408, i32 0, i32 10
  %410 = load i32, i32* %409, align 4
  %411 = load %struct.ata_taskfile*, %struct.ata_taskfile** %13, align 8
  %412 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %411, i32 0, i32 9
  %413 = load i32, i32* %412, align 8
  %414 = load %struct.ata_taskfile*, %struct.ata_taskfile** %13, align 8
  %415 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %414, i32 0, i32 8
  %416 = load i32, i32* %415, align 4
  %417 = load %struct.ata_taskfile*, %struct.ata_taskfile** %13, align 8
  %418 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %417, i32 0, i32 7
  %419 = load i32, i32* %418, align 8
  %420 = load %struct.ata_taskfile*, %struct.ata_taskfile** %13, align 8
  %421 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %420, i32 0, i32 6
  %422 = load i32, i32* %421, align 4
  %423 = load %struct.ata_taskfile*, %struct.ata_taskfile** %13, align 8
  %424 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %423, i32 0, i32 5
  %425 = load i32, i32* %424, align 8
  %426 = load %struct.ata_taskfile*, %struct.ata_taskfile** %13, align 8
  %427 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %426, i32 0, i32 4
  %428 = load i32, i32* %427, align 4
  %429 = load %struct.ata_taskfile*, %struct.ata_taskfile** %13, align 8
  %430 = getelementptr inbounds %struct.ata_taskfile, %struct.ata_taskfile* %429, i32 0, i32 3
  %431 = load i32, i32* %430, align 8
  %432 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %11, align 8
  %433 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %432, i32 0, i32 1
  %434 = load i64, i64* %433, align 8
  %435 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %11, align 8
  %436 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %435, i32 0, i32 1
  %437 = load i64, i64* %436, align 8
  %438 = call i32 @ata_err_string(i64 %437)
  %439 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %11, align 8
  %440 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %439, i32 0, i32 1
  %441 = load i64, i64* %440, align 8
  %442 = load i32, i32* @AC_ERR_NCQ, align 4
  %443 = sext i32 %442 to i64
  %444 = and i64 %441, %443
  %445 = icmp ne i64 %444, 0
  %446 = zext i1 %445 to i64
  %447 = select i1 %445, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.15, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0)
  %448 = call i32 (i32, i32, i8*, ...) @ata_dev_printk(i32 %353, i32 %354, i8* getelementptr inbounds ([167 x i8], [167 x i8]* @.str.14, i64 0, i64 0), i32 %357, i32 %360, i32 %363, i32 %366, i32 %369, i32 %372, i32 %375, i32 %378, i32 %381, i32 %384, i32 %387, i32 %390, i32 %393, i8* %394, i8* %395, i32 %398, i32 %401, i32 %404, i32 %407, i32 %410, i32 %413, i32 %416, i32 %419, i32 %422, i32 %425, i32 %428, i32 %431, i64 %434, i32 %438, i8* %447)
  br label %449

449:                                              ; preds = %350, %242
  %450 = load i32, i32* %8, align 4
  %451 = add nsw i32 %450, 1
  store i32 %451, i32* %8, align 4
  br label %207

452:                                              ; preds = %30, %109, %207
  ret void
}

declare dso_local %struct.ata_queued_cmd* @__ata_qc_from_tag(%struct.ata_port*, i32) #1

declare dso_local %struct.ata_link* @ata_dev_phys_link(i32) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, ...) #1

declare dso_local i32 @ata_dev_printk(i32, i32, i8*, ...) #1

declare dso_local i32 @ata_link_printk(%struct.ata_link*, i32, i8*, i8*, ...) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i64 @ata_is_atapi(i64) #1

declare dso_local i32 @scsi_print_command(i64) #1

declare dso_local i8* @ata_get_cmd_descript(i32) #1

declare dso_local i32 @ata_err_string(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
