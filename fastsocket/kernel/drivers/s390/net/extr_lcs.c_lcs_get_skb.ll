; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/net/extr_lcs.c_lcs_get_skb.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/net/extr_lcs.c_lcs_get_skb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lcs_card = type { i64, i64 (%struct.sk_buff*, %struct.TYPE_4__*)*, i64, %struct.TYPE_3__, %struct.TYPE_4__* }
%struct.sk_buff = type { i64, i64 }
%struct.TYPE_3__ = type { i32, i32, i32 }
%struct.TYPE_4__ = type { i32, i32 }

@trace = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"getskb\00", align 1
@DEV_STATE_UP = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [52 x i8] c" Allocating a socket buffer to interface %s failed\0A\00", align 1
@ETH_P_802_2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.lcs_card*, i8*, i32)* @lcs_get_skb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lcs_get_skb(%struct.lcs_card* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.lcs_card*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.sk_buff*, align 8
  store %struct.lcs_card* %0, %struct.lcs_card** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load i32, i32* @trace, align 4
  %9 = call i32 @LCS_DBF_TEXT(i32 5, i32 %8, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %10 = load %struct.lcs_card*, %struct.lcs_card** %4, align 8
  %11 = getelementptr inbounds %struct.lcs_card, %struct.lcs_card* %10, i32 0, i32 4
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %13 = icmp eq %struct.TYPE_4__* %12, null
  br i1 %13, label %20, label %14

14:                                               ; preds = %3
  %15 = load %struct.lcs_card*, %struct.lcs_card** %4, align 8
  %16 = getelementptr inbounds %struct.lcs_card, %struct.lcs_card* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @DEV_STATE_UP, align 8
  %19 = icmp ne i64 %17, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %14, %3
  br label %88

21:                                               ; preds = %14
  %22 = load i32, i32* %6, align 4
  %23 = call %struct.sk_buff* @dev_alloc_skb(i32 %22)
  store %struct.sk_buff* %23, %struct.sk_buff** %7, align 8
  %24 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %25 = icmp eq %struct.sk_buff* %24, null
  br i1 %25, label %26, label %42

26:                                               ; preds = %21
  %27 = load %struct.lcs_card*, %struct.lcs_card** %4, align 8
  %28 = getelementptr inbounds %struct.lcs_card, %struct.lcs_card* %27, i32 0, i32 4
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 1
  %31 = load %struct.lcs_card*, %struct.lcs_card** %4, align 8
  %32 = getelementptr inbounds %struct.lcs_card, %struct.lcs_card* %31, i32 0, i32 4
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @dev_err(i32* %30, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.1, i64 0, i64 0), i32 %35)
  %37 = load %struct.lcs_card*, %struct.lcs_card** %4, align 8
  %38 = getelementptr inbounds %struct.lcs_card, %struct.lcs_card* %37, i32 0, i32 3
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 8
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %39, align 8
  br label %88

42:                                               ; preds = %21
  %43 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %44 = load i32, i32* %6, align 4
  %45 = call i32 @skb_put(%struct.sk_buff* %43, i32 %44)
  %46 = load i8*, i8** %5, align 8
  %47 = load i32, i32* %6, align 4
  %48 = call i32 @memcpy(i32 %45, i8* %46, i32 %47)
  %49 = load %struct.lcs_card*, %struct.lcs_card** %4, align 8
  %50 = getelementptr inbounds %struct.lcs_card, %struct.lcs_card* %49, i32 0, i32 1
  %51 = load i64 (%struct.sk_buff*, %struct.TYPE_4__*)*, i64 (%struct.sk_buff*, %struct.TYPE_4__*)** %50, align 8
  %52 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %53 = load %struct.lcs_card*, %struct.lcs_card** %4, align 8
  %54 = getelementptr inbounds %struct.lcs_card, %struct.lcs_card* %53, i32 0, i32 4
  %55 = load %struct.TYPE_4__*, %struct.TYPE_4__** %54, align 8
  %56 = call i64 %51(%struct.sk_buff* %52, %struct.TYPE_4__* %55)
  %57 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %58 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %57, i32 0, i32 0
  store i64 %56, i64* %58, align 8
  %59 = load i32, i32* %6, align 4
  %60 = load %struct.lcs_card*, %struct.lcs_card** %4, align 8
  %61 = getelementptr inbounds %struct.lcs_card, %struct.lcs_card* %60, i32 0, i32 3
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = add i32 %63, %59
  store i32 %64, i32* %62, align 8
  %65 = load %struct.lcs_card*, %struct.lcs_card** %4, align 8
  %66 = getelementptr inbounds %struct.lcs_card, %struct.lcs_card* %65, i32 0, i32 3
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %67, align 4
  %70 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %71 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = load i32, i32* @ETH_P_802_2, align 4
  %74 = call i64 @htons(i32 %73)
  %75 = icmp eq i64 %72, %74
  br i1 %75, label %76, label %85

76:                                               ; preds = %42
  %77 = load %struct.lcs_card*, %struct.lcs_card** %4, align 8
  %78 = getelementptr inbounds %struct.lcs_card, %struct.lcs_card* %77, i32 0, i32 2
  %79 = load i64, i64* %78, align 8
  %80 = add nsw i64 %79, 1
  store i64 %80, i64* %78, align 8
  %81 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %82 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %81, i32 0, i32 1
  %83 = load i64, i64* %82, align 8
  %84 = inttoptr i64 %83 to i64*
  store i64 %80, i64* %84, align 8
  br label %85

85:                                               ; preds = %76, %42
  %86 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %87 = call i32 @netif_rx(%struct.sk_buff* %86)
  br label %88

88:                                               ; preds = %85, %26, %20
  ret void
}

declare dso_local i32 @LCS_DBF_TEXT(i32, i32, i8*) #1

declare dso_local %struct.sk_buff* @dev_alloc_skb(i32) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local i32 @memcpy(i32, i8*, i32) #1

declare dso_local i32 @skb_put(%struct.sk_buff*, i32) #1

declare dso_local i64 @htons(i32) #1

declare dso_local i32 @netif_rx(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
