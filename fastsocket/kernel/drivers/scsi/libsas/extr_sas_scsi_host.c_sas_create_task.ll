; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/libsas/extr_sas_scsi_host.c_sas_create_task.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/libsas/extr_sas_scsi_host.c_sas_create_task.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sas_task = type { i32, i32, i32, i32, i32, %struct.TYPE_4__, %struct.domain_device*, i32, %struct.scsi_cmnd* }
%struct.TYPE_4__ = type { i32, i32, i32, i32 }
%struct.scsi_cmnd = type { i32, i32*, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.domain_device = type { i32 }
%struct.scsi_lun = type { i32 }

@TASK_ATTR_SIMPLE = common dso_local global i32 0, align 4
@sas_scsi_task_done = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.sas_task* (%struct.scsi_cmnd*, %struct.domain_device*, i32)* @sas_create_task to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.sas_task* @sas_create_task(%struct.scsi_cmnd* %0, %struct.domain_device* %1, i32 %2) #0 {
  %4 = alloca %struct.sas_task*, align 8
  %5 = alloca %struct.scsi_cmnd*, align 8
  %6 = alloca %struct.domain_device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.sas_task*, align 8
  %9 = alloca %struct.scsi_lun, align 4
  store %struct.scsi_cmnd* %0, %struct.scsi_cmnd** %5, align 8
  store %struct.domain_device* %1, %struct.domain_device** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load i32, i32* %7, align 4
  %11 = call %struct.sas_task* @sas_alloc_task(i32 %10)
  store %struct.sas_task* %11, %struct.sas_task** %8, align 8
  %12 = load %struct.sas_task*, %struct.sas_task** %8, align 8
  %13 = icmp ne %struct.sas_task* %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %3
  store %struct.sas_task* null, %struct.sas_task** %4, align 8
  br label %80

15:                                               ; preds = %3
  %16 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %17 = load %struct.sas_task*, %struct.sas_task** %8, align 8
  %18 = getelementptr inbounds %struct.sas_task, %struct.sas_task* %17, i32 0, i32 8
  store %struct.scsi_cmnd* %16, %struct.scsi_cmnd** %18, align 8
  %19 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %20 = load %struct.sas_task*, %struct.sas_task** %8, align 8
  %21 = call i32 @ASSIGN_SAS_TASK(%struct.scsi_cmnd* %19, %struct.sas_task* %20)
  %22 = load %struct.domain_device*, %struct.domain_device** %6, align 8
  %23 = load %struct.sas_task*, %struct.sas_task** %8, align 8
  %24 = getelementptr inbounds %struct.sas_task, %struct.sas_task* %23, i32 0, i32 6
  store %struct.domain_device* %22, %struct.domain_device** %24, align 8
  %25 = load %struct.sas_task*, %struct.sas_task** %8, align 8
  %26 = getelementptr inbounds %struct.sas_task, %struct.sas_task* %25, i32 0, i32 6
  %27 = load %struct.domain_device*, %struct.domain_device** %26, align 8
  %28 = getelementptr inbounds %struct.domain_device, %struct.domain_device* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.sas_task*, %struct.sas_task** %8, align 8
  %31 = getelementptr inbounds %struct.sas_task, %struct.sas_task* %30, i32 0, i32 7
  store i32 %29, i32* %31, align 8
  %32 = load %struct.sas_task*, %struct.sas_task** %8, align 8
  %33 = getelementptr inbounds %struct.sas_task, %struct.sas_task* %32, i32 0, i32 5
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  store i32 1, i32* %34, align 4
  %35 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %36 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %35, i32 0, i32 2
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @int_to_scsilun(i32 %39, %struct.scsi_lun* %9)
  %41 = load %struct.sas_task*, %struct.sas_task** %8, align 8
  %42 = getelementptr inbounds %struct.sas_task, %struct.sas_task* %41, i32 0, i32 5
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 3
  %44 = load i32, i32* %43, align 4
  %45 = getelementptr inbounds %struct.scsi_lun, %struct.scsi_lun* %9, i32 0, i32 0
  %46 = call i32 @memcpy(i32 %44, i32* %45, i32 8)
  %47 = load i32, i32* @TASK_ATTR_SIMPLE, align 4
  %48 = load %struct.sas_task*, %struct.sas_task** %8, align 8
  %49 = getelementptr inbounds %struct.sas_task, %struct.sas_task* %48, i32 0, i32 5
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 2
  store i32 %47, i32* %50, align 4
  %51 = load %struct.sas_task*, %struct.sas_task** %8, align 8
  %52 = getelementptr inbounds %struct.sas_task, %struct.sas_task* %51, i32 0, i32 5
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %56 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %55, i32 0, i32 1
  %57 = load i32*, i32** %56, align 8
  %58 = call i32 @memcpy(i32 %54, i32* %57, i32 16)
  %59 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %60 = call i32 @scsi_sglist(%struct.scsi_cmnd* %59)
  %61 = load %struct.sas_task*, %struct.sas_task** %8, align 8
  %62 = getelementptr inbounds %struct.sas_task, %struct.sas_task* %61, i32 0, i32 4
  store i32 %60, i32* %62, align 8
  %63 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %64 = call i32 @scsi_sg_count(%struct.scsi_cmnd* %63)
  %65 = load %struct.sas_task*, %struct.sas_task** %8, align 8
  %66 = getelementptr inbounds %struct.sas_task, %struct.sas_task* %65, i32 0, i32 3
  store i32 %64, i32* %66, align 4
  %67 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %68 = call i32 @scsi_bufflen(%struct.scsi_cmnd* %67)
  %69 = load %struct.sas_task*, %struct.sas_task** %8, align 8
  %70 = getelementptr inbounds %struct.sas_task, %struct.sas_task* %69, i32 0, i32 2
  store i32 %68, i32* %70, align 8
  %71 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %72 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = load %struct.sas_task*, %struct.sas_task** %8, align 8
  %75 = getelementptr inbounds %struct.sas_task, %struct.sas_task* %74, i32 0, i32 1
  store i32 %73, i32* %75, align 4
  %76 = load i32, i32* @sas_scsi_task_done, align 4
  %77 = load %struct.sas_task*, %struct.sas_task** %8, align 8
  %78 = getelementptr inbounds %struct.sas_task, %struct.sas_task* %77, i32 0, i32 0
  store i32 %76, i32* %78, align 8
  %79 = load %struct.sas_task*, %struct.sas_task** %8, align 8
  store %struct.sas_task* %79, %struct.sas_task** %4, align 8
  br label %80

80:                                               ; preds = %15, %14
  %81 = load %struct.sas_task*, %struct.sas_task** %4, align 8
  ret %struct.sas_task* %81
}

declare dso_local %struct.sas_task* @sas_alloc_task(i32) #1

declare dso_local i32 @ASSIGN_SAS_TASK(%struct.scsi_cmnd*, %struct.sas_task*) #1

declare dso_local i32 @int_to_scsilun(i32, %struct.scsi_lun*) #1

declare dso_local i32 @memcpy(i32, i32*, i32) #1

declare dso_local i32 @scsi_sglist(%struct.scsi_cmnd*) #1

declare dso_local i32 @scsi_sg_count(%struct.scsi_cmnd*) #1

declare dso_local i32 @scsi_bufflen(%struct.scsi_cmnd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
