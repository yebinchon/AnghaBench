; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/bfa/extr_bfa_ioc.c_bfa_ioc_isr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/bfa/extr_bfa_ioc.c_bfa_ioc_isr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfa_ioc_s = type { i32, i32, i32, %struct.bfa_iocpf_s }
%struct.bfa_iocpf_s = type { i32 }
%struct.bfi_mbmsg_s = type { i32 }
%union.bfi_ioc_i2h_msg_u = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32 }
%struct.TYPE_4__ = type { i32 }

@ioc_isrs = common dso_local global i32 0, align 4
@IOCPF_E_FWRSP_ENABLE = common dso_local global i32 0, align 4
@IOCPF_E_FWRSP_DISABLE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bfa_ioc_isr(%struct.bfa_ioc_s* %0, %struct.bfi_mbmsg_s* %1) #0 {
  %3 = alloca %struct.bfa_ioc_s*, align 8
  %4 = alloca %struct.bfi_mbmsg_s*, align 8
  %5 = alloca %union.bfi_ioc_i2h_msg_u*, align 8
  %6 = alloca %struct.bfa_iocpf_s*, align 8
  store %struct.bfa_ioc_s* %0, %struct.bfa_ioc_s** %3, align 8
  store %struct.bfi_mbmsg_s* %1, %struct.bfi_mbmsg_s** %4, align 8
  %7 = load %struct.bfa_ioc_s*, %struct.bfa_ioc_s** %3, align 8
  %8 = getelementptr inbounds %struct.bfa_ioc_s, %struct.bfa_ioc_s* %7, i32 0, i32 3
  store %struct.bfa_iocpf_s* %8, %struct.bfa_iocpf_s** %6, align 8
  %9 = load %struct.bfi_mbmsg_s*, %struct.bfi_mbmsg_s** %4, align 8
  %10 = bitcast %struct.bfi_mbmsg_s* %9 to %union.bfi_ioc_i2h_msg_u*
  store %union.bfi_ioc_i2h_msg_u* %10, %union.bfi_ioc_i2h_msg_u** %5, align 8
  %11 = load %struct.bfa_ioc_s*, %struct.bfa_ioc_s** %3, align 8
  %12 = load i32, i32* @ioc_isrs, align 4
  %13 = call i32 @bfa_ioc_stats(%struct.bfa_ioc_s* %11, i32 %12)
  %14 = load %union.bfi_ioc_i2h_msg_u*, %union.bfi_ioc_i2h_msg_u** %5, align 8
  %15 = bitcast %union.bfi_ioc_i2h_msg_u* %14 to %struct.TYPE_4__*
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  switch i32 %17, label %44 [
    i32 128, label %18
    i32 130, label %19
    i32 131, label %37
    i32 129, label %41
  ]

18:                                               ; preds = %2
  br label %52

19:                                               ; preds = %2
  %20 = load %union.bfi_ioc_i2h_msg_u*, %union.bfi_ioc_i2h_msg_u** %5, align 8
  %21 = bitcast %union.bfi_ioc_i2h_msg_u* %20 to %struct.TYPE_3__*
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.bfa_ioc_s*, %struct.bfa_ioc_s** %3, align 8
  %25 = getelementptr inbounds %struct.bfa_ioc_s, %struct.bfa_ioc_s* %24, i32 0, i32 1
  store i32 %23, i32* %25, align 4
  %26 = load %struct.bfa_ioc_s*, %struct.bfa_ioc_s** %3, align 8
  %27 = getelementptr inbounds %struct.bfa_ioc_s, %struct.bfa_ioc_s* %26, i32 0, i32 0
  store i32 %23, i32* %27, align 4
  %28 = load %union.bfi_ioc_i2h_msg_u*, %union.bfi_ioc_i2h_msg_u** %5, align 8
  %29 = bitcast %union.bfi_ioc_i2h_msg_u* %28 to %struct.TYPE_3__*
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.bfa_ioc_s*, %struct.bfa_ioc_s** %3, align 8
  %33 = getelementptr inbounds %struct.bfa_ioc_s, %struct.bfa_ioc_s* %32, i32 0, i32 2
  store i32 %31, i32* %33, align 4
  %34 = load %struct.bfa_iocpf_s*, %struct.bfa_iocpf_s** %6, align 8
  %35 = load i32, i32* @IOCPF_E_FWRSP_ENABLE, align 4
  %36 = call i32 @bfa_fsm_send_event(%struct.bfa_iocpf_s* %34, i32 %35)
  br label %52

37:                                               ; preds = %2
  %38 = load %struct.bfa_iocpf_s*, %struct.bfa_iocpf_s** %6, align 8
  %39 = load i32, i32* @IOCPF_E_FWRSP_DISABLE, align 4
  %40 = call i32 @bfa_fsm_send_event(%struct.bfa_iocpf_s* %38, i32 %39)
  br label %52

41:                                               ; preds = %2
  %42 = load %struct.bfa_ioc_s*, %struct.bfa_ioc_s** %3, align 8
  %43 = call i32 @bfa_ioc_getattr_reply(%struct.bfa_ioc_s* %42)
  br label %52

44:                                               ; preds = %2
  %45 = load %struct.bfa_ioc_s*, %struct.bfa_ioc_s** %3, align 8
  %46 = load %union.bfi_ioc_i2h_msg_u*, %union.bfi_ioc_i2h_msg_u** %5, align 8
  %47 = bitcast %union.bfi_ioc_i2h_msg_u* %46 to %struct.TYPE_4__*
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @bfa_trc(%struct.bfa_ioc_s* %45, i32 %49)
  %51 = call i32 @WARN_ON(i32 1)
  br label %52

52:                                               ; preds = %44, %41, %37, %19, %18
  ret void
}

declare dso_local i32 @bfa_ioc_stats(%struct.bfa_ioc_s*, i32) #1

declare dso_local i32 @bfa_fsm_send_event(%struct.bfa_iocpf_s*, i32) #1

declare dso_local i32 @bfa_ioc_getattr_reply(%struct.bfa_ioc_s*) #1

declare dso_local i32 @bfa_trc(%struct.bfa_ioc_s*, i32) #1

declare dso_local i32 @WARN_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
