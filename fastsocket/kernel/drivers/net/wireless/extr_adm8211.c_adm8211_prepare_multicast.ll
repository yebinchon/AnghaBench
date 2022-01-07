; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/extr_adm8211.c_adm8211_prepare_multicast.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/extr_adm8211.c_adm8211_prepare_multicast.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.dev_addr_list = type { %struct.dev_addr_list*, i32 }

@ETH_ALEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211_hw*, i32, %struct.dev_addr_list*)* @adm8211_prepare_multicast to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @adm8211_prepare_multicast(%struct.ieee80211_hw* %0, i32 %1, %struct.dev_addr_list* %2) #0 {
  %4 = alloca %struct.ieee80211_hw*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.dev_addr_list*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca [2 x i32], align 4
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.dev_addr_list* %2, %struct.dev_addr_list** %6, align 8
  %10 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 0
  store i32 0, i32* %10, align 4
  %11 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 1
  store i32 0, i32* %11, align 4
  store i32 0, i32* %8, align 4
  br label %12

12:                                               ; preds = %41, %3
  %13 = load i32, i32* %8, align 4
  %14 = load i32, i32* %5, align 4
  %15 = icmp ult i32 %13, %14
  br i1 %15, label %16, label %44

16:                                               ; preds = %12
  %17 = load %struct.dev_addr_list*, %struct.dev_addr_list** %6, align 8
  %18 = icmp ne %struct.dev_addr_list* %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %16
  br label %44

20:                                               ; preds = %16
  %21 = load i32, i32* @ETH_ALEN, align 4
  %22 = load %struct.dev_addr_list*, %struct.dev_addr_list** %6, align 8
  %23 = getelementptr inbounds %struct.dev_addr_list, %struct.dev_addr_list* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = call i32 @ether_crc(i32 %21, i32 %24)
  %26 = ashr i32 %25, 26
  store i32 %26, i32* %7, align 4
  %27 = load i32, i32* %7, align 4
  %28 = and i32 %27, 63
  store i32 %28, i32* %7, align 4
  %29 = load i32, i32* %7, align 4
  %30 = and i32 %29, 31
  %31 = shl i32 1, %30
  %32 = load i32, i32* %7, align 4
  %33 = lshr i32 %32, 5
  %34 = zext i32 %33 to i64
  %35 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 %34
  %36 = load i32, i32* %35, align 4
  %37 = or i32 %36, %31
  store i32 %37, i32* %35, align 4
  %38 = load %struct.dev_addr_list*, %struct.dev_addr_list** %6, align 8
  %39 = getelementptr inbounds %struct.dev_addr_list, %struct.dev_addr_list* %38, i32 0, i32 0
  %40 = load %struct.dev_addr_list*, %struct.dev_addr_list** %39, align 8
  store %struct.dev_addr_list* %40, %struct.dev_addr_list** %6, align 8
  br label %41

41:                                               ; preds = %20
  %42 = load i32, i32* %8, align 4
  %43 = add i32 %42, 1
  store i32 %43, i32* %8, align 4
  br label %12

44:                                               ; preds = %19, %12
  %45 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 0
  %46 = load i32, i32* %45, align 4
  %47 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 1
  %48 = load i32, i32* %47, align 4
  %49 = shl i32 %48, 32
  %50 = or i32 %46, %49
  ret i32 %50
}

declare dso_local i32 @ether_crc(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
