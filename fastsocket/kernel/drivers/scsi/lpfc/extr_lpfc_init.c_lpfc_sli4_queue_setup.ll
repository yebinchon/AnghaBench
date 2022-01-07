; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/lpfc/extr_lpfc_init.c_lpfc_sli4_queue_setup.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/lpfc/extr_lpfc_init.c_lpfc_sli4_queue_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpfc_hba = type { i32, i32, %struct.TYPE_30__, i32, %struct.lpfc_sli }
%struct.TYPE_30__ = type { i32, i32, i32, i32*, %struct.TYPE_37__**, %struct.TYPE_33__**, %struct.TYPE_32__**, %struct.TYPE_33__*, %struct.TYPE_33__*, %struct.TYPE_36__*, %struct.TYPE_32__*, %struct.TYPE_34__*, %struct.TYPE_34__* }
%struct.TYPE_37__ = type { i32 }
%struct.TYPE_33__ = type { i32, %struct.lpfc_sli_ring* }
%struct.lpfc_sli_ring = type { %struct.TYPE_45__ }
%struct.TYPE_45__ = type { %struct.TYPE_44__ }
%struct.TYPE_44__ = type { i8* }
%struct.TYPE_36__ = type { i32 }
%struct.TYPE_32__ = type { i32 }
%struct.TYPE_34__ = type { i32 }
%struct.lpfc_sli = type { %struct.lpfc_sli_ring* }
%union.lpfc_sli4_cfg_shdr = type { i32 }
%struct.TYPE_31__ = type { %struct.TYPE_43__ }
%struct.TYPE_43__ = type { %struct.TYPE_42__ }
%struct.TYPE_42__ = type { %struct.TYPE_41__ }
%struct.TYPE_41__ = type { %struct.TYPE_40__, %struct.TYPE_38__ }
%struct.TYPE_40__ = type { %struct.TYPE_39__ }
%struct.TYPE_39__ = type { i32, i32, i32 }
%struct.TYPE_38__ = type { %struct.TYPE_35__ }
%struct.TYPE_35__ = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@KERN_ERR = common dso_local global i32 0, align 4
@LOG_INIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [65 x i8] c"3249 Unable to allocate memory for QUERY_FW_CFG mailbox command\0A\00", align 1
@LPFC_MBOX_SUBSYSTEM_COMMON = common dso_local global i32 0, align 4
@LPFC_MBOX_OPCODE_QUERY_FW_CFG = common dso_local global i32 0, align 4
@LPFC_SLI4_MBX_EMBED = common dso_local global i32 0, align 4
@MBX_POLL = common dso_local global i32 0, align 4
@lpfc_mbox_hdr_status = common dso_local global i32 0, align 4
@lpfc_mbox_hdr_add_status = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [81 x i8] c"3250 QUERY_FW_CFG mailbox failed with status x%x add_status x%x, mbx status x%x\0A\00", align 1
@MBX_TIMEOUT = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@KERN_INFO = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [64 x i8] c"3251 QUERY_FW_CFG: func_mode:x%x, ulp0_mode:x%x, ulp1_mode:x%x\0A\00", align 1
@.str.3 = private unnamed_addr constant [34 x i8] c"3147 Fast-path EQs not allocated\0A\00", align 1
@.str.4 = private unnamed_addr constant [38 x i8] c"0522 Fast-path EQ (%d) not allocated\0A\00", align 1
@.str.5 = private unnamed_addr constant [51 x i8] c"0523 Failed setup of fast-path EQ (%d), rc = 0x%x\0A\00", align 1
@.str.6 = private unnamed_addr constant [36 x i8] c"2584 HBA EQ setup: queue[%d]-id=%d\0A\00", align 1
@.str.7 = private unnamed_addr constant [43 x i8] c"3148 Fast-path FCP CQ array not allocated\0A\00", align 1
@.str.8 = private unnamed_addr constant [42 x i8] c"0526 Fast-path FCP CQ (%d) not allocated\0A\00", align 1
@LPFC_WCQ = common dso_local global i32 0, align 4
@LPFC_FCP = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [55 x i8] c"0527 Failed setup of fast-path FCP CQ (%d), rc = 0x%x\0A\00", align 1
@.str.10 = private unnamed_addr constant [55 x i8] c"2588 FCP CQ setup: cq[%d]-id=%d, parent seq[%d]-id=%d\0A\00", align 1
@.str.11 = private unnamed_addr constant [43 x i8] c"3149 Fast-path FCP WQ array not allocated\0A\00", align 1
@.str.12 = private unnamed_addr constant [42 x i8] c"0534 Fast-path FCP WQ (%d) not allocated\0A\00", align 1
@.str.13 = private unnamed_addr constant [55 x i8] c"0535 Failed setup of fast-path FCP WQ (%d), rc = 0x%x\0A\00", align 1
@MAX_SLI3_CONFIGURED_RINGS = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [54 x i8] c"2591 FCP WQ setup: wq[%d]-id=%d, parent cq[%d]-id=%d\0A\00", align 1
@.str.15 = private unnamed_addr constant [31 x i8] c"0528 Mailbox CQ not allocated\0A\00", align 1
@LPFC_MCQ = common dso_local global i32 0, align 4
@LPFC_MBOX = common dso_local global i32 0, align 4
@.str.16 = private unnamed_addr constant [54 x i8] c"0529 Failed setup of slow-path mailbox CQ: rc = 0x%x\0A\00", align 1
@.str.17 = private unnamed_addr constant [46 x i8] c"2585 MBX CQ setup: cq-id=%d, parent eq-id=%d\0A\00", align 1
@.str.18 = private unnamed_addr constant [27 x i8] c"0530 ELS CQ not allocated\0A\00", align 1
@LPFC_ELS = common dso_local global i32 0, align 4
@.str.19 = private unnamed_addr constant [50 x i8] c"0531 Failed setup of slow-path ELS CQ: rc = 0x%x\0A\00", align 1
@.str.20 = private unnamed_addr constant [46 x i8] c"2586 ELS CQ setup: cq-id=%d, parent eq-id=%d\0A\00", align 1
@.str.21 = private unnamed_addr constant [33 x i8] c"0538 Slow-path MQ not allocated\0A\00", align 1
@.str.22 = private unnamed_addr constant [46 x i8] c"0539 Failed setup of slow-path MQ: rc = 0x%x\0A\00", align 1
@.str.23 = private unnamed_addr constant [46 x i8] c"2589 MBX MQ setup: wq-id=%d, parent cq-id=%d\0A\00", align 1
@.str.24 = private unnamed_addr constant [37 x i8] c"0536 Slow-path ELS WQ not allocated\0A\00", align 1
@.str.25 = private unnamed_addr constant [50 x i8] c"0537 Failed setup of slow-path ELS WQ: rc = 0x%x\0A\00", align 1
@LPFC_ELS_RING = common dso_local global i64 0, align 8
@.str.26 = private unnamed_addr constant [46 x i8] c"2590 ELS WQ setup: wq-id=%d, parent cq-id=%d\0A\00", align 1
@.str.27 = private unnamed_addr constant [34 x i8] c"0540 Receive Queue not allocated\0A\00", align 1
@LPFC_ELS_HBQ = common dso_local global i32 0, align 4
@LPFC_USOL = common dso_local global i32 0, align 4
@.str.28 = private unnamed_addr constant [47 x i8] c"0541 Failed setup of Receive Queue: rc = 0x%x\0A\00", align 1
@.str.29 = private unnamed_addr constant [63 x i8] c"2592 USL RQ setup: hdr-rq-id=%d, dat-rq-id=%d parent cq-id=%d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @lpfc_sli4_queue_setup(%struct.lpfc_hba* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.lpfc_hba*, align 8
  %4 = alloca %struct.lpfc_sli*, align 8
  %5 = alloca %struct.lpfc_sli_ring*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %union.lpfc_sli4_cfg_shdr*, align 8
  %14 = alloca %struct.TYPE_31__*, align 8
  %15 = alloca i32, align 4
  store %struct.lpfc_hba* %0, %struct.lpfc_hba** %3, align 8
  %16 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %17 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %16, i32 0, i32 4
  store %struct.lpfc_sli* %17, %struct.lpfc_sli** %4, align 8
  %18 = load i32, i32* @ENOMEM, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %6, align 4
  store i32 0, i32* %10, align 4
  %20 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %21 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %20, i32 0, i32 3
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* @GFP_KERNEL, align 4
  %24 = call i64 @mempool_alloc(i32 %22, i32 %23)
  %25 = inttoptr i64 %24 to %struct.TYPE_31__*
  store %struct.TYPE_31__* %25, %struct.TYPE_31__** %14, align 8
  %26 = load %struct.TYPE_31__*, %struct.TYPE_31__** %14, align 8
  %27 = icmp ne %struct.TYPE_31__* %26, null
  br i1 %27, label %35, label %28

28:                                               ; preds = %1
  %29 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %30 = load i32, i32* @KERN_ERR, align 4
  %31 = load i32, i32* @LOG_INIT, align 4
  %32 = call i32 (%struct.lpfc_hba*, i32, i32, i8*, ...) @lpfc_printf_log(%struct.lpfc_hba* %29, i32 %30, i32 %31, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str, i64 0, i64 0))
  %33 = load i32, i32* @ENOMEM, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %2, align 4
  br label %881

35:                                               ; preds = %1
  store i32 0, i32* %15, align 4
  %36 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %37 = load %struct.TYPE_31__*, %struct.TYPE_31__** %14, align 8
  %38 = load i32, i32* @LPFC_MBOX_SUBSYSTEM_COMMON, align 4
  %39 = load i32, i32* @LPFC_MBOX_OPCODE_QUERY_FW_CFG, align 4
  %40 = load i32, i32* %15, align 4
  %41 = load i32, i32* @LPFC_SLI4_MBX_EMBED, align 4
  %42 = call i32 @lpfc_sli4_config(%struct.lpfc_hba* %36, %struct.TYPE_31__* %37, i32 %38, i32 %39, i32 %40, i32 %41)
  %43 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %44 = load %struct.TYPE_31__*, %struct.TYPE_31__** %14, align 8
  %45 = load i32, i32* @MBX_POLL, align 4
  %46 = call i32 @lpfc_sli_issue_mbox(%struct.lpfc_hba* %43, %struct.TYPE_31__* %44, i32 %45)
  store i32 %46, i32* %6, align 4
  %47 = load %struct.TYPE_31__*, %struct.TYPE_31__** %14, align 8
  %48 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %52, i32 0, i32 0
  %54 = bitcast i32* %53 to %union.lpfc_sli4_cfg_shdr*
  store %union.lpfc_sli4_cfg_shdr* %54, %union.lpfc_sli4_cfg_shdr** %13, align 8
  %55 = load i32, i32* @lpfc_mbox_hdr_status, align 4
  %56 = load %union.lpfc_sli4_cfg_shdr*, %union.lpfc_sli4_cfg_shdr** %13, align 8
  %57 = bitcast %union.lpfc_sli4_cfg_shdr* %56 to i32*
  %58 = call i32 @bf_get(i32 %55, i32* %57)
  store i32 %58, i32* %11, align 4
  %59 = load i32, i32* @lpfc_mbox_hdr_add_status, align 4
  %60 = load %union.lpfc_sli4_cfg_shdr*, %union.lpfc_sli4_cfg_shdr** %13, align 8
  %61 = bitcast %union.lpfc_sli4_cfg_shdr* %60 to i32*
  %62 = call i32 @bf_get(i32 %59, i32* %61)
  store i32 %62, i32* %12, align 4
  %63 = load i32, i32* %11, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %71, label %65

65:                                               ; preds = %35
  %66 = load i32, i32* %12, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %71, label %68

68:                                               ; preds = %65
  %69 = load i32, i32* %6, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %91

71:                                               ; preds = %68, %65, %35
  %72 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %73 = load i32, i32* @KERN_ERR, align 4
  %74 = load i32, i32* @LOG_INIT, align 4
  %75 = load i32, i32* %11, align 4
  %76 = load i32, i32* %12, align 4
  %77 = load i32, i32* %6, align 4
  %78 = call i32 (%struct.lpfc_hba*, i32, i32, i8*, ...) @lpfc_printf_log(%struct.lpfc_hba* %72, i32 %73, i32 %74, i8* getelementptr inbounds ([81 x i8], [81 x i8]* @.str.1, i64 0, i64 0), i32 %75, i32 %76, i32 %77)
  %79 = load i32, i32* %6, align 4
  %80 = load i32, i32* @MBX_TIMEOUT, align 4
  %81 = icmp ne i32 %79, %80
  br i1 %81, label %82, label %88

82:                                               ; preds = %71
  %83 = load %struct.TYPE_31__*, %struct.TYPE_31__** %14, align 8
  %84 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %85 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %84, i32 0, i32 3
  %86 = load i32, i32* %85, align 8
  %87 = call i32 @mempool_free(%struct.TYPE_31__* %83, i32 %86)
  br label %88

88:                                               ; preds = %82, %71
  %89 = load i32, i32* @ENXIO, align 4
  %90 = sub nsw i32 0, %89
  store i32 %90, i32* %6, align 4
  br label %879

91:                                               ; preds = %68
  %92 = load %struct.TYPE_31__*, %struct.TYPE_31__** %14, align 8
  %93 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %101 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %100, i32 0, i32 2
  %102 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %101, i32 0, i32 0
  store i32 %99, i32* %102, align 8
  %103 = load %struct.TYPE_31__*, %struct.TYPE_31__** %14, align 8
  %104 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %104, i32 0, i32 0
  %106 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %105, i32 0, i32 0
  %107 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %107, i32 0, i32 0
  %109 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 4
  %111 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %112 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %111, i32 0, i32 2
  %113 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %112, i32 0, i32 1
  store i32 %110, i32* %113, align 4
  %114 = load %struct.TYPE_31__*, %struct.TYPE_31__** %14, align 8
  %115 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %114, i32 0, i32 0
  %116 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %115, i32 0, i32 0
  %117 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %116, i32 0, i32 0
  %118 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %117, i32 0, i32 0
  %119 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %118, i32 0, i32 0
  %120 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %119, i32 0, i32 2
  %121 = load i32, i32* %120, align 4
  %122 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %123 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %122, i32 0, i32 2
  %124 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %123, i32 0, i32 2
  store i32 %121, i32* %124, align 8
  %125 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %126 = load i32, i32* @KERN_INFO, align 4
  %127 = load i32, i32* @LOG_INIT, align 4
  %128 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %129 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %128, i32 0, i32 2
  %130 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 8
  %132 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %133 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %132, i32 0, i32 2
  %134 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %133, i32 0, i32 1
  %135 = load i32, i32* %134, align 4
  %136 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %137 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %136, i32 0, i32 2
  %138 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %137, i32 0, i32 2
  %139 = load i32, i32* %138, align 8
  %140 = call i32 (%struct.lpfc_hba*, i32, i32, i8*, ...) @lpfc_printf_log(%struct.lpfc_hba* %125, i32 %126, i32 %127, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.2, i64 0, i64 0), i32 %131, i32 %135, i32 %139)
  %141 = load i32, i32* %6, align 4
  %142 = load i32, i32* @MBX_TIMEOUT, align 4
  %143 = icmp ne i32 %141, %142
  br i1 %143, label %144, label %150

144:                                              ; preds = %91
  %145 = load %struct.TYPE_31__*, %struct.TYPE_31__** %14, align 8
  %146 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %147 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %146, i32 0, i32 3
  %148 = load i32, i32* %147, align 8
  %149 = call i32 @mempool_free(%struct.TYPE_31__* %145, i32 %148)
  br label %150

150:                                              ; preds = %144, %91
  %151 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %152 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 8
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %155, label %168

155:                                              ; preds = %150
  %156 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %157 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %156, i32 0, i32 2
  %158 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %157, i32 0, i32 4
  %159 = load %struct.TYPE_37__**, %struct.TYPE_37__*** %158, align 8
  %160 = icmp ne %struct.TYPE_37__** %159, null
  br i1 %160, label %168, label %161

161:                                              ; preds = %155
  %162 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %163 = load i32, i32* @KERN_ERR, align 4
  %164 = load i32, i32* @LOG_INIT, align 4
  %165 = call i32 (%struct.lpfc_hba*, i32, i32, i8*, ...) @lpfc_printf_log(%struct.lpfc_hba* %162, i32 %163, i32 %164, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0))
  %166 = load i32, i32* @ENOMEM, align 4
  %167 = sub nsw i32 0, %166
  store i32 %167, i32* %6, align 4
  br label %879

168:                                              ; preds = %155, %150
  store i32 0, i32* %7, align 4
  br label %169

169:                                              ; preds = %236, %168
  %170 = load i32, i32* %7, align 4
  %171 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %172 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %171, i32 0, i32 0
  %173 = load i32, i32* %172, align 8
  %174 = icmp slt i32 %170, %173
  br i1 %174, label %175, label %239

175:                                              ; preds = %169
  %176 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %177 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %176, i32 0, i32 2
  %178 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %177, i32 0, i32 4
  %179 = load %struct.TYPE_37__**, %struct.TYPE_37__*** %178, align 8
  %180 = load i32, i32* %7, align 4
  %181 = sext i32 %180 to i64
  %182 = getelementptr inbounds %struct.TYPE_37__*, %struct.TYPE_37__** %179, i64 %181
  %183 = load %struct.TYPE_37__*, %struct.TYPE_37__** %182, align 8
  %184 = icmp ne %struct.TYPE_37__* %183, null
  br i1 %184, label %193, label %185

185:                                              ; preds = %175
  %186 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %187 = load i32, i32* @KERN_ERR, align 4
  %188 = load i32, i32* @LOG_INIT, align 4
  %189 = load i32, i32* %7, align 4
  %190 = call i32 (%struct.lpfc_hba*, i32, i32, i8*, ...) @lpfc_printf_log(%struct.lpfc_hba* %186, i32 %187, i32 %188, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.4, i64 0, i64 0), i32 %189)
  %191 = load i32, i32* @ENOMEM, align 4
  %192 = sub nsw i32 0, %191
  store i32 %192, i32* %6, align 4
  br label %858

193:                                              ; preds = %175
  %194 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %195 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %196 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %195, i32 0, i32 2
  %197 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %196, i32 0, i32 4
  %198 = load %struct.TYPE_37__**, %struct.TYPE_37__*** %197, align 8
  %199 = load i32, i32* %7, align 4
  %200 = sext i32 %199 to i64
  %201 = getelementptr inbounds %struct.TYPE_37__*, %struct.TYPE_37__** %198, i64 %200
  %202 = load %struct.TYPE_37__*, %struct.TYPE_37__** %201, align 8
  %203 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %204 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %203, i32 0, i32 1
  %205 = load i32, i32* %204, align 4
  %206 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %207 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %206, i32 0, i32 0
  %208 = load i32, i32* %207, align 8
  %209 = sdiv i32 %205, %208
  %210 = call i32 @lpfc_eq_create(%struct.lpfc_hba* %194, %struct.TYPE_37__* %202, i32 %209)
  store i32 %210, i32* %6, align 4
  %211 = load i32, i32* %6, align 4
  %212 = icmp ne i32 %211, 0
  br i1 %212, label %213, label %220

213:                                              ; preds = %193
  %214 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %215 = load i32, i32* @KERN_ERR, align 4
  %216 = load i32, i32* @LOG_INIT, align 4
  %217 = load i32, i32* %7, align 4
  %218 = load i32, i32* %6, align 4
  %219 = call i32 (%struct.lpfc_hba*, i32, i32, i8*, ...) @lpfc_printf_log(%struct.lpfc_hba* %214, i32 %215, i32 %216, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.5, i64 0, i64 0), i32 %217, i32 %218)
  br label %858

220:                                              ; preds = %193
  %221 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %222 = load i32, i32* @KERN_INFO, align 4
  %223 = load i32, i32* @LOG_INIT, align 4
  %224 = load i32, i32* %7, align 4
  %225 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %226 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %225, i32 0, i32 2
  %227 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %226, i32 0, i32 4
  %228 = load %struct.TYPE_37__**, %struct.TYPE_37__*** %227, align 8
  %229 = load i32, i32* %7, align 4
  %230 = sext i32 %229 to i64
  %231 = getelementptr inbounds %struct.TYPE_37__*, %struct.TYPE_37__** %228, i64 %230
  %232 = load %struct.TYPE_37__*, %struct.TYPE_37__** %231, align 8
  %233 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %232, i32 0, i32 0
  %234 = load i32, i32* %233, align 4
  %235 = call i32 (%struct.lpfc_hba*, i32, i32, i8*, ...) @lpfc_printf_log(%struct.lpfc_hba* %221, i32 %222, i32 %223, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.6, i64 0, i64 0), i32 %224, i32 %234)
  br label %236

236:                                              ; preds = %220
  %237 = load i32, i32* %7, align 4
  %238 = add nsw i32 %237, 1
  store i32 %238, i32* %7, align 4
  br label %169

239:                                              ; preds = %169
  %240 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %241 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %240, i32 0, i32 2
  %242 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %241, i32 0, i32 5
  %243 = load %struct.TYPE_33__**, %struct.TYPE_33__*** %242, align 8
  %244 = icmp ne %struct.TYPE_33__** %243, null
  br i1 %244, label %252, label %245

245:                                              ; preds = %239
  %246 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %247 = load i32, i32* @KERN_ERR, align 4
  %248 = load i32, i32* @LOG_INIT, align 4
  %249 = call i32 (%struct.lpfc_hba*, i32, i32, i8*, ...) @lpfc_printf_log(%struct.lpfc_hba* %246, i32 %247, i32 %248, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.7, i64 0, i64 0))
  %250 = load i32, i32* @ENOMEM, align 4
  %251 = sub nsw i32 0, %250
  store i32 %251, i32* %6, align 4
  br label %858

252:                                              ; preds = %239
  store i32 0, i32* %8, align 4
  br label %253

253:                                              ; preds = %351, %252
  %254 = load i32, i32* %8, align 4
  %255 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %256 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %255, i32 0, i32 0
  %257 = load i32, i32* %256, align 8
  %258 = icmp slt i32 %254, %257
  br i1 %258, label %259, label %354

259:                                              ; preds = %253
  %260 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %261 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %260, i32 0, i32 2
  %262 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %261, i32 0, i32 5
  %263 = load %struct.TYPE_33__**, %struct.TYPE_33__*** %262, align 8
  %264 = load i32, i32* %8, align 4
  %265 = sext i32 %264 to i64
  %266 = getelementptr inbounds %struct.TYPE_33__*, %struct.TYPE_33__** %263, i64 %265
  %267 = load %struct.TYPE_33__*, %struct.TYPE_33__** %266, align 8
  %268 = icmp ne %struct.TYPE_33__* %267, null
  br i1 %268, label %277, label %269

269:                                              ; preds = %259
  %270 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %271 = load i32, i32* @KERN_ERR, align 4
  %272 = load i32, i32* @LOG_INIT, align 4
  %273 = load i32, i32* %8, align 4
  %274 = call i32 (%struct.lpfc_hba*, i32, i32, i8*, ...) @lpfc_printf_log(%struct.lpfc_hba* %270, i32 %271, i32 %272, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.8, i64 0, i64 0), i32 %273)
  %275 = load i32, i32* @ENOMEM, align 4
  %276 = sub nsw i32 0, %275
  store i32 %276, i32* %6, align 4
  br label %837

277:                                              ; preds = %259
  %278 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %279 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %280 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %279, i32 0, i32 2
  %281 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %280, i32 0, i32 5
  %282 = load %struct.TYPE_33__**, %struct.TYPE_33__*** %281, align 8
  %283 = load i32, i32* %8, align 4
  %284 = sext i32 %283 to i64
  %285 = getelementptr inbounds %struct.TYPE_33__*, %struct.TYPE_33__** %282, i64 %284
  %286 = load %struct.TYPE_33__*, %struct.TYPE_33__** %285, align 8
  %287 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %288 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %287, i32 0, i32 2
  %289 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %288, i32 0, i32 4
  %290 = load %struct.TYPE_37__**, %struct.TYPE_37__*** %289, align 8
  %291 = load i32, i32* %8, align 4
  %292 = sext i32 %291 to i64
  %293 = getelementptr inbounds %struct.TYPE_37__*, %struct.TYPE_37__** %290, i64 %292
  %294 = load %struct.TYPE_37__*, %struct.TYPE_37__** %293, align 8
  %295 = load i32, i32* @LPFC_WCQ, align 4
  %296 = load i32, i32* @LPFC_FCP, align 4
  %297 = call i32 @lpfc_cq_create(%struct.lpfc_hba* %278, %struct.TYPE_33__* %286, %struct.TYPE_37__* %294, i32 %295, i32 %296)
  store i32 %297, i32* %6, align 4
  %298 = load i32, i32* %6, align 4
  %299 = icmp ne i32 %298, 0
  br i1 %299, label %300, label %307

300:                                              ; preds = %277
  %301 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %302 = load i32, i32* @KERN_ERR, align 4
  %303 = load i32, i32* @LOG_INIT, align 4
  %304 = load i32, i32* %8, align 4
  %305 = load i32, i32* %6, align 4
  %306 = call i32 (%struct.lpfc_hba*, i32, i32, i8*, ...) @lpfc_printf_log(%struct.lpfc_hba* %301, i32 %302, i32 %303, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.9, i64 0, i64 0), i32 %304, i32 %305)
  br label %837

307:                                              ; preds = %277
  %308 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %309 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %308, i32 0, i32 2
  %310 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %309, i32 0, i32 5
  %311 = load %struct.TYPE_33__**, %struct.TYPE_33__*** %310, align 8
  %312 = load i32, i32* %8, align 4
  %313 = sext i32 %312 to i64
  %314 = getelementptr inbounds %struct.TYPE_33__*, %struct.TYPE_33__** %311, i64 %313
  %315 = load %struct.TYPE_33__*, %struct.TYPE_33__** %314, align 8
  %316 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %315, i32 0, i32 0
  %317 = load i32, i32* %316, align 8
  %318 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %319 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %318, i32 0, i32 2
  %320 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %319, i32 0, i32 3
  %321 = load i32*, i32** %320, align 8
  %322 = load i32, i32* %8, align 4
  %323 = sext i32 %322 to i64
  %324 = getelementptr inbounds i32, i32* %321, i64 %323
  store i32 %317, i32* %324, align 4
  %325 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %326 = load i32, i32* @KERN_INFO, align 4
  %327 = load i32, i32* @LOG_INIT, align 4
  %328 = load i32, i32* %8, align 4
  %329 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %330 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %329, i32 0, i32 2
  %331 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %330, i32 0, i32 5
  %332 = load %struct.TYPE_33__**, %struct.TYPE_33__*** %331, align 8
  %333 = load i32, i32* %8, align 4
  %334 = sext i32 %333 to i64
  %335 = getelementptr inbounds %struct.TYPE_33__*, %struct.TYPE_33__** %332, i64 %334
  %336 = load %struct.TYPE_33__*, %struct.TYPE_33__** %335, align 8
  %337 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %336, i32 0, i32 0
  %338 = load i32, i32* %337, align 8
  %339 = load i32, i32* %8, align 4
  %340 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %341 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %340, i32 0, i32 2
  %342 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %341, i32 0, i32 4
  %343 = load %struct.TYPE_37__**, %struct.TYPE_37__*** %342, align 8
  %344 = load i32, i32* %8, align 4
  %345 = sext i32 %344 to i64
  %346 = getelementptr inbounds %struct.TYPE_37__*, %struct.TYPE_37__** %343, i64 %345
  %347 = load %struct.TYPE_37__*, %struct.TYPE_37__** %346, align 8
  %348 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %347, i32 0, i32 0
  %349 = load i32, i32* %348, align 4
  %350 = call i32 (%struct.lpfc_hba*, i32, i32, i8*, ...) @lpfc_printf_log(%struct.lpfc_hba* %325, i32 %326, i32 %327, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.10, i64 0, i64 0), i32 %328, i32 %338, i32 %339, i32 %349)
  br label %351

351:                                              ; preds = %307
  %352 = load i32, i32* %8, align 4
  %353 = add nsw i32 %352, 1
  store i32 %353, i32* %8, align 4
  br label %253

354:                                              ; preds = %253
  %355 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %356 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %355, i32 0, i32 2
  %357 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %356, i32 0, i32 6
  %358 = load %struct.TYPE_32__**, %struct.TYPE_32__*** %357, align 8
  %359 = icmp ne %struct.TYPE_32__** %358, null
  br i1 %359, label %367, label %360

360:                                              ; preds = %354
  %361 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %362 = load i32, i32* @KERN_ERR, align 4
  %363 = load i32, i32* @LOG_INIT, align 4
  %364 = call i32 (%struct.lpfc_hba*, i32, i32, i8*, ...) @lpfc_printf_log(%struct.lpfc_hba* %361, i32 %362, i32 %363, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.11, i64 0, i64 0))
  %365 = load i32, i32* @ENOMEM, align 4
  %366 = sub nsw i32 0, %365
  store i32 %366, i32* %6, align 4
  br label %837

367:                                              ; preds = %354
  store i32 0, i32* %9, align 4
  br label %368

368:                                              ; preds = %479, %367
  %369 = load i32, i32* %9, align 4
  %370 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %371 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %370, i32 0, i32 0
  %372 = load i32, i32* %371, align 8
  %373 = icmp slt i32 %369, %372
  br i1 %373, label %374, label %482

374:                                              ; preds = %368
  %375 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %376 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %375, i32 0, i32 2
  %377 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %376, i32 0, i32 6
  %378 = load %struct.TYPE_32__**, %struct.TYPE_32__*** %377, align 8
  %379 = load i32, i32* %9, align 4
  %380 = sext i32 %379 to i64
  %381 = getelementptr inbounds %struct.TYPE_32__*, %struct.TYPE_32__** %378, i64 %380
  %382 = load %struct.TYPE_32__*, %struct.TYPE_32__** %381, align 8
  %383 = icmp ne %struct.TYPE_32__* %382, null
  br i1 %383, label %392, label %384

384:                                              ; preds = %374
  %385 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %386 = load i32, i32* @KERN_ERR, align 4
  %387 = load i32, i32* @LOG_INIT, align 4
  %388 = load i32, i32* %9, align 4
  %389 = call i32 (%struct.lpfc_hba*, i32, i32, i8*, ...) @lpfc_printf_log(%struct.lpfc_hba* %385, i32 %386, i32 %387, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.12, i64 0, i64 0), i32 %388)
  %390 = load i32, i32* @ENOMEM, align 4
  %391 = sub nsw i32 0, %390
  store i32 %391, i32* %6, align 4
  br label %816

392:                                              ; preds = %374
  %393 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %394 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %395 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %394, i32 0, i32 2
  %396 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %395, i32 0, i32 6
  %397 = load %struct.TYPE_32__**, %struct.TYPE_32__*** %396, align 8
  %398 = load i32, i32* %9, align 4
  %399 = sext i32 %398 to i64
  %400 = getelementptr inbounds %struct.TYPE_32__*, %struct.TYPE_32__** %397, i64 %399
  %401 = load %struct.TYPE_32__*, %struct.TYPE_32__** %400, align 8
  %402 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %403 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %402, i32 0, i32 2
  %404 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %403, i32 0, i32 5
  %405 = load %struct.TYPE_33__**, %struct.TYPE_33__*** %404, align 8
  %406 = load i32, i32* %9, align 4
  %407 = sext i32 %406 to i64
  %408 = getelementptr inbounds %struct.TYPE_33__*, %struct.TYPE_33__** %405, i64 %407
  %409 = load %struct.TYPE_33__*, %struct.TYPE_33__** %408, align 8
  %410 = load i32, i32* @LPFC_FCP, align 4
  %411 = call i32 @lpfc_wq_create(%struct.lpfc_hba* %393, %struct.TYPE_32__* %401, %struct.TYPE_33__* %409, i32 %410)
  store i32 %411, i32* %6, align 4
  %412 = load i32, i32* %6, align 4
  %413 = icmp ne i32 %412, 0
  br i1 %413, label %414, label %421

414:                                              ; preds = %392
  %415 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %416 = load i32, i32* @KERN_ERR, align 4
  %417 = load i32, i32* @LOG_INIT, align 4
  %418 = load i32, i32* %9, align 4
  %419 = load i32, i32* %6, align 4
  %420 = call i32 (%struct.lpfc_hba*, i32, i32, i8*, ...) @lpfc_printf_log(%struct.lpfc_hba* %415, i32 %416, i32 %417, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.13, i64 0, i64 0), i32 %418, i32 %419)
  br label %816

421:                                              ; preds = %392
  %422 = load %struct.lpfc_sli*, %struct.lpfc_sli** %4, align 8
  %423 = getelementptr inbounds %struct.lpfc_sli, %struct.lpfc_sli* %422, i32 0, i32 0
  %424 = load %struct.lpfc_sli_ring*, %struct.lpfc_sli_ring** %423, align 8
  %425 = load i32, i32* @MAX_SLI3_CONFIGURED_RINGS, align 4
  %426 = load i32, i32* %9, align 4
  %427 = add nsw i32 %425, %426
  %428 = sext i32 %427 to i64
  %429 = getelementptr inbounds %struct.lpfc_sli_ring, %struct.lpfc_sli_ring* %424, i64 %428
  store %struct.lpfc_sli_ring* %429, %struct.lpfc_sli_ring** %5, align 8
  %430 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %431 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %430, i32 0, i32 2
  %432 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %431, i32 0, i32 6
  %433 = load %struct.TYPE_32__**, %struct.TYPE_32__*** %432, align 8
  %434 = load i32, i32* %9, align 4
  %435 = sext i32 %434 to i64
  %436 = getelementptr inbounds %struct.TYPE_32__*, %struct.TYPE_32__** %433, i64 %435
  %437 = load %struct.TYPE_32__*, %struct.TYPE_32__** %436, align 8
  %438 = bitcast %struct.TYPE_32__* %437 to i8*
  %439 = load %struct.lpfc_sli_ring*, %struct.lpfc_sli_ring** %5, align 8
  %440 = getelementptr inbounds %struct.lpfc_sli_ring, %struct.lpfc_sli_ring* %439, i32 0, i32 0
  %441 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %440, i32 0, i32 0
  %442 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %441, i32 0, i32 0
  store i8* %438, i8** %442, align 8
  %443 = load %struct.lpfc_sli_ring*, %struct.lpfc_sli_ring** %5, align 8
  %444 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %445 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %444, i32 0, i32 2
  %446 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %445, i32 0, i32 5
  %447 = load %struct.TYPE_33__**, %struct.TYPE_33__*** %446, align 8
  %448 = load i32, i32* %9, align 4
  %449 = sext i32 %448 to i64
  %450 = getelementptr inbounds %struct.TYPE_33__*, %struct.TYPE_33__** %447, i64 %449
  %451 = load %struct.TYPE_33__*, %struct.TYPE_33__** %450, align 8
  %452 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %451, i32 0, i32 1
  store %struct.lpfc_sli_ring* %443, %struct.lpfc_sli_ring** %452, align 8
  %453 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %454 = load i32, i32* @KERN_INFO, align 4
  %455 = load i32, i32* @LOG_INIT, align 4
  %456 = load i32, i32* %9, align 4
  %457 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %458 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %457, i32 0, i32 2
  %459 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %458, i32 0, i32 6
  %460 = load %struct.TYPE_32__**, %struct.TYPE_32__*** %459, align 8
  %461 = load i32, i32* %9, align 4
  %462 = sext i32 %461 to i64
  %463 = getelementptr inbounds %struct.TYPE_32__*, %struct.TYPE_32__** %460, i64 %462
  %464 = load %struct.TYPE_32__*, %struct.TYPE_32__** %463, align 8
  %465 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %464, i32 0, i32 0
  %466 = load i32, i32* %465, align 4
  %467 = load i32, i32* %10, align 4
  %468 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %469 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %468, i32 0, i32 2
  %470 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %469, i32 0, i32 5
  %471 = load %struct.TYPE_33__**, %struct.TYPE_33__*** %470, align 8
  %472 = load i32, i32* %9, align 4
  %473 = sext i32 %472 to i64
  %474 = getelementptr inbounds %struct.TYPE_33__*, %struct.TYPE_33__** %471, i64 %473
  %475 = load %struct.TYPE_33__*, %struct.TYPE_33__** %474, align 8
  %476 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %475, i32 0, i32 0
  %477 = load i32, i32* %476, align 8
  %478 = call i32 (%struct.lpfc_hba*, i32, i32, i8*, ...) @lpfc_printf_log(%struct.lpfc_hba* %453, i32 %454, i32 %455, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.14, i64 0, i64 0), i32 %456, i32 %466, i32 %467, i32 %477)
  br label %479

479:                                              ; preds = %421
  %480 = load i32, i32* %9, align 4
  %481 = add nsw i32 %480, 1
  store i32 %481, i32* %9, align 4
  br label %368

482:                                              ; preds = %368
  %483 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %484 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %483, i32 0, i32 2
  %485 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %484, i32 0, i32 7
  %486 = load %struct.TYPE_33__*, %struct.TYPE_33__** %485, align 8
  %487 = icmp ne %struct.TYPE_33__* %486, null
  br i1 %487, label %495, label %488

488:                                              ; preds = %482
  %489 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %490 = load i32, i32* @KERN_ERR, align 4
  %491 = load i32, i32* @LOG_INIT, align 4
  %492 = call i32 (%struct.lpfc_hba*, i32, i32, i8*, ...) @lpfc_printf_log(%struct.lpfc_hba* %489, i32 %490, i32 %491, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.15, i64 0, i64 0))
  %493 = load i32, i32* @ENOMEM, align 4
  %494 = sub nsw i32 0, %493
  store i32 %494, i32* %6, align 4
  br label %816

495:                                              ; preds = %482
  %496 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %497 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %498 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %497, i32 0, i32 2
  %499 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %498, i32 0, i32 7
  %500 = load %struct.TYPE_33__*, %struct.TYPE_33__** %499, align 8
  %501 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %502 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %501, i32 0, i32 2
  %503 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %502, i32 0, i32 4
  %504 = load %struct.TYPE_37__**, %struct.TYPE_37__*** %503, align 8
  %505 = getelementptr inbounds %struct.TYPE_37__*, %struct.TYPE_37__** %504, i64 0
  %506 = load %struct.TYPE_37__*, %struct.TYPE_37__** %505, align 8
  %507 = load i32, i32* @LPFC_MCQ, align 4
  %508 = load i32, i32* @LPFC_MBOX, align 4
  %509 = call i32 @lpfc_cq_create(%struct.lpfc_hba* %496, %struct.TYPE_33__* %500, %struct.TYPE_37__* %506, i32 %507, i32 %508)
  store i32 %509, i32* %6, align 4
  %510 = load i32, i32* %6, align 4
  %511 = icmp ne i32 %510, 0
  br i1 %511, label %512, label %518

512:                                              ; preds = %495
  %513 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %514 = load i32, i32* @KERN_ERR, align 4
  %515 = load i32, i32* @LOG_INIT, align 4
  %516 = load i32, i32* %6, align 4
  %517 = call i32 (%struct.lpfc_hba*, i32, i32, i8*, ...) @lpfc_printf_log(%struct.lpfc_hba* %513, i32 %514, i32 %515, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.16, i64 0, i64 0), i32 %516)
  br label %816

518:                                              ; preds = %495
  %519 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %520 = load i32, i32* @KERN_INFO, align 4
  %521 = load i32, i32* @LOG_INIT, align 4
  %522 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %523 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %522, i32 0, i32 2
  %524 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %523, i32 0, i32 7
  %525 = load %struct.TYPE_33__*, %struct.TYPE_33__** %524, align 8
  %526 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %525, i32 0, i32 0
  %527 = load i32, i32* %526, align 8
  %528 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %529 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %528, i32 0, i32 2
  %530 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %529, i32 0, i32 4
  %531 = load %struct.TYPE_37__**, %struct.TYPE_37__*** %530, align 8
  %532 = getelementptr inbounds %struct.TYPE_37__*, %struct.TYPE_37__** %531, i64 0
  %533 = load %struct.TYPE_37__*, %struct.TYPE_37__** %532, align 8
  %534 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %533, i32 0, i32 0
  %535 = load i32, i32* %534, align 4
  %536 = call i32 (%struct.lpfc_hba*, i32, i32, i8*, ...) @lpfc_printf_log(%struct.lpfc_hba* %519, i32 %520, i32 %521, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.17, i64 0, i64 0), i32 %527, i32 %535)
  %537 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %538 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %537, i32 0, i32 2
  %539 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %538, i32 0, i32 8
  %540 = load %struct.TYPE_33__*, %struct.TYPE_33__** %539, align 8
  %541 = icmp ne %struct.TYPE_33__* %540, null
  br i1 %541, label %549, label %542

542:                                              ; preds = %518
  %543 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %544 = load i32, i32* @KERN_ERR, align 4
  %545 = load i32, i32* @LOG_INIT, align 4
  %546 = call i32 (%struct.lpfc_hba*, i32, i32, i8*, ...) @lpfc_printf_log(%struct.lpfc_hba* %543, i32 %544, i32 %545, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.18, i64 0, i64 0))
  %547 = load i32, i32* @ENOMEM, align 4
  %548 = sub nsw i32 0, %547
  store i32 %548, i32* %6, align 4
  br label %809

549:                                              ; preds = %518
  %550 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %551 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %552 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %551, i32 0, i32 2
  %553 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %552, i32 0, i32 8
  %554 = load %struct.TYPE_33__*, %struct.TYPE_33__** %553, align 8
  %555 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %556 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %555, i32 0, i32 2
  %557 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %556, i32 0, i32 4
  %558 = load %struct.TYPE_37__**, %struct.TYPE_37__*** %557, align 8
  %559 = getelementptr inbounds %struct.TYPE_37__*, %struct.TYPE_37__** %558, i64 0
  %560 = load %struct.TYPE_37__*, %struct.TYPE_37__** %559, align 8
  %561 = load i32, i32* @LPFC_WCQ, align 4
  %562 = load i32, i32* @LPFC_ELS, align 4
  %563 = call i32 @lpfc_cq_create(%struct.lpfc_hba* %550, %struct.TYPE_33__* %554, %struct.TYPE_37__* %560, i32 %561, i32 %562)
  store i32 %563, i32* %6, align 4
  %564 = load i32, i32* %6, align 4
  %565 = icmp ne i32 %564, 0
  br i1 %565, label %566, label %572

566:                                              ; preds = %549
  %567 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %568 = load i32, i32* @KERN_ERR, align 4
  %569 = load i32, i32* @LOG_INIT, align 4
  %570 = load i32, i32* %6, align 4
  %571 = call i32 (%struct.lpfc_hba*, i32, i32, i8*, ...) @lpfc_printf_log(%struct.lpfc_hba* %567, i32 %568, i32 %569, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.19, i64 0, i64 0), i32 %570)
  br label %809

572:                                              ; preds = %549
  %573 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %574 = load i32, i32* @KERN_INFO, align 4
  %575 = load i32, i32* @LOG_INIT, align 4
  %576 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %577 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %576, i32 0, i32 2
  %578 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %577, i32 0, i32 8
  %579 = load %struct.TYPE_33__*, %struct.TYPE_33__** %578, align 8
  %580 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %579, i32 0, i32 0
  %581 = load i32, i32* %580, align 8
  %582 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %583 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %582, i32 0, i32 2
  %584 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %583, i32 0, i32 4
  %585 = load %struct.TYPE_37__**, %struct.TYPE_37__*** %584, align 8
  %586 = getelementptr inbounds %struct.TYPE_37__*, %struct.TYPE_37__** %585, i64 0
  %587 = load %struct.TYPE_37__*, %struct.TYPE_37__** %586, align 8
  %588 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %587, i32 0, i32 0
  %589 = load i32, i32* %588, align 4
  %590 = call i32 (%struct.lpfc_hba*, i32, i32, i8*, ...) @lpfc_printf_log(%struct.lpfc_hba* %573, i32 %574, i32 %575, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.20, i64 0, i64 0), i32 %581, i32 %589)
  %591 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %592 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %591, i32 0, i32 2
  %593 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %592, i32 0, i32 9
  %594 = load %struct.TYPE_36__*, %struct.TYPE_36__** %593, align 8
  %595 = icmp ne %struct.TYPE_36__* %594, null
  br i1 %595, label %603, label %596

596:                                              ; preds = %572
  %597 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %598 = load i32, i32* @KERN_ERR, align 4
  %599 = load i32, i32* @LOG_INIT, align 4
  %600 = call i32 (%struct.lpfc_hba*, i32, i32, i8*, ...) @lpfc_printf_log(%struct.lpfc_hba* %597, i32 %598, i32 %599, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.21, i64 0, i64 0))
  %601 = load i32, i32* @ENOMEM, align 4
  %602 = sub nsw i32 0, %601
  store i32 %602, i32* %6, align 4
  br label %802

603:                                              ; preds = %572
  %604 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %605 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %606 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %605, i32 0, i32 2
  %607 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %606, i32 0, i32 9
  %608 = load %struct.TYPE_36__*, %struct.TYPE_36__** %607, align 8
  %609 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %610 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %609, i32 0, i32 2
  %611 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %610, i32 0, i32 7
  %612 = load %struct.TYPE_33__*, %struct.TYPE_33__** %611, align 8
  %613 = load i32, i32* @LPFC_MBOX, align 4
  %614 = call i32 @lpfc_mq_create(%struct.lpfc_hba* %604, %struct.TYPE_36__* %608, %struct.TYPE_33__* %612, i32 %613)
  store i32 %614, i32* %6, align 4
  %615 = load i32, i32* %6, align 4
  %616 = icmp ne i32 %615, 0
  br i1 %616, label %617, label %623

617:                                              ; preds = %603
  %618 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %619 = load i32, i32* @KERN_ERR, align 4
  %620 = load i32, i32* @LOG_INIT, align 4
  %621 = load i32, i32* %6, align 4
  %622 = call i32 (%struct.lpfc_hba*, i32, i32, i8*, ...) @lpfc_printf_log(%struct.lpfc_hba* %618, i32 %619, i32 %620, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.22, i64 0, i64 0), i32 %621)
  br label %802

623:                                              ; preds = %603
  %624 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %625 = load i32, i32* @KERN_INFO, align 4
  %626 = load i32, i32* @LOG_INIT, align 4
  %627 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %628 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %627, i32 0, i32 2
  %629 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %628, i32 0, i32 9
  %630 = load %struct.TYPE_36__*, %struct.TYPE_36__** %629, align 8
  %631 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %630, i32 0, i32 0
  %632 = load i32, i32* %631, align 4
  %633 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %634 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %633, i32 0, i32 2
  %635 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %634, i32 0, i32 7
  %636 = load %struct.TYPE_33__*, %struct.TYPE_33__** %635, align 8
  %637 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %636, i32 0, i32 0
  %638 = load i32, i32* %637, align 8
  %639 = call i32 (%struct.lpfc_hba*, i32, i32, i8*, ...) @lpfc_printf_log(%struct.lpfc_hba* %624, i32 %625, i32 %626, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.23, i64 0, i64 0), i32 %632, i32 %638)
  %640 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %641 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %640, i32 0, i32 2
  %642 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %641, i32 0, i32 10
  %643 = load %struct.TYPE_32__*, %struct.TYPE_32__** %642, align 8
  %644 = icmp ne %struct.TYPE_32__* %643, null
  br i1 %644, label %652, label %645

645:                                              ; preds = %623
  %646 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %647 = load i32, i32* @KERN_ERR, align 4
  %648 = load i32, i32* @LOG_INIT, align 4
  %649 = call i32 (%struct.lpfc_hba*, i32, i32, i8*, ...) @lpfc_printf_log(%struct.lpfc_hba* %646, i32 %647, i32 %648, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.24, i64 0, i64 0))
  %650 = load i32, i32* @ENOMEM, align 4
  %651 = sub nsw i32 0, %650
  store i32 %651, i32* %6, align 4
  br label %795

652:                                              ; preds = %623
  %653 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %654 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %655 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %654, i32 0, i32 2
  %656 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %655, i32 0, i32 10
  %657 = load %struct.TYPE_32__*, %struct.TYPE_32__** %656, align 8
  %658 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %659 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %658, i32 0, i32 2
  %660 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %659, i32 0, i32 8
  %661 = load %struct.TYPE_33__*, %struct.TYPE_33__** %660, align 8
  %662 = load i32, i32* @LPFC_ELS, align 4
  %663 = call i32 @lpfc_wq_create(%struct.lpfc_hba* %653, %struct.TYPE_32__* %657, %struct.TYPE_33__* %661, i32 %662)
  store i32 %663, i32* %6, align 4
  %664 = load i32, i32* %6, align 4
  %665 = icmp ne i32 %664, 0
  br i1 %665, label %666, label %672

666:                                              ; preds = %652
  %667 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %668 = load i32, i32* @KERN_ERR, align 4
  %669 = load i32, i32* @LOG_INIT, align 4
  %670 = load i32, i32* %6, align 4
  %671 = call i32 (%struct.lpfc_hba*, i32, i32, i8*, ...) @lpfc_printf_log(%struct.lpfc_hba* %667, i32 %668, i32 %669, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.25, i64 0, i64 0), i32 %670)
  br label %795

672:                                              ; preds = %652
  %673 = load %struct.lpfc_sli*, %struct.lpfc_sli** %4, align 8
  %674 = getelementptr inbounds %struct.lpfc_sli, %struct.lpfc_sli* %673, i32 0, i32 0
  %675 = load %struct.lpfc_sli_ring*, %struct.lpfc_sli_ring** %674, align 8
  %676 = load i64, i64* @LPFC_ELS_RING, align 8
  %677 = getelementptr inbounds %struct.lpfc_sli_ring, %struct.lpfc_sli_ring* %675, i64 %676
  store %struct.lpfc_sli_ring* %677, %struct.lpfc_sli_ring** %5, align 8
  %678 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %679 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %678, i32 0, i32 2
  %680 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %679, i32 0, i32 10
  %681 = load %struct.TYPE_32__*, %struct.TYPE_32__** %680, align 8
  %682 = bitcast %struct.TYPE_32__* %681 to i8*
  %683 = load %struct.lpfc_sli_ring*, %struct.lpfc_sli_ring** %5, align 8
  %684 = getelementptr inbounds %struct.lpfc_sli_ring, %struct.lpfc_sli_ring* %683, i32 0, i32 0
  %685 = getelementptr inbounds %struct.TYPE_45__, %struct.TYPE_45__* %684, i32 0, i32 0
  %686 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %685, i32 0, i32 0
  store i8* %682, i8** %686, align 8
  %687 = load %struct.lpfc_sli_ring*, %struct.lpfc_sli_ring** %5, align 8
  %688 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %689 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %688, i32 0, i32 2
  %690 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %689, i32 0, i32 8
  %691 = load %struct.TYPE_33__*, %struct.TYPE_33__** %690, align 8
  %692 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %691, i32 0, i32 1
  store %struct.lpfc_sli_ring* %687, %struct.lpfc_sli_ring** %692, align 8
  %693 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %694 = load i32, i32* @KERN_INFO, align 4
  %695 = load i32, i32* @LOG_INIT, align 4
  %696 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %697 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %696, i32 0, i32 2
  %698 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %697, i32 0, i32 10
  %699 = load %struct.TYPE_32__*, %struct.TYPE_32__** %698, align 8
  %700 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %699, i32 0, i32 0
  %701 = load i32, i32* %700, align 4
  %702 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %703 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %702, i32 0, i32 2
  %704 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %703, i32 0, i32 8
  %705 = load %struct.TYPE_33__*, %struct.TYPE_33__** %704, align 8
  %706 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %705, i32 0, i32 0
  %707 = load i32, i32* %706, align 8
  %708 = call i32 (%struct.lpfc_hba*, i32, i32, i8*, ...) @lpfc_printf_log(%struct.lpfc_hba* %693, i32 %694, i32 %695, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.26, i64 0, i64 0), i32 %701, i32 %707)
  %709 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %710 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %709, i32 0, i32 2
  %711 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %710, i32 0, i32 12
  %712 = load %struct.TYPE_34__*, %struct.TYPE_34__** %711, align 8
  %713 = icmp ne %struct.TYPE_34__* %712, null
  br i1 %713, label %714, label %720

714:                                              ; preds = %672
  %715 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %716 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %715, i32 0, i32 2
  %717 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %716, i32 0, i32 11
  %718 = load %struct.TYPE_34__*, %struct.TYPE_34__** %717, align 8
  %719 = icmp ne %struct.TYPE_34__* %718, null
  br i1 %719, label %727, label %720

720:                                              ; preds = %714, %672
  %721 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %722 = load i32, i32* @KERN_ERR, align 4
  %723 = load i32, i32* @LOG_INIT, align 4
  %724 = call i32 (%struct.lpfc_hba*, i32, i32, i8*, ...) @lpfc_printf_log(%struct.lpfc_hba* %721, i32 %722, i32 %723, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.27, i64 0, i64 0))
  %725 = load i32, i32* @ENOMEM, align 4
  %726 = sub nsw i32 0, %725
  store i32 %726, i32* %6, align 4
  br label %788

727:                                              ; preds = %714
  %728 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %729 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %730 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %729, i32 0, i32 2
  %731 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %730, i32 0, i32 12
  %732 = load %struct.TYPE_34__*, %struct.TYPE_34__** %731, align 8
  %733 = load i32, i32* @LPFC_ELS_HBQ, align 4
  %734 = call i32 @lpfc_rq_adjust_repost(%struct.lpfc_hba* %728, %struct.TYPE_34__* %732, i32 %733)
  %735 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %736 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %737 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %736, i32 0, i32 2
  %738 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %737, i32 0, i32 11
  %739 = load %struct.TYPE_34__*, %struct.TYPE_34__** %738, align 8
  %740 = load i32, i32* @LPFC_ELS_HBQ, align 4
  %741 = call i32 @lpfc_rq_adjust_repost(%struct.lpfc_hba* %735, %struct.TYPE_34__* %739, i32 %740)
  %742 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %743 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %744 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %743, i32 0, i32 2
  %745 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %744, i32 0, i32 12
  %746 = load %struct.TYPE_34__*, %struct.TYPE_34__** %745, align 8
  %747 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %748 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %747, i32 0, i32 2
  %749 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %748, i32 0, i32 11
  %750 = load %struct.TYPE_34__*, %struct.TYPE_34__** %749, align 8
  %751 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %752 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %751, i32 0, i32 2
  %753 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %752, i32 0, i32 8
  %754 = load %struct.TYPE_33__*, %struct.TYPE_33__** %753, align 8
  %755 = load i32, i32* @LPFC_USOL, align 4
  %756 = call i32 @lpfc_rq_create(%struct.lpfc_hba* %742, %struct.TYPE_34__* %746, %struct.TYPE_34__* %750, %struct.TYPE_33__* %754, i32 %755)
  store i32 %756, i32* %6, align 4
  %757 = load i32, i32* %6, align 4
  %758 = icmp ne i32 %757, 0
  br i1 %758, label %759, label %765

759:                                              ; preds = %727
  %760 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %761 = load i32, i32* @KERN_ERR, align 4
  %762 = load i32, i32* @LOG_INIT, align 4
  %763 = load i32, i32* %6, align 4
  %764 = call i32 (%struct.lpfc_hba*, i32, i32, i8*, ...) @lpfc_printf_log(%struct.lpfc_hba* %760, i32 %761, i32 %762, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.28, i64 0, i64 0), i32 %763)
  br label %816

765:                                              ; preds = %727
  %766 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %767 = load i32, i32* @KERN_INFO, align 4
  %768 = load i32, i32* @LOG_INIT, align 4
  %769 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %770 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %769, i32 0, i32 2
  %771 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %770, i32 0, i32 12
  %772 = load %struct.TYPE_34__*, %struct.TYPE_34__** %771, align 8
  %773 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %772, i32 0, i32 0
  %774 = load i32, i32* %773, align 4
  %775 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %776 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %775, i32 0, i32 2
  %777 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %776, i32 0, i32 11
  %778 = load %struct.TYPE_34__*, %struct.TYPE_34__** %777, align 8
  %779 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %778, i32 0, i32 0
  %780 = load i32, i32* %779, align 4
  %781 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %782 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %781, i32 0, i32 2
  %783 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %782, i32 0, i32 8
  %784 = load %struct.TYPE_33__*, %struct.TYPE_33__** %783, align 8
  %785 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %784, i32 0, i32 0
  %786 = load i32, i32* %785, align 8
  %787 = call i32 (%struct.lpfc_hba*, i32, i32, i8*, ...) @lpfc_printf_log(%struct.lpfc_hba* %766, i32 %767, i32 %768, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.29, i64 0, i64 0), i32 %774, i32 %780, i32 %786)
  store i32 0, i32* %2, align 4
  br label %881

788:                                              ; preds = %720
  %789 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %790 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %791 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %790, i32 0, i32 2
  %792 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %791, i32 0, i32 10
  %793 = load %struct.TYPE_32__*, %struct.TYPE_32__** %792, align 8
  %794 = call i32 @lpfc_wq_destroy(%struct.lpfc_hba* %789, %struct.TYPE_32__* %793)
  br label %795

795:                                              ; preds = %788, %666, %645
  %796 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %797 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %798 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %797, i32 0, i32 2
  %799 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %798, i32 0, i32 9
  %800 = load %struct.TYPE_36__*, %struct.TYPE_36__** %799, align 8
  %801 = call i32 @lpfc_mq_destroy(%struct.lpfc_hba* %796, %struct.TYPE_36__* %800)
  br label %802

802:                                              ; preds = %795, %617, %596
  %803 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %804 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %805 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %804, i32 0, i32 2
  %806 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %805, i32 0, i32 8
  %807 = load %struct.TYPE_33__*, %struct.TYPE_33__** %806, align 8
  %808 = call i32 @lpfc_cq_destroy(%struct.lpfc_hba* %803, %struct.TYPE_33__* %807)
  br label %809

809:                                              ; preds = %802, %566, %542
  %810 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %811 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %812 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %811, i32 0, i32 2
  %813 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %812, i32 0, i32 7
  %814 = load %struct.TYPE_33__*, %struct.TYPE_33__** %813, align 8
  %815 = call i32 @lpfc_cq_destroy(%struct.lpfc_hba* %810, %struct.TYPE_33__* %814)
  br label %816

816:                                              ; preds = %809, %759, %512, %488, %414, %384
  %817 = load i32, i32* %9, align 4
  %818 = add nsw i32 %817, -1
  store i32 %818, i32* %9, align 4
  br label %819

819:                                              ; preds = %833, %816
  %820 = load i32, i32* %9, align 4
  %821 = icmp sge i32 %820, 0
  br i1 %821, label %822, label %836

822:                                              ; preds = %819
  %823 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %824 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %825 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %824, i32 0, i32 2
  %826 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %825, i32 0, i32 6
  %827 = load %struct.TYPE_32__**, %struct.TYPE_32__*** %826, align 8
  %828 = load i32, i32* %9, align 4
  %829 = sext i32 %828 to i64
  %830 = getelementptr inbounds %struct.TYPE_32__*, %struct.TYPE_32__** %827, i64 %829
  %831 = load %struct.TYPE_32__*, %struct.TYPE_32__** %830, align 8
  %832 = call i32 @lpfc_wq_destroy(%struct.lpfc_hba* %823, %struct.TYPE_32__* %831)
  br label %833

833:                                              ; preds = %822
  %834 = load i32, i32* %9, align 4
  %835 = add nsw i32 %834, -1
  store i32 %835, i32* %9, align 4
  br label %819

836:                                              ; preds = %819
  br label %837

837:                                              ; preds = %836, %360, %300, %269
  %838 = load i32, i32* %8, align 4
  %839 = add nsw i32 %838, -1
  store i32 %839, i32* %8, align 4
  br label %840

840:                                              ; preds = %854, %837
  %841 = load i32, i32* %8, align 4
  %842 = icmp sge i32 %841, 0
  br i1 %842, label %843, label %857

843:                                              ; preds = %840
  %844 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %845 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %846 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %845, i32 0, i32 2
  %847 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %846, i32 0, i32 5
  %848 = load %struct.TYPE_33__**, %struct.TYPE_33__*** %847, align 8
  %849 = load i32, i32* %8, align 4
  %850 = sext i32 %849 to i64
  %851 = getelementptr inbounds %struct.TYPE_33__*, %struct.TYPE_33__** %848, i64 %850
  %852 = load %struct.TYPE_33__*, %struct.TYPE_33__** %851, align 8
  %853 = call i32 @lpfc_cq_destroy(%struct.lpfc_hba* %844, %struct.TYPE_33__* %852)
  br label %854

854:                                              ; preds = %843
  %855 = load i32, i32* %8, align 4
  %856 = add nsw i32 %855, -1
  store i32 %856, i32* %8, align 4
  br label %840

857:                                              ; preds = %840
  br label %858

858:                                              ; preds = %857, %245, %213, %185
  %859 = load i32, i32* %7, align 4
  %860 = add nsw i32 %859, -1
  store i32 %860, i32* %7, align 4
  br label %861

861:                                              ; preds = %875, %858
  %862 = load i32, i32* %7, align 4
  %863 = icmp sge i32 %862, 0
  br i1 %863, label %864, label %878

864:                                              ; preds = %861
  %865 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %866 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %867 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %866, i32 0, i32 2
  %868 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %867, i32 0, i32 4
  %869 = load %struct.TYPE_37__**, %struct.TYPE_37__*** %868, align 8
  %870 = load i32, i32* %7, align 4
  %871 = sext i32 %870 to i64
  %872 = getelementptr inbounds %struct.TYPE_37__*, %struct.TYPE_37__** %869, i64 %871
  %873 = load %struct.TYPE_37__*, %struct.TYPE_37__** %872, align 8
  %874 = call i32 @lpfc_eq_destroy(%struct.lpfc_hba* %865, %struct.TYPE_37__* %873)
  br label %875

875:                                              ; preds = %864
  %876 = load i32, i32* %7, align 4
  %877 = add nsw i32 %876, -1
  store i32 %877, i32* %7, align 4
  br label %861

878:                                              ; preds = %861
  br label %879

879:                                              ; preds = %878, %161, %88
  %880 = load i32, i32* %6, align 4
  store i32 %880, i32* %2, align 4
  br label %881

881:                                              ; preds = %879, %765, %28
  %882 = load i32, i32* %2, align 4
  ret i32 %882
}

declare dso_local i64 @mempool_alloc(i32, i32) #1

declare dso_local i32 @lpfc_printf_log(%struct.lpfc_hba*, i32, i32, i8*, ...) #1

declare dso_local i32 @lpfc_sli4_config(%struct.lpfc_hba*, %struct.TYPE_31__*, i32, i32, i32, i32) #1

declare dso_local i32 @lpfc_sli_issue_mbox(%struct.lpfc_hba*, %struct.TYPE_31__*, i32) #1

declare dso_local i32 @bf_get(i32, i32*) #1

declare dso_local i32 @mempool_free(%struct.TYPE_31__*, i32) #1

declare dso_local i32 @lpfc_eq_create(%struct.lpfc_hba*, %struct.TYPE_37__*, i32) #1

declare dso_local i32 @lpfc_cq_create(%struct.lpfc_hba*, %struct.TYPE_33__*, %struct.TYPE_37__*, i32, i32) #1

declare dso_local i32 @lpfc_wq_create(%struct.lpfc_hba*, %struct.TYPE_32__*, %struct.TYPE_33__*, i32) #1

declare dso_local i32 @lpfc_mq_create(%struct.lpfc_hba*, %struct.TYPE_36__*, %struct.TYPE_33__*, i32) #1

declare dso_local i32 @lpfc_rq_adjust_repost(%struct.lpfc_hba*, %struct.TYPE_34__*, i32) #1

declare dso_local i32 @lpfc_rq_create(%struct.lpfc_hba*, %struct.TYPE_34__*, %struct.TYPE_34__*, %struct.TYPE_33__*, i32) #1

declare dso_local i32 @lpfc_wq_destroy(%struct.lpfc_hba*, %struct.TYPE_32__*) #1

declare dso_local i32 @lpfc_mq_destroy(%struct.lpfc_hba*, %struct.TYPE_36__*) #1

declare dso_local i32 @lpfc_cq_destroy(%struct.lpfc_hba*, %struct.TYPE_33__*) #1

declare dso_local i32 @lpfc_eq_destroy(%struct.lpfc_hba*, %struct.TYPE_37__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
