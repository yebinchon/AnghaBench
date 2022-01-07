; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/lpfc/extr_lpfc_sli.c_lpfc_sli_def_mbox_cmpl.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/lpfc/extr_lpfc_sli.c_lpfc_sli_def_mbox_cmpl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpfc_hba = type { i32, %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_17__ = type { {}*, %struct.TYPE_16__, i32*, i64, %struct.lpfc_vport* }
%struct.TYPE_16__ = type { i32, %struct.TYPE_15__ }
%struct.TYPE_15__ = type { i64, i64, %struct.TYPE_13__ }
%struct.TYPE_13__ = type { %struct.TYPE_12__, i32* }
%struct.TYPE_12__ = type { i32 }
%struct.lpfc_vport = type { i32, i32 }
%struct.lpfc_dmabuf = type { i32, i32 }
%struct.lpfc_nodelist = type { i32 }
%struct.Scsi_Host = type { i32 }

@FC_UNLOADING = common dso_local global i32 0, align 4
@MBX_REG_LOGIN64 = common dso_local global i64 0, align 8
@MBX_NOWAIT = common dso_local global i32 0, align 4
@MBX_NOT_FINISHED = common dso_local global i32 0, align 4
@MBX_REG_VPI = common dso_local global i64 0, align 8
@LPFC_VPI_REGISTERED = common dso_local global i32 0, align 4
@FC_VPORT_NEEDS_REG_VPI = common dso_local global i32 0, align 4
@MBX_INIT_LINK = common dso_local global i64 0, align 8
@MBXERR_SEC_NO_PERMISSION = common dso_local global i64 0, align 8
@KERN_ERR = common dso_local global i32 0, align 4
@LOG_MBOX = common dso_local global i32 0, align 4
@LOG_SLI = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [72 x i8] c"2860 SLI authentication is required for INIT_LINK but has not done yet\0A\00", align 1
@lpfc_mqe_command = common dso_local global i32 0, align 4
@MBX_SLI4_CONFIG = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @lpfc_sli_def_mbox_cmpl(%struct.lpfc_hba* %0, %struct.TYPE_17__* %1) #0 {
  %3 = alloca %struct.lpfc_hba*, align 8
  %4 = alloca %struct.TYPE_17__*, align 8
  %5 = alloca %struct.lpfc_vport*, align 8
  %6 = alloca %struct.lpfc_dmabuf*, align 8
  %7 = alloca %struct.lpfc_nodelist*, align 8
  %8 = alloca %struct.Scsi_Host*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.lpfc_hba* %0, %struct.lpfc_hba** %3, align 8
  store %struct.TYPE_17__* %1, %struct.TYPE_17__** %4, align 8
  %12 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %12, i32 0, i32 4
  %14 = load %struct.lpfc_vport*, %struct.lpfc_vport** %13, align 8
  store %struct.lpfc_vport* %14, %struct.lpfc_vport** %5, align 8
  %15 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %15, i32 0, i32 3
  %17 = load i64, i64* %16, align 8
  %18 = inttoptr i64 %17 to %struct.lpfc_dmabuf*
  store %struct.lpfc_dmabuf* %18, %struct.lpfc_dmabuf** %6, align 8
  %19 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %6, align 8
  %20 = icmp ne %struct.lpfc_dmabuf* %19, null
  br i1 %20, label %21, label %32

21:                                               ; preds = %2
  %22 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %23 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %6, align 8
  %24 = getelementptr inbounds %struct.lpfc_dmabuf, %struct.lpfc_dmabuf* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %6, align 8
  %27 = getelementptr inbounds %struct.lpfc_dmabuf, %struct.lpfc_dmabuf* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @lpfc_mbuf_free(%struct.lpfc_hba* %22, i32 %25, i32 %28)
  %30 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %6, align 8
  %31 = call i32 @kfree(%struct.lpfc_dmabuf* %30)
  br label %32

32:                                               ; preds = %21, %2
  %33 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %34 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %33, i32 0, i32 1
  %35 = load %struct.TYPE_14__*, %struct.TYPE_14__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @FC_UNLOADING, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %89, label %41

41:                                               ; preds = %32
  %42 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %43 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @MBX_REG_LOGIN64, align 8
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %49, label %89

49:                                               ; preds = %41
  %50 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %51 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %51, i32 0, i32 1
  %53 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %89, label %56

56:                                               ; preds = %49
  %57 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %58 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %57, i32 0, i32 1
  %59 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %58, i32 0, i32 1
  %60 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %59, i32 0, i32 2
  %61 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %60, i32 0, i32 1
  %62 = load i32*, i32** %61, align 8
  %63 = getelementptr inbounds i32, i32* %62, i64 0
  %64 = load i32, i32* %63, align 4
  store i32 %64, i32* %9, align 4
  %65 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %66 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %65, i32 0, i32 1
  %67 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %66, i32 0, i32 1
  %68 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %67, i32 0, i32 2
  %69 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  store i32 %71, i32* %10, align 4
  %72 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %73 = load i32, i32* %10, align 4
  %74 = load i32, i32* %9, align 4
  %75 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %76 = call i32 @lpfc_unreg_login(%struct.lpfc_hba* %72, i32 %73, i32 %74, %struct.TYPE_17__* %75)
  %77 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %78 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %77, i32 0, i32 0
  %79 = bitcast {}** %78 to void (%struct.lpfc_hba*, %struct.TYPE_17__*)**
  store void (%struct.lpfc_hba*, %struct.TYPE_17__*)* @lpfc_sli_def_mbox_cmpl, void (%struct.lpfc_hba*, %struct.TYPE_17__*)** %79, align 8
  %80 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %81 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %82 = load i32, i32* @MBX_NOWAIT, align 4
  %83 = call i32 @lpfc_sli_issue_mbox(%struct.lpfc_hba* %80, %struct.TYPE_17__* %81, i32 %82)
  store i32 %83, i32* %11, align 4
  %84 = load i32, i32* %11, align 4
  %85 = load i32, i32* @MBX_NOT_FINISHED, align 4
  %86 = icmp ne i32 %84, %85
  br i1 %86, label %87, label %88

87:                                               ; preds = %56
  br label %193

88:                                               ; preds = %56
  br label %89

89:                                               ; preds = %88, %49, %41, %32
  %90 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %91 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %90, i32 0, i32 1
  %92 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %91, i32 0, i32 1
  %93 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = load i64, i64* @MBX_REG_VPI, align 8
  %96 = icmp eq i64 %94, %95
  br i1 %96, label %97, label %135

97:                                               ; preds = %89
  %98 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %99 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %98, i32 0, i32 1
  %100 = load %struct.TYPE_14__*, %struct.TYPE_14__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = load i32, i32* @FC_UNLOADING, align 4
  %104 = and i32 %102, %103
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %135, label %106

106:                                              ; preds = %97
  %107 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %108 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %107, i32 0, i32 1
  %109 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %108, i32 0, i32 1
  %110 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %109, i32 0, i32 1
  %111 = load i64, i64* %110, align 8
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %135, label %113

113:                                              ; preds = %106
  %114 = load %struct.lpfc_vport*, %struct.lpfc_vport** %5, align 8
  %115 = call %struct.Scsi_Host* @lpfc_shost_from_vport(%struct.lpfc_vport* %114)
  store %struct.Scsi_Host* %115, %struct.Scsi_Host** %8, align 8
  %116 = load %struct.Scsi_Host*, %struct.Scsi_Host** %8, align 8
  %117 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 4
  %119 = call i32 @spin_lock_irq(i32 %118)
  %120 = load i32, i32* @LPFC_VPI_REGISTERED, align 4
  %121 = load %struct.lpfc_vport*, %struct.lpfc_vport** %5, align 8
  %122 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %121, i32 0, i32 1
  %123 = load i32, i32* %122, align 4
  %124 = or i32 %123, %120
  store i32 %124, i32* %122, align 4
  %125 = load i32, i32* @FC_VPORT_NEEDS_REG_VPI, align 4
  %126 = xor i32 %125, -1
  %127 = load %struct.lpfc_vport*, %struct.lpfc_vport** %5, align 8
  %128 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 4
  %130 = and i32 %129, %126
  store i32 %130, i32* %128, align 4
  %131 = load %struct.Scsi_Host*, %struct.Scsi_Host** %8, align 8
  %132 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 4
  %134 = call i32 @spin_unlock_irq(i32 %133)
  br label %135

135:                                              ; preds = %113, %106, %97, %89
  %136 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %137 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %136, i32 0, i32 1
  %138 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %137, i32 0, i32 1
  %139 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %138, i32 0, i32 0
  %140 = load i64, i64* %139, align 8
  %141 = load i64, i64* @MBX_REG_LOGIN64, align 8
  %142 = icmp eq i64 %140, %141
  br i1 %142, label %143, label %152

143:                                              ; preds = %135
  %144 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %145 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %144, i32 0, i32 2
  %146 = load i32*, i32** %145, align 8
  %147 = bitcast i32* %146 to %struct.lpfc_nodelist*
  store %struct.lpfc_nodelist* %147, %struct.lpfc_nodelist** %7, align 8
  %148 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %7, align 8
  %149 = call i32 @lpfc_nlp_put(%struct.lpfc_nodelist* %148)
  %150 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %151 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %150, i32 0, i32 2
  store i32* null, i32** %151, align 8
  br label %152

152:                                              ; preds = %143, %135
  %153 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %154 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %153, i32 0, i32 1
  %155 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %154, i32 0, i32 1
  %156 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %155, i32 0, i32 0
  %157 = load i64, i64* %156, align 8
  %158 = load i64, i64* @MBX_INIT_LINK, align 8
  %159 = icmp eq i64 %157, %158
  br i1 %159, label %160, label %175

160:                                              ; preds = %152
  %161 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %162 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %161, i32 0, i32 1
  %163 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %162, i32 0, i32 1
  %164 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %163, i32 0, i32 1
  %165 = load i64, i64* %164, align 8
  %166 = load i64, i64* @MBXERR_SEC_NO_PERMISSION, align 8
  %167 = icmp eq i64 %165, %166
  br i1 %167, label %168, label %175

168:                                              ; preds = %160
  %169 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %170 = load i32, i32* @KERN_ERR, align 4
  %171 = load i32, i32* @LOG_MBOX, align 4
  %172 = load i32, i32* @LOG_SLI, align 4
  %173 = or i32 %171, %172
  %174 = call i32 @lpfc_printf_log(%struct.lpfc_hba* %169, i32 %170, i32 %173, i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str, i64 0, i64 0))
  br label %175

175:                                              ; preds = %168, %160, %152
  %176 = load i32, i32* @lpfc_mqe_command, align 4
  %177 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %178 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %177, i32 0, i32 1
  %179 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %178, i32 0, i32 0
  %180 = call i64 @bf_get(i32 %176, i32* %179)
  %181 = load i64, i64* @MBX_SLI4_CONFIG, align 8
  %182 = icmp eq i64 %180, %181
  br i1 %182, label %183, label %187

183:                                              ; preds = %175
  %184 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %185 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %186 = call i32 @lpfc_sli4_mbox_cmd_free(%struct.lpfc_hba* %184, %struct.TYPE_17__* %185)
  br label %193

187:                                              ; preds = %175
  %188 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %189 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %190 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %189, i32 0, i32 0
  %191 = load i32, i32* %190, align 8
  %192 = call i32 @mempool_free(%struct.TYPE_17__* %188, i32 %191)
  br label %193

193:                                              ; preds = %87, %187, %183
  ret void
}

declare dso_local i32 @lpfc_mbuf_free(%struct.lpfc_hba*, i32, i32) #1

declare dso_local i32 @kfree(%struct.lpfc_dmabuf*) #1

declare dso_local i32 @lpfc_unreg_login(%struct.lpfc_hba*, i32, i32, %struct.TYPE_17__*) #1

declare dso_local i32 @lpfc_sli_issue_mbox(%struct.lpfc_hba*, %struct.TYPE_17__*, i32) #1

declare dso_local %struct.Scsi_Host* @lpfc_shost_from_vport(%struct.lpfc_vport*) #1

declare dso_local i32 @spin_lock_irq(i32) #1

declare dso_local i32 @spin_unlock_irq(i32) #1

declare dso_local i32 @lpfc_nlp_put(%struct.lpfc_nodelist*) #1

declare dso_local i32 @lpfc_printf_log(%struct.lpfc_hba*, i32, i32, i8*) #1

declare dso_local i64 @bf_get(i32, i32*) #1

declare dso_local i32 @lpfc_sli4_mbox_cmd_free(%struct.lpfc_hba*, %struct.TYPE_17__*) #1

declare dso_local i32 @mempool_free(%struct.TYPE_17__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
