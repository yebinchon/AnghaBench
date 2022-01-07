; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/bfa/extr_bfa_fcs.c_bfa_fcs_fabric_attach.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/bfa/extr_bfa_fcs.c_bfa_fcs_fabric_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfa_fcs_s = type { i32, %struct.bfa_fcs_fabric_s }
%struct.bfa_fcs_fabric_s = type { %struct.bfa_fcs_s*, i32, i32, i32, i32, i32 }

@bfa_fcs_fabric_delete_comp = common dso_local global i32 0, align 4
@bfa_fcs_fabric_sm_uninit = common dso_local global i32 0, align 4
@FC_VF_ID_NULL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bfa_fcs_fabric_attach(%struct.bfa_fcs_s* %0) #0 {
  %2 = alloca %struct.bfa_fcs_s*, align 8
  %3 = alloca %struct.bfa_fcs_fabric_s*, align 8
  store %struct.bfa_fcs_s* %0, %struct.bfa_fcs_s** %2, align 8
  %4 = load %struct.bfa_fcs_s*, %struct.bfa_fcs_s** %2, align 8
  %5 = getelementptr inbounds %struct.bfa_fcs_s, %struct.bfa_fcs_s* %4, i32 0, i32 1
  store %struct.bfa_fcs_fabric_s* %5, %struct.bfa_fcs_fabric_s** %3, align 8
  %6 = load %struct.bfa_fcs_fabric_s*, %struct.bfa_fcs_fabric_s** %3, align 8
  %7 = call i32 @memset(%struct.bfa_fcs_fabric_s* %6, i32 0, i32 32)
  %8 = load %struct.bfa_fcs_s*, %struct.bfa_fcs_s** %2, align 8
  %9 = load %struct.bfa_fcs_fabric_s*, %struct.bfa_fcs_fabric_s** %3, align 8
  %10 = getelementptr inbounds %struct.bfa_fcs_fabric_s, %struct.bfa_fcs_fabric_s* %9, i32 0, i32 0
  store %struct.bfa_fcs_s* %8, %struct.bfa_fcs_s** %10, align 8
  %11 = load %struct.bfa_fcs_fabric_s*, %struct.bfa_fcs_fabric_s** %3, align 8
  %12 = getelementptr inbounds %struct.bfa_fcs_fabric_s, %struct.bfa_fcs_fabric_s* %11, i32 0, i32 5
  %13 = call i32 @INIT_LIST_HEAD(i32* %12)
  %14 = load %struct.bfa_fcs_fabric_s*, %struct.bfa_fcs_fabric_s** %3, align 8
  %15 = getelementptr inbounds %struct.bfa_fcs_fabric_s, %struct.bfa_fcs_fabric_s* %14, i32 0, i32 4
  %16 = call i32 @INIT_LIST_HEAD(i32* %15)
  %17 = load %struct.bfa_fcs_s*, %struct.bfa_fcs_s** %2, align 8
  %18 = getelementptr inbounds %struct.bfa_fcs_s, %struct.bfa_fcs_s* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = call i32 @bfa_lps_alloc(i32 %19)
  %21 = load %struct.bfa_fcs_fabric_s*, %struct.bfa_fcs_fabric_s** %3, align 8
  %22 = getelementptr inbounds %struct.bfa_fcs_fabric_s, %struct.bfa_fcs_fabric_s* %21, i32 0, i32 3
  store i32 %20, i32* %22, align 8
  %23 = load %struct.bfa_fcs_fabric_s*, %struct.bfa_fcs_fabric_s** %3, align 8
  %24 = getelementptr inbounds %struct.bfa_fcs_fabric_s, %struct.bfa_fcs_fabric_s* %23, i32 0, i32 3
  %25 = load i32, i32* %24, align 8
  %26 = icmp ne i32 %25, 0
  %27 = xor i1 %26, true
  %28 = zext i1 %27 to i32
  %29 = call i32 @WARN_ON(i32 %28)
  %30 = load %struct.bfa_fcs_fabric_s*, %struct.bfa_fcs_fabric_s** %3, align 8
  %31 = getelementptr inbounds %struct.bfa_fcs_fabric_s, %struct.bfa_fcs_fabric_s* %30, i32 0, i32 2
  %32 = load i32, i32* @bfa_fcs_fabric_delete_comp, align 4
  %33 = load %struct.bfa_fcs_fabric_s*, %struct.bfa_fcs_fabric_s** %3, align 8
  %34 = call i32 @bfa_wc_init(i32* %31, i32 %32, %struct.bfa_fcs_fabric_s* %33)
  %35 = load %struct.bfa_fcs_fabric_s*, %struct.bfa_fcs_fabric_s** %3, align 8
  %36 = getelementptr inbounds %struct.bfa_fcs_fabric_s, %struct.bfa_fcs_fabric_s* %35, i32 0, i32 2
  %37 = call i32 @bfa_wc_up(i32* %36)
  %38 = load %struct.bfa_fcs_fabric_s*, %struct.bfa_fcs_fabric_s** %3, align 8
  %39 = load i32, i32* @bfa_fcs_fabric_sm_uninit, align 4
  %40 = call i32 @bfa_sm_set_state(%struct.bfa_fcs_fabric_s* %38, i32 %39)
  %41 = load %struct.bfa_fcs_fabric_s*, %struct.bfa_fcs_fabric_s** %3, align 8
  %42 = getelementptr inbounds %struct.bfa_fcs_fabric_s, %struct.bfa_fcs_fabric_s* %41, i32 0, i32 1
  %43 = load %struct.bfa_fcs_fabric_s*, %struct.bfa_fcs_fabric_s** %3, align 8
  %44 = getelementptr inbounds %struct.bfa_fcs_fabric_s, %struct.bfa_fcs_fabric_s* %43, i32 0, i32 0
  %45 = load %struct.bfa_fcs_s*, %struct.bfa_fcs_s** %44, align 8
  %46 = load i32, i32* @FC_VF_ID_NULL, align 4
  %47 = call i32 @bfa_fcs_lport_attach(i32* %42, %struct.bfa_fcs_s* %45, i32 %46, i32* null)
  ret void
}

declare dso_local i32 @memset(%struct.bfa_fcs_fabric_s*, i32, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @bfa_lps_alloc(i32) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @bfa_wc_init(i32*, i32, %struct.bfa_fcs_fabric_s*) #1

declare dso_local i32 @bfa_wc_up(i32*) #1

declare dso_local i32 @bfa_sm_set_state(%struct.bfa_fcs_fabric_s*, i32) #1

declare dso_local i32 @bfa_fcs_lport_attach(i32*, %struct.bfa_fcs_s*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
