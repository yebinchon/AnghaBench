; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/lpfc/extr_lpfc_els.c_lpfc_cmpl_reg_new_vport.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/lpfc/extr_lpfc_els.c_lpfc_cmpl_reg_new_vport.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpfc_hba = type { i64, i32, %struct.lpfc_vport* }
%struct.lpfc_vport = type { i32, i64, i32, i32, i32 }
%struct.TYPE_14__ = type { i32, %struct.lpfc_vport*, %struct.TYPE_10__, i64 }
%struct.TYPE_10__ = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i32, %struct.TYPE_12__ }
%struct.TYPE_12__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i64 }
%struct.Scsi_Host = type { i32 }
%struct.lpfc_nodelist = type { i32 }

@FC_VPORT_NEEDS_REG_VPI = common dso_local global i32 0, align 4
@KERN_ERR = common dso_local global i32 0, align 4
@LOG_MBOX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [54 x i8] c"0915 Register VPI failed : Status: x%x upd bit: x%x \0A\00", align 1
@LPFC_SLI_REV4 = common dso_local global i64 0, align 8
@FC_VPORT_FAILED = common dso_local global i32 0, align 4
@FC_FABRIC = common dso_local global i32 0, align 4
@FC_PUBLIC_LOOP = common dso_local global i32 0, align 4
@lpfc_init_vpi_cmpl = common dso_local global i32 0, align 4
@MBX_NOWAIT = common dso_local global i32 0, align 4
@MBX_NOT_FINISHED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [47 x i8] c"2732 Failed to issue INIT_VPI mailbox command\0A\00", align 1
@LPFC_PHYSICAL_PORT = common dso_local global i32 0, align 4
@FC_LOGO_RCVD_DID_CHNG = common dso_local global i32 0, align 4
@LPFC_VPI_REGISTERED = common dso_local global i32 0, align 4
@LPFC_FDISC = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.lpfc_hba*, %struct.TYPE_14__*)* @lpfc_cmpl_reg_new_vport to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lpfc_cmpl_reg_new_vport(%struct.lpfc_hba* %0, %struct.TYPE_14__* %1) #0 {
  %3 = alloca %struct.lpfc_hba*, align 8
  %4 = alloca %struct.TYPE_14__*, align 8
  %5 = alloca %struct.lpfc_vport*, align 8
  %6 = alloca %struct.Scsi_Host*, align 8
  %7 = alloca %struct.lpfc_nodelist*, align 8
  %8 = alloca %struct.TYPE_13__*, align 8
  %9 = alloca i32, align 4
  store %struct.lpfc_hba* %0, %struct.lpfc_hba** %3, align 8
  store %struct.TYPE_14__* %1, %struct.TYPE_14__** %4, align 8
  %10 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %10, i32 0, i32 1
  %12 = load %struct.lpfc_vport*, %struct.lpfc_vport** %11, align 8
  store %struct.lpfc_vport* %12, %struct.lpfc_vport** %5, align 8
  %13 = load %struct.lpfc_vport*, %struct.lpfc_vport** %5, align 8
  %14 = call %struct.Scsi_Host* @lpfc_shost_from_vport(%struct.lpfc_vport* %13)
  store %struct.Scsi_Host* %14, %struct.Scsi_Host** %6, align 8
  %15 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %15, i32 0, i32 3
  %17 = load i64, i64* %16, align 8
  %18 = inttoptr i64 %17 to %struct.lpfc_nodelist*
  store %struct.lpfc_nodelist* %18, %struct.lpfc_nodelist** %7, align 8
  %19 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %19, i32 0, i32 2
  %21 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %20, i32 0, i32 0
  store %struct.TYPE_13__* %21, %struct.TYPE_13__** %8, align 8
  %22 = load %struct.Scsi_Host*, %struct.Scsi_Host** %6, align 8
  %23 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @spin_lock_irq(i32 %24)
  %26 = load i32, i32* @FC_VPORT_NEEDS_REG_VPI, align 4
  %27 = xor i32 %26, -1
  %28 = load %struct.lpfc_vport*, %struct.lpfc_vport** %5, align 8
  %29 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = and i32 %30, %27
  store i32 %31, i32* %29, align 8
  %32 = load %struct.Scsi_Host*, %struct.Scsi_Host** %6, align 8
  %33 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @spin_unlock_irq(i32 %34)
  %36 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %37 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %179

40:                                               ; preds = %2
  %41 = load %struct.lpfc_vport*, %struct.lpfc_vport** %5, align 8
  %42 = load i32, i32* @KERN_ERR, align 4
  %43 = load i32, i32* @LOG_MBOX, align 4
  %44 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %45 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %48 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = call i32 (%struct.lpfc_vport*, i32, i32, i8*, ...) @lpfc_printf_vlog(%struct.lpfc_vport* %41, i32 %42, i32 %43, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i64 0, i64 0), i32 %46, i64 %51)
  %53 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %54 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* @LPFC_SLI_REV4, align 8
  %57 = icmp eq i64 %55, %56
  br i1 %57, label %58, label %66

58:                                               ; preds = %40
  %59 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %60 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %59, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %58
  br label %227

66:                                               ; preds = %58, %40
  %67 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %68 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  switch i32 %69, label %134 [
    i32 17, label %70
    i32 38403, label %70
    i32 38402, label %70
    i32 32, label %92
  ]

70:                                               ; preds = %66, %66, %66
  %71 = load %struct.lpfc_vport*, %struct.lpfc_vport** %5, align 8
  %72 = load i32, i32* @FC_VPORT_FAILED, align 4
  %73 = call i32 @lpfc_vport_set_state(%struct.lpfc_vport* %71, i32 %72)
  %74 = load %struct.Scsi_Host*, %struct.Scsi_Host** %6, align 8
  %75 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @spin_lock_irq(i32 %76)
  %78 = load i32, i32* @FC_FABRIC, align 4
  %79 = load i32, i32* @FC_PUBLIC_LOOP, align 4
  %80 = or i32 %78, %79
  %81 = xor i32 %80, -1
  %82 = load %struct.lpfc_vport*, %struct.lpfc_vport** %5, align 8
  %83 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = and i32 %84, %81
  store i32 %85, i32* %83, align 8
  %86 = load %struct.Scsi_Host*, %struct.Scsi_Host** %6, align 8
  %87 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = call i32 @spin_unlock_irq(i32 %88)
  %90 = load %struct.lpfc_vport*, %struct.lpfc_vport** %5, align 8
  %91 = call i32 @lpfc_can_disctmo(%struct.lpfc_vport* %90)
  br label %178

92:                                               ; preds = %66
  %93 = load %struct.Scsi_Host*, %struct.Scsi_Host** %6, align 8
  %94 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = call i32 @spin_lock_irq(i32 %95)
  %97 = load i32, i32* @FC_VPORT_NEEDS_REG_VPI, align 4
  %98 = load %struct.lpfc_vport*, %struct.lpfc_vport** %5, align 8
  %99 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = or i32 %100, %97
  store i32 %101, i32* %99, align 8
  %102 = load %struct.Scsi_Host*, %struct.Scsi_Host** %6, align 8
  %103 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = call i32 @spin_unlock_irq(i32 %104)
  %106 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %107 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %108 = load %struct.lpfc_vport*, %struct.lpfc_vport** %5, align 8
  %109 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %108, i32 0, i32 4
  %110 = load i32, i32* %109, align 8
  %111 = call i32 @lpfc_init_vpi(%struct.lpfc_hba* %106, %struct.TYPE_14__* %107, i32 %110)
  %112 = load %struct.lpfc_vport*, %struct.lpfc_vport** %5, align 8
  %113 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %114 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %113, i32 0, i32 1
  store %struct.lpfc_vport* %112, %struct.lpfc_vport** %114, align 8
  %115 = load i32, i32* @lpfc_init_vpi_cmpl, align 4
  %116 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %117 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %116, i32 0, i32 0
  store i32 %115, i32* %117, align 8
  %118 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %119 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %120 = load i32, i32* @MBX_NOWAIT, align 4
  %121 = call i32 @lpfc_sli_issue_mbox(%struct.lpfc_hba* %118, %struct.TYPE_14__* %119, i32 %120)
  store i32 %121, i32* %9, align 4
  %122 = load i32, i32* %9, align 4
  %123 = load i32, i32* @MBX_NOT_FINISHED, align 4
  %124 = icmp eq i32 %122, %123
  br i1 %124, label %125, label %130

125:                                              ; preds = %92
  %126 = load %struct.lpfc_vport*, %struct.lpfc_vport** %5, align 8
  %127 = load i32, i32* @KERN_ERR, align 4
  %128 = load i32, i32* @LOG_MBOX, align 4
  %129 = call i32 (%struct.lpfc_vport*, i32, i32, i8*, ...) @lpfc_printf_vlog(%struct.lpfc_vport* %126, i32 %127, i32 %128, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0))
  br label %133

130:                                              ; preds = %92
  %131 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %7, align 8
  %132 = call i32 @lpfc_nlp_put(%struct.lpfc_nodelist* %131)
  br label %235

133:                                              ; preds = %125
  br label %134

134:                                              ; preds = %66, %133
  %135 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %136 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %135, i32 0, i32 0
  %137 = load i64, i64* %136, align 8
  %138 = load i64, i64* @LPFC_SLI_REV4, align 8
  %139 = icmp eq i64 %137, %138
  br i1 %139, label %140, label %143

140:                                              ; preds = %134
  %141 = load %struct.lpfc_vport*, %struct.lpfc_vport** %5, align 8
  %142 = call i32 @lpfc_sli4_unreg_all_rpis(%struct.lpfc_vport* %141)
  br label %143

143:                                              ; preds = %140, %134
  %144 = load %struct.lpfc_vport*, %struct.lpfc_vport** %5, align 8
  %145 = call i32 @lpfc_mbx_unreg_vpi(%struct.lpfc_vport* %144)
  %146 = load %struct.Scsi_Host*, %struct.Scsi_Host** %6, align 8
  %147 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 4
  %149 = call i32 @spin_lock_irq(i32 %148)
  %150 = load i32, i32* @FC_VPORT_NEEDS_REG_VPI, align 4
  %151 = load %struct.lpfc_vport*, %struct.lpfc_vport** %5, align 8
  %152 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 8
  %154 = or i32 %153, %150
  store i32 %154, i32* %152, align 8
  %155 = load %struct.Scsi_Host*, %struct.Scsi_Host** %6, align 8
  %156 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 4
  %158 = call i32 @spin_unlock_irq(i32 %157)
  %159 = load %struct.lpfc_vport*, %struct.lpfc_vport** %5, align 8
  %160 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %159, i32 0, i32 3
  %161 = load i32, i32* %160, align 4
  %162 = load i32, i32* @LPFC_PHYSICAL_PORT, align 4
  %163 = icmp eq i32 %161, %162
  br i1 %163, label %164, label %174

164:                                              ; preds = %143
  %165 = load %struct.lpfc_vport*, %struct.lpfc_vport** %5, align 8
  %166 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %165, i32 0, i32 0
  %167 = load i32, i32* %166, align 8
  %168 = load i32, i32* @FC_LOGO_RCVD_DID_CHNG, align 4
  %169 = and i32 %167, %168
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %174, label %171

171:                                              ; preds = %164
  %172 = load %struct.lpfc_vport*, %struct.lpfc_vport** %5, align 8
  %173 = call i32 @lpfc_issue_init_vfi(%struct.lpfc_vport* %172)
  br label %177

174:                                              ; preds = %164, %143
  %175 = load %struct.lpfc_vport*, %struct.lpfc_vport** %5, align 8
  %176 = call i32 @lpfc_initial_fdisc(%struct.lpfc_vport* %175)
  br label %177

177:                                              ; preds = %174, %171
  br label %178

178:                                              ; preds = %177, %70
  br label %226

179:                                              ; preds = %2
  %180 = load %struct.Scsi_Host*, %struct.Scsi_Host** %6, align 8
  %181 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %180, i32 0, i32 0
  %182 = load i32, i32* %181, align 4
  %183 = call i32 @spin_lock_irq(i32 %182)
  %184 = load i32, i32* @LPFC_VPI_REGISTERED, align 4
  %185 = load %struct.lpfc_vport*, %struct.lpfc_vport** %5, align 8
  %186 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %185, i32 0, i32 2
  %187 = load i32, i32* %186, align 8
  %188 = or i32 %187, %184
  store i32 %188, i32* %186, align 8
  %189 = load %struct.Scsi_Host*, %struct.Scsi_Host** %6, align 8
  %190 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %189, i32 0, i32 0
  %191 = load i32, i32* %190, align 4
  %192 = call i32 @spin_unlock_irq(i32 %191)
  %193 = load %struct.lpfc_vport*, %struct.lpfc_vport** %5, align 8
  %194 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %195 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %194, i32 0, i32 2
  %196 = load %struct.lpfc_vport*, %struct.lpfc_vport** %195, align 8
  %197 = icmp eq %struct.lpfc_vport* %193, %196
  br i1 %197, label %198, label %221

198:                                              ; preds = %179
  %199 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %200 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %199, i32 0, i32 0
  %201 = load i64, i64* %200, align 8
  %202 = load i64, i64* @LPFC_SLI_REV4, align 8
  %203 = icmp slt i64 %201, %202
  br i1 %203, label %204, label %207

204:                                              ; preds = %198
  %205 = load %struct.lpfc_vport*, %struct.lpfc_vport** %5, align 8
  %206 = call i32 @lpfc_issue_fabric_reglogin(%struct.lpfc_vport* %205)
  br label %220

207:                                              ; preds = %198
  %208 = load %struct.lpfc_vport*, %struct.lpfc_vport** %5, align 8
  %209 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %208, i32 0, i32 1
  %210 = load i64, i64* %209, align 8
  %211 = load i64, i64* @LPFC_FDISC, align 8
  %212 = icmp ne i64 %210, %211
  br i1 %212, label %213, label %216

213:                                              ; preds = %207
  %214 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %215 = call i32 @lpfc_start_fdiscs(%struct.lpfc_hba* %214)
  br label %216

216:                                              ; preds = %213, %207
  %217 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %218 = load %struct.lpfc_vport*, %struct.lpfc_vport** %5, align 8
  %219 = call i32 @lpfc_do_scr_ns_plogi(%struct.lpfc_hba* %217, %struct.lpfc_vport* %218)
  br label %220

220:                                              ; preds = %216, %204
  br label %225

221:                                              ; preds = %179
  %222 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %223 = load %struct.lpfc_vport*, %struct.lpfc_vport** %5, align 8
  %224 = call i32 @lpfc_do_scr_ns_plogi(%struct.lpfc_hba* %222, %struct.lpfc_vport* %223)
  br label %225

225:                                              ; preds = %221, %220
  br label %226

226:                                              ; preds = %225, %178
  br label %227

227:                                              ; preds = %226, %65
  %228 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %7, align 8
  %229 = call i32 @lpfc_nlp_put(%struct.lpfc_nodelist* %228)
  %230 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %231 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %232 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %231, i32 0, i32 1
  %233 = load i32, i32* %232, align 8
  %234 = call i32 @mempool_free(%struct.TYPE_14__* %230, i32 %233)
  br label %235

235:                                              ; preds = %227, %130
  ret void
}

declare dso_local %struct.Scsi_Host* @lpfc_shost_from_vport(%struct.lpfc_vport*) #1

declare dso_local i32 @spin_lock_irq(i32) #1

declare dso_local i32 @spin_unlock_irq(i32) #1

declare dso_local i32 @lpfc_printf_vlog(%struct.lpfc_vport*, i32, i32, i8*, ...) #1

declare dso_local i32 @lpfc_vport_set_state(%struct.lpfc_vport*, i32) #1

declare dso_local i32 @lpfc_can_disctmo(%struct.lpfc_vport*) #1

declare dso_local i32 @lpfc_init_vpi(%struct.lpfc_hba*, %struct.TYPE_14__*, i32) #1

declare dso_local i32 @lpfc_sli_issue_mbox(%struct.lpfc_hba*, %struct.TYPE_14__*, i32) #1

declare dso_local i32 @lpfc_nlp_put(%struct.lpfc_nodelist*) #1

declare dso_local i32 @lpfc_sli4_unreg_all_rpis(%struct.lpfc_vport*) #1

declare dso_local i32 @lpfc_mbx_unreg_vpi(%struct.lpfc_vport*) #1

declare dso_local i32 @lpfc_issue_init_vfi(%struct.lpfc_vport*) #1

declare dso_local i32 @lpfc_initial_fdisc(%struct.lpfc_vport*) #1

declare dso_local i32 @lpfc_issue_fabric_reglogin(%struct.lpfc_vport*) #1

declare dso_local i32 @lpfc_start_fdiscs(%struct.lpfc_hba*) #1

declare dso_local i32 @lpfc_do_scr_ns_plogi(%struct.lpfc_hba*, %struct.lpfc_vport*) #1

declare dso_local i32 @mempool_free(%struct.TYPE_14__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
