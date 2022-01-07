; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/zd1211rw/extr_zd_mac.c_zd_op_prepare_multicast.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/zd1211rw/extr_zd_mac.c_zd_op_prepare_multicast.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.dev_addr_list = type { %struct.dev_addr_list*, i32 }
%struct.zd_mac = type { i32 }
%struct.zd_mc_hash = type { i32, i64 }

@.str = private unnamed_addr constant [13 x i8] c"mc addr %pM\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211_hw*, i32, %struct.dev_addr_list*)* @zd_op_prepare_multicast to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zd_op_prepare_multicast(%struct.ieee80211_hw* %0, i32 %1, %struct.dev_addr_list* %2) #0 {
  %4 = alloca %struct.ieee80211_hw*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.dev_addr_list*, align 8
  %7 = alloca %struct.zd_mac*, align 8
  %8 = alloca %struct.zd_mc_hash, align 8
  %9 = alloca i32, align 4
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.dev_addr_list* %2, %struct.dev_addr_list** %6, align 8
  %10 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %11 = call %struct.zd_mac* @zd_hw_mac(%struct.ieee80211_hw* %10)
  store %struct.zd_mac* %11, %struct.zd_mac** %7, align 8
  %12 = call i32 @zd_mc_clear(%struct.zd_mc_hash* %8)
  store i32 0, i32* %9, align 4
  br label %13

13:                                               ; preds = %35, %3
  %14 = load i32, i32* %9, align 4
  %15 = load i32, i32* %5, align 4
  %16 = icmp slt i32 %14, %15
  br i1 %16, label %17, label %38

17:                                               ; preds = %13
  %18 = load %struct.dev_addr_list*, %struct.dev_addr_list** %6, align 8
  %19 = icmp ne %struct.dev_addr_list* %18, null
  br i1 %19, label %21, label %20

20:                                               ; preds = %17
  br label %38

21:                                               ; preds = %17
  %22 = load %struct.zd_mac*, %struct.zd_mac** %7, align 8
  %23 = call i32 @zd_mac_dev(%struct.zd_mac* %22)
  %24 = load %struct.dev_addr_list*, %struct.dev_addr_list** %6, align 8
  %25 = getelementptr inbounds %struct.dev_addr_list, %struct.dev_addr_list* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 8
  %27 = call i32 @dev_dbg_f(i32 %23, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 %26)
  %28 = load %struct.dev_addr_list*, %struct.dev_addr_list** %6, align 8
  %29 = getelementptr inbounds %struct.dev_addr_list, %struct.dev_addr_list* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = call i32 @zd_mc_add_addr(%struct.zd_mc_hash* %8, i32 %30)
  %32 = load %struct.dev_addr_list*, %struct.dev_addr_list** %6, align 8
  %33 = getelementptr inbounds %struct.dev_addr_list, %struct.dev_addr_list* %32, i32 0, i32 0
  %34 = load %struct.dev_addr_list*, %struct.dev_addr_list** %33, align 8
  store %struct.dev_addr_list* %34, %struct.dev_addr_list** %6, align 8
  br label %35

35:                                               ; preds = %21
  %36 = load i32, i32* %9, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %9, align 4
  br label %13

38:                                               ; preds = %20, %13
  %39 = getelementptr inbounds %struct.zd_mc_hash, %struct.zd_mc_hash* %8, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = getelementptr inbounds %struct.zd_mc_hash, %struct.zd_mc_hash* %8, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = trunc i64 %42 to i32
  %44 = shl i32 %43, 32
  %45 = or i32 %40, %44
  ret i32 %45
}

declare dso_local %struct.zd_mac* @zd_hw_mac(%struct.ieee80211_hw*) #1

declare dso_local i32 @zd_mc_clear(%struct.zd_mc_hash*) #1

declare dso_local i32 @dev_dbg_f(i32, i8*, i32) #1

declare dso_local i32 @zd_mac_dev(%struct.zd_mac*) #1

declare dso_local i32 @zd_mc_add_addr(%struct.zd_mc_hash*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
