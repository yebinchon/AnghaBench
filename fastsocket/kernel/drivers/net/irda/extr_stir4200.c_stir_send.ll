; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/irda/extr_stir4200.c_stir_send.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/irda/extr_stir4200.c_stir_send.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stir_cb = type { %struct.TYPE_4__*, i32, i32, i32, i64 }
%struct.TYPE_4__ = type { %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { i32, i32, i32 }
%struct.sk_buff = type { i64 }

@jiffies = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"send %d (%d)\0A\00", align 1
@TRANSMIT_TIMEOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.stir_cb*, %struct.sk_buff*)* @stir_send to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @stir_send(%struct.stir_cb* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca %struct.stir_cb*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.stir_cb* %0, %struct.stir_cb** %3, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %4, align 8
  store i32 0, i32* %6, align 4
  %7 = load %struct.stir_cb*, %struct.stir_cb** %3, align 8
  %8 = getelementptr inbounds %struct.stir_cb, %struct.stir_cb* %7, i32 0, i32 4
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %18

11:                                               ; preds = %2
  %12 = load %struct.stir_cb*, %struct.stir_cb** %3, align 8
  %13 = call i32 @receive_stop(%struct.stir_cb* %12)
  %14 = load %struct.stir_cb*, %struct.stir_cb** %3, align 8
  %15 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %16 = call i32 @irda_get_mtt(%struct.sk_buff* %15)
  %17 = call i32 @turnaround_delay(%struct.stir_cb* %14, i32 %16)
  store i32 1, i32* %6, align 4
  br label %18

18:                                               ; preds = %11, %2
  %19 = load %struct.stir_cb*, %struct.stir_cb** %3, align 8
  %20 = getelementptr inbounds %struct.stir_cb, %struct.stir_cb* %19, i32 0, i32 3
  %21 = load i32, i32* %20, align 8
  %22 = call i64 @isfir(i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %30

24:                                               ; preds = %18
  %25 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %26 = load %struct.stir_cb*, %struct.stir_cb** %3, align 8
  %27 = getelementptr inbounds %struct.stir_cb, %struct.stir_cb* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = call i32 @wrap_fir_skb(%struct.sk_buff* %25, i32 %28)
  store i32 %29, i32* %5, align 4
  br label %36

30:                                               ; preds = %18
  %31 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %32 = load %struct.stir_cb*, %struct.stir_cb** %3, align 8
  %33 = getelementptr inbounds %struct.stir_cb, %struct.stir_cb* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = call i32 @wrap_sir_skb(%struct.sk_buff* %31, i32 %34)
  store i32 %35, i32* %5, align 4
  br label %36

36:                                               ; preds = %30, %24
  %37 = load i32, i32* %6, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %43, label %39

39:                                               ; preds = %36
  %40 = load %struct.stir_cb*, %struct.stir_cb** %3, align 8
  %41 = load i32, i32* %5, align 4
  %42 = call i32 @fifo_txwait(%struct.stir_cb* %40, i32 %41)
  br label %43

43:                                               ; preds = %39, %36
  %44 = load %struct.stir_cb*, %struct.stir_cb** %3, align 8
  %45 = getelementptr inbounds %struct.stir_cb, %struct.stir_cb* %44, i32 0, i32 0
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %48, align 4
  %51 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %52 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load %struct.stir_cb*, %struct.stir_cb** %3, align 8
  %55 = getelementptr inbounds %struct.stir_cb, %struct.stir_cb* %54, i32 0, i32 0
  %56 = load %struct.TYPE_4__*, %struct.TYPE_4__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = sext i32 %59 to i64
  %61 = add nsw i64 %60, %53
  %62 = trunc i64 %61 to i32
  store i32 %62, i32* %58, align 4
  %63 = load i32, i32* @jiffies, align 4
  %64 = load %struct.stir_cb*, %struct.stir_cb** %3, align 8
  %65 = getelementptr inbounds %struct.stir_cb, %struct.stir_cb* %64, i32 0, i32 0
  %66 = load %struct.TYPE_4__*, %struct.TYPE_4__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 1
  store i32 %63, i32* %67, align 4
  %68 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %69 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = load i32, i32* %5, align 4
  %72 = call i32 @pr_debug(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i64 %70, i32 %71)
  %73 = load %struct.stir_cb*, %struct.stir_cb** %3, align 8
  %74 = getelementptr inbounds %struct.stir_cb, %struct.stir_cb* %73, i32 0, i32 2
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.stir_cb*, %struct.stir_cb** %3, align 8
  %77 = getelementptr inbounds %struct.stir_cb, %struct.stir_cb* %76, i32 0, i32 2
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @usb_sndbulkpipe(i32 %78, i32 1)
  %80 = load %struct.stir_cb*, %struct.stir_cb** %3, align 8
  %81 = getelementptr inbounds %struct.stir_cb, %struct.stir_cb* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 8
  %83 = load i32, i32* %5, align 4
  %84 = load i32, i32* @TRANSMIT_TIMEOUT, align 4
  %85 = call i64 @usb_bulk_msg(i32 %75, i32 %79, i32 %82, i32 %83, i32* null, i32 %84)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %95

87:                                               ; preds = %43
  %88 = load %struct.stir_cb*, %struct.stir_cb** %3, align 8
  %89 = getelementptr inbounds %struct.stir_cb, %struct.stir_cb* %88, i32 0, i32 0
  %90 = load %struct.TYPE_4__*, %struct.TYPE_4__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = add nsw i32 %93, 1
  store i32 %94, i32* %92, align 4
  br label %95

95:                                               ; preds = %87, %43
  ret void
}

declare dso_local i32 @receive_stop(%struct.stir_cb*) #1

declare dso_local i32 @turnaround_delay(%struct.stir_cb*, i32) #1

declare dso_local i32 @irda_get_mtt(%struct.sk_buff*) #1

declare dso_local i64 @isfir(i32) #1

declare dso_local i32 @wrap_fir_skb(%struct.sk_buff*, i32) #1

declare dso_local i32 @wrap_sir_skb(%struct.sk_buff*, i32) #1

declare dso_local i32 @fifo_txwait(%struct.stir_cb*, i32) #1

declare dso_local i32 @pr_debug(i8*, i64, i32) #1

declare dso_local i64 @usb_bulk_msg(i32, i32, i32, i32, i32*, i32) #1

declare dso_local i32 @usb_sndbulkpipe(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
