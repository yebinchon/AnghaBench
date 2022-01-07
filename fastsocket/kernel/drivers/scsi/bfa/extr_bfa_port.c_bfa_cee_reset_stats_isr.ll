; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/bfa/extr_bfa_port.c_bfa_cee_reset_stats_isr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/bfa/extr_bfa_port.c_bfa_cee_reset_stats_isr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfa_cee_s = type { %struct.TYPE_2__, i32, i32 }
%struct.TYPE_2__ = type { i32, i32 (i32, i32)* }

@BFA_FALSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bfa_cee_s*, i32)* @bfa_cee_reset_stats_isr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bfa_cee_reset_stats_isr(%struct.bfa_cee_s* %0, i32 %1) #0 {
  %3 = alloca %struct.bfa_cee_s*, align 8
  %4 = alloca i32, align 4
  store %struct.bfa_cee_s* %0, %struct.bfa_cee_s** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  %6 = load %struct.bfa_cee_s*, %struct.bfa_cee_s** %3, align 8
  %7 = getelementptr inbounds %struct.bfa_cee_s, %struct.bfa_cee_s* %6, i32 0, i32 2
  store i32 %5, i32* %7, align 4
  %8 = load i32, i32* @BFA_FALSE, align 4
  %9 = load %struct.bfa_cee_s*, %struct.bfa_cee_s** %3, align 8
  %10 = getelementptr inbounds %struct.bfa_cee_s, %struct.bfa_cee_s* %9, i32 0, i32 1
  store i32 %8, i32* %10, align 8
  %11 = load %struct.bfa_cee_s*, %struct.bfa_cee_s** %3, align 8
  %12 = getelementptr inbounds %struct.bfa_cee_s, %struct.bfa_cee_s* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 1
  %14 = load i32 (i32, i32)*, i32 (i32, i32)** %13, align 8
  %15 = icmp ne i32 (i32, i32)* %14, null
  br i1 %15, label %16, label %27

16:                                               ; preds = %2
  %17 = load %struct.bfa_cee_s*, %struct.bfa_cee_s** %3, align 8
  %18 = getelementptr inbounds %struct.bfa_cee_s, %struct.bfa_cee_s* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 1
  %20 = load i32 (i32, i32)*, i32 (i32, i32)** %19, align 8
  %21 = load %struct.bfa_cee_s*, %struct.bfa_cee_s** %3, align 8
  %22 = getelementptr inbounds %struct.bfa_cee_s, %struct.bfa_cee_s* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* %4, align 4
  %26 = call i32 %20(i32 %24, i32 %25)
  br label %27

27:                                               ; preds = %16, %2
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
