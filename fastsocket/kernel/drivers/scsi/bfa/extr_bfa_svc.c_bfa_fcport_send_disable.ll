; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/bfa/extr_bfa_svc.c_bfa_fcport_send_disable.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/bfa/extr_bfa_svc.c_bfa_fcport_send_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfa_fcport_s = type { i32, i64, i32 }
%struct.bfi_fcport_req_s = type { i32, i64 }

@BFA_REQQ_PORT = common dso_local global i32 0, align 4
@BFA_FALSE = common dso_local global i32 0, align 4
@BFI_MC_FCPORT = common dso_local global i32 0, align 4
@BFI_FCPORT_H2I_DISABLE_REQ = common dso_local global i32 0, align 4
@BFA_TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bfa_fcport_s*)* @bfa_fcport_send_disable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bfa_fcport_send_disable(%struct.bfa_fcport_s* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bfa_fcport_s*, align 8
  %4 = alloca %struct.bfi_fcport_req_s*, align 8
  store %struct.bfa_fcport_s* %0, %struct.bfa_fcport_s** %3, align 8
  %5 = load %struct.bfa_fcport_s*, %struct.bfa_fcport_s** %3, align 8
  %6 = getelementptr inbounds %struct.bfa_fcport_s, %struct.bfa_fcport_s* %5, i32 0, i32 1
  %7 = load i64, i64* %6, align 8
  %8 = add nsw i64 %7, 1
  store i64 %8, i64* %6, align 8
  %9 = load %struct.bfa_fcport_s*, %struct.bfa_fcport_s** %3, align 8
  %10 = getelementptr inbounds %struct.bfa_fcport_s, %struct.bfa_fcport_s* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = load i32, i32* @BFA_REQQ_PORT, align 4
  %13 = call %struct.bfi_fcport_req_s* @bfa_reqq_next(i32 %11, i32 %12)
  store %struct.bfi_fcport_req_s* %13, %struct.bfi_fcport_req_s** %4, align 8
  %14 = load %struct.bfi_fcport_req_s*, %struct.bfi_fcport_req_s** %4, align 8
  %15 = icmp ne %struct.bfi_fcport_req_s* %14, null
  br i1 %15, label %25, label %16

16:                                               ; preds = %1
  %17 = load %struct.bfa_fcport_s*, %struct.bfa_fcport_s** %3, align 8
  %18 = getelementptr inbounds %struct.bfa_fcport_s, %struct.bfa_fcport_s* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* @BFA_REQQ_PORT, align 4
  %21 = load %struct.bfa_fcport_s*, %struct.bfa_fcport_s** %3, align 8
  %22 = getelementptr inbounds %struct.bfa_fcport_s, %struct.bfa_fcport_s* %21, i32 0, i32 2
  %23 = call i32 @bfa_reqq_wait(i32 %19, i32 %20, i32* %22)
  %24 = load i32, i32* @BFA_FALSE, align 4
  store i32 %24, i32* %2, align 4
  br label %50

25:                                               ; preds = %1
  %26 = load %struct.bfi_fcport_req_s*, %struct.bfi_fcport_req_s** %4, align 8
  %27 = getelementptr inbounds %struct.bfi_fcport_req_s, %struct.bfi_fcport_req_s* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* @BFI_MC_FCPORT, align 4
  %30 = load i32, i32* @BFI_FCPORT_H2I_DISABLE_REQ, align 4
  %31 = load %struct.bfa_fcport_s*, %struct.bfa_fcport_s** %3, align 8
  %32 = getelementptr inbounds %struct.bfa_fcport_s, %struct.bfa_fcport_s* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = call i32 @bfa_fn_lpu(i32 %33)
  %35 = call i32 @bfi_h2i_set(i32 %28, i32 %29, i32 %30, i32 %34)
  %36 = load %struct.bfa_fcport_s*, %struct.bfa_fcport_s** %3, align 8
  %37 = getelementptr inbounds %struct.bfa_fcport_s, %struct.bfa_fcport_s* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = load %struct.bfi_fcport_req_s*, %struct.bfi_fcport_req_s** %4, align 8
  %40 = getelementptr inbounds %struct.bfi_fcport_req_s, %struct.bfi_fcport_req_s* %39, i32 0, i32 1
  store i64 %38, i64* %40, align 8
  %41 = load %struct.bfa_fcport_s*, %struct.bfa_fcport_s** %3, align 8
  %42 = getelementptr inbounds %struct.bfa_fcport_s, %struct.bfa_fcport_s* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = load i32, i32* @BFA_REQQ_PORT, align 4
  %45 = load %struct.bfi_fcport_req_s*, %struct.bfi_fcport_req_s** %4, align 8
  %46 = getelementptr inbounds %struct.bfi_fcport_req_s, %struct.bfi_fcport_req_s* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = call i32 @bfa_reqq_produce(i32 %43, i32 %44, i32 %47)
  %49 = load i32, i32* @BFA_TRUE, align 4
  store i32 %49, i32* %2, align 4
  br label %50

50:                                               ; preds = %25, %16
  %51 = load i32, i32* %2, align 4
  ret i32 %51
}

declare dso_local %struct.bfi_fcport_req_s* @bfa_reqq_next(i32, i32) #1

declare dso_local i32 @bfa_reqq_wait(i32, i32, i32*) #1

declare dso_local i32 @bfi_h2i_set(i32, i32, i32, i32) #1

declare dso_local i32 @bfa_fn_lpu(i32) #1

declare dso_local i32 @bfa_reqq_produce(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
