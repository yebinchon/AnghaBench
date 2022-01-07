; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hisax/extr_isdnl2.c_tx_ui.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hisax/extr_isdnl2.c_tx_ui.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.PStack = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.sk_buff = type { i32 }

@MAX_HEADER_LEN = common dso_local global i32 0, align 4
@CMD = common dso_local global i32 0, align 4
@UI = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.PStack*)* @tx_ui to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tx_ui(%struct.PStack* %0) #0 {
  %2 = alloca %struct.PStack*, align 8
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.PStack* %0, %struct.PStack** %2, align 8
  %7 = load i32, i32* @MAX_HEADER_LEN, align 4
  %8 = zext i32 %7 to i64
  %9 = call i8* @llvm.stacksave()
  store i8* %9, i8** %4, align 8
  %10 = alloca i32, i64 %8, align 16
  store i64 %8, i64* %5, align 8
  %11 = load %struct.PStack*, %struct.PStack** %2, align 8
  %12 = getelementptr inbounds %struct.PStack, %struct.PStack* %11, i32 0, i32 0
  %13 = load i32, i32* @CMD, align 4
  %14 = call i32 @sethdraddr(%struct.TYPE_2__* %12, i32* %10, i32 %13)
  store i32 %14, i32* %6, align 4
  %15 = load i32, i32* @UI, align 4
  %16 = load i32, i32* %6, align 4
  %17 = add nsw i32 %16, 1
  store i32 %17, i32* %6, align 4
  %18 = sext i32 %16 to i64
  %19 = getelementptr inbounds i32, i32* %10, i64 %18
  store i32 %15, i32* %19, align 4
  br label %20

20:                                               ; preds = %26, %1
  %21 = load %struct.PStack*, %struct.PStack** %2, align 8
  %22 = getelementptr inbounds %struct.PStack, %struct.PStack* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = call %struct.sk_buff* @skb_dequeue(i32* %23)
  store %struct.sk_buff* %24, %struct.sk_buff** %3, align 8
  %25 = icmp ne %struct.sk_buff* %24, null
  br i1 %25, label %26, label %35

26:                                               ; preds = %20
  %27 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %28 = load i32, i32* %6, align 4
  %29 = call i32 @skb_push(%struct.sk_buff* %27, i32 %28)
  %30 = load i32, i32* %6, align 4
  %31 = call i32 @memcpy(i32 %29, i32* %10, i32 %30)
  %32 = load %struct.PStack*, %struct.PStack** %2, align 8
  %33 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %34 = call i32 @enqueue_ui(%struct.PStack* %32, %struct.sk_buff* %33)
  br label %20

35:                                               ; preds = %20
  %36 = load i8*, i8** %4, align 8
  call void @llvm.stackrestore(i8* %36)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @sethdraddr(%struct.TYPE_2__*, i32*, i32) #2

declare dso_local %struct.sk_buff* @skb_dequeue(i32*) #2

declare dso_local i32 @memcpy(i32, i32*, i32) #2

declare dso_local i32 @skb_push(%struct.sk_buff*, i32) #2

declare dso_local i32 @enqueue_ui(%struct.PStack*, %struct.sk_buff*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
