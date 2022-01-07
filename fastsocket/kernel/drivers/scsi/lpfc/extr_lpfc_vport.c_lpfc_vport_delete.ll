; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/lpfc/extr_lpfc_vport.c_lpfc_vport_delete.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/lpfc/extr_lpfc_vport.c_lpfc_vport_delete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fc_vport = type { i64, i64 }
%struct.lpfc_nodelist = type { i64 }
%struct.Scsi_Host = type { i32 }
%struct.lpfc_vport = type { i64, i32, i32, i64, i32, i32, i32, i64, i32, %struct.lpfc_hba*, i64, i64 }
%struct.lpfc_hba = type { i32, i64, i64, i32, %struct.lpfc_vport*, i32, i32 }

@LPFC_PHYSICAL_PORT = common dso_local global i64 0, align 8
@KERN_ERR = common dso_local global i32 0, align 4
@LOG_VPORT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [55 x i8] c"1812 vport_delete failed: Cannot delete physical host\0A\00", align 1
@VPORT_ERROR = common dso_local global i32 0, align 4
@STATIC_VPORT = common dso_local global i32 0, align 4
@FC_UNLOADING = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [55 x i8] c"1837 vport_delete failed: Cannot delete static vport.\0A\00", align 1
@LPFC_VPORT_FAILED = common dso_local global i64 0, align 8
@LPFC_VPORT_READY = common dso_local global i64 0, align 8
@EAGAIN = common dso_local global i32 0, align 4
@VPORT_INVAL = common dso_local global i32 0, align 4
@NameServer_DID = common dso_local global i32 0, align 4
@Fabric_DID = common dso_local global i32 0, align 4
@NLP_STE_UNMAPPED_NODE = common dso_local global i64 0, align 8
@LPFC_LINK_UP = common dso_local global i64 0, align 8
@NLP_STE_UNUSED_NODE = common dso_local global i32 0, align 4
@LPFC_TOPOLOGY_LOOP = common dso_local global i64 0, align 8
@SLI_CTNS_DA_ID = common dso_local global i32 0, align 4
@KERN_WARNING = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [52 x i8] c"1829 CT command failed to delete objects on fabric\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@LPFC_VPI_REGISTERED = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [21 x i8] c"1828 Vport Deleted.\0A\00", align 1
@VPORT_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @lpfc_vport_delete(%struct.fc_vport* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.fc_vport*, align 8
  %4 = alloca %struct.lpfc_nodelist*, align 8
  %5 = alloca %struct.Scsi_Host*, align 8
  %6 = alloca %struct.lpfc_vport*, align 8
  %7 = alloca %struct.lpfc_hba*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.fc_vport* %0, %struct.fc_vport** %3, align 8
  store %struct.lpfc_nodelist* null, %struct.lpfc_nodelist** %4, align 8
  %11 = load %struct.fc_vport*, %struct.fc_vport** %3, align 8
  %12 = getelementptr inbounds %struct.fc_vport, %struct.fc_vport* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = inttoptr i64 %13 to %struct.Scsi_Host*
  store %struct.Scsi_Host* %14, %struct.Scsi_Host** %5, align 8
  %15 = load %struct.fc_vport*, %struct.fc_vport** %3, align 8
  %16 = getelementptr inbounds %struct.fc_vport, %struct.fc_vport* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = inttoptr i64 %17 to %struct.lpfc_vport**
  %19 = load %struct.lpfc_vport*, %struct.lpfc_vport** %18, align 8
  store %struct.lpfc_vport* %19, %struct.lpfc_vport** %6, align 8
  %20 = load %struct.lpfc_vport*, %struct.lpfc_vport** %6, align 8
  %21 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %20, i32 0, i32 9
  %22 = load %struct.lpfc_hba*, %struct.lpfc_hba** %21, align 8
  store %struct.lpfc_hba* %22, %struct.lpfc_hba** %7, align 8
  store i32 0, i32* %9, align 4
  %23 = load %struct.lpfc_vport*, %struct.lpfc_vport** %6, align 8
  %24 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @LPFC_PHYSICAL_PORT, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %34

28:                                               ; preds = %1
  %29 = load %struct.lpfc_vport*, %struct.lpfc_vport** %6, align 8
  %30 = load i32, i32* @KERN_ERR, align 4
  %31 = load i32, i32* @LOG_VPORT, align 4
  %32 = call i32 @lpfc_printf_vlog(%struct.lpfc_vport* %29, i32 %30, i32 %31, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0))
  %33 = load i32, i32* @VPORT_ERROR, align 4
  store i32 %33, i32* %2, align 4
  br label %460

34:                                               ; preds = %1
  %35 = load %struct.lpfc_vport*, %struct.lpfc_vport** %6, align 8
  %36 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* @STATIC_VPORT, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %56

41:                                               ; preds = %34
  %42 = load %struct.lpfc_hba*, %struct.lpfc_hba** %7, align 8
  %43 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %42, i32 0, i32 4
  %44 = load %struct.lpfc_vport*, %struct.lpfc_vport** %43, align 8
  %45 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* @FC_UNLOADING, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %56, label %50

50:                                               ; preds = %41
  %51 = load %struct.lpfc_vport*, %struct.lpfc_vport** %6, align 8
  %52 = load i32, i32* @KERN_ERR, align 4
  %53 = load i32, i32* @LOG_VPORT, align 4
  %54 = call i32 @lpfc_printf_vlog(%struct.lpfc_vport* %51, i32 %52, i32 %53, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.1, i64 0, i64 0))
  %55 = load i32, i32* @VPORT_ERROR, align 4
  store i32 %55, i32* %2, align 4
  br label %460

56:                                               ; preds = %41, %34
  %57 = load %struct.lpfc_hba*, %struct.lpfc_hba** %7, align 8
  %58 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %57, i32 0, i32 3
  %59 = call i32 @spin_lock_irq(i32* %58)
  %60 = load i32, i32* @FC_UNLOADING, align 4
  %61 = load %struct.lpfc_vport*, %struct.lpfc_vport** %6, align 8
  %62 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 4
  %64 = or i32 %63, %60
  store i32 %64, i32* %62, align 4
  %65 = load %struct.lpfc_hba*, %struct.lpfc_hba** %7, align 8
  %66 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %65, i32 0, i32 3
  %67 = call i32 @spin_unlock_irq(i32* %66)
  %68 = load %struct.lpfc_hba*, %struct.lpfc_hba** %7, align 8
  %69 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %68, i32 0, i32 4
  %70 = load %struct.lpfc_vport*, %struct.lpfc_vport** %69, align 8
  %71 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* @FC_UNLOADING, align 4
  %74 = and i32 %72, %73
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %119, label %76

76:                                               ; preds = %56
  store i32 0, i32* %10, align 4
  br label %77

77:                                               ; preds = %99, %76
  %78 = load i32, i32* %10, align 4
  %79 = load %struct.lpfc_hba*, %struct.lpfc_hba** %7, align 8
  %80 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = mul nsw i32 %81, 3
  %83 = add nsw i32 %82, 3
  %84 = icmp slt i32 %78, %83
  br i1 %84, label %85, label %97

85:                                               ; preds = %77
  %86 = load %struct.lpfc_vport*, %struct.lpfc_vport** %6, align 8
  %87 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %86, i32 0, i32 3
  %88 = load i64, i64* %87, align 8
  %89 = load i64, i64* @LPFC_VPORT_FAILED, align 8
  %90 = icmp sgt i64 %88, %89
  br i1 %90, label %91, label %97

91:                                               ; preds = %85
  %92 = load %struct.lpfc_vport*, %struct.lpfc_vport** %6, align 8
  %93 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %92, i32 0, i32 3
  %94 = load i64, i64* %93, align 8
  %95 = load i64, i64* @LPFC_VPORT_READY, align 8
  %96 = icmp slt i64 %94, %95
  br label %97

97:                                               ; preds = %91, %85, %77
  %98 = phi i1 [ false, %85 ], [ false, %77 ], [ %96, %91 ]
  br i1 %98, label %99, label %103

99:                                               ; preds = %97
  %100 = load i32, i32* %10, align 4
  %101 = add nsw i32 %100, 1
  store i32 %101, i32* %10, align 4
  %102 = call i32 @msleep(i32 1000)
  br label %77

103:                                              ; preds = %97
  %104 = load %struct.lpfc_vport*, %struct.lpfc_vport** %6, align 8
  %105 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %104, i32 0, i32 3
  %106 = load i64, i64* %105, align 8
  %107 = load i64, i64* @LPFC_VPORT_FAILED, align 8
  %108 = icmp sgt i64 %106, %107
  br i1 %108, label %109, label %118

109:                                              ; preds = %103
  %110 = load %struct.lpfc_vport*, %struct.lpfc_vport** %6, align 8
  %111 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %110, i32 0, i32 3
  %112 = load i64, i64* %111, align 8
  %113 = load i64, i64* @LPFC_VPORT_READY, align 8
  %114 = icmp slt i64 %112, %113
  br i1 %114, label %115, label %118

115:                                              ; preds = %109
  %116 = load i32, i32* @EAGAIN, align 4
  %117 = sub nsw i32 0, %116
  store i32 %117, i32* %2, align 4
  br label %460

118:                                              ; preds = %109, %103
  br label %119

119:                                              ; preds = %118, %56
  %120 = load %struct.Scsi_Host*, %struct.Scsi_Host** %5, align 8
  %121 = call i32 @scsi_host_get(%struct.Scsi_Host* %120)
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %125, label %123

123:                                              ; preds = %119
  %124 = load i32, i32* @VPORT_INVAL, align 4
  store i32 %124, i32* %2, align 4
  br label %460

125:                                              ; preds = %119
  %126 = load %struct.Scsi_Host*, %struct.Scsi_Host** %5, align 8
  %127 = call i32 @scsi_host_get(%struct.Scsi_Host* %126)
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %133, label %129

129:                                              ; preds = %125
  %130 = load %struct.Scsi_Host*, %struct.Scsi_Host** %5, align 8
  %131 = call i32 @scsi_host_put(%struct.Scsi_Host* %130)
  %132 = load i32, i32* @VPORT_INVAL, align 4
  store i32 %132, i32* %2, align 4
  br label %460

133:                                              ; preds = %125
  %134 = load %struct.lpfc_vport*, %struct.lpfc_vport** %6, align 8
  %135 = call i32 @lpfc_free_sysfs_attr(%struct.lpfc_vport* %134)
  %136 = load %struct.lpfc_vport*, %struct.lpfc_vport** %6, align 8
  %137 = call i32 @lpfc_debugfs_terminate(%struct.lpfc_vport* %136)
  %138 = load %struct.lpfc_vport*, %struct.lpfc_vport** %6, align 8
  %139 = load i32, i32* @NameServer_DID, align 4
  %140 = call %struct.lpfc_nodelist* @lpfc_findnode_did(%struct.lpfc_vport* %138, i32 %139)
  store %struct.lpfc_nodelist* %140, %struct.lpfc_nodelist** %4, align 8
  %141 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %4, align 8
  %142 = icmp ne %struct.lpfc_nodelist* %141, null
  br i1 %142, label %143, label %150

143:                                              ; preds = %133
  %144 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %4, align 8
  %145 = call i64 @NLP_CHK_NODE_ACT(%struct.lpfc_nodelist* %144)
  %146 = icmp ne i64 %145, 0
  br i1 %146, label %147, label %150

147:                                              ; preds = %143
  %148 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %4, align 8
  %149 = call i32 @lpfc_nlp_get(%struct.lpfc_nodelist* %148)
  store i32 1, i32* %9, align 4
  br label %150

150:                                              ; preds = %147, %143, %133
  %151 = load %struct.lpfc_vport*, %struct.lpfc_vport** %6, align 8
  %152 = call i32 @lpfc_shost_from_vport(%struct.lpfc_vport* %151)
  %153 = call i32 @fc_remove_host(i32 %152)
  %154 = load %struct.lpfc_vport*, %struct.lpfc_vport** %6, align 8
  %155 = call i32 @lpfc_shost_from_vport(%struct.lpfc_vport* %154)
  %156 = call i32 @scsi_remove_host(i32 %155)
  %157 = load %struct.lpfc_hba*, %struct.lpfc_hba** %7, align 8
  %158 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %157, i32 0, i32 4
  %159 = load %struct.lpfc_vport*, %struct.lpfc_vport** %158, align 8
  %160 = load i32, i32* @Fabric_DID, align 4
  %161 = call %struct.lpfc_nodelist* @lpfc_findnode_did(%struct.lpfc_vport* %159, i32 %160)
  store %struct.lpfc_nodelist* %161, %struct.lpfc_nodelist** %4, align 8
  %162 = load %struct.lpfc_hba*, %struct.lpfc_hba** %7, align 8
  %163 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %162, i32 0, i32 4
  %164 = load %struct.lpfc_vport*, %struct.lpfc_vport** %163, align 8
  %165 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %164, i32 0, i32 2
  %166 = load i32, i32* %165, align 4
  %167 = load i32, i32* @FC_UNLOADING, align 4
  %168 = and i32 %166, %167
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %170, label %225

170:                                              ; preds = %150
  %171 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %4, align 8
  %172 = icmp ne %struct.lpfc_nodelist* %171, null
  br i1 %172, label %173, label %224

173:                                              ; preds = %170
  %174 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %4, align 8
  %175 = call i64 @NLP_CHK_NODE_ACT(%struct.lpfc_nodelist* %174)
  %176 = icmp ne i64 %175, 0
  br i1 %176, label %177, label %224

177:                                              ; preds = %173
  %178 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %4, align 8
  %179 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %178, i32 0, i32 0
  %180 = load i64, i64* %179, align 8
  %181 = load i64, i64* @NLP_STE_UNMAPPED_NODE, align 8
  %182 = icmp eq i64 %180, %181
  br i1 %182, label %183, label %224

183:                                              ; preds = %177
  %184 = load %struct.lpfc_hba*, %struct.lpfc_hba** %7, align 8
  %185 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %184, i32 0, i32 1
  %186 = load i64, i64* %185, align 8
  %187 = load i64, i64* @LPFC_LINK_UP, align 8
  %188 = icmp sge i64 %186, %187
  br i1 %188, label %189, label %224

189:                                              ; preds = %183
  %190 = load %struct.lpfc_vport*, %struct.lpfc_vport** %6, align 8
  %191 = load i32, i32* @Fabric_DID, align 4
  %192 = call %struct.lpfc_nodelist* @lpfc_findnode_did(%struct.lpfc_vport* %190, i32 %191)
  store %struct.lpfc_nodelist* %192, %struct.lpfc_nodelist** %4, align 8
  %193 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %4, align 8
  %194 = icmp ne %struct.lpfc_nodelist* %193, null
  br i1 %194, label %196, label %195

195:                                              ; preds = %189
  br label %397

196:                                              ; preds = %189
  %197 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %4, align 8
  %198 = call i64 @NLP_CHK_NODE_ACT(%struct.lpfc_nodelist* %197)
  %199 = icmp ne i64 %198, 0
  br i1 %199, label %209, label %200

200:                                              ; preds = %196
  %201 = load %struct.lpfc_vport*, %struct.lpfc_vport** %6, align 8
  %202 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %4, align 8
  %203 = load i32, i32* @NLP_STE_UNUSED_NODE, align 4
  %204 = call %struct.lpfc_nodelist* @lpfc_enable_node(%struct.lpfc_vport* %201, %struct.lpfc_nodelist* %202, i32 %203)
  store %struct.lpfc_nodelist* %204, %struct.lpfc_nodelist** %4, align 8
  %205 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %4, align 8
  %206 = icmp ne %struct.lpfc_nodelist* %205, null
  br i1 %206, label %208, label %207

207:                                              ; preds = %200
  br label %397

208:                                              ; preds = %200
  br label %209

209:                                              ; preds = %208, %196
  br label %210

210:                                              ; preds = %209
  %211 = load %struct.lpfc_vport*, %struct.lpfc_vport** %6, align 8
  %212 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %4, align 8
  %213 = call i32 @lpfc_dequeue_node(%struct.lpfc_vport* %211, %struct.lpfc_nodelist* %212)
  %214 = load %struct.lpfc_hba*, %struct.lpfc_hba** %7, align 8
  %215 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %214, i32 0, i32 5
  %216 = call i32 @spin_lock_irq(i32* %215)
  %217 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %4, align 8
  %218 = call i32 @NLP_SET_FREE_REQ(%struct.lpfc_nodelist* %217)
  %219 = load %struct.lpfc_hba*, %struct.lpfc_hba** %7, align 8
  %220 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %219, i32 0, i32 5
  %221 = call i32 @spin_unlock_irq(i32* %220)
  %222 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %4, align 8
  %223 = call i32 @lpfc_nlp_put(%struct.lpfc_nodelist* %222)
  br label %224

224:                                              ; preds = %210, %183, %177, %173, %170
  br label %397

225:                                              ; preds = %150
  %226 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %4, align 8
  %227 = icmp ne %struct.lpfc_nodelist* %226, null
  br i1 %227, label %228, label %384

228:                                              ; preds = %225
  %229 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %4, align 8
  %230 = call i64 @NLP_CHK_NODE_ACT(%struct.lpfc_nodelist* %229)
  %231 = icmp ne i64 %230, 0
  br i1 %231, label %232, label %384

232:                                              ; preds = %228
  %233 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %4, align 8
  %234 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %233, i32 0, i32 0
  %235 = load i64, i64* %234, align 8
  %236 = load i64, i64* @NLP_STE_UNMAPPED_NODE, align 8
  %237 = icmp eq i64 %235, %236
  br i1 %237, label %238, label %384

238:                                              ; preds = %232
  %239 = load %struct.lpfc_hba*, %struct.lpfc_hba** %7, align 8
  %240 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %239, i32 0, i32 1
  %241 = load i64, i64* %240, align 8
  %242 = load i64, i64* @LPFC_LINK_UP, align 8
  %243 = icmp sge i64 %241, %242
  br i1 %243, label %244, label %384

244:                                              ; preds = %238
  %245 = load %struct.lpfc_hba*, %struct.lpfc_hba** %7, align 8
  %246 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %245, i32 0, i32 2
  %247 = load i64, i64* %246, align 8
  %248 = load i64, i64* @LPFC_TOPOLOGY_LOOP, align 8
  %249 = icmp ne i64 %247, %248
  br i1 %249, label %250, label %384

250:                                              ; preds = %244
  %251 = load %struct.lpfc_vport*, %struct.lpfc_vport** %6, align 8
  %252 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %251, i32 0, i32 11
  %253 = load i64, i64* %252, align 8
  %254 = icmp ne i64 %253, 0
  br i1 %254, label %255, label %288

255:                                              ; preds = %250
  %256 = load %struct.lpfc_hba*, %struct.lpfc_hba** %7, align 8
  %257 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %256, i32 0, i32 0
  %258 = load i32, i32* %257, align 8
  %259 = mul nsw i32 %258, 2000
  %260 = call i64 @msecs_to_jiffies(i32 %259)
  store i64 %260, i64* %8, align 8
  %261 = load %struct.lpfc_vport*, %struct.lpfc_vport** %6, align 8
  %262 = load i32, i32* @SLI_CTNS_DA_ID, align 4
  %263 = call i32 @lpfc_ns_cmd(%struct.lpfc_vport* %261, i32 %262, i32 0, i32 0)
  %264 = icmp ne i32 %263, 0
  br i1 %264, label %280, label %265

265:                                              ; preds = %255
  br label %266

266:                                              ; preds = %276, %265
  %267 = load %struct.lpfc_vport*, %struct.lpfc_vport** %6, align 8
  %268 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %267, i32 0, i32 10
  %269 = load i64, i64* %268, align 8
  %270 = icmp ne i64 %269, 0
  br i1 %270, label %271, label %274

271:                                              ; preds = %266
  %272 = load i64, i64* %8, align 8
  %273 = icmp ne i64 %272, 0
  br label %274

274:                                              ; preds = %271, %266
  %275 = phi i1 [ false, %266 ], [ %273, %271 ]
  br i1 %275, label %276, label %279

276:                                              ; preds = %274
  %277 = load i64, i64* %8, align 8
  %278 = call i64 @schedule_timeout(i64 %277)
  store i64 %278, i64* %8, align 8
  br label %266

279:                                              ; preds = %274
  br label %287

280:                                              ; preds = %255
  %281 = load %struct.lpfc_vport*, %struct.lpfc_vport** %6, align 8
  %282 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %281, i32 0, i32 9
  %283 = load %struct.lpfc_hba*, %struct.lpfc_hba** %282, align 8
  %284 = load i32, i32* @KERN_WARNING, align 4
  %285 = load i32, i32* @LOG_VPORT, align 4
  %286 = call i32 @lpfc_printf_log(%struct.lpfc_hba* %283, i32 %284, i32 %285, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.2, i64 0, i64 0))
  br label %287

287:                                              ; preds = %280, %279
  br label %288

288:                                              ; preds = %287, %250
  %289 = load %struct.lpfc_vport*, %struct.lpfc_vport** %6, align 8
  %290 = load i32, i32* @Fabric_DID, align 4
  %291 = call %struct.lpfc_nodelist* @lpfc_findnode_did(%struct.lpfc_vport* %289, i32 %290)
  store %struct.lpfc_nodelist* %291, %struct.lpfc_nodelist** %4, align 8
  %292 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %4, align 8
  %293 = icmp ne %struct.lpfc_nodelist* %292, null
  br i1 %293, label %310, label %294

294:                                              ; preds = %288
  %295 = load %struct.lpfc_hba*, %struct.lpfc_hba** %7, align 8
  %296 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %295, i32 0, i32 6
  %297 = load i32, i32* %296, align 4
  %298 = load i32, i32* @GFP_KERNEL, align 4
  %299 = call %struct.lpfc_nodelist* @mempool_alloc(i32 %297, i32 %298)
  store %struct.lpfc_nodelist* %299, %struct.lpfc_nodelist** %4, align 8
  %300 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %4, align 8
  %301 = icmp ne %struct.lpfc_nodelist* %300, null
  br i1 %301, label %303, label %302

302:                                              ; preds = %294
  br label %397

303:                                              ; preds = %294
  %304 = load %struct.lpfc_vport*, %struct.lpfc_vport** %6, align 8
  %305 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %4, align 8
  %306 = load i32, i32* @Fabric_DID, align 4
  %307 = call i32 @lpfc_nlp_init(%struct.lpfc_vport* %304, %struct.lpfc_nodelist* %305, i32 %306)
  %308 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %4, align 8
  %309 = call i32 @NLP_SET_FREE_REQ(%struct.lpfc_nodelist* %308)
  br label %344

310:                                              ; preds = %288
  %311 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %4, align 8
  %312 = call i64 @NLP_CHK_NODE_ACT(%struct.lpfc_nodelist* %311)
  %313 = icmp ne i64 %312, 0
  br i1 %313, label %323, label %314

314:                                              ; preds = %310
  %315 = load %struct.lpfc_vport*, %struct.lpfc_vport** %6, align 8
  %316 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %4, align 8
  %317 = load i32, i32* @NLP_STE_UNUSED_NODE, align 4
  %318 = call %struct.lpfc_nodelist* @lpfc_enable_node(%struct.lpfc_vport* %315, %struct.lpfc_nodelist* %316, i32 %317)
  store %struct.lpfc_nodelist* %318, %struct.lpfc_nodelist** %4, align 8
  %319 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %4, align 8
  %320 = icmp ne %struct.lpfc_nodelist* %319, null
  br i1 %320, label %322, label %321

321:                                              ; preds = %314
  br label %397

322:                                              ; preds = %314
  br label %323

323:                                              ; preds = %322, %310
  %324 = load %struct.lpfc_vport*, %struct.lpfc_vport** %6, align 8
  %325 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %4, align 8
  %326 = call i32 @lpfc_dequeue_node(%struct.lpfc_vport* %324, %struct.lpfc_nodelist* %325)
  %327 = load %struct.lpfc_hba*, %struct.lpfc_hba** %7, align 8
  %328 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %327, i32 0, i32 5
  %329 = call i32 @spin_lock_irq(i32* %328)
  %330 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %4, align 8
  %331 = call i32 @NLP_CHK_FREE_REQ(%struct.lpfc_nodelist* %330)
  %332 = icmp ne i32 %331, 0
  br i1 %332, label %336, label %333

333:                                              ; preds = %323
  %334 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %4, align 8
  %335 = call i32 @NLP_SET_FREE_REQ(%struct.lpfc_nodelist* %334)
  br label %340

336:                                              ; preds = %323
  %337 = load %struct.lpfc_hba*, %struct.lpfc_hba** %7, align 8
  %338 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %337, i32 0, i32 5
  %339 = call i32 @spin_unlock_irq(i32* %338)
  br label %397

340:                                              ; preds = %333
  %341 = load %struct.lpfc_hba*, %struct.lpfc_hba** %7, align 8
  %342 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %341, i32 0, i32 5
  %343 = call i32 @spin_unlock_irq(i32* %342)
  br label %344

344:                                              ; preds = %340, %303
  %345 = load %struct.lpfc_vport*, %struct.lpfc_vport** %6, align 8
  %346 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %345, i32 0, i32 4
  %347 = load i32, i32* %346, align 8
  %348 = load i32, i32* @LPFC_VPI_REGISTERED, align 4
  %349 = and i32 %347, %348
  %350 = icmp ne i32 %349, 0
  br i1 %350, label %354, label %351

351:                                              ; preds = %344
  %352 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %4, align 8
  %353 = call i32 @lpfc_nlp_put(%struct.lpfc_nodelist* %352)
  br label %397

354:                                              ; preds = %344
  %355 = load i32, i32* @VPORT_INVAL, align 4
  %356 = load %struct.lpfc_vport*, %struct.lpfc_vport** %6, align 8
  %357 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %356, i32 0, i32 5
  store i32 %355, i32* %357, align 4
  %358 = load %struct.lpfc_hba*, %struct.lpfc_hba** %7, align 8
  %359 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %358, i32 0, i32 0
  %360 = load i32, i32* %359, align 8
  %361 = mul nsw i32 %360, 2000
  %362 = call i64 @msecs_to_jiffies(i32 %361)
  store i64 %362, i64* %8, align 8
  %363 = load %struct.lpfc_vport*, %struct.lpfc_vport** %6, align 8
  %364 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %4, align 8
  %365 = call i32 @lpfc_issue_els_npiv_logo(%struct.lpfc_vport* %363, %struct.lpfc_nodelist* %364)
  %366 = icmp ne i32 %365, 0
  br i1 %366, label %383, label %367

367:                                              ; preds = %354
  br label %368

368:                                              ; preds = %379, %367
  %369 = load %struct.lpfc_vport*, %struct.lpfc_vport** %6, align 8
  %370 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %369, i32 0, i32 5
  %371 = load i32, i32* %370, align 4
  %372 = load i32, i32* @VPORT_INVAL, align 4
  %373 = icmp eq i32 %371, %372
  br i1 %373, label %374, label %377

374:                                              ; preds = %368
  %375 = load i64, i64* %8, align 8
  %376 = icmp ne i64 %375, 0
  br label %377

377:                                              ; preds = %374, %368
  %378 = phi i1 [ false, %368 ], [ %376, %374 ]
  br i1 %378, label %379, label %382

379:                                              ; preds = %377
  %380 = load i64, i64* %8, align 8
  %381 = call i64 @schedule_timeout(i64 %380)
  store i64 %381, i64* %8, align 8
  br label %368

382:                                              ; preds = %377
  br label %383

383:                                              ; preds = %382, %354
  br label %384

384:                                              ; preds = %383, %244, %238, %232, %228, %225
  %385 = load %struct.lpfc_hba*, %struct.lpfc_hba** %7, align 8
  %386 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %385, i32 0, i32 4
  %387 = load %struct.lpfc_vport*, %struct.lpfc_vport** %386, align 8
  %388 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %387, i32 0, i32 2
  %389 = load i32, i32* %388, align 4
  %390 = load i32, i32* @FC_UNLOADING, align 4
  %391 = and i32 %389, %390
  %392 = icmp ne i32 %391, 0
  br i1 %392, label %396, label %393

393:                                              ; preds = %384
  %394 = load %struct.lpfc_vport*, %struct.lpfc_vport** %6, align 8
  %395 = call i32 @lpfc_discovery_wait(%struct.lpfc_vport* %394)
  br label %396

396:                                              ; preds = %393, %384
  br label %397

397:                                              ; preds = %396, %351, %336, %321, %302, %224, %207, %195
  %398 = load i32, i32* %9, align 4
  %399 = icmp ne i32 %398, 0
  br i1 %399, label %400, label %406

400:                                              ; preds = %397
  %401 = load %struct.lpfc_vport*, %struct.lpfc_vport** %6, align 8
  %402 = load i32, i32* @NameServer_DID, align 4
  %403 = call %struct.lpfc_nodelist* @lpfc_findnode_did(%struct.lpfc_vport* %401, i32 %402)
  store %struct.lpfc_nodelist* %403, %struct.lpfc_nodelist** %4, align 8
  %404 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %4, align 8
  %405 = call i32 @lpfc_nlp_put(%struct.lpfc_nodelist* %404)
  br label %406

406:                                              ; preds = %400, %397
  %407 = load %struct.lpfc_vport*, %struct.lpfc_vport** %6, align 8
  %408 = call i32 @lpfc_cleanup(%struct.lpfc_vport* %407)
  %409 = load %struct.lpfc_vport*, %struct.lpfc_vport** %6, align 8
  %410 = call i32 @lpfc_sli_host_down(%struct.lpfc_vport* %409)
  %411 = load %struct.lpfc_vport*, %struct.lpfc_vport** %6, align 8
  %412 = call i32 @lpfc_stop_vport_timers(%struct.lpfc_vport* %411)
  %413 = load %struct.lpfc_hba*, %struct.lpfc_hba** %7, align 8
  %414 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %413, i32 0, i32 4
  %415 = load %struct.lpfc_vport*, %struct.lpfc_vport** %414, align 8
  %416 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %415, i32 0, i32 2
  %417 = load i32, i32* %416, align 4
  %418 = load i32, i32* @FC_UNLOADING, align 4
  %419 = and i32 %417, %418
  %420 = icmp ne i32 %419, 0
  br i1 %420, label %433, label %421

421:                                              ; preds = %406
  %422 = load %struct.lpfc_vport*, %struct.lpfc_vport** %6, align 8
  %423 = call i32 @lpfc_unreg_all_rpis(%struct.lpfc_vport* %422)
  %424 = load %struct.lpfc_vport*, %struct.lpfc_vport** %6, align 8
  %425 = call i32 @lpfc_unreg_default_rpis(%struct.lpfc_vport* %424)
  %426 = load %struct.lpfc_vport*, %struct.lpfc_vport** %6, align 8
  %427 = call i64 @lpfc_mbx_unreg_vpi(%struct.lpfc_vport* %426)
  %428 = icmp ne i64 %427, 0
  br i1 %428, label %429, label %432

429:                                              ; preds = %421
  %430 = load %struct.Scsi_Host*, %struct.Scsi_Host** %5, align 8
  %431 = call i32 @scsi_host_put(%struct.Scsi_Host* %430)
  br label %432

432:                                              ; preds = %429, %421
  br label %436

433:                                              ; preds = %406
  %434 = load %struct.Scsi_Host*, %struct.Scsi_Host** %5, align 8
  %435 = call i32 @scsi_host_put(%struct.Scsi_Host* %434)
  br label %436

436:                                              ; preds = %433, %432
  %437 = load %struct.lpfc_hba*, %struct.lpfc_hba** %7, align 8
  %438 = load %struct.lpfc_vport*, %struct.lpfc_vport** %6, align 8
  %439 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %438, i32 0, i32 8
  %440 = load i32, i32* %439, align 8
  %441 = call i32 @lpfc_free_vpi(%struct.lpfc_hba* %437, i32 %440)
  %442 = load %struct.lpfc_vport*, %struct.lpfc_vport** %6, align 8
  %443 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %442, i32 0, i32 7
  store i64 0, i64* %443, align 8
  %444 = load %struct.lpfc_hba*, %struct.lpfc_hba** %7, align 8
  %445 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %444, i32 0, i32 3
  %446 = call i32 @spin_lock_irq(i32* %445)
  %447 = load %struct.lpfc_vport*, %struct.lpfc_vport** %6, align 8
  %448 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %447, i32 0, i32 6
  %449 = call i32 @list_del_init(i32* %448)
  %450 = load %struct.lpfc_hba*, %struct.lpfc_hba** %7, align 8
  %451 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %450, i32 0, i32 3
  %452 = call i32 @spin_unlock_irq(i32* %451)
  %453 = load %struct.lpfc_vport*, %struct.lpfc_vport** %6, align 8
  %454 = load i32, i32* @KERN_ERR, align 4
  %455 = load i32, i32* @LOG_VPORT, align 4
  %456 = call i32 @lpfc_printf_vlog(%struct.lpfc_vport* %453, i32 %454, i32 %455, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0))
  %457 = load %struct.Scsi_Host*, %struct.Scsi_Host** %5, align 8
  %458 = call i32 @scsi_host_put(%struct.Scsi_Host* %457)
  %459 = load i32, i32* @VPORT_OK, align 4
  store i32 %459, i32* %2, align 4
  br label %460

460:                                              ; preds = %436, %129, %123, %115, %50, %28
  %461 = load i32, i32* %2, align 4
  ret i32 %461
}

declare dso_local i32 @lpfc_printf_vlog(%struct.lpfc_vport*, i32, i32, i8*) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @scsi_host_get(%struct.Scsi_Host*) #1

declare dso_local i32 @scsi_host_put(%struct.Scsi_Host*) #1

declare dso_local i32 @lpfc_free_sysfs_attr(%struct.lpfc_vport*) #1

declare dso_local i32 @lpfc_debugfs_terminate(%struct.lpfc_vport*) #1

declare dso_local %struct.lpfc_nodelist* @lpfc_findnode_did(%struct.lpfc_vport*, i32) #1

declare dso_local i64 @NLP_CHK_NODE_ACT(%struct.lpfc_nodelist*) #1

declare dso_local i32 @lpfc_nlp_get(%struct.lpfc_nodelist*) #1

declare dso_local i32 @fc_remove_host(i32) #1

declare dso_local i32 @lpfc_shost_from_vport(%struct.lpfc_vport*) #1

declare dso_local i32 @scsi_remove_host(i32) #1

declare dso_local %struct.lpfc_nodelist* @lpfc_enable_node(%struct.lpfc_vport*, %struct.lpfc_nodelist*, i32) #1

declare dso_local i32 @lpfc_dequeue_node(%struct.lpfc_vport*, %struct.lpfc_nodelist*) #1

declare dso_local i32 @NLP_SET_FREE_REQ(%struct.lpfc_nodelist*) #1

declare dso_local i32 @lpfc_nlp_put(%struct.lpfc_nodelist*) #1

declare dso_local i64 @msecs_to_jiffies(i32) #1

declare dso_local i32 @lpfc_ns_cmd(%struct.lpfc_vport*, i32, i32, i32) #1

declare dso_local i64 @schedule_timeout(i64) #1

declare dso_local i32 @lpfc_printf_log(%struct.lpfc_hba*, i32, i32, i8*) #1

declare dso_local %struct.lpfc_nodelist* @mempool_alloc(i32, i32) #1

declare dso_local i32 @lpfc_nlp_init(%struct.lpfc_vport*, %struct.lpfc_nodelist*, i32) #1

declare dso_local i32 @NLP_CHK_FREE_REQ(%struct.lpfc_nodelist*) #1

declare dso_local i32 @lpfc_issue_els_npiv_logo(%struct.lpfc_vport*, %struct.lpfc_nodelist*) #1

declare dso_local i32 @lpfc_discovery_wait(%struct.lpfc_vport*) #1

declare dso_local i32 @lpfc_cleanup(%struct.lpfc_vport*) #1

declare dso_local i32 @lpfc_sli_host_down(%struct.lpfc_vport*) #1

declare dso_local i32 @lpfc_stop_vport_timers(%struct.lpfc_vport*) #1

declare dso_local i32 @lpfc_unreg_all_rpis(%struct.lpfc_vport*) #1

declare dso_local i32 @lpfc_unreg_default_rpis(%struct.lpfc_vport*) #1

declare dso_local i64 @lpfc_mbx_unreg_vpi(%struct.lpfc_vport*) #1

declare dso_local i32 @lpfc_free_vpi(%struct.lpfc_hba*, i32) #1

declare dso_local i32 @list_del_init(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
