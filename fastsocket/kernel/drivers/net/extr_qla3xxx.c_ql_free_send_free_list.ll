; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_qla3xxx.c_ql_free_send_free_list.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_qla3xxx.c_ql_free_send_free_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ql3_adapter = type { %struct.ql_tx_buf_cb* }
%struct.ql_tx_buf_cb = type { i32* }

@NUM_REQ_Q_ENTRIES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ql3_adapter*)* @ql_free_send_free_list to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ql_free_send_free_list(%struct.ql3_adapter* %0) #0 {
  %2 = alloca %struct.ql3_adapter*, align 8
  %3 = alloca %struct.ql_tx_buf_cb*, align 8
  %4 = alloca i32, align 4
  store %struct.ql3_adapter* %0, %struct.ql3_adapter** %2, align 8
  %5 = load %struct.ql3_adapter*, %struct.ql3_adapter** %2, align 8
  %6 = getelementptr inbounds %struct.ql3_adapter, %struct.ql3_adapter* %5, i32 0, i32 0
  %7 = load %struct.ql_tx_buf_cb*, %struct.ql_tx_buf_cb** %6, align 8
  %8 = getelementptr inbounds %struct.ql_tx_buf_cb, %struct.ql_tx_buf_cb* %7, i64 0
  store %struct.ql_tx_buf_cb* %8, %struct.ql_tx_buf_cb** %3, align 8
  store i32 0, i32* %4, align 4
  br label %9

9:                                                ; preds = %28, %1
  %10 = load i32, i32* %4, align 4
  %11 = load i32, i32* @NUM_REQ_Q_ENTRIES, align 4
  %12 = icmp slt i32 %10, %11
  br i1 %12, label %13, label %31

13:                                               ; preds = %9
  %14 = load %struct.ql_tx_buf_cb*, %struct.ql_tx_buf_cb** %3, align 8
  %15 = getelementptr inbounds %struct.ql_tx_buf_cb, %struct.ql_tx_buf_cb* %14, i32 0, i32 0
  %16 = load i32*, i32** %15, align 8
  %17 = icmp ne i32* %16, null
  br i1 %17, label %18, label %25

18:                                               ; preds = %13
  %19 = load %struct.ql_tx_buf_cb*, %struct.ql_tx_buf_cb** %3, align 8
  %20 = getelementptr inbounds %struct.ql_tx_buf_cb, %struct.ql_tx_buf_cb* %19, i32 0, i32 0
  %21 = load i32*, i32** %20, align 8
  %22 = call i32 @kfree(i32* %21)
  %23 = load %struct.ql_tx_buf_cb*, %struct.ql_tx_buf_cb** %3, align 8
  %24 = getelementptr inbounds %struct.ql_tx_buf_cb, %struct.ql_tx_buf_cb* %23, i32 0, i32 0
  store i32* null, i32** %24, align 8
  br label %25

25:                                               ; preds = %18, %13
  %26 = load %struct.ql_tx_buf_cb*, %struct.ql_tx_buf_cb** %3, align 8
  %27 = getelementptr inbounds %struct.ql_tx_buf_cb, %struct.ql_tx_buf_cb* %26, i32 1
  store %struct.ql_tx_buf_cb* %27, %struct.ql_tx_buf_cb** %3, align 8
  br label %28

28:                                               ; preds = %25
  %29 = load i32, i32* %4, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %4, align 4
  br label %9

31:                                               ; preds = %9
  ret void
}

declare dso_local i32 @kfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
