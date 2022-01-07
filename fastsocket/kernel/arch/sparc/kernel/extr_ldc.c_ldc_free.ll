; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/sparc/kernel/extr_ldc.c_ldc_free.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/sparc/kernel/extr_ldc.c_ldc_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ldc_channel = type { i32, %struct.ldc_channel*, i32, i32, i32, i32, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

@LDC_FLAG_REGISTERED_IRQS = common dso_local global i32 0, align 4
@LDC_FLAG_REGISTERED_QUEUES = common dso_local global i32 0, align 4
@LDC_FLAG_ALLOCED_QUEUES = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ldc_free(%struct.ldc_channel* %0) #0 {
  %2 = alloca %struct.ldc_channel*, align 8
  store %struct.ldc_channel* %0, %struct.ldc_channel** %2, align 8
  %3 = load %struct.ldc_channel*, %struct.ldc_channel** %2, align 8
  %4 = getelementptr inbounds %struct.ldc_channel, %struct.ldc_channel* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 8
  %6 = load i32, i32* @LDC_FLAG_REGISTERED_IRQS, align 4
  %7 = and i32 %5, %6
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %22

9:                                                ; preds = %1
  %10 = load %struct.ldc_channel*, %struct.ldc_channel** %2, align 8
  %11 = getelementptr inbounds %struct.ldc_channel, %struct.ldc_channel* %10, i32 0, i32 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.ldc_channel*, %struct.ldc_channel** %2, align 8
  %15 = call i32 @free_irq(i32 %13, %struct.ldc_channel* %14)
  %16 = load %struct.ldc_channel*, %struct.ldc_channel** %2, align 8
  %17 = getelementptr inbounds %struct.ldc_channel, %struct.ldc_channel* %16, i32 0, i32 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load %struct.ldc_channel*, %struct.ldc_channel** %2, align 8
  %21 = call i32 @free_irq(i32 %19, %struct.ldc_channel* %20)
  br label %22

22:                                               ; preds = %9, %1
  %23 = load %struct.ldc_channel*, %struct.ldc_channel** %2, align 8
  %24 = getelementptr inbounds %struct.ldc_channel, %struct.ldc_channel* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* @LDC_FLAG_REGISTERED_QUEUES, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %44

29:                                               ; preds = %22
  %30 = load %struct.ldc_channel*, %struct.ldc_channel** %2, align 8
  %31 = getelementptr inbounds %struct.ldc_channel, %struct.ldc_channel* %30, i32 0, i32 7
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @sun4v_ldc_tx_qconf(i32 %32, i32 0, i32 0)
  %34 = load %struct.ldc_channel*, %struct.ldc_channel** %2, align 8
  %35 = getelementptr inbounds %struct.ldc_channel, %struct.ldc_channel* %34, i32 0, i32 7
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @sun4v_ldc_rx_qconf(i32 %36, i32 0, i32 0)
  %38 = load i32, i32* @LDC_FLAG_REGISTERED_QUEUES, align 4
  %39 = xor i32 %38, -1
  %40 = load %struct.ldc_channel*, %struct.ldc_channel** %2, align 8
  %41 = getelementptr inbounds %struct.ldc_channel, %struct.ldc_channel* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = and i32 %42, %39
  store i32 %43, i32* %41, align 8
  br label %44

44:                                               ; preds = %29, %22
  %45 = load %struct.ldc_channel*, %struct.ldc_channel** %2, align 8
  %46 = getelementptr inbounds %struct.ldc_channel, %struct.ldc_channel* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = load i32, i32* @LDC_FLAG_ALLOCED_QUEUES, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %72

51:                                               ; preds = %44
  %52 = load %struct.ldc_channel*, %struct.ldc_channel** %2, align 8
  %53 = getelementptr inbounds %struct.ldc_channel, %struct.ldc_channel* %52, i32 0, i32 6
  %54 = load i32, i32* %53, align 8
  %55 = load %struct.ldc_channel*, %struct.ldc_channel** %2, align 8
  %56 = getelementptr inbounds %struct.ldc_channel, %struct.ldc_channel* %55, i32 0, i32 5
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @free_queue(i32 %54, i32 %57)
  %59 = load %struct.ldc_channel*, %struct.ldc_channel** %2, align 8
  %60 = getelementptr inbounds %struct.ldc_channel, %struct.ldc_channel* %59, i32 0, i32 4
  %61 = load i32, i32* %60, align 8
  %62 = load %struct.ldc_channel*, %struct.ldc_channel** %2, align 8
  %63 = getelementptr inbounds %struct.ldc_channel, %struct.ldc_channel* %62, i32 0, i32 3
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @free_queue(i32 %61, i32 %64)
  %66 = load i32, i32* @LDC_FLAG_ALLOCED_QUEUES, align 4
  %67 = xor i32 %66, -1
  %68 = load %struct.ldc_channel*, %struct.ldc_channel** %2, align 8
  %69 = getelementptr inbounds %struct.ldc_channel, %struct.ldc_channel* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = and i32 %70, %67
  store i32 %71, i32* %69, align 8
  br label %72

72:                                               ; preds = %51, %44
  %73 = load %struct.ldc_channel*, %struct.ldc_channel** %2, align 8
  %74 = getelementptr inbounds %struct.ldc_channel, %struct.ldc_channel* %73, i32 0, i32 2
  %75 = call i32 @hlist_del(i32* %74)
  %76 = load %struct.ldc_channel*, %struct.ldc_channel** %2, align 8
  %77 = getelementptr inbounds %struct.ldc_channel, %struct.ldc_channel* %76, i32 0, i32 1
  %78 = load %struct.ldc_channel*, %struct.ldc_channel** %77, align 8
  %79 = call i32 @kfree(%struct.ldc_channel* %78)
  %80 = load %struct.ldc_channel*, %struct.ldc_channel** %2, align 8
  %81 = call i32 @ldc_iommu_release(%struct.ldc_channel* %80)
  %82 = load %struct.ldc_channel*, %struct.ldc_channel** %2, align 8
  %83 = call i32 @kfree(%struct.ldc_channel* %82)
  ret void
}

declare dso_local i32 @free_irq(i32, %struct.ldc_channel*) #1

declare dso_local i32 @sun4v_ldc_tx_qconf(i32, i32, i32) #1

declare dso_local i32 @sun4v_ldc_rx_qconf(i32, i32, i32) #1

declare dso_local i32 @free_queue(i32, i32) #1

declare dso_local i32 @hlist_del(i32*) #1

declare dso_local i32 @kfree(%struct.ldc_channel*) #1

declare dso_local i32 @ldc_iommu_release(%struct.ldc_channel*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
