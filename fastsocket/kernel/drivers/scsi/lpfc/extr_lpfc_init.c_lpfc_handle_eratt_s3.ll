; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/lpfc/extr_lpfc_init.c_lpfc_handle_eratt_s3.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/lpfc/extr_lpfc_init.c_lpfc_handle_eratt_s3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpfc_hba = type { i32, i32, i32*, i32, i32, %struct.lpfc_vport*, i64, i32, i32, %struct.lpfc_sli }
%struct.lpfc_vport = type { i32 }
%struct.lpfc_sli = type { i64, %struct.lpfc_sli_ring*, i32 }
%struct.lpfc_sli_ring = type { i32 }
%struct.temp_event = type { i64, i32, i32 }
%struct.Scsi_Host = type { i32 }

@DEFER_ERATT = common dso_local global i32 0, align 4
@HS_FFER6 = common dso_local global i32 0, align 4
@HS_FFER8 = common dso_local global i32 0, align 4
@KERN_INFO = common dso_local global i32 0, align 4
@LOG_LINK_EVENT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"1301 Re-establishing Link Data: x%x x%x x%x\0A\00", align 1
@.str.1 = private unnamed_addr constant [62 x i8] c"2861 Host Authentication device zeroization Data:x%x x%x x%x\0A\00", align 1
@LPFC_SLI_ACTIVE = common dso_local global i32 0, align 4
@LPFC_MBX_NO_WAIT = common dso_local global i32 0, align 4
@HS_CRIT_TEMP = common dso_local global i32 0, align 4
@TEMPERATURE_OFFSET = common dso_local global i64 0, align 8
@FC_REG_TEMPERATURE_EVENT = common dso_local global i32 0, align 4
@LPFC_CRIT_TEMP = common dso_local global i32 0, align 4
@KERN_ERR = common dso_local global i32 0, align 4
@LOG_INIT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [93 x i8] c"0406 Adapter maximum temperature exceeded (%ld), taking this port offline Data: x%x x%x x%x\0A\00", align 1
@LPFC_NL_VENDOR_ID = common dso_local global i32 0, align 4
@HBA_OVER_TEMP = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [47 x i8] c"0457 Adapter Hardware Error Data: x%x x%x x%x\0A\00", align 1
@FC_REG_DUMP_EVENT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.lpfc_hba*)* @lpfc_handle_eratt_s3 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lpfc_handle_eratt_s3(%struct.lpfc_hba* %0) #0 {
  %2 = alloca %struct.lpfc_hba*, align 8
  %3 = alloca %struct.lpfc_vport*, align 8
  %4 = alloca %struct.lpfc_sli*, align 8
  %5 = alloca %struct.lpfc_sli_ring*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.temp_event, align 8
  %9 = alloca %struct.Scsi_Host*, align 8
  store %struct.lpfc_hba* %0, %struct.lpfc_hba** %2, align 8
  %10 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %11 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %10, i32 0, i32 5
  %12 = load %struct.lpfc_vport*, %struct.lpfc_vport** %11, align 8
  store %struct.lpfc_vport* %12, %struct.lpfc_vport** %3, align 8
  %13 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %14 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %13, i32 0, i32 9
  store %struct.lpfc_sli* %14, %struct.lpfc_sli** %4, align 8
  %15 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %16 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %15, i32 0, i32 8
  %17 = load i32, i32* %16, align 4
  %18 = call i64 @pci_channel_offline(i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %33

20:                                               ; preds = %1
  %21 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %22 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %21, i32 0, i32 3
  %23 = call i32 @spin_lock_irq(i32* %22)
  %24 = load i32, i32* @DEFER_ERATT, align 4
  %25 = xor i32 %24, -1
  %26 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %27 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = and i32 %28, %25
  store i32 %29, i32* %27, align 8
  %30 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %31 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %30, i32 0, i32 3
  %32 = call i32 @spin_unlock_irq(i32* %31)
  br label %243

33:                                               ; preds = %1
  %34 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %35 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %34, i32 0, i32 7
  %36 = load i32, i32* %35, align 8
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %39, label %38

38:                                               ; preds = %33
  br label %243

39:                                               ; preds = %33
  %40 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %41 = call i32 @lpfc_board_errevt_to_mgmt(%struct.lpfc_hba* %40)
  %42 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %43 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = load i32, i32* @DEFER_ERATT, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %39
  %49 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %50 = call i32 @lpfc_handle_deferred_eratt(%struct.lpfc_hba* %49)
  br label %51

51:                                               ; preds = %48, %39
  %52 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %53 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* @HS_FFER6, align 4
  %56 = and i32 %54, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %65, label %58

58:                                               ; preds = %51
  %59 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %60 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* @HS_FFER8, align 4
  %63 = and i32 %61, %62
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %154

65:                                               ; preds = %58, %51
  %66 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %67 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* @HS_FFER6, align 4
  %70 = and i32 %68, %69
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %90

72:                                               ; preds = %65
  %73 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %74 = load i32, i32* @KERN_INFO, align 4
  %75 = load i32, i32* @LOG_LINK_EVENT, align 4
  %76 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %77 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %80 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %79, i32 0, i32 2
  %81 = load i32*, i32** %80, align 8
  %82 = getelementptr inbounds i32, i32* %81, i64 0
  %83 = load i32, i32* %82, align 4
  %84 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %85 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %84, i32 0, i32 2
  %86 = load i32*, i32** %85, align 8
  %87 = getelementptr inbounds i32, i32* %86, i64 1
  %88 = load i32, i32* %87, align 4
  %89 = call i32 (%struct.lpfc_hba*, i32, i32, i8*, i32, i32, i32, ...) @lpfc_printf_log(%struct.lpfc_hba* %73, i32 %74, i32 %75, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i32 %78, i32 %83, i32 %88)
  br label %90

90:                                               ; preds = %72, %65
  %91 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %92 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = load i32, i32* @HS_FFER8, align 4
  %95 = and i32 %93, %94
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %115

97:                                               ; preds = %90
  %98 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %99 = load i32, i32* @KERN_INFO, align 4
  %100 = load i32, i32* @LOG_LINK_EVENT, align 4
  %101 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %102 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 4
  %104 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %105 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %104, i32 0, i32 2
  %106 = load i32*, i32** %105, align 8
  %107 = getelementptr inbounds i32, i32* %106, i64 0
  %108 = load i32, i32* %107, align 4
  %109 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %110 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %109, i32 0, i32 2
  %111 = load i32*, i32** %110, align 8
  %112 = getelementptr inbounds i32, i32* %111, i64 1
  %113 = load i32, i32* %112, align 4
  %114 = call i32 (%struct.lpfc_hba*, i32, i32, i8*, i32, i32, i32, ...) @lpfc_printf_log(%struct.lpfc_hba* %98, i32 %99, i32 %100, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.1, i64 0, i64 0), i32 %103, i32 %108, i32 %113)
  br label %115

115:                                              ; preds = %97, %90
  %116 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %117 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %116, i32 0, i32 3
  %118 = call i32 @spin_lock_irq(i32* %117)
  %119 = load i32, i32* @LPFC_SLI_ACTIVE, align 4
  %120 = xor i32 %119, -1
  %121 = load %struct.lpfc_sli*, %struct.lpfc_sli** %4, align 8
  %122 = getelementptr inbounds %struct.lpfc_sli, %struct.lpfc_sli* %121, i32 0, i32 2
  %123 = load i32, i32* %122, align 8
  %124 = and i32 %123, %120
  store i32 %124, i32* %122, align 8
  %125 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %126 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %125, i32 0, i32 3
  %127 = call i32 @spin_unlock_irq(i32* %126)
  %128 = load %struct.lpfc_sli*, %struct.lpfc_sli** %4, align 8
  %129 = getelementptr inbounds %struct.lpfc_sli, %struct.lpfc_sli* %128, i32 0, i32 1
  %130 = load %struct.lpfc_sli_ring*, %struct.lpfc_sli_ring** %129, align 8
  %131 = load %struct.lpfc_sli*, %struct.lpfc_sli** %4, align 8
  %132 = getelementptr inbounds %struct.lpfc_sli, %struct.lpfc_sli* %131, i32 0, i32 0
  %133 = load i64, i64* %132, align 8
  %134 = getelementptr inbounds %struct.lpfc_sli_ring, %struct.lpfc_sli_ring* %130, i64 %133
  store %struct.lpfc_sli_ring* %134, %struct.lpfc_sli_ring** %5, align 8
  %135 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %136 = load %struct.lpfc_sli_ring*, %struct.lpfc_sli_ring** %5, align 8
  %137 = call i32 @lpfc_sli_abort_iocb_ring(%struct.lpfc_hba* %135, %struct.lpfc_sli_ring* %136)
  %138 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %139 = load i32, i32* @LPFC_MBX_NO_WAIT, align 4
  %140 = call i32 @lpfc_offline_prep(%struct.lpfc_hba* %138, i32 %139)
  %141 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %142 = call i32 @lpfc_offline(%struct.lpfc_hba* %141)
  %143 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %144 = call i32 @lpfc_sli_brdrestart(%struct.lpfc_hba* %143)
  %145 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %146 = call i64 @lpfc_online(%struct.lpfc_hba* %145)
  %147 = icmp eq i64 %146, 0
  br i1 %147, label %148, label %151

148:                                              ; preds = %115
  %149 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %150 = call i32 @lpfc_unblock_mgmt_io(%struct.lpfc_hba* %149)
  br label %243

151:                                              ; preds = %115
  %152 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %153 = call i32 @lpfc_unblock_mgmt_io(%struct.lpfc_hba* %152)
  br label %242

154:                                              ; preds = %58
  %155 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %156 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %155, i32 0, i32 1
  %157 = load i32, i32* %156, align 4
  %158 = load i32, i32* @HS_CRIT_TEMP, align 4
  %159 = and i32 %157, %158
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %161, label %213

161:                                              ; preds = %154
  %162 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %163 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %162, i32 0, i32 6
  %164 = load i64, i64* %163, align 8
  %165 = load i64, i64* @TEMPERATURE_OFFSET, align 8
  %166 = add nsw i64 %164, %165
  %167 = call i64 @readl(i64 %166)
  store i64 %167, i64* %7, align 8
  %168 = load i32, i32* @FC_REG_TEMPERATURE_EVENT, align 4
  %169 = getelementptr inbounds %struct.temp_event, %struct.temp_event* %8, i32 0, i32 2
  store i32 %168, i32* %169, align 4
  %170 = load i32, i32* @LPFC_CRIT_TEMP, align 4
  %171 = getelementptr inbounds %struct.temp_event, %struct.temp_event* %8, i32 0, i32 1
  store i32 %170, i32* %171, align 8
  %172 = load i64, i64* %7, align 8
  %173 = getelementptr inbounds %struct.temp_event, %struct.temp_event* %8, i32 0, i32 0
  store i64 %172, i64* %173, align 8
  %174 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %175 = load i32, i32* @KERN_ERR, align 4
  %176 = load i32, i32* @LOG_INIT, align 4
  %177 = load i64, i64* %7, align 8
  %178 = trunc i64 %177 to i32
  %179 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %180 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %179, i32 0, i32 1
  %181 = load i32, i32* %180, align 4
  %182 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %183 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %182, i32 0, i32 2
  %184 = load i32*, i32** %183, align 8
  %185 = getelementptr inbounds i32, i32* %184, i64 0
  %186 = load i32, i32* %185, align 4
  %187 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %188 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %187, i32 0, i32 2
  %189 = load i32*, i32** %188, align 8
  %190 = getelementptr inbounds i32, i32* %189, i64 1
  %191 = load i32, i32* %190, align 4
  %192 = call i32 (%struct.lpfc_hba*, i32, i32, i8*, i32, i32, i32, ...) @lpfc_printf_log(%struct.lpfc_hba* %174, i32 %175, i32 %176, i8* getelementptr inbounds ([93 x i8], [93 x i8]* @.str.2, i64 0, i64 0), i32 %178, i32 %181, i32 %186, i32 %191)
  %193 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %194 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %193, i32 0, i32 5
  %195 = load %struct.lpfc_vport*, %struct.lpfc_vport** %194, align 8
  %196 = call %struct.Scsi_Host* @lpfc_shost_from_vport(%struct.lpfc_vport* %195)
  store %struct.Scsi_Host* %196, %struct.Scsi_Host** %9, align 8
  %197 = load %struct.Scsi_Host*, %struct.Scsi_Host** %9, align 8
  %198 = call i32 (...) @fc_get_event_number()
  %199 = bitcast %struct.temp_event* %8 to i8*
  %200 = load i32, i32* @LPFC_NL_VENDOR_ID, align 4
  %201 = call i32 @fc_host_post_vendor_event(%struct.Scsi_Host* %197, i32 %198, i32 16, i8* %199, i32 %200)
  %202 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %203 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %202, i32 0, i32 3
  %204 = call i32 @spin_lock_irq(i32* %203)
  %205 = load i32, i32* @HBA_OVER_TEMP, align 4
  %206 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %207 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %206, i32 0, i32 4
  store i32 %205, i32* %207, align 4
  %208 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %209 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %208, i32 0, i32 3
  %210 = call i32 @spin_unlock_irq(i32* %209)
  %211 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %212 = call i32 @lpfc_offline_eratt(%struct.lpfc_hba* %211)
  br label %241

213:                                              ; preds = %154
  %214 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %215 = load i32, i32* @KERN_ERR, align 4
  %216 = load i32, i32* @LOG_INIT, align 4
  %217 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %218 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %217, i32 0, i32 1
  %219 = load i32, i32* %218, align 4
  %220 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %221 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %220, i32 0, i32 2
  %222 = load i32*, i32** %221, align 8
  %223 = getelementptr inbounds i32, i32* %222, i64 0
  %224 = load i32, i32* %223, align 4
  %225 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %226 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %225, i32 0, i32 2
  %227 = load i32*, i32** %226, align 8
  %228 = getelementptr inbounds i32, i32* %227, i64 1
  %229 = load i32, i32* %228, align 4
  %230 = call i32 (%struct.lpfc_hba*, i32, i32, i8*, i32, i32, i32, ...) @lpfc_printf_log(%struct.lpfc_hba* %214, i32 %215, i32 %216, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.3, i64 0, i64 0), i32 %219, i32 %224, i32 %229)
  %231 = load i64, i64* @FC_REG_DUMP_EVENT, align 8
  store i64 %231, i64* %6, align 8
  %232 = load %struct.lpfc_vport*, %struct.lpfc_vport** %3, align 8
  %233 = call %struct.Scsi_Host* @lpfc_shost_from_vport(%struct.lpfc_vport* %232)
  store %struct.Scsi_Host* %233, %struct.Scsi_Host** %9, align 8
  %234 = load %struct.Scsi_Host*, %struct.Scsi_Host** %9, align 8
  %235 = call i32 (...) @fc_get_event_number()
  %236 = bitcast i64* %6 to i8*
  %237 = load i32, i32* @LPFC_NL_VENDOR_ID, align 4
  %238 = call i32 @fc_host_post_vendor_event(%struct.Scsi_Host* %234, i32 %235, i32 8, i8* %236, i32 %237)
  %239 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %240 = call i32 @lpfc_offline_eratt(%struct.lpfc_hba* %239)
  br label %241

241:                                              ; preds = %213, %161
  br label %242

242:                                              ; preds = %241, %151
  br label %243

243:                                              ; preds = %242, %148, %38, %20
  ret void
}

declare dso_local i64 @pci_channel_offline(i32) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @lpfc_board_errevt_to_mgmt(%struct.lpfc_hba*) #1

declare dso_local i32 @lpfc_handle_deferred_eratt(%struct.lpfc_hba*) #1

declare dso_local i32 @lpfc_printf_log(%struct.lpfc_hba*, i32, i32, i8*, i32, i32, i32, ...) #1

declare dso_local i32 @lpfc_sli_abort_iocb_ring(%struct.lpfc_hba*, %struct.lpfc_sli_ring*) #1

declare dso_local i32 @lpfc_offline_prep(%struct.lpfc_hba*, i32) #1

declare dso_local i32 @lpfc_offline(%struct.lpfc_hba*) #1

declare dso_local i32 @lpfc_sli_brdrestart(%struct.lpfc_hba*) #1

declare dso_local i64 @lpfc_online(%struct.lpfc_hba*) #1

declare dso_local i32 @lpfc_unblock_mgmt_io(%struct.lpfc_hba*) #1

declare dso_local i64 @readl(i64) #1

declare dso_local %struct.Scsi_Host* @lpfc_shost_from_vport(%struct.lpfc_vport*) #1

declare dso_local i32 @fc_host_post_vendor_event(%struct.Scsi_Host*, i32, i32, i8*, i32) #1

declare dso_local i32 @fc_get_event_number(...) #1

declare dso_local i32 @lpfc_offline_eratt(%struct.lpfc_hba*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
