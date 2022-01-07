; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/lpfc/extr_lpfc_scsi.c_lpfc_slave_configure.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/lpfc/extr_lpfc_scsi.c_lpfc_slave_configure.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_device = type { i64, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64 }
%struct.lpfc_vport = type { i32, %struct.lpfc_hba* }
%struct.lpfc_hba = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32* }

@ENABLE_FCP_RING_POLLING = common dso_local global i32 0, align 4
@LPFC_FCP_RING = common dso_local global i64 0, align 8
@HA_R0RE_REQ = common dso_local global i32 0, align 4
@DISABLE_FCP_RING_INT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.scsi_device*)* @lpfc_slave_configure to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lpfc_slave_configure(%struct.scsi_device* %0) #0 {
  %2 = alloca %struct.scsi_device*, align 8
  %3 = alloca %struct.lpfc_vport*, align 8
  %4 = alloca %struct.lpfc_hba*, align 8
  store %struct.scsi_device* %0, %struct.scsi_device** %2, align 8
  %5 = load %struct.scsi_device*, %struct.scsi_device** %2, align 8
  %6 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %5, i32 0, i32 1
  %7 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = inttoptr i64 %9 to %struct.lpfc_vport*
  store %struct.lpfc_vport* %10, %struct.lpfc_vport** %3, align 8
  %11 = load %struct.lpfc_vport*, %struct.lpfc_vport** %3, align 8
  %12 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %11, i32 0, i32 1
  %13 = load %struct.lpfc_hba*, %struct.lpfc_hba** %12, align 8
  store %struct.lpfc_hba* %13, %struct.lpfc_hba** %4, align 8
  %14 = load %struct.scsi_device*, %struct.scsi_device** %2, align 8
  %15 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %24

18:                                               ; preds = %1
  %19 = load %struct.scsi_device*, %struct.scsi_device** %2, align 8
  %20 = load %struct.lpfc_vport*, %struct.lpfc_vport** %3, align 8
  %21 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = call i32 @scsi_activate_tcq(%struct.scsi_device* %19, i32 %22)
  br label %30

24:                                               ; preds = %1
  %25 = load %struct.scsi_device*, %struct.scsi_device** %2, align 8
  %26 = load %struct.lpfc_vport*, %struct.lpfc_vport** %3, align 8
  %27 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = call i32 @scsi_deactivate_tcq(%struct.scsi_device* %25, i32 %28)
  br label %30

30:                                               ; preds = %24, %18
  %31 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %32 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = load i32, i32* @ENABLE_FCP_RING_POLLING, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %57

37:                                               ; preds = %30
  %38 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %39 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %40 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 0
  %42 = load i32*, i32** %41, align 8
  %43 = load i64, i64* @LPFC_FCP_RING, align 8
  %44 = getelementptr inbounds i32, i32* %42, i64 %43
  %45 = load i32, i32* @HA_R0RE_REQ, align 4
  %46 = call i32 @lpfc_sli_handle_fast_ring_event(%struct.lpfc_hba* %38, i32* %44, i32 %45)
  %47 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %48 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = load i32, i32* @DISABLE_FCP_RING_INT, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %56

53:                                               ; preds = %37
  %54 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %55 = call i32 @lpfc_poll_rearm_timer(%struct.lpfc_hba* %54)
  br label %56

56:                                               ; preds = %53, %37
  br label %57

57:                                               ; preds = %56, %30
  ret i32 0
}

declare dso_local i32 @scsi_activate_tcq(%struct.scsi_device*, i32) #1

declare dso_local i32 @scsi_deactivate_tcq(%struct.scsi_device*, i32) #1

declare dso_local i32 @lpfc_sli_handle_fast_ring_event(%struct.lpfc_hba*, i32*, i32) #1

declare dso_local i32 @lpfc_poll_rearm_timer(%struct.lpfc_hba*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
