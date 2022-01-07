; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/bluetooth/extr_btsdio.c_btsdio_rx_packet.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/bluetooth/extr_btsdio.c_btsdio_rx_packet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btsdio_data = type { i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.sk_buff = type { i32*, i8* }
%struct.TYPE_6__ = type { i32 }

@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@REG_RDAT = common dso_local global i32 0, align 4
@EILSEQ = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@REG_PC_RRT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.btsdio_data*)* @btsdio_rx_packet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @btsdio_rx_packet(%struct.btsdio_data* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.btsdio_data*, align 8
  %4 = alloca [4 x i32], align 4
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.btsdio_data* %0, %struct.btsdio_data** %3, align 8
  %8 = load %struct.btsdio_data*, %struct.btsdio_data** %3, align 8
  %9 = getelementptr inbounds %struct.btsdio_data, %struct.btsdio_data* %8, i32 0, i32 1
  %10 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @BT_DBG(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %12)
  %14 = load %struct.btsdio_data*, %struct.btsdio_data** %3, align 8
  %15 = getelementptr inbounds %struct.btsdio_data, %struct.btsdio_data* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = getelementptr inbounds [4 x i32], [4 x i32]* %4, i64 0, i64 0
  %18 = load i32, i32* @REG_RDAT, align 4
  %19 = call i32 @sdio_readsb(i32 %16, i32* %17, i32 %18, i32 4)
  store i32 %19, i32* %6, align 4
  %20 = load i32, i32* %6, align 4
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %1
  %23 = load i32, i32* %6, align 4
  store i32 %23, i32* %2, align 4
  br label %106

24:                                               ; preds = %1
  %25 = getelementptr inbounds [4 x i32], [4 x i32]* %4, i64 0, i64 0
  %26 = load i32, i32* %25, align 4
  %27 = getelementptr inbounds [4 x i32], [4 x i32]* %4, i64 0, i64 1
  %28 = load i32, i32* %27, align 4
  %29 = shl i32 %28, 8
  %30 = or i32 %26, %29
  %31 = getelementptr inbounds [4 x i32], [4 x i32]* %4, i64 0, i64 2
  %32 = load i32, i32* %31, align 4
  %33 = shl i32 %32, 16
  %34 = or i32 %30, %33
  store i32 %34, i32* %7, align 4
  %35 = load i32, i32* %7, align 4
  %36 = icmp slt i32 %35, 4
  br i1 %36, label %40, label %37

37:                                               ; preds = %24
  %38 = load i32, i32* %7, align 4
  %39 = icmp sgt i32 %38, 65543
  br i1 %39, label %40, label %43

40:                                               ; preds = %37, %24
  %41 = load i32, i32* @EILSEQ, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %2, align 4
  br label %106

43:                                               ; preds = %37
  %44 = load i32, i32* %7, align 4
  %45 = sub nsw i32 %44, 4
  %46 = load i32, i32* @GFP_KERNEL, align 4
  %47 = call %struct.sk_buff* @bt_skb_alloc(i32 %45, i32 %46)
  store %struct.sk_buff* %47, %struct.sk_buff** %5, align 8
  %48 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %49 = icmp ne %struct.sk_buff* %48, null
  br i1 %49, label %53, label %50

50:                                               ; preds = %43
  %51 = load i32, i32* @ENOMEM, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %2, align 4
  br label %106

53:                                               ; preds = %43
  %54 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %55 = load i32, i32* %7, align 4
  %56 = sub nsw i32 %55, 4
  %57 = call i32 @skb_put(%struct.sk_buff* %54, i32 %56)
  %58 = load %struct.btsdio_data*, %struct.btsdio_data** %3, align 8
  %59 = getelementptr inbounds %struct.btsdio_data, %struct.btsdio_data* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %62 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %61, i32 0, i32 0
  %63 = load i32*, i32** %62, align 8
  %64 = load i32, i32* @REG_RDAT, align 4
  %65 = load i32, i32* %7, align 4
  %66 = sub nsw i32 %65, 4
  %67 = call i32 @sdio_readsb(i32 %60, i32* %63, i32 %64, i32 %66)
  store i32 %67, i32* %6, align 4
  %68 = load i32, i32* %6, align 4
  %69 = icmp slt i32 %68, 0
  br i1 %69, label %70, label %74

70:                                               ; preds = %53
  %71 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %72 = call i32 @kfree_skb(%struct.sk_buff* %71)
  %73 = load i32, i32* %6, align 4
  store i32 %73, i32* %2, align 4
  br label %106

74:                                               ; preds = %53
  %75 = load i32, i32* %7, align 4
  %76 = load %struct.btsdio_data*, %struct.btsdio_data** %3, align 8
  %77 = getelementptr inbounds %struct.btsdio_data, %struct.btsdio_data* %76, i32 0, i32 1
  %78 = load %struct.TYPE_5__*, %struct.TYPE_5__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = add nsw i32 %81, %75
  store i32 %82, i32* %80, align 4
  %83 = load %struct.btsdio_data*, %struct.btsdio_data** %3, align 8
  %84 = getelementptr inbounds %struct.btsdio_data, %struct.btsdio_data* %83, i32 0, i32 1
  %85 = load %struct.TYPE_5__*, %struct.TYPE_5__** %84, align 8
  %86 = bitcast %struct.TYPE_5__* %85 to i8*
  %87 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %88 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %87, i32 0, i32 1
  store i8* %86, i8** %88, align 8
  %89 = getelementptr inbounds [4 x i32], [4 x i32]* %4, i64 0, i64 3
  %90 = load i32, i32* %89, align 4
  %91 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %92 = call %struct.TYPE_6__* @bt_cb(%struct.sk_buff* %91)
  %93 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %92, i32 0, i32 0
  store i32 %90, i32* %93, align 4
  %94 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %95 = call i32 @hci_recv_frame(%struct.sk_buff* %94)
  store i32 %95, i32* %6, align 4
  %96 = load i32, i32* %6, align 4
  %97 = icmp slt i32 %96, 0
  br i1 %97, label %98, label %100

98:                                               ; preds = %74
  %99 = load i32, i32* %6, align 4
  store i32 %99, i32* %2, align 4
  br label %106

100:                                              ; preds = %74
  %101 = load %struct.btsdio_data*, %struct.btsdio_data** %3, align 8
  %102 = getelementptr inbounds %struct.btsdio_data, %struct.btsdio_data* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = load i32, i32* @REG_PC_RRT, align 4
  %105 = call i32 @sdio_writeb(i32 %103, i32 0, i32 %104, i32* null)
  store i32 0, i32* %2, align 4
  br label %106

106:                                              ; preds = %100, %98, %70, %50, %40, %22
  %107 = load i32, i32* %2, align 4
  ret i32 %107
}

declare dso_local i32 @BT_DBG(i8*, i32) #1

declare dso_local i32 @sdio_readsb(i32, i32*, i32, i32) #1

declare dso_local %struct.sk_buff* @bt_skb_alloc(i32, i32) #1

declare dso_local i32 @skb_put(%struct.sk_buff*, i32) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

declare dso_local %struct.TYPE_6__* @bt_cb(%struct.sk_buff*) #1

declare dso_local i32 @hci_recv_frame(%struct.sk_buff*) #1

declare dso_local i32 @sdio_writeb(i32, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
