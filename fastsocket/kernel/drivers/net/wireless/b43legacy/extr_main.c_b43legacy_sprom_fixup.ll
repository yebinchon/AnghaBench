; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/b43legacy/extr_main.c_b43legacy_sprom_fixup.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/b43legacy/extr_main.c_b43legacy_sprom_fixup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ssb_bus = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_3__ = type { i64, i32 }

@PCI_VENDOR_ID_APPLE = common dso_local global i64 0, align 8
@B43legacy_BFL_PACTRL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ssb_bus*)* @b43legacy_sprom_fixup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @b43legacy_sprom_fixup(%struct.ssb_bus* %0) #0 {
  %2 = alloca %struct.ssb_bus*, align 8
  store %struct.ssb_bus* %0, %struct.ssb_bus** %2, align 8
  %3 = load %struct.ssb_bus*, %struct.ssb_bus** %2, align 8
  %4 = getelementptr inbounds %struct.ssb_bus, %struct.ssb_bus* %3, i32 0, i32 1
  %5 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = load i64, i64* @PCI_VENDOR_ID_APPLE, align 8
  %8 = icmp eq i64 %6, %7
  br i1 %8, label %9, label %28

9:                                                ; preds = %1
  %10 = load %struct.ssb_bus*, %struct.ssb_bus** %2, align 8
  %11 = getelementptr inbounds %struct.ssb_bus, %struct.ssb_bus* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 8
  %14 = icmp eq i32 %13, 78
  br i1 %14, label %15, label %28

15:                                               ; preds = %9
  %16 = load %struct.ssb_bus*, %struct.ssb_bus** %2, align 8
  %17 = getelementptr inbounds %struct.ssb_bus, %struct.ssb_bus* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = icmp sgt i32 %19, 64
  br i1 %20, label %21, label %28

21:                                               ; preds = %15
  %22 = load i32, i32* @B43legacy_BFL_PACTRL, align 4
  %23 = load %struct.ssb_bus*, %struct.ssb_bus** %2, align 8
  %24 = getelementptr inbounds %struct.ssb_bus, %struct.ssb_bus* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = or i32 %26, %22
  store i32 %27, i32* %25, align 4
  br label %28

28:                                               ; preds = %21, %15, %9, %1
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
