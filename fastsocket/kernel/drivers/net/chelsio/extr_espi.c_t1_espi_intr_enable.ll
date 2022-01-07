; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/chelsio/extr_espi.c_t1_espi_intr_enable.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/chelsio/extr_espi.c_t1_espi_intr_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.peespi = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@A_PL_ENABLE = common dso_local global i64 0, align 8
@ESPI_INTR_MASK = common dso_local global i32 0, align 4
@A_ESPI_INTR_ENABLE = common dso_local global i64 0, align 8
@F_PL_INTR_ESPI = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @t1_espi_intr_enable(%struct.peespi* %0) #0 {
  %2 = alloca %struct.peespi*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.peespi* %0, %struct.peespi** %2, align 8
  %5 = load %struct.peespi*, %struct.peespi** %2, align 8
  %6 = getelementptr inbounds %struct.peespi, %struct.peespi* %5, i32 0, i32 0
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @A_PL_ENABLE, align 8
  %11 = add nsw i64 %9, %10
  %12 = call i32 @readl(i64 %11)
  store i32 %12, i32* %4, align 4
  %13 = load %struct.peespi*, %struct.peespi** %2, align 8
  %14 = getelementptr inbounds %struct.peespi, %struct.peespi* %13, i32 0, i32 0
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = call i64 @t1_is_T1B(%struct.TYPE_2__* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %1
  br label %21

19:                                               ; preds = %1
  %20 = load i32, i32* @ESPI_INTR_MASK, align 4
  br label %21

21:                                               ; preds = %19, %18
  %22 = phi i32 [ 0, %18 ], [ %20, %19 ]
  store i32 %22, i32* %3, align 4
  %23 = load i32, i32* %3, align 4
  %24 = load %struct.peespi*, %struct.peespi** %2, align 8
  %25 = getelementptr inbounds %struct.peespi, %struct.peespi* %24, i32 0, i32 0
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @A_ESPI_INTR_ENABLE, align 8
  %30 = add nsw i64 %28, %29
  %31 = call i32 @writel(i32 %23, i64 %30)
  %32 = load i32, i32* %4, align 4
  %33 = load i32, i32* @F_PL_INTR_ESPI, align 4
  %34 = or i32 %32, %33
  %35 = load %struct.peespi*, %struct.peespi** %2, align 8
  %36 = getelementptr inbounds %struct.peespi, %struct.peespi* %35, i32 0, i32 0
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @A_PL_ENABLE, align 8
  %41 = add nsw i64 %39, %40
  %42 = call i32 @writel(i32 %34, i64 %41)
  ret void
}

declare dso_local i32 @readl(i64) #1

declare dso_local i64 @t1_is_T1B(%struct.TYPE_2__*) #1

declare dso_local i32 @writel(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
