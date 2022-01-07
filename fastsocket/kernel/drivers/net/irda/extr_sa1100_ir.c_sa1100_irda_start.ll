; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/irda/extr_sa1100_ir.c_sa1100_irda_start.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/irda/extr_sa1100_ir.c_sa1100_irda_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32, i32 }
%struct.sa1100_irda = type { i32, i32, i32, i32, i32, i32 }

@sa1100_irda_irq = common dso_local global i32 0, align 4
@DMA_Ser2HSSPRd = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"IrDA receive\00", align 1
@DMA_Ser2HSSPWr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [14 x i8] c"IrDA transmit\00", align 1
@sa1100_irda_txdma_irq = common dso_local global i32* null, align 8
@.str.2 = private unnamed_addr constant [7 x i8] c"sa1100\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@power_level = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @sa1100_irda_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sa1100_irda_start(%struct.net_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.sa1100_irda*, align 8
  %5 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  %6 = load %struct.net_device*, %struct.net_device** %3, align 8
  %7 = call %struct.sa1100_irda* @netdev_priv(%struct.net_device* %6)
  store %struct.sa1100_irda* %7, %struct.sa1100_irda** %4, align 8
  %8 = load %struct.sa1100_irda*, %struct.sa1100_irda** %4, align 8
  %9 = getelementptr inbounds %struct.sa1100_irda, %struct.sa1100_irda* %8, i32 0, i32 0
  store i32 9600, i32* %9, align 4
  %10 = load %struct.net_device*, %struct.net_device** %3, align 8
  %11 = getelementptr inbounds %struct.net_device, %struct.net_device* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @sa1100_irda_irq, align 4
  %14 = load %struct.net_device*, %struct.net_device** %3, align 8
  %15 = getelementptr inbounds %struct.net_device, %struct.net_device* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.net_device*, %struct.net_device** %3, align 8
  %18 = call i32 @request_irq(i32 %12, i32 %13, i32 0, i32 %16, %struct.net_device* %17)
  store i32 %18, i32* %5, align 4
  %19 = load i32, i32* %5, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %1
  br label %97

22:                                               ; preds = %1
  %23 = load i32, i32* @DMA_Ser2HSSPRd, align 4
  %24 = load %struct.sa1100_irda*, %struct.sa1100_irda** %4, align 8
  %25 = getelementptr inbounds %struct.sa1100_irda, %struct.sa1100_irda* %24, i32 0, i32 2
  %26 = call i32 @sa1100_request_dma(i32 %23, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32* null, %struct.net_device* null, i32* %25)
  store i32 %26, i32* %5, align 4
  %27 = load i32, i32* %5, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %22
  br label %91

30:                                               ; preds = %22
  %31 = load i32, i32* @DMA_Ser2HSSPWr, align 4
  %32 = load i32*, i32** @sa1100_irda_txdma_irq, align 8
  %33 = load %struct.net_device*, %struct.net_device** %3, align 8
  %34 = load %struct.sa1100_irda*, %struct.sa1100_irda** %4, align 8
  %35 = getelementptr inbounds %struct.sa1100_irda, %struct.sa1100_irda* %34, i32 0, i32 3
  %36 = call i32 @sa1100_request_dma(i32 %31, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i32* %32, %struct.net_device* %33, i32* %35)
  store i32 %36, i32* %5, align 4
  %37 = load i32, i32* %5, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %30
  br label %86

40:                                               ; preds = %30
  %41 = load %struct.net_device*, %struct.net_device** %3, align 8
  %42 = getelementptr inbounds %struct.net_device, %struct.net_device* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @disable_irq(i32 %43)
  %45 = load %struct.sa1100_irda*, %struct.sa1100_irda** %4, align 8
  %46 = call i32 @sa1100_irda_startup(%struct.sa1100_irda* %45)
  store i32 %46, i32* %5, align 4
  %47 = load i32, i32* %5, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %40
  br label %81

50:                                               ; preds = %40
  %51 = load %struct.net_device*, %struct.net_device** %3, align 8
  %52 = load %struct.sa1100_irda*, %struct.sa1100_irda** %4, align 8
  %53 = getelementptr inbounds %struct.sa1100_irda, %struct.sa1100_irda* %52, i32 0, i32 5
  %54 = call i32 @irlap_open(%struct.net_device* %51, i32* %53, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  %55 = load %struct.sa1100_irda*, %struct.sa1100_irda** %4, align 8
  %56 = getelementptr inbounds %struct.sa1100_irda, %struct.sa1100_irda* %55, i32 0, i32 4
  store i32 %54, i32* %56, align 4
  %57 = load i32, i32* @ENOMEM, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %5, align 4
  %59 = load %struct.sa1100_irda*, %struct.sa1100_irda** %4, align 8
  %60 = getelementptr inbounds %struct.sa1100_irda, %struct.sa1100_irda* %59, i32 0, i32 4
  %61 = load i32, i32* %60, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %64, label %63

63:                                               ; preds = %50
  br label %76

64:                                               ; preds = %50
  %65 = load %struct.sa1100_irda*, %struct.sa1100_irda** %4, align 8
  %66 = getelementptr inbounds %struct.sa1100_irda, %struct.sa1100_irda* %65, i32 0, i32 1
  store i32 1, i32* %66, align 4
  %67 = load %struct.sa1100_irda*, %struct.sa1100_irda** %4, align 8
  %68 = load i32, i32* @power_level, align 4
  %69 = call i32 @sa1100_set_power(%struct.sa1100_irda* %67, i32 %68)
  %70 = load %struct.net_device*, %struct.net_device** %3, align 8
  %71 = getelementptr inbounds %struct.net_device, %struct.net_device* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @enable_irq(i32 %72)
  %74 = load %struct.net_device*, %struct.net_device** %3, align 8
  %75 = call i32 @netif_start_queue(%struct.net_device* %74)
  store i32 0, i32* %2, align 4
  br label %99

76:                                               ; preds = %63
  %77 = load %struct.sa1100_irda*, %struct.sa1100_irda** %4, align 8
  %78 = getelementptr inbounds %struct.sa1100_irda, %struct.sa1100_irda* %77, i32 0, i32 1
  store i32 0, i32* %78, align 4
  %79 = load %struct.sa1100_irda*, %struct.sa1100_irda** %4, align 8
  %80 = call i32 @sa1100_irda_shutdown(%struct.sa1100_irda* %79)
  br label %81

81:                                               ; preds = %76, %49
  %82 = load %struct.sa1100_irda*, %struct.sa1100_irda** %4, align 8
  %83 = getelementptr inbounds %struct.sa1100_irda, %struct.sa1100_irda* %82, i32 0, i32 3
  %84 = load i32, i32* %83, align 4
  %85 = call i32 @sa1100_free_dma(i32 %84)
  br label %86

86:                                               ; preds = %81, %39
  %87 = load %struct.sa1100_irda*, %struct.sa1100_irda** %4, align 8
  %88 = getelementptr inbounds %struct.sa1100_irda, %struct.sa1100_irda* %87, i32 0, i32 2
  %89 = load i32, i32* %88, align 4
  %90 = call i32 @sa1100_free_dma(i32 %89)
  br label %91

91:                                               ; preds = %86, %29
  %92 = load %struct.net_device*, %struct.net_device** %3, align 8
  %93 = getelementptr inbounds %struct.net_device, %struct.net_device* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = load %struct.net_device*, %struct.net_device** %3, align 8
  %96 = call i32 @free_irq(i32 %94, %struct.net_device* %95)
  br label %97

97:                                               ; preds = %91, %21
  %98 = load i32, i32* %5, align 4
  store i32 %98, i32* %2, align 4
  br label %99

99:                                               ; preds = %97, %64
  %100 = load i32, i32* %2, align 4
  ret i32 %100
}

declare dso_local %struct.sa1100_irda* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @request_irq(i32, i32, i32, i32, %struct.net_device*) #1

declare dso_local i32 @sa1100_request_dma(i32, i8*, i32*, %struct.net_device*, i32*) #1

declare dso_local i32 @disable_irq(i32) #1

declare dso_local i32 @sa1100_irda_startup(%struct.sa1100_irda*) #1

declare dso_local i32 @irlap_open(%struct.net_device*, i32*, i8*) #1

declare dso_local i32 @sa1100_set_power(%struct.sa1100_irda*, i32) #1

declare dso_local i32 @enable_irq(i32) #1

declare dso_local i32 @netif_start_queue(%struct.net_device*) #1

declare dso_local i32 @sa1100_irda_shutdown(%struct.sa1100_irda*) #1

declare dso_local i32 @sa1100_free_dma(i32) #1

declare dso_local i32 @free_irq(i32, %struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
