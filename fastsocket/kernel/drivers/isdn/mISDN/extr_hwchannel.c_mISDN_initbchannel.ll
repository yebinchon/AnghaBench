; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/mISDN/extr_hwchannel.c_mISDN_initbchannel.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/mISDN/extr_hwchannel.c_mISDN_initbchannel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bchannel = type { i32, i32, i32*, i64, i32, i64, i32*, i32*, i32*, i64 }

@bchannel_bh = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mISDN_initbchannel(%struct.bchannel* %0, i32 %1) #0 {
  %3 = alloca %struct.bchannel*, align 8
  %4 = alloca i32, align 4
  store %struct.bchannel* %0, %struct.bchannel** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.bchannel*, %struct.bchannel** %3, align 8
  %6 = getelementptr inbounds %struct.bchannel, %struct.bchannel* %5, i32 0, i32 9
  store i64 0, i64* %6, align 8
  %7 = load i32, i32* %4, align 4
  %8 = load %struct.bchannel*, %struct.bchannel** %3, align 8
  %9 = getelementptr inbounds %struct.bchannel, %struct.bchannel* %8, i32 0, i32 0
  store i32 %7, i32* %9, align 8
  %10 = load %struct.bchannel*, %struct.bchannel** %3, align 8
  %11 = getelementptr inbounds %struct.bchannel, %struct.bchannel* %10, i32 0, i32 8
  store i32* null, i32** %11, align 8
  %12 = load %struct.bchannel*, %struct.bchannel** %3, align 8
  %13 = getelementptr inbounds %struct.bchannel, %struct.bchannel* %12, i32 0, i32 7
  store i32* null, i32** %13, align 8
  %14 = load %struct.bchannel*, %struct.bchannel** %3, align 8
  %15 = getelementptr inbounds %struct.bchannel, %struct.bchannel* %14, i32 0, i32 6
  store i32* null, i32** %15, align 8
  %16 = load %struct.bchannel*, %struct.bchannel** %3, align 8
  %17 = getelementptr inbounds %struct.bchannel, %struct.bchannel* %16, i32 0, i32 5
  store i64 0, i64* %17, align 8
  %18 = load %struct.bchannel*, %struct.bchannel** %3, align 8
  %19 = getelementptr inbounds %struct.bchannel, %struct.bchannel* %18, i32 0, i32 4
  %20 = call i32 @skb_queue_head_init(i32* %19)
  %21 = load %struct.bchannel*, %struct.bchannel** %3, align 8
  %22 = getelementptr inbounds %struct.bchannel, %struct.bchannel* %21, i32 0, i32 3
  store i64 0, i64* %22, align 8
  %23 = load %struct.bchannel*, %struct.bchannel** %3, align 8
  %24 = getelementptr inbounds %struct.bchannel, %struct.bchannel* %23, i32 0, i32 2
  store i32* null, i32** %24, align 8
  %25 = load %struct.bchannel*, %struct.bchannel** %3, align 8
  %26 = getelementptr inbounds %struct.bchannel, %struct.bchannel* %25, i32 0, i32 1
  %27 = load i32, i32* @bchannel_bh, align 4
  %28 = call i32 @INIT_WORK(i32* %26, i32 %27)
  ret i32 0
}

declare dso_local i32 @skb_queue_head_init(i32*) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
