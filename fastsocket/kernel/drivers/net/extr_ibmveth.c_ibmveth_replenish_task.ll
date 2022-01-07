; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_ibmveth.c_ibmveth_replenish_task.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_ibmveth.c_ibmveth_replenish_task.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ibmveth_adapter = type { i64, i32, %struct.ibmveth_buff_pool*, i32 }
%struct.ibmveth_buff_pool = type { i64, i32, i64 }

@IBMVETH_NUM_BUFF_POOLS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ibmveth_adapter*)* @ibmveth_replenish_task to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ibmveth_replenish_task(%struct.ibmveth_adapter* %0) #0 {
  %2 = alloca %struct.ibmveth_adapter*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.ibmveth_buff_pool*, align 8
  store %struct.ibmveth_adapter* %0, %struct.ibmveth_adapter** %2, align 8
  %5 = load %struct.ibmveth_adapter*, %struct.ibmveth_adapter** %2, align 8
  %6 = getelementptr inbounds %struct.ibmveth_adapter, %struct.ibmveth_adapter* %5, i32 0, i32 3
  %7 = load i32, i32* %6, align 8
  %8 = add nsw i32 %7, 1
  store i32 %8, i32* %6, align 8
  %9 = load i32, i32* @IBMVETH_NUM_BUFF_POOLS, align 4
  %10 = sub nsw i32 %9, 1
  store i32 %10, i32* %3, align 4
  br label %11

11:                                               ; preds = %38, %1
  %12 = load i32, i32* %3, align 4
  %13 = icmp sge i32 %12, 0
  br i1 %13, label %14, label %41

14:                                               ; preds = %11
  %15 = load %struct.ibmveth_adapter*, %struct.ibmveth_adapter** %2, align 8
  %16 = getelementptr inbounds %struct.ibmveth_adapter, %struct.ibmveth_adapter* %15, i32 0, i32 2
  %17 = load %struct.ibmveth_buff_pool*, %struct.ibmveth_buff_pool** %16, align 8
  %18 = load i32, i32* %3, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds %struct.ibmveth_buff_pool, %struct.ibmveth_buff_pool* %17, i64 %19
  store %struct.ibmveth_buff_pool* %20, %struct.ibmveth_buff_pool** %4, align 8
  %21 = load %struct.ibmveth_buff_pool*, %struct.ibmveth_buff_pool** %4, align 8
  %22 = getelementptr inbounds %struct.ibmveth_buff_pool, %struct.ibmveth_buff_pool* %21, i32 0, i32 2
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %37

25:                                               ; preds = %14
  %26 = load %struct.ibmveth_buff_pool*, %struct.ibmveth_buff_pool** %4, align 8
  %27 = getelementptr inbounds %struct.ibmveth_buff_pool, %struct.ibmveth_buff_pool* %26, i32 0, i32 1
  %28 = call i64 @atomic_read(i32* %27)
  %29 = load %struct.ibmveth_buff_pool*, %struct.ibmveth_buff_pool** %4, align 8
  %30 = getelementptr inbounds %struct.ibmveth_buff_pool, %struct.ibmveth_buff_pool* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = icmp slt i64 %28, %31
  br i1 %32, label %33, label %37

33:                                               ; preds = %25
  %34 = load %struct.ibmveth_adapter*, %struct.ibmveth_adapter** %2, align 8
  %35 = load %struct.ibmveth_buff_pool*, %struct.ibmveth_buff_pool** %4, align 8
  %36 = call i32 @ibmveth_replenish_buffer_pool(%struct.ibmveth_adapter* %34, %struct.ibmveth_buff_pool* %35)
  br label %37

37:                                               ; preds = %33, %25, %14
  br label %38

38:                                               ; preds = %37
  %39 = load i32, i32* %3, align 4
  %40 = add nsw i32 %39, -1
  store i32 %40, i32* %3, align 4
  br label %11

41:                                               ; preds = %11
  %42 = load %struct.ibmveth_adapter*, %struct.ibmveth_adapter** %2, align 8
  %43 = getelementptr inbounds %struct.ibmveth_adapter, %struct.ibmveth_adapter* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = inttoptr i64 %44 to i8*
  %46 = getelementptr inbounds i8, i8* %45, i64 4096
  %47 = getelementptr inbounds i8, i8* %46, i64 -8
  %48 = bitcast i8* %47 to i32*
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.ibmveth_adapter*, %struct.ibmveth_adapter** %2, align 8
  %51 = getelementptr inbounds %struct.ibmveth_adapter, %struct.ibmveth_adapter* %50, i32 0, i32 1
  store i32 %49, i32* %51, align 8
  ret void
}

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i32 @ibmveth_replenish_buffer_pool(%struct.ibmveth_adapter*, %struct.ibmveth_buff_pool*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
