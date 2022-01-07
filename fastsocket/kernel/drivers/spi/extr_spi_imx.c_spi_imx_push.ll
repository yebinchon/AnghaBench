; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/spi/extr_spi_imx.c_spi_imx_push.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/spi/extr_spi_imx.c_spi_imx_push.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_imx_data = type { i32, i32 (%struct.spi_imx_data*)*, i32 (%struct.spi_imx_data*)*, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.spi_imx_data*)* @spi_imx_push to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @spi_imx_push(%struct.spi_imx_data* %0) #0 {
  %2 = alloca %struct.spi_imx_data*, align 8
  store %struct.spi_imx_data* %0, %struct.spi_imx_data** %2, align 8
  br label %3

3:                                                ; preds = %14, %1
  %4 = load %struct.spi_imx_data*, %struct.spi_imx_data** %2, align 8
  %5 = getelementptr inbounds %struct.spi_imx_data, %struct.spi_imx_data* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 8
  %7 = icmp slt i32 %6, 8
  br i1 %7, label %8, label %24

8:                                                ; preds = %3
  %9 = load %struct.spi_imx_data*, %struct.spi_imx_data** %2, align 8
  %10 = getelementptr inbounds %struct.spi_imx_data, %struct.spi_imx_data* %9, i32 0, i32 3
  %11 = load i32, i32* %10, align 8
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %8
  br label %24

14:                                               ; preds = %8
  %15 = load %struct.spi_imx_data*, %struct.spi_imx_data** %2, align 8
  %16 = getelementptr inbounds %struct.spi_imx_data, %struct.spi_imx_data* %15, i32 0, i32 2
  %17 = load i32 (%struct.spi_imx_data*)*, i32 (%struct.spi_imx_data*)** %16, align 8
  %18 = load %struct.spi_imx_data*, %struct.spi_imx_data** %2, align 8
  %19 = call i32 %17(%struct.spi_imx_data* %18)
  %20 = load %struct.spi_imx_data*, %struct.spi_imx_data** %2, align 8
  %21 = getelementptr inbounds %struct.spi_imx_data, %struct.spi_imx_data* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = add nsw i32 %22, 1
  store i32 %23, i32* %21, align 8
  br label %3

24:                                               ; preds = %13, %3
  %25 = load %struct.spi_imx_data*, %struct.spi_imx_data** %2, align 8
  %26 = getelementptr inbounds %struct.spi_imx_data, %struct.spi_imx_data* %25, i32 0, i32 1
  %27 = load i32 (%struct.spi_imx_data*)*, i32 (%struct.spi_imx_data*)** %26, align 8
  %28 = load %struct.spi_imx_data*, %struct.spi_imx_data** %2, align 8
  %29 = call i32 %27(%struct.spi_imx_data* %28)
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
