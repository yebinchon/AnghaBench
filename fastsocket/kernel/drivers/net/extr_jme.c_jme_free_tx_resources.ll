; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_jme.c_jme_free_tx_resources.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_jme.c_jme_free_tx_resources.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.jme_adapter = type { i32, %struct.TYPE_2__*, %struct.jme_ring* }
%struct.TYPE_2__ = type { i32 }
%struct.jme_ring = type { i32, i32, i64, %struct.jme_buffer_info*, i64, i64, i32*, i32* }
%struct.jme_buffer_info = type { i64, i64, i64, i64, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.jme_adapter*)* @jme_free_tx_resources to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @jme_free_tx_resources(%struct.jme_adapter* %0) #0 {
  %2 = alloca %struct.jme_adapter*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.jme_ring*, align 8
  %5 = alloca %struct.jme_buffer_info*, align 8
  store %struct.jme_adapter* %0, %struct.jme_adapter** %2, align 8
  %6 = load %struct.jme_adapter*, %struct.jme_adapter** %2, align 8
  %7 = getelementptr inbounds %struct.jme_adapter, %struct.jme_adapter* %6, i32 0, i32 2
  %8 = load %struct.jme_ring*, %struct.jme_ring** %7, align 8
  %9 = getelementptr inbounds %struct.jme_ring, %struct.jme_ring* %8, i64 0
  store %struct.jme_ring* %9, %struct.jme_ring** %4, align 8
  %10 = load %struct.jme_ring*, %struct.jme_ring** %4, align 8
  %11 = getelementptr inbounds %struct.jme_ring, %struct.jme_ring* %10, i32 0, i32 7
  %12 = load i32*, i32** %11, align 8
  %13 = icmp ne i32* %12, null
  br i1 %13, label %14, label %87

14:                                               ; preds = %1
  %15 = load %struct.jme_ring*, %struct.jme_ring** %4, align 8
  %16 = getelementptr inbounds %struct.jme_ring, %struct.jme_ring* %15, i32 0, i32 3
  %17 = load %struct.jme_buffer_info*, %struct.jme_buffer_info** %16, align 8
  %18 = icmp ne %struct.jme_buffer_info* %17, null
  br i1 %18, label %19, label %61

19:                                               ; preds = %14
  store i32 0, i32* %3, align 4
  br label %20

20:                                               ; preds = %53, %19
  %21 = load i32, i32* %3, align 4
  %22 = load %struct.jme_adapter*, %struct.jme_adapter** %2, align 8
  %23 = getelementptr inbounds %struct.jme_adapter, %struct.jme_adapter* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = icmp slt i32 %21, %24
  br i1 %25, label %26, label %56

26:                                               ; preds = %20
  %27 = load %struct.jme_ring*, %struct.jme_ring** %4, align 8
  %28 = getelementptr inbounds %struct.jme_ring, %struct.jme_ring* %27, i32 0, i32 3
  %29 = load %struct.jme_buffer_info*, %struct.jme_buffer_info** %28, align 8
  %30 = load i32, i32* %3, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.jme_buffer_info, %struct.jme_buffer_info* %29, i64 %31
  store %struct.jme_buffer_info* %32, %struct.jme_buffer_info** %5, align 8
  %33 = load %struct.jme_buffer_info*, %struct.jme_buffer_info** %5, align 8
  %34 = getelementptr inbounds %struct.jme_buffer_info, %struct.jme_buffer_info* %33, i32 0, i32 4
  %35 = load i32*, i32** %34, align 8
  %36 = icmp ne i32* %35, null
  br i1 %36, label %37, label %44

37:                                               ; preds = %26
  %38 = load %struct.jme_buffer_info*, %struct.jme_buffer_info** %5, align 8
  %39 = getelementptr inbounds %struct.jme_buffer_info, %struct.jme_buffer_info* %38, i32 0, i32 4
  %40 = load i32*, i32** %39, align 8
  %41 = call i32 @dev_kfree_skb(i32* %40)
  %42 = load %struct.jme_buffer_info*, %struct.jme_buffer_info** %5, align 8
  %43 = getelementptr inbounds %struct.jme_buffer_info, %struct.jme_buffer_info* %42, i32 0, i32 4
  store i32* null, i32** %43, align 8
  br label %44

44:                                               ; preds = %37, %26
  %45 = load %struct.jme_buffer_info*, %struct.jme_buffer_info** %5, align 8
  %46 = getelementptr inbounds %struct.jme_buffer_info, %struct.jme_buffer_info* %45, i32 0, i32 3
  store i64 0, i64* %46, align 8
  %47 = load %struct.jme_buffer_info*, %struct.jme_buffer_info** %5, align 8
  %48 = getelementptr inbounds %struct.jme_buffer_info, %struct.jme_buffer_info* %47, i32 0, i32 2
  store i64 0, i64* %48, align 8
  %49 = load %struct.jme_buffer_info*, %struct.jme_buffer_info** %5, align 8
  %50 = getelementptr inbounds %struct.jme_buffer_info, %struct.jme_buffer_info* %49, i32 0, i32 1
  store i64 0, i64* %50, align 8
  %51 = load %struct.jme_buffer_info*, %struct.jme_buffer_info** %5, align 8
  %52 = getelementptr inbounds %struct.jme_buffer_info, %struct.jme_buffer_info* %51, i32 0, i32 0
  store i64 0, i64* %52, align 8
  br label %53

53:                                               ; preds = %44
  %54 = load i32, i32* %3, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %3, align 4
  br label %20

56:                                               ; preds = %20
  %57 = load %struct.jme_ring*, %struct.jme_ring** %4, align 8
  %58 = getelementptr inbounds %struct.jme_ring, %struct.jme_ring* %57, i32 0, i32 3
  %59 = load %struct.jme_buffer_info*, %struct.jme_buffer_info** %58, align 8
  %60 = call i32 @kfree(%struct.jme_buffer_info* %59)
  br label %61

61:                                               ; preds = %56, %14
  %62 = load %struct.jme_adapter*, %struct.jme_adapter** %2, align 8
  %63 = getelementptr inbounds %struct.jme_adapter, %struct.jme_adapter* %62, i32 0, i32 1
  %64 = load %struct.TYPE_2__*, %struct.TYPE_2__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 0
  %66 = load %struct.jme_adapter*, %struct.jme_adapter** %2, align 8
  %67 = getelementptr inbounds %struct.jme_adapter, %struct.jme_adapter* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = call i32 @TX_RING_ALLOC_SIZE(i32 %68)
  %70 = load %struct.jme_ring*, %struct.jme_ring** %4, align 8
  %71 = getelementptr inbounds %struct.jme_ring, %struct.jme_ring* %70, i32 0, i32 7
  %72 = load i32*, i32** %71, align 8
  %73 = load %struct.jme_ring*, %struct.jme_ring** %4, align 8
  %74 = getelementptr inbounds %struct.jme_ring, %struct.jme_ring* %73, i32 0, i32 5
  %75 = load i64, i64* %74, align 8
  %76 = call i32 @dma_free_coherent(i32* %65, i32 %69, i32* %72, i64 %75)
  %77 = load %struct.jme_ring*, %struct.jme_ring** %4, align 8
  %78 = getelementptr inbounds %struct.jme_ring, %struct.jme_ring* %77, i32 0, i32 7
  store i32* null, i32** %78, align 8
  %79 = load %struct.jme_ring*, %struct.jme_ring** %4, align 8
  %80 = getelementptr inbounds %struct.jme_ring, %struct.jme_ring* %79, i32 0, i32 6
  store i32* null, i32** %80, align 8
  %81 = load %struct.jme_ring*, %struct.jme_ring** %4, align 8
  %82 = getelementptr inbounds %struct.jme_ring, %struct.jme_ring* %81, i32 0, i32 5
  store i64 0, i64* %82, align 8
  %83 = load %struct.jme_ring*, %struct.jme_ring** %4, align 8
  %84 = getelementptr inbounds %struct.jme_ring, %struct.jme_ring* %83, i32 0, i32 4
  store i64 0, i64* %84, align 8
  %85 = load %struct.jme_ring*, %struct.jme_ring** %4, align 8
  %86 = getelementptr inbounds %struct.jme_ring, %struct.jme_ring* %85, i32 0, i32 3
  store %struct.jme_buffer_info* null, %struct.jme_buffer_info** %86, align 8
  br label %87

87:                                               ; preds = %61, %1
  %88 = load %struct.jme_ring*, %struct.jme_ring** %4, align 8
  %89 = getelementptr inbounds %struct.jme_ring, %struct.jme_ring* %88, i32 0, i32 2
  store i64 0, i64* %89, align 8
  %90 = load %struct.jme_ring*, %struct.jme_ring** %4, align 8
  %91 = getelementptr inbounds %struct.jme_ring, %struct.jme_ring* %90, i32 0, i32 1
  %92 = call i32 @atomic_set(i32* %91, i32 0)
  %93 = load %struct.jme_ring*, %struct.jme_ring** %4, align 8
  %94 = getelementptr inbounds %struct.jme_ring, %struct.jme_ring* %93, i32 0, i32 0
  %95 = call i32 @atomic_set(i32* %94, i32 0)
  ret void
}

declare dso_local i32 @dev_kfree_skb(i32*) #1

declare dso_local i32 @kfree(%struct.jme_buffer_info*) #1

declare dso_local i32 @dma_free_coherent(i32*, i32, i32*, i64) #1

declare dso_local i32 @TX_RING_ALLOC_SIZE(i32) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
