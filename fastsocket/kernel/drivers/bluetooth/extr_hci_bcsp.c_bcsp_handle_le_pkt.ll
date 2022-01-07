; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/bluetooth/extr_hci_bcsp.c_bcsp_handle_le_pkt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/bluetooth/extr_hci_bcsp.c_bcsp_handle_le_pkt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hci_uart = type { %struct.bcsp_struct* }
%struct.bcsp_struct = type { %struct.TYPE_3__*, i32 }
%struct.TYPE_3__ = type { i32* }
%struct.sk_buff = type { i32 }
%struct.TYPE_4__ = type { i32 }

@__const.bcsp_handle_le_pkt.conf_pkt = private unnamed_addr constant [4 x i32] [i32 173, i32 239, i32 172, i32 237], align 16
@__const.bcsp_handle_le_pkt.conf_rsp_pkt = private unnamed_addr constant [4 x i32] [i32 222, i32 173, i32 208, i32 208], align 16
@__const.bcsp_handle_le_pkt.sync_pkt = private unnamed_addr constant [4 x i32] [i32 218, i32 220, i32 237, i32 237], align 16
@GFP_ATOMIC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"Found a LE conf pkt\00", align 1
@BCSP_LE_PKT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"Found a LE sync pkt, card has reset\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hci_uart*)* @bcsp_handle_le_pkt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bcsp_handle_le_pkt(%struct.hci_uart* %0) #0 {
  %2 = alloca %struct.hci_uart*, align 8
  %3 = alloca %struct.bcsp_struct*, align 8
  %4 = alloca [4 x i32], align 16
  %5 = alloca [4 x i32], align 16
  %6 = alloca [4 x i32], align 16
  %7 = alloca %struct.sk_buff*, align 8
  store %struct.hci_uart* %0, %struct.hci_uart** %2, align 8
  %8 = load %struct.hci_uart*, %struct.hci_uart** %2, align 8
  %9 = getelementptr inbounds %struct.hci_uart, %struct.hci_uart* %8, i32 0, i32 0
  %10 = load %struct.bcsp_struct*, %struct.bcsp_struct** %9, align 8
  store %struct.bcsp_struct* %10, %struct.bcsp_struct** %3, align 8
  %11 = bitcast [4 x i32]* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %11, i8* align 16 bitcast ([4 x i32]* @__const.bcsp_handle_le_pkt.conf_pkt to i8*), i64 16, i1 false)
  %12 = bitcast [4 x i32]* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %12, i8* align 16 bitcast ([4 x i32]* @__const.bcsp_handle_le_pkt.conf_rsp_pkt to i8*), i64 16, i1 false)
  %13 = bitcast [4 x i32]* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %13, i8* align 16 bitcast ([4 x i32]* @__const.bcsp_handle_le_pkt.sync_pkt to i8*), i64 16, i1 false)
  %14 = load %struct.bcsp_struct*, %struct.bcsp_struct** %3, align 8
  %15 = getelementptr inbounds %struct.bcsp_struct, %struct.bcsp_struct* %14, i32 0, i32 0
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = load i32*, i32** %17, align 8
  %19 = getelementptr inbounds i32, i32* %18, i64 1
  %20 = load i32, i32* %19, align 4
  %21 = ashr i32 %20, 4
  %22 = icmp eq i32 %21, 4
  br i1 %22, label %23, label %64

23:                                               ; preds = %1
  %24 = load %struct.bcsp_struct*, %struct.bcsp_struct** %3, align 8
  %25 = getelementptr inbounds %struct.bcsp_struct, %struct.bcsp_struct* %24, i32 0, i32 0
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  %28 = load i32*, i32** %27, align 8
  %29 = getelementptr inbounds i32, i32* %28, i64 2
  %30 = load i32, i32* %29, align 4
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %64

32:                                               ; preds = %23
  %33 = load %struct.bcsp_struct*, %struct.bcsp_struct** %3, align 8
  %34 = getelementptr inbounds %struct.bcsp_struct, %struct.bcsp_struct* %33, i32 0, i32 0
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 0
  %37 = load i32*, i32** %36, align 8
  %38 = getelementptr inbounds i32, i32* %37, i64 4
  %39 = getelementptr inbounds [4 x i32], [4 x i32]* %4, i64 0, i64 0
  %40 = call i32 @memcmp(i32* %38, i32* %39, i32 4)
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %64, label %42

42:                                               ; preds = %32
  %43 = load i32, i32* @GFP_ATOMIC, align 4
  %44 = call %struct.sk_buff* @alloc_skb(i32 4, i32 %43)
  store %struct.sk_buff* %44, %struct.sk_buff** %7, align 8
  %45 = call i32 @BT_DBG(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %46 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %47 = icmp ne %struct.sk_buff* %46, null
  br i1 %47, label %49, label %48

48:                                               ; preds = %42
  br label %96

49:                                               ; preds = %42
  %50 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %51 = call i32 @skb_put(%struct.sk_buff* %50, i32 4)
  %52 = getelementptr inbounds [4 x i32], [4 x i32]* %5, i64 0, i64 0
  %53 = call i32 @memcpy(i32 %51, i32* %52, i32 4)
  %54 = load i32, i32* @BCSP_LE_PKT, align 4
  %55 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %56 = call %struct.TYPE_4__* @bt_cb(%struct.sk_buff* %55)
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 0
  store i32 %54, i32* %57, align 4
  %58 = load %struct.bcsp_struct*, %struct.bcsp_struct** %3, align 8
  %59 = getelementptr inbounds %struct.bcsp_struct, %struct.bcsp_struct* %58, i32 0, i32 1
  %60 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %61 = call i32 @skb_queue_head(i32* %59, %struct.sk_buff* %60)
  %62 = load %struct.hci_uart*, %struct.hci_uart** %2, align 8
  %63 = call i32 @hci_uart_tx_wakeup(%struct.hci_uart* %62)
  br label %96

64:                                               ; preds = %32, %23, %1
  %65 = load %struct.bcsp_struct*, %struct.bcsp_struct** %3, align 8
  %66 = getelementptr inbounds %struct.bcsp_struct, %struct.bcsp_struct* %65, i32 0, i32 0
  %67 = load %struct.TYPE_3__*, %struct.TYPE_3__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i32 0, i32 0
  %69 = load i32*, i32** %68, align 8
  %70 = getelementptr inbounds i32, i32* %69, i64 1
  %71 = load i32, i32* %70, align 4
  %72 = ashr i32 %71, 4
  %73 = icmp eq i32 %72, 4
  br i1 %73, label %74, label %95

74:                                               ; preds = %64
  %75 = load %struct.bcsp_struct*, %struct.bcsp_struct** %3, align 8
  %76 = getelementptr inbounds %struct.bcsp_struct, %struct.bcsp_struct* %75, i32 0, i32 0
  %77 = load %struct.TYPE_3__*, %struct.TYPE_3__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %77, i32 0, i32 0
  %79 = load i32*, i32** %78, align 8
  %80 = getelementptr inbounds i32, i32* %79, i64 2
  %81 = load i32, i32* %80, align 4
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %83, label %95

83:                                               ; preds = %74
  %84 = load %struct.bcsp_struct*, %struct.bcsp_struct** %3, align 8
  %85 = getelementptr inbounds %struct.bcsp_struct, %struct.bcsp_struct* %84, i32 0, i32 0
  %86 = load %struct.TYPE_3__*, %struct.TYPE_3__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %86, i32 0, i32 0
  %88 = load i32*, i32** %87, align 8
  %89 = getelementptr inbounds i32, i32* %88, i64 4
  %90 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 0
  %91 = call i32 @memcmp(i32* %89, i32* %90, i32 4)
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %95, label %93

93:                                               ; preds = %83
  %94 = call i32 @BT_ERR(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0))
  br label %95

95:                                               ; preds = %93, %83, %74, %64
  br label %96

96:                                               ; preds = %48, %95, %49
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @memcmp(i32*, i32*, i32) #2

declare dso_local %struct.sk_buff* @alloc_skb(i32, i32) #2

declare dso_local i32 @BT_DBG(i8*) #2

declare dso_local i32 @memcpy(i32, i32*, i32) #2

declare dso_local i32 @skb_put(%struct.sk_buff*, i32) #2

declare dso_local %struct.TYPE_4__* @bt_cb(%struct.sk_buff*) #2

declare dso_local i32 @skb_queue_head(i32*, %struct.sk_buff*) #2

declare dso_local i32 @hci_uart_tx_wakeup(%struct.hci_uart*) #2

declare dso_local i32 @BT_ERR(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
