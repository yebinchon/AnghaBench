; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/bfa/extr_bfa_svc.c_bfa_lps_isr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/bfa/extr_bfa_svc.c_bfa_lps_isr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfa_s = type { i32 }
%struct.bfi_msg_s = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%union.bfi_lps_i2h_msg_u = type { %struct.bfi_msg_s* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bfa_lps_isr(%struct.bfa_s* %0, %struct.bfi_msg_s* %1) #0 {
  %3 = alloca %struct.bfa_s*, align 8
  %4 = alloca %struct.bfi_msg_s*, align 8
  %5 = alloca %union.bfi_lps_i2h_msg_u, align 8
  store %struct.bfa_s* %0, %struct.bfa_s** %3, align 8
  store %struct.bfi_msg_s* %1, %struct.bfi_msg_s** %4, align 8
  %6 = load %struct.bfa_s*, %struct.bfa_s** %3, align 8
  %7 = load %struct.bfi_msg_s*, %struct.bfi_msg_s** %4, align 8
  %8 = getelementptr inbounds %struct.bfi_msg_s, %struct.bfi_msg_s* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @bfa_trc(%struct.bfa_s* %6, i32 %10)
  %12 = load %struct.bfi_msg_s*, %struct.bfi_msg_s** %4, align 8
  %13 = bitcast %union.bfi_lps_i2h_msg_u* %5 to %struct.bfi_msg_s**
  store %struct.bfi_msg_s* %12, %struct.bfi_msg_s** %13, align 8
  %14 = load %struct.bfi_msg_s*, %struct.bfi_msg_s** %4, align 8
  %15 = getelementptr inbounds %struct.bfi_msg_s, %struct.bfi_msg_s* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  switch i32 %17, label %33 [
    i32 129, label %18
    i32 128, label %23
    i32 130, label %28
  ]

18:                                               ; preds = %2
  %19 = load %struct.bfa_s*, %struct.bfa_s** %3, align 8
  %20 = bitcast %union.bfi_lps_i2h_msg_u* %5 to i32*
  %21 = load i32, i32* %20, align 8
  %22 = call i32 @bfa_lps_login_rsp(%struct.bfa_s* %19, i32 %21)
  br label %41

23:                                               ; preds = %2
  %24 = load %struct.bfa_s*, %struct.bfa_s** %3, align 8
  %25 = bitcast %union.bfi_lps_i2h_msg_u* %5 to i32*
  %26 = load i32, i32* %25, align 8
  %27 = call i32 @bfa_lps_logout_rsp(%struct.bfa_s* %24, i32 %26)
  br label %41

28:                                               ; preds = %2
  %29 = load %struct.bfa_s*, %struct.bfa_s** %3, align 8
  %30 = bitcast %union.bfi_lps_i2h_msg_u* %5 to i32*
  %31 = load i32, i32* %30, align 8
  %32 = call i32 @bfa_lps_rx_cvl_event(%struct.bfa_s* %29, i32 %31)
  br label %41

33:                                               ; preds = %2
  %34 = load %struct.bfa_s*, %struct.bfa_s** %3, align 8
  %35 = load %struct.bfi_msg_s*, %struct.bfi_msg_s** %4, align 8
  %36 = getelementptr inbounds %struct.bfi_msg_s, %struct.bfi_msg_s* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @bfa_trc(%struct.bfa_s* %34, i32 %38)
  %40 = call i32 @WARN_ON(i32 1)
  br label %41

41:                                               ; preds = %33, %28, %23, %18
  ret void
}

declare dso_local i32 @bfa_trc(%struct.bfa_s*, i32) #1

declare dso_local i32 @bfa_lps_login_rsp(%struct.bfa_s*, i32) #1

declare dso_local i32 @bfa_lps_logout_rsp(%struct.bfa_s*, i32) #1

declare dso_local i32 @bfa_lps_rx_cvl_event(%struct.bfa_s*, i32) #1

declare dso_local i32 @WARN_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
