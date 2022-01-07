; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/myri10ge/extr_myri10ge.c_myri10ge_rx_skb_build.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/myri10ge/extr_myri10ge.c_myri10ge_rx_skb_build.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32, i32, i32, i32 }
%struct.skb_frag_struct = type { i32, i32 }
%struct.TYPE_2__ = type { %struct.skb_frag_struct*, i32 }

@MXGEFW_PAD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sk_buff*, i32*, %struct.skb_frag_struct*, i32, i32)* @myri10ge_rx_skb_build to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @myri10ge_rx_skb_build(%struct.sk_buff* %0, i32* %1, %struct.skb_frag_struct* %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.skb_frag_struct*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.skb_frag_struct*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %6, align 8
  store i32* %1, i32** %7, align 8
  store %struct.skb_frag_struct* %2, %struct.skb_frag_struct** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %12 = load i32, i32* %9, align 4
  %13 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %14 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %13, i32 0, i32 1
  store i32 %12, i32* %14, align 4
  %15 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %16 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %15, i32 0, i32 0
  store i32 %12, i32* %16, align 4
  %17 = load i32, i32* %9, align 4
  %18 = sext i32 %17 to i64
  %19 = add i64 %18, 16
  %20 = trunc i64 %19 to i32
  %21 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %22 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %21, i32 0, i32 2
  store i32 %20, i32* %22, align 4
  %23 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %24 = call %struct.TYPE_2__* @skb_shinfo(%struct.sk_buff* %23)
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load %struct.skb_frag_struct*, %struct.skb_frag_struct** %25, align 8
  store %struct.skb_frag_struct* %26, %struct.skb_frag_struct** %11, align 8
  br label %27

27:                                               ; preds = %30, %5
  %28 = load i32, i32* %9, align 4
  %29 = icmp sgt i32 %28, 0
  br i1 %29, label %30, label %48

30:                                               ; preds = %27
  %31 = load %struct.skb_frag_struct*, %struct.skb_frag_struct** %11, align 8
  %32 = load %struct.skb_frag_struct*, %struct.skb_frag_struct** %8, align 8
  %33 = call i32 @memcpy(%struct.skb_frag_struct* %31, %struct.skb_frag_struct* %32, i32 8)
  %34 = load %struct.skb_frag_struct*, %struct.skb_frag_struct** %8, align 8
  %35 = getelementptr inbounds %struct.skb_frag_struct, %struct.skb_frag_struct* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* %9, align 4
  %38 = sub nsw i32 %37, %36
  store i32 %38, i32* %9, align 4
  %39 = load %struct.skb_frag_struct*, %struct.skb_frag_struct** %11, align 8
  %40 = getelementptr inbounds %struct.skb_frag_struct, %struct.skb_frag_struct* %39, i32 1
  store %struct.skb_frag_struct* %40, %struct.skb_frag_struct** %11, align 8
  %41 = load %struct.skb_frag_struct*, %struct.skb_frag_struct** %8, align 8
  %42 = getelementptr inbounds %struct.skb_frag_struct, %struct.skb_frag_struct* %41, i32 1
  store %struct.skb_frag_struct* %42, %struct.skb_frag_struct** %8, align 8
  %43 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %44 = call %struct.TYPE_2__* @skb_shinfo(%struct.sk_buff* %43)
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 8
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %45, align 8
  br label %27

48:                                               ; preds = %27
  %49 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %50 = load i32*, i32** %7, align 8
  %51 = load i32, i32* %10, align 4
  %52 = call i32 @skb_copy_to_linear_data(%struct.sk_buff* %49, i32* %50, i32 %51)
  %53 = load i32, i32* %10, align 4
  %54 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %55 = call %struct.TYPE_2__* @skb_shinfo(%struct.sk_buff* %54)
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 0
  %57 = load %struct.skb_frag_struct*, %struct.skb_frag_struct** %56, align 8
  %58 = getelementptr inbounds %struct.skb_frag_struct, %struct.skb_frag_struct* %57, i64 0
  %59 = getelementptr inbounds %struct.skb_frag_struct, %struct.skb_frag_struct* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = add nsw i32 %60, %53
  store i32 %61, i32* %59, align 4
  %62 = load i32, i32* %10, align 4
  %63 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %64 = call %struct.TYPE_2__* @skb_shinfo(%struct.sk_buff* %63)
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 0
  %66 = load %struct.skb_frag_struct*, %struct.skb_frag_struct** %65, align 8
  %67 = getelementptr inbounds %struct.skb_frag_struct, %struct.skb_frag_struct* %66, i64 0
  %68 = getelementptr inbounds %struct.skb_frag_struct, %struct.skb_frag_struct* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = sub nsw i32 %69, %62
  store i32 %70, i32* %68, align 4
  %71 = load i32, i32* %10, align 4
  %72 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %73 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = sub nsw i32 %74, %71
  store i32 %75, i32* %73, align 4
  %76 = load i32, i32* %10, align 4
  %77 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %78 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %77, i32 0, i32 3
  %79 = load i32, i32* %78, align 4
  %80 = add nsw i32 %79, %76
  store i32 %80, i32* %78, align 4
  %81 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %82 = load i32, i32* @MXGEFW_PAD, align 4
  %83 = call i32 @skb_pull(%struct.sk_buff* %81, i32 %82)
  ret void
}

declare dso_local %struct.TYPE_2__* @skb_shinfo(%struct.sk_buff*) #1

declare dso_local i32 @memcpy(%struct.skb_frag_struct*, %struct.skb_frag_struct*, i32) #1

declare dso_local i32 @skb_copy_to_linear_data(%struct.sk_buff*, i32*, i32) #1

declare dso_local i32 @skb_pull(%struct.sk_buff*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
