; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/spi/extr_spi_imx.c_mx27_intctrl.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/spi/extr_spi_imx.c_mx27_intctrl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_imx_data = type { i64 }

@MXC_INT_TE = common dso_local global i32 0, align 4
@MX27_INTREG_TEEN = common dso_local global i32 0, align 4
@MXC_INT_RR = common dso_local global i32 0, align 4
@MX27_INTREG_RREN = common dso_local global i32 0, align 4
@MXC_CSPIINT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.spi_imx_data*, i32)* @mx27_intctrl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mx27_intctrl(%struct.spi_imx_data* %0, i32 %1) #0 {
  %3 = alloca %struct.spi_imx_data*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.spi_imx_data* %0, %struct.spi_imx_data** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %6 = load i32, i32* %4, align 4
  %7 = load i32, i32* @MXC_INT_TE, align 4
  %8 = and i32 %6, %7
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %14

10:                                               ; preds = %2
  %11 = load i32, i32* @MX27_INTREG_TEEN, align 4
  %12 = load i32, i32* %5, align 4
  %13 = or i32 %12, %11
  store i32 %13, i32* %5, align 4
  br label %14

14:                                               ; preds = %10, %2
  %15 = load i32, i32* %4, align 4
  %16 = load i32, i32* @MXC_INT_RR, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %14
  %20 = load i32, i32* @MX27_INTREG_RREN, align 4
  %21 = load i32, i32* %5, align 4
  %22 = or i32 %21, %20
  store i32 %22, i32* %5, align 4
  br label %23

23:                                               ; preds = %19, %14
  %24 = load i32, i32* %5, align 4
  %25 = load %struct.spi_imx_data*, %struct.spi_imx_data** %3, align 8
  %26 = getelementptr inbounds %struct.spi_imx_data, %struct.spi_imx_data* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @MXC_CSPIINT, align 8
  %29 = add nsw i64 %27, %28
  %30 = call i32 @writel(i32 %24, i64 %29)
  ret void
}

declare dso_local i32 @writel(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
