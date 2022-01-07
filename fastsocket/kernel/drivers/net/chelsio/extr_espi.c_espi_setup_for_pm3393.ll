; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/chelsio/extr_espi.c_espi_setup_for_pm3393.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/chelsio/extr_espi.c_espi_setup_for_pm3393.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64 }

@A_ESPI_SCH_TOKEN0 = common dso_local global i64 0, align 8
@A_ESPI_SCH_TOKEN1 = common dso_local global i64 0, align 8
@A_ESPI_SCH_TOKEN2 = common dso_local global i64 0, align 8
@A_ESPI_SCH_TOKEN3 = common dso_local global i64 0, align 8
@A_ESPI_RX_FIFO_ALMOST_EMPTY_WATERMARK = common dso_local global i64 0, align 8
@A_ESPI_RX_FIFO_ALMOST_FULL_WATERMARK = common dso_local global i64 0, align 8
@A_ESPI_CALENDAR_LENGTH = common dso_local global i64 0, align 8
@A_ESPI_TRAIN = common dso_local global i64 0, align 8
@A_PORT_CONFIG = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_4__*)* @espi_setup_for_pm3393 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @espi_setup_for_pm3393(%struct.TYPE_4__* %0) #0 {
  %2 = alloca %struct.TYPE_4__*, align 8
  %3 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %2, align 8
  %4 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %5 = call i64 @t1_is_T1B(%struct.TYPE_4__* %4)
  %6 = icmp ne i64 %5, 0
  %7 = zext i1 %6 to i64
  %8 = select i1 %6, i32 16384, i32 12800
  store i32 %8, i32* %3, align 4
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @A_ESPI_SCH_TOKEN0, align 8
  %13 = add nsw i64 %11, %12
  %14 = call i32 @writel(i32 500, i64 %13)
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @A_ESPI_SCH_TOKEN1, align 8
  %19 = add nsw i64 %17, %18
  %20 = call i32 @writel(i32 500, i64 %19)
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @A_ESPI_SCH_TOKEN2, align 8
  %25 = add nsw i64 %23, %24
  %26 = call i32 @writel(i32 500, i64 %25)
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @A_ESPI_SCH_TOKEN3, align 8
  %31 = add nsw i64 %29, %30
  %32 = call i32 @writel(i32 500, i64 %31)
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @A_ESPI_RX_FIFO_ALMOST_EMPTY_WATERMARK, align 8
  %37 = add nsw i64 %35, %36
  %38 = call i32 @writel(i32 256, i64 %37)
  %39 = load i32, i32* %3, align 4
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @A_ESPI_RX_FIFO_ALMOST_FULL_WATERMARK, align 8
  %44 = add nsw i64 %42, %43
  %45 = call i32 @writel(i32 %39, i64 %44)
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @A_ESPI_CALENDAR_LENGTH, align 8
  %50 = add nsw i64 %48, %49
  %51 = call i32 @writel(i32 3, i64 %50)
  %52 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* @A_ESPI_TRAIN, align 8
  %56 = add nsw i64 %54, %55
  %57 = call i32 @writel(i32 134217736, i64 %56)
  %58 = call i32 @V_RX_NPORTS(i32 1)
  %59 = call i32 @V_TX_NPORTS(i32 1)
  %60 = or i32 %58, %59
  %61 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* @A_PORT_CONFIG, align 8
  %65 = add nsw i64 %63, %64
  %66 = call i32 @writel(i32 %60, i64 %65)
  ret void
}

declare dso_local i64 @t1_is_T1B(%struct.TYPE_4__*) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @V_RX_NPORTS(i32) #1

declare dso_local i32 @V_TX_NPORTS(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
