; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/nes/extr_nes.c_nes_get_qp.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/nes/extr_nes.c_nes_get_qp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_qp = type { i32 }
%struct.ib_device = type { i32 }
%struct.nes_vnic = type { %struct.nes_device* }
%struct.nes_device = type { %struct.nes_adapter* }
%struct.nes_adapter = type { i32, %struct.TYPE_2__** }
%struct.TYPE_2__ = type { %struct.ib_qp }

@NES_FIRST_QPN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.ib_qp* @nes_get_qp(%struct.ib_device* %0, i32 %1) #0 {
  %3 = alloca %struct.ib_qp*, align 8
  %4 = alloca %struct.ib_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.nes_vnic*, align 8
  %7 = alloca %struct.nes_device*, align 8
  %8 = alloca %struct.nes_adapter*, align 8
  store %struct.ib_device* %0, %struct.ib_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.ib_device*, %struct.ib_device** %4, align 8
  %10 = call %struct.nes_vnic* @to_nesvnic(%struct.ib_device* %9)
  store %struct.nes_vnic* %10, %struct.nes_vnic** %6, align 8
  %11 = load %struct.nes_vnic*, %struct.nes_vnic** %6, align 8
  %12 = getelementptr inbounds %struct.nes_vnic, %struct.nes_vnic* %11, i32 0, i32 0
  %13 = load %struct.nes_device*, %struct.nes_device** %12, align 8
  store %struct.nes_device* %13, %struct.nes_device** %7, align 8
  %14 = load %struct.nes_device*, %struct.nes_device** %7, align 8
  %15 = getelementptr inbounds %struct.nes_device, %struct.nes_device* %14, i32 0, i32 0
  %16 = load %struct.nes_adapter*, %struct.nes_adapter** %15, align 8
  store %struct.nes_adapter* %16, %struct.nes_adapter** %8, align 8
  %17 = load i32, i32* %5, align 4
  %18 = load i32, i32* @NES_FIRST_QPN, align 4
  %19 = icmp slt i32 %17, %18
  br i1 %19, label %28, label %20

20:                                               ; preds = %2
  %21 = load i32, i32* %5, align 4
  %22 = load i32, i32* @NES_FIRST_QPN, align 4
  %23 = load %struct.nes_adapter*, %struct.nes_adapter** %8, align 8
  %24 = getelementptr inbounds %struct.nes_adapter, %struct.nes_adapter* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = add nsw i32 %22, %25
  %27 = icmp sge i32 %21, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %20, %2
  store %struct.ib_qp* null, %struct.ib_qp** %3, align 8
  br label %40

29:                                               ; preds = %20
  %30 = load %struct.nes_adapter*, %struct.nes_adapter** %8, align 8
  %31 = getelementptr inbounds %struct.nes_adapter, %struct.nes_adapter* %30, i32 0, i32 1
  %32 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %31, align 8
  %33 = load i32, i32* %5, align 4
  %34 = load i32, i32* @NES_FIRST_QPN, align 4
  %35 = sub nsw i32 %33, %34
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %32, i64 %36
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  store %struct.ib_qp* %39, %struct.ib_qp** %3, align 8
  br label %40

40:                                               ; preds = %29, %28
  %41 = load %struct.ib_qp*, %struct.ib_qp** %3, align 8
  ret %struct.ib_qp* %41
}

declare dso_local %struct.nes_vnic* @to_nesvnic(%struct.ib_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
