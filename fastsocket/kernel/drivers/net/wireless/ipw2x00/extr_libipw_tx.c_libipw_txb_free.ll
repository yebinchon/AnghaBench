; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ipw2x00/extr_libipw_tx.c_libipw_txb_free.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ipw2x00/extr_libipw_tx.c_libipw_txb_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.libipw_txb = type { i32, i64* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @libipw_txb_free(%struct.libipw_txb* %0) #0 {
  %2 = alloca %struct.libipw_txb*, align 8
  %3 = alloca i32, align 4
  store %struct.libipw_txb* %0, %struct.libipw_txb** %2, align 8
  %4 = load %struct.libipw_txb*, %struct.libipw_txb** %2, align 8
  %5 = icmp ne %struct.libipw_txb* %4, null
  %6 = xor i1 %5, true
  %7 = zext i1 %6 to i32
  %8 = call i64 @unlikely(i32 %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  br label %43

11:                                               ; preds = %1
  store i32 0, i32* %3, align 4
  br label %12

12:                                               ; preds = %37, %11
  %13 = load i32, i32* %3, align 4
  %14 = load %struct.libipw_txb*, %struct.libipw_txb** %2, align 8
  %15 = getelementptr inbounds %struct.libipw_txb, %struct.libipw_txb* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = icmp slt i32 %13, %16
  br i1 %17, label %18, label %40

18:                                               ; preds = %12
  %19 = load %struct.libipw_txb*, %struct.libipw_txb** %2, align 8
  %20 = getelementptr inbounds %struct.libipw_txb, %struct.libipw_txb* %19, i32 0, i32 1
  %21 = load i64*, i64** %20, align 8
  %22 = load i32, i32* %3, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i64, i64* %21, i64 %23
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %36

27:                                               ; preds = %18
  %28 = load %struct.libipw_txb*, %struct.libipw_txb** %2, align 8
  %29 = getelementptr inbounds %struct.libipw_txb, %struct.libipw_txb* %28, i32 0, i32 1
  %30 = load i64*, i64** %29, align 8
  %31 = load i32, i32* %3, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i64, i64* %30, i64 %32
  %34 = load i64, i64* %33, align 8
  %35 = call i32 @dev_kfree_skb_any(i64 %34)
  br label %36

36:                                               ; preds = %27, %18
  br label %37

37:                                               ; preds = %36
  %38 = load i32, i32* %3, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %3, align 4
  br label %12

40:                                               ; preds = %12
  %41 = load %struct.libipw_txb*, %struct.libipw_txb** %2, align 8
  %42 = call i32 @kfree(%struct.libipw_txb* %41)
  br label %43

43:                                               ; preds = %40, %10
  ret void
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @dev_kfree_skb_any(i64) #1

declare dso_local i32 @kfree(%struct.libipw_txb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
