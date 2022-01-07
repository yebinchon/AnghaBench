; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_imx.c_imx_start_tx.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_imx.c_imx_start_tx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_port = type { i32 }
%struct.imx_port = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@UCR4 = common dso_local global i64 0, align 8
@UCR4_DREN = common dso_local global i64 0, align 8
@UCR1 = common dso_local global i64 0, align 8
@UCR1_RRDYEN = common dso_local global i64 0, align 8
@UCR1_TXMPTYEN = common dso_local global i64 0, align 8
@UCR1_TRDYEN = common dso_local global i64 0, align 8
@UCR4_TCEN = common dso_local global i64 0, align 8
@UTS = common dso_local global i64 0, align 8
@UTS_TXEMPTY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.uart_port*)* @imx_start_tx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @imx_start_tx(%struct.uart_port* %0) #0 {
  %2 = alloca %struct.uart_port*, align 8
  %3 = alloca %struct.imx_port*, align 8
  %4 = alloca i64, align 8
  store %struct.uart_port* %0, %struct.uart_port** %2, align 8
  %5 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %6 = bitcast %struct.uart_port* %5 to %struct.imx_port*
  store %struct.imx_port* %6, %struct.imx_port** %3, align 8
  %7 = load %struct.imx_port*, %struct.imx_port** %3, align 8
  %8 = call i64 @USE_IRDA(%struct.imx_port* %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %51

10:                                               ; preds = %1
  %11 = load %struct.imx_port*, %struct.imx_port** %3, align 8
  %12 = getelementptr inbounds %struct.imx_port, %struct.imx_port* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @UCR4, align 8
  %16 = add nsw i64 %14, %15
  %17 = call i32 @readl(i64 %16)
  %18 = sext i32 %17 to i64
  store i64 %18, i64* %4, align 8
  %19 = load i64, i64* @UCR4_DREN, align 8
  %20 = xor i64 %19, -1
  %21 = load i64, i64* %4, align 8
  %22 = and i64 %21, %20
  store i64 %22, i64* %4, align 8
  %23 = load i64, i64* %4, align 8
  %24 = load %struct.imx_port*, %struct.imx_port** %3, align 8
  %25 = getelementptr inbounds %struct.imx_port, %struct.imx_port* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @UCR4, align 8
  %29 = add nsw i64 %27, %28
  %30 = call i32 @writel(i64 %23, i64 %29)
  %31 = load %struct.imx_port*, %struct.imx_port** %3, align 8
  %32 = getelementptr inbounds %struct.imx_port, %struct.imx_port* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @UCR1, align 8
  %36 = add nsw i64 %34, %35
  %37 = call i32 @readl(i64 %36)
  %38 = sext i32 %37 to i64
  store i64 %38, i64* %4, align 8
  %39 = load i64, i64* @UCR1_RRDYEN, align 8
  %40 = xor i64 %39, -1
  %41 = load i64, i64* %4, align 8
  %42 = and i64 %41, %40
  store i64 %42, i64* %4, align 8
  %43 = load i64, i64* %4, align 8
  %44 = load %struct.imx_port*, %struct.imx_port** %3, align 8
  %45 = getelementptr inbounds %struct.imx_port, %struct.imx_port* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @UCR1, align 8
  %49 = add nsw i64 %47, %48
  %50 = call i32 @writel(i64 %43, i64 %49)
  br label %51

51:                                               ; preds = %10, %1
  %52 = load %struct.imx_port*, %struct.imx_port** %3, align 8
  %53 = getelementptr inbounds %struct.imx_port, %struct.imx_port* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* @UCR1, align 8
  %57 = add nsw i64 %55, %56
  %58 = call i32 @readl(i64 %57)
  %59 = sext i32 %58 to i64
  store i64 %59, i64* %4, align 8
  %60 = load i64, i64* %4, align 8
  %61 = load i64, i64* @UCR1_TXMPTYEN, align 8
  %62 = or i64 %60, %61
  %63 = load %struct.imx_port*, %struct.imx_port** %3, align 8
  %64 = getelementptr inbounds %struct.imx_port, %struct.imx_port* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = load i64, i64* @UCR1, align 8
  %68 = add nsw i64 %66, %67
  %69 = call i32 @writel(i64 %62, i64 %68)
  %70 = load %struct.imx_port*, %struct.imx_port** %3, align 8
  %71 = call i64 @USE_IRDA(%struct.imx_port* %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %112

73:                                               ; preds = %51
  %74 = load %struct.imx_port*, %struct.imx_port** %3, align 8
  %75 = getelementptr inbounds %struct.imx_port, %struct.imx_port* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = load i64, i64* @UCR1, align 8
  %79 = add nsw i64 %77, %78
  %80 = call i32 @readl(i64 %79)
  %81 = sext i32 %80 to i64
  store i64 %81, i64* %4, align 8
  %82 = load i64, i64* @UCR1_TRDYEN, align 8
  %83 = load i64, i64* %4, align 8
  %84 = or i64 %83, %82
  store i64 %84, i64* %4, align 8
  %85 = load i64, i64* %4, align 8
  %86 = load %struct.imx_port*, %struct.imx_port** %3, align 8
  %87 = getelementptr inbounds %struct.imx_port, %struct.imx_port* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = load i64, i64* @UCR1, align 8
  %91 = add nsw i64 %89, %90
  %92 = call i32 @writel(i64 %85, i64 %91)
  %93 = load %struct.imx_port*, %struct.imx_port** %3, align 8
  %94 = getelementptr inbounds %struct.imx_port, %struct.imx_port* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = load i64, i64* @UCR4, align 8
  %98 = add nsw i64 %96, %97
  %99 = call i32 @readl(i64 %98)
  %100 = sext i32 %99 to i64
  store i64 %100, i64* %4, align 8
  %101 = load i64, i64* @UCR4_TCEN, align 8
  %102 = load i64, i64* %4, align 8
  %103 = or i64 %102, %101
  store i64 %103, i64* %4, align 8
  %104 = load i64, i64* %4, align 8
  %105 = load %struct.imx_port*, %struct.imx_port** %3, align 8
  %106 = getelementptr inbounds %struct.imx_port, %struct.imx_port* %105, i32 0, i32 0
  %107 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %106, i32 0, i32 0
  %108 = load i64, i64* %107, align 8
  %109 = load i64, i64* @UCR4, align 8
  %110 = add nsw i64 %108, %109
  %111 = call i32 @writel(i64 %104, i64 %110)
  br label %112

112:                                              ; preds = %73, %51
  %113 = load %struct.imx_port*, %struct.imx_port** %3, align 8
  %114 = getelementptr inbounds %struct.imx_port, %struct.imx_port* %113, i32 0, i32 0
  %115 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %114, i32 0, i32 0
  %116 = load i64, i64* %115, align 8
  %117 = load i64, i64* @UTS, align 8
  %118 = add nsw i64 %116, %117
  %119 = call i32 @readl(i64 %118)
  %120 = load i32, i32* @UTS_TXEMPTY, align 4
  %121 = and i32 %119, %120
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %126

123:                                              ; preds = %112
  %124 = load %struct.imx_port*, %struct.imx_port** %3, align 8
  %125 = call i32 @imx_transmit_buffer(%struct.imx_port* %124)
  br label %126

126:                                              ; preds = %123, %112
  ret void
}

declare dso_local i64 @USE_IRDA(%struct.imx_port*) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @writel(i64, i64) #1

declare dso_local i32 @imx_transmit_buffer(%struct.imx_port*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
