; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/spi/extr_spi_imx.c_spi_imx_isr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/spi/extr_spi_imx.c_spi_imx_isr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_imx_data = type { i32, i32 (%struct.spi_imx_data*, i32)*, i64, i64, i32 (%struct.spi_imx_data*)*, i64 (%struct.spi_imx_data*)* }

@IRQ_HANDLED = common dso_local global i32 0, align 4
@MXC_INT_RR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @spi_imx_isr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @spi_imx_isr(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.spi_imx_data*, align 8
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %7 = load i8*, i8** %5, align 8
  %8 = bitcast i8* %7 to %struct.spi_imx_data*
  store %struct.spi_imx_data* %8, %struct.spi_imx_data** %6, align 8
  br label %9

9:                                                ; preds = %16, %2
  %10 = load %struct.spi_imx_data*, %struct.spi_imx_data** %6, align 8
  %11 = getelementptr inbounds %struct.spi_imx_data, %struct.spi_imx_data* %10, i32 0, i32 5
  %12 = load i64 (%struct.spi_imx_data*)*, i64 (%struct.spi_imx_data*)** %11, align 8
  %13 = load %struct.spi_imx_data*, %struct.spi_imx_data** %6, align 8
  %14 = call i64 %12(%struct.spi_imx_data* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %26

16:                                               ; preds = %9
  %17 = load %struct.spi_imx_data*, %struct.spi_imx_data** %6, align 8
  %18 = getelementptr inbounds %struct.spi_imx_data, %struct.spi_imx_data* %17, i32 0, i32 4
  %19 = load i32 (%struct.spi_imx_data*)*, i32 (%struct.spi_imx_data*)** %18, align 8
  %20 = load %struct.spi_imx_data*, %struct.spi_imx_data** %6, align 8
  %21 = call i32 %19(%struct.spi_imx_data* %20)
  %22 = load %struct.spi_imx_data*, %struct.spi_imx_data** %6, align 8
  %23 = getelementptr inbounds %struct.spi_imx_data, %struct.spi_imx_data* %22, i32 0, i32 2
  %24 = load i64, i64* %23, align 8
  %25 = add nsw i64 %24, -1
  store i64 %25, i64* %23, align 8
  br label %9

26:                                               ; preds = %9
  %27 = load %struct.spi_imx_data*, %struct.spi_imx_data** %6, align 8
  %28 = getelementptr inbounds %struct.spi_imx_data, %struct.spi_imx_data* %27, i32 0, i32 3
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %26
  %32 = load %struct.spi_imx_data*, %struct.spi_imx_data** %6, align 8
  %33 = call i32 @spi_imx_push(%struct.spi_imx_data* %32)
  %34 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %34, i32* %3, align 4
  br label %58

35:                                               ; preds = %26
  %36 = load %struct.spi_imx_data*, %struct.spi_imx_data** %6, align 8
  %37 = getelementptr inbounds %struct.spi_imx_data, %struct.spi_imx_data* %36, i32 0, i32 2
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %48

40:                                               ; preds = %35
  %41 = load %struct.spi_imx_data*, %struct.spi_imx_data** %6, align 8
  %42 = getelementptr inbounds %struct.spi_imx_data, %struct.spi_imx_data* %41, i32 0, i32 1
  %43 = load i32 (%struct.spi_imx_data*, i32)*, i32 (%struct.spi_imx_data*, i32)** %42, align 8
  %44 = load %struct.spi_imx_data*, %struct.spi_imx_data** %6, align 8
  %45 = load i32, i32* @MXC_INT_RR, align 4
  %46 = call i32 %43(%struct.spi_imx_data* %44, i32 %45)
  %47 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %47, i32* %3, align 4
  br label %58

48:                                               ; preds = %35
  %49 = load %struct.spi_imx_data*, %struct.spi_imx_data** %6, align 8
  %50 = getelementptr inbounds %struct.spi_imx_data, %struct.spi_imx_data* %49, i32 0, i32 1
  %51 = load i32 (%struct.spi_imx_data*, i32)*, i32 (%struct.spi_imx_data*, i32)** %50, align 8
  %52 = load %struct.spi_imx_data*, %struct.spi_imx_data** %6, align 8
  %53 = call i32 %51(%struct.spi_imx_data* %52, i32 0)
  %54 = load %struct.spi_imx_data*, %struct.spi_imx_data** %6, align 8
  %55 = getelementptr inbounds %struct.spi_imx_data, %struct.spi_imx_data* %54, i32 0, i32 0
  %56 = call i32 @complete(i32* %55)
  %57 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %57, i32* %3, align 4
  br label %58

58:                                               ; preds = %48, %40, %31
  %59 = load i32, i32* %3, align 4
  ret i32 %59
}

declare dso_local i32 @spi_imx_push(%struct.spi_imx_data*) #1

declare dso_local i32 @complete(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
