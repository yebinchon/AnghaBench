; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_mv643xx_eth.c_smi_wait_ready.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_mv643xx_eth.c_smi_wait_ready.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mv643xx_eth_shared_private = type { i64, i32 }

@NO_IRQ = common dso_local global i64 0, align 8
@ETIMEDOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mv643xx_eth_shared_private*)* @smi_wait_ready to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @smi_wait_ready(%struct.mv643xx_eth_shared_private* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mv643xx_eth_shared_private*, align 8
  %4 = alloca i32, align 4
  store %struct.mv643xx_eth_shared_private* %0, %struct.mv643xx_eth_shared_private** %3, align 8
  %5 = load %struct.mv643xx_eth_shared_private*, %struct.mv643xx_eth_shared_private** %3, align 8
  %6 = getelementptr inbounds %struct.mv643xx_eth_shared_private, %struct.mv643xx_eth_shared_private* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = load i64, i64* @NO_IRQ, align 8
  %9 = icmp eq i64 %7, %8
  br i1 %9, label %10, label %28

10:                                               ; preds = %1
  store i32 0, i32* %4, align 4
  br label %11

11:                                               ; preds = %24, %10
  %12 = load %struct.mv643xx_eth_shared_private*, %struct.mv643xx_eth_shared_private** %3, align 8
  %13 = call i32 @smi_is_done(%struct.mv643xx_eth_shared_private* %12)
  %14 = icmp ne i32 %13, 0
  %15 = xor i1 %14, true
  br i1 %15, label %16, label %27

16:                                               ; preds = %11
  %17 = load i32, i32* %4, align 4
  %18 = icmp eq i32 %17, 10
  br i1 %18, label %19, label %22

19:                                               ; preds = %16
  %20 = load i32, i32* @ETIMEDOUT, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %2, align 4
  br label %48

22:                                               ; preds = %16
  %23 = call i32 @msleep(i32 10)
  br label %24

24:                                               ; preds = %22
  %25 = load i32, i32* %4, align 4
  %26 = add nsw i32 %25, 1
  store i32 %26, i32* %4, align 4
  br label %11

27:                                               ; preds = %11
  store i32 0, i32* %2, align 4
  br label %48

28:                                               ; preds = %1
  %29 = load %struct.mv643xx_eth_shared_private*, %struct.mv643xx_eth_shared_private** %3, align 8
  %30 = call i32 @smi_is_done(%struct.mv643xx_eth_shared_private* %29)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %47, label %32

32:                                               ; preds = %28
  %33 = load %struct.mv643xx_eth_shared_private*, %struct.mv643xx_eth_shared_private** %3, align 8
  %34 = getelementptr inbounds %struct.mv643xx_eth_shared_private, %struct.mv643xx_eth_shared_private* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  %36 = load %struct.mv643xx_eth_shared_private*, %struct.mv643xx_eth_shared_private** %3, align 8
  %37 = call i32 @smi_is_done(%struct.mv643xx_eth_shared_private* %36)
  %38 = call i32 @msecs_to_jiffies(i32 100)
  %39 = call i32 @wait_event_timeout(i32 %35, i32 %37, i32 %38)
  %40 = load %struct.mv643xx_eth_shared_private*, %struct.mv643xx_eth_shared_private** %3, align 8
  %41 = call i32 @smi_is_done(%struct.mv643xx_eth_shared_private* %40)
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %46, label %43

43:                                               ; preds = %32
  %44 = load i32, i32* @ETIMEDOUT, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %2, align 4
  br label %48

46:                                               ; preds = %32
  br label %47

47:                                               ; preds = %46, %28
  store i32 0, i32* %2, align 4
  br label %48

48:                                               ; preds = %47, %43, %27, %19
  %49 = load i32, i32* %2, align 4
  ret i32 %49
}

declare dso_local i32 @smi_is_done(%struct.mv643xx_eth_shared_private*) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @wait_event_timeout(i32, i32, i32) #1

declare dso_local i32 @msecs_to_jiffies(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
