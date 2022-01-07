; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/block/mtip32xx/extr_mtip32xx.c_mtip_hw_exit.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/block/mtip32xx/extr_mtip32xx.c_mtip_hw_exit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.driver_data = type { %struct.TYPE_6__*, %struct.TYPE_5__*, i32, i64, i32 }
%struct.TYPE_6__ = type { i32, i32, i32, i32 }
%struct.TYPE_5__ = type { i32, i32 }

@MTIP_DDF_CLEANUP_BIT = common dso_local global i32 0, align 4
@MTIP_PF_REBUILD_BIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"STANDBY IMMEDIATE failed\0A\00", align 1
@HOST_CTL = common dso_local global i64 0, align 8
@HOST_IRQ_EN = common dso_local global i32 0, align 4
@HW_PORT_PRIV_DMA_SZ = common dso_local global i64 0, align 8
@ATA_SECT_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.driver_data*)* @mtip_hw_exit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mtip_hw_exit(%struct.driver_data* %0) #0 {
  %2 = alloca %struct.driver_data*, align 8
  store %struct.driver_data* %0, %struct.driver_data** %2, align 8
  %3 = load i32, i32* @MTIP_DDF_CLEANUP_BIT, align 4
  %4 = load %struct.driver_data*, %struct.driver_data** %2, align 8
  %5 = getelementptr inbounds %struct.driver_data, %struct.driver_data* %4, i32 0, i32 4
  %6 = call i32 @test_bit(i32 %3, i32* %5)
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %49, label %8

8:                                                ; preds = %1
  %9 = load i32, i32* @MTIP_PF_REBUILD_BIT, align 4
  %10 = load %struct.driver_data*, %struct.driver_data** %2, align 8
  %11 = getelementptr inbounds %struct.driver_data, %struct.driver_data* %10, i32 0, i32 0
  %12 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 3
  %14 = call i32 @test_bit(i32 %9, i32* %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %29, label %16

16:                                               ; preds = %8
  %17 = load %struct.driver_data*, %struct.driver_data** %2, align 8
  %18 = getelementptr inbounds %struct.driver_data, %struct.driver_data* %17, i32 0, i32 0
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %18, align 8
  %20 = call i64 @mtip_standby_immediate(%struct.TYPE_6__* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %28

22:                                               ; preds = %16
  %23 = load %struct.driver_data*, %struct.driver_data** %2, align 8
  %24 = getelementptr inbounds %struct.driver_data, %struct.driver_data* %23, i32 0, i32 1
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 0
  %27 = call i32 @dev_warn(i32* %26, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  br label %28

28:                                               ; preds = %22, %16
  br label %29

29:                                               ; preds = %28, %8
  %30 = load %struct.driver_data*, %struct.driver_data** %2, align 8
  %31 = getelementptr inbounds %struct.driver_data, %struct.driver_data* %30, i32 0, i32 0
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** %31, align 8
  %33 = call i32 @mtip_deinit_port(%struct.TYPE_6__* %32)
  %34 = load %struct.driver_data*, %struct.driver_data** %2, align 8
  %35 = getelementptr inbounds %struct.driver_data, %struct.driver_data* %34, i32 0, i32 3
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @HOST_CTL, align 8
  %38 = add nsw i64 %36, %37
  %39 = call i32 @readl(i64 %38)
  %40 = load i32, i32* @HOST_IRQ_EN, align 4
  %41 = xor i32 %40, -1
  %42 = and i32 %39, %41
  %43 = load %struct.driver_data*, %struct.driver_data** %2, align 8
  %44 = getelementptr inbounds %struct.driver_data, %struct.driver_data* %43, i32 0, i32 3
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @HOST_CTL, align 8
  %47 = add nsw i64 %45, %46
  %48 = call i32 @writel(i32 %42, i64 %47)
  br label %49

49:                                               ; preds = %29, %1
  %50 = load %struct.driver_data*, %struct.driver_data** %2, align 8
  %51 = getelementptr inbounds %struct.driver_data, %struct.driver_data* %50, i32 0, i32 0
  %52 = load %struct.TYPE_6__*, %struct.TYPE_6__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 2
  %54 = call i32 @del_timer_sync(i32* %53)
  %55 = load %struct.driver_data*, %struct.driver_data** %2, align 8
  %56 = getelementptr inbounds %struct.driver_data, %struct.driver_data* %55, i32 0, i32 1
  %57 = load %struct.TYPE_5__*, %struct.TYPE_5__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i32 0, i32 0
  %59 = load %struct.driver_data*, %struct.driver_data** %2, align 8
  %60 = getelementptr inbounds %struct.driver_data, %struct.driver_data* %59, i32 0, i32 1
  %61 = load %struct.TYPE_5__*, %struct.TYPE_5__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.driver_data*, %struct.driver_data** %2, align 8
  %65 = call i32 @devm_free_irq(i32* %58, i32 %63, %struct.driver_data* %64)
  %66 = load %struct.driver_data*, %struct.driver_data** %2, align 8
  %67 = getelementptr inbounds %struct.driver_data, %struct.driver_data* %66, i32 0, i32 2
  %68 = call i32 @tasklet_kill(i32* %67)
  %69 = load %struct.driver_data*, %struct.driver_data** %2, align 8
  %70 = getelementptr inbounds %struct.driver_data, %struct.driver_data* %69, i32 0, i32 1
  %71 = load %struct.TYPE_5__*, %struct.TYPE_5__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %71, i32 0, i32 0
  %73 = load i64, i64* @HW_PORT_PRIV_DMA_SZ, align 8
  %74 = load i32, i32* @ATA_SECT_SIZE, align 4
  %75 = mul nsw i32 %74, 4
  %76 = sext i32 %75 to i64
  %77 = add nsw i64 %73, %76
  %78 = load %struct.driver_data*, %struct.driver_data** %2, align 8
  %79 = getelementptr inbounds %struct.driver_data, %struct.driver_data* %78, i32 0, i32 0
  %80 = load %struct.TYPE_6__*, %struct.TYPE_6__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = load %struct.driver_data*, %struct.driver_data** %2, align 8
  %84 = getelementptr inbounds %struct.driver_data, %struct.driver_data* %83, i32 0, i32 0
  %85 = load %struct.TYPE_6__*, %struct.TYPE_6__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = call i32 @dmam_free_coherent(i32* %72, i64 %77, i32 %82, i32 %87)
  %89 = load %struct.driver_data*, %struct.driver_data** %2, align 8
  %90 = getelementptr inbounds %struct.driver_data, %struct.driver_data* %89, i32 0, i32 0
  %91 = load %struct.TYPE_6__*, %struct.TYPE_6__** %90, align 8
  %92 = call i32 @kfree(%struct.TYPE_6__* %91)
  ret i32 0
}

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i64 @mtip_standby_immediate(%struct.TYPE_6__*) #1

declare dso_local i32 @dev_warn(i32*, i8*) #1

declare dso_local i32 @mtip_deinit_port(%struct.TYPE_6__*) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @del_timer_sync(i32*) #1

declare dso_local i32 @devm_free_irq(i32*, i32, %struct.driver_data*) #1

declare dso_local i32 @tasklet_kill(i32*) #1

declare dso_local i32 @dmam_free_coherent(i32*, i64, i32, i32) #1

declare dso_local i32 @kfree(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
