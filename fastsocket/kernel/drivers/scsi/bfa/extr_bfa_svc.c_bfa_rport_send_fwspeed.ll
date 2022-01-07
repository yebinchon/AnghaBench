; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/bfa/extr_bfa_svc.c_bfa_rport_send_fwspeed.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/bfa/extr_bfa_svc.c_bfa_rport_send_fwspeed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfa_rport_s = type { i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i64 }
%struct.bfa_rport_speed_req_s = type { i32, i64, i32 }

@BFA_REQQ_RPORT = common dso_local global i32 0, align 4
@BFA_FALSE = common dso_local global i32 0, align 4
@BFI_MC_RPORT = common dso_local global i32 0, align 4
@BFI_RPORT_H2I_SET_SPEED_REQ = common dso_local global i32 0, align 4
@BFA_TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bfa_rport_s*)* @bfa_rport_send_fwspeed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bfa_rport_send_fwspeed(%struct.bfa_rport_s* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bfa_rport_s*, align 8
  %4 = alloca %struct.bfa_rport_speed_req_s*, align 8
  store %struct.bfa_rport_s* %0, %struct.bfa_rport_s** %3, align 8
  %5 = load %struct.bfa_rport_s*, %struct.bfa_rport_s** %3, align 8
  %6 = getelementptr inbounds %struct.bfa_rport_s, %struct.bfa_rport_s* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  %8 = load i32, i32* @BFA_REQQ_RPORT, align 4
  %9 = call %struct.bfa_rport_speed_req_s* @bfa_reqq_next(i32 %7, i32 %8)
  store %struct.bfa_rport_speed_req_s* %9, %struct.bfa_rport_speed_req_s** %4, align 8
  %10 = load %struct.bfa_rport_speed_req_s*, %struct.bfa_rport_speed_req_s** %4, align 8
  %11 = icmp ne %struct.bfa_rport_speed_req_s* %10, null
  br i1 %11, label %22, label %12

12:                                               ; preds = %1
  %13 = load %struct.bfa_rport_s*, %struct.bfa_rport_s** %3, align 8
  %14 = getelementptr inbounds %struct.bfa_rport_s, %struct.bfa_rport_s* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = load %struct.bfa_rport_s*, %struct.bfa_rport_s** %3, align 8
  %17 = getelementptr inbounds %struct.bfa_rport_s, %struct.bfa_rport_s* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = call i32 @bfa_trc(i32 %15, i64 %19)
  %21 = load i32, i32* @BFA_FALSE, align 4
  store i32 %21, i32* %2, align 4
  br label %53

22:                                               ; preds = %1
  %23 = load %struct.bfa_rport_speed_req_s*, %struct.bfa_rport_speed_req_s** %4, align 8
  %24 = getelementptr inbounds %struct.bfa_rport_speed_req_s, %struct.bfa_rport_speed_req_s* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* @BFI_MC_RPORT, align 4
  %27 = load i32, i32* @BFI_RPORT_H2I_SET_SPEED_REQ, align 4
  %28 = load %struct.bfa_rport_s*, %struct.bfa_rport_s** %3, align 8
  %29 = getelementptr inbounds %struct.bfa_rport_s, %struct.bfa_rport_s* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = call i32 @bfa_fn_lpu(i32 %30)
  %32 = call i32 @bfi_h2i_set(i32 %25, i32 %26, i32 %27, i32 %31)
  %33 = load %struct.bfa_rport_s*, %struct.bfa_rport_s** %3, align 8
  %34 = getelementptr inbounds %struct.bfa_rport_s, %struct.bfa_rport_s* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 8
  %36 = load %struct.bfa_rport_speed_req_s*, %struct.bfa_rport_speed_req_s** %4, align 8
  %37 = getelementptr inbounds %struct.bfa_rport_speed_req_s, %struct.bfa_rport_speed_req_s* %36, i32 0, i32 2
  store i32 %35, i32* %37, align 8
  %38 = load %struct.bfa_rport_s*, %struct.bfa_rport_s** %3, align 8
  %39 = getelementptr inbounds %struct.bfa_rport_s, %struct.bfa_rport_s* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load %struct.bfa_rport_speed_req_s*, %struct.bfa_rport_speed_req_s** %4, align 8
  %43 = getelementptr inbounds %struct.bfa_rport_speed_req_s, %struct.bfa_rport_speed_req_s* %42, i32 0, i32 1
  store i64 %41, i64* %43, align 8
  %44 = load %struct.bfa_rport_s*, %struct.bfa_rport_s** %3, align 8
  %45 = getelementptr inbounds %struct.bfa_rport_s, %struct.bfa_rport_s* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = load i32, i32* @BFA_REQQ_RPORT, align 4
  %48 = load %struct.bfa_rport_speed_req_s*, %struct.bfa_rport_speed_req_s** %4, align 8
  %49 = getelementptr inbounds %struct.bfa_rport_speed_req_s, %struct.bfa_rport_speed_req_s* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = call i32 @bfa_reqq_produce(i32 %46, i32 %47, i32 %50)
  %52 = load i32, i32* @BFA_TRUE, align 4
  store i32 %52, i32* %2, align 4
  br label %53

53:                                               ; preds = %22, %12
  %54 = load i32, i32* %2, align 4
  ret i32 %54
}

declare dso_local %struct.bfa_rport_speed_req_s* @bfa_reqq_next(i32, i32) #1

declare dso_local i32 @bfa_trc(i32, i64) #1

declare dso_local i32 @bfi_h2i_set(i32, i32, i32, i32) #1

declare dso_local i32 @bfa_fn_lpu(i32) #1

declare dso_local i32 @bfa_reqq_produce(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
