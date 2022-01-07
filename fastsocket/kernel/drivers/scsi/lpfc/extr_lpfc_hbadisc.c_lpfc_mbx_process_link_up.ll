; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/lpfc/extr_lpfc_hbadisc.c_lpfc_mbx_process_link_up.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/lpfc/extr_lpfc_hbadisc.c_lpfc_mbx_process_link_up.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpfc_hba = type { i32, i32, i32, i32, i32*, i64, i32, i32, i32, %struct.TYPE_13__, i32, i64, i64, i32, %struct.lpfc_vport* }
%struct.TYPE_13__ = type { i32 }
%struct.lpfc_vport = type { i32, i32, i32, i32 }
%struct.lpfc_mbx_read_top = type { %struct.TYPE_16__ }
%struct.TYPE_16__ = type { %struct.TYPE_15__ }
%struct.TYPE_15__ = type { %struct.TYPE_14__ }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_17__ = type { i32, %struct.lpfc_vport*, i64 }
%struct.Scsi_Host = type { i32* }
%struct.lpfc_dmabuf = type { i32, i32 }
%struct.fcf_record = type { i32, i32 }
%union.anon = type { [16 x i32] }
%struct.anon = type { i32, i32, i32, i32 }

@lpfc_mbx_read_top_link_spd = common dso_local global i32 0, align 4
@LPFC_LINK_SPEED_UNKNOWN = common dso_local global i32 0, align 4
@lpfc_mbx_read_top_topology = common dso_local global i32 0, align 4
@KERN_WARNING = common dso_local global i32 0, align 4
@LOG_SLI = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"3314 Toplogy changed was 0x%x is 0x%x\0A\00", align 1
@LS_NPIV_FAB_SUPPORTED = common dso_local global i32 0, align 4
@LPFC_TOPOLOGY_LOOP = common dso_local global i32 0, align 4
@LPFC_SLI3_NPIV_ENABLED = common dso_local global i32 0, align 4
@KERN_ERR = common dso_local global i32 0, align 4
@LOG_LINK_EVENT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [56 x i8] c"1309 Link Up Event npiv not supported in loop topology\0A\00", align 1
@lpfc_mbx_read_top_il = common dso_local global i32 0, align 4
@FC_LBIT = common dso_local global i32 0, align 4
@lpfc_mbx_read_top_alpa_granted = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [51 x i8] c"1304 Link Up Event ALPA map Data: x%x x%x x%x x%x\0A\00", align 1
@LPFC_SLI_REV3 = common dso_local global i64 0, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@lpfc_mbx_cmpl_read_sparam = common dso_local global i32 0, align 4
@MBX_NOWAIT = common dso_local global i32 0, align 4
@MBX_NOT_FINISHED = common dso_local global i32 0, align 4
@HBA_FCOE_MODE = common dso_local global i32 0, align 4
@LPFC_LOCAL_CFG_LINK = common dso_local global i32 0, align 4
@lpfc_mbx_cmpl_local_config_link = common dso_local global i32 0, align 4
@LPFC_VPORT_UNKNOWN = common dso_local global i32 0, align 4
@HBA_FIP_SUPPORT = common dso_local global i32 0, align 4
@LOG_MBOX = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [47 x i8] c"2554 Could not allocate memory for fcf record\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@LPFC_FCOE_FCF_DEF_INDEX = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [53 x i8] c"2013 Could not manually add FCF record 0, status %d\0A\00", align 1
@FCF_TS_INPROG = common dso_local global i32 0, align 4
@FCF_INIT_DISC = common dso_local global i32 0, align 4
@KERN_INFO = common dso_local global i32 0, align 4
@LOG_FIP = common dso_local global i32 0, align 4
@LOG_DISCOVERY = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [37 x i8] c"2778 Start FCF table scan at linkup\0A\00", align 1
@LPFC_FCOE_FCF_GET_FIRST = common dso_local global i32 0, align 4
@FC_VPORT_FAILED = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [51 x i8] c"0263 Discovery Mailbox error: state: 0x%x : %p %p\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.lpfc_hba*, %struct.lpfc_mbx_read_top*)* @lpfc_mbx_process_link_up to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lpfc_mbx_process_link_up(%struct.lpfc_hba* %0, %struct.lpfc_mbx_read_top* %1) #0 {
  %3 = alloca %struct.lpfc_hba*, align 8
  %4 = alloca %struct.lpfc_mbx_read_top*, align 8
  %5 = alloca %struct.lpfc_vport*, align 8
  %6 = alloca %struct.TYPE_17__*, align 8
  %7 = alloca %struct.TYPE_17__*, align 8
  %8 = alloca %struct.Scsi_Host*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.lpfc_dmabuf*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.fcf_record*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %union.anon, align 4
  store %struct.lpfc_hba* %0, %struct.lpfc_hba** %3, align 8
  store %struct.lpfc_mbx_read_top* %1, %struct.lpfc_mbx_read_top** %4, align 8
  %18 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %19 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %18, i32 0, i32 14
  %20 = load %struct.lpfc_vport*, %struct.lpfc_vport** %19, align 8
  store %struct.lpfc_vport* %20, %struct.lpfc_vport** %5, align 8
  store %struct.TYPE_17__* null, %struct.TYPE_17__** %7, align 8
  store i32 0, i32* %13, align 4
  %21 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %22 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %21, i32 0, i32 8
  %23 = call i32 @spin_lock_irq(i32* %22)
  %24 = load i32, i32* @lpfc_mbx_read_top_link_spd, align 4
  %25 = load %struct.lpfc_mbx_read_top*, %struct.lpfc_mbx_read_top** %4, align 8
  %26 = call i32 @bf_get(i32 %24, %struct.lpfc_mbx_read_top* %25)
  switch i32 %26, label %33 [
    i32 131, label %27
    i32 130, label %27
    i32 129, label %27
    i32 128, label %27
    i32 133, label %27
    i32 132, label %27
  ]

27:                                               ; preds = %2, %2, %2, %2, %2, %2
  %28 = load i32, i32* @lpfc_mbx_read_top_link_spd, align 4
  %29 = load %struct.lpfc_mbx_read_top*, %struct.lpfc_mbx_read_top** %4, align 8
  %30 = call i32 @bf_get(i32 %28, %struct.lpfc_mbx_read_top* %29)
  %31 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %32 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %31, i32 0, i32 0
  store i32 %30, i32* %32, align 8
  br label %37

33:                                               ; preds = %2
  %34 = load i32, i32* @LPFC_LINK_SPEED_UNKNOWN, align 4
  %35 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %36 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %35, i32 0, i32 0
  store i32 %34, i32* %36, align 8
  br label %37

37:                                               ; preds = %33, %27
  %38 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %39 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %63

42:                                               ; preds = %37
  %43 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %44 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* @lpfc_mbx_read_top_topology, align 4
  %47 = load %struct.lpfc_mbx_read_top*, %struct.lpfc_mbx_read_top** %4, align 8
  %48 = call i32 @bf_get(i32 %46, %struct.lpfc_mbx_read_top* %47)
  %49 = icmp ne i32 %45, %48
  br i1 %49, label %50, label %63

50:                                               ; preds = %42
  %51 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %52 = load i32, i32* @KERN_WARNING, align 4
  %53 = load i32, i32* @LOG_SLI, align 4
  %54 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %55 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* @lpfc_mbx_read_top_topology, align 4
  %58 = load %struct.lpfc_mbx_read_top*, %struct.lpfc_mbx_read_top** %4, align 8
  %59 = call i32 @bf_get(i32 %57, %struct.lpfc_mbx_read_top* %58)
  %60 = call i32 (%struct.lpfc_hba*, i32, i32, i8*, ...) @lpfc_printf_log(%struct.lpfc_hba* %51, i32 %52, i32 %53, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %56, i32 %59)
  %61 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %62 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %61, i32 0, i32 2
  store i32 1, i32* %62, align 8
  br label %63

63:                                               ; preds = %50, %42, %37
  %64 = load i32, i32* @lpfc_mbx_read_top_topology, align 4
  %65 = load %struct.lpfc_mbx_read_top*, %struct.lpfc_mbx_read_top** %4, align 8
  %66 = call i32 @bf_get(i32 %64, %struct.lpfc_mbx_read_top* %65)
  %67 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %68 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %67, i32 0, i32 1
  store i32 %66, i32* %68, align 4
  %69 = load i32, i32* @LS_NPIV_FAB_SUPPORTED, align 4
  %70 = xor i32 %69, -1
  %71 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %72 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %71, i32 0, i32 13
  %73 = load i32, i32* %72, align 8
  %74 = and i32 %73, %70
  store i32 %74, i32* %72, align 8
  %75 = load %struct.lpfc_vport*, %struct.lpfc_vport** %5, align 8
  %76 = call %struct.Scsi_Host* @lpfc_shost_from_vport(%struct.lpfc_vport* %75)
  store %struct.Scsi_Host* %76, %struct.Scsi_Host** %8, align 8
  %77 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %78 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = load i32, i32* @LPFC_TOPOLOGY_LOOP, align 4
  %81 = icmp eq i32 %79, %80
  br i1 %81, label %82, label %199

82:                                               ; preds = %63
  %83 = load i32, i32* @LPFC_SLI3_NPIV_ENABLED, align 4
  %84 = xor i32 %83, -1
  %85 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %86 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %85, i32 0, i32 3
  %87 = load i32, i32* %86, align 4
  %88 = and i32 %87, %84
  store i32 %88, i32* %86, align 4
  %89 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %90 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %89, i32 0, i32 11
  %91 = load i64, i64* %90, align 8
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %103

93:                                               ; preds = %82
  %94 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %95 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %94, i32 0, i32 12
  %96 = load i64, i64* %95, align 8
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %103

98:                                               ; preds = %93
  %99 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %100 = load i32, i32* @KERN_ERR, align 4
  %101 = load i32, i32* @LOG_LINK_EVENT, align 4
  %102 = call i32 (%struct.lpfc_hba*, i32, i32, i8*, ...) @lpfc_printf_log(%struct.lpfc_hba* %99, i32 %100, i32 %101, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.1, i64 0, i64 0))
  br label %103

103:                                              ; preds = %98, %93, %82
  %104 = load i32, i32* @lpfc_mbx_read_top_il, align 4
  %105 = load %struct.lpfc_mbx_read_top*, %struct.lpfc_mbx_read_top** %4, align 8
  %106 = call i32 @bf_get(i32 %104, %struct.lpfc_mbx_read_top* %105)
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %112

108:                                              ; preds = %103
  %109 = load i32, i32* @FC_LBIT, align 4
  %110 = load i32, i32* %13, align 4
  %111 = or i32 %110, %109
  store i32 %111, i32* %13, align 4
  br label %112

112:                                              ; preds = %108, %103
  %113 = load i32, i32* @lpfc_mbx_read_top_alpa_granted, align 4
  %114 = load %struct.lpfc_mbx_read_top*, %struct.lpfc_mbx_read_top** %4, align 8
  %115 = call i32 @bf_get(i32 %113, %struct.lpfc_mbx_read_top* %114)
  %116 = load %struct.lpfc_vport*, %struct.lpfc_vport** %5, align 8
  %117 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %116, i32 0, i32 0
  store i32 %115, i32* %117, align 4
  %118 = load %struct.lpfc_mbx_read_top*, %struct.lpfc_mbx_read_top** %4, align 8
  %119 = getelementptr inbounds %struct.lpfc_mbx_read_top, %struct.lpfc_mbx_read_top* %118, i32 0, i32 0
  %120 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %119, i32 0, i32 0
  %121 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %120, i32 0, i32 0
  %122 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 4
  store i32 %123, i32* %9, align 4
  %124 = load i32, i32* %9, align 4
  %125 = icmp eq i32 %124, 0
  br i1 %125, label %126, label %131

126:                                              ; preds = %112
  %127 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %128 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %127, i32 0, i32 4
  %129 = load i32*, i32** %128, align 8
  %130 = getelementptr inbounds i32, i32* %129, i64 0
  store i32 0, i32* %130, align 4
  br label %198

131:                                              ; preds = %112
  %132 = load %struct.lpfc_vport*, %struct.lpfc_vport** %5, align 8
  %133 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %132, i32 0, i32 1
  %134 = load i32, i32* %133, align 4
  %135 = load i32, i32* @LOG_LINK_EVENT, align 4
  %136 = and i32 %134, %135
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %197

138:                                              ; preds = %131
  %139 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %140 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %139, i32 0, i32 4
  %141 = load i32*, i32** %140, align 8
  %142 = getelementptr inbounds i32, i32* %141, i64 0
  %143 = load i32, i32* %142, align 4
  store i32 %143, i32* %14, align 4
  store i32 0, i32* %15, align 4
  br label %144

144:                                              ; preds = %179, %138
  %145 = load i32, i32* %15, align 4
  %146 = load i32, i32* %14, align 4
  %147 = icmp slt i32 %145, %146
  br i1 %147, label %148, label %196

148:                                              ; preds = %144
  %149 = bitcast %union.anon* %17 to [16 x i32]*
  %150 = getelementptr inbounds [16 x i32], [16 x i32]* %149, i64 0, i64 0
  %151 = call i32 @memset(i32* %150, i32 0, i32 16)
  store i32 1, i32* %16, align 4
  br label %152

152:                                              ; preds = %176, %148
  %153 = load i32, i32* %15, align 4
  %154 = load i32, i32* %14, align 4
  %155 = icmp slt i32 %153, %154
  br i1 %155, label %156, label %179

156:                                              ; preds = %152
  %157 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %158 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %157, i32 0, i32 4
  %159 = load i32*, i32** %158, align 8
  %160 = load i32, i32* %15, align 4
  %161 = add nsw i32 %160, 1
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds i32, i32* %159, i64 %162
  %164 = load i32, i32* %163, align 4
  %165 = bitcast %union.anon* %17 to [16 x i32]*
  %166 = load i32, i32* %16, align 4
  %167 = sub nsw i32 %166, 1
  %168 = sext i32 %167 to i64
  %169 = getelementptr inbounds [16 x i32], [16 x i32]* %165, i64 0, i64 %168
  store i32 %164, i32* %169, align 4
  %170 = load i32, i32* %15, align 4
  %171 = add nsw i32 %170, 1
  store i32 %171, i32* %15, align 4
  %172 = load i32, i32* %16, align 4
  %173 = icmp eq i32 %172, 16
  br i1 %173, label %174, label %175

174:                                              ; preds = %156
  br label %179

175:                                              ; preds = %156
  br label %176

176:                                              ; preds = %175
  %177 = load i32, i32* %16, align 4
  %178 = add nsw i32 %177, 1
  store i32 %178, i32* %16, align 4
  br label %152

179:                                              ; preds = %174, %152
  %180 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %181 = load i32, i32* @KERN_WARNING, align 4
  %182 = load i32, i32* @LOG_LINK_EVENT, align 4
  %183 = bitcast %union.anon* %17 to %struct.anon*
  %184 = getelementptr inbounds %struct.anon, %struct.anon* %183, i32 0, i32 0
  %185 = load i32, i32* %184, align 4
  %186 = bitcast %union.anon* %17 to %struct.anon*
  %187 = getelementptr inbounds %struct.anon, %struct.anon* %186, i32 0, i32 1
  %188 = load i32, i32* %187, align 4
  %189 = bitcast %union.anon* %17 to %struct.anon*
  %190 = getelementptr inbounds %struct.anon, %struct.anon* %189, i32 0, i32 2
  %191 = load i32, i32* %190, align 4
  %192 = bitcast %union.anon* %17 to %struct.anon*
  %193 = getelementptr inbounds %struct.anon, %struct.anon* %192, i32 0, i32 3
  %194 = load i32, i32* %193, align 4
  %195 = call i32 (%struct.lpfc_hba*, i32, i32, i8*, ...) @lpfc_printf_log(%struct.lpfc_hba* %180, i32 %181, i32 %182, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.2, i64 0, i64 0), i32 %185, i32 %188, i32 %191, i32 %194)
  br label %144

196:                                              ; preds = %144
  br label %197

197:                                              ; preds = %196, %131
  br label %198

198:                                              ; preds = %197, %126
  br label %238

199:                                              ; preds = %63
  %200 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %201 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %200, i32 0, i32 3
  %202 = load i32, i32* %201, align 4
  %203 = load i32, i32* @LPFC_SLI3_NPIV_ENABLED, align 4
  %204 = and i32 %202, %203
  %205 = icmp ne i32 %204, 0
  br i1 %205, label %229, label %206

206:                                              ; preds = %199
  %207 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %208 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %207, i32 0, i32 12
  %209 = load i64, i64* %208, align 8
  %210 = icmp ne i64 %209, 0
  br i1 %210, label %211, label %228

211:                                              ; preds = %206
  %212 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %213 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %212, i32 0, i32 11
  %214 = load i64, i64* %213, align 8
  %215 = icmp ne i64 %214, 0
  br i1 %215, label %216, label %228

216:                                              ; preds = %211
  %217 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %218 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %217, i32 0, i32 5
  %219 = load i64, i64* %218, align 8
  %220 = load i64, i64* @LPFC_SLI_REV3, align 8
  %221 = icmp sge i64 %219, %220
  br i1 %221, label %222, label %228

222:                                              ; preds = %216
  %223 = load i32, i32* @LPFC_SLI3_NPIV_ENABLED, align 4
  %224 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %225 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %224, i32 0, i32 3
  %226 = load i32, i32* %225, align 4
  %227 = or i32 %226, %223
  store i32 %227, i32* %225, align 4
  br label %228

228:                                              ; preds = %222, %216, %211, %206
  br label %229

229:                                              ; preds = %228, %199
  %230 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %231 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %230, i32 0, i32 6
  %232 = load i32, i32* %231, align 8
  %233 = load %struct.lpfc_vport*, %struct.lpfc_vport** %5, align 8
  %234 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %233, i32 0, i32 0
  store i32 %232, i32* %234, align 4
  %235 = load i32, i32* @FC_LBIT, align 4
  %236 = load i32, i32* %13, align 4
  %237 = or i32 %236, %235
  store i32 %237, i32* %13, align 4
  br label %238

238:                                              ; preds = %229, %198
  %239 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %240 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %239, i32 0, i32 8
  %241 = call i32 @spin_unlock_irq(i32* %240)
  %242 = load i32, i32* %13, align 4
  %243 = icmp ne i32 %242, 0
  br i1 %243, label %244, label %258

244:                                              ; preds = %238
  %245 = load %struct.Scsi_Host*, %struct.Scsi_Host** %8, align 8
  %246 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %245, i32 0, i32 0
  %247 = load i32*, i32** %246, align 8
  %248 = call i32 @spin_lock_irq(i32* %247)
  %249 = load i32, i32* %13, align 4
  %250 = load %struct.lpfc_vport*, %struct.lpfc_vport** %5, align 8
  %251 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %250, i32 0, i32 2
  %252 = load i32, i32* %251, align 4
  %253 = or i32 %252, %249
  store i32 %253, i32* %251, align 4
  %254 = load %struct.Scsi_Host*, %struct.Scsi_Host** %8, align 8
  %255 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %254, i32 0, i32 0
  %256 = load i32*, i32** %255, align 8
  %257 = call i32 @spin_unlock_irq(i32* %256)
  br label %258

258:                                              ; preds = %244, %238
  %259 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %260 = call i32 @lpfc_linkup(%struct.lpfc_hba* %259)
  %261 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %262 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %261, i32 0, i32 10
  %263 = load i32, i32* %262, align 8
  %264 = load i32, i32* @GFP_KERNEL, align 4
  %265 = call %struct.TYPE_17__* @mempool_alloc(i32 %263, i32 %264)
  store %struct.TYPE_17__* %265, %struct.TYPE_17__** %6, align 8
  %266 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %267 = icmp ne %struct.TYPE_17__* %266, null
  br i1 %267, label %269, label %268

268:                                              ; preds = %258
  br label %470

269:                                              ; preds = %258
  %270 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %271 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %272 = call i32 @lpfc_read_sparam(%struct.lpfc_hba* %270, %struct.TYPE_17__* %271, i32 0)
  store i32 %272, i32* %11, align 4
  %273 = load i32, i32* %11, align 4
  %274 = icmp ne i32 %273, 0
  br i1 %274, label %275, label %281

275:                                              ; preds = %269
  %276 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %277 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %278 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %277, i32 0, i32 10
  %279 = load i32, i32* %278, align 8
  %280 = call i32 @mempool_free(%struct.TYPE_17__* %276, i32 %279)
  br label %470

281:                                              ; preds = %269
  %282 = load %struct.lpfc_vport*, %struct.lpfc_vport** %5, align 8
  %283 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %284 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %283, i32 0, i32 1
  store %struct.lpfc_vport* %282, %struct.lpfc_vport** %284, align 8
  %285 = load i32, i32* @lpfc_mbx_cmpl_read_sparam, align 4
  %286 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %287 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %286, i32 0, i32 0
  store i32 %285, i32* %287, align 8
  %288 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %289 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %290 = load i32, i32* @MBX_NOWAIT, align 4
  %291 = call i32 @lpfc_sli_issue_mbox(%struct.lpfc_hba* %288, %struct.TYPE_17__* %289, i32 %290)
  store i32 %291, i32* %11, align 4
  %292 = load i32, i32* %11, align 4
  %293 = load i32, i32* @MBX_NOT_FINISHED, align 4
  %294 = icmp eq i32 %292, %293
  br i1 %294, label %295, label %315

295:                                              ; preds = %281
  %296 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %297 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %296, i32 0, i32 2
  %298 = load i64, i64* %297, align 8
  %299 = inttoptr i64 %298 to %struct.lpfc_dmabuf*
  store %struct.lpfc_dmabuf* %299, %struct.lpfc_dmabuf** %10, align 8
  %300 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %301 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %10, align 8
  %302 = getelementptr inbounds %struct.lpfc_dmabuf, %struct.lpfc_dmabuf* %301, i32 0, i32 1
  %303 = load i32, i32* %302, align 4
  %304 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %10, align 8
  %305 = getelementptr inbounds %struct.lpfc_dmabuf, %struct.lpfc_dmabuf* %304, i32 0, i32 0
  %306 = load i32, i32* %305, align 4
  %307 = call i32 @lpfc_mbuf_free(%struct.lpfc_hba* %300, i32 %303, i32 %306)
  %308 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %10, align 8
  %309 = call i32 @kfree(%struct.lpfc_dmabuf* %308)
  %310 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %311 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %312 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %311, i32 0, i32 10
  %313 = load i32, i32* %312, align 8
  %314 = call i32 @mempool_free(%struct.TYPE_17__* %310, i32 %313)
  br label %470

315:                                              ; preds = %281
  %316 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %317 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %316, i32 0, i32 7
  %318 = load i32, i32* %317, align 4
  %319 = load i32, i32* @HBA_FCOE_MODE, align 4
  %320 = and i32 %318, %319
  %321 = icmp ne i32 %320, 0
  br i1 %321, label %358, label %322

322:                                              ; preds = %315
  %323 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %324 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %323, i32 0, i32 10
  %325 = load i32, i32* %324, align 8
  %326 = load i32, i32* @GFP_KERNEL, align 4
  %327 = call %struct.TYPE_17__* @mempool_alloc(i32 %325, i32 %326)
  store %struct.TYPE_17__* %327, %struct.TYPE_17__** %7, align 8
  %328 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %329 = icmp ne %struct.TYPE_17__* %328, null
  br i1 %329, label %331, label %330

330:                                              ; preds = %322
  br label %470

331:                                              ; preds = %322
  %332 = load i32, i32* @LPFC_LOCAL_CFG_LINK, align 4
  %333 = load %struct.lpfc_vport*, %struct.lpfc_vport** %5, align 8
  %334 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %333, i32 0, i32 3
  store i32 %332, i32* %334, align 4
  %335 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %336 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %337 = call i32 @lpfc_config_link(%struct.lpfc_hba* %335, %struct.TYPE_17__* %336)
  %338 = load %struct.lpfc_vport*, %struct.lpfc_vport** %5, align 8
  %339 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %340 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %339, i32 0, i32 1
  store %struct.lpfc_vport* %338, %struct.lpfc_vport** %340, align 8
  %341 = load i32, i32* @lpfc_mbx_cmpl_local_config_link, align 4
  %342 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %343 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %342, i32 0, i32 0
  store i32 %341, i32* %343, align 8
  %344 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %345 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %346 = load i32, i32* @MBX_NOWAIT, align 4
  %347 = call i32 @lpfc_sli_issue_mbox(%struct.lpfc_hba* %344, %struct.TYPE_17__* %345, i32 %346)
  store i32 %347, i32* %11, align 4
  %348 = load i32, i32* %11, align 4
  %349 = load i32, i32* @MBX_NOT_FINISHED, align 4
  %350 = icmp eq i32 %348, %349
  br i1 %350, label %351, label %357

351:                                              ; preds = %331
  %352 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %353 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %354 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %353, i32 0, i32 10
  %355 = load i32, i32* %354, align 8
  %356 = call i32 @mempool_free(%struct.TYPE_17__* %352, i32 %355)
  br label %470

357:                                              ; preds = %331
  br label %469

358:                                              ; preds = %315
  %359 = load i32, i32* @LPFC_VPORT_UNKNOWN, align 4
  %360 = load %struct.lpfc_vport*, %struct.lpfc_vport** %5, align 8
  %361 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %360, i32 0, i32 3
  store i32 %359, i32* %361, align 4
  %362 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %363 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %362, i32 0, i32 7
  %364 = load i32, i32* %363, align 4
  %365 = load i32, i32* @HBA_FIP_SUPPORT, align 4
  %366 = and i32 %364, %365
  %367 = icmp ne i32 %366, 0
  br i1 %367, label %417, label %368

368:                                              ; preds = %358
  %369 = load i32, i32* @GFP_KERNEL, align 4
  %370 = call %struct.lpfc_dmabuf* @kzalloc(i32 8, i32 %369)
  %371 = bitcast %struct.lpfc_dmabuf* %370 to %struct.fcf_record*
  store %struct.fcf_record* %371, %struct.fcf_record** %12, align 8
  %372 = load %struct.fcf_record*, %struct.fcf_record** %12, align 8
  %373 = icmp ne %struct.fcf_record* %372, null
  %374 = xor i1 %373, true
  %375 = zext i1 %374 to i32
  %376 = call i64 @unlikely(i32 %375)
  %377 = icmp ne i64 %376, 0
  br i1 %377, label %378, label %387

378:                                              ; preds = %368
  %379 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %380 = load i32, i32* @KERN_ERR, align 4
  %381 = load i32, i32* @LOG_MBOX, align 4
  %382 = load i32, i32* @LOG_SLI, align 4
  %383 = or i32 %381, %382
  %384 = call i32 (%struct.lpfc_hba*, i32, i32, i8*, ...) @lpfc_printf_log(%struct.lpfc_hba* %379, i32 %380, i32 %383, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.3, i64 0, i64 0))
  %385 = load i32, i32* @ENODEV, align 4
  %386 = sub nsw i32 0, %385
  store i32 %386, i32* %11, align 4
  br label %470

387:                                              ; preds = %368
  %388 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %389 = load %struct.fcf_record*, %struct.fcf_record** %12, align 8
  %390 = bitcast %struct.fcf_record* %389 to %struct.lpfc_dmabuf*
  %391 = load i32, i32* @LPFC_FCOE_FCF_DEF_INDEX, align 4
  %392 = call i32 @lpfc_sli4_build_dflt_fcf_record(%struct.lpfc_hba* %388, %struct.lpfc_dmabuf* %390, i32 %391)
  %393 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %394 = load %struct.fcf_record*, %struct.fcf_record** %12, align 8
  %395 = bitcast %struct.fcf_record* %394 to %struct.lpfc_dmabuf*
  %396 = call i32 @lpfc_sli4_add_fcf_record(%struct.lpfc_hba* %393, %struct.lpfc_dmabuf* %395)
  store i32 %396, i32* %11, align 4
  %397 = load i32, i32* %11, align 4
  %398 = call i64 @unlikely(i32 %397)
  %399 = icmp ne i64 %398, 0
  br i1 %399, label %400, label %413

400:                                              ; preds = %387
  %401 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %402 = load i32, i32* @KERN_ERR, align 4
  %403 = load i32, i32* @LOG_MBOX, align 4
  %404 = load i32, i32* @LOG_SLI, align 4
  %405 = or i32 %403, %404
  %406 = load i32, i32* %11, align 4
  %407 = call i32 (%struct.lpfc_hba*, i32, i32, i8*, ...) @lpfc_printf_log(%struct.lpfc_hba* %401, i32 %402, i32 %405, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.4, i64 0, i64 0), i32 %406)
  %408 = load i32, i32* @ENODEV, align 4
  %409 = sub nsw i32 0, %408
  store i32 %409, i32* %11, align 4
  %410 = load %struct.fcf_record*, %struct.fcf_record** %12, align 8
  %411 = bitcast %struct.fcf_record* %410 to %struct.lpfc_dmabuf*
  %412 = call i32 @kfree(%struct.lpfc_dmabuf* %411)
  br label %470

413:                                              ; preds = %387
  %414 = load %struct.fcf_record*, %struct.fcf_record** %12, align 8
  %415 = bitcast %struct.fcf_record* %414 to %struct.lpfc_dmabuf*
  %416 = call i32 @kfree(%struct.lpfc_dmabuf* %415)
  br label %417

417:                                              ; preds = %413, %358
  %418 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %419 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %418, i32 0, i32 8
  %420 = call i32 @spin_lock_irq(i32* %419)
  %421 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %422 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %421, i32 0, i32 7
  %423 = load i32, i32* %422, align 4
  %424 = load i32, i32* @FCF_TS_INPROG, align 4
  %425 = and i32 %423, %424
  %426 = icmp ne i32 %425, 0
  br i1 %426, label %427, label %431

427:                                              ; preds = %417
  %428 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %429 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %428, i32 0, i32 8
  %430 = call i32 @spin_unlock_irq(i32* %429)
  br label %486

431:                                              ; preds = %417
  %432 = load i32, i32* @FCF_INIT_DISC, align 4
  %433 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %434 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %433, i32 0, i32 9
  %435 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %434, i32 0, i32 0
  %436 = load i32, i32* %435, align 4
  %437 = or i32 %436, %432
  store i32 %437, i32* %435, align 4
  %438 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %439 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %438, i32 0, i32 8
  %440 = call i32 @spin_unlock_irq(i32* %439)
  %441 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %442 = load i32, i32* @KERN_INFO, align 4
  %443 = load i32, i32* @LOG_FIP, align 4
  %444 = load i32, i32* @LOG_DISCOVERY, align 4
  %445 = or i32 %443, %444
  %446 = call i32 (%struct.lpfc_hba*, i32, i32, i8*, ...) @lpfc_printf_log(%struct.lpfc_hba* %441, i32 %442, i32 %445, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.5, i64 0, i64 0))
  %447 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %448 = load i32, i32* @LPFC_FCOE_FCF_GET_FIRST, align 4
  %449 = call i32 @lpfc_sli4_fcf_scan_read_fcf_rec(%struct.lpfc_hba* %447, i32 %448)
  store i32 %449, i32* %11, align 4
  %450 = load i32, i32* %11, align 4
  %451 = icmp ne i32 %450, 0
  br i1 %451, label %452, label %466

452:                                              ; preds = %431
  %453 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %454 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %453, i32 0, i32 8
  %455 = call i32 @spin_lock_irq(i32* %454)
  %456 = load i32, i32* @FCF_INIT_DISC, align 4
  %457 = xor i32 %456, -1
  %458 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %459 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %458, i32 0, i32 9
  %460 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %459, i32 0, i32 0
  %461 = load i32, i32* %460, align 4
  %462 = and i32 %461, %457
  store i32 %462, i32* %460, align 4
  %463 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %464 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %463, i32 0, i32 8
  %465 = call i32 @spin_unlock_irq(i32* %464)
  br label %470

466:                                              ; preds = %431
  %467 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %468 = call i32 @lpfc_sli4_clear_fcf_rr_bmask(%struct.lpfc_hba* %467)
  br label %469

469:                                              ; preds = %466, %357
  br label %486

470:                                              ; preds = %452, %400, %378, %351, %330, %295, %275, %268
  %471 = load %struct.lpfc_vport*, %struct.lpfc_vport** %5, align 8
  %472 = load i32, i32* @FC_VPORT_FAILED, align 4
  %473 = call i32 @lpfc_vport_set_state(%struct.lpfc_vport* %471, i32 %472)
  %474 = load %struct.lpfc_vport*, %struct.lpfc_vport** %5, align 8
  %475 = load i32, i32* @KERN_ERR, align 4
  %476 = load i32, i32* @LOG_MBOX, align 4
  %477 = load %struct.lpfc_vport*, %struct.lpfc_vport** %5, align 8
  %478 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %477, i32 0, i32 3
  %479 = load i32, i32* %478, align 4
  %480 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %481 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %482 = call i32 @lpfc_printf_vlog(%struct.lpfc_vport* %474, i32 %475, i32 %476, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.6, i64 0, i64 0), i32 %479, %struct.TYPE_17__* %480, %struct.TYPE_17__* %481)
  %483 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %484 = load %struct.lpfc_vport*, %struct.lpfc_vport** %5, align 8
  %485 = call i32 @lpfc_issue_clear_la(%struct.lpfc_hba* %483, %struct.lpfc_vport* %484)
  br label %486

486:                                              ; preds = %470, %469, %427
  ret void
}

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @bf_get(i32, %struct.lpfc_mbx_read_top*) #1

declare dso_local i32 @lpfc_printf_log(%struct.lpfc_hba*, i32, i32, i8*, ...) #1

declare dso_local %struct.Scsi_Host* @lpfc_shost_from_vport(%struct.lpfc_vport*) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @lpfc_linkup(%struct.lpfc_hba*) #1

declare dso_local %struct.TYPE_17__* @mempool_alloc(i32, i32) #1

declare dso_local i32 @lpfc_read_sparam(%struct.lpfc_hba*, %struct.TYPE_17__*, i32) #1

declare dso_local i32 @mempool_free(%struct.TYPE_17__*, i32) #1

declare dso_local i32 @lpfc_sli_issue_mbox(%struct.lpfc_hba*, %struct.TYPE_17__*, i32) #1

declare dso_local i32 @lpfc_mbuf_free(%struct.lpfc_hba*, i32, i32) #1

declare dso_local i32 @kfree(%struct.lpfc_dmabuf*) #1

declare dso_local i32 @lpfc_config_link(%struct.lpfc_hba*, %struct.TYPE_17__*) #1

declare dso_local %struct.lpfc_dmabuf* @kzalloc(i32, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @lpfc_sli4_build_dflt_fcf_record(%struct.lpfc_hba*, %struct.lpfc_dmabuf*, i32) #1

declare dso_local i32 @lpfc_sli4_add_fcf_record(%struct.lpfc_hba*, %struct.lpfc_dmabuf*) #1

declare dso_local i32 @lpfc_sli4_fcf_scan_read_fcf_rec(%struct.lpfc_hba*, i32) #1

declare dso_local i32 @lpfc_sli4_clear_fcf_rr_bmask(%struct.lpfc_hba*) #1

declare dso_local i32 @lpfc_vport_set_state(%struct.lpfc_vport*, i32) #1

declare dso_local i32 @lpfc_printf_vlog(%struct.lpfc_vport*, i32, i32, i8*, i32, %struct.TYPE_17__*, %struct.TYPE_17__*) #1

declare dso_local i32 @lpfc_issue_clear_la(%struct.lpfc_hba*, %struct.lpfc_vport*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
