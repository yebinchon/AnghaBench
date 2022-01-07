; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-raid45.c_stripe_recover_get_region.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-raid45.c_stripe_recover_get_region.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stripe = type { %struct.recover_addr*, i32 }
%struct.recover_addr = type { i64, i64, i64 }
%struct.raid_set = type { %struct.recover }
%struct.recover = type { i64, %struct.dm_rh_client*, %struct.dm_dirty_log* }
%struct.dm_rh_client = type { i32 }
%struct.dm_dirty_log = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 (%struct.dm_dirty_log*)* }

@EPERM = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.stripe*)* @stripe_recover_get_region to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stripe_recover_get_region(%struct.stripe* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.stripe*, align 8
  %4 = alloca %struct.raid_set*, align 8
  %5 = alloca %struct.recover*, align 8
  %6 = alloca %struct.recover_addr*, align 8
  %7 = alloca %struct.dm_dirty_log*, align 8
  %8 = alloca %struct.dm_rh_client*, align 8
  store %struct.stripe* %0, %struct.stripe** %3, align 8
  %9 = load %struct.stripe*, %struct.stripe** %3, align 8
  %10 = getelementptr inbounds %struct.stripe, %struct.stripe* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 8
  %12 = call %struct.raid_set* @RS(i32 %11)
  store %struct.raid_set* %12, %struct.raid_set** %4, align 8
  %13 = load %struct.raid_set*, %struct.raid_set** %4, align 8
  %14 = getelementptr inbounds %struct.raid_set, %struct.raid_set* %13, i32 0, i32 0
  store %struct.recover* %14, %struct.recover** %5, align 8
  %15 = load %struct.stripe*, %struct.stripe** %3, align 8
  %16 = getelementptr inbounds %struct.stripe, %struct.stripe* %15, i32 0, i32 0
  %17 = load %struct.recover_addr*, %struct.recover_addr** %16, align 8
  store %struct.recover_addr* %17, %struct.recover_addr** %6, align 8
  %18 = load %struct.recover*, %struct.recover** %5, align 8
  %19 = getelementptr inbounds %struct.recover, %struct.recover* %18, i32 0, i32 2
  %20 = load %struct.dm_dirty_log*, %struct.dm_dirty_log** %19, align 8
  store %struct.dm_dirty_log* %20, %struct.dm_dirty_log** %7, align 8
  %21 = load %struct.recover*, %struct.recover** %5, align 8
  %22 = getelementptr inbounds %struct.recover, %struct.recover* %21, i32 0, i32 1
  %23 = load %struct.dm_rh_client*, %struct.dm_rh_client** %22, align 8
  store %struct.dm_rh_client* %23, %struct.dm_rh_client** %8, align 8
  %24 = load %struct.dm_dirty_log*, %struct.dm_dirty_log** %7, align 8
  %25 = icmp ne %struct.dm_dirty_log* %24, null
  %26 = xor i1 %25, true
  %27 = zext i1 %26 to i32
  %28 = call i32 @BUG_ON(i32 %27)
  %29 = load %struct.dm_rh_client*, %struct.dm_rh_client** %8, align 8
  %30 = icmp ne %struct.dm_rh_client* %29, null
  %31 = xor i1 %30, true
  %32 = zext i1 %31 to i32
  %33 = call i32 @BUG_ON(i32 %32)
  %34 = load %struct.recover_addr*, %struct.recover_addr** %6, align 8
  %35 = getelementptr inbounds %struct.recover_addr, %struct.recover_addr* %34, i32 0, i32 2
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %1
  store i32 1, i32* %2, align 4
  br label %101

39:                                               ; preds = %1
  %40 = load %struct.raid_set*, %struct.raid_set** %4, align 8
  %41 = call i64 @RSSuspend(%struct.raid_set* %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %39
  %44 = load i32, i32* @EPERM, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %2, align 4
  br label %101

46:                                               ; preds = %39
  %47 = load %struct.dm_dirty_log*, %struct.dm_dirty_log** %7, align 8
  %48 = getelementptr inbounds %struct.dm_dirty_log, %struct.dm_dirty_log* %47, i32 0, i32 0
  %49 = load %struct.TYPE_2__*, %struct.TYPE_2__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 0
  %51 = load i64 (%struct.dm_dirty_log*)*, i64 (%struct.dm_dirty_log*)** %50, align 8
  %52 = load %struct.dm_dirty_log*, %struct.dm_dirty_log** %7, align 8
  %53 = call i64 %51(%struct.dm_dirty_log* %52)
  %54 = load %struct.recover*, %struct.recover** %5, align 8
  %55 = getelementptr inbounds %struct.recover, %struct.recover* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = icmp sge i64 %53, %56
  br i1 %57, label %58, label %61

58:                                               ; preds = %46
  %59 = load i32, i32* @ENOENT, align 4
  %60 = sub nsw i32 0, %59
  store i32 %60, i32* %2, align 4
  br label %101

61:                                               ; preds = %46
  %62 = load %struct.raid_set*, %struct.raid_set** %4, align 8
  %63 = call i32 @recover_bandwidth(%struct.raid_set* %62)
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %68, label %65

65:                                               ; preds = %61
  %66 = load i32, i32* @EAGAIN, align 4
  %67 = sub nsw i32 0, %66
  store i32 %67, i32* %2, align 4
  br label %101

68:                                               ; preds = %61
  %69 = load %struct.dm_rh_client*, %struct.dm_rh_client** %8, align 8
  %70 = call i32 @dm_rh_recovery_prepare(%struct.dm_rh_client* %69)
  %71 = load %struct.dm_rh_client*, %struct.dm_rh_client** %8, align 8
  %72 = call i64 @dm_rh_recovery_start(%struct.dm_rh_client* %71)
  %73 = load %struct.recover_addr*, %struct.recover_addr** %6, align 8
  %74 = getelementptr inbounds %struct.recover_addr, %struct.recover_addr* %73, i32 0, i32 2
  store i64 %72, i64* %74, align 8
  %75 = load %struct.recover_addr*, %struct.recover_addr** %6, align 8
  %76 = getelementptr inbounds %struct.recover_addr, %struct.recover_addr* %75, i32 0, i32 2
  %77 = load i64, i64* %76, align 8
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %82, label %79

79:                                               ; preds = %68
  %80 = load i32, i32* @EAGAIN, align 4
  %81 = sub nsw i32 0, %80
  store i32 %81, i32* %2, align 4
  br label %101

82:                                               ; preds = %68
  %83 = load %struct.dm_rh_client*, %struct.dm_rh_client** %8, align 8
  %84 = load %struct.recover_addr*, %struct.recover_addr** %6, align 8
  %85 = getelementptr inbounds %struct.recover_addr, %struct.recover_addr* %84, i32 0, i32 2
  %86 = load i64, i64* %85, align 8
  %87 = call i32 @dm_rh_get_region_key(i64 %86)
  %88 = call i64 @dm_rh_region_to_sector(%struct.dm_rh_client* %83, i32 %87)
  %89 = load %struct.recover_addr*, %struct.recover_addr** %6, align 8
  %90 = getelementptr inbounds %struct.recover_addr, %struct.recover_addr* %89, i32 0, i32 0
  store i64 %88, i64* %90, align 8
  %91 = load %struct.recover_addr*, %struct.recover_addr** %6, align 8
  %92 = getelementptr inbounds %struct.recover_addr, %struct.recover_addr* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = load %struct.dm_rh_client*, %struct.dm_rh_client** %8, align 8
  %95 = call i64 @dm_rh_get_region_size(%struct.dm_rh_client* %94)
  %96 = add nsw i64 %93, %95
  %97 = load %struct.recover_addr*, %struct.recover_addr** %6, align 8
  %98 = getelementptr inbounds %struct.recover_addr, %struct.recover_addr* %97, i32 0, i32 1
  store i64 %96, i64* %98, align 8
  %99 = load %struct.raid_set*, %struct.raid_set** %4, align 8
  %100 = call i32 @io_get(%struct.raid_set* %99)
  store i32 0, i32* %2, align 4
  br label %101

101:                                              ; preds = %82, %79, %65, %58, %43, %38
  %102 = load i32, i32* %2, align 4
  ret i32 %102
}

declare dso_local %struct.raid_set* @RS(i32) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i64 @RSSuspend(%struct.raid_set*) #1

declare dso_local i32 @recover_bandwidth(%struct.raid_set*) #1

declare dso_local i32 @dm_rh_recovery_prepare(%struct.dm_rh_client*) #1

declare dso_local i64 @dm_rh_recovery_start(%struct.dm_rh_client*) #1

declare dso_local i64 @dm_rh_region_to_sector(%struct.dm_rh_client*, i32) #1

declare dso_local i32 @dm_rh_get_region_key(i64) #1

declare dso_local i64 @dm_rh_get_region_size(%struct.dm_rh_client*) #1

declare dso_local i32 @io_get(%struct.raid_set*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
