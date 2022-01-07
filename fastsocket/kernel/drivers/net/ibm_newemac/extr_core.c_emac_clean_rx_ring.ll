; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ibm_newemac/extr_core.c_emac_clean_rx_ring.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ibm_newemac/extr_core.c_emac_clean_rx_ring.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.emac_instance = type { i32*, %struct.TYPE_2__*, i32** }
%struct.TYPE_2__ = type { i64, i64 }

@NUM_RX_BUFF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.emac_instance*)* @emac_clean_rx_ring to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @emac_clean_rx_ring(%struct.emac_instance* %0) #0 {
  %2 = alloca %struct.emac_instance*, align 8
  %3 = alloca i32, align 4
  store %struct.emac_instance* %0, %struct.emac_instance** %2, align 8
  store i32 0, i32* %3, align 4
  br label %4

4:                                                ; preds = %47, %1
  %5 = load i32, i32* %3, align 4
  %6 = load i32, i32* @NUM_RX_BUFF, align 4
  %7 = icmp slt i32 %5, %6
  br i1 %7, label %8, label %50

8:                                                ; preds = %4
  %9 = load %struct.emac_instance*, %struct.emac_instance** %2, align 8
  %10 = getelementptr inbounds %struct.emac_instance, %struct.emac_instance* %9, i32 0, i32 2
  %11 = load i32**, i32*** %10, align 8
  %12 = load i32, i32* %3, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds i32*, i32** %11, i64 %13
  %15 = load i32*, i32** %14, align 8
  %16 = icmp ne i32* %15, null
  br i1 %16, label %17, label %46

17:                                               ; preds = %8
  %18 = load %struct.emac_instance*, %struct.emac_instance** %2, align 8
  %19 = getelementptr inbounds %struct.emac_instance, %struct.emac_instance* %18, i32 0, i32 1
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = load i32, i32* %3, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i64 %22
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 1
  store i64 0, i64* %24, align 8
  %25 = load %struct.emac_instance*, %struct.emac_instance** %2, align 8
  %26 = getelementptr inbounds %struct.emac_instance, %struct.emac_instance* %25, i32 0, i32 2
  %27 = load i32**, i32*** %26, align 8
  %28 = load i32, i32* %3, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i32*, i32** %27, i64 %29
  %31 = load i32*, i32** %30, align 8
  %32 = call i32 @dev_kfree_skb(i32* %31)
  %33 = load %struct.emac_instance*, %struct.emac_instance** %2, align 8
  %34 = getelementptr inbounds %struct.emac_instance, %struct.emac_instance* %33, i32 0, i32 2
  %35 = load i32**, i32*** %34, align 8
  %36 = load i32, i32* %3, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i32*, i32** %35, i64 %37
  store i32* null, i32** %38, align 8
  %39 = load %struct.emac_instance*, %struct.emac_instance** %2, align 8
  %40 = getelementptr inbounds %struct.emac_instance, %struct.emac_instance* %39, i32 0, i32 1
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** %40, align 8
  %42 = load i32, i32* %3, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i64 %43
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  store i64 0, i64* %45, align 8
  br label %46

46:                                               ; preds = %17, %8
  br label %47

47:                                               ; preds = %46
  %48 = load i32, i32* %3, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %3, align 4
  br label %4

50:                                               ; preds = %4
  %51 = load %struct.emac_instance*, %struct.emac_instance** %2, align 8
  %52 = getelementptr inbounds %struct.emac_instance, %struct.emac_instance* %51, i32 0, i32 0
  %53 = load i32*, i32** %52, align 8
  %54 = icmp ne i32* %53, null
  br i1 %54, label %55, label %62

55:                                               ; preds = %50
  %56 = load %struct.emac_instance*, %struct.emac_instance** %2, align 8
  %57 = getelementptr inbounds %struct.emac_instance, %struct.emac_instance* %56, i32 0, i32 0
  %58 = load i32*, i32** %57, align 8
  %59 = call i32 @dev_kfree_skb(i32* %58)
  %60 = load %struct.emac_instance*, %struct.emac_instance** %2, align 8
  %61 = getelementptr inbounds %struct.emac_instance, %struct.emac_instance* %60, i32 0, i32 0
  store i32* null, i32** %61, align 8
  br label %62

62:                                               ; preds = %55, %50
  ret void
}

declare dso_local i32 @dev_kfree_skb(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
