; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/libsas/extr_sas_ata.c_sas_ata_post_internal.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/libsas/extr_sas_ata.c_sas_ata_post_internal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ata_queued_cmd = type { i32, i32, %struct.sas_task* }
%struct.sas_task = type { i32* }

@ATA_QCFLAG_FAILED = common dso_local global i32 0, align 4
@AC_ERR_OTHER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ata_queued_cmd*)* @sas_ata_post_internal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sas_ata_post_internal(%struct.ata_queued_cmd* %0) #0 {
  %2 = alloca %struct.ata_queued_cmd*, align 8
  %3 = alloca %struct.sas_task*, align 8
  store %struct.ata_queued_cmd* %0, %struct.ata_queued_cmd** %2, align 8
  %4 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %2, align 8
  %5 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 8
  %7 = load i32, i32* @ATA_QCFLAG_FAILED, align 4
  %8 = and i32 %6, %7
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %16

10:                                               ; preds = %1
  %11 = load i32, i32* @AC_ERR_OTHER, align 4
  %12 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %2, align 8
  %13 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = or i32 %14, %11
  store i32 %15, i32* %13, align 4
  br label %16

16:                                               ; preds = %10, %1
  %17 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %2, align 8
  %18 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %35

21:                                               ; preds = %16
  %22 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %2, align 8
  %23 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %22, i32 0, i32 2
  %24 = load %struct.sas_task*, %struct.sas_task** %23, align 8
  store %struct.sas_task* %24, %struct.sas_task** %3, align 8
  %25 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %2, align 8
  %26 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %25, i32 0, i32 2
  store %struct.sas_task* null, %struct.sas_task** %26, align 8
  %27 = load %struct.sas_task*, %struct.sas_task** %3, align 8
  %28 = icmp ne %struct.sas_task* %27, null
  br i1 %28, label %30, label %29

29:                                               ; preds = %21
  br label %35

30:                                               ; preds = %21
  %31 = load %struct.sas_task*, %struct.sas_task** %3, align 8
  %32 = getelementptr inbounds %struct.sas_task, %struct.sas_task* %31, i32 0, i32 0
  store i32* null, i32** %32, align 8
  %33 = load %struct.sas_task*, %struct.sas_task** %3, align 8
  %34 = call i32 @sas_ata_internal_abort(%struct.sas_task* %33)
  br label %35

35:                                               ; preds = %29, %30, %16
  ret void
}

declare dso_local i32 @sas_ata_internal_abort(%struct.sas_task*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
