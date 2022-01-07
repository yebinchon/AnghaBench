; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_imx.c_imx_setup_ufcr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_imx.c_imx_setup_ufcr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.imx_port = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i64 }

@TXTL = common dso_local global i32 0, align 4
@RXTL = common dso_local global i32 0, align 4
@UFCR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.imx_port*, i32)* @imx_setup_ufcr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @imx_setup_ufcr(%struct.imx_port* %0, i32 %1) #0 {
  %3 = alloca %struct.imx_port*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.imx_port* %0, %struct.imx_port** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load i32, i32* @TXTL, align 4
  %8 = shl i32 %7, 10
  %9 = load i32, i32* @RXTL, align 4
  %10 = or i32 %8, %9
  store i32 %10, i32* %5, align 4
  %11 = load %struct.imx_port*, %struct.imx_port** %3, align 8
  %12 = getelementptr inbounds %struct.imx_port, %struct.imx_port* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 8
  %14 = call i32 @clk_get_rate(i32 %13)
  %15 = load %struct.imx_port*, %struct.imx_port** %3, align 8
  %16 = getelementptr inbounds %struct.imx_port, %struct.imx_port* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = sdiv i32 %18, 2
  %20 = add nsw i32 %14, %19
  %21 = load %struct.imx_port*, %struct.imx_port** %3, align 8
  %22 = getelementptr inbounds %struct.imx_port, %struct.imx_port* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = sdiv i32 %20, %24
  store i32 %25, i32* %6, align 4
  %26 = load i32, i32* %6, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %29, label %28

28:                                               ; preds = %2
  store i32 1, i32* %6, align 4
  br label %29

29:                                               ; preds = %28, %2
  %30 = load i32, i32* %6, align 4
  %31 = call i32 @UFCR_RFDIV_REG(i32 %30)
  %32 = load i32, i32* %5, align 4
  %33 = or i32 %32, %31
  store i32 %33, i32* %5, align 4
  %34 = load i32, i32* %5, align 4
  %35 = load %struct.imx_port*, %struct.imx_port** %3, align 8
  %36 = getelementptr inbounds %struct.imx_port, %struct.imx_port* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @UFCR, align 8
  %40 = add nsw i64 %38, %39
  %41 = call i32 @writel(i32 %34, i64 %40)
  ret i32 0
}

declare dso_local i32 @clk_get_rate(i32) #1

declare dso_local i32 @UFCR_RFDIV_REG(i32) #1

declare dso_local i32 @writel(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
