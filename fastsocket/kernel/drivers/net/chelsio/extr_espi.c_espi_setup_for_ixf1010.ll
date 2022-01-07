; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/chelsio/extr_espi.c_espi_setup_for_ixf1010.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/chelsio/extr_espi.c_espi_setup_for_ixf1010.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64 }

@A_ESPI_CALENDAR_LENGTH = common dso_local global i64 0, align 8
@A_ESPI_RX_FIFO_ALMOST_FULL_WATERMARK = common dso_local global i64 0, align 8
@A_ESPI_RX_FIFO_ALMOST_EMPTY_WATERMARK = common dso_local global i64 0, align 8
@A_PORT_CONFIG = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_4__*, i32)* @espi_setup_for_ixf1010 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @espi_setup_for_ixf1010(%struct.TYPE_4__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_4__*, align 8
  %4 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %6 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = load i64, i64* @A_ESPI_CALENDAR_LENGTH, align 8
  %9 = add nsw i64 %7, %8
  %10 = call i32 @writel(i32 1, i64 %9)
  %11 = load i32, i32* %4, align 4
  %12 = icmp eq i32 %11, 4
  br i1 %12, label %13, label %44

13:                                               ; preds = %2
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %15 = call i64 @is_T2(%struct.TYPE_4__* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %30

17:                                               ; preds = %13
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @A_ESPI_RX_FIFO_ALMOST_FULL_WATERMARK, align 8
  %22 = add nsw i64 %20, %21
  %23 = call i32 @writel(i32 3840, i64 %22)
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @A_ESPI_RX_FIFO_ALMOST_EMPTY_WATERMARK, align 8
  %28 = add nsw i64 %26, %27
  %29 = call i32 @writel(i32 960, i64 %28)
  br label %43

30:                                               ; preds = %13
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @A_ESPI_RX_FIFO_ALMOST_FULL_WATERMARK, align 8
  %35 = add nsw i64 %33, %34
  %36 = call i32 @writel(i32 2047, i64 %35)
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @A_ESPI_RX_FIFO_ALMOST_EMPTY_WATERMARK, align 8
  %41 = add nsw i64 %39, %40
  %42 = call i32 @writel(i32 511, i64 %41)
  br label %43

43:                                               ; preds = %30, %17
  br label %57

44:                                               ; preds = %2
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @A_ESPI_RX_FIFO_ALMOST_FULL_WATERMARK, align 8
  %49 = add nsw i64 %47, %48
  %50 = call i32 @writel(i32 8191, i64 %49)
  %51 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* @A_ESPI_RX_FIFO_ALMOST_EMPTY_WATERMARK, align 8
  %55 = add nsw i64 %53, %54
  %56 = call i32 @writel(i32 2047, i64 %55)
  br label %57

57:                                               ; preds = %44, %43
  %58 = load i32, i32* %4, align 4
  %59 = call i32 @V_RX_NPORTS(i32 %58)
  %60 = load i32, i32* %4, align 4
  %61 = call i32 @V_TX_NPORTS(i32 %60)
  %62 = or i32 %59, %61
  %63 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = load i64, i64* @A_PORT_CONFIG, align 8
  %67 = add nsw i64 %65, %66
  %68 = call i32 @writel(i32 %62, i64 %67)
  ret void
}

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i64 @is_T2(%struct.TYPE_4__*) #1

declare dso_local i32 @V_RX_NPORTS(i32) #1

declare dso_local i32 @V_TX_NPORTS(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
