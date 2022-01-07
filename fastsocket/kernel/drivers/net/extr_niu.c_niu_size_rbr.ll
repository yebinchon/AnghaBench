; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_niu.c_niu_size_rbr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_niu.c_niu_size_rbr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.niu = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }
%struct.rx_ring_info = type { i32, i32, i32* }

@PAGE_SHIFT = common dso_local global i32 0, align 4
@ETH_DATA_LEN = common dso_local global i64 0, align 8
@PAGE_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.niu*, %struct.rx_ring_info*)* @niu_size_rbr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @niu_size_rbr(%struct.niu* %0, %struct.rx_ring_info* %1) #0 {
  %3 = alloca %struct.niu*, align 8
  %4 = alloca %struct.rx_ring_info*, align 8
  %5 = alloca i32, align 4
  store %struct.niu* %0, %struct.niu** %3, align 8
  store %struct.rx_ring_info* %1, %struct.rx_ring_info** %4, align 8
  %6 = load i32, i32* @PAGE_SHIFT, align 4
  %7 = call i32 @min(i32 %6, i32 15)
  store i32 %7, i32* %5, align 4
  %8 = load i32, i32* %5, align 4
  %9 = shl i32 1, %8
  %10 = load %struct.rx_ring_info*, %struct.rx_ring_info** %4, align 8
  %11 = getelementptr inbounds %struct.rx_ring_info, %struct.rx_ring_info* %10, i32 0, i32 0
  store i32 %9, i32* %11, align 8
  %12 = load i32, i32* @PAGE_SHIFT, align 4
  %13 = load i32, i32* %5, align 4
  %14 = sub nsw i32 %12, %13
  %15 = shl i32 1, %14
  %16 = load %struct.rx_ring_info*, %struct.rx_ring_info** %4, align 8
  %17 = getelementptr inbounds %struct.rx_ring_info, %struct.rx_ring_info* %16, i32 0, i32 1
  store i32 %15, i32* %17, align 4
  %18 = load %struct.rx_ring_info*, %struct.rx_ring_info** %4, align 8
  %19 = getelementptr inbounds %struct.rx_ring_info, %struct.rx_ring_info* %18, i32 0, i32 2
  %20 = load i32*, i32** %19, align 8
  %21 = getelementptr inbounds i32, i32* %20, i64 0
  store i32 256, i32* %21, align 4
  %22 = load %struct.rx_ring_info*, %struct.rx_ring_info** %4, align 8
  %23 = getelementptr inbounds %struct.rx_ring_info, %struct.rx_ring_info* %22, i32 0, i32 2
  %24 = load i32*, i32** %23, align 8
  %25 = getelementptr inbounds i32, i32* %24, i64 1
  store i32 1024, i32* %25, align 4
  %26 = load %struct.niu*, %struct.niu** %3, align 8
  %27 = getelementptr inbounds %struct.niu, %struct.niu* %26, i32 0, i32 0
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @ETH_DATA_LEN, align 8
  %32 = icmp sgt i64 %30, %31
  br i1 %32, label %33, label %46

33:                                               ; preds = %2
  %34 = load i32, i32* @PAGE_SIZE, align 4
  switch i32 %34, label %40 [
    i32 4096, label %35
  ]

35:                                               ; preds = %33
  %36 = load %struct.rx_ring_info*, %struct.rx_ring_info** %4, align 8
  %37 = getelementptr inbounds %struct.rx_ring_info, %struct.rx_ring_info* %36, i32 0, i32 2
  %38 = load i32*, i32** %37, align 8
  %39 = getelementptr inbounds i32, i32* %38, i64 2
  store i32 4096, i32* %39, align 4
  br label %45

40:                                               ; preds = %33
  %41 = load %struct.rx_ring_info*, %struct.rx_ring_info** %4, align 8
  %42 = getelementptr inbounds %struct.rx_ring_info, %struct.rx_ring_info* %41, i32 0, i32 2
  %43 = load i32*, i32** %42, align 8
  %44 = getelementptr inbounds i32, i32* %43, i64 2
  store i32 8192, i32* %44, align 4
  br label %45

45:                                               ; preds = %40, %35
  br label %51

46:                                               ; preds = %2
  %47 = load %struct.rx_ring_info*, %struct.rx_ring_info** %4, align 8
  %48 = getelementptr inbounds %struct.rx_ring_info, %struct.rx_ring_info* %47, i32 0, i32 2
  %49 = load i32*, i32** %48, align 8
  %50 = getelementptr inbounds i32, i32* %49, i64 2
  store i32 2048, i32* %50, align 4
  br label %51

51:                                               ; preds = %46, %45
  %52 = load %struct.rx_ring_info*, %struct.rx_ring_info** %4, align 8
  %53 = getelementptr inbounds %struct.rx_ring_info, %struct.rx_ring_info* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = load %struct.rx_ring_info*, %struct.rx_ring_info** %4, align 8
  %56 = getelementptr inbounds %struct.rx_ring_info, %struct.rx_ring_info* %55, i32 0, i32 2
  %57 = load i32*, i32** %56, align 8
  %58 = getelementptr inbounds i32, i32* %57, i64 3
  store i32 %54, i32* %58, align 4
  ret void
}

declare dso_local i32 @min(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
