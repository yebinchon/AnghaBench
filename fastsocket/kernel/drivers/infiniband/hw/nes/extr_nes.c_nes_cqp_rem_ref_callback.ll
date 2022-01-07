; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/nes/extr_nes.c_nes_cqp_rem_ref_callback.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/nes/extr_nes.c_nes_cqp_rem_ref_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nes_device = type { i32, %struct.nes_adapter* }
%struct.nes_adapter = type { i32**, i32, i32, i32 }
%struct.nes_cqp_request = type { %struct.nes_qp* }
%struct.nes_qp = type { i32, i32, %struct.TYPE_2__, i32*, i32 }
%struct.TYPE_2__ = type { i64, i32, i32*, i32, i32* }

@qps_destroyed = common dso_local global i32 0, align 4
@NES_FIRST_QPN = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nes_device*, %struct.nes_cqp_request*)* @nes_cqp_rem_ref_callback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nes_cqp_rem_ref_callback(%struct.nes_device* %0, %struct.nes_cqp_request* %1) #0 {
  %3 = alloca %struct.nes_device*, align 8
  %4 = alloca %struct.nes_cqp_request*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.nes_qp*, align 8
  %7 = alloca %struct.nes_adapter*, align 8
  store %struct.nes_device* %0, %struct.nes_device** %3, align 8
  store %struct.nes_cqp_request* %1, %struct.nes_cqp_request** %4, align 8
  %8 = load %struct.nes_cqp_request*, %struct.nes_cqp_request** %4, align 8
  %9 = getelementptr inbounds %struct.nes_cqp_request, %struct.nes_cqp_request* %8, i32 0, i32 0
  %10 = load %struct.nes_qp*, %struct.nes_qp** %9, align 8
  store %struct.nes_qp* %10, %struct.nes_qp** %6, align 8
  %11 = load %struct.nes_device*, %struct.nes_device** %3, align 8
  %12 = getelementptr inbounds %struct.nes_device, %struct.nes_device* %11, i32 0, i32 1
  %13 = load %struct.nes_adapter*, %struct.nes_adapter** %12, align 8
  store %struct.nes_adapter* %13, %struct.nes_adapter** %7, align 8
  %14 = call i32 @atomic_inc(i32* @qps_destroyed)
  %15 = load %struct.nes_qp*, %struct.nes_qp** %6, align 8
  %16 = getelementptr inbounds %struct.nes_qp, %struct.nes_qp* %15, i32 0, i32 3
  %17 = load i32*, i32** %16, align 8
  %18 = icmp ne i32* %17, null
  br i1 %18, label %19, label %59

19:                                               ; preds = %2
  %20 = load %struct.nes_device*, %struct.nes_device** %3, align 8
  %21 = getelementptr inbounds %struct.nes_device, %struct.nes_device* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load %struct.nes_qp*, %struct.nes_qp** %6, align 8
  %24 = getelementptr inbounds %struct.nes_qp, %struct.nes_qp* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load %struct.nes_qp*, %struct.nes_qp** %6, align 8
  %27 = getelementptr inbounds %struct.nes_qp, %struct.nes_qp* %26, i32 0, i32 2
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 4
  %29 = load i32*, i32** %28, align 8
  %30 = load %struct.nes_qp*, %struct.nes_qp** %6, align 8
  %31 = getelementptr inbounds %struct.nes_qp, %struct.nes_qp* %30, i32 0, i32 2
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 3
  %33 = load i32, i32* %32, align 8
  %34 = call i32 @pci_free_consistent(i32 %22, i32 %25, i32* %29, i32 %33)
  %35 = load %struct.nes_adapter*, %struct.nes_adapter** %7, align 8
  %36 = getelementptr inbounds %struct.nes_adapter, %struct.nes_adapter* %35, i32 0, i32 2
  %37 = load i64, i64* %5, align 8
  %38 = call i32 @spin_lock_irqsave(i32* %36, i64 %37)
  %39 = load %struct.nes_adapter*, %struct.nes_adapter** %7, align 8
  %40 = getelementptr inbounds %struct.nes_adapter, %struct.nes_adapter* %39, i32 0, i32 3
  %41 = load i32, i32* %40, align 8
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %40, align 8
  %43 = load %struct.nes_adapter*, %struct.nes_adapter** %7, align 8
  %44 = getelementptr inbounds %struct.nes_adapter, %struct.nes_adapter* %43, i32 0, i32 2
  %45 = load i64, i64* %5, align 8
  %46 = call i32 @spin_unlock_irqrestore(i32* %44, i64 %45)
  %47 = load %struct.nes_device*, %struct.nes_device** %3, align 8
  %48 = getelementptr inbounds %struct.nes_device, %struct.nes_device* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = load %struct.nes_qp*, %struct.nes_qp** %6, align 8
  %51 = getelementptr inbounds %struct.nes_qp, %struct.nes_qp* %50, i32 0, i32 3
  %52 = load i32*, i32** %51, align 8
  %53 = load %struct.nes_qp*, %struct.nes_qp** %6, align 8
  %54 = getelementptr inbounds %struct.nes_qp, %struct.nes_qp* %53, i32 0, i32 4
  %55 = load i32, i32* %54, align 8
  %56 = call i32 @pci_free_consistent(i32 %49, i32 256, i32* %52, i32 %55)
  %57 = load %struct.nes_qp*, %struct.nes_qp** %6, align 8
  %58 = getelementptr inbounds %struct.nes_qp, %struct.nes_qp* %57, i32 0, i32 3
  store i32* null, i32** %58, align 8
  br label %75

59:                                               ; preds = %2
  %60 = load %struct.nes_device*, %struct.nes_device** %3, align 8
  %61 = getelementptr inbounds %struct.nes_device, %struct.nes_device* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = load %struct.nes_qp*, %struct.nes_qp** %6, align 8
  %64 = getelementptr inbounds %struct.nes_qp, %struct.nes_qp* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = load %struct.nes_qp*, %struct.nes_qp** %6, align 8
  %67 = getelementptr inbounds %struct.nes_qp, %struct.nes_qp* %66, i32 0, i32 2
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 2
  %69 = load i32*, i32** %68, align 8
  %70 = load %struct.nes_qp*, %struct.nes_qp** %6, align 8
  %71 = getelementptr inbounds %struct.nes_qp, %struct.nes_qp* %70, i32 0, i32 2
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 8
  %74 = call i32 @pci_free_consistent(i32 %62, i32 %65, i32* %69, i32 %73)
  br label %75

75:                                               ; preds = %59, %19
  %76 = load %struct.nes_adapter*, %struct.nes_adapter** %7, align 8
  %77 = load %struct.nes_adapter*, %struct.nes_adapter** %7, align 8
  %78 = getelementptr inbounds %struct.nes_adapter, %struct.nes_adapter* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 8
  %80 = load %struct.nes_qp*, %struct.nes_qp** %6, align 8
  %81 = getelementptr inbounds %struct.nes_qp, %struct.nes_qp* %80, i32 0, i32 2
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = call i32 @nes_free_resource(%struct.nes_adapter* %76, i32 %79, i64 %83)
  %85 = load %struct.nes_adapter*, %struct.nes_adapter** %7, align 8
  %86 = getelementptr inbounds %struct.nes_adapter, %struct.nes_adapter* %85, i32 0, i32 0
  %87 = load i32**, i32*** %86, align 8
  %88 = load %struct.nes_qp*, %struct.nes_qp** %6, align 8
  %89 = getelementptr inbounds %struct.nes_qp, %struct.nes_qp* %88, i32 0, i32 2
  %90 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = load i64, i64* @NES_FIRST_QPN, align 8
  %93 = sub i64 %91, %92
  %94 = getelementptr inbounds i32*, i32** %87, i64 %93
  store i32* null, i32** %94, align 8
  %95 = load %struct.nes_qp*, %struct.nes_qp** %6, align 8
  %96 = getelementptr inbounds %struct.nes_qp, %struct.nes_qp* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  %98 = call i32 @kfree(i32 %97)
  ret void
}

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @pci_free_consistent(i32, i32, i32*, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @nes_free_resource(%struct.nes_adapter*, i32, i64) #1

declare dso_local i32 @kfree(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
