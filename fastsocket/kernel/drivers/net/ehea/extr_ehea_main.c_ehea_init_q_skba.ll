; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ehea/extr_ehea_main.c_ehea_init_q_skba.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ehea/extr_ehea_main.c_ehea_init_q_skba.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ehea_q_skb_arr = type { i32, i64, i64, i32 }

@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ehea_q_skb_arr*, i32)* @ehea_init_q_skba to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ehea_init_q_skba(%struct.ehea_q_skb_arr* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ehea_q_skb_arr*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.ehea_q_skb_arr* %0, %struct.ehea_q_skb_arr** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* %5, align 4
  %8 = sext i32 %7 to i64
  %9 = mul i64 8, %8
  %10 = trunc i64 %9 to i32
  store i32 %10, i32* %6, align 4
  %11 = load i32, i32* %6, align 4
  %12 = call i32 @vmalloc(i32 %11)
  %13 = load %struct.ehea_q_skb_arr*, %struct.ehea_q_skb_arr** %4, align 8
  %14 = getelementptr inbounds %struct.ehea_q_skb_arr, %struct.ehea_q_skb_arr* %13, i32 0, i32 3
  store i32 %12, i32* %14, align 8
  %15 = load %struct.ehea_q_skb_arr*, %struct.ehea_q_skb_arr** %4, align 8
  %16 = getelementptr inbounds %struct.ehea_q_skb_arr, %struct.ehea_q_skb_arr* %15, i32 0, i32 3
  %17 = load i32, i32* %16, align 8
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %22, label %19

19:                                               ; preds = %2
  %20 = load i32, i32* @ENOMEM, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %3, align 4
  br label %35

22:                                               ; preds = %2
  %23 = load %struct.ehea_q_skb_arr*, %struct.ehea_q_skb_arr** %4, align 8
  %24 = getelementptr inbounds %struct.ehea_q_skb_arr, %struct.ehea_q_skb_arr* %23, i32 0, i32 3
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* %6, align 4
  %27 = call i32 @memset(i32 %25, i32 0, i32 %26)
  %28 = load i32, i32* %5, align 4
  %29 = load %struct.ehea_q_skb_arr*, %struct.ehea_q_skb_arr** %4, align 8
  %30 = getelementptr inbounds %struct.ehea_q_skb_arr, %struct.ehea_q_skb_arr* %29, i32 0, i32 0
  store i32 %28, i32* %30, align 8
  %31 = load %struct.ehea_q_skb_arr*, %struct.ehea_q_skb_arr** %4, align 8
  %32 = getelementptr inbounds %struct.ehea_q_skb_arr, %struct.ehea_q_skb_arr* %31, i32 0, i32 2
  store i64 0, i64* %32, align 8
  %33 = load %struct.ehea_q_skb_arr*, %struct.ehea_q_skb_arr** %4, align 8
  %34 = getelementptr inbounds %struct.ehea_q_skb_arr, %struct.ehea_q_skb_arr* %33, i32 0, i32 1
  store i64 0, i64* %34, align 8
  store i32 0, i32* %3, align 4
  br label %35

35:                                               ; preds = %22, %19
  %36 = load i32, i32* %3, align 4
  ret i32 %36
}

declare dso_local i32 @vmalloc(i32) #1

declare dso_local i32 @memset(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
