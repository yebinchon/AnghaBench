; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/bfa/extr_bfa_hw_cb.c_bfa_hwcb_reqq_ack_msix.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/bfa/extr_bfa_hw_cb.c_bfa_hwcb_reqq_ack_msix.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfa_s = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@__HFN_INT_CPE_Q0 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bfa_s*, i32)* @bfa_hwcb_reqq_ack_msix to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bfa_hwcb_reqq_ack_msix(%struct.bfa_s* %0, i32 %1) #0 {
  %3 = alloca %struct.bfa_s*, align 8
  %4 = alloca i32, align 4
  store %struct.bfa_s* %0, %struct.bfa_s** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* @__HFN_INT_CPE_Q0, align 4
  %6 = load %struct.bfa_s*, %struct.bfa_s** %3, align 8
  %7 = getelementptr inbounds %struct.bfa_s, %struct.bfa_s* %6, i32 0, i32 1
  %8 = call i32 @bfa_ioc_pcifn(i32* %7)
  %9 = load i32, i32* %4, align 4
  %10 = call i32 @CPE_Q_NUM(i32 %8, i32 %9)
  %11 = shl i32 %5, %10
  %12 = load %struct.bfa_s*, %struct.bfa_s** %3, align 8
  %13 = getelementptr inbounds %struct.bfa_s, %struct.bfa_s* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @writel(i32 %11, i32 %16)
  ret void
}

declare dso_local i32 @writel(i32, i32) #1

declare dso_local i32 @CPE_Q_NUM(i32, i32) #1

declare dso_local i32 @bfa_ioc_pcifn(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
