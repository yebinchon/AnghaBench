; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/sfc/extr_efx.c_efx_fini_io.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/sfc/extr_efx.c_efx_fini_io.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.efx_nic = type { i32, i64, i32*, i32 }

@drv = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"shutting down I/O\0A\00", align 1
@EFX_MEM_BAR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.efx_nic*)* @efx_fini_io to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @efx_fini_io(%struct.efx_nic* %0) #0 {
  %2 = alloca %struct.efx_nic*, align 8
  store %struct.efx_nic* %0, %struct.efx_nic** %2, align 8
  %3 = load %struct.efx_nic*, %struct.efx_nic** %2, align 8
  %4 = load i32, i32* @drv, align 4
  %5 = load %struct.efx_nic*, %struct.efx_nic** %2, align 8
  %6 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %5, i32 0, i32 3
  %7 = load i32, i32* %6, align 8
  %8 = call i32 @netif_dbg(%struct.efx_nic* %3, i32 %4, i32 %7, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %9 = load %struct.efx_nic*, %struct.efx_nic** %2, align 8
  %10 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %9, i32 0, i32 2
  %11 = load i32*, i32** %10, align 8
  %12 = icmp ne i32* %11, null
  br i1 %12, label %13, label %20

13:                                               ; preds = %1
  %14 = load %struct.efx_nic*, %struct.efx_nic** %2, align 8
  %15 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %14, i32 0, i32 2
  %16 = load i32*, i32** %15, align 8
  %17 = call i32 @iounmap(i32* %16)
  %18 = load %struct.efx_nic*, %struct.efx_nic** %2, align 8
  %19 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %18, i32 0, i32 2
  store i32* null, i32** %19, align 8
  br label %20

20:                                               ; preds = %13, %1
  %21 = load %struct.efx_nic*, %struct.efx_nic** %2, align 8
  %22 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %33

25:                                               ; preds = %20
  %26 = load %struct.efx_nic*, %struct.efx_nic** %2, align 8
  %27 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* @EFX_MEM_BAR, align 4
  %30 = call i32 @pci_release_region(i32 %28, i32 %29)
  %31 = load %struct.efx_nic*, %struct.efx_nic** %2, align 8
  %32 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %31, i32 0, i32 1
  store i64 0, i64* %32, align 8
  br label %33

33:                                               ; preds = %25, %20
  %34 = load %struct.efx_nic*, %struct.efx_nic** %2, align 8
  %35 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = call i32 @pci_disable_device(i32 %36)
  ret void
}

declare dso_local i32 @netif_dbg(%struct.efx_nic*, i32, i32, i8*) #1

declare dso_local i32 @iounmap(i32*) #1

declare dso_local i32 @pci_release_region(i32, i32) #1

declare dso_local i32 @pci_disable_device(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
