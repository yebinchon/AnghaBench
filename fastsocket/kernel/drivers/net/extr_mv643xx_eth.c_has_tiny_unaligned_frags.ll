; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_mv643xx_eth.c_has_tiny_unaligned_frags.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_mv643xx_eth.c_has_tiny_unaligned_frags.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.TYPE_3__ = type { i32, i32 }
%struct.TYPE_4__ = type { i32, %struct.TYPE_3__* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*)* @has_tiny_unaligned_frags to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @has_tiny_unaligned_frags(%struct.sk_buff* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_3__*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %3, align 8
  store i32 0, i32* %4, align 4
  br label %6

6:                                                ; preds = %33, %1
  %7 = load i32, i32* %4, align 4
  %8 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %9 = call %struct.TYPE_4__* @skb_shinfo(%struct.sk_buff* %8)
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = icmp slt i32 %7, %11
  br i1 %12, label %13, label %36

13:                                               ; preds = %6
  %14 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %15 = call %struct.TYPE_4__* @skb_shinfo(%struct.sk_buff* %14)
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 1
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %16, align 8
  %18 = load i32, i32* %4, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i64 %19
  store %struct.TYPE_3__* %20, %struct.TYPE_3__** %5, align 8
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = icmp sle i32 %23, 8
  br i1 %24, label %25, label %32

25:                                               ; preds = %13
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = and i32 %28, 7
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %25
  store i32 1, i32* %2, align 4
  br label %37

32:                                               ; preds = %25, %13
  br label %33

33:                                               ; preds = %32
  %34 = load i32, i32* %4, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %4, align 4
  br label %6

36:                                               ; preds = %6
  store i32 0, i32* %2, align 4
  br label %37

37:                                               ; preds = %36, %31
  %38 = load i32, i32* %2, align 4
  ret i32 %38
}

declare dso_local %struct.TYPE_4__* @skb_shinfo(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
