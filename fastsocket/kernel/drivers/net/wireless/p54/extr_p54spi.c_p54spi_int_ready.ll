; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/p54/extr_p54spi.c_p54spi_int_ready.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/p54/extr_p54spi.c_p54spi_int_ready.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.p54s_priv = type { i32, i32 }

@SPI_ADRS_HOST_INT_EN = common dso_local global i32 0, align 4
@SPI_HOST_INT_UPDATE = common dso_local global i32 0, align 4
@SPI_HOST_INT_SW_UPDATE = common dso_local global i32 0, align 4
@FW_STATE_READY = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.p54s_priv*)* @p54spi_int_ready to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @p54spi_int_ready(%struct.p54s_priv* %0) #0 {
  %2 = alloca %struct.p54s_priv*, align 8
  store %struct.p54s_priv* %0, %struct.p54s_priv** %2, align 8
  %3 = load %struct.p54s_priv*, %struct.p54s_priv** %2, align 8
  %4 = load i32, i32* @SPI_ADRS_HOST_INT_EN, align 4
  %5 = load i32, i32* @SPI_HOST_INT_UPDATE, align 4
  %6 = load i32, i32* @SPI_HOST_INT_SW_UPDATE, align 4
  %7 = or i32 %5, %6
  %8 = call i32 @cpu_to_le32(i32 %7)
  %9 = call i32 @p54spi_write32(%struct.p54s_priv* %3, i32 %4, i32 %8)
  %10 = load %struct.p54s_priv*, %struct.p54s_priv** %2, align 8
  %11 = getelementptr inbounds %struct.p54s_priv, %struct.p54s_priv* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  switch i32 %12, label %26 [
    i32 129, label %13
    i32 128, label %21
  ]

13:                                               ; preds = %1
  %14 = load i8*, i8** @FW_STATE_READY, align 8
  %15 = ptrtoint i8* %14 to i32
  %16 = load %struct.p54s_priv*, %struct.p54s_priv** %2, align 8
  %17 = getelementptr inbounds %struct.p54s_priv, %struct.p54s_priv* %16, i32 0, i32 0
  store i32 %15, i32* %17, align 4
  %18 = load %struct.p54s_priv*, %struct.p54s_priv** %2, align 8
  %19 = getelementptr inbounds %struct.p54s_priv, %struct.p54s_priv* %18, i32 0, i32 1
  %20 = call i32 @complete(i32* %19)
  br label %27

21:                                               ; preds = %1
  %22 = load i8*, i8** @FW_STATE_READY, align 8
  %23 = ptrtoint i8* %22 to i32
  %24 = load %struct.p54s_priv*, %struct.p54s_priv** %2, align 8
  %25 = getelementptr inbounds %struct.p54s_priv, %struct.p54s_priv* %24, i32 0, i32 0
  store i32 %23, i32* %25, align 4
  br label %27

26:                                               ; preds = %1
  br label %27

27:                                               ; preds = %26, %21, %13
  ret void
}

declare dso_local i32 @p54spi_write32(%struct.p54s_priv*, i32, i32) #1

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i32 @complete(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
