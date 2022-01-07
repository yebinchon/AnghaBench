; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/lpfc/extr_lpfc_bsg.c_lpfc_sli4_bsg_diag_mode_end.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/lpfc/extr_lpfc_bsg.c_lpfc_sli4_bsg_diag_mode_end.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fc_bsg_job = type { {}*, %struct.TYPE_12__*, %struct.TYPE_10__*, %struct.Scsi_Host* }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i64 }
%struct.Scsi_Host = type { i64 }
%struct.lpfc_vport = type { %struct.lpfc_hba* }
%struct.lpfc_hba = type { i64, i64, %struct.TYPE_11__*, i32, i32, %struct.TYPE_7__ }
%struct.TYPE_11__ = type { i64 }
%struct.TYPE_7__ = type { i32 }
%struct.diag_mode_set = type { i32 }

@ENODEV = common dso_local global i32 0, align 4
@LPFC_SLI_REV4 = common dso_local global i64 0, align 8
@lpfc_sli_intf_if_type = common dso_local global i32 0, align 4
@LPFC_SLI_INTF_IF_TYPE_2 = common dso_local global i64 0, align 8
@LS_LOOPBACK_MODE = common dso_local global i32 0, align 4
@KERN_WARNING = common dso_local global i32 0, align 4
@LOG_LIBDFC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [55 x i8] c"3139 Failed to bring link to diagnostic state, rc:x%x\0A\00", align 1
@LPFC_LINK_DOWN = common dso_local global i64 0, align 8
@ETIMEDOUT = common dso_local global i32 0, align 4
@KERN_INFO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [69 x i8] c"3140 Timeout waiting for link to diagnostic mode_end, timeout:%d ms\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fc_bsg_job*)* @lpfc_sli4_bsg_diag_mode_end to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lpfc_sli4_bsg_diag_mode_end(%struct.fc_bsg_job* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.fc_bsg_job*, align 8
  %4 = alloca %struct.Scsi_Host*, align 8
  %5 = alloca %struct.lpfc_vport*, align 8
  %6 = alloca %struct.lpfc_hba*, align 8
  %7 = alloca %struct.diag_mode_set*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.fc_bsg_job* %0, %struct.fc_bsg_job** %3, align 8
  %11 = load %struct.fc_bsg_job*, %struct.fc_bsg_job** %3, align 8
  %12 = getelementptr inbounds %struct.fc_bsg_job, %struct.fc_bsg_job* %11, i32 0, i32 3
  %13 = load %struct.Scsi_Host*, %struct.Scsi_Host** %12, align 8
  store %struct.Scsi_Host* %13, %struct.Scsi_Host** %4, align 8
  %14 = load %struct.Scsi_Host*, %struct.Scsi_Host** %4, align 8
  %15 = icmp ne %struct.Scsi_Host* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %1
  %17 = load i32, i32* @ENODEV, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %2, align 4
  br label %142

19:                                               ; preds = %1
  %20 = load %struct.fc_bsg_job*, %struct.fc_bsg_job** %3, align 8
  %21 = getelementptr inbounds %struct.fc_bsg_job, %struct.fc_bsg_job* %20, i32 0, i32 3
  %22 = load %struct.Scsi_Host*, %struct.Scsi_Host** %21, align 8
  %23 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = inttoptr i64 %24 to %struct.lpfc_vport*
  store %struct.lpfc_vport* %25, %struct.lpfc_vport** %5, align 8
  %26 = load %struct.lpfc_vport*, %struct.lpfc_vport** %5, align 8
  %27 = icmp ne %struct.lpfc_vport* %26, null
  br i1 %27, label %31, label %28

28:                                               ; preds = %19
  %29 = load i32, i32* @ENODEV, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %2, align 4
  br label %142

31:                                               ; preds = %19
  %32 = load %struct.lpfc_vport*, %struct.lpfc_vport** %5, align 8
  %33 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %32, i32 0, i32 0
  %34 = load %struct.lpfc_hba*, %struct.lpfc_hba** %33, align 8
  store %struct.lpfc_hba* %34, %struct.lpfc_hba** %6, align 8
  %35 = load %struct.lpfc_hba*, %struct.lpfc_hba** %6, align 8
  %36 = icmp ne %struct.lpfc_hba* %35, null
  br i1 %36, label %40, label %37

37:                                               ; preds = %31
  %38 = load i32, i32* @ENODEV, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %2, align 4
  br label %142

40:                                               ; preds = %31
  %41 = load %struct.lpfc_hba*, %struct.lpfc_hba** %6, align 8
  %42 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @LPFC_SLI_REV4, align 8
  %45 = icmp slt i64 %43, %44
  br i1 %45, label %46, label %49

46:                                               ; preds = %40
  %47 = load i32, i32* @ENODEV, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %2, align 4
  br label %142

49:                                               ; preds = %40
  %50 = load i32, i32* @lpfc_sli_intf_if_type, align 4
  %51 = load %struct.lpfc_hba*, %struct.lpfc_hba** %6, align 8
  %52 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %51, i32 0, i32 5
  %53 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %52, i32 0, i32 0
  %54 = call i64 @bf_get(i32 %50, i32* %53)
  %55 = load i64, i64* @LPFC_SLI_INTF_IF_TYPE_2, align 8
  %56 = icmp ne i64 %54, %55
  br i1 %56, label %57, label %60

57:                                               ; preds = %49
  %58 = load i32, i32* @ENODEV, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %2, align 4
  br label %142

60:                                               ; preds = %49
  %61 = load %struct.lpfc_hba*, %struct.lpfc_hba** %6, align 8
  %62 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %61, i32 0, i32 3
  %63 = call i32 @spin_lock_irq(i32* %62)
  %64 = load i32, i32* @LS_LOOPBACK_MODE, align 4
  %65 = xor i32 %64, -1
  %66 = load %struct.lpfc_hba*, %struct.lpfc_hba** %6, align 8
  %67 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %66, i32 0, i32 4
  %68 = load i32, i32* %67, align 4
  %69 = and i32 %68, %65
  store i32 %69, i32* %67, align 4
  %70 = load %struct.lpfc_hba*, %struct.lpfc_hba** %6, align 8
  %71 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %70, i32 0, i32 3
  %72 = call i32 @spin_unlock_irq(i32* %71)
  %73 = load %struct.fc_bsg_job*, %struct.fc_bsg_job** %3, align 8
  %74 = getelementptr inbounds %struct.fc_bsg_job, %struct.fc_bsg_job* %73, i32 0, i32 2
  %75 = load %struct.TYPE_10__*, %struct.TYPE_10__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = inttoptr i64 %79 to %struct.diag_mode_set*
  store %struct.diag_mode_set* %80, %struct.diag_mode_set** %7, align 8
  %81 = load %struct.diag_mode_set*, %struct.diag_mode_set** %7, align 8
  %82 = getelementptr inbounds %struct.diag_mode_set, %struct.diag_mode_set* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = mul nsw i32 %83, 100
  store i32 %84, i32* %8, align 4
  %85 = load %struct.lpfc_hba*, %struct.lpfc_hba** %6, align 8
  %86 = call i32 @lpfc_sli4_bsg_set_link_diag_state(%struct.lpfc_hba* %85, i32 0)
  store i32 %86, i32* %9, align 4
  %87 = load i32, i32* %9, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %95

89:                                               ; preds = %60
  %90 = load %struct.lpfc_hba*, %struct.lpfc_hba** %6, align 8
  %91 = load i32, i32* @KERN_WARNING, align 4
  %92 = load i32, i32* @LOG_LIBDFC, align 4
  %93 = load i32, i32* %9, align 4
  %94 = call i32 @lpfc_printf_log(%struct.lpfc_hba* %90, i32 %91, i32 %92, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0), i32 %93)
  br label %125

95:                                               ; preds = %60
  store i32 0, i32* %10, align 4
  br label %96

96:                                               ; preds = %116, %95
  %97 = load %struct.lpfc_hba*, %struct.lpfc_hba** %6, align 8
  %98 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %97, i32 0, i32 1
  %99 = load i64, i64* %98, align 8
  %100 = load i64, i64* @LPFC_LINK_DOWN, align 8
  %101 = icmp ne i64 %99, %100
  br i1 %101, label %102, label %118

102:                                              ; preds = %96
  %103 = load i32, i32* %10, align 4
  %104 = add nsw i32 %103, 1
  store i32 %104, i32* %10, align 4
  %105 = load i32, i32* %8, align 4
  %106 = icmp sgt i32 %103, %105
  br i1 %106, label %107, label %116

107:                                              ; preds = %102
  %108 = load i32, i32* @ETIMEDOUT, align 4
  %109 = sub nsw i32 0, %108
  store i32 %109, i32* %9, align 4
  %110 = load %struct.lpfc_hba*, %struct.lpfc_hba** %6, align 8
  %111 = load i32, i32* @KERN_INFO, align 4
  %112 = load i32, i32* @LOG_LIBDFC, align 4
  %113 = load i32, i32* %8, align 4
  %114 = mul nsw i32 %113, 10
  %115 = call i32 @lpfc_printf_log(%struct.lpfc_hba* %110, i32 %111, i32 %112, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.1, i64 0, i64 0), i32 %114)
  br label %118

116:                                              ; preds = %102
  %117 = call i32 @msleep(i32 10)
  br label %96

118:                                              ; preds = %107, %96
  %119 = load %struct.lpfc_hba*, %struct.lpfc_hba** %6, align 8
  %120 = call i32 @lpfc_selective_reset(%struct.lpfc_hba* %119)
  store i32 %120, i32* %9, align 4
  %121 = load %struct.lpfc_hba*, %struct.lpfc_hba** %6, align 8
  %122 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %121, i32 0, i32 2
  %123 = load %struct.TYPE_11__*, %struct.TYPE_11__** %122, align 8
  %124 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %123, i32 0, i32 0
  store i64 0, i64* %124, align 8
  br label %125

125:                                              ; preds = %118, %89
  %126 = load i32, i32* %9, align 4
  %127 = load %struct.fc_bsg_job*, %struct.fc_bsg_job** %3, align 8
  %128 = getelementptr inbounds %struct.fc_bsg_job, %struct.fc_bsg_job* %127, i32 0, i32 1
  %129 = load %struct.TYPE_12__*, %struct.TYPE_12__** %128, align 8
  %130 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %129, i32 0, i32 0
  store i32 %126, i32* %130, align 4
  %131 = load i32, i32* %9, align 4
  %132 = icmp eq i32 %131, 0
  br i1 %132, label %133, label %140

133:                                              ; preds = %125
  %134 = load %struct.fc_bsg_job*, %struct.fc_bsg_job** %3, align 8
  %135 = getelementptr inbounds %struct.fc_bsg_job, %struct.fc_bsg_job* %134, i32 0, i32 0
  %136 = bitcast {}** %135 to i32 (%struct.fc_bsg_job*)**
  %137 = load i32 (%struct.fc_bsg_job*)*, i32 (%struct.fc_bsg_job*)** %136, align 8
  %138 = load %struct.fc_bsg_job*, %struct.fc_bsg_job** %3, align 8
  %139 = call i32 %137(%struct.fc_bsg_job* %138)
  br label %140

140:                                              ; preds = %133, %125
  %141 = load i32, i32* %9, align 4
  store i32 %141, i32* %2, align 4
  br label %142

142:                                              ; preds = %140, %57, %46, %37, %28, %16
  %143 = load i32, i32* %2, align 4
  ret i32 %143
}

declare dso_local i64 @bf_get(i32, i32*) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @lpfc_sli4_bsg_set_link_diag_state(%struct.lpfc_hba*, i32) #1

declare dso_local i32 @lpfc_printf_log(%struct.lpfc_hba*, i32, i32, i8*, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @lpfc_selective_reset(%struct.lpfc_hba*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
