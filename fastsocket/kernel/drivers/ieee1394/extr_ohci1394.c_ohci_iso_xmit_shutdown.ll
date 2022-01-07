; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/ieee1394/extr_ohci1394.c_ohci_iso_xmit_shutdown.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/ieee1394/extr_ohci1394.c_ohci_iso_xmit_shutdown.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hpsb_iso = type { %struct.ohci_iso_xmit* }
%struct.ohci_iso_xmit = type { i32, i64, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hpsb_iso*)* @ohci_iso_xmit_shutdown to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ohci_iso_xmit_shutdown(%struct.hpsb_iso* %0) #0 {
  %2 = alloca %struct.hpsb_iso*, align 8
  %3 = alloca %struct.ohci_iso_xmit*, align 8
  store %struct.hpsb_iso* %0, %struct.hpsb_iso** %2, align 8
  %4 = load %struct.hpsb_iso*, %struct.hpsb_iso** %2, align 8
  %5 = getelementptr inbounds %struct.hpsb_iso, %struct.hpsb_iso* %4, i32 0, i32 0
  %6 = load %struct.ohci_iso_xmit*, %struct.ohci_iso_xmit** %5, align 8
  store %struct.ohci_iso_xmit* %6, %struct.ohci_iso_xmit** %3, align 8
  %7 = load %struct.ohci_iso_xmit*, %struct.ohci_iso_xmit** %3, align 8
  %8 = getelementptr inbounds %struct.ohci_iso_xmit, %struct.ohci_iso_xmit* %7, i32 0, i32 1
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %22

11:                                               ; preds = %1
  %12 = load %struct.hpsb_iso*, %struct.hpsb_iso** %2, align 8
  %13 = call i32 @ohci_iso_xmit_stop(%struct.hpsb_iso* %12)
  %14 = load %struct.ohci_iso_xmit*, %struct.ohci_iso_xmit** %3, align 8
  %15 = getelementptr inbounds %struct.ohci_iso_xmit, %struct.ohci_iso_xmit* %14, i32 0, i32 3
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.ohci_iso_xmit*, %struct.ohci_iso_xmit** %3, align 8
  %18 = getelementptr inbounds %struct.ohci_iso_xmit, %struct.ohci_iso_xmit* %17, i32 0, i32 2
  %19 = call i32 @ohci1394_unregister_iso_tasklet(i32 %16, i32* %18)
  %20 = load %struct.ohci_iso_xmit*, %struct.ohci_iso_xmit** %3, align 8
  %21 = getelementptr inbounds %struct.ohci_iso_xmit, %struct.ohci_iso_xmit* %20, i32 0, i32 1
  store i64 0, i64* %21, align 8
  br label %22

22:                                               ; preds = %11, %1
  %23 = load %struct.ohci_iso_xmit*, %struct.ohci_iso_xmit** %3, align 8
  %24 = getelementptr inbounds %struct.ohci_iso_xmit, %struct.ohci_iso_xmit* %23, i32 0, i32 0
  %25 = call i32 @dma_prog_region_free(i32* %24)
  %26 = load %struct.ohci_iso_xmit*, %struct.ohci_iso_xmit** %3, align 8
  %27 = call i32 @kfree(%struct.ohci_iso_xmit* %26)
  %28 = load %struct.hpsb_iso*, %struct.hpsb_iso** %2, align 8
  %29 = getelementptr inbounds %struct.hpsb_iso, %struct.hpsb_iso* %28, i32 0, i32 0
  store %struct.ohci_iso_xmit* null, %struct.ohci_iso_xmit** %29, align 8
  ret void
}

declare dso_local i32 @ohci_iso_xmit_stop(%struct.hpsb_iso*) #1

declare dso_local i32 @ohci1394_unregister_iso_tasklet(i32, i32*) #1

declare dso_local i32 @dma_prog_region_free(i32*) #1

declare dso_local i32 @kfree(%struct.ohci_iso_xmit*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
