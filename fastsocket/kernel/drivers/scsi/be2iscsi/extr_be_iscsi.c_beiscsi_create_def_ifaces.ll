; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/be2iscsi/extr_be_iscsi.c_beiscsi_create_def_ifaces.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/be2iscsi/extr_be_iscsi.c_beiscsi_create_def_ifaces.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.beiscsi_hba = type { i32 }
%struct.be_cmd_get_if_info_resp = type { i32 }

@BE2_IPV4 = common dso_local global i32 0, align 4
@BE2_IPV6 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @beiscsi_create_def_ifaces(%struct.beiscsi_hba* %0) #0 {
  %2 = alloca %struct.beiscsi_hba*, align 8
  %3 = alloca %struct.be_cmd_get_if_info_resp, align 4
  store %struct.beiscsi_hba* %0, %struct.beiscsi_hba** %2, align 8
  %4 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %2, align 8
  %5 = load i32, i32* @BE2_IPV4, align 4
  %6 = call i32 @mgmt_get_if_info(%struct.beiscsi_hba* %4, i32 %5, %struct.be_cmd_get_if_info_resp* %3)
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %11, label %8

8:                                                ; preds = %1
  %9 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %2, align 8
  %10 = call i32 @beiscsi_create_ipv4_iface(%struct.beiscsi_hba* %9)
  br label %11

11:                                               ; preds = %8, %1
  %12 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %2, align 8
  %13 = load i32, i32* @BE2_IPV6, align 4
  %14 = call i32 @mgmt_get_if_info(%struct.beiscsi_hba* %12, i32 %13, %struct.be_cmd_get_if_info_resp* %3)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %19, label %16

16:                                               ; preds = %11
  %17 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %2, align 8
  %18 = call i32 @beiscsi_create_ipv6_iface(%struct.beiscsi_hba* %17)
  br label %19

19:                                               ; preds = %16, %11
  ret void
}

declare dso_local i32 @mgmt_get_if_info(%struct.beiscsi_hba*, i32, %struct.be_cmd_get_if_info_resp*) #1

declare dso_local i32 @beiscsi_create_ipv4_iface(%struct.beiscsi_hba*) #1

declare dso_local i32 @beiscsi_create_ipv6_iface(%struct.beiscsi_hba*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
