; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/bfa/extr_bfa_svc.c_bfa_fcport_send_stats_get.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/bfa/extr_bfa_svc.c_bfa_fcport_send_stats_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfa_fcport_s = type { i32, i32, i32 }
%struct.bfi_fcport_req_s = type { i32 }

@BFA_REQQ_PORT = common dso_local global i32 0, align 4
@BFA_TRUE = common dso_local global i32 0, align 4
@BFA_FALSE = common dso_local global i32 0, align 4
@BFI_MC_FCPORT = common dso_local global i32 0, align 4
@BFI_FCPORT_H2I_STATS_GET_REQ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @bfa_fcport_send_stats_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bfa_fcport_send_stats_get(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.bfa_fcport_s*, align 8
  %4 = alloca %struct.bfi_fcport_req_s*, align 8
  store i8* %0, i8** %2, align 8
  %5 = load i8*, i8** %2, align 8
  %6 = bitcast i8* %5 to %struct.bfa_fcport_s*
  store %struct.bfa_fcport_s* %6, %struct.bfa_fcport_s** %3, align 8
  %7 = load %struct.bfa_fcport_s*, %struct.bfa_fcport_s** %3, align 8
  %8 = getelementptr inbounds %struct.bfa_fcport_s, %struct.bfa_fcport_s* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* @BFA_REQQ_PORT, align 4
  %11 = call %struct.bfi_fcport_req_s* @bfa_reqq_next(i32 %9, i32 %10)
  store %struct.bfi_fcport_req_s* %11, %struct.bfi_fcport_req_s** %4, align 8
  %12 = load %struct.bfi_fcport_req_s*, %struct.bfi_fcport_req_s** %4, align 8
  %13 = icmp ne %struct.bfi_fcport_req_s* %12, null
  br i1 %13, label %29, label %14

14:                                               ; preds = %1
  %15 = load i32, i32* @BFA_TRUE, align 4
  %16 = load %struct.bfa_fcport_s*, %struct.bfa_fcport_s** %3, align 8
  %17 = getelementptr inbounds %struct.bfa_fcport_s, %struct.bfa_fcport_s* %16, i32 0, i32 1
  store i32 %15, i32* %17, align 4
  %18 = load %struct.bfa_fcport_s*, %struct.bfa_fcport_s** %3, align 8
  %19 = getelementptr inbounds %struct.bfa_fcport_s, %struct.bfa_fcport_s* %18, i32 0, i32 2
  %20 = load %struct.bfa_fcport_s*, %struct.bfa_fcport_s** %3, align 8
  %21 = call i32 @bfa_reqq_winit(i32* %19, void (i8*)* @bfa_fcport_send_stats_get, %struct.bfa_fcport_s* %20)
  %22 = load %struct.bfa_fcport_s*, %struct.bfa_fcport_s** %3, align 8
  %23 = getelementptr inbounds %struct.bfa_fcport_s, %struct.bfa_fcport_s* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @BFA_REQQ_PORT, align 4
  %26 = load %struct.bfa_fcport_s*, %struct.bfa_fcport_s** %3, align 8
  %27 = getelementptr inbounds %struct.bfa_fcport_s, %struct.bfa_fcport_s* %26, i32 0, i32 2
  %28 = call i32 @bfa_reqq_wait(i32 %24, i32 %25, i32* %27)
  br label %53

29:                                               ; preds = %1
  %30 = load i32, i32* @BFA_FALSE, align 4
  %31 = load %struct.bfa_fcport_s*, %struct.bfa_fcport_s** %3, align 8
  %32 = getelementptr inbounds %struct.bfa_fcport_s, %struct.bfa_fcport_s* %31, i32 0, i32 1
  store i32 %30, i32* %32, align 4
  %33 = load %struct.bfi_fcport_req_s*, %struct.bfi_fcport_req_s** %4, align 8
  %34 = call i32 @memset(%struct.bfi_fcport_req_s* %33, i32 0, i32 4)
  %35 = load %struct.bfi_fcport_req_s*, %struct.bfi_fcport_req_s** %4, align 8
  %36 = getelementptr inbounds %struct.bfi_fcport_req_s, %struct.bfi_fcport_req_s* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @BFI_MC_FCPORT, align 4
  %39 = load i32, i32* @BFI_FCPORT_H2I_STATS_GET_REQ, align 4
  %40 = load %struct.bfa_fcport_s*, %struct.bfa_fcport_s** %3, align 8
  %41 = getelementptr inbounds %struct.bfa_fcport_s, %struct.bfa_fcport_s* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @bfa_fn_lpu(i32 %42)
  %44 = call i32 @bfi_h2i_set(i32 %37, i32 %38, i32 %39, i32 %43)
  %45 = load %struct.bfa_fcport_s*, %struct.bfa_fcport_s** %3, align 8
  %46 = getelementptr inbounds %struct.bfa_fcport_s, %struct.bfa_fcport_s* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @BFA_REQQ_PORT, align 4
  %49 = load %struct.bfi_fcport_req_s*, %struct.bfi_fcport_req_s** %4, align 8
  %50 = getelementptr inbounds %struct.bfi_fcport_req_s, %struct.bfi_fcport_req_s* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @bfa_reqq_produce(i32 %47, i32 %48, i32 %51)
  br label %53

53:                                               ; preds = %29, %14
  ret void
}

declare dso_local %struct.bfi_fcport_req_s* @bfa_reqq_next(i32, i32) #1

declare dso_local i32 @bfa_reqq_winit(i32*, void (i8*)*, %struct.bfa_fcport_s*) #1

declare dso_local i32 @bfa_reqq_wait(i32, i32, i32*) #1

declare dso_local i32 @memset(%struct.bfi_fcport_req_s*, i32, i32) #1

declare dso_local i32 @bfi_h2i_set(i32, i32, i32, i32) #1

declare dso_local i32 @bfa_fn_lpu(i32) #1

declare dso_local i32 @bfa_reqq_produce(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
