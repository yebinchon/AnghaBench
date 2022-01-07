; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/irda/extr_stir4200.c_wrap_sir_skb.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/irda/extr_stir4200.c_wrap_sir_skb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }

@STIR_IRDA_HEADER = common dso_local global i32 0, align 4
@STIR_FIFO_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, i32*)* @wrap_sir_skb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wrap_sir_skb(%struct.sk_buff* %0, i32* %1) #0 {
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %3, align 8
  store i32* %1, i32** %4, align 8
  %6 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %7 = load i32*, i32** %4, align 8
  %8 = load i32, i32* @STIR_IRDA_HEADER, align 4
  %9 = sext i32 %8 to i64
  %10 = getelementptr inbounds i32, i32* %7, i64 %9
  %11 = load i32, i32* @STIR_FIFO_SIZE, align 4
  %12 = load i32, i32* @STIR_IRDA_HEADER, align 4
  %13 = sub nsw i32 %11, %12
  %14 = call i32 @async_wrap_skb(%struct.sk_buff* %6, i32* %10, i32 %13)
  store i32 %14, i32* %5, align 4
  %15 = load i32*, i32** %4, align 8
  %16 = getelementptr inbounds i32, i32* %15, i64 0
  store i32 85, i32* %16, align 4
  %17 = load i32*, i32** %4, align 8
  %18 = getelementptr inbounds i32, i32* %17, i64 1
  store i32 170, i32* %18, align 4
  %19 = load i32, i32* %5, align 4
  %20 = and i32 %19, 255
  %21 = load i32*, i32** %4, align 8
  %22 = getelementptr inbounds i32, i32* %21, i64 2
  store i32 %20, i32* %22, align 4
  %23 = load i32, i32* %5, align 4
  %24 = ashr i32 %23, 8
  %25 = and i32 %24, 255
  %26 = load i32*, i32** %4, align 8
  %27 = getelementptr inbounds i32, i32* %26, i64 3
  store i32 %25, i32* %27, align 4
  %28 = load i32, i32* %5, align 4
  %29 = load i32, i32* @STIR_IRDA_HEADER, align 4
  %30 = add nsw i32 %28, %29
  ret i32 %30
}

declare dso_local i32 @async_wrap_skb(%struct.sk_buff*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
