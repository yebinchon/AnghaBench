; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/bfa/extr_bfa_fcpim.c_bfa_itnim_send_fwdelete.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/bfa/extr_bfa_fcpim.c_bfa_itnim_send_fwdelete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfa_itnim_s = type { i32, i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.bfi_itn_delete_req_s = type { i32, i32 }

@BFA_FALSE = common dso_local global i32 0, align 4
@BFI_MC_ITN = common dso_local global i32 0, align 4
@BFI_ITN_H2I_DELETE_REQ = common dso_local global i32 0, align 4
@fw_delete = common dso_local global i32 0, align 4
@BFA_TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bfa_itnim_s*)* @bfa_itnim_send_fwdelete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bfa_itnim_send_fwdelete(%struct.bfa_itnim_s* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bfa_itnim_s*, align 8
  %4 = alloca %struct.bfi_itn_delete_req_s*, align 8
  store %struct.bfa_itnim_s* %0, %struct.bfa_itnim_s** %3, align 8
  %5 = load %struct.bfa_itnim_s*, %struct.bfa_itnim_s** %3, align 8
  %6 = getelementptr inbounds %struct.bfa_itnim_s, %struct.bfa_itnim_s* %5, i32 0, i32 1
  %7 = load i32, i32* %6, align 4
  %8 = load %struct.bfa_itnim_s*, %struct.bfa_itnim_s** %3, align 8
  %9 = getelementptr inbounds %struct.bfa_itnim_s, %struct.bfa_itnim_s* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = call %struct.bfi_itn_delete_req_s* @bfa_reqq_next(i32 %7, i32 %10)
  store %struct.bfi_itn_delete_req_s* %11, %struct.bfi_itn_delete_req_s** %4, align 8
  %12 = load %struct.bfi_itn_delete_req_s*, %struct.bfi_itn_delete_req_s** %4, align 8
  %13 = icmp ne %struct.bfi_itn_delete_req_s* %12, null
  br i1 %13, label %25, label %14

14:                                               ; preds = %1
  %15 = load %struct.bfa_itnim_s*, %struct.bfa_itnim_s** %3, align 8
  %16 = getelementptr inbounds %struct.bfa_itnim_s, %struct.bfa_itnim_s* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.bfa_itnim_s*, %struct.bfa_itnim_s** %3, align 8
  %19 = getelementptr inbounds %struct.bfa_itnim_s, %struct.bfa_itnim_s* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load %struct.bfa_itnim_s*, %struct.bfa_itnim_s** %3, align 8
  %22 = getelementptr inbounds %struct.bfa_itnim_s, %struct.bfa_itnim_s* %21, i32 0, i32 3
  %23 = call i32 @bfa_reqq_wait(i32 %17, i32 %20, i32* %22)
  %24 = load i32, i32* @BFA_FALSE, align 4
  store i32 %24, i32* %2, align 4
  br label %57

25:                                               ; preds = %1
  %26 = load %struct.bfi_itn_delete_req_s*, %struct.bfi_itn_delete_req_s** %4, align 8
  %27 = getelementptr inbounds %struct.bfi_itn_delete_req_s, %struct.bfi_itn_delete_req_s* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @BFI_MC_ITN, align 4
  %30 = load i32, i32* @BFI_ITN_H2I_DELETE_REQ, align 4
  %31 = load %struct.bfa_itnim_s*, %struct.bfa_itnim_s** %3, align 8
  %32 = getelementptr inbounds %struct.bfa_itnim_s, %struct.bfa_itnim_s* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @bfa_fn_lpu(i32 %33)
  %35 = call i32 @bfi_h2i_set(i32 %28, i32 %29, i32 %30, i32 %34)
  %36 = load %struct.bfa_itnim_s*, %struct.bfa_itnim_s** %3, align 8
  %37 = getelementptr inbounds %struct.bfa_itnim_s, %struct.bfa_itnim_s* %36, i32 0, i32 2
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.bfi_itn_delete_req_s*, %struct.bfi_itn_delete_req_s** %4, align 8
  %42 = getelementptr inbounds %struct.bfi_itn_delete_req_s, %struct.bfi_itn_delete_req_s* %41, i32 0, i32 1
  store i32 %40, i32* %42, align 4
  %43 = load %struct.bfa_itnim_s*, %struct.bfa_itnim_s** %3, align 8
  %44 = load i32, i32* @fw_delete, align 4
  %45 = call i32 @bfa_stats(%struct.bfa_itnim_s* %43, i32 %44)
  %46 = load %struct.bfa_itnim_s*, %struct.bfa_itnim_s** %3, align 8
  %47 = getelementptr inbounds %struct.bfa_itnim_s, %struct.bfa_itnim_s* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.bfa_itnim_s*, %struct.bfa_itnim_s** %3, align 8
  %50 = getelementptr inbounds %struct.bfa_itnim_s, %struct.bfa_itnim_s* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = load %struct.bfi_itn_delete_req_s*, %struct.bfi_itn_delete_req_s** %4, align 8
  %53 = getelementptr inbounds %struct.bfi_itn_delete_req_s, %struct.bfi_itn_delete_req_s* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @bfa_reqq_produce(i32 %48, i32 %51, i32 %54)
  %56 = load i32, i32* @BFA_TRUE, align 4
  store i32 %56, i32* %2, align 4
  br label %57

57:                                               ; preds = %25, %14
  %58 = load i32, i32* %2, align 4
  ret i32 %58
}

declare dso_local %struct.bfi_itn_delete_req_s* @bfa_reqq_next(i32, i32) #1

declare dso_local i32 @bfa_reqq_wait(i32, i32, i32*) #1

declare dso_local i32 @bfi_h2i_set(i32, i32, i32, i32) #1

declare dso_local i32 @bfa_fn_lpu(i32) #1

declare dso_local i32 @bfa_stats(%struct.bfa_itnim_s*, i32) #1

declare dso_local i32 @bfa_reqq_produce(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
