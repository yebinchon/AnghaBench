; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/bfa/extr_bfa_fcs.c_bfa_fcs_fabric_addvport.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/bfa/extr_bfa_fcs.c_bfa_fcs_fabric_addvport.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfa_fcs_fabric_s = type { i32, i32, i32, i32, i32 }
%struct.bfa_fcs_vport_s = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bfa_fcs_fabric_addvport(%struct.bfa_fcs_fabric_s* %0, %struct.bfa_fcs_vport_s* %1) #0 {
  %3 = alloca %struct.bfa_fcs_fabric_s*, align 8
  %4 = alloca %struct.bfa_fcs_vport_s*, align 8
  store %struct.bfa_fcs_fabric_s* %0, %struct.bfa_fcs_fabric_s** %3, align 8
  store %struct.bfa_fcs_vport_s* %1, %struct.bfa_fcs_vport_s** %4, align 8
  %5 = load %struct.bfa_fcs_fabric_s*, %struct.bfa_fcs_fabric_s** %3, align 8
  %6 = getelementptr inbounds %struct.bfa_fcs_fabric_s, %struct.bfa_fcs_fabric_s* %5, i32 0, i32 4
  %7 = load i32, i32* %6, align 4
  %8 = load %struct.bfa_fcs_fabric_s*, %struct.bfa_fcs_fabric_s** %3, align 8
  %9 = getelementptr inbounds %struct.bfa_fcs_fabric_s, %struct.bfa_fcs_fabric_s* %8, i32 0, i32 3
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @bfa_trc(i32 %7, i32 %10)
  %12 = load %struct.bfa_fcs_vport_s*, %struct.bfa_fcs_vport_s** %4, align 8
  %13 = getelementptr inbounds %struct.bfa_fcs_vport_s, %struct.bfa_fcs_vport_s* %12, i32 0, i32 0
  %14 = load %struct.bfa_fcs_fabric_s*, %struct.bfa_fcs_fabric_s** %3, align 8
  %15 = getelementptr inbounds %struct.bfa_fcs_fabric_s, %struct.bfa_fcs_fabric_s* %14, i32 0, i32 2
  %16 = call i32 @list_add_tail(i32* %13, i32* %15)
  %17 = load %struct.bfa_fcs_fabric_s*, %struct.bfa_fcs_fabric_s** %3, align 8
  %18 = getelementptr inbounds %struct.bfa_fcs_fabric_s, %struct.bfa_fcs_fabric_s* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = add nsw i32 %19, 1
  store i32 %20, i32* %18, align 4
  %21 = load %struct.bfa_fcs_fabric_s*, %struct.bfa_fcs_fabric_s** %3, align 8
  %22 = getelementptr inbounds %struct.bfa_fcs_fabric_s, %struct.bfa_fcs_fabric_s* %21, i32 0, i32 0
  %23 = call i32 @bfa_wc_up(i32* %22)
  ret void
}

declare dso_local i32 @bfa_trc(i32, i32) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @bfa_wc_up(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
