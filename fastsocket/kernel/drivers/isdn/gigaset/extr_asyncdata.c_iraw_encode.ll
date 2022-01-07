; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/gigaset/extr_asyncdata.c_iraw_encode.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/gigaset/extr_asyncdata.c_iraw_encode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32, i8* }

@DLE_FLAG = common dso_local global i8 0, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.sk_buff* (%struct.sk_buff*, i32, i32)* @iraw_encode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.sk_buff* @iraw_encode(%struct.sk_buff* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.sk_buff*, align 8
  %9 = alloca i8, align 1
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %12 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %13 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = mul nsw i32 2, %14
  %16 = load i32, i32* %7, align 4
  %17 = add nsw i32 %15, %16
  %18 = load i32, i32* %6, align 4
  %19 = add nsw i32 %17, %18
  %20 = call %struct.sk_buff* @dev_alloc_skb(i32 %19)
  store %struct.sk_buff* %20, %struct.sk_buff** %8, align 8
  %21 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %22 = icmp ne %struct.sk_buff* %21, null
  br i1 %22, label %26, label %23

23:                                               ; preds = %3
  %24 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %25 = call i32 @dev_kfree_skb(%struct.sk_buff* %24)
  store %struct.sk_buff* null, %struct.sk_buff** %4, align 8
  br label %63

26:                                               ; preds = %3
  %27 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %28 = load i32, i32* %6, align 4
  %29 = call i32 @skb_reserve(%struct.sk_buff* %27, i32 %28)
  %30 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %31 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %30, i32 0, i32 1
  %32 = load i8*, i8** %31, align 8
  store i8* %32, i8** %10, align 8
  %33 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %34 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  store i32 %35, i32* %11, align 4
  br label %36

36:                                               ; preds = %55, %26
  %37 = load i32, i32* %11, align 4
  %38 = add nsw i32 %37, -1
  store i32 %38, i32* %11, align 4
  %39 = icmp ne i32 %37, 0
  br i1 %39, label %40, label %59

40:                                               ; preds = %36
  %41 = load i8*, i8** %10, align 8
  %42 = getelementptr inbounds i8, i8* %41, i32 1
  store i8* %42, i8** %10, align 8
  %43 = load i8, i8* %41, align 1
  %44 = zext i8 %43 to i32
  %45 = call zeroext i8 @bitrev8(i32 %44)
  store i8 %45, i8* %9, align 1
  %46 = load i8, i8* %9, align 1
  %47 = zext i8 %46 to i32
  %48 = load i8, i8* @DLE_FLAG, align 1
  %49 = zext i8 %48 to i32
  %50 = icmp eq i32 %47, %49
  br i1 %50, label %51, label %55

51:                                               ; preds = %40
  %52 = load i8, i8* %9, align 1
  %53 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %54 = call i8* @skb_put(%struct.sk_buff* %53, i32 1)
  store i8 %52, i8* %54, align 1
  br label %55

55:                                               ; preds = %51, %40
  %56 = load i8, i8* %9, align 1
  %57 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %58 = call i8* @skb_put(%struct.sk_buff* %57, i32 1)
  store i8 %56, i8* %58, align 1
  br label %36

59:                                               ; preds = %36
  %60 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %61 = call i32 @dev_kfree_skb(%struct.sk_buff* %60)
  %62 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  store %struct.sk_buff* %62, %struct.sk_buff** %4, align 8
  br label %63

63:                                               ; preds = %59, %23
  %64 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  ret %struct.sk_buff* %64
}

declare dso_local %struct.sk_buff* @dev_alloc_skb(i32) #1

declare dso_local i32 @dev_kfree_skb(%struct.sk_buff*) #1

declare dso_local i32 @skb_reserve(%struct.sk_buff*, i32) #1

declare dso_local zeroext i8 @bitrev8(i32) #1

declare dso_local i8* @skb_put(%struct.sk_buff*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
