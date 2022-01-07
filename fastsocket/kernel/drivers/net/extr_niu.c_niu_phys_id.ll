; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_niu.c_niu_phys_id.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_niu.c_niu_phys_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.niu = type { i32 }

@EAGAIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, i32)* @niu_phys_id to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @niu_phys_id(%struct.net_device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.niu*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.net_device*, %struct.net_device** %4, align 8
  %11 = call %struct.niu* @netdev_priv(%struct.net_device* %10)
  store %struct.niu* %11, %struct.niu** %6, align 8
  %12 = load %struct.net_device*, %struct.net_device** %4, align 8
  %13 = call i32 @netif_running(%struct.net_device* %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %18, label %15

15:                                               ; preds = %2
  %16 = load i32, i32* @EAGAIN, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %3, align 4
  br label %49

18:                                               ; preds = %2
  %19 = load i32, i32* %5, align 4
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %18
  store i32 2, i32* %5, align 4
  br label %22

22:                                               ; preds = %21, %18
  %23 = load %struct.niu*, %struct.niu** %6, align 8
  %24 = call i32 @niu_led_state_save(%struct.niu* %23)
  store i32 %24, i32* %7, align 4
  store i32 0, i32* %8, align 4
  br label %25

25:                                               ; preds = %42, %22
  %26 = load i32, i32* %8, align 4
  %27 = load i32, i32* %5, align 4
  %28 = mul nsw i32 %27, 2
  %29 = icmp slt i32 %26, %28
  br i1 %29, label %30, label %45

30:                                               ; preds = %25
  %31 = load i32, i32* %8, align 4
  %32 = srem i32 %31, 2
  %33 = icmp eq i32 %32, 0
  %34 = zext i1 %33 to i32
  store i32 %34, i32* %9, align 4
  %35 = load %struct.niu*, %struct.niu** %6, align 8
  %36 = load i32, i32* %9, align 4
  %37 = call i32 @niu_force_led(%struct.niu* %35, i32 %36)
  %38 = call i64 @msleep_interruptible(i32 500)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %30
  br label %45

41:                                               ; preds = %30
  br label %42

42:                                               ; preds = %41
  %43 = load i32, i32* %8, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %8, align 4
  br label %25

45:                                               ; preds = %40, %25
  %46 = load %struct.niu*, %struct.niu** %6, align 8
  %47 = load i32, i32* %7, align 4
  %48 = call i32 @niu_led_state_restore(%struct.niu* %46, i32 %47)
  store i32 0, i32* %3, align 4
  br label %49

49:                                               ; preds = %45, %15
  %50 = load i32, i32* %3, align 4
  ret i32 %50
}

declare dso_local %struct.niu* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @netif_running(%struct.net_device*) #1

declare dso_local i32 @niu_led_state_save(%struct.niu*) #1

declare dso_local i32 @niu_force_led(%struct.niu*, i32) #1

declare dso_local i64 @msleep_interruptible(i32) #1

declare dso_local i32 @niu_led_state_restore(%struct.niu*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
