; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/rt2x00/extr_rt2x00queue.c_rt2x00queue_insert_l2pad.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/rt2x00/extr_rt2x00queue.c_rt2x00queue_insert_l2pad.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rt2x00queue_insert_l2pad(%struct.sk_buff* %0, i32 %1) #0 {
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %10 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = load i32, i32* %4, align 4
  %13 = sub i32 %11, %12
  store i32 %13, i32* %5, align 4
  %14 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %15 = call i32 @ALIGN_SIZE(%struct.sk_buff* %14, i32 0)
  store i32 %15, i32* %6, align 4
  %16 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %17 = load i32, i32* %4, align 4
  %18 = call i32 @ALIGN_SIZE(%struct.sk_buff* %16, i32 %17)
  store i32 %18, i32* %7, align 4
  %19 = load i32, i32* %5, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %2
  %22 = load i32, i32* %4, align 4
  %23 = call i32 @L2PAD_SIZE(i32 %22)
  br label %25

24:                                               ; preds = %2
  br label %25

25:                                               ; preds = %24, %21
  %26 = phi i32 [ %23, %21 ], [ 0, %24 ]
  store i32 %26, i32* %8, align 4
  %27 = load i32, i32* %7, align 4
  %28 = load i32, i32* %6, align 4
  %29 = icmp ugt i32 %27, %28
  br i1 %29, label %30, label %33

30:                                               ; preds = %25
  %31 = load i32, i32* %6, align 4
  %32 = add i32 %31, 4
  store i32 %32, i32* %6, align 4
  br label %33

33:                                               ; preds = %30, %25
  %34 = load i32, i32* %6, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %37, label %36

36:                                               ; preds = %33
  br label %89

37:                                               ; preds = %33
  %38 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %39 = load i32, i32* %6, align 4
  %40 = call i32 @skb_push(%struct.sk_buff* %38, i32 %39)
  %41 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %42 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %45 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = load i32, i32* %6, align 4
  %48 = zext i32 %47 to i64
  %49 = add nsw i64 %46, %48
  %50 = load i32, i32* %4, align 4
  %51 = call i32 @memmove(i64 %43, i64 %49, i32 %50)
  %52 = load i32, i32* %5, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %81

54:                                               ; preds = %37
  %55 = load i32, i32* %7, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %81

57:                                               ; preds = %54
  %58 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %59 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %58, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = load i32, i32* %4, align 4
  %62 = zext i32 %61 to i64
  %63 = add nsw i64 %60, %62
  %64 = load i32, i32* %8, align 4
  %65 = zext i32 %64 to i64
  %66 = add nsw i64 %63, %65
  %67 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %68 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %67, i32 0, i32 1
  %69 = load i64, i64* %68, align 8
  %70 = load i32, i32* %4, align 4
  %71 = zext i32 %70 to i64
  %72 = add nsw i64 %69, %71
  %73 = load i32, i32* %8, align 4
  %74 = zext i32 %73 to i64
  %75 = add nsw i64 %72, %74
  %76 = load i32, i32* %7, align 4
  %77 = zext i32 %76 to i64
  %78 = add nsw i64 %75, %77
  %79 = load i32, i32* %5, align 4
  %80 = call i32 @memmove(i64 %66, i64 %78, i32 %79)
  br label %81

81:                                               ; preds = %57, %54, %37
  %82 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %83 = load i32, i32* %4, align 4
  %84 = load i32, i32* %8, align 4
  %85 = add i32 %83, %84
  %86 = load i32, i32* %5, align 4
  %87 = add i32 %85, %86
  %88 = call i32 @skb_trim(%struct.sk_buff* %82, i32 %87)
  br label %89

89:                                               ; preds = %81, %36
  ret void
}

declare dso_local i32 @ALIGN_SIZE(%struct.sk_buff*, i32) #1

declare dso_local i32 @L2PAD_SIZE(i32) #1

declare dso_local i32 @skb_push(%struct.sk_buff*, i32) #1

declare dso_local i32 @memmove(i64, i64, i32) #1

declare dso_local i32 @skb_trim(%struct.sk_buff*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
