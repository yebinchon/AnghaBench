; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/arm/extr_ether3.c_ether3_ledon.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/arm/extr_ether3.c_ether3_ledon.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__, %struct.TYPE_7__ }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_7__ = type { i64, i32, i64 }

@jiffies = common dso_local global i64 0, align 8
@HZ = common dso_local global i32 0, align 4
@ether3_ledoff = common dso_local global i32 0, align 4
@CFG2_CTRLO = common dso_local global i32 0, align 4
@REG_CONFIG2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @ether3_ledon to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ether3_ledon(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %3 = load %struct.net_device*, %struct.net_device** %2, align 8
  %4 = call %struct.TYPE_6__* @priv(%struct.net_device* %3)
  %5 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %4, i32 0, i32 1
  %6 = call i32 @del_timer(%struct.TYPE_7__* %5)
  %7 = load i64, i64* @jiffies, align 8
  %8 = load i32, i32* @HZ, align 4
  %9 = sdiv i32 %8, 50
  %10 = sext i32 %9 to i64
  %11 = add nsw i64 %7, %10
  %12 = load %struct.net_device*, %struct.net_device** %2, align 8
  %13 = call %struct.TYPE_6__* @priv(%struct.net_device* %12)
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %14, i32 0, i32 2
  store i64 %11, i64* %15, align 8
  %16 = load %struct.net_device*, %struct.net_device** %2, align 8
  %17 = ptrtoint %struct.net_device* %16 to i64
  %18 = load %struct.net_device*, %struct.net_device** %2, align 8
  %19 = call %struct.TYPE_6__* @priv(%struct.net_device* %18)
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 0
  store i64 %17, i64* %21, align 8
  %22 = load i32, i32* @ether3_ledoff, align 4
  %23 = load %struct.net_device*, %struct.net_device** %2, align 8
  %24 = call %struct.TYPE_6__* @priv(%struct.net_device* %23)
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i32 0, i32 1
  store i32 %22, i32* %26, align 8
  %27 = load %struct.net_device*, %struct.net_device** %2, align 8
  %28 = call %struct.TYPE_6__* @priv(%struct.net_device* %27)
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 1
  %30 = call i32 @add_timer(%struct.TYPE_7__* %29)
  %31 = load %struct.net_device*, %struct.net_device** %2, align 8
  %32 = call %struct.TYPE_6__* @priv(%struct.net_device* %31)
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* @CFG2_CTRLO, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %50

39:                                               ; preds = %1
  %40 = load i32, i32* @CFG2_CTRLO, align 4
  %41 = xor i32 %40, -1
  %42 = load %struct.net_device*, %struct.net_device** %2, align 8
  %43 = call %struct.TYPE_6__* @priv(%struct.net_device* %42)
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = and i32 %46, %41
  store i32 %47, i32* %45, align 8
  %48 = load i32, i32* @REG_CONFIG2, align 4
  %49 = call i32 @ether3_outw(i32 %47, i32 %48)
  br label %50

50:                                               ; preds = %39, %1
  ret void
}

declare dso_local i32 @del_timer(%struct.TYPE_7__*) #1

declare dso_local %struct.TYPE_6__* @priv(%struct.net_device*) #1

declare dso_local i32 @add_timer(%struct.TYPE_7__*) #1

declare dso_local i32 @ether3_outw(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
