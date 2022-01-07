; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_ioc3-eth.c_ioc3_free_rings.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_ioc3-eth.c_ioc3_free_rings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ioc3_private = type { i32, i32, i32*, %struct.sk_buff**, i32* }
%struct.sk_buff = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ioc3_private*)* @ioc3_free_rings to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ioc3_free_rings(%struct.ioc3_private* %0) #0 {
  %2 = alloca %struct.ioc3_private*, align 8
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.ioc3_private* %0, %struct.ioc3_private** %2, align 8
  %6 = load %struct.ioc3_private*, %struct.ioc3_private** %2, align 8
  %7 = getelementptr inbounds %struct.ioc3_private, %struct.ioc3_private* %6, i32 0, i32 4
  %8 = load i32*, i32** %7, align 8
  %9 = icmp ne i32* %8, null
  br i1 %9, label %10, label %20

10:                                               ; preds = %1
  %11 = load %struct.ioc3_private*, %struct.ioc3_private** %2, align 8
  %12 = call i32 @ioc3_clean_tx_ring(%struct.ioc3_private* %11)
  %13 = load %struct.ioc3_private*, %struct.ioc3_private** %2, align 8
  %14 = getelementptr inbounds %struct.ioc3_private, %struct.ioc3_private* %13, i32 0, i32 4
  %15 = load i32*, i32** %14, align 8
  %16 = ptrtoint i32* %15 to i64
  %17 = call i32 @free_pages(i64 %16, i32 2)
  %18 = load %struct.ioc3_private*, %struct.ioc3_private** %2, align 8
  %19 = getelementptr inbounds %struct.ioc3_private, %struct.ioc3_private* %18, i32 0, i32 4
  store i32* null, i32** %19, align 8
  br label %20

20:                                               ; preds = %10, %1
  %21 = load %struct.ioc3_private*, %struct.ioc3_private** %2, align 8
  %22 = getelementptr inbounds %struct.ioc3_private, %struct.ioc3_private* %21, i32 0, i32 2
  %23 = load i32*, i32** %22, align 8
  %24 = icmp ne i32* %23, null
  br i1 %24, label %25, label %61

25:                                               ; preds = %20
  %26 = load %struct.ioc3_private*, %struct.ioc3_private** %2, align 8
  %27 = getelementptr inbounds %struct.ioc3_private, %struct.ioc3_private* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  store i32 %28, i32* %5, align 4
  %29 = load %struct.ioc3_private*, %struct.ioc3_private** %2, align 8
  %30 = getelementptr inbounds %struct.ioc3_private, %struct.ioc3_private* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  store i32 %31, i32* %4, align 4
  br label %32

32:                                               ; preds = %49, %25
  %33 = load i32, i32* %5, align 4
  %34 = load i32, i32* %4, align 4
  %35 = icmp ne i32 %33, %34
  br i1 %35, label %36, label %53

36:                                               ; preds = %32
  %37 = load %struct.ioc3_private*, %struct.ioc3_private** %2, align 8
  %38 = getelementptr inbounds %struct.ioc3_private, %struct.ioc3_private* %37, i32 0, i32 3
  %39 = load %struct.sk_buff**, %struct.sk_buff*** %38, align 8
  %40 = load i32, i32* %5, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.sk_buff*, %struct.sk_buff** %39, i64 %41
  %43 = load %struct.sk_buff*, %struct.sk_buff** %42, align 8
  store %struct.sk_buff* %43, %struct.sk_buff** %3, align 8
  %44 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %45 = icmp ne %struct.sk_buff* %44, null
  br i1 %45, label %46, label %49

46:                                               ; preds = %36
  %47 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %48 = call i32 @dev_kfree_skb_any(%struct.sk_buff* %47)
  br label %49

49:                                               ; preds = %46, %36
  %50 = load i32, i32* %5, align 4
  %51 = add nsw i32 %50, 1
  %52 = and i32 %51, 511
  store i32 %52, i32* %5, align 4
  br label %32

53:                                               ; preds = %32
  %54 = load %struct.ioc3_private*, %struct.ioc3_private** %2, align 8
  %55 = getelementptr inbounds %struct.ioc3_private, %struct.ioc3_private* %54, i32 0, i32 2
  %56 = load i32*, i32** %55, align 8
  %57 = ptrtoint i32* %56 to i64
  %58 = call i32 @free_page(i64 %57)
  %59 = load %struct.ioc3_private*, %struct.ioc3_private** %2, align 8
  %60 = getelementptr inbounds %struct.ioc3_private, %struct.ioc3_private* %59, i32 0, i32 2
  store i32* null, i32** %60, align 8
  br label %61

61:                                               ; preds = %53, %20
  ret void
}

declare dso_local i32 @ioc3_clean_tx_ring(%struct.ioc3_private*) #1

declare dso_local i32 @free_pages(i64, i32) #1

declare dso_local i32 @dev_kfree_skb_any(%struct.sk_buff*) #1

declare dso_local i32 @free_page(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
