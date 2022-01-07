; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/lpfc/extr_lpfc_hbadisc.c_lpfc_linkup.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/lpfc/extr_lpfc_hbadisc.c_lpfc_linkup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpfc_hba = type { i32, i32, i32, i32 }
%struct.lpfc_vport = type { i32 }

@LPFC_LINK_UP = common dso_local global i32 0, align 4
@FABRIC_COMANDS_BLOCKED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lpfc_hba*)* @lpfc_linkup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lpfc_linkup(%struct.lpfc_hba* %0) #0 {
  %2 = alloca %struct.lpfc_hba*, align 8
  %3 = alloca %struct.lpfc_vport**, align 8
  %4 = alloca i32, align 4
  store %struct.lpfc_hba* %0, %struct.lpfc_hba** %2, align 8
  %5 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %6 = call i32 @lpfc_cleanup_wt_rrqs(%struct.lpfc_hba* %5)
  %7 = load i32, i32* @LPFC_LINK_UP, align 4
  %8 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %9 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %8, i32 0, i32 3
  store i32 %7, i32* %9, align 4
  %10 = load i32, i32* @FABRIC_COMANDS_BLOCKED, align 4
  %11 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %12 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %11, i32 0, i32 2
  %13 = call i32 @clear_bit(i32 %10, i32* %12)
  %14 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %15 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %14, i32 0, i32 1
  %16 = call i32 @del_timer_sync(i32* %15)
  %17 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %18 = call %struct.lpfc_vport** @lpfc_create_vport_work_array(%struct.lpfc_hba* %17)
  store %struct.lpfc_vport** %18, %struct.lpfc_vport*** %3, align 8
  %19 = load %struct.lpfc_vport**, %struct.lpfc_vport*** %3, align 8
  %20 = icmp ne %struct.lpfc_vport** %19, null
  br i1 %20, label %21, label %48

21:                                               ; preds = %1
  store i32 0, i32* %4, align 4
  br label %22

22:                                               ; preds = %44, %21
  %23 = load i32, i32* %4, align 4
  %24 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %25 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = icmp sle i32 %23, %26
  br i1 %27, label %28, label %35

28:                                               ; preds = %22
  %29 = load %struct.lpfc_vport**, %struct.lpfc_vport*** %3, align 8
  %30 = load i32, i32* %4, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.lpfc_vport*, %struct.lpfc_vport** %29, i64 %31
  %33 = load %struct.lpfc_vport*, %struct.lpfc_vport** %32, align 8
  %34 = icmp ne %struct.lpfc_vport* %33, null
  br label %35

35:                                               ; preds = %28, %22
  %36 = phi i1 [ false, %22 ], [ %34, %28 ]
  br i1 %36, label %37, label %47

37:                                               ; preds = %35
  %38 = load %struct.lpfc_vport**, %struct.lpfc_vport*** %3, align 8
  %39 = load i32, i32* %4, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.lpfc_vport*, %struct.lpfc_vport** %38, i64 %40
  %42 = load %struct.lpfc_vport*, %struct.lpfc_vport** %41, align 8
  %43 = call i32 @lpfc_linkup_port(%struct.lpfc_vport* %42)
  br label %44

44:                                               ; preds = %37
  %45 = load i32, i32* %4, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %4, align 4
  br label %22

47:                                               ; preds = %35
  br label %48

48:                                               ; preds = %47, %1
  %49 = load %struct.lpfc_hba*, %struct.lpfc_hba** %2, align 8
  %50 = load %struct.lpfc_vport**, %struct.lpfc_vport*** %3, align 8
  %51 = call i32 @lpfc_destroy_vport_work_array(%struct.lpfc_hba* %49, %struct.lpfc_vport** %50)
  ret i32 0
}

declare dso_local i32 @lpfc_cleanup_wt_rrqs(%struct.lpfc_hba*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @del_timer_sync(i32*) #1

declare dso_local %struct.lpfc_vport** @lpfc_create_vport_work_array(%struct.lpfc_hba*) #1

declare dso_local i32 @lpfc_linkup_port(%struct.lpfc_vport*) #1

declare dso_local i32 @lpfc_destroy_vport_work_array(%struct.lpfc_hba*, %struct.lpfc_vport**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
