; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/igb/extr_igb_main.c_igb_alloc_rx_buffers.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/igb/extr_igb_main.c_igb_alloc_rx_buffers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.igb_ring = type { i64, i64, i32, i64, %struct.igb_rx_buffer* }
%struct.igb_rx_buffer = type { i64, i64 }
%union.e1000_adv_rx_desc = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @igb_alloc_rx_buffers(%struct.igb_ring* %0, i64 %1) #0 {
  %3 = alloca %struct.igb_ring*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %union.e1000_adv_rx_desc*, align 8
  %6 = alloca %struct.igb_rx_buffer*, align 8
  %7 = alloca i64, align 8
  store %struct.igb_ring* %0, %struct.igb_ring** %3, align 8
  store i64 %1, i64* %4, align 8
  %8 = load %struct.igb_ring*, %struct.igb_ring** %3, align 8
  %9 = getelementptr inbounds %struct.igb_ring, %struct.igb_ring* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  store i64 %10, i64* %7, align 8
  %11 = load i64, i64* %4, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %2
  br label %102

14:                                               ; preds = %2
  %15 = load %struct.igb_ring*, %struct.igb_ring** %3, align 8
  %16 = load i64, i64* %7, align 8
  %17 = call %union.e1000_adv_rx_desc* @IGB_RX_DESC(%struct.igb_ring* %15, i64 %16)
  store %union.e1000_adv_rx_desc* %17, %union.e1000_adv_rx_desc** %5, align 8
  %18 = load %struct.igb_ring*, %struct.igb_ring** %3, align 8
  %19 = getelementptr inbounds %struct.igb_ring, %struct.igb_ring* %18, i32 0, i32 4
  %20 = load %struct.igb_rx_buffer*, %struct.igb_rx_buffer** %19, align 8
  %21 = load i64, i64* %7, align 8
  %22 = getelementptr inbounds %struct.igb_rx_buffer, %struct.igb_rx_buffer* %20, i64 %21
  store %struct.igb_rx_buffer* %22, %struct.igb_rx_buffer** %6, align 8
  %23 = load %struct.igb_ring*, %struct.igb_ring** %3, align 8
  %24 = getelementptr inbounds %struct.igb_ring, %struct.igb_ring* %23, i32 0, i32 3
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* %7, align 8
  %27 = sub i64 %26, %25
  store i64 %27, i64* %7, align 8
  br label %28

28:                                               ; preds = %75, %14
  %29 = load %struct.igb_ring*, %struct.igb_ring** %3, align 8
  %30 = load %struct.igb_rx_buffer*, %struct.igb_rx_buffer** %6, align 8
  %31 = call i32 @igb_alloc_mapped_page(%struct.igb_ring* %29, %struct.igb_rx_buffer* %30)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %34, label %33

33:                                               ; preds = %28
  br label %78

34:                                               ; preds = %28
  %35 = load %struct.igb_rx_buffer*, %struct.igb_rx_buffer** %6, align 8
  %36 = getelementptr inbounds %struct.igb_rx_buffer, %struct.igb_rx_buffer* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = load %struct.igb_rx_buffer*, %struct.igb_rx_buffer** %6, align 8
  %39 = getelementptr inbounds %struct.igb_rx_buffer, %struct.igb_rx_buffer* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = add nsw i64 %37, %40
  %42 = call i32 @cpu_to_le64(i64 %41)
  %43 = load %union.e1000_adv_rx_desc*, %union.e1000_adv_rx_desc** %5, align 8
  %44 = bitcast %union.e1000_adv_rx_desc* %43 to %struct.TYPE_2__*
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 1
  store i32 %42, i32* %45, align 8
  %46 = load %union.e1000_adv_rx_desc*, %union.e1000_adv_rx_desc** %5, align 8
  %47 = getelementptr inbounds %union.e1000_adv_rx_desc, %union.e1000_adv_rx_desc* %46, i32 1
  store %union.e1000_adv_rx_desc* %47, %union.e1000_adv_rx_desc** %5, align 8
  %48 = load %struct.igb_rx_buffer*, %struct.igb_rx_buffer** %6, align 8
  %49 = getelementptr inbounds %struct.igb_rx_buffer, %struct.igb_rx_buffer* %48, i32 1
  store %struct.igb_rx_buffer* %49, %struct.igb_rx_buffer** %6, align 8
  %50 = load i64, i64* %7, align 8
  %51 = add i64 %50, 1
  store i64 %51, i64* %7, align 8
  %52 = load i64, i64* %7, align 8
  %53 = icmp ne i64 %52, 0
  %54 = xor i1 %53, true
  %55 = zext i1 %54 to i32
  %56 = call i64 @unlikely(i32 %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %69

58:                                               ; preds = %34
  %59 = load %struct.igb_ring*, %struct.igb_ring** %3, align 8
  %60 = call %union.e1000_adv_rx_desc* @IGB_RX_DESC(%struct.igb_ring* %59, i64 0)
  store %union.e1000_adv_rx_desc* %60, %union.e1000_adv_rx_desc** %5, align 8
  %61 = load %struct.igb_ring*, %struct.igb_ring** %3, align 8
  %62 = getelementptr inbounds %struct.igb_ring, %struct.igb_ring* %61, i32 0, i32 4
  %63 = load %struct.igb_rx_buffer*, %struct.igb_rx_buffer** %62, align 8
  store %struct.igb_rx_buffer* %63, %struct.igb_rx_buffer** %6, align 8
  %64 = load %struct.igb_ring*, %struct.igb_ring** %3, align 8
  %65 = getelementptr inbounds %struct.igb_ring, %struct.igb_ring* %64, i32 0, i32 3
  %66 = load i64, i64* %65, align 8
  %67 = load i64, i64* %7, align 8
  %68 = sub i64 %67, %66
  store i64 %68, i64* %7, align 8
  br label %69

69:                                               ; preds = %58, %34
  %70 = load %union.e1000_adv_rx_desc*, %union.e1000_adv_rx_desc** %5, align 8
  %71 = bitcast %union.e1000_adv_rx_desc* %70 to %struct.TYPE_2__*
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 0
  store i64 0, i64* %72, align 8
  %73 = load i64, i64* %4, align 8
  %74 = add i64 %73, -1
  store i64 %74, i64* %4, align 8
  br label %75

75:                                               ; preds = %69
  %76 = load i64, i64* %4, align 8
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %28, label %78

78:                                               ; preds = %75, %33
  %79 = load %struct.igb_ring*, %struct.igb_ring** %3, align 8
  %80 = getelementptr inbounds %struct.igb_ring, %struct.igb_ring* %79, i32 0, i32 3
  %81 = load i64, i64* %80, align 8
  %82 = load i64, i64* %7, align 8
  %83 = add i64 %82, %81
  store i64 %83, i64* %7, align 8
  %84 = load %struct.igb_ring*, %struct.igb_ring** %3, align 8
  %85 = getelementptr inbounds %struct.igb_ring, %struct.igb_ring* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = load i64, i64* %7, align 8
  %88 = icmp ne i64 %86, %87
  br i1 %88, label %89, label %102

89:                                               ; preds = %78
  %90 = load i64, i64* %7, align 8
  %91 = load %struct.igb_ring*, %struct.igb_ring** %3, align 8
  %92 = getelementptr inbounds %struct.igb_ring, %struct.igb_ring* %91, i32 0, i32 0
  store i64 %90, i64* %92, align 8
  %93 = load i64, i64* %7, align 8
  %94 = load %struct.igb_ring*, %struct.igb_ring** %3, align 8
  %95 = getelementptr inbounds %struct.igb_ring, %struct.igb_ring* %94, i32 0, i32 1
  store i64 %93, i64* %95, align 8
  %96 = call i32 (...) @wmb()
  %97 = load i64, i64* %7, align 8
  %98 = load %struct.igb_ring*, %struct.igb_ring** %3, align 8
  %99 = getelementptr inbounds %struct.igb_ring, %struct.igb_ring* %98, i32 0, i32 2
  %100 = load i32, i32* %99, align 8
  %101 = call i32 @writel(i64 %97, i32 %100)
  br label %102

102:                                              ; preds = %13, %89, %78
  ret void
}

declare dso_local %union.e1000_adv_rx_desc* @IGB_RX_DESC(%struct.igb_ring*, i64) #1

declare dso_local i32 @igb_alloc_mapped_page(%struct.igb_ring*, %struct.igb_rx_buffer*) #1

declare dso_local i32 @cpu_to_le64(i64) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @wmb(...) #1

declare dso_local i32 @writel(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
