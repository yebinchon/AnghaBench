; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/irda/extr_sa1100_ir.c_sa1100_irda_fir_irq.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/irda/extr_sa1100_ir.c_sa1100_irda_fir_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }
%struct.sa1100_irda = type { i32, i32 }

@Ser2HSSR0 = common dso_local global i32 0, align 4
@HSSR0_FRE = common dso_local global i32 0, align 4
@HSSR0_RAB = common dso_local global i32 0, align 4
@HSCR0_HSSP = common dso_local global i32 0, align 4
@Ser2HSCR0 = common dso_local global i32 0, align 4
@HSSR0_EIF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @sa1100_irda_fir_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sa1100_irda_fir_irq(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.sa1100_irda*, align 8
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %4 = load %struct.net_device*, %struct.net_device** %2, align 8
  %5 = call %struct.sa1100_irda* @netdev_priv(%struct.net_device* %4)
  store %struct.sa1100_irda* %5, %struct.sa1100_irda** %3, align 8
  %6 = load %struct.sa1100_irda*, %struct.sa1100_irda** %3, align 8
  %7 = getelementptr inbounds %struct.sa1100_irda, %struct.sa1100_irda* %6, i32 0, i32 1
  %8 = load i32, i32* %7, align 4
  %9 = call i32 @sa1100_stop_dma(i32 %8)
  %10 = load i32, i32* @Ser2HSSR0, align 4
  %11 = load i32, i32* @HSSR0_FRE, align 4
  %12 = load i32, i32* @HSSR0_RAB, align 4
  %13 = or i32 %11, %12
  %14 = and i32 %10, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %41

16:                                               ; preds = %1
  %17 = load %struct.net_device*, %struct.net_device** %2, align 8
  %18 = getelementptr inbounds %struct.net_device, %struct.net_device* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = add nsw i32 %20, 1
  store i32 %21, i32* %19, align 4
  %22 = load i32, i32* @Ser2HSSR0, align 4
  %23 = load i32, i32* @HSSR0_FRE, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %32

26:                                               ; preds = %16
  %27 = load %struct.net_device*, %struct.net_device** %2, align 8
  %28 = getelementptr inbounds %struct.net_device, %struct.net_device* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %29, align 4
  br label %32

32:                                               ; preds = %26, %16
  %33 = load %struct.sa1100_irda*, %struct.sa1100_irda** %3, align 8
  %34 = getelementptr inbounds %struct.sa1100_irda, %struct.sa1100_irda* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @HSCR0_HSSP, align 4
  %37 = or i32 %35, %36
  store i32 %37, i32* @Ser2HSCR0, align 4
  %38 = load i32, i32* @HSSR0_FRE, align 4
  %39 = load i32, i32* @HSSR0_RAB, align 4
  %40 = or i32 %38, %39
  store i32 %40, i32* @Ser2HSSR0, align 4
  br label %41

41:                                               ; preds = %32, %1
  %42 = load i32, i32* @Ser2HSSR0, align 4
  %43 = load i32, i32* @HSSR0_EIF, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %50

46:                                               ; preds = %41
  %47 = load %struct.sa1100_irda*, %struct.sa1100_irda** %3, align 8
  %48 = load %struct.net_device*, %struct.net_device** %2, align 8
  %49 = call i32 @sa1100_irda_fir_error(%struct.sa1100_irda* %47, %struct.net_device* %48)
  br label %50

50:                                               ; preds = %46, %41
  %51 = load %struct.sa1100_irda*, %struct.sa1100_irda** %3, align 8
  %52 = call i32 @sa1100_irda_rx_dma_start(%struct.sa1100_irda* %51)
  ret void
}

declare dso_local %struct.sa1100_irda* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @sa1100_stop_dma(i32) #1

declare dso_local i32 @sa1100_irda_fir_error(%struct.sa1100_irda*, %struct.net_device*) #1

declare dso_local i32 @sa1100_irda_rx_dma_start(%struct.sa1100_irda*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
