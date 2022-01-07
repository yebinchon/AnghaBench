; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/sfc/extr_efx.c_efx_probe_nic.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/sfc/extr_efx.c_efx_probe_nic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.efx_nic = type { i32, %struct.TYPE_2__*, i32, i32, i32, i32*, i32 }
%struct.TYPE_2__ = type { {}*, {}*, {}* }

@probe = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"creating NIC\0A\00", align 1
@tx_irq_mod_usec = common dso_local global i32 0, align 4
@rx_irq_mod_usec = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.efx_nic*)* @efx_probe_nic to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @efx_probe_nic(%struct.efx_nic* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.efx_nic*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store %struct.efx_nic* %0, %struct.efx_nic** %3, align 8
  %6 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %7 = load i32, i32* @probe, align 4
  %8 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %9 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %8, i32 0, i32 3
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @netif_dbg(%struct.efx_nic* %6, i32 %7, i32 %10, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %12 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %13 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %12, i32 0, i32 1
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = bitcast {}** %15 to i32 (%struct.efx_nic*)**
  %17 = load i32 (%struct.efx_nic*)*, i32 (%struct.efx_nic*)** %16, align 8
  %18 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %19 = call i32 %17(%struct.efx_nic* %18)
  store i32 %19, i32* %5, align 4
  %20 = load i32, i32* %5, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %1
  %23 = load i32, i32* %5, align 4
  store i32 %23, i32* %2, align 4
  br label %93

24:                                               ; preds = %1
  %25 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %26 = call i32 @efx_probe_interrupts(%struct.efx_nic* %25)
  store i32 %26, i32* %5, align 4
  %27 = load i32, i32* %5, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %24
  br label %83

30:                                               ; preds = %24
  %31 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %32 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %31, i32 0, i32 1
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 2
  %35 = bitcast {}** %34 to i32 (%struct.efx_nic*)**
  %36 = load i32 (%struct.efx_nic*)*, i32 (%struct.efx_nic*)** %35, align 8
  %37 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %38 = call i32 %36(%struct.efx_nic* %37)
  %39 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %40 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = icmp sgt i32 %41, 1
  br i1 %42, label %43, label %47

43:                                               ; preds = %30
  %44 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %45 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %44, i32 0, i32 6
  %46 = call i32 @get_random_bytes(i32* %45, i32 4)
  br label %47

47:                                               ; preds = %43, %30
  store i64 0, i64* %4, align 8
  br label %48

48:                                               ; preds = %66, %47
  %49 = load i64, i64* %4, align 8
  %50 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %51 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %50, i32 0, i32 5
  %52 = load i32*, i32** %51, align 8
  %53 = call i64 @ARRAY_SIZE(i32* %52)
  %54 = icmp ult i64 %49, %53
  br i1 %54, label %55, label %69

55:                                               ; preds = %48
  %56 = load i64, i64* %4, align 8
  %57 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %58 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %57, i32 0, i32 4
  %59 = load i32, i32* %58, align 8
  %60 = call i32 @ethtool_rxfh_indir_default(i64 %56, i32 %59)
  %61 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %62 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %61, i32 0, i32 5
  %63 = load i32*, i32** %62, align 8
  %64 = load i64, i64* %4, align 8
  %65 = getelementptr inbounds i32, i32* %63, i64 %64
  store i32 %60, i32* %65, align 4
  br label %66

66:                                               ; preds = %55
  %67 = load i64, i64* %4, align 8
  %68 = add i64 %67, 1
  store i64 %68, i64* %4, align 8
  br label %48

69:                                               ; preds = %48
  %70 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %71 = call i32 @efx_set_channels(%struct.efx_nic* %70)
  %72 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %73 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %72, i32 0, i32 3
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %76 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %75, i32 0, i32 2
  %77 = load i32, i32* %76, align 8
  %78 = call i32 @netif_set_real_num_tx_queues(i32 %74, i32 %77)
  %79 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %80 = load i32, i32* @tx_irq_mod_usec, align 4
  %81 = load i32, i32* @rx_irq_mod_usec, align 4
  %82 = call i32 @efx_init_irq_moderation(%struct.efx_nic* %79, i32 %80, i32 %81, i32 1, i32 1)
  store i32 0, i32* %2, align 4
  br label %93

83:                                               ; preds = %29
  %84 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %85 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %84, i32 0, i32 1
  %86 = load %struct.TYPE_2__*, %struct.TYPE_2__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %86, i32 0, i32 1
  %88 = bitcast {}** %87 to i32 (%struct.efx_nic*)**
  %89 = load i32 (%struct.efx_nic*)*, i32 (%struct.efx_nic*)** %88, align 8
  %90 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %91 = call i32 %89(%struct.efx_nic* %90)
  %92 = load i32, i32* %5, align 4
  store i32 %92, i32* %2, align 4
  br label %93

93:                                               ; preds = %83, %69, %22
  %94 = load i32, i32* %2, align 4
  ret i32 %94
}

declare dso_local i32 @netif_dbg(%struct.efx_nic*, i32, i32, i8*) #1

declare dso_local i32 @efx_probe_interrupts(%struct.efx_nic*) #1

declare dso_local i32 @get_random_bytes(i32*, i32) #1

declare dso_local i64 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @ethtool_rxfh_indir_default(i64, i32) #1

declare dso_local i32 @efx_set_channels(%struct.efx_nic*) #1

declare dso_local i32 @netif_set_real_num_tx_queues(i32, i32) #1

declare dso_local i32 @efx_init_irq_moderation(%struct.efx_nic*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
