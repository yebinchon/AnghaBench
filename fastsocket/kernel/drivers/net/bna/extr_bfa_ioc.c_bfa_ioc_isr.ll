; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bna/extr_bfa_ioc.c_bfa_ioc_isr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bna/extr_bfa_ioc.c_bfa_ioc_isr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfa_ioc = type { %struct.bfa_iocpf }
%struct.bfa_iocpf = type { i32 }
%struct.bfi_mbmsg = type { i32 }
%union.bfi_ioc_i2h_msg_u = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_3__ = type { i32 }

@ioc_isrs = common dso_local global i32 0, align 4
@IOCPF_E_FWRSP_DISABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bfa_ioc*, %struct.bfi_mbmsg*)* @bfa_ioc_isr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bfa_ioc_isr(%struct.bfa_ioc* %0, %struct.bfi_mbmsg* %1) #0 {
  %3 = alloca %struct.bfa_ioc*, align 8
  %4 = alloca %struct.bfi_mbmsg*, align 8
  %5 = alloca %union.bfi_ioc_i2h_msg_u*, align 8
  %6 = alloca %struct.bfa_iocpf*, align 8
  store %struct.bfa_ioc* %0, %struct.bfa_ioc** %3, align 8
  store %struct.bfi_mbmsg* %1, %struct.bfi_mbmsg** %4, align 8
  %7 = load %struct.bfa_ioc*, %struct.bfa_ioc** %3, align 8
  %8 = getelementptr inbounds %struct.bfa_ioc, %struct.bfa_ioc* %7, i32 0, i32 0
  store %struct.bfa_iocpf* %8, %struct.bfa_iocpf** %6, align 8
  %9 = load %struct.bfi_mbmsg*, %struct.bfi_mbmsg** %4, align 8
  %10 = bitcast %struct.bfi_mbmsg* %9 to %union.bfi_ioc_i2h_msg_u*
  store %union.bfi_ioc_i2h_msg_u* %10, %union.bfi_ioc_i2h_msg_u** %5, align 8
  %11 = load %struct.bfa_ioc*, %struct.bfa_ioc** %3, align 8
  %12 = load i32, i32* @ioc_isrs, align 4
  %13 = call i32 @bfa_ioc_stats(%struct.bfa_ioc* %11, i32 %12)
  %14 = load %union.bfi_ioc_i2h_msg_u*, %union.bfi_ioc_i2h_msg_u** %5, align 8
  %15 = bitcast %union.bfi_ioc_i2h_msg_u* %14 to %struct.TYPE_3__*
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  switch i32 %17, label %37 [
    i32 128, label %18
    i32 130, label %19
    i32 131, label %30
    i32 129, label %34
  ]

18:                                               ; preds = %2
  br label %39

19:                                               ; preds = %2
  %20 = load %struct.bfa_ioc*, %struct.bfa_ioc** %3, align 8
  %21 = load %union.bfi_ioc_i2h_msg_u*, %union.bfi_ioc_i2h_msg_u** %5, align 8
  %22 = bitcast %union.bfi_ioc_i2h_msg_u* %21 to %struct.TYPE_4__*
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = load %union.bfi_ioc_i2h_msg_u*, %union.bfi_ioc_i2h_msg_u** %5, align 8
  %26 = bitcast %union.bfi_ioc_i2h_msg_u* %25 to %struct.TYPE_4__*
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @bfa_ioc_enable_reply(%struct.bfa_ioc* %20, i32 %24, i32 %28)
  br label %39

30:                                               ; preds = %2
  %31 = load %struct.bfa_iocpf*, %struct.bfa_iocpf** %6, align 8
  %32 = load i32, i32* @IOCPF_E_FWRSP_DISABLE, align 4
  %33 = call i32 @bfa_fsm_send_event(%struct.bfa_iocpf* %31, i32 %32)
  br label %39

34:                                               ; preds = %2
  %35 = load %struct.bfa_ioc*, %struct.bfa_ioc** %3, align 8
  %36 = call i32 @bfa_ioc_getattr_reply(%struct.bfa_ioc* %35)
  br label %39

37:                                               ; preds = %2
  %38 = call i32 @BUG_ON(i32 1)
  br label %39

39:                                               ; preds = %37, %34, %30, %19, %18
  ret void
}

declare dso_local i32 @bfa_ioc_stats(%struct.bfa_ioc*, i32) #1

declare dso_local i32 @bfa_ioc_enable_reply(%struct.bfa_ioc*, i32, i32) #1

declare dso_local i32 @bfa_fsm_send_event(%struct.bfa_iocpf*, i32) #1

declare dso_local i32 @bfa_ioc_getattr_reply(%struct.bfa_ioc*) #1

declare dso_local i32 @BUG_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
