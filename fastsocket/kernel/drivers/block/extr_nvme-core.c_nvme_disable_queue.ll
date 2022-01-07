; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/block/extr_nvme-core.c_nvme_disable_queue.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/block/extr_nvme-core.c_nvme_disable_queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvme_dev = type { %struct.TYPE_2__*, %struct.nvme_queue** }
%struct.TYPE_2__ = type { i32 }
%struct.nvme_queue = type { i64, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nvme_dev*, i32)* @nvme_disable_queue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nvme_disable_queue(%struct.nvme_dev* %0, i32 %1) #0 {
  %3 = alloca %struct.nvme_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.nvme_queue*, align 8
  %6 = alloca i32, align 4
  store %struct.nvme_dev* %0, %struct.nvme_dev** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.nvme_dev*, %struct.nvme_dev** %3, align 8
  %8 = getelementptr inbounds %struct.nvme_dev, %struct.nvme_dev* %7, i32 0, i32 1
  %9 = load %struct.nvme_queue**, %struct.nvme_queue*** %8, align 8
  %10 = load i32, i32* %4, align 4
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds %struct.nvme_queue*, %struct.nvme_queue** %9, i64 %11
  %13 = load %struct.nvme_queue*, %struct.nvme_queue** %12, align 8
  store %struct.nvme_queue* %13, %struct.nvme_queue** %5, align 8
  %14 = load %struct.nvme_dev*, %struct.nvme_dev** %3, align 8
  %15 = getelementptr inbounds %struct.nvme_dev, %struct.nvme_dev* %14, i32 0, i32 0
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = load %struct.nvme_queue*, %struct.nvme_queue** %5, align 8
  %18 = getelementptr inbounds %struct.nvme_queue, %struct.nvme_queue* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i64 %19
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %6, align 4
  %23 = load %struct.nvme_queue*, %struct.nvme_queue** %5, align 8
  %24 = getelementptr inbounds %struct.nvme_queue, %struct.nvme_queue* %23, i32 0, i32 2
  %25 = call i32 @spin_lock_irq(i32* %24)
  %26 = load %struct.nvme_queue*, %struct.nvme_queue** %5, align 8
  %27 = getelementptr inbounds %struct.nvme_queue, %struct.nvme_queue* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %2
  %31 = load %struct.nvme_queue*, %struct.nvme_queue** %5, align 8
  %32 = getelementptr inbounds %struct.nvme_queue, %struct.nvme_queue* %31, i32 0, i32 2
  %33 = call i32 @spin_unlock_irq(i32* %32)
  br label %65

34:                                               ; preds = %2
  %35 = load %struct.nvme_queue*, %struct.nvme_queue** %5, align 8
  %36 = getelementptr inbounds %struct.nvme_queue, %struct.nvme_queue* %35, i32 0, i32 1
  store i32 1, i32* %36, align 8
  %37 = load %struct.nvme_queue*, %struct.nvme_queue** %5, align 8
  %38 = getelementptr inbounds %struct.nvme_queue, %struct.nvme_queue* %37, i32 0, i32 2
  %39 = call i32 @spin_unlock_irq(i32* %38)
  %40 = load i32, i32* %6, align 4
  %41 = call i32 @irq_set_affinity_hint(i32 %40, i32* null)
  %42 = load i32, i32* %6, align 4
  %43 = load %struct.nvme_queue*, %struct.nvme_queue** %5, align 8
  %44 = call i32 @free_irq(i32 %42, %struct.nvme_queue* %43)
  %45 = load i32, i32* %4, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %54

47:                                               ; preds = %34
  %48 = load %struct.nvme_dev*, %struct.nvme_dev** %3, align 8
  %49 = load i32, i32* %4, align 4
  %50 = call i32 @adapter_delete_sq(%struct.nvme_dev* %48, i32 %49)
  %51 = load %struct.nvme_dev*, %struct.nvme_dev** %3, align 8
  %52 = load i32, i32* %4, align 4
  %53 = call i32 @adapter_delete_cq(%struct.nvme_dev* %51, i32 %52)
  br label %54

54:                                               ; preds = %47, %34
  %55 = load %struct.nvme_queue*, %struct.nvme_queue** %5, align 8
  %56 = getelementptr inbounds %struct.nvme_queue, %struct.nvme_queue* %55, i32 0, i32 2
  %57 = call i32 @spin_lock_irq(i32* %56)
  %58 = load %struct.nvme_queue*, %struct.nvme_queue** %5, align 8
  %59 = call i32 @nvme_process_cq(%struct.nvme_queue* %58)
  %60 = load %struct.nvme_queue*, %struct.nvme_queue** %5, align 8
  %61 = call i32 @nvme_cancel_ios(%struct.nvme_queue* %60, i32 0)
  %62 = load %struct.nvme_queue*, %struct.nvme_queue** %5, align 8
  %63 = getelementptr inbounds %struct.nvme_queue, %struct.nvme_queue* %62, i32 0, i32 2
  %64 = call i32 @spin_unlock_irq(i32* %63)
  br label %65

65:                                               ; preds = %54, %30
  ret void
}

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @irq_set_affinity_hint(i32, i32*) #1

declare dso_local i32 @free_irq(i32, %struct.nvme_queue*) #1

declare dso_local i32 @adapter_delete_sq(%struct.nvme_dev*, i32) #1

declare dso_local i32 @adapter_delete_cq(%struct.nvme_dev*, i32) #1

declare dso_local i32 @nvme_process_cq(%struct.nvme_queue*) #1

declare dso_local i32 @nvme_cancel_ios(%struct.nvme_queue*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
