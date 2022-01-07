; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/lpfc/extr_lpfc_vport.c_lpfc_vport_create.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/lpfc/extr_lpfc_vport.c_lpfc_vport_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fc_vport = type { i64, i32, i32, i32, %struct.Scsi_Host* }
%struct.Scsi_Host = type { i64 }
%struct.lpfc_nodelist = type { i64 }
%struct.lpfc_vport = type { i32, i32, i64, %struct.fc_vport*, %struct.TYPE_10__, %struct.TYPE_9__, %struct.TYPE_7__, %struct.lpfc_hba* }
%struct.TYPE_10__ = type { i32, i32 }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.lpfc_hba = type { i32, i64, i64, i32, i32, i32, i32 }

@VPORT_ERROR = common dso_local global i32 0, align 4
@KERN_ERR = common dso_local global i32 0, align 4
@LOG_VPORT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [59 x i8] c"1808 Create VPORT failed: NPIV is not enabled: SLImode:%d\0A\00", align 1
@VPORT_INVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [52 x i8] c"1809 Create VPORT failed: Max VPORTs (%d) exceeded\0A\00", align 1
@VPORT_NORESOURCES = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [54 x i8] c"1810 Create VPORT failed: Cannot get instance number\0A\00", align 1
@.str.3 = private unnamed_addr constant [35 x i8] c"1811 Create VPORT failed: vpi x%x\0A\00", align 1
@EINTR = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [32 x i8] c"1831 Create VPORT Interrupted.\0A\00", align 1
@.str.5 = private unnamed_addr constant [45 x i8] c"1813 Create VPORT failed. Cannot get sparam\0A\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"WWNN\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"WWPN\00", align 1
@.str.8 = private unnamed_addr constant [46 x i8] c"1821 Create VPORT failed. Invalid WWN format\0A\00", align 1
@.str.9 = private unnamed_addr constant [48 x i8] c"1823 Create VPORT failed. Duplicate WWN on HBA\0A\00", align 1
@LPFC_SLI_REV4 = common dso_local global i32 0, align 4
@FC_VFI_REGISTERED = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [45 x i8] c"1838 Failed to INIT_VPI on vpi %d status %d\0A\00", align 1
@FC_VPORT_NEEDS_INIT_VPI = common dso_local global i32 0, align 4
@FC_VPORT_LINKDOWN = common dso_local global i32 0, align 4
@VPORT_OK = common dso_local global i32 0, align 4
@LPFC_LINK_UP = common dso_local global i64 0, align 8
@LPFC_FABRIC_CFG_LINK = common dso_local global i64 0, align 8
@LPFC_TOPOLOGY_LOOP = common dso_local global i64 0, align 8
@FC_VPORT_DISABLED = common dso_local global i32 0, align 4
@Fabric_DID = common dso_local global i32 0, align 4
@NLP_STE_UNMAPPED_NODE = common dso_local global i64 0, align 8
@LS_NPIV_FAB_SUPPORTED = common dso_local global i32 0, align 4
@FC_VPORT_NO_FABRIC_SUPP = common dso_local global i32 0, align 4
@LOG_ELS = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [29 x i8] c"0262 No NPIV Fabric support\0A\00", align 1
@FC_VPORT_FAILED = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [21 x i8] c"1825 Vport Created.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @lpfc_vport_create(%struct.fc_vport* %0, i32 %1) #0 {
  %3 = alloca %struct.fc_vport*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.lpfc_nodelist*, align 8
  %6 = alloca %struct.Scsi_Host*, align 8
  %7 = alloca %struct.lpfc_vport*, align 8
  %8 = alloca %struct.lpfc_hba*, align 8
  %9 = alloca %struct.lpfc_vport*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.fc_vport* %0, %struct.fc_vport** %3, align 8
  store i32 %1, i32* %4, align 4
  %14 = load %struct.fc_vport*, %struct.fc_vport** %3, align 8
  %15 = getelementptr inbounds %struct.fc_vport, %struct.fc_vport* %14, i32 0, i32 4
  %16 = load %struct.Scsi_Host*, %struct.Scsi_Host** %15, align 8
  store %struct.Scsi_Host* %16, %struct.Scsi_Host** %6, align 8
  %17 = load %struct.Scsi_Host*, %struct.Scsi_Host** %6, align 8
  %18 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = inttoptr i64 %19 to %struct.lpfc_vport*
  store %struct.lpfc_vport* %20, %struct.lpfc_vport** %7, align 8
  %21 = load %struct.lpfc_vport*, %struct.lpfc_vport** %7, align 8
  %22 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %21, i32 0, i32 7
  %23 = load %struct.lpfc_hba*, %struct.lpfc_hba** %22, align 8
  store %struct.lpfc_hba* %23, %struct.lpfc_hba** %8, align 8
  store %struct.lpfc_vport* null, %struct.lpfc_vport** %9, align 8
  %24 = load i32, i32* @VPORT_ERROR, align 4
  store i32 %24, i32* %12, align 4
  %25 = load %struct.lpfc_hba*, %struct.lpfc_hba** %8, align 8
  %26 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = icmp slt i32 %27, 3
  br i1 %28, label %34, label %29

29:                                               ; preds = %2
  %30 = load %struct.lpfc_hba*, %struct.lpfc_hba** %8, align 8
  %31 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %30, i32 0, i32 6
  %32 = load i32, i32* %31, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %43, label %34

34:                                               ; preds = %29, %2
  %35 = load %struct.lpfc_hba*, %struct.lpfc_hba** %8, align 8
  %36 = load i32, i32* @KERN_ERR, align 4
  %37 = load i32, i32* @LOG_VPORT, align 4
  %38 = load %struct.lpfc_hba*, %struct.lpfc_hba** %8, align 8
  %39 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = call i32 (%struct.lpfc_hba*, i32, i32, i8*, ...) @lpfc_printf_log(%struct.lpfc_hba* %35, i32 %36, i32 %37, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str, i64 0, i64 0), i32 %40)
  %42 = load i32, i32* @VPORT_INVAL, align 4
  store i32 %42, i32* %12, align 4
  br label %338

43:                                               ; preds = %29
  %44 = load %struct.lpfc_hba*, %struct.lpfc_hba** %8, align 8
  %45 = call i32 @lpfc_alloc_vpi(%struct.lpfc_hba* %44)
  store i32 %45, i32* %11, align 4
  %46 = load i32, i32* %11, align 4
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %57

48:                                               ; preds = %43
  %49 = load %struct.lpfc_hba*, %struct.lpfc_hba** %8, align 8
  %50 = load i32, i32* @KERN_ERR, align 4
  %51 = load i32, i32* @LOG_VPORT, align 4
  %52 = load %struct.lpfc_hba*, %struct.lpfc_hba** %8, align 8
  %53 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %52, i32 0, i32 5
  %54 = load i32, i32* %53, align 8
  %55 = call i32 (%struct.lpfc_hba*, i32, i32, i8*, ...) @lpfc_printf_log(%struct.lpfc_hba* %49, i32 %50, i32 %51, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.1, i64 0, i64 0), i32 %54)
  %56 = load i32, i32* @VPORT_NORESOURCES, align 4
  store i32 %56, i32* %12, align 4
  br label %338

57:                                               ; preds = %43
  %58 = call i32 (...) @lpfc_get_instance()
  store i32 %58, i32* %10, align 4
  %59 = icmp slt i32 %58, 0
  br i1 %59, label %60, label %69

60:                                               ; preds = %57
  %61 = load %struct.lpfc_hba*, %struct.lpfc_hba** %8, align 8
  %62 = load i32, i32* @KERN_ERR, align 4
  %63 = load i32, i32* @LOG_VPORT, align 4
  %64 = call i32 (%struct.lpfc_hba*, i32, i32, i8*, ...) @lpfc_printf_log(%struct.lpfc_hba* %61, i32 %62, i32 %63, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.2, i64 0, i64 0))
  %65 = load %struct.lpfc_hba*, %struct.lpfc_hba** %8, align 8
  %66 = load i32, i32* %11, align 4
  %67 = call i32 @lpfc_free_vpi(%struct.lpfc_hba* %65, i32 %66)
  %68 = load i32, i32* @VPORT_NORESOURCES, align 4
  store i32 %68, i32* %12, align 4
  br label %338

69:                                               ; preds = %57
  %70 = load %struct.lpfc_hba*, %struct.lpfc_hba** %8, align 8
  %71 = load i32, i32* %10, align 4
  %72 = load %struct.fc_vport*, %struct.fc_vport** %3, align 8
  %73 = getelementptr inbounds %struct.fc_vport, %struct.fc_vport* %72, i32 0, i32 3
  %74 = call %struct.lpfc_vport* @lpfc_create_port(%struct.lpfc_hba* %70, i32 %71, i32* %73)
  store %struct.lpfc_vport* %74, %struct.lpfc_vport** %9, align 8
  %75 = load %struct.lpfc_vport*, %struct.lpfc_vport** %9, align 8
  %76 = icmp ne %struct.lpfc_vport* %75, null
  br i1 %76, label %87, label %77

77:                                               ; preds = %69
  %78 = load %struct.lpfc_hba*, %struct.lpfc_hba** %8, align 8
  %79 = load i32, i32* @KERN_ERR, align 4
  %80 = load i32, i32* @LOG_VPORT, align 4
  %81 = load i32, i32* %11, align 4
  %82 = call i32 (%struct.lpfc_hba*, i32, i32, i8*, ...) @lpfc_printf_log(%struct.lpfc_hba* %78, i32 %79, i32 %80, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0), i32 %81)
  %83 = load %struct.lpfc_hba*, %struct.lpfc_hba** %8, align 8
  %84 = load i32, i32* %11, align 4
  %85 = call i32 @lpfc_free_vpi(%struct.lpfc_hba* %83, i32 %84)
  %86 = load i32, i32* @VPORT_NORESOURCES, align 4
  store i32 %86, i32* %12, align 4
  br label %338

87:                                               ; preds = %69
  %88 = load i32, i32* %11, align 4
  %89 = load %struct.lpfc_vport*, %struct.lpfc_vport** %9, align 8
  %90 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %89, i32 0, i32 0
  store i32 %88, i32* %90, align 8
  %91 = load %struct.lpfc_vport*, %struct.lpfc_vport** %9, align 8
  %92 = call i32 @lpfc_debugfs_initialize(%struct.lpfc_vport* %91)
  %93 = load %struct.lpfc_hba*, %struct.lpfc_hba** %8, align 8
  %94 = load %struct.lpfc_vport*, %struct.lpfc_vport** %9, align 8
  %95 = call i32 @lpfc_vport_sparm(%struct.lpfc_hba* %93, %struct.lpfc_vport* %94)
  store i32 %95, i32* %13, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %120

97:                                               ; preds = %87
  %98 = load i32, i32* %13, align 4
  %99 = load i32, i32* @EINTR, align 4
  %100 = sub nsw i32 0, %99
  %101 = icmp eq i32 %98, %100
  br i1 %101, label %102, label %108

102:                                              ; preds = %97
  %103 = load %struct.lpfc_vport*, %struct.lpfc_vport** %9, align 8
  %104 = load i32, i32* @KERN_ERR, align 4
  %105 = load i32, i32* @LOG_VPORT, align 4
  %106 = call i32 @lpfc_printf_vlog(%struct.lpfc_vport* %103, i32 %104, i32 %105, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i64 0, i64 0))
  %107 = load i32, i32* @VPORT_ERROR, align 4
  store i32 %107, i32* %12, align 4
  br label %114

108:                                              ; preds = %97
  %109 = load %struct.lpfc_vport*, %struct.lpfc_vport** %9, align 8
  %110 = load i32, i32* @KERN_ERR, align 4
  %111 = load i32, i32* @LOG_VPORT, align 4
  %112 = call i32 @lpfc_printf_vlog(%struct.lpfc_vport* %109, i32 %110, i32 %111, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.5, i64 0, i64 0))
  %113 = load i32, i32* @VPORT_NORESOURCES, align 4
  store i32 %113, i32* %12, align 4
  br label %114

114:                                              ; preds = %108, %102
  %115 = load %struct.lpfc_hba*, %struct.lpfc_hba** %8, align 8
  %116 = load i32, i32* %11, align 4
  %117 = call i32 @lpfc_free_vpi(%struct.lpfc_hba* %115, i32 %116)
  %118 = load %struct.lpfc_vport*, %struct.lpfc_vport** %9, align 8
  %119 = call i32 @destroy_port(%struct.lpfc_vport* %118)
  br label %338

120:                                              ; preds = %87
  %121 = load %struct.fc_vport*, %struct.fc_vport** %3, align 8
  %122 = getelementptr inbounds %struct.fc_vport, %struct.fc_vport* %121, i32 0, i32 2
  %123 = load i32, i32* %122, align 4
  %124 = load %struct.lpfc_vport*, %struct.lpfc_vport** %9, align 8
  %125 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %124, i32 0, i32 5
  %126 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %125, i32 0, i32 0
  %127 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 8
  %129 = call i32 @u64_to_wwn(i32 %123, i32 %128)
  %130 = load %struct.fc_vport*, %struct.fc_vport** %3, align 8
  %131 = getelementptr inbounds %struct.fc_vport, %struct.fc_vport* %130, i32 0, i32 1
  %132 = load i32, i32* %131, align 8
  %133 = load %struct.lpfc_vport*, %struct.lpfc_vport** %9, align 8
  %134 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %133, i32 0, i32 6
  %135 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %134, i32 0, i32 0
  %136 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 4
  %138 = call i32 @u64_to_wwn(i32 %132, i32 %137)
  %139 = load %struct.lpfc_vport*, %struct.lpfc_vport** %9, align 8
  %140 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %139, i32 0, i32 4
  %141 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %140, i32 0, i32 0
  %142 = load %struct.lpfc_vport*, %struct.lpfc_vport** %9, align 8
  %143 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %142, i32 0, i32 6
  %144 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %143, i32 0, i32 0
  %145 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 4
  %147 = call i32 @memcpy(i32* %141, i32 %146, i32 8)
  %148 = load %struct.lpfc_vport*, %struct.lpfc_vport** %9, align 8
  %149 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %148, i32 0, i32 4
  %150 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %149, i32 0, i32 1
  %151 = load %struct.lpfc_vport*, %struct.lpfc_vport** %9, align 8
  %152 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %151, i32 0, i32 5
  %153 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %152, i32 0, i32 0
  %154 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 8
  %156 = call i32 @memcpy(i32* %150, i32 %155, i32 8)
  %157 = load %struct.lpfc_hba*, %struct.lpfc_hba** %8, align 8
  %158 = load %struct.lpfc_vport*, %struct.lpfc_vport** %9, align 8
  %159 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %158, i32 0, i32 4
  %160 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %159, i32 0, i32 1
  %161 = call i32 @lpfc_valid_wwn_format(%struct.lpfc_hba* %157, i32* %160, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0))
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %163, label %170

163:                                              ; preds = %120
  %164 = load %struct.lpfc_hba*, %struct.lpfc_hba** %8, align 8
  %165 = load %struct.lpfc_vport*, %struct.lpfc_vport** %9, align 8
  %166 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %165, i32 0, i32 4
  %167 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %166, i32 0, i32 0
  %168 = call i32 @lpfc_valid_wwn_format(%struct.lpfc_hba* %164, i32* %167, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0))
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %181, label %170

170:                                              ; preds = %163, %120
  %171 = load %struct.lpfc_vport*, %struct.lpfc_vport** %9, align 8
  %172 = load i32, i32* @KERN_ERR, align 4
  %173 = load i32, i32* @LOG_VPORT, align 4
  %174 = call i32 @lpfc_printf_vlog(%struct.lpfc_vport* %171, i32 %172, i32 %173, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.8, i64 0, i64 0))
  %175 = load %struct.lpfc_hba*, %struct.lpfc_hba** %8, align 8
  %176 = load i32, i32* %11, align 4
  %177 = call i32 @lpfc_free_vpi(%struct.lpfc_hba* %175, i32 %176)
  %178 = load %struct.lpfc_vport*, %struct.lpfc_vport** %9, align 8
  %179 = call i32 @destroy_port(%struct.lpfc_vport* %178)
  %180 = load i32, i32* @VPORT_INVAL, align 4
  store i32 %180, i32* %12, align 4
  br label %338

181:                                              ; preds = %163
  %182 = load %struct.lpfc_hba*, %struct.lpfc_hba** %8, align 8
  %183 = load %struct.lpfc_vport*, %struct.lpfc_vport** %9, align 8
  %184 = call i32 @lpfc_unique_wwpn(%struct.lpfc_hba* %182, %struct.lpfc_vport* %183)
  %185 = icmp ne i32 %184, 0
  br i1 %185, label %197, label %186

186:                                              ; preds = %181
  %187 = load %struct.lpfc_vport*, %struct.lpfc_vport** %9, align 8
  %188 = load i32, i32* @KERN_ERR, align 4
  %189 = load i32, i32* @LOG_VPORT, align 4
  %190 = call i32 @lpfc_printf_vlog(%struct.lpfc_vport* %187, i32 %188, i32 %189, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.9, i64 0, i64 0))
  %191 = load %struct.lpfc_hba*, %struct.lpfc_hba** %8, align 8
  %192 = load i32, i32* %11, align 4
  %193 = call i32 @lpfc_free_vpi(%struct.lpfc_hba* %191, i32 %192)
  %194 = load %struct.lpfc_vport*, %struct.lpfc_vport** %9, align 8
  %195 = call i32 @destroy_port(%struct.lpfc_vport* %194)
  %196 = load i32, i32* @VPORT_INVAL, align 4
  store i32 %196, i32* %12, align 4
  br label %338

197:                                              ; preds = %181
  %198 = load %struct.lpfc_vport*, %struct.lpfc_vport** %9, align 8
  %199 = call i32 @lpfc_alloc_sysfs_attr(%struct.lpfc_vport* %198)
  %200 = load %struct.lpfc_vport*, %struct.lpfc_vport** %9, align 8
  %201 = load %struct.fc_vport*, %struct.fc_vport** %3, align 8
  %202 = getelementptr inbounds %struct.fc_vport, %struct.fc_vport* %201, i32 0, i32 0
  %203 = load i64, i64* %202, align 8
  %204 = inttoptr i64 %203 to %struct.lpfc_vport**
  store %struct.lpfc_vport* %200, %struct.lpfc_vport** %204, align 8
  %205 = load %struct.fc_vport*, %struct.fc_vport** %3, align 8
  %206 = load %struct.lpfc_vport*, %struct.lpfc_vport** %9, align 8
  %207 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %206, i32 0, i32 3
  store %struct.fc_vport* %205, %struct.fc_vport** %207, align 8
  %208 = load %struct.lpfc_hba*, %struct.lpfc_hba** %8, align 8
  %209 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %208, i32 0, i32 0
  %210 = load i32, i32* %209, align 8
  %211 = load i32, i32* @LPFC_SLI_REV4, align 4
  %212 = icmp eq i32 %210, %211
  br i1 %212, label %213, label %237

213:                                              ; preds = %197
  %214 = load %struct.lpfc_vport*, %struct.lpfc_vport** %7, align 8
  %215 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %214, i32 0, i32 1
  %216 = load i32, i32* %215, align 4
  %217 = load i32, i32* @FC_VFI_REGISTERED, align 4
  %218 = and i32 %216, %217
  %219 = icmp ne i32 %218, 0
  br i1 %219, label %220, label %237

220:                                              ; preds = %213
  %221 = load %struct.lpfc_vport*, %struct.lpfc_vport** %9, align 8
  %222 = call i32 @lpfc_sli4_init_vpi(%struct.lpfc_vport* %221)
  store i32 %222, i32* %12, align 4
  %223 = load i32, i32* %12, align 4
  %224 = icmp ne i32 %223, 0
  br i1 %224, label %225, label %236

225:                                              ; preds = %220
  %226 = load %struct.lpfc_hba*, %struct.lpfc_hba** %8, align 8
  %227 = load i32, i32* @KERN_ERR, align 4
  %228 = load i32, i32* @LOG_VPORT, align 4
  %229 = load i32, i32* %11, align 4
  %230 = load i32, i32* %12, align 4
  %231 = call i32 (%struct.lpfc_hba*, i32, i32, i8*, ...) @lpfc_printf_log(%struct.lpfc_hba* %226, i32 %227, i32 %228, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.10, i64 0, i64 0), i32 %229, i32 %230)
  %232 = load i32, i32* @VPORT_NORESOURCES, align 4
  store i32 %232, i32* %12, align 4
  %233 = load %struct.lpfc_hba*, %struct.lpfc_hba** %8, align 8
  %234 = load i32, i32* %11, align 4
  %235 = call i32 @lpfc_free_vpi(%struct.lpfc_hba* %233, i32 %234)
  br label %338

236:                                              ; preds = %220
  br label %254

237:                                              ; preds = %213, %197
  %238 = load %struct.lpfc_hba*, %struct.lpfc_hba** %8, align 8
  %239 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %238, i32 0, i32 0
  %240 = load i32, i32* %239, align 8
  %241 = load i32, i32* @LPFC_SLI_REV4, align 4
  %242 = icmp eq i32 %240, %241
  br i1 %242, label %243, label %253

243:                                              ; preds = %237
  %244 = load i32, i32* @FC_VPORT_NEEDS_INIT_VPI, align 4
  %245 = load %struct.lpfc_vport*, %struct.lpfc_vport** %9, align 8
  %246 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %245, i32 0, i32 1
  %247 = load i32, i32* %246, align 4
  %248 = or i32 %247, %244
  store i32 %248, i32* %246, align 4
  %249 = load %struct.lpfc_vport*, %struct.lpfc_vport** %9, align 8
  %250 = load i32, i32* @FC_VPORT_LINKDOWN, align 4
  %251 = call i32 @lpfc_vport_set_state(%struct.lpfc_vport* %249, i32 %250)
  %252 = load i32, i32* @VPORT_OK, align 4
  store i32 %252, i32* %12, align 4
  br label %330

253:                                              ; preds = %237
  br label %254

254:                                              ; preds = %253, %236
  %255 = load %struct.lpfc_hba*, %struct.lpfc_hba** %8, align 8
  %256 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %255, i32 0, i32 1
  %257 = load i64, i64* %256, align 8
  %258 = load i64, i64* @LPFC_LINK_UP, align 8
  %259 = icmp slt i64 %257, %258
  br i1 %259, label %272, label %260

260:                                              ; preds = %254
  %261 = load %struct.lpfc_vport*, %struct.lpfc_vport** %7, align 8
  %262 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %261, i32 0, i32 2
  %263 = load i64, i64* %262, align 8
  %264 = load i64, i64* @LPFC_FABRIC_CFG_LINK, align 8
  %265 = icmp slt i64 %263, %264
  br i1 %265, label %272, label %266

266:                                              ; preds = %260
  %267 = load %struct.lpfc_hba*, %struct.lpfc_hba** %8, align 8
  %268 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %267, i32 0, i32 2
  %269 = load i64, i64* %268, align 8
  %270 = load i64, i64* @LPFC_TOPOLOGY_LOOP, align 8
  %271 = icmp eq i64 %269, %270
  br i1 %271, label %272, label %277

272:                                              ; preds = %266, %260, %254
  %273 = load %struct.lpfc_vport*, %struct.lpfc_vport** %9, align 8
  %274 = load i32, i32* @FC_VPORT_LINKDOWN, align 4
  %275 = call i32 @lpfc_vport_set_state(%struct.lpfc_vport* %273, i32 %274)
  %276 = load i32, i32* @VPORT_OK, align 4
  store i32 %276, i32* %12, align 4
  br label %330

277:                                              ; preds = %266
  %278 = load i32, i32* %4, align 4
  %279 = icmp ne i32 %278, 0
  br i1 %279, label %280, label %285

280:                                              ; preds = %277
  %281 = load %struct.lpfc_vport*, %struct.lpfc_vport** %9, align 8
  %282 = load i32, i32* @FC_VPORT_DISABLED, align 4
  %283 = call i32 @lpfc_vport_set_state(%struct.lpfc_vport* %281, i32 %282)
  %284 = load i32, i32* @VPORT_OK, align 4
  store i32 %284, i32* %12, align 4
  br label %330

285:                                              ; preds = %277
  %286 = load %struct.lpfc_hba*, %struct.lpfc_hba** %8, align 8
  %287 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %286, i32 0, i32 4
  %288 = load i32, i32* %287, align 4
  %289 = load i32, i32* @Fabric_DID, align 4
  %290 = call %struct.lpfc_nodelist* @lpfc_findnode_did(i32 %288, i32 %289)
  store %struct.lpfc_nodelist* %290, %struct.lpfc_nodelist** %5, align 8
  %291 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %5, align 8
  %292 = icmp ne %struct.lpfc_nodelist* %291, null
  br i1 %292, label %293, label %324

293:                                              ; preds = %285
  %294 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %5, align 8
  %295 = call i64 @NLP_CHK_NODE_ACT(%struct.lpfc_nodelist* %294)
  %296 = icmp ne i64 %295, 0
  br i1 %296, label %297, label %324

297:                                              ; preds = %293
  %298 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %5, align 8
  %299 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %298, i32 0, i32 0
  %300 = load i64, i64* %299, align 8
  %301 = load i64, i64* @NLP_STE_UNMAPPED_NODE, align 8
  %302 = icmp eq i64 %300, %301
  br i1 %302, label %303, label %324

303:                                              ; preds = %297
  %304 = load %struct.lpfc_hba*, %struct.lpfc_hba** %8, align 8
  %305 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %304, i32 0, i32 3
  %306 = load i32, i32* %305, align 8
  %307 = load i32, i32* @LS_NPIV_FAB_SUPPORTED, align 4
  %308 = and i32 %306, %307
  %309 = icmp ne i32 %308, 0
  br i1 %309, label %310, label %315

310:                                              ; preds = %303
  %311 = load %struct.lpfc_vport*, %struct.lpfc_vport** %9, align 8
  %312 = call i32 @lpfc_set_disctmo(%struct.lpfc_vport* %311)
  %313 = load %struct.lpfc_vport*, %struct.lpfc_vport** %9, align 8
  %314 = call i32 @lpfc_initial_fdisc(%struct.lpfc_vport* %313)
  br label %323

315:                                              ; preds = %303
  %316 = load %struct.lpfc_vport*, %struct.lpfc_vport** %9, align 8
  %317 = load i32, i32* @FC_VPORT_NO_FABRIC_SUPP, align 4
  %318 = call i32 @lpfc_vport_set_state(%struct.lpfc_vport* %316, i32 %317)
  %319 = load %struct.lpfc_vport*, %struct.lpfc_vport** %9, align 8
  %320 = load i32, i32* @KERN_ERR, align 4
  %321 = load i32, i32* @LOG_ELS, align 4
  %322 = call i32 @lpfc_printf_vlog(%struct.lpfc_vport* %319, i32 %320, i32 %321, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.11, i64 0, i64 0))
  br label %323

323:                                              ; preds = %315, %310
  br label %328

324:                                              ; preds = %297, %293, %285
  %325 = load %struct.lpfc_vport*, %struct.lpfc_vport** %9, align 8
  %326 = load i32, i32* @FC_VPORT_FAILED, align 4
  %327 = call i32 @lpfc_vport_set_state(%struct.lpfc_vport* %325, i32 %326)
  br label %328

328:                                              ; preds = %324, %323
  %329 = load i32, i32* @VPORT_OK, align 4
  store i32 %329, i32* %12, align 4
  br label %330

330:                                              ; preds = %328, %280, %272, %243
  %331 = load %struct.lpfc_vport*, %struct.lpfc_vport** %9, align 8
  %332 = load i32, i32* @KERN_ERR, align 4
  %333 = load i32, i32* @LOG_VPORT, align 4
  %334 = call i32 @lpfc_printf_vlog(%struct.lpfc_vport* %331, i32 %332, i32 %333, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.12, i64 0, i64 0))
  %335 = load %struct.lpfc_vport*, %struct.lpfc_vport** %9, align 8
  %336 = call i32 @lpfc_shost_from_vport(%struct.lpfc_vport* %335)
  %337 = call i32 @lpfc_host_attrib_init(i32 %336)
  br label %338

338:                                              ; preds = %330, %225, %186, %170, %114, %77, %60, %48, %34
  %339 = load i32, i32* %12, align 4
  ret i32 %339
}

declare dso_local i32 @lpfc_printf_log(%struct.lpfc_hba*, i32, i32, i8*, ...) #1

declare dso_local i32 @lpfc_alloc_vpi(%struct.lpfc_hba*) #1

declare dso_local i32 @lpfc_get_instance(...) #1

declare dso_local i32 @lpfc_free_vpi(%struct.lpfc_hba*, i32) #1

declare dso_local %struct.lpfc_vport* @lpfc_create_port(%struct.lpfc_hba*, i32, i32*) #1

declare dso_local i32 @lpfc_debugfs_initialize(%struct.lpfc_vport*) #1

declare dso_local i32 @lpfc_vport_sparm(%struct.lpfc_hba*, %struct.lpfc_vport*) #1

declare dso_local i32 @lpfc_printf_vlog(%struct.lpfc_vport*, i32, i32, i8*) #1

declare dso_local i32 @destroy_port(%struct.lpfc_vport*) #1

declare dso_local i32 @u64_to_wwn(i32, i32) #1

declare dso_local i32 @memcpy(i32*, i32, i32) #1

declare dso_local i32 @lpfc_valid_wwn_format(%struct.lpfc_hba*, i32*, i8*) #1

declare dso_local i32 @lpfc_unique_wwpn(%struct.lpfc_hba*, %struct.lpfc_vport*) #1

declare dso_local i32 @lpfc_alloc_sysfs_attr(%struct.lpfc_vport*) #1

declare dso_local i32 @lpfc_sli4_init_vpi(%struct.lpfc_vport*) #1

declare dso_local i32 @lpfc_vport_set_state(%struct.lpfc_vport*, i32) #1

declare dso_local %struct.lpfc_nodelist* @lpfc_findnode_did(i32, i32) #1

declare dso_local i64 @NLP_CHK_NODE_ACT(%struct.lpfc_nodelist*) #1

declare dso_local i32 @lpfc_set_disctmo(%struct.lpfc_vport*) #1

declare dso_local i32 @lpfc_initial_fdisc(%struct.lpfc_vport*) #1

declare dso_local i32 @lpfc_host_attrib_init(i32) #1

declare dso_local i32 @lpfc_shost_from_vport(%struct.lpfc_vport*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
