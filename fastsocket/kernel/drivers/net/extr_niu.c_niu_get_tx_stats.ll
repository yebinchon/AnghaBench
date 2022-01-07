; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_niu.c_niu_get_tx_stats.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_niu.c_niu_get_tx_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.niu = type { i32, %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64, i64, i64 }
%struct.tx_ring_info = type { i64, i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.niu*)* @niu_get_tx_stats to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @niu_get_tx_stats(%struct.niu* %0) #0 {
  %2 = alloca %struct.niu*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.tx_ring_info*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.tx_ring_info*, align 8
  store %struct.niu* %0, %struct.niu** %2, align 8
  store i64 0, i64* %5, align 8
  store i64 0, i64* %4, align 8
  store i64 0, i64* %3, align 8
  %9 = load %struct.niu*, %struct.niu** %2, align 8
  %10 = getelementptr inbounds %struct.niu, %struct.niu* %9, i32 0, i32 2
  %11 = load i32, i32* %10, align 8
  %12 = call %struct.tx_ring_info* @ACCESS_ONCE(i32 %11)
  store %struct.tx_ring_info* %12, %struct.tx_ring_info** %6, align 8
  %13 = load %struct.tx_ring_info*, %struct.tx_ring_info** %6, align 8
  %14 = icmp ne %struct.tx_ring_info* %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %1
  br label %47

16:                                               ; preds = %1
  store i32 0, i32* %7, align 4
  br label %17

17:                                               ; preds = %43, %16
  %18 = load i32, i32* %7, align 4
  %19 = load %struct.niu*, %struct.niu** %2, align 8
  %20 = getelementptr inbounds %struct.niu, %struct.niu* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = icmp slt i32 %18, %21
  br i1 %22, label %23, label %46

23:                                               ; preds = %17
  %24 = load %struct.tx_ring_info*, %struct.tx_ring_info** %6, align 8
  %25 = load i32, i32* %7, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.tx_ring_info, %struct.tx_ring_info* %24, i64 %26
  store %struct.tx_ring_info* %27, %struct.tx_ring_info** %8, align 8
  %28 = load %struct.tx_ring_info*, %struct.tx_ring_info** %8, align 8
  %29 = getelementptr inbounds %struct.tx_ring_info, %struct.tx_ring_info* %28, i32 0, i32 2
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* %3, align 8
  %32 = add i64 %31, %30
  store i64 %32, i64* %3, align 8
  %33 = load %struct.tx_ring_info*, %struct.tx_ring_info** %8, align 8
  %34 = getelementptr inbounds %struct.tx_ring_info, %struct.tx_ring_info* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* %5, align 8
  %37 = add i64 %36, %35
  store i64 %37, i64* %5, align 8
  %38 = load %struct.tx_ring_info*, %struct.tx_ring_info** %8, align 8
  %39 = getelementptr inbounds %struct.tx_ring_info, %struct.tx_ring_info* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* %4, align 8
  %42 = add i64 %41, %40
  store i64 %42, i64* %4, align 8
  br label %43

43:                                               ; preds = %23
  %44 = load i32, i32* %7, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %7, align 4
  br label %17

46:                                               ; preds = %17
  br label %47

47:                                               ; preds = %46, %15
  %48 = load i64, i64* %3, align 8
  %49 = load %struct.niu*, %struct.niu** %2, align 8
  %50 = getelementptr inbounds %struct.niu, %struct.niu* %49, i32 0, i32 1
  %51 = load %struct.TYPE_4__*, %struct.TYPE_4__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 0
  store i64 %48, i64* %53, align 8
  %54 = load i64, i64* %5, align 8
  %55 = load %struct.niu*, %struct.niu** %2, align 8
  %56 = getelementptr inbounds %struct.niu, %struct.niu* %55, i32 0, i32 1
  %57 = load %struct.TYPE_4__*, %struct.TYPE_4__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 1
  store i64 %54, i64* %59, align 8
  %60 = load i64, i64* %4, align 8
  %61 = load %struct.niu*, %struct.niu** %2, align 8
  %62 = getelementptr inbounds %struct.niu, %struct.niu* %61, i32 0, i32 1
  %63 = load %struct.TYPE_4__*, %struct.TYPE_4__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %64, i32 0, i32 2
  store i64 %60, i64* %65, align 8
  ret void
}

declare dso_local %struct.tx_ring_info* @ACCESS_ONCE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
