; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/hv/extr_ring_buffer.c_hv_need_to_signal_on_read.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/hv/extr_ring_buffer.c_hv_need_to_signal_on_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hv_ring_buffer_info = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64, i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, %struct.hv_ring_buffer_info*)* @hv_need_to_signal_on_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hv_need_to_signal_on_read(i64 %0, %struct.hv_ring_buffer_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca %struct.hv_ring_buffer_info*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store i64 %0, i64* %4, align 8
  store %struct.hv_ring_buffer_info* %1, %struct.hv_ring_buffer_info** %5, align 8
  %12 = load %struct.hv_ring_buffer_info*, %struct.hv_ring_buffer_info** %5, align 8
  %13 = getelementptr inbounds %struct.hv_ring_buffer_info, %struct.hv_ring_buffer_info* %12, i32 0, i32 1
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  store i64 %16, i64* %9, align 8
  %17 = load %struct.hv_ring_buffer_info*, %struct.hv_ring_buffer_info** %5, align 8
  %18 = getelementptr inbounds %struct.hv_ring_buffer_info, %struct.hv_ring_buffer_info* %17, i32 0, i32 1
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  store i64 %21, i64* %10, align 8
  %22 = load %struct.hv_ring_buffer_info*, %struct.hv_ring_buffer_info** %5, align 8
  %23 = getelementptr inbounds %struct.hv_ring_buffer_info, %struct.hv_ring_buffer_info* %22, i32 0, i32 1
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 2
  %26 = load i64, i64* %25, align 8
  store i64 %26, i64* %11, align 8
  %27 = load i64, i64* %11, align 8
  %28 = icmp eq i64 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %73

30:                                               ; preds = %2
  %31 = load %struct.hv_ring_buffer_info*, %struct.hv_ring_buffer_info** %5, align 8
  %32 = getelementptr inbounds %struct.hv_ring_buffer_info, %struct.hv_ring_buffer_info* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  store i64 %33, i64* %8, align 8
  %34 = load i64, i64* %9, align 8
  %35 = load i64, i64* %10, align 8
  %36 = icmp sge i64 %34, %35
  br i1 %36, label %37, label %43

37:                                               ; preds = %30
  %38 = load i64, i64* %8, align 8
  %39 = load i64, i64* %9, align 8
  %40 = load i64, i64* %10, align 8
  %41 = sub nsw i64 %39, %40
  %42 = sub nsw i64 %38, %41
  br label %47

43:                                               ; preds = %30
  %44 = load i64, i64* %10, align 8
  %45 = load i64, i64* %9, align 8
  %46 = sub nsw i64 %44, %45
  br label %47

47:                                               ; preds = %43, %37
  %48 = phi i64 [ %42, %37 ], [ %46, %43 ]
  store i64 %48, i64* %7, align 8
  %49 = load i64, i64* %9, align 8
  %50 = load i64, i64* %4, align 8
  %51 = icmp sge i64 %49, %50
  br i1 %51, label %52, label %58

52:                                               ; preds = %47
  %53 = load i64, i64* %8, align 8
  %54 = load i64, i64* %9, align 8
  %55 = load i64, i64* %4, align 8
  %56 = sub nsw i64 %54, %55
  %57 = sub nsw i64 %53, %56
  br label %62

58:                                               ; preds = %47
  %59 = load i64, i64* %4, align 8
  %60 = load i64, i64* %9, align 8
  %61 = sub nsw i64 %59, %60
  br label %62

62:                                               ; preds = %58, %52
  %63 = phi i64 [ %57, %52 ], [ %61, %58 ]
  store i64 %63, i64* %6, align 8
  %64 = load i64, i64* %6, align 8
  %65 = load i64, i64* %11, align 8
  %66 = icmp slt i64 %64, %65
  br i1 %66, label %67, label %72

67:                                               ; preds = %62
  %68 = load i64, i64* %7, align 8
  %69 = load i64, i64* %11, align 8
  %70 = icmp sge i64 %68, %69
  br i1 %70, label %71, label %72

71:                                               ; preds = %67
  store i32 1, i32* %3, align 4
  br label %73

72:                                               ; preds = %67, %62
  store i32 0, i32* %3, align 4
  br label %73

73:                                               ; preds = %72, %71, %29
  %74 = load i32, i32* %3, align 4
  ret i32 %74
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
