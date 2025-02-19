; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/mISDN/extr_layer2.c_l2down_create.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/mISDN/extr_layer2.c_l2down_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.layer2 = type { i32 }
%struct.sk_buff = type { i32 }
%struct.mISDNhead = type { i8*, i8* }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.layer2*, i8*, i8*, i32, i8*)* @l2down_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @l2down_create(%struct.layer2* %0, i8* %1, i8* %2, i32 %3, i8* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.layer2*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca %struct.sk_buff*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.mISDNhead*, align 8
  store %struct.layer2* %0, %struct.layer2** %7, align 8
  store i8* %1, i8** %8, align 8
  store i8* %2, i8** %9, align 8
  store i32 %3, i32* %10, align 4
  store i8* %4, i8** %11, align 8
  %15 = load i32, i32* %10, align 4
  %16 = load i32, i32* @GFP_ATOMIC, align 4
  %17 = call %struct.sk_buff* @mI_alloc_skb(i32 %15, i32 %16)
  store %struct.sk_buff* %17, %struct.sk_buff** %12, align 8
  %18 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %19 = icmp ne %struct.sk_buff* %18, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %5
  %21 = load i32, i32* @ENOMEM, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %6, align 4
  br label %52

23:                                               ; preds = %5
  %24 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %25 = call %struct.mISDNhead* @mISDN_HEAD_P(%struct.sk_buff* %24)
  store %struct.mISDNhead* %25, %struct.mISDNhead** %14, align 8
  %26 = load i8*, i8** %8, align 8
  %27 = load %struct.mISDNhead*, %struct.mISDNhead** %14, align 8
  %28 = getelementptr inbounds %struct.mISDNhead, %struct.mISDNhead* %27, i32 0, i32 1
  store i8* %26, i8** %28, align 8
  %29 = load i8*, i8** %9, align 8
  %30 = load %struct.mISDNhead*, %struct.mISDNhead** %14, align 8
  %31 = getelementptr inbounds %struct.mISDNhead, %struct.mISDNhead* %30, i32 0, i32 0
  store i8* %29, i8** %31, align 8
  %32 = load i32, i32* %10, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %41

34:                                               ; preds = %23
  %35 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %36 = load i32, i32* %10, align 4
  %37 = call i32 @skb_put(%struct.sk_buff* %35, i32 %36)
  %38 = load i8*, i8** %11, align 8
  %39 = load i32, i32* %10, align 4
  %40 = call i32 @memcpy(i32 %37, i8* %38, i32 %39)
  br label %41

41:                                               ; preds = %34, %23
  %42 = load %struct.layer2*, %struct.layer2** %7, align 8
  %43 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %44 = call i32 @l2down_raw(%struct.layer2* %42, %struct.sk_buff* %43)
  store i32 %44, i32* %13, align 4
  %45 = load i32, i32* %13, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %41
  %48 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %49 = call i32 @dev_kfree_skb(%struct.sk_buff* %48)
  br label %50

50:                                               ; preds = %47, %41
  %51 = load i32, i32* %13, align 4
  store i32 %51, i32* %6, align 4
  br label %52

52:                                               ; preds = %50, %20
  %53 = load i32, i32* %6, align 4
  ret i32 %53
}

declare dso_local %struct.sk_buff* @mI_alloc_skb(i32, i32) #1

declare dso_local %struct.mISDNhead* @mISDN_HEAD_P(%struct.sk_buff*) #1

declare dso_local i32 @memcpy(i32, i8*, i32) #1

declare dso_local i32 @skb_put(%struct.sk_buff*, i32) #1

declare dso_local i32 @l2down_raw(%struct.layer2*, %struct.sk_buff*) #1

declare dso_local i32 @dev_kfree_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
