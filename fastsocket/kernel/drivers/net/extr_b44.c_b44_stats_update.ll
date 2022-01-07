; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_b44.c_b44_stats_update.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_b44.c_b44_stats_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.b44 = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@B44_TX_GOOD_O = common dso_local global i64 0, align 8
@B44_TX_PAUSE = common dso_local global i64 0, align 8
@B44_RX_GOOD_O = common dso_local global i64 0, align 8
@B44_RX_NPAUSE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.b44*)* @b44_stats_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @b44_stats_update(%struct.b44* %0) #0 {
  %2 = alloca %struct.b44*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32*, align 8
  store %struct.b44* %0, %struct.b44** %2, align 8
  %5 = load %struct.b44*, %struct.b44** %2, align 8
  %6 = getelementptr inbounds %struct.b44, %struct.b44* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  store i32* %7, i32** %4, align 8
  %8 = load i64, i64* @B44_TX_GOOD_O, align 8
  store i64 %8, i64* %3, align 8
  br label %9

9:                                                ; preds = %23, %1
  %10 = load i64, i64* %3, align 8
  %11 = load i64, i64* @B44_TX_PAUSE, align 8
  %12 = icmp ule i64 %10, %11
  br i1 %12, label %13, label %26

13:                                               ; preds = %9
  %14 = load %struct.b44*, %struct.b44** %2, align 8
  %15 = load i64, i64* %3, align 8
  %16 = call i64 @br32(%struct.b44* %14, i64 %15)
  %17 = load i32*, i32** %4, align 8
  %18 = getelementptr inbounds i32, i32* %17, i32 1
  store i32* %18, i32** %4, align 8
  %19 = load i32, i32* %17, align 4
  %20 = sext i32 %19 to i64
  %21 = add nsw i64 %20, %16
  %22 = trunc i64 %21 to i32
  store i32 %22, i32* %17, align 4
  br label %23

23:                                               ; preds = %13
  %24 = load i64, i64* %3, align 8
  %25 = add i64 %24, 4
  store i64 %25, i64* %3, align 8
  br label %9

26:                                               ; preds = %9
  %27 = load i64, i64* %3, align 8
  %28 = add i64 %27, 32
  store i64 %28, i64* %3, align 8
  %29 = load i64, i64* @B44_RX_GOOD_O, align 8
  store i64 %29, i64* %3, align 8
  br label %30

30:                                               ; preds = %44, %26
  %31 = load i64, i64* %3, align 8
  %32 = load i64, i64* @B44_RX_NPAUSE, align 8
  %33 = icmp ule i64 %31, %32
  br i1 %33, label %34, label %47

34:                                               ; preds = %30
  %35 = load %struct.b44*, %struct.b44** %2, align 8
  %36 = load i64, i64* %3, align 8
  %37 = call i64 @br32(%struct.b44* %35, i64 %36)
  %38 = load i32*, i32** %4, align 8
  %39 = getelementptr inbounds i32, i32* %38, i32 1
  store i32* %39, i32** %4, align 8
  %40 = load i32, i32* %38, align 4
  %41 = sext i32 %40 to i64
  %42 = add nsw i64 %41, %37
  %43 = trunc i64 %42 to i32
  store i32 %43, i32* %38, align 4
  br label %44

44:                                               ; preds = %34
  %45 = load i64, i64* %3, align 8
  %46 = add i64 %45, 4
  store i64 %46, i64* %3, align 8
  br label %30

47:                                               ; preds = %30
  ret void
}

declare dso_local i64 @br32(%struct.b44*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
