; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_e100.c_e100_blink_led.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_e100.c_e100_blink_led.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nic = type { i64, i32, i64, i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }

@MII_LED_CONTROL = common dso_local global i32 0, align 4
@phy_82552_v = common dso_local global i64 0, align 8
@E100_82552_LED_OVERRIDE = common dso_local global i32 0, align 4
@E100_82552_LED_ON = common dso_local global i32 0, align 4
@E100_82552_LED_OFF = common dso_local global i32 0, align 4
@mac_82559_D101M = common dso_local global i64 0, align 8
@jiffies = common dso_local global i64 0, align 8
@HZ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64)* @e100_blink_led to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @e100_blink_led(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.nic*, align 8
  %4 = alloca i32, align 4
  store i64 %0, i64* %2, align 8
  %5 = load i64, i64* %2, align 8
  %6 = inttoptr i64 %5 to %struct.nic*
  store %struct.nic* %6, %struct.nic** %3, align 8
  %7 = load i32, i32* @MII_LED_CONTROL, align 4
  store i32 %7, i32* %4, align 4
  %8 = load %struct.nic*, %struct.nic** %3, align 8
  %9 = getelementptr inbounds %struct.nic, %struct.nic* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @phy_82552_v, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %13, label %28

13:                                               ; preds = %1
  %14 = load i32, i32* @E100_82552_LED_OVERRIDE, align 4
  store i32 %14, i32* %4, align 4
  %15 = load %struct.nic*, %struct.nic** %3, align 8
  %16 = getelementptr inbounds %struct.nic, %struct.nic* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* @E100_82552_LED_ON, align 4
  %19 = icmp eq i32 %17, %18
  br i1 %19, label %20, label %22

20:                                               ; preds = %13
  %21 = load i32, i32* @E100_82552_LED_OFF, align 4
  br label %24

22:                                               ; preds = %13
  %23 = load i32, i32* @E100_82552_LED_ON, align 4
  br label %24

24:                                               ; preds = %22, %20
  %25 = phi i32 [ %21, %20 ], [ %23, %22 ]
  %26 = load %struct.nic*, %struct.nic** %3, align 8
  %27 = getelementptr inbounds %struct.nic, %struct.nic* %26, i32 0, i32 1
  store i32 %25, i32* %27, align 8
  br label %47

28:                                               ; preds = %1
  %29 = load %struct.nic*, %struct.nic** %3, align 8
  %30 = getelementptr inbounds %struct.nic, %struct.nic* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  %32 = and i32 %31, 1
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %28
  br label %43

35:                                               ; preds = %28
  %36 = load %struct.nic*, %struct.nic** %3, align 8
  %37 = getelementptr inbounds %struct.nic, %struct.nic* %36, i32 0, i32 2
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @mac_82559_D101M, align 8
  %40 = icmp slt i64 %38, %39
  %41 = zext i1 %40 to i64
  %42 = select i1 %40, i32 7, i32 5
  br label %43

43:                                               ; preds = %35, %34
  %44 = phi i32 [ 4, %34 ], [ %42, %35 ]
  %45 = load %struct.nic*, %struct.nic** %3, align 8
  %46 = getelementptr inbounds %struct.nic, %struct.nic* %45, i32 0, i32 1
  store i32 %44, i32* %46, align 8
  br label %47

47:                                               ; preds = %43, %24
  %48 = load %struct.nic*, %struct.nic** %3, align 8
  %49 = getelementptr inbounds %struct.nic, %struct.nic* %48, i32 0, i32 5
  %50 = load i32, i32* %49, align 8
  %51 = load %struct.nic*, %struct.nic** %3, align 8
  %52 = getelementptr inbounds %struct.nic, %struct.nic* %51, i32 0, i32 4
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* %4, align 4
  %56 = load %struct.nic*, %struct.nic** %3, align 8
  %57 = getelementptr inbounds %struct.nic, %struct.nic* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 8
  %59 = call i32 @mdio_write(i32 %50, i32 %54, i32 %55, i32 %58)
  %60 = load %struct.nic*, %struct.nic** %3, align 8
  %61 = getelementptr inbounds %struct.nic, %struct.nic* %60, i32 0, i32 3
  %62 = load i64, i64* @jiffies, align 8
  %63 = load i32, i32* @HZ, align 4
  %64 = sdiv i32 %63, 4
  %65 = sext i32 %64 to i64
  %66 = add nsw i64 %62, %65
  %67 = call i32 @mod_timer(i32* %61, i64 %66)
  ret void
}

declare dso_local i32 @mdio_write(i32, i32, i32, i32) #1

declare dso_local i32 @mod_timer(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
