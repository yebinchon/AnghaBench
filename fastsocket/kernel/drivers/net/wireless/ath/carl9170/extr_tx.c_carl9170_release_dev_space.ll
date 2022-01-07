; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/carl9170/extr_tx.c_carl9170_release_dev_space.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/carl9170/extr_tx.c_carl9170_release_dev_space.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ar9170 = type { i32, i32, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32 }
%struct.sk_buff = type { i32, i64 }
%struct._carl9170_tx_superframe = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ar9170*, %struct.sk_buff*)* @carl9170_release_dev_space to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @carl9170_release_dev_space(%struct.ar9170* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca %struct.ar9170*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct._carl9170_tx_superframe*, align 8
  %6 = alloca i32, align 4
  store %struct.ar9170* %0, %struct.ar9170** %3, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %4, align 8
  %7 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %8 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %7, i32 0, i32 1
  %9 = load i64, i64* %8, align 8
  %10 = inttoptr i64 %9 to i8*
  %11 = bitcast i8* %10 to %struct._carl9170_tx_superframe*
  store %struct._carl9170_tx_superframe* %11, %struct._carl9170_tx_superframe** %5, align 8
  %12 = load %struct._carl9170_tx_superframe*, %struct._carl9170_tx_superframe** %5, align 8
  %13 = getelementptr inbounds %struct._carl9170_tx_superframe, %struct._carl9170_tx_superframe* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  store i32 %15, i32* %6, align 4
  %16 = load %struct._carl9170_tx_superframe*, %struct._carl9170_tx_superframe** %5, align 8
  %17 = getelementptr inbounds %struct._carl9170_tx_superframe, %struct._carl9170_tx_superframe* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  store i32 0, i32* %18, align 4
  %19 = load i32, i32* %6, align 4
  %20 = icmp eq i32 %19, 0
  %21 = zext i1 %20 to i32
  %22 = call i64 @WARN_ON_ONCE(i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %34, label %24

24:                                               ; preds = %2
  %25 = load i32, i32* %6, align 4
  %26 = load %struct.ar9170*, %struct.ar9170** %3, align 8
  %27 = getelementptr inbounds %struct.ar9170, %struct.ar9170* %26, i32 0, i32 3
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = icmp sgt i32 %25, %29
  %31 = zext i1 %30 to i32
  %32 = call i64 @WARN_ON_ONCE(i32 %31)
  %33 = icmp ne i64 %32, 0
  br label %34

34:                                               ; preds = %24, %2
  %35 = phi i1 [ true, %2 ], [ %33, %24 ]
  %36 = zext i1 %35 to i32
  %37 = call i64 @unlikely(i32 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %34
  br label %64

40:                                               ; preds = %34
  %41 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %42 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = load %struct.ar9170*, %struct.ar9170** %3, align 8
  %45 = getelementptr inbounds %struct.ar9170, %struct.ar9170* %44, i32 0, i32 3
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @DIV_ROUND_UP(i32 %43, i32 %47)
  %49 = load %struct.ar9170*, %struct.ar9170** %3, align 8
  %50 = getelementptr inbounds %struct.ar9170, %struct.ar9170* %49, i32 0, i32 2
  %51 = call i32 @atomic_add(i32 %48, i32* %50)
  %52 = load %struct.ar9170*, %struct.ar9170** %3, align 8
  %53 = getelementptr inbounds %struct.ar9170, %struct.ar9170* %52, i32 0, i32 0
  %54 = call i32 @spin_lock_bh(i32* %53)
  %55 = load %struct.ar9170*, %struct.ar9170** %3, align 8
  %56 = getelementptr inbounds %struct.ar9170, %struct.ar9170* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* %6, align 4
  %59 = sub nsw i32 %58, 1
  %60 = call i32 @bitmap_release_region(i32 %57, i32 %59, i32 0)
  %61 = load %struct.ar9170*, %struct.ar9170** %3, align 8
  %62 = getelementptr inbounds %struct.ar9170, %struct.ar9170* %61, i32 0, i32 0
  %63 = call i32 @spin_unlock_bh(i32* %62)
  br label %64

64:                                               ; preds = %40, %39
  ret void
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @WARN_ON_ONCE(i32) #1

declare dso_local i32 @atomic_add(i32, i32*) #1

declare dso_local i32 @DIV_ROUND_UP(i32, i32) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @bitmap_release_region(i32, i32, i32) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
