; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_qla3xxx.c_ql_create_send_free_list.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_qla3xxx.c_ql_create_send_free_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ql3_adapter = type { %struct.ql_tx_buf_cb*, %struct.ob_mac_iocb_req* }
%struct.ql_tx_buf_cb = type { i32*, %struct.ob_mac_iocb_req*, i32* }
%struct.ob_mac_iocb_req = type { i32 }

@NUM_REQ_Q_ENTRIES = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ql3_adapter*)* @ql_create_send_free_list to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ql_create_send_free_list(%struct.ql3_adapter* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ql3_adapter*, align 8
  %4 = alloca %struct.ql_tx_buf_cb*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ob_mac_iocb_req*, align 8
  store %struct.ql3_adapter* %0, %struct.ql3_adapter** %3, align 8
  %7 = load %struct.ql3_adapter*, %struct.ql3_adapter** %3, align 8
  %8 = getelementptr inbounds %struct.ql3_adapter, %struct.ql3_adapter* %7, i32 0, i32 1
  %9 = load %struct.ob_mac_iocb_req*, %struct.ob_mac_iocb_req** %8, align 8
  store %struct.ob_mac_iocb_req* %9, %struct.ob_mac_iocb_req** %6, align 8
  store i32 0, i32* %5, align 4
  br label %10

10:                                               ; preds = %38, %1
  %11 = load i32, i32* %5, align 4
  %12 = load i32, i32* @NUM_REQ_Q_ENTRIES, align 4
  %13 = icmp slt i32 %11, %12
  br i1 %13, label %14, label %41

14:                                               ; preds = %10
  %15 = load %struct.ql3_adapter*, %struct.ql3_adapter** %3, align 8
  %16 = getelementptr inbounds %struct.ql3_adapter, %struct.ql3_adapter* %15, i32 0, i32 0
  %17 = load %struct.ql_tx_buf_cb*, %struct.ql_tx_buf_cb** %16, align 8
  %18 = load i32, i32* %5, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds %struct.ql_tx_buf_cb, %struct.ql_tx_buf_cb* %17, i64 %19
  store %struct.ql_tx_buf_cb* %20, %struct.ql_tx_buf_cb** %4, align 8
  %21 = load %struct.ql_tx_buf_cb*, %struct.ql_tx_buf_cb** %4, align 8
  %22 = getelementptr inbounds %struct.ql_tx_buf_cb, %struct.ql_tx_buf_cb* %21, i32 0, i32 2
  store i32* null, i32** %22, align 8
  %23 = load %struct.ob_mac_iocb_req*, %struct.ob_mac_iocb_req** %6, align 8
  %24 = load %struct.ql_tx_buf_cb*, %struct.ql_tx_buf_cb** %4, align 8
  %25 = getelementptr inbounds %struct.ql_tx_buf_cb, %struct.ql_tx_buf_cb* %24, i32 0, i32 1
  store %struct.ob_mac_iocb_req* %23, %struct.ob_mac_iocb_req** %25, align 8
  %26 = load %struct.ob_mac_iocb_req*, %struct.ob_mac_iocb_req** %6, align 8
  %27 = getelementptr inbounds %struct.ob_mac_iocb_req, %struct.ob_mac_iocb_req* %26, i32 1
  store %struct.ob_mac_iocb_req* %27, %struct.ob_mac_iocb_req** %6, align 8
  %28 = load i32, i32* @GFP_KERNEL, align 4
  %29 = call i32* @kmalloc(i32 512, i32 %28)
  %30 = load %struct.ql_tx_buf_cb*, %struct.ql_tx_buf_cb** %4, align 8
  %31 = getelementptr inbounds %struct.ql_tx_buf_cb, %struct.ql_tx_buf_cb* %30, i32 0, i32 0
  store i32* %29, i32** %31, align 8
  %32 = load %struct.ql_tx_buf_cb*, %struct.ql_tx_buf_cb** %4, align 8
  %33 = getelementptr inbounds %struct.ql_tx_buf_cb, %struct.ql_tx_buf_cb* %32, i32 0, i32 0
  %34 = load i32*, i32** %33, align 8
  %35 = icmp eq i32* %34, null
  br i1 %35, label %36, label %37

36:                                               ; preds = %14
  store i32 -1, i32* %2, align 4
  br label %42

37:                                               ; preds = %14
  br label %38

38:                                               ; preds = %37
  %39 = load i32, i32* %5, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %5, align 4
  br label %10

41:                                               ; preds = %10
  store i32 0, i32* %2, align 4
  br label %42

42:                                               ; preds = %41, %36
  %43 = load i32, i32* %2, align 4
  ret i32 %43
}

declare dso_local i32* @kmalloc(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
