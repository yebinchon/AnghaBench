; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/enic/extr_enic_main.c_enic_set_rss_nic_cfg.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/enic/extr_enic_main.c_enic_set_rss_nic_cfg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.enic = type { i32 }
%struct.device = type { i32 }

@NIC_CFG_RSS_HASH_TYPE_IPV4 = common dso_local global i32 0, align 4
@NIC_CFG_RSS_HASH_TYPE_TCP_IPV4 = common dso_local global i32 0, align 4
@NIC_CFG_RSS_HASH_TYPE_IPV6 = common dso_local global i32 0, align 4
@NIC_CFG_RSS_HASH_TYPE_TCP_IPV6 = common dso_local global i32 0, align 4
@RSS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [55 x i8] c"RSS disabled, Failed to set RSS cpu indirection table.\00", align 1
@.str.1 = private unnamed_addr constant [38 x i8] c"RSS disabled, Failed to set RSS key.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.enic*)* @enic_set_rss_nic_cfg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @enic_set_rss_nic_cfg(%struct.enic* %0) #0 {
  %2 = alloca %struct.enic*, align 8
  %3 = alloca %struct.device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.enic* %0, %struct.enic** %2, align 8
  %9 = load %struct.enic*, %struct.enic** %2, align 8
  %10 = call %struct.device* @enic_get_dev(%struct.enic* %9)
  store %struct.device* %10, %struct.device** %3, align 8
  store i32 0, i32* %4, align 4
  %11 = load i32, i32* @NIC_CFG_RSS_HASH_TYPE_IPV4, align 4
  %12 = load i32, i32* @NIC_CFG_RSS_HASH_TYPE_TCP_IPV4, align 4
  %13 = or i32 %11, %12
  %14 = load i32, i32* @NIC_CFG_RSS_HASH_TYPE_IPV6, align 4
  %15 = or i32 %13, %14
  %16 = load i32, i32* @NIC_CFG_RSS_HASH_TYPE_TCP_IPV6, align 4
  %17 = or i32 %15, %16
  store i32 %17, i32* %5, align 4
  store i32 7, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %18 = load %struct.enic*, %struct.enic** %2, align 8
  %19 = load i32, i32* @RSS, align 4
  %20 = call i64 @ENIC_SETTING(%struct.enic* %18, i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %27

22:                                               ; preds = %1
  %23 = load %struct.enic*, %struct.enic** %2, align 8
  %24 = getelementptr inbounds %struct.enic, %struct.enic* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = icmp sgt i32 %25, 1
  br label %27

27:                                               ; preds = %22, %1
  %28 = phi i1 [ false, %1 ], [ %26, %22 ]
  %29 = zext i1 %28 to i32
  store i32 %29, i32* %8, align 4
  %30 = load i32, i32* %8, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %48

32:                                               ; preds = %27
  %33 = load %struct.enic*, %struct.enic** %2, align 8
  %34 = call i32 @enic_set_rsskey(%struct.enic* %33)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %44, label %36

36:                                               ; preds = %32
  %37 = load %struct.enic*, %struct.enic** %2, align 8
  %38 = call i64 @enic_set_rsscpu(%struct.enic* %37, i32 7)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %36
  store i32 0, i32* %8, align 4
  %41 = load %struct.device*, %struct.device** %3, align 8
  %42 = call i32 @dev_warn(%struct.device* %41, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0))
  br label %43

43:                                               ; preds = %40, %36
  br label %47

44:                                               ; preds = %32
  store i32 0, i32* %8, align 4
  %45 = load %struct.device*, %struct.device** %3, align 8
  %46 = call i32 @dev_warn(%struct.device* %45, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0))
  br label %47

47:                                               ; preds = %44, %43
  br label %48

48:                                               ; preds = %47, %27
  %49 = load %struct.enic*, %struct.enic** %2, align 8
  %50 = load i32, i32* %5, align 4
  %51 = load i32, i32* %8, align 4
  %52 = call i32 @enic_set_niccfg(%struct.enic* %49, i32 0, i32 %50, i32 7, i32 0, i32 %51)
  ret i32 %52
}

declare dso_local %struct.device* @enic_get_dev(%struct.enic*) #1

declare dso_local i64 @ENIC_SETTING(%struct.enic*, i32) #1

declare dso_local i32 @enic_set_rsskey(%struct.enic*) #1

declare dso_local i64 @enic_set_rsscpu(%struct.enic*, i32) #1

declare dso_local i32 @dev_warn(%struct.device*, i8*) #1

declare dso_local i32 @enic_set_niccfg(%struct.enic*, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
