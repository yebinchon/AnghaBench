; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_niu.c_niu_get_rx_stats.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_niu.c_niu_get_rx_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.niu = type { i32, %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64, i64, i64, i64 }
%struct.rx_ring_info = type { i64, i64, i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.niu*)* @niu_get_rx_stats to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @niu_get_rx_stats(%struct.niu* %0) #0 {
  %2 = alloca %struct.niu*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.rx_ring_info*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.rx_ring_info*, align 8
  store %struct.niu* %0, %struct.niu** %2, align 8
  store i64 0, i64* %6, align 8
  store i64 0, i64* %5, align 8
  store i64 0, i64* %4, align 8
  store i64 0, i64* %3, align 8
  %10 = load %struct.niu*, %struct.niu** %2, align 8
  %11 = getelementptr inbounds %struct.niu, %struct.niu* %10, i32 0, i32 2
  %12 = load i32, i32* %11, align 8
  %13 = call %struct.rx_ring_info* @ACCESS_ONCE(i32 %12)
  store %struct.rx_ring_info* %13, %struct.rx_ring_info** %7, align 8
  %14 = load %struct.rx_ring_info*, %struct.rx_ring_info** %7, align 8
  %15 = icmp ne %struct.rx_ring_info* %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %1
  br label %56

17:                                               ; preds = %1
  store i32 0, i32* %8, align 4
  br label %18

18:                                               ; preds = %52, %17
  %19 = load i32, i32* %8, align 4
  %20 = load %struct.niu*, %struct.niu** %2, align 8
  %21 = getelementptr inbounds %struct.niu, %struct.niu* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = icmp slt i32 %19, %22
  br i1 %23, label %24, label %55

24:                                               ; preds = %18
  %25 = load %struct.rx_ring_info*, %struct.rx_ring_info** %7, align 8
  %26 = load i32, i32* %8, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.rx_ring_info, %struct.rx_ring_info* %25, i64 %27
  store %struct.rx_ring_info* %28, %struct.rx_ring_info** %9, align 8
  %29 = load %struct.niu*, %struct.niu** %2, align 8
  %30 = load %struct.rx_ring_info*, %struct.rx_ring_info** %9, align 8
  %31 = call i32 @niu_sync_rx_discard_stats(%struct.niu* %29, %struct.rx_ring_info* %30, i32 0)
  %32 = load %struct.rx_ring_info*, %struct.rx_ring_info** %9, align 8
  %33 = getelementptr inbounds %struct.rx_ring_info, %struct.rx_ring_info* %32, i32 0, i32 3
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* %3, align 8
  %36 = add i64 %35, %34
  store i64 %36, i64* %3, align 8
  %37 = load %struct.rx_ring_info*, %struct.rx_ring_info** %9, align 8
  %38 = getelementptr inbounds %struct.rx_ring_info, %struct.rx_ring_info* %37, i32 0, i32 2
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* %6, align 8
  %41 = add i64 %40, %39
  store i64 %41, i64* %6, align 8
  %42 = load %struct.rx_ring_info*, %struct.rx_ring_info** %9, align 8
  %43 = getelementptr inbounds %struct.rx_ring_info, %struct.rx_ring_info* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* %4, align 8
  %46 = add i64 %45, %44
  store i64 %46, i64* %4, align 8
  %47 = load %struct.rx_ring_info*, %struct.rx_ring_info** %9, align 8
  %48 = getelementptr inbounds %struct.rx_ring_info, %struct.rx_ring_info* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* %5, align 8
  %51 = add i64 %50, %49
  store i64 %51, i64* %5, align 8
  br label %52

52:                                               ; preds = %24
  %53 = load i32, i32* %8, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %8, align 4
  br label %18

55:                                               ; preds = %18
  br label %56

56:                                               ; preds = %55, %16
  %57 = load i64, i64* %3, align 8
  %58 = load %struct.niu*, %struct.niu** %2, align 8
  %59 = getelementptr inbounds %struct.niu, %struct.niu* %58, i32 0, i32 1
  %60 = load %struct.TYPE_4__*, %struct.TYPE_4__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i32 0, i32 0
  store i64 %57, i64* %62, align 8
  %63 = load i64, i64* %6, align 8
  %64 = load %struct.niu*, %struct.niu** %2, align 8
  %65 = getelementptr inbounds %struct.niu, %struct.niu* %64, i32 0, i32 1
  %66 = load %struct.TYPE_4__*, %struct.TYPE_4__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i32 0, i32 1
  store i64 %63, i64* %68, align 8
  %69 = load i64, i64* %4, align 8
  %70 = load %struct.niu*, %struct.niu** %2, align 8
  %71 = getelementptr inbounds %struct.niu, %struct.niu* %70, i32 0, i32 1
  %72 = load %struct.TYPE_4__*, %struct.TYPE_4__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %73, i32 0, i32 2
  store i64 %69, i64* %74, align 8
  %75 = load i64, i64* %5, align 8
  %76 = load %struct.niu*, %struct.niu** %2, align 8
  %77 = getelementptr inbounds %struct.niu, %struct.niu* %76, i32 0, i32 1
  %78 = load %struct.TYPE_4__*, %struct.TYPE_4__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %79, i32 0, i32 3
  store i64 %75, i64* %80, align 8
  ret void
}

declare dso_local %struct.rx_ring_info* @ACCESS_ONCE(i32) #1

declare dso_local i32 @niu_sync_rx_discard_stats(%struct.niu*, %struct.rx_ring_info*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
