; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/sfc/extr_efx.c_efx_pci_probe_main.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/sfc/extr_efx.c_efx_pci_probe_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.efx_nic = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { {}*, {}* }

@probe = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"failed to initialise NIC\0A\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"failed to initialise port\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.efx_nic*)* @efx_pci_probe_main to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @efx_pci_probe_main(%struct.efx_nic* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.efx_nic*, align 8
  %4 = alloca i32, align 4
  store %struct.efx_nic* %0, %struct.efx_nic** %3, align 8
  %5 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %6 = call i32 @efx_probe_all(%struct.efx_nic* %5)
  store i32 %6, i32* %4, align 4
  %7 = load i32, i32* %4, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  br label %68

10:                                               ; preds = %1
  %11 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %12 = call i32 @efx_init_napi(%struct.efx_nic* %11)
  %13 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %14 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %13, i32 0, i32 0
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = bitcast {}** %16 to i32 (%struct.efx_nic*)**
  %18 = load i32 (%struct.efx_nic*)*, i32 (%struct.efx_nic*)** %17, align 8
  %19 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %20 = call i32 %18(%struct.efx_nic* %19)
  store i32 %20, i32* %4, align 4
  %21 = load i32, i32* %4, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %30

23:                                               ; preds = %10
  %24 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %25 = load i32, i32* @probe, align 4
  %26 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %27 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = call i32 @netif_err(%struct.efx_nic* %24, i32 %25, i32 %28, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  br label %63

30:                                               ; preds = %10
  %31 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %32 = call i32 @efx_init_port(%struct.efx_nic* %31)
  store i32 %32, i32* %4, align 4
  %33 = load i32, i32* %4, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %42

35:                                               ; preds = %30
  %36 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %37 = load i32, i32* @probe, align 4
  %38 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %39 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 8
  %41 = call i32 @netif_err(%struct.efx_nic* %36, i32 %37, i32 %40, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  br label %54

42:                                               ; preds = %30
  %43 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %44 = call i32 @efx_nic_init_interrupt(%struct.efx_nic* %43)
  store i32 %44, i32* %4, align 4
  %45 = load i32, i32* %4, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %42
  br label %51

48:                                               ; preds = %42
  %49 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %50 = call i32 @efx_start_interrupts(%struct.efx_nic* %49, i32 0)
  store i32 0, i32* %2, align 4
  br label %70

51:                                               ; preds = %47
  %52 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %53 = call i32 @efx_fini_port(%struct.efx_nic* %52)
  br label %54

54:                                               ; preds = %51, %35
  %55 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %56 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %55, i32 0, i32 0
  %57 = load %struct.TYPE_2__*, %struct.TYPE_2__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 1
  %59 = bitcast {}** %58 to i32 (%struct.efx_nic*)**
  %60 = load i32 (%struct.efx_nic*)*, i32 (%struct.efx_nic*)** %59, align 8
  %61 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %62 = call i32 %60(%struct.efx_nic* %61)
  br label %63

63:                                               ; preds = %54, %23
  %64 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %65 = call i32 @efx_fini_napi(%struct.efx_nic* %64)
  %66 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %67 = call i32 @efx_remove_all(%struct.efx_nic* %66)
  br label %68

68:                                               ; preds = %63, %9
  %69 = load i32, i32* %4, align 4
  store i32 %69, i32* %2, align 4
  br label %70

70:                                               ; preds = %68, %48
  %71 = load i32, i32* %2, align 4
  ret i32 %71
}

declare dso_local i32 @efx_probe_all(%struct.efx_nic*) #1

declare dso_local i32 @efx_init_napi(%struct.efx_nic*) #1

declare dso_local i32 @netif_err(%struct.efx_nic*, i32, i32, i8*) #1

declare dso_local i32 @efx_init_port(%struct.efx_nic*) #1

declare dso_local i32 @efx_nic_init_interrupt(%struct.efx_nic*) #1

declare dso_local i32 @efx_start_interrupts(%struct.efx_nic*, i32) #1

declare dso_local i32 @efx_fini_port(%struct.efx_nic*) #1

declare dso_local i32 @efx_fini_napi(%struct.efx_nic*) #1

declare dso_local i32 @efx_remove_all(%struct.efx_nic*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
