; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/bfa/extr_bfa_port.c_bfa_cee_isr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/bfa/extr_bfa_port.c_bfa_cee_isr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfi_mbmsg_s = type { i32 }
%union.bfi_cee_i2h_msg_u = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.bfi_cee_get_rsp_s = type { i32 }
%struct.bfa_cee_s = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bfa_cee_isr(i8* %0, %struct.bfi_mbmsg_s* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.bfi_mbmsg_s*, align 8
  %5 = alloca %union.bfi_cee_i2h_msg_u*, align 8
  %6 = alloca %struct.bfi_cee_get_rsp_s*, align 8
  %7 = alloca %struct.bfa_cee_s*, align 8
  store i8* %0, i8** %3, align 8
  store %struct.bfi_mbmsg_s* %1, %struct.bfi_mbmsg_s** %4, align 8
  %8 = load i8*, i8** %3, align 8
  %9 = bitcast i8* %8 to %struct.bfa_cee_s*
  store %struct.bfa_cee_s* %9, %struct.bfa_cee_s** %7, align 8
  %10 = load %struct.bfi_mbmsg_s*, %struct.bfi_mbmsg_s** %4, align 8
  %11 = bitcast %struct.bfi_mbmsg_s* %10 to %union.bfi_cee_i2h_msg_u*
  store %union.bfi_cee_i2h_msg_u* %11, %union.bfi_cee_i2h_msg_u** %5, align 8
  %12 = load %struct.bfi_mbmsg_s*, %struct.bfi_mbmsg_s** %4, align 8
  %13 = bitcast %struct.bfi_mbmsg_s* %12 to %struct.bfi_cee_get_rsp_s*
  store %struct.bfi_cee_get_rsp_s* %13, %struct.bfi_cee_get_rsp_s** %6, align 8
  %14 = load %struct.bfa_cee_s*, %struct.bfa_cee_s** %7, align 8
  %15 = load %union.bfi_cee_i2h_msg_u*, %union.bfi_cee_i2h_msg_u** %5, align 8
  %16 = bitcast %union.bfi_cee_i2h_msg_u* %15 to %struct.TYPE_2__*
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @bfa_trc(%struct.bfa_cee_s* %14, i32 %18)
  %20 = load %union.bfi_cee_i2h_msg_u*, %union.bfi_cee_i2h_msg_u** %5, align 8
  %21 = bitcast %union.bfi_cee_i2h_msg_u* %20 to %struct.TYPE_2__*
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  switch i32 %23, label %47 [
    i32 130, label %24
    i32 129, label %35
    i32 128, label %41
  ]

24:                                               ; preds = %2
  %25 = load %struct.bfa_cee_s*, %struct.bfa_cee_s** %7, align 8
  %26 = load %struct.bfi_cee_get_rsp_s*, %struct.bfi_cee_get_rsp_s** %6, align 8
  %27 = getelementptr inbounds %struct.bfi_cee_get_rsp_s, %struct.bfi_cee_get_rsp_s* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @bfa_trc(%struct.bfa_cee_s* %25, i32 %28)
  %30 = load %struct.bfa_cee_s*, %struct.bfa_cee_s** %7, align 8
  %31 = load %struct.bfi_cee_get_rsp_s*, %struct.bfi_cee_get_rsp_s** %6, align 8
  %32 = getelementptr inbounds %struct.bfi_cee_get_rsp_s, %struct.bfi_cee_get_rsp_s* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @bfa_cee_get_attr_isr(%struct.bfa_cee_s* %30, i32 %33)
  br label %49

35:                                               ; preds = %2
  %36 = load %struct.bfa_cee_s*, %struct.bfa_cee_s** %7, align 8
  %37 = load %struct.bfi_cee_get_rsp_s*, %struct.bfi_cee_get_rsp_s** %6, align 8
  %38 = getelementptr inbounds %struct.bfi_cee_get_rsp_s, %struct.bfi_cee_get_rsp_s* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @bfa_cee_get_stats_isr(%struct.bfa_cee_s* %36, i32 %39)
  br label %49

41:                                               ; preds = %2
  %42 = load %struct.bfa_cee_s*, %struct.bfa_cee_s** %7, align 8
  %43 = load %struct.bfi_cee_get_rsp_s*, %struct.bfi_cee_get_rsp_s** %6, align 8
  %44 = getelementptr inbounds %struct.bfi_cee_get_rsp_s, %struct.bfi_cee_get_rsp_s* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @bfa_cee_reset_stats_isr(%struct.bfa_cee_s* %42, i32 %45)
  br label %49

47:                                               ; preds = %2
  %48 = call i32 @WARN_ON(i32 1)
  br label %49

49:                                               ; preds = %47, %41, %35, %24
  ret void
}

declare dso_local i32 @bfa_trc(%struct.bfa_cee_s*, i32) #1

declare dso_local i32 @bfa_cee_get_attr_isr(%struct.bfa_cee_s*, i32) #1

declare dso_local i32 @bfa_cee_get_stats_isr(%struct.bfa_cee_s*, i32) #1

declare dso_local i32 @bfa_cee_reset_stats_isr(%struct.bfa_cee_s*, i32) #1

declare dso_local i32 @WARN_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
