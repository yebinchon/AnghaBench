; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/ibmvscsi/extr_iseries_vscsi.c_iseriesvscsi_release_crq_queue.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/ibmvscsi/extr_iseries_vscsi.c_iseriesvscsi_release_crq_queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crq_queue = type { i32 }
%struct.ibmvscsi_host_data = type { i32 }

@viomajorsubtype_scsi = common dso_local global i32 0, align 4
@viopath_hostLp = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.crq_queue*, %struct.ibmvscsi_host_data*, i32)* @iseriesvscsi_release_crq_queue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @iseriesvscsi_release_crq_queue(%struct.crq_queue* %0, %struct.ibmvscsi_host_data* %1, i32 %2) #0 {
  %4 = alloca %struct.crq_queue*, align 8
  %5 = alloca %struct.ibmvscsi_host_data*, align 8
  %6 = alloca i32, align 4
  store %struct.crq_queue* %0, %struct.crq_queue** %4, align 8
  store %struct.ibmvscsi_host_data* %1, %struct.ibmvscsi_host_data** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load i32, i32* @viomajorsubtype_scsi, align 4
  %8 = call i32 @vio_clearHandler(i32 %7)
  %9 = load i32, i32* @viopath_hostLp, align 4
  %10 = load i32, i32* @viomajorsubtype_scsi, align 4
  %11 = load i32, i32* %6, align 4
  %12 = call i32 @viopath_close(i32 %9, i32 %10, i32 %11)
  ret void
}

declare dso_local i32 @vio_clearHandler(i32) #1

declare dso_local i32 @viopath_close(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
