; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/bfa/extr_bfa_fcpim.c_bfa_itn_create.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/bfa/extr_bfa_fcpim.c_bfa_itn_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfa_s = type { i32 }
%struct.bfa_rport_s = type { i32 }
%struct.bfi_msg_s = type opaque
%struct.bfa_fcp_mod_s = type { i32 }
%struct.bfa_itn_s = type { void (%struct.bfa_s*, %struct.bfi_msg_s.0*)* }
%struct.bfi_msg_s.0 = type opaque

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bfa_itn_create(%struct.bfa_s* %0, %struct.bfa_rport_s* %1, void (%struct.bfa_s*, %struct.bfi_msg_s*)* %2) #0 {
  %4 = alloca %struct.bfa_s*, align 8
  %5 = alloca %struct.bfa_rport_s*, align 8
  %6 = alloca void (%struct.bfa_s*, %struct.bfi_msg_s*)*, align 8
  %7 = alloca %struct.bfa_fcp_mod_s*, align 8
  %8 = alloca %struct.bfa_itn_s*, align 8
  store %struct.bfa_s* %0, %struct.bfa_s** %4, align 8
  store %struct.bfa_rport_s* %1, %struct.bfa_rport_s** %5, align 8
  store void (%struct.bfa_s*, %struct.bfi_msg_s*)* %2, void (%struct.bfa_s*, %struct.bfi_msg_s*)** %6, align 8
  %9 = load %struct.bfa_s*, %struct.bfa_s** %4, align 8
  %10 = call %struct.bfa_fcp_mod_s* @BFA_FCP_MOD(%struct.bfa_s* %9)
  store %struct.bfa_fcp_mod_s* %10, %struct.bfa_fcp_mod_s** %7, align 8
  %11 = load %struct.bfa_fcp_mod_s*, %struct.bfa_fcp_mod_s** %7, align 8
  %12 = load %struct.bfa_rport_s*, %struct.bfa_rport_s** %5, align 8
  %13 = getelementptr inbounds %struct.bfa_rport_s, %struct.bfa_rport_s* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call %struct.bfa_itn_s* @BFA_ITN_FROM_TAG(%struct.bfa_fcp_mod_s* %11, i32 %14)
  store %struct.bfa_itn_s* %15, %struct.bfa_itn_s** %8, align 8
  %16 = load void (%struct.bfa_s*, %struct.bfi_msg_s*)*, void (%struct.bfa_s*, %struct.bfi_msg_s*)** %6, align 8
  %17 = bitcast void (%struct.bfa_s*, %struct.bfi_msg_s*)* %16 to void (%struct.bfa_s*, %struct.bfi_msg_s.0*)*
  %18 = load %struct.bfa_itn_s*, %struct.bfa_itn_s** %8, align 8
  %19 = getelementptr inbounds %struct.bfa_itn_s, %struct.bfa_itn_s* %18, i32 0, i32 0
  store void (%struct.bfa_s*, %struct.bfi_msg_s.0*)* %17, void (%struct.bfa_s*, %struct.bfi_msg_s.0*)** %19, align 8
  ret void
}

declare dso_local %struct.bfa_fcp_mod_s* @BFA_FCP_MOD(%struct.bfa_s*) #1

declare dso_local %struct.bfa_itn_s* @BFA_ITN_FROM_TAG(%struct.bfa_fcp_mod_s*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
