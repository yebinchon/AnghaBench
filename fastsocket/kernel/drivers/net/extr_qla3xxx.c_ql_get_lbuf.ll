; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_qla3xxx.c_ql_get_lbuf.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_qla3xxx.c_ql_get_lbuf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ql_rcv_buf_cb = type { i32 }
%struct.ql3_adapter = type { i64, i64, i32, %struct.ql_rcv_buf_cb* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.ql_rcv_buf_cb* (%struct.ql3_adapter*)* @ql_get_lbuf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.ql_rcv_buf_cb* @ql_get_lbuf(%struct.ql3_adapter* %0) #0 {
  %2 = alloca %struct.ql3_adapter*, align 8
  %3 = alloca %struct.ql_rcv_buf_cb*, align 8
  store %struct.ql3_adapter* %0, %struct.ql3_adapter** %2, align 8
  store %struct.ql_rcv_buf_cb* null, %struct.ql_rcv_buf_cb** %3, align 8
  %4 = load %struct.ql3_adapter*, %struct.ql3_adapter** %2, align 8
  %5 = getelementptr inbounds %struct.ql3_adapter, %struct.ql3_adapter* %4, i32 0, i32 3
  %6 = load %struct.ql_rcv_buf_cb*, %struct.ql_rcv_buf_cb** %5, align 8
  %7 = load %struct.ql3_adapter*, %struct.ql3_adapter** %2, align 8
  %8 = getelementptr inbounds %struct.ql3_adapter, %struct.ql3_adapter* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = getelementptr inbounds %struct.ql_rcv_buf_cb, %struct.ql_rcv_buf_cb* %6, i64 %9
  store %struct.ql_rcv_buf_cb* %10, %struct.ql_rcv_buf_cb** %3, align 8
  %11 = load %struct.ql3_adapter*, %struct.ql3_adapter** %2, align 8
  %12 = getelementptr inbounds %struct.ql3_adapter, %struct.ql3_adapter* %11, i32 0, i32 2
  %13 = load i32, i32* %12, align 8
  %14 = add nsw i32 %13, 1
  store i32 %14, i32* %12, align 8
  %15 = load %struct.ql3_adapter*, %struct.ql3_adapter** %2, align 8
  %16 = getelementptr inbounds %struct.ql3_adapter, %struct.ql3_adapter* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = add i64 %17, 1
  store i64 %18, i64* %16, align 8
  %19 = load %struct.ql3_adapter*, %struct.ql3_adapter** %2, align 8
  %20 = getelementptr inbounds %struct.ql3_adapter, %struct.ql3_adapter* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = icmp eq i64 %18, %21
  br i1 %22, label %23, label %26

23:                                               ; preds = %1
  %24 = load %struct.ql3_adapter*, %struct.ql3_adapter** %2, align 8
  %25 = getelementptr inbounds %struct.ql3_adapter, %struct.ql3_adapter* %24, i32 0, i32 0
  store i64 0, i64* %25, align 8
  br label %26

26:                                               ; preds = %23, %1
  %27 = load %struct.ql_rcv_buf_cb*, %struct.ql_rcv_buf_cb** %3, align 8
  ret %struct.ql_rcv_buf_cb* %27
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
