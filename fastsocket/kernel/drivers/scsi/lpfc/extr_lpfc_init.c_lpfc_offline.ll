; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/lpfc/extr_lpfc_init.c_lpfc_offline.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/lpfc/extr_lpfc_init.c_lpfc_offline.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpfc_hba = type { i32, i32, i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.Scsi_Host = type { i32* }
%struct.lpfc_vport = type { i32, i64 }

@FC_OFFLINE_MODE = common dso_local global i32 0, align 4
@KERN_WARNING = common dso_local global i32 0, align 4
@LOG_INIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"0460 Bring Adapter offline\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @lpfc_offline(%struct.lpfc_hba* %0) #0 {
  %2 = alloca %struct.lpfc_hba*, align 8
  %3 = alloca %struct.Scsi_Host*, align 8
  %4 = alloca %struct.lpfc_vport**, align 8
  %5 = alloca i32, align 4
  store %struct.lpfc_hba* %0, %struct.lpfc_hba** %2, align 8
  %6 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %7 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %6, i32 0, i32 3
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* @FC_OFFLINE_MODE, align 4
  %12 = and i32 %10, %11
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %1
  br label %125

15:                                               ; preds = %1
  %16 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %17 = call i32 @lpfc_stop_port(%struct.lpfc_hba* %16)
  %18 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %19 = call %struct.lpfc_vport** @lpfc_create_vport_work_array(%struct.lpfc_hba* %18)
  store %struct.lpfc_vport** %19, %struct.lpfc_vport*** %4, align 8
  %20 = load %struct.lpfc_vport**, %struct.lpfc_vport*** %4, align 8
  %21 = icmp ne %struct.lpfc_vport** %20, null
  br i1 %21, label %22, label %49

22:                                               ; preds = %15
  store i32 0, i32* %5, align 4
  br label %23

23:                                               ; preds = %45, %22
  %24 = load i32, i32* %5, align 4
  %25 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %26 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = icmp sle i32 %24, %27
  br i1 %28, label %29, label %36

29:                                               ; preds = %23
  %30 = load %struct.lpfc_vport**, %struct.lpfc_vport*** %4, align 8
  %31 = load i32, i32* %5, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.lpfc_vport*, %struct.lpfc_vport** %30, i64 %32
  %34 = load %struct.lpfc_vport*, %struct.lpfc_vport** %33, align 8
  %35 = icmp ne %struct.lpfc_vport* %34, null
  br label %36

36:                                               ; preds = %29, %23
  %37 = phi i1 [ false, %23 ], [ %35, %29 ]
  br i1 %37, label %38, label %48

38:                                               ; preds = %36
  %39 = load %struct.lpfc_vport**, %struct.lpfc_vport*** %4, align 8
  %40 = load i32, i32* %5, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.lpfc_vport*, %struct.lpfc_vport** %39, i64 %41
  %43 = load %struct.lpfc_vport*, %struct.lpfc_vport** %42, align 8
  %44 = call i32 @lpfc_stop_vport_timers(%struct.lpfc_vport* %43)
  br label %45

45:                                               ; preds = %38
  %46 = load i32, i32* %5, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %5, align 4
  br label %23

48:                                               ; preds = %36
  br label %49

49:                                               ; preds = %48, %15
  %50 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %51 = load %struct.lpfc_vport**, %struct.lpfc_vport*** %4, align 8
  %52 = call i32 @lpfc_destroy_vport_work_array(%struct.lpfc_hba* %50, %struct.lpfc_vport** %51)
  %53 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %54 = load i32, i32* @KERN_WARNING, align 4
  %55 = load i32, i32* @LOG_INIT, align 4
  %56 = call i32 @lpfc_printf_log(%struct.lpfc_hba* %53, i32 %54, i32 %55, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %57 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %58 = call i32 @lpfc_sli_hba_down(%struct.lpfc_hba* %57)
  %59 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %60 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %59, i32 0, i32 1
  %61 = call i32 @spin_lock_irq(i32* %60)
  %62 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %63 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %62, i32 0, i32 2
  store i64 0, i64* %63, align 8
  %64 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %65 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %64, i32 0, i32 1
  %66 = call i32 @spin_unlock_irq(i32* %65)
  %67 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %68 = call %struct.lpfc_vport** @lpfc_create_vport_work_array(%struct.lpfc_hba* %67)
  store %struct.lpfc_vport** %68, %struct.lpfc_vport*** %4, align 8
  %69 = load %struct.lpfc_vport**, %struct.lpfc_vport*** %4, align 8
  %70 = icmp ne %struct.lpfc_vport** %69, null
  br i1 %70, label %71, label %121

71:                                               ; preds = %49
  store i32 0, i32* %5, align 4
  br label %72

72:                                               ; preds = %117, %71
  %73 = load i32, i32* %5, align 4
  %74 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %75 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = icmp sle i32 %73, %76
  br i1 %77, label %78, label %85

78:                                               ; preds = %72
  %79 = load %struct.lpfc_vport**, %struct.lpfc_vport*** %4, align 8
  %80 = load i32, i32* %5, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds %struct.lpfc_vport*, %struct.lpfc_vport** %79, i64 %81
  %83 = load %struct.lpfc_vport*, %struct.lpfc_vport** %82, align 8
  %84 = icmp ne %struct.lpfc_vport* %83, null
  br label %85

85:                                               ; preds = %78, %72
  %86 = phi i1 [ false, %72 ], [ %84, %78 ]
  br i1 %86, label %87, label %120

87:                                               ; preds = %85
  %88 = load %struct.lpfc_vport**, %struct.lpfc_vport*** %4, align 8
  %89 = load i32, i32* %5, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds %struct.lpfc_vport*, %struct.lpfc_vport** %88, i64 %90
  %92 = load %struct.lpfc_vport*, %struct.lpfc_vport** %91, align 8
  %93 = call %struct.Scsi_Host* @lpfc_shost_from_vport(%struct.lpfc_vport* %92)
  store %struct.Scsi_Host* %93, %struct.Scsi_Host** %3, align 8
  %94 = load %struct.Scsi_Host*, %struct.Scsi_Host** %3, align 8
  %95 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %94, i32 0, i32 0
  %96 = load i32*, i32** %95, align 8
  %97 = call i32 @spin_lock_irq(i32* %96)
  %98 = load %struct.lpfc_vport**, %struct.lpfc_vport*** %4, align 8
  %99 = load i32, i32* %5, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds %struct.lpfc_vport*, %struct.lpfc_vport** %98, i64 %100
  %102 = load %struct.lpfc_vport*, %struct.lpfc_vport** %101, align 8
  %103 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %102, i32 0, i32 1
  store i64 0, i64* %103, align 8
  %104 = load i32, i32* @FC_OFFLINE_MODE, align 4
  %105 = load %struct.lpfc_vport**, %struct.lpfc_vport*** %4, align 8
  %106 = load i32, i32* %5, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds %struct.lpfc_vport*, %struct.lpfc_vport** %105, i64 %107
  %109 = load %struct.lpfc_vport*, %struct.lpfc_vport** %108, align 8
  %110 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 8
  %112 = or i32 %111, %104
  store i32 %112, i32* %110, align 8
  %113 = load %struct.Scsi_Host*, %struct.Scsi_Host** %3, align 8
  %114 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %113, i32 0, i32 0
  %115 = load i32*, i32** %114, align 8
  %116 = call i32 @spin_unlock_irq(i32* %115)
  br label %117

117:                                              ; preds = %87
  %118 = load i32, i32* %5, align 4
  %119 = add nsw i32 %118, 1
  store i32 %119, i32* %5, align 4
  br label %72

120:                                              ; preds = %85
  br label %121

121:                                              ; preds = %120, %49
  %122 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %123 = load %struct.lpfc_vport**, %struct.lpfc_vport*** %4, align 8
  %124 = call i32 @lpfc_destroy_vport_work_array(%struct.lpfc_hba* %122, %struct.lpfc_vport** %123)
  br label %125

125:                                              ; preds = %121, %14
  ret void
}

declare dso_local i32 @lpfc_stop_port(%struct.lpfc_hba*) #1

declare dso_local %struct.lpfc_vport** @lpfc_create_vport_work_array(%struct.lpfc_hba*) #1

declare dso_local i32 @lpfc_stop_vport_timers(%struct.lpfc_vport*) #1

declare dso_local i32 @lpfc_destroy_vport_work_array(%struct.lpfc_hba*, %struct.lpfc_vport**) #1

declare dso_local i32 @lpfc_printf_log(%struct.lpfc_hba*, i32, i32, i8*) #1

declare dso_local i32 @lpfc_sli_hba_down(%struct.lpfc_hba*) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local %struct.Scsi_Host* @lpfc_shost_from_vport(%struct.lpfc_vport*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
