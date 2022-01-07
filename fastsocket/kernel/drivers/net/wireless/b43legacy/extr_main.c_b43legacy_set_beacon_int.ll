; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/b43legacy/extr_main.c_b43legacy_set_beacon_int.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/b43legacy/extr_main.c_b43legacy_set_beacon_int.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.b43legacy_wldev = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@B43legacy_MMIO_TSF_CFP_REP = common dso_local global i32 0, align 4
@B43legacy_MMIO_TSF_CFP_START = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"Set beacon interval to %u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.b43legacy_wldev*, i32)* @b43legacy_set_beacon_int to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @b43legacy_set_beacon_int(%struct.b43legacy_wldev* %0, i32 %1) #0 {
  %3 = alloca %struct.b43legacy_wldev*, align 8
  %4 = alloca i32, align 4
  store %struct.b43legacy_wldev* %0, %struct.b43legacy_wldev** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %3, align 8
  %6 = call i32 @b43legacy_time_lock(%struct.b43legacy_wldev* %5)
  %7 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %3, align 8
  %8 = getelementptr inbounds %struct.b43legacy_wldev, %struct.b43legacy_wldev* %7, i32 0, i32 1
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = icmp sge i32 %12, 3
  br i1 %13, label %14, label %25

14:                                               ; preds = %2
  %15 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %3, align 8
  %16 = load i32, i32* @B43legacy_MMIO_TSF_CFP_REP, align 4
  %17 = load i32, i32* %4, align 4
  %18 = shl i32 %17, 16
  %19 = call i32 @b43legacy_write32(%struct.b43legacy_wldev* %15, i32 %16, i32 %18)
  %20 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %3, align 8
  %21 = load i32, i32* @B43legacy_MMIO_TSF_CFP_START, align 4
  %22 = load i32, i32* %4, align 4
  %23 = shl i32 %22, 10
  %24 = call i32 @b43legacy_write32(%struct.b43legacy_wldev* %20, i32 %21, i32 %23)
  br label %33

25:                                               ; preds = %2
  %26 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %3, align 8
  %27 = load i32, i32* %4, align 4
  %28 = ashr i32 %27, 6
  %29 = call i32 @b43legacy_write16(%struct.b43legacy_wldev* %26, i32 1542, i32 %28)
  %30 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %3, align 8
  %31 = load i32, i32* %4, align 4
  %32 = call i32 @b43legacy_write16(%struct.b43legacy_wldev* %30, i32 1552, i32 %31)
  br label %33

33:                                               ; preds = %25, %14
  %34 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %3, align 8
  %35 = call i32 @b43legacy_time_unlock(%struct.b43legacy_wldev* %34)
  %36 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %3, align 8
  %37 = getelementptr inbounds %struct.b43legacy_wldev, %struct.b43legacy_wldev* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = load i32, i32* %4, align 4
  %40 = call i32 @b43legacydbg(i32 %38, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %39)
  ret void
}

declare dso_local i32 @b43legacy_time_lock(%struct.b43legacy_wldev*) #1

declare dso_local i32 @b43legacy_write32(%struct.b43legacy_wldev*, i32, i32) #1

declare dso_local i32 @b43legacy_write16(%struct.b43legacy_wldev*, i32, i32) #1

declare dso_local i32 @b43legacy_time_unlock(%struct.b43legacy_wldev*) #1

declare dso_local i32 @b43legacydbg(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
