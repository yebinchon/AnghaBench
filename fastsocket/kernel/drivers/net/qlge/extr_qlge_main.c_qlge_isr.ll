; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/qlge/extr_qlge_main.c_qlge_isr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/qlge/extr_qlge_main.c_qlge_isr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rx_ring = type { i32, %struct.ql_adapter* }
%struct.ql_adapter = type { i32, i32, i32, i32, %struct.intr_context* }
%struct.intr_context = type { i32, i32, i32 }

@intr = common dso_local global i32 0, align 4
@KERN_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"Shared Interrupt, Not ours!\0A\00", align 1
@IRQ_NONE = common dso_local global i32 0, align 4
@STS_FE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"Got fatal error, STS = %x.\0A\00", align 1
@ERR_STS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [46 x i8] c"Resetting chip. Error Status Register = 0x%x\0A\00", align 1
@IRQ_HANDLED = common dso_local global i32 0, align 4
@STS_PI = common dso_local global i32 0, align 4
@INTR_MASK = common dso_local global i32 0, align 4
@INTR_MASK_PI = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [30 x i8] c"Got MPI processor interrupt.\0A\00", align 1
@ISR1 = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [32 x i8] c"Waking handler for rx_ring[0].\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @qlge_isr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qlge_isr(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.rx_ring*, align 8
  %7 = alloca %struct.ql_adapter*, align 8
  %8 = alloca %struct.intr_context*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %11 = load i8*, i8** %5, align 8
  %12 = bitcast i8* %11 to %struct.rx_ring*
  store %struct.rx_ring* %12, %struct.rx_ring** %6, align 8
  %13 = load %struct.rx_ring*, %struct.rx_ring** %6, align 8
  %14 = getelementptr inbounds %struct.rx_ring, %struct.rx_ring* %13, i32 0, i32 1
  %15 = load %struct.ql_adapter*, %struct.ql_adapter** %14, align 8
  store %struct.ql_adapter* %15, %struct.ql_adapter** %7, align 8
  %16 = load %struct.ql_adapter*, %struct.ql_adapter** %7, align 8
  %17 = getelementptr inbounds %struct.ql_adapter, %struct.ql_adapter* %16, i32 0, i32 4
  %18 = load %struct.intr_context*, %struct.intr_context** %17, align 8
  %19 = getelementptr inbounds %struct.intr_context, %struct.intr_context* %18, i64 0
  store %struct.intr_context* %19, %struct.intr_context** %8, align 8
  store i32 0, i32* %10, align 4
  %20 = load %struct.ql_adapter*, %struct.ql_adapter** %7, align 8
  %21 = getelementptr inbounds %struct.ql_adapter, %struct.ql_adapter* %20, i32 0, i32 3
  %22 = call i32 @spin_lock(i32* %21)
  %23 = load %struct.ql_adapter*, %struct.ql_adapter** %7, align 8
  %24 = getelementptr inbounds %struct.ql_adapter, %struct.ql_adapter* %23, i32 0, i32 4
  %25 = load %struct.intr_context*, %struct.intr_context** %24, align 8
  %26 = getelementptr inbounds %struct.intr_context, %struct.intr_context* %25, i64 0
  %27 = getelementptr inbounds %struct.intr_context, %struct.intr_context* %26, i32 0, i32 2
  %28 = call i64 @atomic_read(i32* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %42

30:                                               ; preds = %2
  %31 = load %struct.ql_adapter*, %struct.ql_adapter** %7, align 8
  %32 = load i32, i32* @intr, align 4
  %33 = load i32, i32* @KERN_DEBUG, align 4
  %34 = load %struct.ql_adapter*, %struct.ql_adapter** %7, align 8
  %35 = getelementptr inbounds %struct.ql_adapter, %struct.ql_adapter* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = call i32 @netif_printk(%struct.ql_adapter* %31, i32 %32, i32 %33, i32 %36, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %38 = load %struct.ql_adapter*, %struct.ql_adapter** %7, align 8
  %39 = getelementptr inbounds %struct.ql_adapter, %struct.ql_adapter* %38, i32 0, i32 3
  %40 = call i32 @spin_unlock(i32* %39)
  %41 = load i32, i32* @IRQ_NONE, align 4
  store i32 %41, i32* %3, align 4
  br label %151

42:                                               ; preds = %2
  %43 = load %struct.ql_adapter*, %struct.ql_adapter** %7, align 8
  %44 = getelementptr inbounds %struct.ql_adapter, %struct.ql_adapter* %43, i32 0, i32 3
  %45 = call i32 @spin_unlock(i32* %44)
  %46 = load %struct.ql_adapter*, %struct.ql_adapter** %7, align 8
  %47 = load %struct.intr_context*, %struct.intr_context** %8, align 8
  %48 = getelementptr inbounds %struct.intr_context, %struct.intr_context* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @ql_disable_completion_interrupt(%struct.ql_adapter* %46, i32 %49)
  store i32 %50, i32* %9, align 4
  %51 = load i32, i32* %9, align 4
  %52 = load i32, i32* @STS_FE, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %72

55:                                               ; preds = %42
  %56 = load %struct.ql_adapter*, %struct.ql_adapter** %7, align 8
  %57 = call i32 @ql_queue_asic_error(%struct.ql_adapter* %56)
  %58 = load %struct.ql_adapter*, %struct.ql_adapter** %7, align 8
  %59 = getelementptr inbounds %struct.ql_adapter, %struct.ql_adapter* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = load i32, i32* %9, align 4
  %62 = call i32 @netdev_err(i32 %60, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %61)
  %63 = load %struct.ql_adapter*, %struct.ql_adapter** %7, align 8
  %64 = load i32, i32* @ERR_STS, align 4
  %65 = call i32 @ql_read32(%struct.ql_adapter* %63, i32 %64)
  store i32 %65, i32* %9, align 4
  %66 = load %struct.ql_adapter*, %struct.ql_adapter** %7, align 8
  %67 = getelementptr inbounds %struct.ql_adapter, %struct.ql_adapter* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = load i32, i32* %9, align 4
  %70 = call i32 @netdev_err(i32 %68, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.2, i64 0, i64 0), i32 %69)
  %71 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %71, i32* %3, align 4
  br label %151

72:                                               ; preds = %42
  %73 = load i32, i32* %9, align 4
  %74 = load i32, i32* @STS_PI, align 4
  %75 = and i32 %73, %74
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %110

77:                                               ; preds = %72
  %78 = load %struct.ql_adapter*, %struct.ql_adapter** %7, align 8
  %79 = load i32, i32* @INTR_MASK, align 4
  %80 = call i32 @ql_read32(%struct.ql_adapter* %78, i32 %79)
  %81 = load i32, i32* @INTR_MASK_PI, align 4
  %82 = and i32 %80, %81
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %110

84:                                               ; preds = %77
  %85 = load %struct.ql_adapter*, %struct.ql_adapter** %7, align 8
  %86 = load i32, i32* @intr, align 4
  %87 = load %struct.ql_adapter*, %struct.ql_adapter** %7, align 8
  %88 = getelementptr inbounds %struct.ql_adapter, %struct.ql_adapter* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = call i32 @netif_err(%struct.ql_adapter* %85, i32 %86, i32 %89, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0))
  %91 = load %struct.ql_adapter*, %struct.ql_adapter** %7, align 8
  %92 = load %struct.intr_context*, %struct.intr_context** %8, align 8
  %93 = getelementptr inbounds %struct.intr_context, %struct.intr_context* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = call i32 @ql_disable_completion_interrupt(%struct.ql_adapter* %91, i32 %94)
  %96 = load %struct.ql_adapter*, %struct.ql_adapter** %7, align 8
  %97 = load i32, i32* @INTR_MASK, align 4
  %98 = load i32, i32* @INTR_MASK_PI, align 4
  %99 = shl i32 %98, 16
  %100 = call i32 @ql_write32(%struct.ql_adapter* %96, i32 %97, i32 %99)
  %101 = call i32 (...) @smp_processor_id()
  %102 = load %struct.ql_adapter*, %struct.ql_adapter** %7, align 8
  %103 = getelementptr inbounds %struct.ql_adapter, %struct.ql_adapter* %102, i32 0, i32 2
  %104 = load i32, i32* %103, align 8
  %105 = load %struct.ql_adapter*, %struct.ql_adapter** %7, align 8
  %106 = getelementptr inbounds %struct.ql_adapter, %struct.ql_adapter* %105, i32 0, i32 1
  %107 = call i32 @queue_delayed_work_on(i32 %101, i32 %104, i32* %106, i32 0)
  %108 = load i32, i32* %10, align 4
  %109 = add nsw i32 %108, 1
  store i32 %109, i32* %10, align 4
  br label %110

110:                                              ; preds = %84, %77, %72
  %111 = load %struct.ql_adapter*, %struct.ql_adapter** %7, align 8
  %112 = load i32, i32* @ISR1, align 4
  %113 = call i32 @ql_read32(%struct.ql_adapter* %111, i32 %112)
  store i32 %113, i32* %9, align 4
  %114 = load i32, i32* %9, align 4
  %115 = load %struct.intr_context*, %struct.intr_context** %8, align 8
  %116 = getelementptr inbounds %struct.intr_context, %struct.intr_context* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 4
  %118 = and i32 %114, %117
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %137

120:                                              ; preds = %110
  %121 = load %struct.ql_adapter*, %struct.ql_adapter** %7, align 8
  %122 = load i32, i32* @intr, align 4
  %123 = load %struct.ql_adapter*, %struct.ql_adapter** %7, align 8
  %124 = getelementptr inbounds %struct.ql_adapter, %struct.ql_adapter* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 8
  %126 = call i32 @netif_info(%struct.ql_adapter* %121, i32 %122, i32 %125, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i64 0, i64 0))
  %127 = load %struct.ql_adapter*, %struct.ql_adapter** %7, align 8
  %128 = load %struct.intr_context*, %struct.intr_context** %8, align 8
  %129 = getelementptr inbounds %struct.intr_context, %struct.intr_context* %128, i32 0, i32 1
  %130 = load i32, i32* %129, align 4
  %131 = call i32 @ql_disable_completion_interrupt(%struct.ql_adapter* %127, i32 %130)
  %132 = load %struct.rx_ring*, %struct.rx_ring** %6, align 8
  %133 = getelementptr inbounds %struct.rx_ring, %struct.rx_ring* %132, i32 0, i32 0
  %134 = call i32 @napi_schedule(i32* %133)
  %135 = load i32, i32* %10, align 4
  %136 = add nsw i32 %135, 1
  store i32 %136, i32* %10, align 4
  br label %137

137:                                              ; preds = %120, %110
  %138 = load %struct.ql_adapter*, %struct.ql_adapter** %7, align 8
  %139 = load %struct.intr_context*, %struct.intr_context** %8, align 8
  %140 = getelementptr inbounds %struct.intr_context, %struct.intr_context* %139, i32 0, i32 1
  %141 = load i32, i32* %140, align 4
  %142 = call i32 @ql_enable_completion_interrupt(%struct.ql_adapter* %138, i32 %141)
  %143 = load i32, i32* %10, align 4
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %145, label %147

145:                                              ; preds = %137
  %146 = load i32, i32* @IRQ_HANDLED, align 4
  br label %149

147:                                              ; preds = %137
  %148 = load i32, i32* @IRQ_NONE, align 4
  br label %149

149:                                              ; preds = %147, %145
  %150 = phi i32 [ %146, %145 ], [ %148, %147 ]
  store i32 %150, i32* %3, align 4
  br label %151

151:                                              ; preds = %149, %55, %30
  %152 = load i32, i32* %3, align 4
  ret i32 %152
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i32 @netif_printk(%struct.ql_adapter*, i32, i32, i32, i8*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @ql_disable_completion_interrupt(%struct.ql_adapter*, i32) #1

declare dso_local i32 @ql_queue_asic_error(%struct.ql_adapter*) #1

declare dso_local i32 @netdev_err(i32, i8*, i32) #1

declare dso_local i32 @ql_read32(%struct.ql_adapter*, i32) #1

declare dso_local i32 @netif_err(%struct.ql_adapter*, i32, i32, i8*) #1

declare dso_local i32 @ql_write32(%struct.ql_adapter*, i32, i32) #1

declare dso_local i32 @queue_delayed_work_on(i32, i32, i32*, i32) #1

declare dso_local i32 @smp_processor_id(...) #1

declare dso_local i32 @netif_info(%struct.ql_adapter*, i32, i32, i8*) #1

declare dso_local i32 @napi_schedule(i32*) #1

declare dso_local i32 @ql_enable_completion_interrupt(%struct.ql_adapter*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
