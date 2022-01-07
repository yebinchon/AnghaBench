; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/p54/extr_p54spi.c_p54spi_rx.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/p54/extr_p54spi.c_p54spi_rx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.p54s_priv = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.sk_buff = type { i32 }

@EBUSY = common dso_local global i32 0, align 4
@SPI_ADRS_DMA_DATA = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"rx request of zero bytes\0A\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"could not alloc skb\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@READAHEAD_SZ = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.p54s_priv*)* @p54spi_rx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @p54spi_rx(%struct.p54s_priv* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.p54s_priv*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca i64, align 8
  %6 = alloca [2 x i64], align 16
  store %struct.p54s_priv* %0, %struct.p54s_priv** %3, align 8
  %7 = load %struct.p54s_priv*, %struct.p54s_priv** %3, align 8
  %8 = call i64 @p54spi_wakeup(%struct.p54s_priv* %7)
  %9 = icmp slt i64 %8, 0
  br i1 %9, label %10, label %13

10:                                               ; preds = %1
  %11 = load i32, i32* @EBUSY, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %2, align 4
  br label %89

13:                                               ; preds = %1
  %14 = load %struct.p54s_priv*, %struct.p54s_priv** %3, align 8
  %15 = load i32, i32* @SPI_ADRS_DMA_DATA, align 4
  %16 = getelementptr inbounds [2 x i64], [2 x i64]* %6, i64 0, i64 0
  %17 = call i32 @p54spi_spi_read(%struct.p54s_priv* %14, i32 %15, i64* %16, i64 16)
  %18 = getelementptr inbounds [2 x i64], [2 x i64]* %6, i64 0, i64 0
  %19 = load i64, i64* %18, align 16
  store i64 %19, i64* %5, align 8
  %20 = load i64, i64* %5, align 8
  %21 = icmp eq i64 %20, 0
  br i1 %21, label %22, label %30

22:                                               ; preds = %13
  %23 = load %struct.p54s_priv*, %struct.p54s_priv** %3, align 8
  %24 = call i32 @p54spi_sleep(%struct.p54s_priv* %23)
  %25 = load %struct.p54s_priv*, %struct.p54s_priv** %3, align 8
  %26 = getelementptr inbounds %struct.p54s_priv, %struct.p54s_priv* %25, i32 0, i32 1
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = call i32 @dev_err(i32* %28, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %89

30:                                               ; preds = %13
  %31 = load i64, i64* %5, align 8
  %32 = add nsw i64 %31, 4
  %33 = call %struct.sk_buff* @dev_alloc_skb(i64 %32)
  store %struct.sk_buff* %33, %struct.sk_buff** %4, align 8
  %34 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %35 = icmp ne %struct.sk_buff* %34, null
  br i1 %35, label %46, label %36

36:                                               ; preds = %30
  %37 = load %struct.p54s_priv*, %struct.p54s_priv** %3, align 8
  %38 = call i32 @p54spi_sleep(%struct.p54s_priv* %37)
  %39 = load %struct.p54s_priv*, %struct.p54s_priv** %3, align 8
  %40 = getelementptr inbounds %struct.p54s_priv, %struct.p54s_priv* %39, i32 0, i32 1
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = call i32 @dev_err(i32* %42, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  %44 = load i32, i32* @ENOMEM, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %2, align 4
  br label %89

46:                                               ; preds = %30
  %47 = load i64, i64* %5, align 8
  %48 = icmp ule i64 %47, 8
  br i1 %48, label %49, label %58

49:                                               ; preds = %46
  %50 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %51 = load i64, i64* %5, align 8
  %52 = trunc i64 %51 to i32
  %53 = call i64* @skb_put(%struct.sk_buff* %50, i32 %52)
  %54 = getelementptr inbounds [2 x i64], [2 x i64]* %6, i64 0, i64 0
  %55 = getelementptr inbounds i64, i64* %54, i64 1
  %56 = load i64, i64* %5, align 8
  %57 = call i32 @memcpy(i64* %53, i64* %55, i64 %56)
  br label %74

58:                                               ; preds = %46
  %59 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %60 = call i64* @skb_put(%struct.sk_buff* %59, i32 8)
  %61 = getelementptr inbounds [2 x i64], [2 x i64]* %6, i64 0, i64 0
  %62 = getelementptr inbounds i64, i64* %61, i64 1
  %63 = call i32 @memcpy(i64* %60, i64* %62, i64 8)
  %64 = load %struct.p54s_priv*, %struct.p54s_priv** %3, align 8
  %65 = load i32, i32* @SPI_ADRS_DMA_DATA, align 4
  %66 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %67 = load i64, i64* %5, align 8
  %68 = sub i64 %67, 8
  %69 = trunc i64 %68 to i32
  %70 = call i64* @skb_put(%struct.sk_buff* %66, i32 %69)
  %71 = load i64, i64* %5, align 8
  %72 = sub i64 %71, 8
  %73 = call i32 @p54spi_spi_read(%struct.p54s_priv* %64, i32 %65, i64* %70, i64 %72)
  br label %74

74:                                               ; preds = %58, %49
  %75 = load %struct.p54s_priv*, %struct.p54s_priv** %3, align 8
  %76 = call i32 @p54spi_sleep(%struct.p54s_priv* %75)
  %77 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %78 = call i64* @skb_put(%struct.sk_buff* %77, i32 4)
  %79 = load %struct.p54s_priv*, %struct.p54s_priv** %3, align 8
  %80 = getelementptr inbounds %struct.p54s_priv, %struct.p54s_priv* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %83 = call i64 @p54_rx(i32 %81, %struct.sk_buff* %82)
  %84 = icmp eq i64 %83, 0
  br i1 %84, label %85, label %88

85:                                               ; preds = %74
  %86 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %87 = call i32 @dev_kfree_skb(%struct.sk_buff* %86)
  br label %88

88:                                               ; preds = %85, %74
  store i32 0, i32* %2, align 4
  br label %89

89:                                               ; preds = %88, %36, %22, %10
  %90 = load i32, i32* %2, align 4
  ret i32 %90
}

declare dso_local i64 @p54spi_wakeup(%struct.p54s_priv*) #1

declare dso_local i32 @p54spi_spi_read(%struct.p54s_priv*, i32, i64*, i64) #1

declare dso_local i32 @p54spi_sleep(%struct.p54s_priv*) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local %struct.sk_buff* @dev_alloc_skb(i64) #1

declare dso_local i32 @memcpy(i64*, i64*, i64) #1

declare dso_local i64* @skb_put(%struct.sk_buff*, i32) #1

declare dso_local i64 @p54_rx(i32, %struct.sk_buff*) #1

declare dso_local i32 @dev_kfree_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
