; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/b43/extr_main.c_b43_set_beacon_int.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/b43/extr_main.c_b43_set_beacon_int.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.b43_wldev = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@B43_MMIO_TSF_CFP_REP = common dso_local global i32 0, align 4
@B43_MMIO_TSF_CFP_START = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"Set beacon interval to %u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.b43_wldev*, i32)* @b43_set_beacon_int to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @b43_set_beacon_int(%struct.b43_wldev* %0, i32 %1) #0 {
  %3 = alloca %struct.b43_wldev*, align 8
  %4 = alloca i32, align 4
  store %struct.b43_wldev* %0, %struct.b43_wldev** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %6 = call i32 @b43_time_lock(%struct.b43_wldev* %5)
  %7 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %8 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %7, i32 0, i32 1
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = icmp sge i32 %11, 3
  br i1 %12, label %13, label %24

13:                                               ; preds = %2
  %14 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %15 = load i32, i32* @B43_MMIO_TSF_CFP_REP, align 4
  %16 = load i32, i32* %4, align 4
  %17 = shl i32 %16, 16
  %18 = call i32 @b43_write32(%struct.b43_wldev* %14, i32 %15, i32 %17)
  %19 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %20 = load i32, i32* @B43_MMIO_TSF_CFP_START, align 4
  %21 = load i32, i32* %4, align 4
  %22 = shl i32 %21, 10
  %23 = call i32 @b43_write32(%struct.b43_wldev* %19, i32 %20, i32 %22)
  br label %32

24:                                               ; preds = %2
  %25 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %26 = load i32, i32* %4, align 4
  %27 = ashr i32 %26, 6
  %28 = call i32 @b43_write16(%struct.b43_wldev* %25, i32 1542, i32 %27)
  %29 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %30 = load i32, i32* %4, align 4
  %31 = call i32 @b43_write16(%struct.b43_wldev* %29, i32 1552, i32 %30)
  br label %32

32:                                               ; preds = %24, %13
  %33 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %34 = call i32 @b43_time_unlock(%struct.b43_wldev* %33)
  %35 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %36 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* %4, align 4
  %39 = call i32 @b43dbg(i32 %37, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %38)
  ret void
}

declare dso_local i32 @b43_time_lock(%struct.b43_wldev*) #1

declare dso_local i32 @b43_write32(%struct.b43_wldev*, i32, i32) #1

declare dso_local i32 @b43_write16(%struct.b43_wldev*, i32, i32) #1

declare dso_local i32 @b43_time_unlock(%struct.b43_wldev*) #1

declare dso_local i32 @b43dbg(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
