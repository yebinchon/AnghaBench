; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_qla3xxx.c_ql_get_from_lrg_buf_free_list.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_qla3xxx.c_ql_get_from_lrg_buf_free_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ql_rcv_buf_cb = type { %struct.ql_rcv_buf_cb* }
%struct.ql3_adapter = type { i32, i32*, %struct.ql_rcv_buf_cb* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.ql_rcv_buf_cb* (%struct.ql3_adapter*)* @ql_get_from_lrg_buf_free_list to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.ql_rcv_buf_cb* @ql_get_from_lrg_buf_free_list(%struct.ql3_adapter* %0) #0 {
  %2 = alloca %struct.ql3_adapter*, align 8
  %3 = alloca %struct.ql_rcv_buf_cb*, align 8
  store %struct.ql3_adapter* %0, %struct.ql3_adapter** %2, align 8
  %4 = load %struct.ql3_adapter*, %struct.ql3_adapter** %2, align 8
  %5 = getelementptr inbounds %struct.ql3_adapter, %struct.ql3_adapter* %4, i32 0, i32 2
  %6 = load %struct.ql_rcv_buf_cb*, %struct.ql_rcv_buf_cb** %5, align 8
  store %struct.ql_rcv_buf_cb* %6, %struct.ql_rcv_buf_cb** %3, align 8
  %7 = icmp ne %struct.ql_rcv_buf_cb* %6, null
  br i1 %7, label %8, label %23

8:                                                ; preds = %1
  %9 = load %struct.ql_rcv_buf_cb*, %struct.ql_rcv_buf_cb** %3, align 8
  %10 = getelementptr inbounds %struct.ql_rcv_buf_cb, %struct.ql_rcv_buf_cb* %9, i32 0, i32 0
  %11 = load %struct.ql_rcv_buf_cb*, %struct.ql_rcv_buf_cb** %10, align 8
  %12 = load %struct.ql3_adapter*, %struct.ql3_adapter** %2, align 8
  %13 = getelementptr inbounds %struct.ql3_adapter, %struct.ql3_adapter* %12, i32 0, i32 2
  store %struct.ql_rcv_buf_cb* %11, %struct.ql_rcv_buf_cb** %13, align 8
  %14 = icmp eq %struct.ql_rcv_buf_cb* %11, null
  br i1 %14, label %15, label %18

15:                                               ; preds = %8
  %16 = load %struct.ql3_adapter*, %struct.ql3_adapter** %2, align 8
  %17 = getelementptr inbounds %struct.ql3_adapter, %struct.ql3_adapter* %16, i32 0, i32 1
  store i32* null, i32** %17, align 8
  br label %18

18:                                               ; preds = %15, %8
  %19 = load %struct.ql3_adapter*, %struct.ql3_adapter** %2, align 8
  %20 = getelementptr inbounds %struct.ql3_adapter, %struct.ql3_adapter* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = add nsw i32 %21, -1
  store i32 %22, i32* %20, align 8
  br label %23

23:                                               ; preds = %18, %1
  %24 = load %struct.ql_rcv_buf_cb*, %struct.ql_rcv_buf_cb** %3, align 8
  ret %struct.ql_rcv_buf_cb* %24
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
