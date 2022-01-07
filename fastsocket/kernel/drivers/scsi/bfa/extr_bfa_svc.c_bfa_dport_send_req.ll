; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/bfa/extr_bfa_svc.c_bfa_dport_send_req.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/bfa/extr_bfa_svc.c_bfa_dport_send_req.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfa_dport_s = type { i32, i32, i32, i32 }
%struct.bfi_diag_dport_req_s = type { i32, i32, i8*, i8* }

@BFA_REQQ_DIAG = common dso_local global i32 0, align 4
@BFA_REQQ_PORT = common dso_local global i32 0, align 4
@BFA_FALSE = common dso_local global i32 0, align 4
@BFI_MC_DIAG = common dso_local global i32 0, align 4
@BFI_DIAG_H2I_DPORT = common dso_local global i32 0, align 4
@BFI_DPORT_ENABLE = common dso_local global i32 0, align 4
@BFI_DPORT_START = common dso_local global i32 0, align 4
@BFA_TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bfa_dport_s*, i32)* @bfa_dport_send_req to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bfa_dport_send_req(%struct.bfa_dport_s* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.bfa_dport_s*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.bfi_diag_dport_req_s*, align 8
  store %struct.bfa_dport_s* %0, %struct.bfa_dport_s** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.bfa_dport_s*, %struct.bfa_dport_s** %4, align 8
  %8 = getelementptr inbounds %struct.bfa_dport_s, %struct.bfa_dport_s* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* @BFA_REQQ_DIAG, align 4
  %11 = call %struct.bfi_diag_dport_req_s* @bfa_reqq_next(i32 %9, i32 %10)
  store %struct.bfi_diag_dport_req_s* %11, %struct.bfi_diag_dport_req_s** %6, align 8
  %12 = load %struct.bfi_diag_dport_req_s*, %struct.bfi_diag_dport_req_s** %6, align 8
  %13 = icmp ne %struct.bfi_diag_dport_req_s* %12, null
  br i1 %13, label %23, label %14

14:                                               ; preds = %2
  %15 = load %struct.bfa_dport_s*, %struct.bfa_dport_s** %4, align 8
  %16 = getelementptr inbounds %struct.bfa_dport_s, %struct.bfa_dport_s* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @BFA_REQQ_PORT, align 4
  %19 = load %struct.bfa_dport_s*, %struct.bfa_dport_s** %4, align 8
  %20 = getelementptr inbounds %struct.bfa_dport_s, %struct.bfa_dport_s* %19, i32 0, i32 3
  %21 = call i32 @bfa_reqq_wait(i32 %17, i32 %18, i32* %20)
  %22 = load i32, i32* @BFA_FALSE, align 4
  store i32 %22, i32* %3, align 4
  br label %67

23:                                               ; preds = %2
  %24 = load %struct.bfi_diag_dport_req_s*, %struct.bfi_diag_dport_req_s** %6, align 8
  %25 = getelementptr inbounds %struct.bfi_diag_dport_req_s, %struct.bfi_diag_dport_req_s* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @BFI_MC_DIAG, align 4
  %28 = load i32, i32* @BFI_DIAG_H2I_DPORT, align 4
  %29 = load %struct.bfa_dport_s*, %struct.bfa_dport_s** %4, align 8
  %30 = getelementptr inbounds %struct.bfa_dport_s, %struct.bfa_dport_s* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @bfa_fn_lpu(i32 %31)
  %33 = call i32 @bfi_h2i_set(i32 %26, i32 %27, i32 %28, i32 %32)
  %34 = load i32, i32* %5, align 4
  %35 = load %struct.bfi_diag_dport_req_s*, %struct.bfi_diag_dport_req_s** %6, align 8
  %36 = getelementptr inbounds %struct.bfi_diag_dport_req_s, %struct.bfi_diag_dport_req_s* %35, i32 0, i32 0
  store i32 %34, i32* %36, align 8
  %37 = load i32, i32* %5, align 4
  %38 = load i32, i32* @BFI_DPORT_ENABLE, align 4
  %39 = icmp eq i32 %37, %38
  br i1 %39, label %44, label %40

40:                                               ; preds = %23
  %41 = load i32, i32* %5, align 4
  %42 = load i32, i32* @BFI_DPORT_START, align 4
  %43 = icmp eq i32 %41, %42
  br i1 %43, label %44, label %57

44:                                               ; preds = %40, %23
  %45 = load %struct.bfa_dport_s*, %struct.bfa_dport_s** %4, align 8
  %46 = getelementptr inbounds %struct.bfa_dport_s, %struct.bfa_dport_s* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 4
  %48 = call i8* @cpu_to_be32(i32 %47)
  %49 = load %struct.bfi_diag_dport_req_s*, %struct.bfi_diag_dport_req_s** %6, align 8
  %50 = getelementptr inbounds %struct.bfi_diag_dport_req_s, %struct.bfi_diag_dport_req_s* %49, i32 0, i32 3
  store i8* %48, i8** %50, align 8
  %51 = load %struct.bfa_dport_s*, %struct.bfa_dport_s** %4, align 8
  %52 = getelementptr inbounds %struct.bfa_dport_s, %struct.bfa_dport_s* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = call i8* @cpu_to_be32(i32 %53)
  %55 = load %struct.bfi_diag_dport_req_s*, %struct.bfi_diag_dport_req_s** %6, align 8
  %56 = getelementptr inbounds %struct.bfi_diag_dport_req_s, %struct.bfi_diag_dport_req_s* %55, i32 0, i32 2
  store i8* %54, i8** %56, align 8
  br label %57

57:                                               ; preds = %44, %40
  %58 = load %struct.bfa_dport_s*, %struct.bfa_dport_s** %4, align 8
  %59 = getelementptr inbounds %struct.bfa_dport_s, %struct.bfa_dport_s* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* @BFA_REQQ_DIAG, align 4
  %62 = load %struct.bfi_diag_dport_req_s*, %struct.bfi_diag_dport_req_s** %6, align 8
  %63 = getelementptr inbounds %struct.bfi_diag_dport_req_s, %struct.bfi_diag_dport_req_s* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @bfa_reqq_produce(i32 %60, i32 %61, i32 %64)
  %66 = load i32, i32* @BFA_TRUE, align 4
  store i32 %66, i32* %3, align 4
  br label %67

67:                                               ; preds = %57, %14
  %68 = load i32, i32* %3, align 4
  ret i32 %68
}

declare dso_local %struct.bfi_diag_dport_req_s* @bfa_reqq_next(i32, i32) #1

declare dso_local i32 @bfa_reqq_wait(i32, i32, i32*) #1

declare dso_local i32 @bfi_h2i_set(i32, i32, i32, i32) #1

declare dso_local i32 @bfa_fn_lpu(i32) #1

declare dso_local i8* @cpu_to_be32(i32) #1

declare dso_local i32 @bfa_reqq_produce(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
