; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/scsi/extr_zfcp_aux.c_zfcp_free_low_mem_buffers.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/scsi/extr_zfcp_aux.c_zfcp_free_low_mem_buffers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zfcp_adapter = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i64, i64, i64, i64, i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.zfcp_adapter*)* @zfcp_free_low_mem_buffers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @zfcp_free_low_mem_buffers(%struct.zfcp_adapter* %0) #0 {
  %2 = alloca %struct.zfcp_adapter*, align 8
  store %struct.zfcp_adapter* %0, %struct.zfcp_adapter** %2, align 8
  %3 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %2, align 8
  %4 = getelementptr inbounds %struct.zfcp_adapter, %struct.zfcp_adapter* %3, i32 0, i32 0
  %5 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %4, i32 0, i32 6
  %6 = load i64, i64* %5, align 8
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %14

8:                                                ; preds = %1
  %9 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %2, align 8
  %10 = getelementptr inbounds %struct.zfcp_adapter, %struct.zfcp_adapter* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 6
  %12 = load i64, i64* %11, align 8
  %13 = call i32 @mempool_destroy(i64 %12)
  br label %14

14:                                               ; preds = %8, %1
  %15 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %2, align 8
  %16 = getelementptr inbounds %struct.zfcp_adapter, %struct.zfcp_adapter* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 5
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %26

20:                                               ; preds = %14
  %21 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %2, align 8
  %22 = getelementptr inbounds %struct.zfcp_adapter, %struct.zfcp_adapter* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 5
  %24 = load i64, i64* %23, align 8
  %25 = call i32 @mempool_destroy(i64 %24)
  br label %26

26:                                               ; preds = %20, %14
  %27 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %2, align 8
  %28 = getelementptr inbounds %struct.zfcp_adapter, %struct.zfcp_adapter* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 4
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %38

32:                                               ; preds = %26
  %33 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %2, align 8
  %34 = getelementptr inbounds %struct.zfcp_adapter, %struct.zfcp_adapter* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 4
  %36 = load i64, i64* %35, align 8
  %37 = call i32 @mempool_destroy(i64 %36)
  br label %38

38:                                               ; preds = %32, %26
  %39 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %2, align 8
  %40 = getelementptr inbounds %struct.zfcp_adapter, %struct.zfcp_adapter* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 3
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %50

44:                                               ; preds = %38
  %45 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %2, align 8
  %46 = getelementptr inbounds %struct.zfcp_adapter, %struct.zfcp_adapter* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 3
  %48 = load i64, i64* %47, align 8
  %49 = call i32 @mempool_destroy(i64 %48)
  br label %50

50:                                               ; preds = %44, %38
  %51 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %2, align 8
  %52 = getelementptr inbounds %struct.zfcp_adapter, %struct.zfcp_adapter* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 2
  %54 = load i64, i64* %53, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %62

56:                                               ; preds = %50
  %57 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %2, align 8
  %58 = getelementptr inbounds %struct.zfcp_adapter, %struct.zfcp_adapter* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 2
  %60 = load i64, i64* %59, align 8
  %61 = call i32 @mempool_destroy(i64 %60)
  br label %62

62:                                               ; preds = %56, %50
  %63 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %2, align 8
  %64 = getelementptr inbounds %struct.zfcp_adapter, %struct.zfcp_adapter* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %74

68:                                               ; preds = %62
  %69 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %2, align 8
  %70 = getelementptr inbounds %struct.zfcp_adapter, %struct.zfcp_adapter* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 1
  %72 = load i64, i64* %71, align 8
  %73 = call i32 @mempool_destroy(i64 %72)
  br label %74

74:                                               ; preds = %68, %62
  %75 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %2, align 8
  %76 = getelementptr inbounds %struct.zfcp_adapter, %struct.zfcp_adapter* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %86

80:                                               ; preds = %74
  %81 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %2, align 8
  %82 = getelementptr inbounds %struct.zfcp_adapter, %struct.zfcp_adapter* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = call i32 @mempool_destroy(i64 %84)
  br label %86

86:                                               ; preds = %80, %74
  ret void
}

declare dso_local i32 @mempool_destroy(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
