; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/lpfc/extr_lpfc_init.c_lpfc_online.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/lpfc/extr_lpfc_init.c_lpfc_online.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpfc_hba = type { i64, i32, i32, i32, %struct.TYPE_4__, %struct.lpfc_vport* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.lpfc_vport = type { i32, i64, i64 }
%struct.Scsi_Host = type { i32* }

@FC_OFFLINE_MODE = common dso_local global i32 0, align 4
@KERN_WARNING = common dso_local global i32 0, align 4
@LOG_INIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"0458 Bring Adapter online\0A\00", align 1
@LPFC_MBX_WAIT = common dso_local global i32 0, align 4
@LPFC_SLI_REV4 = common dso_local global i64 0, align 8
@LPFC_SLI3_NPIV_ENABLED = common dso_local global i32 0, align 4
@FC_VPORT_NEEDS_REG_VPI = common dso_local global i32 0, align 4
@FC_VPORT_NEEDS_INIT_VPI = common dso_local global i32 0, align 4
@LPFC_PHYSICAL_PORT = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @lpfc_online(%struct.lpfc_hba* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.lpfc_hba*, align 8
  %4 = alloca %struct.lpfc_vport*, align 8
  %5 = alloca %struct.lpfc_vport**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.Scsi_Host*, align 8
  store %struct.lpfc_hba* %0, %struct.lpfc_hba** %3, align 8
  store i32 0, i32* %7, align 4
  %9 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %10 = icmp ne %struct.lpfc_hba* %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %182

12:                                               ; preds = %1
  %13 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %14 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %13, i32 0, i32 5
  %15 = load %struct.lpfc_vport*, %struct.lpfc_vport** %14, align 8
  store %struct.lpfc_vport* %15, %struct.lpfc_vport** %4, align 8
  %16 = load %struct.lpfc_vport*, %struct.lpfc_vport** %4, align 8
  %17 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = load i32, i32* @FC_OFFLINE_MODE, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %12
  store i32 0, i32* %2, align 4
  br label %182

23:                                               ; preds = %12
  %24 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %25 = load i32, i32* @KERN_WARNING, align 4
  %26 = load i32, i32* @LOG_INIT, align 4
  %27 = call i32 @lpfc_printf_log(%struct.lpfc_hba* %24, i32 %25, i32 %26, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %28 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %29 = load i32, i32* @LPFC_MBX_WAIT, align 4
  %30 = call i32 @lpfc_block_mgmt_io(%struct.lpfc_hba* %28, i32 %29)
  %31 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %32 = call i32 @lpfc_sli_queue_setup(%struct.lpfc_hba* %31)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %37, label %34

34:                                               ; preds = %23
  %35 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %36 = call i32 @lpfc_unblock_mgmt_io(%struct.lpfc_hba* %35)
  store i32 1, i32* %2, align 4
  br label %182

37:                                               ; preds = %23
  %38 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %39 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @LPFC_SLI_REV4, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %43, label %65

43:                                               ; preds = %37
  %44 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %45 = call i64 @lpfc_sli4_hba_setup(%struct.lpfc_hba* %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %43
  %48 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %49 = call i32 @lpfc_unblock_mgmt_io(%struct.lpfc_hba* %48)
  store i32 1, i32* %2, align 4
  br label %182

50:                                               ; preds = %43
  %51 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %52 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %51, i32 0, i32 3
  %53 = call i32 @spin_lock_irq(i32* %52)
  %54 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %55 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %54, i32 0, i32 4
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %61, label %60

60:                                               ; preds = %50
  store i32 1, i32* %7, align 4
  br label %61

61:                                               ; preds = %60, %50
  %62 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %63 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %62, i32 0, i32 3
  %64 = call i32 @spin_unlock_irq(i32* %63)
  br label %73

65:                                               ; preds = %37
  %66 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %67 = call i64 @lpfc_sli_hba_setup(%struct.lpfc_hba* %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %72

69:                                               ; preds = %65
  %70 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %71 = call i32 @lpfc_unblock_mgmt_io(%struct.lpfc_hba* %70)
  store i32 1, i32* %2, align 4
  br label %182

72:                                               ; preds = %65
  br label %73

73:                                               ; preds = %72, %61
  %74 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %75 = call %struct.lpfc_vport** @lpfc_create_vport_work_array(%struct.lpfc_hba* %74)
  store %struct.lpfc_vport** %75, %struct.lpfc_vport*** %5, align 8
  %76 = load %struct.lpfc_vport**, %struct.lpfc_vport*** %5, align 8
  %77 = icmp ne %struct.lpfc_vport** %76, null
  br i1 %77, label %78, label %176

78:                                               ; preds = %73
  store i32 0, i32* %6, align 4
  br label %79

79:                                               ; preds = %172, %78
  %80 = load i32, i32* %6, align 4
  %81 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %82 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 8
  %84 = icmp sle i32 %80, %83
  br i1 %84, label %85, label %92

85:                                               ; preds = %79
  %86 = load %struct.lpfc_vport**, %struct.lpfc_vport*** %5, align 8
  %87 = load i32, i32* %6, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds %struct.lpfc_vport*, %struct.lpfc_vport** %86, i64 %88
  %90 = load %struct.lpfc_vport*, %struct.lpfc_vport** %89, align 8
  %91 = icmp ne %struct.lpfc_vport* %90, null
  br label %92

92:                                               ; preds = %85, %79
  %93 = phi i1 [ false, %79 ], [ %91, %85 ]
  br i1 %93, label %94, label %175

94:                                               ; preds = %92
  %95 = load %struct.lpfc_vport**, %struct.lpfc_vport*** %5, align 8
  %96 = load i32, i32* %6, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds %struct.lpfc_vport*, %struct.lpfc_vport** %95, i64 %97
  %99 = load %struct.lpfc_vport*, %struct.lpfc_vport** %98, align 8
  %100 = call %struct.Scsi_Host* @lpfc_shost_from_vport(%struct.lpfc_vport* %99)
  store %struct.Scsi_Host* %100, %struct.Scsi_Host** %8, align 8
  %101 = load %struct.Scsi_Host*, %struct.Scsi_Host** %8, align 8
  %102 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %101, i32 0, i32 0
  %103 = load i32*, i32** %102, align 8
  %104 = call i32 @spin_lock_irq(i32* %103)
  %105 = load i32, i32* @FC_OFFLINE_MODE, align 4
  %106 = xor i32 %105, -1
  %107 = load %struct.lpfc_vport**, %struct.lpfc_vport*** %5, align 8
  %108 = load i32, i32* %6, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds %struct.lpfc_vport*, %struct.lpfc_vport** %107, i64 %109
  %111 = load %struct.lpfc_vport*, %struct.lpfc_vport** %110, align 8
  %112 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = and i32 %113, %106
  store i32 %114, i32* %112, align 8
  %115 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %116 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %115, i32 0, i32 2
  %117 = load i32, i32* %116, align 4
  %118 = load i32, i32* @LPFC_SLI3_NPIV_ENABLED, align 4
  %119 = and i32 %117, %118
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %131

121:                                              ; preds = %94
  %122 = load i32, i32* @FC_VPORT_NEEDS_REG_VPI, align 4
  %123 = load %struct.lpfc_vport**, %struct.lpfc_vport*** %5, align 8
  %124 = load i32, i32* %6, align 4
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds %struct.lpfc_vport*, %struct.lpfc_vport** %123, i64 %125
  %127 = load %struct.lpfc_vport*, %struct.lpfc_vport** %126, align 8
  %128 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 8
  %130 = or i32 %129, %122
  store i32 %130, i32* %128, align 8
  br label %131

131:                                              ; preds = %121, %94
  %132 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %133 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %132, i32 0, i32 0
  %134 = load i64, i64* %133, align 8
  %135 = load i64, i64* @LPFC_SLI_REV4, align 8
  %136 = icmp eq i64 %134, %135
  br i1 %136, label %137, label %167

137:                                              ; preds = %131
  %138 = load i32, i32* @FC_VPORT_NEEDS_INIT_VPI, align 4
  %139 = load %struct.lpfc_vport**, %struct.lpfc_vport*** %5, align 8
  %140 = load i32, i32* %6, align 4
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds %struct.lpfc_vport*, %struct.lpfc_vport** %139, i64 %141
  %143 = load %struct.lpfc_vport*, %struct.lpfc_vport** %142, align 8
  %144 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 8
  %146 = or i32 %145, %138
  store i32 %146, i32* %144, align 8
  %147 = load i32, i32* %7, align 4
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %149, label %166

149:                                              ; preds = %137
  %150 = load %struct.lpfc_vport**, %struct.lpfc_vport*** %5, align 8
  %151 = load i32, i32* %6, align 4
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds %struct.lpfc_vport*, %struct.lpfc_vport** %150, i64 %152
  %154 = load %struct.lpfc_vport*, %struct.lpfc_vport** %153, align 8
  %155 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %154, i32 0, i32 1
  %156 = load i64, i64* %155, align 8
  %157 = load i64, i64* @LPFC_PHYSICAL_PORT, align 8
  %158 = icmp ne i64 %156, %157
  br i1 %158, label %159, label %166

159:                                              ; preds = %149
  %160 = load %struct.lpfc_vport**, %struct.lpfc_vport*** %5, align 8
  %161 = load i32, i32* %6, align 4
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds %struct.lpfc_vport*, %struct.lpfc_vport** %160, i64 %162
  %164 = load %struct.lpfc_vport*, %struct.lpfc_vport** %163, align 8
  %165 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %164, i32 0, i32 2
  store i64 0, i64* %165, align 8
  br label %166

166:                                              ; preds = %159, %149, %137
  br label %167

167:                                              ; preds = %166, %131
  %168 = load %struct.Scsi_Host*, %struct.Scsi_Host** %8, align 8
  %169 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %168, i32 0, i32 0
  %170 = load i32*, i32** %169, align 8
  %171 = call i32 @spin_unlock_irq(i32* %170)
  br label %172

172:                                              ; preds = %167
  %173 = load i32, i32* %6, align 4
  %174 = add nsw i32 %173, 1
  store i32 %174, i32* %6, align 4
  br label %79

175:                                              ; preds = %92
  br label %176

176:                                              ; preds = %175, %73
  %177 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %178 = load %struct.lpfc_vport**, %struct.lpfc_vport*** %5, align 8
  %179 = call i32 @lpfc_destroy_vport_work_array(%struct.lpfc_hba* %177, %struct.lpfc_vport** %178)
  %180 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %181 = call i32 @lpfc_unblock_mgmt_io(%struct.lpfc_hba* %180)
  store i32 0, i32* %2, align 4
  br label %182

182:                                              ; preds = %176, %69, %47, %34, %22, %11
  %183 = load i32, i32* %2, align 4
  ret i32 %183
}

declare dso_local i32 @lpfc_printf_log(%struct.lpfc_hba*, i32, i32, i8*) #1

declare dso_local i32 @lpfc_block_mgmt_io(%struct.lpfc_hba*, i32) #1

declare dso_local i32 @lpfc_sli_queue_setup(%struct.lpfc_hba*) #1

declare dso_local i32 @lpfc_unblock_mgmt_io(%struct.lpfc_hba*) #1

declare dso_local i64 @lpfc_sli4_hba_setup(%struct.lpfc_hba*) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i64 @lpfc_sli_hba_setup(%struct.lpfc_hba*) #1

declare dso_local %struct.lpfc_vport** @lpfc_create_vport_work_array(%struct.lpfc_hba*) #1

declare dso_local %struct.Scsi_Host* @lpfc_shost_from_vport(%struct.lpfc_vport*) #1

declare dso_local i32 @lpfc_destroy_vport_work_array(%struct.lpfc_hba*, %struct.lpfc_vport**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
