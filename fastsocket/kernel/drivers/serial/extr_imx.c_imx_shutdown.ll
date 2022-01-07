; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_imx.c_imx_shutdown.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_imx.c_imx_shutdown.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_port = type { i32 }
%struct.imx_port = type { i64, i64, i64, %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i64, i64, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.imxuart_platform_data* }
%struct.imxuart_platform_data = type { i32 (i32)* }

@UCR2 = common dso_local global i64 0, align 8
@UCR2_TXEN = common dso_local global i64 0, align 8
@UCR1 = common dso_local global i64 0, align 8
@UCR1_TXMPTYEN = common dso_local global i64 0, align 8
@UCR1_RRDYEN = common dso_local global i64 0, align 8
@UCR1_RTSDEN = common dso_local global i64 0, align 8
@UCR1_UARTEN = common dso_local global i64 0, align 8
@UCR1_IREN = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.uart_port*)* @imx_shutdown to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @imx_shutdown(%struct.uart_port* %0) #0 {
  %2 = alloca %struct.uart_port*, align 8
  %3 = alloca %struct.imx_port*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.imxuart_platform_data*, align 8
  store %struct.uart_port* %0, %struct.uart_port** %2, align 8
  %6 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %7 = bitcast %struct.uart_port* %6 to %struct.imx_port*
  store %struct.imx_port* %7, %struct.imx_port** %3, align 8
  %8 = load %struct.imx_port*, %struct.imx_port** %3, align 8
  %9 = getelementptr inbounds %struct.imx_port, %struct.imx_port* %8, i32 0, i32 3
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 1
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @UCR2, align 8
  %13 = add nsw i64 %11, %12
  %14 = call i64 @readl(i64 %13)
  store i64 %14, i64* %4, align 8
  %15 = load i64, i64* @UCR2_TXEN, align 8
  %16 = xor i64 %15, -1
  %17 = load i64, i64* %4, align 8
  %18 = and i64 %17, %16
  store i64 %18, i64* %4, align 8
  %19 = load i64, i64* %4, align 8
  %20 = load %struct.imx_port*, %struct.imx_port** %3, align 8
  %21 = getelementptr inbounds %struct.imx_port, %struct.imx_port* %20, i32 0, i32 3
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @UCR2, align 8
  %25 = add nsw i64 %23, %24
  %26 = call i32 @writel(i64 %19, i64 %25)
  %27 = load %struct.imx_port*, %struct.imx_port** %3, align 8
  %28 = call i64 @USE_IRDA(%struct.imx_port* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %47

30:                                               ; preds = %1
  %31 = load %struct.imx_port*, %struct.imx_port** %3, align 8
  %32 = getelementptr inbounds %struct.imx_port, %struct.imx_port* %31, i32 0, i32 3
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 2
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 0
  %36 = load %struct.imxuart_platform_data*, %struct.imxuart_platform_data** %35, align 8
  store %struct.imxuart_platform_data* %36, %struct.imxuart_platform_data** %5, align 8
  %37 = load %struct.imxuart_platform_data*, %struct.imxuart_platform_data** %5, align 8
  %38 = getelementptr inbounds %struct.imxuart_platform_data, %struct.imxuart_platform_data* %37, i32 0, i32 0
  %39 = load i32 (i32)*, i32 (i32)** %38, align 8
  %40 = icmp ne i32 (i32)* %39, null
  br i1 %40, label %41, label %46

41:                                               ; preds = %30
  %42 = load %struct.imxuart_platform_data*, %struct.imxuart_platform_data** %5, align 8
  %43 = getelementptr inbounds %struct.imxuart_platform_data, %struct.imxuart_platform_data* %42, i32 0, i32 0
  %44 = load i32 (i32)*, i32 (i32)** %43, align 8
  %45 = call i32 %44(i32 0)
  br label %46

46:                                               ; preds = %41, %30
  br label %47

47:                                               ; preds = %46, %1
  %48 = load %struct.imx_port*, %struct.imx_port** %3, align 8
  %49 = getelementptr inbounds %struct.imx_port, %struct.imx_port* %48, i32 0, i32 4
  %50 = call i32 @del_timer_sync(i32* %49)
  %51 = load %struct.imx_port*, %struct.imx_port** %3, align 8
  %52 = getelementptr inbounds %struct.imx_port, %struct.imx_port* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = icmp sgt i64 %53, 0
  br i1 %54, label %55, label %76

55:                                               ; preds = %47
  %56 = load %struct.imx_port*, %struct.imx_port** %3, align 8
  %57 = call i64 @USE_IRDA(%struct.imx_port* %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %65, label %59

59:                                               ; preds = %55
  %60 = load %struct.imx_port*, %struct.imx_port** %3, align 8
  %61 = getelementptr inbounds %struct.imx_port, %struct.imx_port* %60, i32 0, i32 1
  %62 = load i64, i64* %61, align 8
  %63 = load %struct.imx_port*, %struct.imx_port** %3, align 8
  %64 = call i32 @free_irq(i64 %62, %struct.imx_port* %63)
  br label %65

65:                                               ; preds = %59, %55
  %66 = load %struct.imx_port*, %struct.imx_port** %3, align 8
  %67 = getelementptr inbounds %struct.imx_port, %struct.imx_port* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = load %struct.imx_port*, %struct.imx_port** %3, align 8
  %70 = call i32 @free_irq(i64 %68, %struct.imx_port* %69)
  %71 = load %struct.imx_port*, %struct.imx_port** %3, align 8
  %72 = getelementptr inbounds %struct.imx_port, %struct.imx_port* %71, i32 0, i32 2
  %73 = load i64, i64* %72, align 8
  %74 = load %struct.imx_port*, %struct.imx_port** %3, align 8
  %75 = call i32 @free_irq(i64 %73, %struct.imx_port* %74)
  br label %83

76:                                               ; preds = %47
  %77 = load %struct.imx_port*, %struct.imx_port** %3, align 8
  %78 = getelementptr inbounds %struct.imx_port, %struct.imx_port* %77, i32 0, i32 3
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = load %struct.imx_port*, %struct.imx_port** %3, align 8
  %82 = call i32 @free_irq(i64 %80, %struct.imx_port* %81)
  br label %83

83:                                               ; preds = %76, %65
  %84 = load %struct.imx_port*, %struct.imx_port** %3, align 8
  %85 = getelementptr inbounds %struct.imx_port, %struct.imx_port* %84, i32 0, i32 3
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i32 0, i32 1
  %87 = load i64, i64* %86, align 8
  %88 = load i64, i64* @UCR1, align 8
  %89 = add nsw i64 %87, %88
  %90 = call i64 @readl(i64 %89)
  store i64 %90, i64* %4, align 8
  %91 = load i64, i64* @UCR1_TXMPTYEN, align 8
  %92 = load i64, i64* @UCR1_RRDYEN, align 8
  %93 = or i64 %91, %92
  %94 = load i64, i64* @UCR1_RTSDEN, align 8
  %95 = or i64 %93, %94
  %96 = load i64, i64* @UCR1_UARTEN, align 8
  %97 = or i64 %95, %96
  %98 = xor i64 %97, -1
  %99 = load i64, i64* %4, align 8
  %100 = and i64 %99, %98
  store i64 %100, i64* %4, align 8
  %101 = load %struct.imx_port*, %struct.imx_port** %3, align 8
  %102 = call i64 @USE_IRDA(%struct.imx_port* %101)
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %109

104:                                              ; preds = %83
  %105 = load i64, i64* @UCR1_IREN, align 8
  %106 = xor i64 %105, -1
  %107 = load i64, i64* %4, align 8
  %108 = and i64 %107, %106
  store i64 %108, i64* %4, align 8
  br label %109

109:                                              ; preds = %104, %83
  %110 = load i64, i64* %4, align 8
  %111 = load %struct.imx_port*, %struct.imx_port** %3, align 8
  %112 = getelementptr inbounds %struct.imx_port, %struct.imx_port* %111, i32 0, i32 3
  %113 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %112, i32 0, i32 1
  %114 = load i64, i64* %113, align 8
  %115 = load i64, i64* @UCR1, align 8
  %116 = add nsw i64 %114, %115
  %117 = call i32 @writel(i64 %110, i64 %116)
  ret void
}

declare dso_local i64 @readl(i64) #1

declare dso_local i32 @writel(i64, i64) #1

declare dso_local i64 @USE_IRDA(%struct.imx_port*) #1

declare dso_local i32 @del_timer_sync(i32*) #1

declare dso_local i32 @free_irq(i64, %struct.imx_port*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
