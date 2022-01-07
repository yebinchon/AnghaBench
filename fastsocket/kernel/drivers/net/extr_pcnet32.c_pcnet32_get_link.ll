; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_pcnet32.c_pcnet32_get_link.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_pcnet32.c_pcnet32_get_link.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.pcnet32_private = type { i64, i32, %struct.TYPE_2__, i32, i64 }
%struct.TYPE_2__ = type { i32 (i32, i32)* }

@PCNET32_79C970A = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @pcnet32_get_link to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pcnet32_get_link(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.pcnet32_private*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %7 = load %struct.net_device*, %struct.net_device** %2, align 8
  %8 = call %struct.pcnet32_private* @netdev_priv(%struct.net_device* %7)
  store %struct.pcnet32_private* %8, %struct.pcnet32_private** %3, align 8
  %9 = load %struct.pcnet32_private*, %struct.pcnet32_private** %3, align 8
  %10 = getelementptr inbounds %struct.pcnet32_private, %struct.pcnet32_private* %9, i32 0, i32 1
  %11 = load i64, i64* %4, align 8
  %12 = call i32 @spin_lock_irqsave(i32* %10, i64 %11)
  %13 = load %struct.pcnet32_private*, %struct.pcnet32_private** %3, align 8
  %14 = getelementptr inbounds %struct.pcnet32_private, %struct.pcnet32_private* %13, i32 0, i32 4
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %1
  %18 = load %struct.pcnet32_private*, %struct.pcnet32_private** %3, align 8
  %19 = getelementptr inbounds %struct.pcnet32_private, %struct.pcnet32_private* %18, i32 0, i32 3
  %20 = call i32 @mii_link_ok(i32* %19)
  store i32 %20, i32* %5, align 4
  br label %41

21:                                               ; preds = %1
  %22 = load %struct.pcnet32_private*, %struct.pcnet32_private** %3, align 8
  %23 = getelementptr inbounds %struct.pcnet32_private, %struct.pcnet32_private* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @PCNET32_79C970A, align 8
  %26 = icmp sge i64 %24, %25
  br i1 %26, label %27, label %39

27:                                               ; preds = %21
  %28 = load %struct.net_device*, %struct.net_device** %2, align 8
  %29 = getelementptr inbounds %struct.net_device, %struct.net_device* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  store i32 %30, i32* %6, align 4
  %31 = load %struct.pcnet32_private*, %struct.pcnet32_private** %3, align 8
  %32 = getelementptr inbounds %struct.pcnet32_private, %struct.pcnet32_private* %31, i32 0, i32 2
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i32 (i32, i32)*, i32 (i32, i32)** %33, align 8
  %35 = load i32, i32* %6, align 4
  %36 = call i32 %34(i32 %35, i32 4)
  %37 = icmp ne i32 %36, 192
  %38 = zext i1 %37 to i32
  store i32 %38, i32* %5, align 4
  br label %40

39:                                               ; preds = %21
  store i32 1, i32* %5, align 4
  br label %40

40:                                               ; preds = %39, %27
  br label %41

41:                                               ; preds = %40, %17
  %42 = load %struct.pcnet32_private*, %struct.pcnet32_private** %3, align 8
  %43 = getelementptr inbounds %struct.pcnet32_private, %struct.pcnet32_private* %42, i32 0, i32 1
  %44 = load i64, i64* %4, align 8
  %45 = call i32 @spin_unlock_irqrestore(i32* %43, i64 %44)
  %46 = load i32, i32* %5, align 4
  ret i32 %46
}

declare dso_local %struct.pcnet32_private* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @mii_link_ok(i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
