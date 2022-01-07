; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/ulp/srp/extr_ib_srp.c_srp_remove_target.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/ulp/srp/extr_ib_srp.c_srp_remove_target.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.srp_target_port = type { i64, i32, i32 }

@SRP_TARGET_REMOVED = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.srp_target_port*)* @srp_remove_target to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @srp_remove_target(%struct.srp_target_port* %0) #0 {
  %2 = alloca %struct.srp_target_port*, align 8
  store %struct.srp_target_port* %0, %struct.srp_target_port** %2, align 8
  %3 = load %struct.srp_target_port*, %struct.srp_target_port** %2, align 8
  %4 = getelementptr inbounds %struct.srp_target_port, %struct.srp_target_port* %3, i32 0, i32 0
  %5 = load i64, i64* %4, align 8
  %6 = load i64, i64* @SRP_TARGET_REMOVED, align 8
  %7 = icmp ne i64 %5, %6
  %8 = zext i1 %7 to i32
  %9 = call i32 @WARN_ON_ONCE(i32 %8)
  %10 = load %struct.srp_target_port*, %struct.srp_target_port** %2, align 8
  %11 = getelementptr inbounds %struct.srp_target_port, %struct.srp_target_port* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 8
  %13 = call i32 @srp_del_scsi_host_attr(i32 %12)
  %14 = load %struct.srp_target_port*, %struct.srp_target_port** %2, align 8
  %15 = getelementptr inbounds %struct.srp_target_port, %struct.srp_target_port* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 8
  %17 = call i32 @srp_remove_host(i32 %16)
  %18 = load %struct.srp_target_port*, %struct.srp_target_port** %2, align 8
  %19 = getelementptr inbounds %struct.srp_target_port, %struct.srp_target_port* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 8
  %21 = call i32 @scsi_remove_host(i32 %20)
  %22 = load %struct.srp_target_port*, %struct.srp_target_port** %2, align 8
  %23 = call i32 @srp_disconnect_target(%struct.srp_target_port* %22)
  %24 = load %struct.srp_target_port*, %struct.srp_target_port** %2, align 8
  %25 = getelementptr inbounds %struct.srp_target_port, %struct.srp_target_port* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @ib_destroy_cm_id(i32 %26)
  %28 = load %struct.srp_target_port*, %struct.srp_target_port** %2, align 8
  %29 = call i32 @srp_free_target_ib(%struct.srp_target_port* %28)
  %30 = load %struct.srp_target_port*, %struct.srp_target_port** %2, align 8
  %31 = call i32 @srp_free_req_data(%struct.srp_target_port* %30)
  %32 = load %struct.srp_target_port*, %struct.srp_target_port** %2, align 8
  %33 = getelementptr inbounds %struct.srp_target_port, %struct.srp_target_port* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = call i32 @scsi_host_put(i32 %34)
  ret void
}

declare dso_local i32 @WARN_ON_ONCE(i32) #1

declare dso_local i32 @srp_del_scsi_host_attr(i32) #1

declare dso_local i32 @srp_remove_host(i32) #1

declare dso_local i32 @scsi_remove_host(i32) #1

declare dso_local i32 @srp_disconnect_target(%struct.srp_target_port*) #1

declare dso_local i32 @ib_destroy_cm_id(i32) #1

declare dso_local i32 @srp_free_target_ib(%struct.srp_target_port*) #1

declare dso_local i32 @srp_free_req_data(%struct.srp_target_port*) #1

declare dso_local i32 @scsi_host_put(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
