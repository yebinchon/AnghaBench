; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/lpfc/extr_lpfc_init.c_lpfc_handle_eratt_s4.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/lpfc/extr_lpfc_init.c_lpfc_handle_eratt_s4.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpfc_hba = type { i32, i32, %struct.TYPE_8__, i32, i32, %struct.lpfc_vport* }
%struct.TYPE_8__ = type { %struct.TYPE_7__, %struct.lpfc_register }
%struct.TYPE_7__ = type { %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i32, i32, i32 }
%struct.TYPE_5__ = type { i32, i32 }
%struct.lpfc_register = type { i32, i32 }
%struct.lpfc_vport = type { i32 }
%struct.Scsi_Host = type { i32 }

@lpfc_sli_intf_if_type = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@KERN_ERR = common dso_local global i32 0, align 4
@LOG_INIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"3151 PCI bus read access failure: x%x\0A\00", align 1
@lpfc_sliport_status_oti = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [54 x i8] c"2889 Port Overtemperature event, taking port offline\0A\00", align 1
@HBA_OVER_TEMP = common dso_local global i32 0, align 4
@SLIPORT_ERR1_REG_ERR_CODE_2 = common dso_local global i32 0, align 4
@SLIPORT_ERR2_REG_FW_RESTART = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [36 x i8] c"3143 Port Down: Firmware Restarted\0A\00", align 1
@SLIPORT_ERR2_REG_FORCED_DUMP = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [28 x i8] c"3144 Port Down: Debug Dump\0A\00", align 1
@SLIPORT_ERR2_REG_FUNC_PROVISON = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [30 x i8] c"3145 Port Down: Provisioning\0A\00", align 1
@LPFC_MBX_NO_WAIT = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [50 x i8] c"3152 Unrecoverable error, bring the port offline\0A\00", align 1
@KERN_WARNING = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [39 x i8] c"3123 Report dump event to upper layer\0A\00", align 1
@FC_REG_DUMP_EVENT = common dso_local global i32 0, align 4
@SCSI_NL_VID_TYPE_PCI = common dso_local global i32 0, align 4
@PCI_VENDOR_ID_EMULEX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.lpfc_hba*)* @lpfc_handle_eratt_s4 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lpfc_handle_eratt_s4(%struct.lpfc_hba* %0) #0 {
  %2 = alloca %struct.lpfc_hba*, align 8
  %3 = alloca %struct.lpfc_vport*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.Scsi_Host*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.lpfc_register, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.lpfc_hba* %0, %struct.lpfc_hba** %2, align 8
  %15 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %16 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %15, i32 0, i32 5
  %17 = load %struct.lpfc_vport*, %struct.lpfc_vport** %16, align 8
  store %struct.lpfc_vport* %17, %struct.lpfc_vport** %3, align 8
  %18 = bitcast %struct.lpfc_register* %7 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %18, i8 0, i64 8, i1 false)
  %19 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %20 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %19, i32 0, i32 4
  %21 = load i32, i32* %20, align 8
  %22 = call i64 @pci_channel_offline(i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %1
  br label %208

25:                                               ; preds = %1
  %26 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %27 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %26, i32 0, i32 3
  %28 = load i32, i32* %27, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %31, label %30

30:                                               ; preds = %25
  br label %208

31:                                               ; preds = %25
  %32 = load i32, i32* @lpfc_sli_intf_if_type, align 4
  %33 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %34 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %33, i32 0, i32 2
  %35 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %34, i32 0, i32 1
  %36 = call i32 @bf_get(i32 %32, %struct.lpfc_register* %35)
  store i32 %36, i32* %6, align 4
  %37 = load i32, i32* %6, align 4
  switch i32 %37, label %190 [
    i32 130, label %38
    i32 128, label %66
    i32 129, label %189
  ]

38:                                               ; preds = %31
  %39 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %40 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %39, i32 0, i32 2
  %41 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @lpfc_readl(i32 %44, i32* %10)
  store i32 %45, i32* %12, align 4
  %46 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %47 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %46, i32 0, i32 2
  %48 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @lpfc_readl(i32 %51, i32* %11)
  store i32 %52, i32* %13, align 4
  %53 = load i32, i32* %12, align 4
  %54 = load i32, i32* @EIO, align 4
  %55 = sub nsw i32 0, %54
  %56 = icmp eq i32 %53, %55
  br i1 %56, label %57, label %63

57:                                               ; preds = %38
  %58 = load i32, i32* %13, align 4
  %59 = load i32, i32* @EIO, align 4
  %60 = sub nsw i32 0, %59
  %61 = icmp eq i32 %58, %60
  br i1 %61, label %62, label %63

62:                                               ; preds = %57
  br label %208

63:                                               ; preds = %57, %38
  %64 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %65 = call i32 @lpfc_sli4_offline_eratt(%struct.lpfc_hba* %64)
  br label %191

66:                                               ; preds = %31
  %67 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %68 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %67, i32 0, i32 2
  %69 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 8
  %73 = getelementptr inbounds %struct.lpfc_register, %struct.lpfc_register* %7, i32 0, i32 0
  %74 = call i32 @lpfc_readl(i32 %72, i32* %73)
  store i32 %74, i32* %12, align 4
  %75 = load i32, i32* %12, align 4
  %76 = load i32, i32* @EIO, align 4
  %77 = sub nsw i32 0, %76
  %78 = icmp eq i32 %75, %77
  br i1 %78, label %79, label %91

79:                                               ; preds = %66
  %80 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %81 = load i32, i32* @KERN_ERR, align 4
  %82 = load i32, i32* @LOG_INIT, align 4
  %83 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %84 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %83, i32 0, i32 2
  %85 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %86, i32 0, i32 2
  %88 = load i32, i32* %87, align 8
  %89 = call i32 @readl(i32 %88)
  %90 = call i32 (%struct.lpfc_hba*, i32, i32, i8*, ...) @lpfc_printf_log(%struct.lpfc_hba* %80, i32 %81, i32 %82, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %89)
  br label %208

91:                                               ; preds = %66
  %92 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %93 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %92, i32 0, i32 2
  %94 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  %98 = call i32 @readl(i32 %97)
  store i32 %98, i32* %8, align 4
  %99 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %100 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %99, i32 0, i32 2
  %101 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = call i32 @readl(i32 %104)
  store i32 %105, i32* %9, align 4
  %106 = load i32, i32* @lpfc_sliport_status_oti, align 4
  %107 = call i32 @bf_get(i32 %106, %struct.lpfc_register* %7)
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %125

109:                                              ; preds = %91
  %110 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %111 = load i32, i32* @KERN_ERR, align 4
  %112 = load i32, i32* @LOG_INIT, align 4
  %113 = call i32 (%struct.lpfc_hba*, i32, i32, i8*, ...) @lpfc_printf_log(%struct.lpfc_hba* %110, i32 %111, i32 %112, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.1, i64 0, i64 0))
  %114 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %115 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %114, i32 0, i32 0
  %116 = call i32 @spin_lock_irq(i32* %115)
  %117 = load i32, i32* @HBA_OVER_TEMP, align 4
  %118 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %119 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %118, i32 0, i32 1
  store i32 %117, i32* %119, align 4
  %120 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %121 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %120, i32 0, i32 0
  %122 = call i32 @spin_unlock_irq(i32* %121)
  %123 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %124 = call i32 @lpfc_sli4_offline_eratt(%struct.lpfc_hba* %123)
  br label %191

125:                                              ; preds = %91
  %126 = load i32, i32* %8, align 4
  %127 = load i32, i32* @SLIPORT_ERR1_REG_ERR_CODE_2, align 4
  %128 = icmp eq i32 %126, %127
  br i1 %128, label %129, label %138

129:                                              ; preds = %125
  %130 = load i32, i32* %9, align 4
  %131 = load i32, i32* @SLIPORT_ERR2_REG_FW_RESTART, align 4
  %132 = icmp eq i32 %130, %131
  br i1 %132, label %133, label %138

133:                                              ; preds = %129
  %134 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %135 = load i32, i32* @KERN_ERR, align 4
  %136 = load i32, i32* @LOG_INIT, align 4
  %137 = call i32 (%struct.lpfc_hba*, i32, i32, i8*, ...) @lpfc_printf_log(%struct.lpfc_hba* %134, i32 %135, i32 %136, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0))
  br label %166

138:                                              ; preds = %129, %125
  %139 = load i32, i32* %8, align 4
  %140 = load i32, i32* @SLIPORT_ERR1_REG_ERR_CODE_2, align 4
  %141 = icmp eq i32 %139, %140
  br i1 %141, label %142, label %151

142:                                              ; preds = %138
  %143 = load i32, i32* %9, align 4
  %144 = load i32, i32* @SLIPORT_ERR2_REG_FORCED_DUMP, align 4
  %145 = icmp eq i32 %143, %144
  br i1 %145, label %146, label %151

146:                                              ; preds = %142
  %147 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %148 = load i32, i32* @KERN_ERR, align 4
  %149 = load i32, i32* @LOG_INIT, align 4
  %150 = call i32 (%struct.lpfc_hba*, i32, i32, i8*, ...) @lpfc_printf_log(%struct.lpfc_hba* %147, i32 %148, i32 %149, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0))
  br label %165

151:                                              ; preds = %142, %138
  %152 = load i32, i32* %8, align 4
  %153 = load i32, i32* @SLIPORT_ERR1_REG_ERR_CODE_2, align 4
  %154 = icmp eq i32 %152, %153
  br i1 %154, label %155, label %164

155:                                              ; preds = %151
  %156 = load i32, i32* %9, align 4
  %157 = load i32, i32* @SLIPORT_ERR2_REG_FUNC_PROVISON, align 4
  %158 = icmp eq i32 %156, %157
  br i1 %158, label %159, label %164

159:                                              ; preds = %155
  %160 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %161 = load i32, i32* @KERN_ERR, align 4
  %162 = load i32, i32* @LOG_INIT, align 4
  %163 = call i32 (%struct.lpfc_hba*, i32, i32, i8*, ...) @lpfc_printf_log(%struct.lpfc_hba* %160, i32 %161, i32 %162, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i64 0, i64 0))
  br label %164

164:                                              ; preds = %159, %155, %151
  br label %165

165:                                              ; preds = %164, %146
  br label %166

166:                                              ; preds = %165, %133
  %167 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %168 = load i32, i32* @LPFC_MBX_NO_WAIT, align 4
  %169 = call i32 @lpfc_sli4_port_sta_fn_reset(%struct.lpfc_hba* %167, i32 %168)
  store i32 %169, i32* %14, align 4
  %170 = load i32, i32* %14, align 4
  %171 = icmp eq i32 %170, 0
  br i1 %171, label %172, label %182

172:                                              ; preds = %166
  %173 = load i32, i32* %8, align 4
  %174 = load i32, i32* @SLIPORT_ERR1_REG_ERR_CODE_2, align 4
  %175 = icmp eq i32 %173, %174
  br i1 %175, label %176, label %181

176:                                              ; preds = %172
  %177 = load i32, i32* %9, align 4
  %178 = load i32, i32* @SLIPORT_ERR2_REG_FORCED_DUMP, align 4
  %179 = icmp eq i32 %177, %178
  br i1 %179, label %180, label %181

180:                                              ; preds = %176
  br label %208

181:                                              ; preds = %176, %172
  br label %191

182:                                              ; preds = %166
  %183 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %184 = load i32, i32* @KERN_ERR, align 4
  %185 = load i32, i32* @LOG_INIT, align 4
  %186 = call i32 (%struct.lpfc_hba*, i32, i32, i8*, ...) @lpfc_printf_log(%struct.lpfc_hba* %183, i32 %184, i32 %185, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.5, i64 0, i64 0))
  %187 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %188 = call i32 @lpfc_sli4_offline_eratt(%struct.lpfc_hba* %187)
  br label %191

189:                                              ; preds = %31
  br label %190

190:                                              ; preds = %31, %189
  br label %191

191:                                              ; preds = %190, %182, %181, %109, %63
  %192 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %193 = load i32, i32* @KERN_WARNING, align 4
  %194 = load i32, i32* @LOG_INIT, align 4
  %195 = call i32 (%struct.lpfc_hba*, i32, i32, i8*, ...) @lpfc_printf_log(%struct.lpfc_hba* %192, i32 %193, i32 %194, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.6, i64 0, i64 0))
  %196 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %197 = call i32 @lpfc_board_errevt_to_mgmt(%struct.lpfc_hba* %196)
  %198 = load i32, i32* @FC_REG_DUMP_EVENT, align 4
  store i32 %198, i32* %4, align 4
  %199 = load %struct.lpfc_vport*, %struct.lpfc_vport** %3, align 8
  %200 = call %struct.Scsi_Host* @lpfc_shost_from_vport(%struct.lpfc_vport* %199)
  store %struct.Scsi_Host* %200, %struct.Scsi_Host** %5, align 8
  %201 = load %struct.Scsi_Host*, %struct.Scsi_Host** %5, align 8
  %202 = call i32 (...) @fc_get_event_number()
  %203 = bitcast i32* %4 to i8*
  %204 = load i32, i32* @SCSI_NL_VID_TYPE_PCI, align 4
  %205 = load i32, i32* @PCI_VENDOR_ID_EMULEX, align 4
  %206 = or i32 %204, %205
  %207 = call i32 @fc_host_post_vendor_event(%struct.Scsi_Host* %201, i32 %202, i32 4, i8* %203, i32 %206)
  br label %208

208:                                              ; preds = %191, %180, %79, %62, %30, %24
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i64 @pci_channel_offline(i32) #2

declare dso_local i32 @bf_get(i32, %struct.lpfc_register*) #2

declare dso_local i32 @lpfc_readl(i32, i32*) #2

declare dso_local i32 @lpfc_sli4_offline_eratt(%struct.lpfc_hba*) #2

declare dso_local i32 @lpfc_printf_log(%struct.lpfc_hba*, i32, i32, i8*, ...) #2

declare dso_local i32 @readl(i32) #2

declare dso_local i32 @spin_lock_irq(i32*) #2

declare dso_local i32 @spin_unlock_irq(i32*) #2

declare dso_local i32 @lpfc_sli4_port_sta_fn_reset(%struct.lpfc_hba*, i32) #2

declare dso_local i32 @lpfc_board_errevt_to_mgmt(%struct.lpfc_hba*) #2

declare dso_local %struct.Scsi_Host* @lpfc_shost_from_vport(%struct.lpfc_vport*) #2

declare dso_local i32 @fc_host_post_vendor_event(%struct.Scsi_Host*, i32, i32, i8*, i32) #2

declare dso_local i32 @fc_get_event_number(...) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
