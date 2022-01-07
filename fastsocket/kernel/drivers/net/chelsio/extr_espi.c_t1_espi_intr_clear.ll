; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/chelsio/extr_espi.c_t1_espi_intr_clear.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/chelsio/extr_espi.c_t1_espi_intr_clear.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.peespi = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@A_ESPI_DIP2_ERR_COUNT = common dso_local global i64 0, align 8
@A_ESPI_INTR_STATUS = common dso_local global i64 0, align 8
@F_PL_INTR_ESPI = common dso_local global i32 0, align 4
@A_PL_CAUSE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @t1_espi_intr_clear(%struct.peespi* %0) #0 {
  %2 = alloca %struct.peespi*, align 8
  store %struct.peespi* %0, %struct.peespi** %2, align 8
  %3 = load %struct.peespi*, %struct.peespi** %2, align 8
  %4 = getelementptr inbounds %struct.peespi, %struct.peespi* %3, i32 0, i32 0
  %5 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %6 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = load i64, i64* @A_ESPI_DIP2_ERR_COUNT, align 8
  %9 = add nsw i64 %7, %8
  %10 = call i32 @readl(i64 %9)
  %11 = load %struct.peespi*, %struct.peespi** %2, align 8
  %12 = getelementptr inbounds %struct.peespi, %struct.peespi* %11, i32 0, i32 0
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @A_ESPI_INTR_STATUS, align 8
  %17 = add nsw i64 %15, %16
  %18 = call i32 @writel(i32 -1, i64 %17)
  %19 = load i32, i32* @F_PL_INTR_ESPI, align 4
  %20 = load %struct.peespi*, %struct.peespi** %2, align 8
  %21 = getelementptr inbounds %struct.peespi, %struct.peespi* %20, i32 0, i32 0
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @A_PL_CAUSE, align 8
  %26 = add nsw i64 %24, %25
  %27 = call i32 @writel(i32 %19, i64 %26)
  ret void
}

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @writel(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
