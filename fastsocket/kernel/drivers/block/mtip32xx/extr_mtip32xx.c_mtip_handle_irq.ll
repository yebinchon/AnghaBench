; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/block/mtip32xx/extr_mtip32xx.c_mtip_handle_irq.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/block/mtip32xx/extr_mtip32xx.c_mtip_handle_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.driver_data = type { i64, i32, i32, %struct.mtip_port* }
%struct.mtip_port = type { i64 }

@IRQ_NONE = common dso_local global i32 0, align 4
@HOST_IRQ_STAT = common dso_local global i64 0, align 8
@IRQ_HANDLED = common dso_local global i32 0, align 4
@PORT_IRQ_STAT = common dso_local global i64 0, align 8
@PORT_IRQ_SDB_FIS = common dso_local global i32 0, align 4
@PORT_IRQ_ERR = common dso_local global i32 0, align 4
@MTIP_DDF_REMOVE_PENDING_BIT = common dso_local global i32 0, align 4
@PORT_IRQ_LEGACY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.driver_data*)* @mtip_handle_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mtip_handle_irq(%struct.driver_data* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.driver_data*, align 8
  %4 = alloca %struct.driver_data*, align 8
  %5 = alloca %struct.mtip_port*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.driver_data* %0, %struct.driver_data** %3, align 8
  %9 = load %struct.driver_data*, %struct.driver_data** %3, align 8
  store %struct.driver_data* %9, %struct.driver_data** %4, align 8
  %10 = load %struct.driver_data*, %struct.driver_data** %4, align 8
  %11 = getelementptr inbounds %struct.driver_data, %struct.driver_data* %10, i32 0, i32 3
  %12 = load %struct.mtip_port*, %struct.mtip_port** %11, align 8
  store %struct.mtip_port* %12, %struct.mtip_port** %5, align 8
  %13 = load i32, i32* @IRQ_NONE, align 4
  store i32 %13, i32* %8, align 4
  %14 = load %struct.driver_data*, %struct.driver_data** %4, align 8
  %15 = getelementptr inbounds %struct.driver_data, %struct.driver_data* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @HOST_IRQ_STAT, align 8
  %18 = add nsw i64 %16, %17
  %19 = call i32 @readl(i64 %18)
  store i32 %19, i32* %6, align 4
  %20 = load i32, i32* %6, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %89

22:                                               ; preds = %1
  %23 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %23, i32* %8, align 4
  %24 = load %struct.mtip_port*, %struct.mtip_port** %5, align 8
  %25 = getelementptr inbounds %struct.mtip_port, %struct.mtip_port* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @PORT_IRQ_STAT, align 8
  %28 = add nsw i64 %26, %27
  %29 = call i32 @readl(i64 %28)
  store i32 %29, i32* %7, align 4
  %30 = load i32, i32* %7, align 4
  %31 = load %struct.mtip_port*, %struct.mtip_port** %5, align 8
  %32 = getelementptr inbounds %struct.mtip_port, %struct.mtip_port* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @PORT_IRQ_STAT, align 8
  %35 = add nsw i64 %33, %34
  %36 = call i32 @writel(i32 %30, i64 %35)
  %37 = load i32, i32* %7, align 4
  %38 = load i32, i32* @PORT_IRQ_SDB_FIS, align 4
  %39 = and i32 %37, %38
  %40 = call i64 @likely(i32 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %22
  %43 = load %struct.driver_data*, %struct.driver_data** %4, align 8
  %44 = call i32 @mtip_process_sdbf(%struct.driver_data* %43)
  br label %45

45:                                               ; preds = %42, %22
  %46 = load i32, i32* %7, align 4
  %47 = load i32, i32* @PORT_IRQ_ERR, align 4
  %48 = and i32 %46, %47
  %49 = call i64 @unlikely(i32 %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %76

51:                                               ; preds = %45
  %52 = load %struct.driver_data*, %struct.driver_data** %4, align 8
  %53 = getelementptr inbounds %struct.driver_data, %struct.driver_data* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @mtip_check_surprise_removal(i32 %54)
  %56 = call i64 @unlikely(i32 %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %62

58:                                               ; preds = %51
  %59 = load %struct.driver_data*, %struct.driver_data** %4, align 8
  %60 = call i32 @mtip_command_cleanup(%struct.driver_data* %59)
  %61 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %61, i32* %2, align 4
  br label %98

62:                                               ; preds = %51
  %63 = load i32, i32* @MTIP_DDF_REMOVE_PENDING_BIT, align 4
  %64 = load %struct.driver_data*, %struct.driver_data** %4, align 8
  %65 = getelementptr inbounds %struct.driver_data, %struct.driver_data* %64, i32 0, i32 1
  %66 = call i64 @test_bit(i32 %63, i32* %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %70

68:                                               ; preds = %62
  %69 = load i32, i32* %8, align 4
  store i32 %69, i32* %2, align 4
  br label %98

70:                                               ; preds = %62
  %71 = load %struct.driver_data*, %struct.driver_data** %4, align 8
  %72 = load i32, i32* %7, align 4
  %73 = load i32, i32* @PORT_IRQ_ERR, align 4
  %74 = and i32 %72, %73
  %75 = call i32 @mtip_process_errors(%struct.driver_data* %71, i32 %74)
  br label %76

76:                                               ; preds = %70, %45
  %77 = load i32, i32* %7, align 4
  %78 = load i32, i32* @PORT_IRQ_LEGACY, align 4
  %79 = and i32 %77, %78
  %80 = call i64 @unlikely(i32 %79)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %88

82:                                               ; preds = %76
  %83 = load %struct.driver_data*, %struct.driver_data** %4, align 8
  %84 = load i32, i32* %7, align 4
  %85 = load i32, i32* @PORT_IRQ_LEGACY, align 4
  %86 = and i32 %84, %85
  %87 = call i32 @mtip_process_legacy(%struct.driver_data* %83, i32 %86)
  br label %88

88:                                               ; preds = %82, %76
  br label %89

89:                                               ; preds = %88, %1
  %90 = load i32, i32* %6, align 4
  %91 = load %struct.driver_data*, %struct.driver_data** %4, align 8
  %92 = getelementptr inbounds %struct.driver_data, %struct.driver_data* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = load i64, i64* @HOST_IRQ_STAT, align 8
  %95 = add nsw i64 %93, %94
  %96 = call i32 @writel(i32 %90, i64 %95)
  %97 = load i32, i32* %8, align 4
  store i32 %97, i32* %2, align 4
  br label %98

98:                                               ; preds = %89, %68, %58
  %99 = load i32, i32* %2, align 4
  ret i32 %99
}

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @mtip_process_sdbf(%struct.driver_data*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @mtip_check_surprise_removal(i32) #1

declare dso_local i32 @mtip_command_cleanup(%struct.driver_data*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @mtip_process_errors(%struct.driver_data*, i32) #1

declare dso_local i32 @mtip_process_legacy(%struct.driver_data*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
