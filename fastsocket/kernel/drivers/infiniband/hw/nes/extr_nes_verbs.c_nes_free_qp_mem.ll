; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/nes/extr_nes_verbs.c_nes_free_qp_mem.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/nes/extr_nes_verbs.c_nes_free_qp_mem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nes_device = type { i32, %struct.nes_adapter* }
%struct.nes_adapter = type { i32, i32 }
%struct.nes_qp = type { i32, i32, i64, i32*, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32*, i32, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nes_device*, %struct.nes_qp*, i32)* @nes_free_qp_mem to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nes_free_qp_mem(%struct.nes_device* %0, %struct.nes_qp* %1, i32 %2) #0 {
  %4 = alloca %struct.nes_device*, align 8
  %5 = alloca %struct.nes_qp*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca %struct.nes_adapter*, align 8
  store %struct.nes_device* %0, %struct.nes_device** %4, align 8
  store %struct.nes_qp* %1, %struct.nes_qp** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load %struct.nes_device*, %struct.nes_device** %4, align 8
  %10 = getelementptr inbounds %struct.nes_device, %struct.nes_device* %9, i32 0, i32 1
  %11 = load %struct.nes_adapter*, %struct.nes_adapter** %10, align 8
  store %struct.nes_adapter* %11, %struct.nes_adapter** %8, align 8
  %12 = load i32, i32* %6, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %30, label %14

14:                                               ; preds = %3
  %15 = load %struct.nes_device*, %struct.nes_device** %4, align 8
  %16 = getelementptr inbounds %struct.nes_device, %struct.nes_device* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load %struct.nes_qp*, %struct.nes_qp** %5, align 8
  %19 = getelementptr inbounds %struct.nes_qp, %struct.nes_qp* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load %struct.nes_qp*, %struct.nes_qp** %5, align 8
  %22 = getelementptr inbounds %struct.nes_qp, %struct.nes_qp* %21, i32 0, i32 5
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 3
  %24 = load i32*, i32** %23, align 8
  %25 = load %struct.nes_qp*, %struct.nes_qp** %5, align 8
  %26 = getelementptr inbounds %struct.nes_qp, %struct.nes_qp* %25, i32 0, i32 5
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 8
  %29 = call i32 @pci_free_consistent(i32 %17, i32 %20, i32* %24, i32 %28)
  br label %82

30:                                               ; preds = %3
  %31 = load %struct.nes_adapter*, %struct.nes_adapter** %8, align 8
  %32 = getelementptr inbounds %struct.nes_adapter, %struct.nes_adapter* %31, i32 0, i32 0
  %33 = load i64, i64* %7, align 8
  %34 = call i32 @spin_lock_irqsave(i32* %32, i64 %33)
  %35 = load %struct.nes_adapter*, %struct.nes_adapter** %8, align 8
  %36 = getelementptr inbounds %struct.nes_adapter, %struct.nes_adapter* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %36, align 4
  %39 = load %struct.nes_adapter*, %struct.nes_adapter** %8, align 8
  %40 = getelementptr inbounds %struct.nes_adapter, %struct.nes_adapter* %39, i32 0, i32 0
  %41 = load i64, i64* %7, align 8
  %42 = call i32 @spin_unlock_irqrestore(i32* %40, i64 %41)
  %43 = load %struct.nes_device*, %struct.nes_device** %4, align 8
  %44 = getelementptr inbounds %struct.nes_device, %struct.nes_device* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = load %struct.nes_qp*, %struct.nes_qp** %5, align 8
  %47 = getelementptr inbounds %struct.nes_qp, %struct.nes_qp* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = load %struct.nes_qp*, %struct.nes_qp** %5, align 8
  %50 = getelementptr inbounds %struct.nes_qp, %struct.nes_qp* %49, i32 0, i32 5
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 1
  %52 = load i32*, i32** %51, align 8
  %53 = load %struct.nes_qp*, %struct.nes_qp** %5, align 8
  %54 = getelementptr inbounds %struct.nes_qp, %struct.nes_qp* %53, i32 0, i32 5
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = call i32 @pci_free_consistent(i32 %45, i32 %48, i32* %52, i32 %56)
  %58 = load %struct.nes_device*, %struct.nes_device** %4, align 8
  %59 = getelementptr inbounds %struct.nes_device, %struct.nes_device* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = load %struct.nes_qp*, %struct.nes_qp** %5, align 8
  %62 = getelementptr inbounds %struct.nes_qp, %struct.nes_qp* %61, i32 0, i32 3
  %63 = load i32*, i32** %62, align 8
  %64 = load %struct.nes_qp*, %struct.nes_qp** %5, align 8
  %65 = getelementptr inbounds %struct.nes_qp, %struct.nes_qp* %64, i32 0, i32 4
  %66 = load i32, i32* %65, align 8
  %67 = call i32 @pci_free_consistent(i32 %60, i32 256, i32* %63, i32 %66)
  %68 = load %struct.nes_qp*, %struct.nes_qp** %5, align 8
  %69 = getelementptr inbounds %struct.nes_qp, %struct.nes_qp* %68, i32 0, i32 3
  store i32* null, i32** %69, align 8
  %70 = load %struct.nes_qp*, %struct.nes_qp** %5, align 8
  %71 = getelementptr inbounds %struct.nes_qp, %struct.nes_qp* %70, i32 0, i32 2
  %72 = load i64, i64* %71, align 8
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %81

74:                                               ; preds = %30
  %75 = load %struct.nes_qp*, %struct.nes_qp** %5, align 8
  %76 = getelementptr inbounds %struct.nes_qp, %struct.nes_qp* %75, i32 0, i32 2
  store i64 0, i64* %76, align 8
  %77 = load %struct.nes_qp*, %struct.nes_qp** %5, align 8
  %78 = getelementptr inbounds %struct.nes_qp, %struct.nes_qp* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @kunmap(i32 %79)
  br label %81

81:                                               ; preds = %74, %30
  br label %82

82:                                               ; preds = %81, %14
  ret void
}

declare dso_local i32 @pci_free_consistent(i32, i32, i32*, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @kunmap(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
