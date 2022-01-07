; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/nes/extr_nes_mgt.c_process_fpdus.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/nes/extr_nes_mgt.c_process_fpdus.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nes_vnic = type { i32 }
%struct.nes_qp = type { i32, i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nes_vnic*, %struct.nes_qp*)* @process_fpdus to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @process_fpdus(%struct.nes_vnic* %0, %struct.nes_qp* %1) #0 {
  %3 = alloca %struct.nes_vnic*, align 8
  %4 = alloca %struct.nes_qp*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  store %struct.nes_vnic* %0, %struct.nes_vnic** %3, align 8
  store %struct.nes_qp* %1, %struct.nes_qp** %4, align 8
  store i32 1, i32* %5, align 4
  br label %7

7:                                                ; preds = %30, %2
  %8 = load %struct.nes_vnic*, %struct.nes_vnic** %3, align 8
  %9 = load %struct.nes_qp*, %struct.nes_qp** %4, align 8
  %10 = call i32 @forward_fpdus(%struct.nes_vnic* %8, %struct.nes_qp* %9)
  %11 = load %struct.nes_qp*, %struct.nes_qp** %4, align 8
  %12 = getelementptr inbounds %struct.nes_qp, %struct.nes_qp* %11, i32 0, i32 0
  %13 = load i64, i64* %6, align 8
  %14 = call i32 @spin_lock_irqsave(i32* %12, i64 %13)
  %15 = load %struct.nes_qp*, %struct.nes_qp** %4, align 8
  %16 = getelementptr inbounds %struct.nes_qp, %struct.nes_qp* %15, i32 0, i32 2
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %7
  %20 = load %struct.nes_qp*, %struct.nes_qp** %4, align 8
  %21 = getelementptr inbounds %struct.nes_qp, %struct.nes_qp* %20, i32 0, i32 2
  store i64 0, i64* %21, align 8
  br label %25

22:                                               ; preds = %7
  %23 = load %struct.nes_qp*, %struct.nes_qp** %4, align 8
  %24 = getelementptr inbounds %struct.nes_qp, %struct.nes_qp* %23, i32 0, i32 1
  store i64 0, i64* %24, align 8
  store i32 0, i32* %5, align 4
  br label %25

25:                                               ; preds = %22, %19
  %26 = load %struct.nes_qp*, %struct.nes_qp** %4, align 8
  %27 = getelementptr inbounds %struct.nes_qp, %struct.nes_qp* %26, i32 0, i32 0
  %28 = load i64, i64* %6, align 8
  %29 = call i32 @spin_unlock_irqrestore(i32* %27, i64 %28)
  br label %30

30:                                               ; preds = %25
  %31 = load i32, i32* %5, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %7, label %33

33:                                               ; preds = %30
  ret void
}

declare dso_local i32 @forward_fpdus(%struct.nes_vnic*, %struct.nes_qp*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
