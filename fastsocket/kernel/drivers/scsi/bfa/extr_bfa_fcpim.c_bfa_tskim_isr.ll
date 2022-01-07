; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/bfa/extr_bfa_fcpim.c_bfa_tskim_isr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/bfa/extr_bfa_fcpim.c_bfa_tskim_isr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfa_s = type { i32 }
%struct.bfi_msg_s = type { i32 }
%struct.bfa_fcpim_s = type { i32 }
%struct.bfi_tskim_rsp_s = type { i64, i32 }
%struct.bfa_tskim_s = type { i64, i64, i32 }

@BFI_TSKIM_STS_ABORTED = common dso_local global i64 0, align 8
@tm_cleanup_comps = common dso_local global i32 0, align 4
@BFA_TSKIM_SM_CLEANUP_DONE = common dso_local global i32 0, align 4
@BFI_TSKIM_STS_UTAG = common dso_local global i64 0, align 8
@BFA_TSKIM_SM_UTAG = common dso_local global i32 0, align 4
@tm_fw_rsps = common dso_local global i32 0, align 4
@BFA_TSKIM_SM_DONE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bfa_tskim_isr(%struct.bfa_s* %0, %struct.bfi_msg_s* %1) #0 {
  %3 = alloca %struct.bfa_s*, align 8
  %4 = alloca %struct.bfi_msg_s*, align 8
  %5 = alloca %struct.bfa_fcpim_s*, align 8
  %6 = alloca %struct.bfi_tskim_rsp_s*, align 8
  %7 = alloca %struct.bfa_tskim_s*, align 8
  %8 = alloca i64, align 8
  store %struct.bfa_s* %0, %struct.bfa_s** %3, align 8
  store %struct.bfi_msg_s* %1, %struct.bfi_msg_s** %4, align 8
  %9 = load %struct.bfa_s*, %struct.bfa_s** %3, align 8
  %10 = call %struct.bfa_fcpim_s* @BFA_FCPIM(%struct.bfa_s* %9)
  store %struct.bfa_fcpim_s* %10, %struct.bfa_fcpim_s** %5, align 8
  %11 = load %struct.bfi_msg_s*, %struct.bfi_msg_s** %4, align 8
  %12 = bitcast %struct.bfi_msg_s* %11 to %struct.bfi_tskim_rsp_s*
  store %struct.bfi_tskim_rsp_s* %12, %struct.bfi_tskim_rsp_s** %6, align 8
  %13 = load %struct.bfi_tskim_rsp_s*, %struct.bfi_tskim_rsp_s** %6, align 8
  %14 = getelementptr inbounds %struct.bfi_tskim_rsp_s, %struct.bfi_tskim_rsp_s* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 8
  %16 = call i64 @be16_to_cpu(i32 %15)
  store i64 %16, i64* %8, align 8
  %17 = load %struct.bfa_fcpim_s*, %struct.bfa_fcpim_s** %5, align 8
  %18 = load i64, i64* %8, align 8
  %19 = call %struct.bfa_tskim_s* @BFA_TSKIM_FROM_TAG(%struct.bfa_fcpim_s* %17, i64 %18)
  store %struct.bfa_tskim_s* %19, %struct.bfa_tskim_s** %7, align 8
  %20 = load %struct.bfa_tskim_s*, %struct.bfa_tskim_s** %7, align 8
  %21 = getelementptr inbounds %struct.bfa_tskim_s, %struct.bfa_tskim_s* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* %8, align 8
  %24 = icmp ne i64 %22, %23
  %25 = zext i1 %24 to i32
  %26 = call i32 @WARN_ON(i32 %25)
  %27 = load %struct.bfi_tskim_rsp_s*, %struct.bfi_tskim_rsp_s** %6, align 8
  %28 = getelementptr inbounds %struct.bfi_tskim_rsp_s, %struct.bfi_tskim_rsp_s* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load %struct.bfa_tskim_s*, %struct.bfa_tskim_s** %7, align 8
  %31 = getelementptr inbounds %struct.bfa_tskim_s, %struct.bfa_tskim_s* %30, i32 0, i32 1
  store i64 %29, i64* %31, align 8
  %32 = load %struct.bfi_tskim_rsp_s*, %struct.bfi_tskim_rsp_s** %6, align 8
  %33 = getelementptr inbounds %struct.bfi_tskim_rsp_s, %struct.bfi_tskim_rsp_s* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @BFI_TSKIM_STS_ABORTED, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %46

37:                                               ; preds = %2
  %38 = load %struct.bfa_tskim_s*, %struct.bfa_tskim_s** %7, align 8
  %39 = getelementptr inbounds %struct.bfa_tskim_s, %struct.bfa_tskim_s* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 8
  %41 = load i32, i32* @tm_cleanup_comps, align 4
  %42 = call i32 @bfa_stats(i32 %40, i32 %41)
  %43 = load %struct.bfa_tskim_s*, %struct.bfa_tskim_s** %7, align 8
  %44 = load i32, i32* @BFA_TSKIM_SM_CLEANUP_DONE, align 4
  %45 = call i32 @bfa_sm_send_event(%struct.bfa_tskim_s* %43, i32 %44)
  br label %66

46:                                               ; preds = %2
  %47 = load %struct.bfi_tskim_rsp_s*, %struct.bfi_tskim_rsp_s** %6, align 8
  %48 = getelementptr inbounds %struct.bfi_tskim_rsp_s, %struct.bfi_tskim_rsp_s* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @BFI_TSKIM_STS_UTAG, align 8
  %51 = icmp eq i64 %49, %50
  br i1 %51, label %52, label %56

52:                                               ; preds = %46
  %53 = load %struct.bfa_tskim_s*, %struct.bfa_tskim_s** %7, align 8
  %54 = load i32, i32* @BFA_TSKIM_SM_UTAG, align 4
  %55 = call i32 @bfa_sm_send_event(%struct.bfa_tskim_s* %53, i32 %54)
  br label %65

56:                                               ; preds = %46
  %57 = load %struct.bfa_tskim_s*, %struct.bfa_tskim_s** %7, align 8
  %58 = getelementptr inbounds %struct.bfa_tskim_s, %struct.bfa_tskim_s* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 8
  %60 = load i32, i32* @tm_fw_rsps, align 4
  %61 = call i32 @bfa_stats(i32 %59, i32 %60)
  %62 = load %struct.bfa_tskim_s*, %struct.bfa_tskim_s** %7, align 8
  %63 = load i32, i32* @BFA_TSKIM_SM_DONE, align 4
  %64 = call i32 @bfa_sm_send_event(%struct.bfa_tskim_s* %62, i32 %63)
  br label %65

65:                                               ; preds = %56, %52
  br label %66

66:                                               ; preds = %65, %37
  ret void
}

declare dso_local %struct.bfa_fcpim_s* @BFA_FCPIM(%struct.bfa_s*) #1

declare dso_local i64 @be16_to_cpu(i32) #1

declare dso_local %struct.bfa_tskim_s* @BFA_TSKIM_FROM_TAG(%struct.bfa_fcpim_s*, i64) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @bfa_stats(i32, i32) #1

declare dso_local i32 @bfa_sm_send_event(%struct.bfa_tskim_s*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
