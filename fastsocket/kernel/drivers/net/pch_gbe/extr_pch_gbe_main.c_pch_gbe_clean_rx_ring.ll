; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/pch_gbe/extr_pch_gbe_main.c_pch_gbe_clean_rx_ring.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/pch_gbe/extr_pch_gbe_main.c_pch_gbe_clean_rx_ring.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pch_gbe_adapter = type { %struct.pch_gbe_hw }
%struct.pch_gbe_hw = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }
%struct.pch_gbe_rx_ring = type { i32, i64, i32, i64, i64, %struct.pch_gbe_buffer*, %struct.pch_gbe_buffer* }
%struct.pch_gbe_buffer = type { i32 }

@.str = private unnamed_addr constant [52 x i8] c"call pch_gbe_unmap_and_free_rx_resource() %d count\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pch_gbe_adapter*, %struct.pch_gbe_rx_ring*)* @pch_gbe_clean_rx_ring to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pch_gbe_clean_rx_ring(%struct.pch_gbe_adapter* %0, %struct.pch_gbe_rx_ring* %1) #0 {
  %3 = alloca %struct.pch_gbe_adapter*, align 8
  %4 = alloca %struct.pch_gbe_rx_ring*, align 8
  %5 = alloca %struct.pch_gbe_hw*, align 8
  %6 = alloca %struct.pch_gbe_buffer*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.pch_gbe_adapter* %0, %struct.pch_gbe_adapter** %3, align 8
  store %struct.pch_gbe_rx_ring* %1, %struct.pch_gbe_rx_ring** %4, align 8
  %9 = load %struct.pch_gbe_adapter*, %struct.pch_gbe_adapter** %3, align 8
  %10 = getelementptr inbounds %struct.pch_gbe_adapter, %struct.pch_gbe_adapter* %9, i32 0, i32 0
  store %struct.pch_gbe_hw* %10, %struct.pch_gbe_hw** %5, align 8
  store i32 0, i32* %8, align 4
  br label %11

11:                                               ; preds = %27, %2
  %12 = load i32, i32* %8, align 4
  %13 = load %struct.pch_gbe_rx_ring*, %struct.pch_gbe_rx_ring** %4, align 8
  %14 = getelementptr inbounds %struct.pch_gbe_rx_ring, %struct.pch_gbe_rx_ring* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = icmp ult i32 %12, %15
  br i1 %16, label %17, label %30

17:                                               ; preds = %11
  %18 = load %struct.pch_gbe_rx_ring*, %struct.pch_gbe_rx_ring** %4, align 8
  %19 = getelementptr inbounds %struct.pch_gbe_rx_ring, %struct.pch_gbe_rx_ring* %18, i32 0, i32 6
  %20 = load %struct.pch_gbe_buffer*, %struct.pch_gbe_buffer** %19, align 8
  %21 = load i32, i32* %8, align 4
  %22 = zext i32 %21 to i64
  %23 = getelementptr inbounds %struct.pch_gbe_buffer, %struct.pch_gbe_buffer* %20, i64 %22
  store %struct.pch_gbe_buffer* %23, %struct.pch_gbe_buffer** %6, align 8
  %24 = load %struct.pch_gbe_adapter*, %struct.pch_gbe_adapter** %3, align 8
  %25 = load %struct.pch_gbe_buffer*, %struct.pch_gbe_buffer** %6, align 8
  %26 = call i32 @pch_gbe_unmap_and_free_rx_resource(%struct.pch_gbe_adapter* %24, %struct.pch_gbe_buffer* %25)
  br label %27

27:                                               ; preds = %17
  %28 = load i32, i32* %8, align 4
  %29 = add i32 %28, 1
  store i32 %29, i32* %8, align 4
  br label %11

30:                                               ; preds = %11
  %31 = load i32, i32* %8, align 4
  %32 = call i32 @pr_debug(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0), i32 %31)
  %33 = load %struct.pch_gbe_rx_ring*, %struct.pch_gbe_rx_ring** %4, align 8
  %34 = getelementptr inbounds %struct.pch_gbe_rx_ring, %struct.pch_gbe_rx_ring* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = zext i32 %35 to i64
  %37 = mul i64 4, %36
  store i64 %37, i64* %7, align 8
  %38 = load %struct.pch_gbe_rx_ring*, %struct.pch_gbe_rx_ring** %4, align 8
  %39 = getelementptr inbounds %struct.pch_gbe_rx_ring, %struct.pch_gbe_rx_ring* %38, i32 0, i32 6
  %40 = load %struct.pch_gbe_buffer*, %struct.pch_gbe_buffer** %39, align 8
  %41 = load i64, i64* %7, align 8
  %42 = call i32 @memset(%struct.pch_gbe_buffer* %40, i32 0, i64 %41)
  %43 = load %struct.pch_gbe_rx_ring*, %struct.pch_gbe_rx_ring** %4, align 8
  %44 = getelementptr inbounds %struct.pch_gbe_rx_ring, %struct.pch_gbe_rx_ring* %43, i32 0, i32 5
  %45 = load %struct.pch_gbe_buffer*, %struct.pch_gbe_buffer** %44, align 8
  %46 = load %struct.pch_gbe_rx_ring*, %struct.pch_gbe_rx_ring** %4, align 8
  %47 = getelementptr inbounds %struct.pch_gbe_rx_ring, %struct.pch_gbe_rx_ring* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = call i32 @memset(%struct.pch_gbe_buffer* %45, i32 0, i64 %48)
  %50 = load %struct.pch_gbe_rx_ring*, %struct.pch_gbe_rx_ring** %4, align 8
  %51 = getelementptr inbounds %struct.pch_gbe_rx_ring, %struct.pch_gbe_rx_ring* %50, i32 0, i32 4
  store i64 0, i64* %51, align 8
  %52 = load %struct.pch_gbe_rx_ring*, %struct.pch_gbe_rx_ring** %4, align 8
  %53 = getelementptr inbounds %struct.pch_gbe_rx_ring, %struct.pch_gbe_rx_ring* %52, i32 0, i32 3
  store i64 0, i64* %53, align 8
  %54 = load %struct.pch_gbe_rx_ring*, %struct.pch_gbe_rx_ring** %4, align 8
  %55 = getelementptr inbounds %struct.pch_gbe_rx_ring, %struct.pch_gbe_rx_ring* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 8
  %57 = load %struct.pch_gbe_hw*, %struct.pch_gbe_hw** %5, align 8
  %58 = getelementptr inbounds %struct.pch_gbe_hw, %struct.pch_gbe_hw* %57, i32 0, i32 0
  %59 = load %struct.TYPE_2__*, %struct.TYPE_2__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 1
  %61 = call i32 @iowrite32(i32 %56, i32* %60)
  %62 = load %struct.pch_gbe_rx_ring*, %struct.pch_gbe_rx_ring** %4, align 8
  %63 = getelementptr inbounds %struct.pch_gbe_rx_ring, %struct.pch_gbe_rx_ring* %62, i32 0, i32 1
  %64 = load i64, i64* %63, align 8
  %65 = sub i64 %64, 16
  %66 = trunc i64 %65 to i32
  %67 = load %struct.pch_gbe_hw*, %struct.pch_gbe_hw** %5, align 8
  %68 = getelementptr inbounds %struct.pch_gbe_hw, %struct.pch_gbe_hw* %67, i32 0, i32 0
  %69 = load %struct.TYPE_2__*, %struct.TYPE_2__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 0
  %71 = call i32 @iowrite32(i32 %66, i32* %70)
  ret void
}

declare dso_local i32 @pch_gbe_unmap_and_free_rx_resource(%struct.pch_gbe_adapter*, %struct.pch_gbe_buffer*) #1

declare dso_local i32 @pr_debug(i8*, i32) #1

declare dso_local i32 @memset(%struct.pch_gbe_buffer*, i32, i64) #1

declare dso_local i32 @iowrite32(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
