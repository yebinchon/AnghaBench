; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_ioc3-eth.c_ioc3_tx.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_ioc3-eth.c_ioc3_tx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ioc3_private = type { i32, i64, i32, %struct.TYPE_2__, %struct.sk_buff**, %struct.ioc3* }
%struct.TYPE_2__ = type { i64, i64 }
%struct.sk_buff = type { i64 }
%struct.ioc3 = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ioc3_private*)* @ioc3_tx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ioc3_tx(%struct.ioc3_private* %0) #0 {
  %2 = alloca %struct.ioc3_private*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.ioc3*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.sk_buff*, align 8
  %9 = alloca i32, align 4
  store %struct.ioc3_private* %0, %struct.ioc3_private** %2, align 8
  %10 = load %struct.ioc3_private*, %struct.ioc3_private** %2, align 8
  %11 = getelementptr inbounds %struct.ioc3_private, %struct.ioc3_private* %10, i32 0, i32 5
  %12 = load %struct.ioc3*, %struct.ioc3** %11, align 8
  store %struct.ioc3* %12, %struct.ioc3** %5, align 8
  %13 = load %struct.ioc3_private*, %struct.ioc3_private** %2, align 8
  %14 = getelementptr inbounds %struct.ioc3_private, %struct.ioc3_private* %13, i32 0, i32 2
  %15 = call i32 @spin_lock(i32* %14)
  %16 = call i32 (...) @ioc3_r_etcir()
  store i32 %16, i32* %9, align 4
  %17 = load i32, i32* %9, align 4
  %18 = ashr i32 %17, 7
  %19 = and i32 %18, 127
  store i32 %19, i32* %6, align 4
  %20 = load %struct.ioc3_private*, %struct.ioc3_private** %2, align 8
  %21 = getelementptr inbounds %struct.ioc3_private, %struct.ioc3_private* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  store i32 %22, i32* %7, align 4
  store i64 0, i64* %3, align 8
  store i64 0, i64* %4, align 8
  br label %23

23:                                               ; preds = %27, %1
  %24 = load i32, i32* %7, align 4
  %25 = load i32, i32* %6, align 4
  %26 = icmp ne i32 %24, %25
  br i1 %26, label %27, label %57

27:                                               ; preds = %23
  %28 = load i64, i64* %3, align 8
  %29 = add i64 %28, 1
  store i64 %29, i64* %3, align 8
  %30 = load %struct.ioc3_private*, %struct.ioc3_private** %2, align 8
  %31 = getelementptr inbounds %struct.ioc3_private, %struct.ioc3_private* %30, i32 0, i32 4
  %32 = load %struct.sk_buff**, %struct.sk_buff*** %31, align 8
  %33 = load i32, i32* %7, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.sk_buff*, %struct.sk_buff** %32, i64 %34
  %36 = load %struct.sk_buff*, %struct.sk_buff** %35, align 8
  store %struct.sk_buff* %36, %struct.sk_buff** %8, align 8
  %37 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %38 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* %4, align 8
  %41 = add i64 %40, %39
  store i64 %41, i64* %4, align 8
  %42 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %43 = call i32 @dev_kfree_skb_irq(%struct.sk_buff* %42)
  %44 = load %struct.ioc3_private*, %struct.ioc3_private** %2, align 8
  %45 = getelementptr inbounds %struct.ioc3_private, %struct.ioc3_private* %44, i32 0, i32 4
  %46 = load %struct.sk_buff**, %struct.sk_buff*** %45, align 8
  %47 = load i32, i32* %7, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.sk_buff*, %struct.sk_buff** %46, i64 %48
  store %struct.sk_buff* null, %struct.sk_buff** %49, align 8
  %50 = load i32, i32* %7, align 4
  %51 = add nsw i32 %50, 1
  %52 = and i32 %51, 127
  store i32 %52, i32* %7, align 4
  %53 = call i32 (...) @ioc3_r_etcir()
  store i32 %53, i32* %9, align 4
  %54 = load i32, i32* %9, align 4
  %55 = ashr i32 %54, 7
  %56 = and i32 %55, 127
  store i32 %56, i32* %6, align 4
  br label %23

57:                                               ; preds = %23
  %58 = load i64, i64* %3, align 8
  %59 = load %struct.ioc3_private*, %struct.ioc3_private** %2, align 8
  %60 = getelementptr inbounds %struct.ioc3_private, %struct.ioc3_private* %59, i32 0, i32 3
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = add i64 %62, %58
  store i64 %63, i64* %61, align 8
  %64 = load i64, i64* %4, align 8
  %65 = load %struct.ioc3_private*, %struct.ioc3_private** %2, align 8
  %66 = getelementptr inbounds %struct.ioc3_private, %struct.ioc3_private* %65, i32 0, i32 3
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 1
  %68 = load i64, i64* %67, align 8
  %69 = add i64 %68, %64
  store i64 %69, i64* %67, align 8
  %70 = load i64, i64* %3, align 8
  %71 = load %struct.ioc3_private*, %struct.ioc3_private** %2, align 8
  %72 = getelementptr inbounds %struct.ioc3_private, %struct.ioc3_private* %71, i32 0, i32 1
  %73 = load i64, i64* %72, align 8
  %74 = sub i64 %73, %70
  store i64 %74, i64* %72, align 8
  %75 = load %struct.ioc3_private*, %struct.ioc3_private** %2, align 8
  %76 = getelementptr inbounds %struct.ioc3_private, %struct.ioc3_private* %75, i32 0, i32 1
  %77 = load i64, i64* %76, align 8
  %78 = icmp ult i64 %77, 128
  br i1 %78, label %79, label %83

79:                                               ; preds = %57
  %80 = load %struct.ioc3_private*, %struct.ioc3_private** %2, align 8
  %81 = call i32 @priv_netdev(%struct.ioc3_private* %80)
  %82 = call i32 @netif_wake_queue(i32 %81)
  br label %83

83:                                               ; preds = %79, %57
  %84 = load i32, i32* %7, align 4
  %85 = load %struct.ioc3_private*, %struct.ioc3_private** %2, align 8
  %86 = getelementptr inbounds %struct.ioc3_private, %struct.ioc3_private* %85, i32 0, i32 0
  store i32 %84, i32* %86, align 8
  %87 = load %struct.ioc3_private*, %struct.ioc3_private** %2, align 8
  %88 = getelementptr inbounds %struct.ioc3_private, %struct.ioc3_private* %87, i32 0, i32 2
  %89 = call i32 @spin_unlock(i32* %88)
  ret void
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @ioc3_r_etcir(...) #1

declare dso_local i32 @dev_kfree_skb_irq(%struct.sk_buff*) #1

declare dso_local i32 @netif_wake_queue(i32) #1

declare dso_local i32 @priv_netdev(%struct.ioc3_private*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
