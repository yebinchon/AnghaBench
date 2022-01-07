; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/bfa/extr_bfa_fcpim.c_bfa_itnim_send_fwcreate.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/bfa/extr_bfa_fcpim.c_bfa_itnim_send_fwcreate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfa_itnim_s = type { i32, i32, i64, i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.bfi_itn_create_req_s = type { i32, i64, i32, i32, i32 }

@BFA_FALSE = common dso_local global i32 0, align 4
@BFI_MC_ITN = common dso_local global i32 0, align 4
@BFI_ITN_H2I_CREATE_REQ = common dso_local global i32 0, align 4
@FC_CLASS_3 = common dso_local global i32 0, align 4
@fw_create = common dso_local global i32 0, align 4
@BFA_TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bfa_itnim_s*)* @bfa_itnim_send_fwcreate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bfa_itnim_send_fwcreate(%struct.bfa_itnim_s* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bfa_itnim_s*, align 8
  %4 = alloca %struct.bfi_itn_create_req_s*, align 8
  store %struct.bfa_itnim_s* %0, %struct.bfa_itnim_s** %3, align 8
  %5 = load %struct.bfa_itnim_s*, %struct.bfa_itnim_s** %3, align 8
  %6 = getelementptr inbounds %struct.bfa_itnim_s, %struct.bfa_itnim_s* %5, i32 0, i32 2
  %7 = load i64, i64* %6, align 8
  %8 = add nsw i64 %7, 1
  store i64 %8, i64* %6, align 8
  %9 = load %struct.bfa_itnim_s*, %struct.bfa_itnim_s** %3, align 8
  %10 = getelementptr inbounds %struct.bfa_itnim_s, %struct.bfa_itnim_s* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = load %struct.bfa_itnim_s*, %struct.bfa_itnim_s** %3, align 8
  %13 = getelementptr inbounds %struct.bfa_itnim_s, %struct.bfa_itnim_s* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = call %struct.bfi_itn_create_req_s* @bfa_reqq_next(i32 %11, i32 %14)
  store %struct.bfi_itn_create_req_s* %15, %struct.bfi_itn_create_req_s** %4, align 8
  %16 = load %struct.bfi_itn_create_req_s*, %struct.bfi_itn_create_req_s** %4, align 8
  %17 = icmp ne %struct.bfi_itn_create_req_s* %16, null
  br i1 %17, label %29, label %18

18:                                               ; preds = %1
  %19 = load %struct.bfa_itnim_s*, %struct.bfa_itnim_s** %3, align 8
  %20 = getelementptr inbounds %struct.bfa_itnim_s, %struct.bfa_itnim_s* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.bfa_itnim_s*, %struct.bfa_itnim_s** %3, align 8
  %23 = getelementptr inbounds %struct.bfa_itnim_s, %struct.bfa_itnim_s* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load %struct.bfa_itnim_s*, %struct.bfa_itnim_s** %3, align 8
  %26 = getelementptr inbounds %struct.bfa_itnim_s, %struct.bfa_itnim_s* %25, i32 0, i32 5
  %27 = call i32 @bfa_reqq_wait(i32 %21, i32 %24, i32* %26)
  %28 = load i32, i32* @BFA_FALSE, align 4
  store i32 %28, i32* %2, align 4
  br label %74

29:                                               ; preds = %1
  %30 = load %struct.bfi_itn_create_req_s*, %struct.bfi_itn_create_req_s** %4, align 8
  %31 = getelementptr inbounds %struct.bfi_itn_create_req_s, %struct.bfi_itn_create_req_s* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* @BFI_MC_ITN, align 4
  %34 = load i32, i32* @BFI_ITN_H2I_CREATE_REQ, align 4
  %35 = load %struct.bfa_itnim_s*, %struct.bfa_itnim_s** %3, align 8
  %36 = getelementptr inbounds %struct.bfa_itnim_s, %struct.bfa_itnim_s* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @bfa_fn_lpu(i32 %37)
  %39 = call i32 @bfi_h2i_set(i32 %32, i32 %33, i32 %34, i32 %38)
  %40 = load %struct.bfa_itnim_s*, %struct.bfa_itnim_s** %3, align 8
  %41 = getelementptr inbounds %struct.bfa_itnim_s, %struct.bfa_itnim_s* %40, i32 0, i32 4
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.bfi_itn_create_req_s*, %struct.bfi_itn_create_req_s** %4, align 8
  %46 = getelementptr inbounds %struct.bfi_itn_create_req_s, %struct.bfi_itn_create_req_s* %45, i32 0, i32 4
  store i32 %44, i32* %46, align 8
  %47 = load i32, i32* @FC_CLASS_3, align 4
  %48 = load %struct.bfi_itn_create_req_s*, %struct.bfi_itn_create_req_s** %4, align 8
  %49 = getelementptr inbounds %struct.bfi_itn_create_req_s, %struct.bfi_itn_create_req_s* %48, i32 0, i32 3
  store i32 %47, i32* %49, align 4
  %50 = load %struct.bfa_itnim_s*, %struct.bfa_itnim_s** %3, align 8
  %51 = getelementptr inbounds %struct.bfa_itnim_s, %struct.bfa_itnim_s* %50, i32 0, i32 3
  %52 = load i32, i32* %51, align 8
  %53 = load %struct.bfi_itn_create_req_s*, %struct.bfi_itn_create_req_s** %4, align 8
  %54 = getelementptr inbounds %struct.bfi_itn_create_req_s, %struct.bfi_itn_create_req_s* %53, i32 0, i32 2
  store i32 %52, i32* %54, align 8
  %55 = load %struct.bfa_itnim_s*, %struct.bfa_itnim_s** %3, align 8
  %56 = getelementptr inbounds %struct.bfa_itnim_s, %struct.bfa_itnim_s* %55, i32 0, i32 2
  %57 = load i64, i64* %56, align 8
  %58 = load %struct.bfi_itn_create_req_s*, %struct.bfi_itn_create_req_s** %4, align 8
  %59 = getelementptr inbounds %struct.bfi_itn_create_req_s, %struct.bfi_itn_create_req_s* %58, i32 0, i32 1
  store i64 %57, i64* %59, align 8
  %60 = load %struct.bfa_itnim_s*, %struct.bfa_itnim_s** %3, align 8
  %61 = load i32, i32* @fw_create, align 4
  %62 = call i32 @bfa_stats(%struct.bfa_itnim_s* %60, i32 %61)
  %63 = load %struct.bfa_itnim_s*, %struct.bfa_itnim_s** %3, align 8
  %64 = getelementptr inbounds %struct.bfa_itnim_s, %struct.bfa_itnim_s* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.bfa_itnim_s*, %struct.bfa_itnim_s** %3, align 8
  %67 = getelementptr inbounds %struct.bfa_itnim_s, %struct.bfa_itnim_s* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = load %struct.bfi_itn_create_req_s*, %struct.bfi_itn_create_req_s** %4, align 8
  %70 = getelementptr inbounds %struct.bfi_itn_create_req_s, %struct.bfi_itn_create_req_s* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = call i32 @bfa_reqq_produce(i32 %65, i32 %68, i32 %71)
  %73 = load i32, i32* @BFA_TRUE, align 4
  store i32 %73, i32* %2, align 4
  br label %74

74:                                               ; preds = %29, %18
  %75 = load i32, i32* %2, align 4
  ret i32 %75
}

declare dso_local %struct.bfi_itn_create_req_s* @bfa_reqq_next(i32, i32) #1

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
