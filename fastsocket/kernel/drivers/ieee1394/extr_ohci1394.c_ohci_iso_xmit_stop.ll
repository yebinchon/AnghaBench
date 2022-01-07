; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/ieee1394/extr_ohci1394.c_ohci_iso_xmit_stop.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/ieee1394/extr_ohci1394.c_ohci_iso_xmit_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hpsb_iso = type { %struct.ohci_iso_xmit* }
%struct.ohci_iso_xmit = type { i32, %struct.ti_ohci*, %struct.TYPE_2__ }
%struct.ti_ohci = type { i32 }
%struct.TYPE_2__ = type { i32 }

@OHCI1394_IsoXmitIntMaskClear = common dso_local global i32 0, align 4
@KERN_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [100 x i8] c"you probably exceeded the OHCI card's bandwidth limit - reload the module and reduce xmit bandwidth\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hpsb_iso*)* @ohci_iso_xmit_stop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ohci_iso_xmit_stop(%struct.hpsb_iso* %0) #0 {
  %2 = alloca %struct.hpsb_iso*, align 8
  %3 = alloca %struct.ohci_iso_xmit*, align 8
  %4 = alloca %struct.ti_ohci*, align 8
  store %struct.hpsb_iso* %0, %struct.hpsb_iso** %2, align 8
  %5 = load %struct.hpsb_iso*, %struct.hpsb_iso** %2, align 8
  %6 = getelementptr inbounds %struct.hpsb_iso, %struct.hpsb_iso* %5, i32 0, i32 0
  %7 = load %struct.ohci_iso_xmit*, %struct.ohci_iso_xmit** %6, align 8
  store %struct.ohci_iso_xmit* %7, %struct.ohci_iso_xmit** %3, align 8
  %8 = load %struct.ohci_iso_xmit*, %struct.ohci_iso_xmit** %3, align 8
  %9 = getelementptr inbounds %struct.ohci_iso_xmit, %struct.ohci_iso_xmit* %8, i32 0, i32 1
  %10 = load %struct.ti_ohci*, %struct.ti_ohci** %9, align 8
  store %struct.ti_ohci* %10, %struct.ti_ohci** %4, align 8
  %11 = load %struct.ohci_iso_xmit*, %struct.ohci_iso_xmit** %3, align 8
  %12 = getelementptr inbounds %struct.ohci_iso_xmit, %struct.ohci_iso_xmit* %11, i32 0, i32 1
  %13 = load %struct.ti_ohci*, %struct.ti_ohci** %12, align 8
  %14 = load i32, i32* @OHCI1394_IsoXmitIntMaskClear, align 4
  %15 = load %struct.ohci_iso_xmit*, %struct.ohci_iso_xmit** %3, align 8
  %16 = getelementptr inbounds %struct.ohci_iso_xmit, %struct.ohci_iso_xmit* %15, i32 0, i32 2
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = shl i32 1, %18
  %20 = call i32 @reg_write(%struct.ti_ohci* %13, i32 %14, i32 %19)
  %21 = load %struct.ohci_iso_xmit*, %struct.ohci_iso_xmit** %3, align 8
  %22 = getelementptr inbounds %struct.ohci_iso_xmit, %struct.ohci_iso_xmit* %21, i32 0, i32 1
  %23 = load %struct.ti_ohci*, %struct.ti_ohci** %22, align 8
  %24 = load %struct.ohci_iso_xmit*, %struct.ohci_iso_xmit** %3, align 8
  %25 = getelementptr inbounds %struct.ohci_iso_xmit, %struct.ohci_iso_xmit* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = call i64 @ohci1394_stop_context(%struct.ti_ohci* %23, i32 %26, i32* null)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %1
  %30 = load i32, i32* @KERN_ERR, align 4
  %31 = call i32 @PRINT(i32 %30, i8* getelementptr inbounds ([100 x i8], [100 x i8]* @.str, i64 0, i64 0))
  br label %32

32:                                               ; preds = %29, %1
  ret void
}

declare dso_local i32 @reg_write(%struct.ti_ohci*, i32, i32) #1

declare dso_local i64 @ohci1394_stop_context(%struct.ti_ohci*, i32, i32*) #1

declare dso_local i32 @PRINT(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
