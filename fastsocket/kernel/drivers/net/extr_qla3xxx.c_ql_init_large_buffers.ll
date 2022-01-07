; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_qla3xxx.c_ql_init_large_buffers.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_qla3xxx.c_ql_init_large_buffers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ql3_adapter = type { i32, i64, i64, %struct.ql_rcv_buf_cb*, %struct.bufq_addr_element* }
%struct.ql_rcv_buf_cb = type { i32, i32 }
%struct.bufq_addr_element = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ql3_adapter*)* @ql_init_large_buffers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ql_init_large_buffers(%struct.ql3_adapter* %0) #0 {
  %2 = alloca %struct.ql3_adapter*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.ql_rcv_buf_cb*, align 8
  %5 = alloca %struct.bufq_addr_element*, align 8
  store %struct.ql3_adapter* %0, %struct.ql3_adapter** %2, align 8
  %6 = load %struct.ql3_adapter*, %struct.ql3_adapter** %2, align 8
  %7 = getelementptr inbounds %struct.ql3_adapter, %struct.ql3_adapter* %6, i32 0, i32 4
  %8 = load %struct.bufq_addr_element*, %struct.bufq_addr_element** %7, align 8
  store %struct.bufq_addr_element* %8, %struct.bufq_addr_element** %5, align 8
  store i32 0, i32* %3, align 4
  br label %9

9:                                                ; preds = %34, %1
  %10 = load i32, i32* %3, align 4
  %11 = load %struct.ql3_adapter*, %struct.ql3_adapter** %2, align 8
  %12 = getelementptr inbounds %struct.ql3_adapter, %struct.ql3_adapter* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = icmp slt i32 %10, %13
  br i1 %14, label %15, label %37

15:                                               ; preds = %9
  %16 = load %struct.ql3_adapter*, %struct.ql3_adapter** %2, align 8
  %17 = getelementptr inbounds %struct.ql3_adapter, %struct.ql3_adapter* %16, i32 0, i32 3
  %18 = load %struct.ql_rcv_buf_cb*, %struct.ql_rcv_buf_cb** %17, align 8
  %19 = load i32, i32* %3, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.ql_rcv_buf_cb, %struct.ql_rcv_buf_cb* %18, i64 %20
  store %struct.ql_rcv_buf_cb* %21, %struct.ql_rcv_buf_cb** %4, align 8
  %22 = load %struct.ql_rcv_buf_cb*, %struct.ql_rcv_buf_cb** %4, align 8
  %23 = getelementptr inbounds %struct.ql_rcv_buf_cb, %struct.ql_rcv_buf_cb* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.bufq_addr_element*, %struct.bufq_addr_element** %5, align 8
  %26 = getelementptr inbounds %struct.bufq_addr_element, %struct.bufq_addr_element* %25, i32 0, i32 1
  store i32 %24, i32* %26, align 4
  %27 = load %struct.ql_rcv_buf_cb*, %struct.ql_rcv_buf_cb** %4, align 8
  %28 = getelementptr inbounds %struct.ql_rcv_buf_cb, %struct.ql_rcv_buf_cb* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.bufq_addr_element*, %struct.bufq_addr_element** %5, align 8
  %31 = getelementptr inbounds %struct.bufq_addr_element, %struct.bufq_addr_element* %30, i32 0, i32 0
  store i32 %29, i32* %31, align 4
  %32 = load %struct.bufq_addr_element*, %struct.bufq_addr_element** %5, align 8
  %33 = getelementptr inbounds %struct.bufq_addr_element, %struct.bufq_addr_element* %32, i32 1
  store %struct.bufq_addr_element* %33, %struct.bufq_addr_element** %5, align 8
  br label %34

34:                                               ; preds = %15
  %35 = load i32, i32* %3, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %3, align 4
  br label %9

37:                                               ; preds = %9
  %38 = load %struct.ql3_adapter*, %struct.ql3_adapter** %2, align 8
  %39 = getelementptr inbounds %struct.ql3_adapter, %struct.ql3_adapter* %38, i32 0, i32 2
  store i64 0, i64* %39, align 8
  %40 = load %struct.ql3_adapter*, %struct.ql3_adapter** %2, align 8
  %41 = getelementptr inbounds %struct.ql3_adapter, %struct.ql3_adapter* %40, i32 0, i32 1
  store i64 0, i64* %41, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
