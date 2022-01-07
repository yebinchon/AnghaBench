; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/bfa/extr_bfa_fcpim.c_bfa_ioim_send_abort.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/bfa/extr_bfa_fcpim.c_bfa_ioim_send_abort.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfa_ioim_s = type { i32, i32, i64, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }
%struct.bfi_ioim_abort_req_s = type { i32, i64, i32 }

@BFA_FALSE = common dso_local global i32 0, align 4
@BFI_IOIM_H2I_IOABORT_REQ = common dso_local global i32 0, align 4
@BFI_IOIM_H2I_IOCLEANUP_REQ = common dso_local global i32 0, align 4
@BFI_MC_IOIM = common dso_local global i32 0, align 4
@BFA_TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bfa_ioim_s*)* @bfa_ioim_send_abort to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bfa_ioim_send_abort(%struct.bfa_ioim_s* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bfa_ioim_s*, align 8
  %4 = alloca %struct.bfi_ioim_abort_req_s*, align 8
  %5 = alloca i32, align 4
  store %struct.bfa_ioim_s* %0, %struct.bfa_ioim_s** %3, align 8
  %6 = load %struct.bfa_ioim_s*, %struct.bfa_ioim_s** %3, align 8
  %7 = getelementptr inbounds %struct.bfa_ioim_s, %struct.bfa_ioim_s* %6, i32 0, i32 1
  %8 = load i32, i32* %7, align 4
  %9 = load %struct.bfa_ioim_s*, %struct.bfa_ioim_s** %3, align 8
  %10 = getelementptr inbounds %struct.bfa_ioim_s, %struct.bfa_ioim_s* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = call %struct.bfi_ioim_abort_req_s* @bfa_reqq_next(i32 %8, i32 %11)
  store %struct.bfi_ioim_abort_req_s* %12, %struct.bfi_ioim_abort_req_s** %4, align 8
  %13 = load %struct.bfi_ioim_abort_req_s*, %struct.bfi_ioim_abort_req_s** %4, align 8
  %14 = icmp ne %struct.bfi_ioim_abort_req_s* %13, null
  br i1 %14, label %17, label %15

15:                                               ; preds = %1
  %16 = load i32, i32* @BFA_FALSE, align 4
  store i32 %16, i32* %2, align 4
  br label %62

17:                                               ; preds = %1
  %18 = load %struct.bfa_ioim_s*, %struct.bfa_ioim_s** %3, align 8
  %19 = getelementptr inbounds %struct.bfa_ioim_s, %struct.bfa_ioim_s* %18, i32 0, i32 4
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %17
  %25 = load i32, i32* @BFI_IOIM_H2I_IOABORT_REQ, align 4
  store i32 %25, i32* %5, align 4
  br label %28

26:                                               ; preds = %17
  %27 = load i32, i32* @BFI_IOIM_H2I_IOCLEANUP_REQ, align 4
  store i32 %27, i32* %5, align 4
  br label %28

28:                                               ; preds = %26, %24
  %29 = load %struct.bfi_ioim_abort_req_s*, %struct.bfi_ioim_abort_req_s** %4, align 8
  %30 = getelementptr inbounds %struct.bfi_ioim_abort_req_s, %struct.bfi_ioim_abort_req_s* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = load i32, i32* @BFI_MC_IOIM, align 4
  %33 = load i32, i32* %5, align 4
  %34 = load %struct.bfa_ioim_s*, %struct.bfa_ioim_s** %3, align 8
  %35 = getelementptr inbounds %struct.bfa_ioim_s, %struct.bfa_ioim_s* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @bfa_fn_lpu(i32 %36)
  %38 = call i32 @bfi_h2i_set(i32 %31, i32 %32, i32 %33, i32 %37)
  %39 = load %struct.bfa_ioim_s*, %struct.bfa_ioim_s** %3, align 8
  %40 = getelementptr inbounds %struct.bfa_ioim_s, %struct.bfa_ioim_s* %39, i32 0, i32 3
  %41 = load i32, i32* %40, align 8
  %42 = call i32 @cpu_to_be16(i32 %41)
  %43 = load %struct.bfi_ioim_abort_req_s*, %struct.bfi_ioim_abort_req_s** %4, align 8
  %44 = getelementptr inbounds %struct.bfi_ioim_abort_req_s, %struct.bfi_ioim_abort_req_s* %43, i32 0, i32 2
  store i32 %42, i32* %44, align 8
  %45 = load %struct.bfa_ioim_s*, %struct.bfa_ioim_s** %3, align 8
  %46 = getelementptr inbounds %struct.bfa_ioim_s, %struct.bfa_ioim_s* %45, i32 0, i32 2
  %47 = load i64, i64* %46, align 8
  %48 = add nsw i64 %47, 1
  store i64 %48, i64* %46, align 8
  %49 = load %struct.bfi_ioim_abort_req_s*, %struct.bfi_ioim_abort_req_s** %4, align 8
  %50 = getelementptr inbounds %struct.bfi_ioim_abort_req_s, %struct.bfi_ioim_abort_req_s* %49, i32 0, i32 1
  store i64 %48, i64* %50, align 8
  %51 = load %struct.bfa_ioim_s*, %struct.bfa_ioim_s** %3, align 8
  %52 = getelementptr inbounds %struct.bfa_ioim_s, %struct.bfa_ioim_s* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.bfa_ioim_s*, %struct.bfa_ioim_s** %3, align 8
  %55 = getelementptr inbounds %struct.bfa_ioim_s, %struct.bfa_ioim_s* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = load %struct.bfi_ioim_abort_req_s*, %struct.bfi_ioim_abort_req_s** %4, align 8
  %58 = getelementptr inbounds %struct.bfi_ioim_abort_req_s, %struct.bfi_ioim_abort_req_s* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = call i32 @bfa_reqq_produce(i32 %53, i32 %56, i32 %59)
  %61 = load i32, i32* @BFA_TRUE, align 4
  store i32 %61, i32* %2, align 4
  br label %62

62:                                               ; preds = %28, %15
  %63 = load i32, i32* %2, align 4
  ret i32 %63
}

declare dso_local %struct.bfi_ioim_abort_req_s* @bfa_reqq_next(i32, i32) #1

declare dso_local i32 @bfi_h2i_set(i32, i32, i32, i32) #1

declare dso_local i32 @bfa_fn_lpu(i32) #1

declare dso_local i32 @cpu_to_be16(i32) #1

declare dso_local i32 @bfa_reqq_produce(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
