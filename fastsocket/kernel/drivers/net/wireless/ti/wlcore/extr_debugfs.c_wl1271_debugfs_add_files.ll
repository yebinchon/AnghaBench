; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ti/wlcore/extr_debugfs.c_wl1271_debugfs_add_files.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ti/wlcore/extr_debugfs.c_wl1271_debugfs_add_files.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wl1271 = type { i32 }
%struct.dentry = type { i32 }

@tx_queue_len = common dso_local global i32 0, align 4
@retry_count = common dso_local global i32 0, align 4
@excessive_retries = common dso_local global i32 0, align 4
@gpio_power = common dso_local global i32 0, align 4
@start_recovery = common dso_local global i32 0, align 4
@driver_state = common dso_local global i32 0, align 4
@vifs_state = common dso_local global i32 0, align 4
@dtim_interval = common dso_local global i32 0, align 4
@suspend_dtim_interval = common dso_local global i32 0, align 4
@beacon_interval = common dso_local global i32 0, align 4
@beacon_filtering = common dso_local global i32 0, align 4
@dynamic_ps_timeout = common dso_local global i32 0, align 4
@forced_ps = common dso_local global i32 0, align 4
@split_scan_timeout = common dso_local global i32 0, align 4
@irq_pkt_threshold = common dso_local global i32 0, align 4
@irq_blk_threshold = common dso_local global i32 0, align 4
@irq_timeout = common dso_local global i32 0, align 4
@fw_stats_raw = common dso_local global i32 0, align 4
@sleep_auth = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"rx_streaming\00", align 1
@rx_streaming = common dso_local global i32 0, align 4
@interval = common dso_local global i32 0, align 4
@always = common dso_local global i32 0, align 4
@dev = common dso_local global i32 0, align 4
@mem = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wl1271*, %struct.dentry*)* @wl1271_debugfs_add_files to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wl1271_debugfs_add_files(%struct.wl1271* %0, %struct.dentry* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.wl1271*, align 8
  %5 = alloca %struct.dentry*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.dentry*, align 8
  %8 = alloca %struct.dentry*, align 8
  store %struct.wl1271* %0, %struct.wl1271** %4, align 8
  store %struct.dentry* %1, %struct.dentry** %5, align 8
  store i32 0, i32* %6, align 4
  %9 = load i32, i32* @tx_queue_len, align 4
  %10 = load %struct.dentry*, %struct.dentry** %5, align 8
  %11 = call i32 @DEBUGFS_ADD(i32 %9, %struct.dentry* %10)
  %12 = load i32, i32* @retry_count, align 4
  %13 = load %struct.dentry*, %struct.dentry** %5, align 8
  %14 = call i32 @DEBUGFS_ADD(i32 %12, %struct.dentry* %13)
  %15 = load i32, i32* @excessive_retries, align 4
  %16 = load %struct.dentry*, %struct.dentry** %5, align 8
  %17 = call i32 @DEBUGFS_ADD(i32 %15, %struct.dentry* %16)
  %18 = load i32, i32* @gpio_power, align 4
  %19 = load %struct.dentry*, %struct.dentry** %5, align 8
  %20 = call i32 @DEBUGFS_ADD(i32 %18, %struct.dentry* %19)
  %21 = load i32, i32* @start_recovery, align 4
  %22 = load %struct.dentry*, %struct.dentry** %5, align 8
  %23 = call i32 @DEBUGFS_ADD(i32 %21, %struct.dentry* %22)
  %24 = load i32, i32* @driver_state, align 4
  %25 = load %struct.dentry*, %struct.dentry** %5, align 8
  %26 = call i32 @DEBUGFS_ADD(i32 %24, %struct.dentry* %25)
  %27 = load i32, i32* @vifs_state, align 4
  %28 = load %struct.dentry*, %struct.dentry** %5, align 8
  %29 = call i32 @DEBUGFS_ADD(i32 %27, %struct.dentry* %28)
  %30 = load i32, i32* @dtim_interval, align 4
  %31 = load %struct.dentry*, %struct.dentry** %5, align 8
  %32 = call i32 @DEBUGFS_ADD(i32 %30, %struct.dentry* %31)
  %33 = load i32, i32* @suspend_dtim_interval, align 4
  %34 = load %struct.dentry*, %struct.dentry** %5, align 8
  %35 = call i32 @DEBUGFS_ADD(i32 %33, %struct.dentry* %34)
  %36 = load i32, i32* @beacon_interval, align 4
  %37 = load %struct.dentry*, %struct.dentry** %5, align 8
  %38 = call i32 @DEBUGFS_ADD(i32 %36, %struct.dentry* %37)
  %39 = load i32, i32* @beacon_filtering, align 4
  %40 = load %struct.dentry*, %struct.dentry** %5, align 8
  %41 = call i32 @DEBUGFS_ADD(i32 %39, %struct.dentry* %40)
  %42 = load i32, i32* @dynamic_ps_timeout, align 4
  %43 = load %struct.dentry*, %struct.dentry** %5, align 8
  %44 = call i32 @DEBUGFS_ADD(i32 %42, %struct.dentry* %43)
  %45 = load i32, i32* @forced_ps, align 4
  %46 = load %struct.dentry*, %struct.dentry** %5, align 8
  %47 = call i32 @DEBUGFS_ADD(i32 %45, %struct.dentry* %46)
  %48 = load i32, i32* @split_scan_timeout, align 4
  %49 = load %struct.dentry*, %struct.dentry** %5, align 8
  %50 = call i32 @DEBUGFS_ADD(i32 %48, %struct.dentry* %49)
  %51 = load i32, i32* @irq_pkt_threshold, align 4
  %52 = load %struct.dentry*, %struct.dentry** %5, align 8
  %53 = call i32 @DEBUGFS_ADD(i32 %51, %struct.dentry* %52)
  %54 = load i32, i32* @irq_blk_threshold, align 4
  %55 = load %struct.dentry*, %struct.dentry** %5, align 8
  %56 = call i32 @DEBUGFS_ADD(i32 %54, %struct.dentry* %55)
  %57 = load i32, i32* @irq_timeout, align 4
  %58 = load %struct.dentry*, %struct.dentry** %5, align 8
  %59 = call i32 @DEBUGFS_ADD(i32 %57, %struct.dentry* %58)
  %60 = load i32, i32* @fw_stats_raw, align 4
  %61 = load %struct.dentry*, %struct.dentry** %5, align 8
  %62 = call i32 @DEBUGFS_ADD(i32 %60, %struct.dentry* %61)
  %63 = load i32, i32* @sleep_auth, align 4
  %64 = load %struct.dentry*, %struct.dentry** %5, align 8
  %65 = call i32 @DEBUGFS_ADD(i32 %63, %struct.dentry* %64)
  %66 = load %struct.dentry*, %struct.dentry** %5, align 8
  %67 = call %struct.dentry* @debugfs_create_dir(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), %struct.dentry* %66)
  store %struct.dentry* %67, %struct.dentry** %8, align 8
  %68 = load %struct.dentry*, %struct.dentry** %8, align 8
  %69 = icmp ne %struct.dentry* %68, null
  br i1 %69, label %70, label %74

70:                                               ; preds = %2
  %71 = load %struct.dentry*, %struct.dentry** %8, align 8
  %72 = call i64 @IS_ERR(%struct.dentry* %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %75

74:                                               ; preds = %70, %2
  br label %88

75:                                               ; preds = %70
  %76 = load i32, i32* @rx_streaming, align 4
  %77 = load i32, i32* @interval, align 4
  %78 = load %struct.dentry*, %struct.dentry** %8, align 8
  %79 = call i32 @DEBUGFS_ADD_PREFIX(i32 %76, i32 %77, %struct.dentry* %78)
  %80 = load i32, i32* @rx_streaming, align 4
  %81 = load i32, i32* @always, align 4
  %82 = load %struct.dentry*, %struct.dentry** %8, align 8
  %83 = call i32 @DEBUGFS_ADD_PREFIX(i32 %80, i32 %81, %struct.dentry* %82)
  %84 = load i32, i32* @dev, align 4
  %85 = load i32, i32* @mem, align 4
  %86 = load %struct.dentry*, %struct.dentry** %5, align 8
  %87 = call i32 @DEBUGFS_ADD_PREFIX(i32 %84, i32 %85, %struct.dentry* %86)
  store i32 0, i32* %3, align 4
  br label %100

88:                                               ; preds = %74
  %89 = load %struct.dentry*, %struct.dentry** %7, align 8
  %90 = call i64 @IS_ERR(%struct.dentry* %89)
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %95

92:                                               ; preds = %88
  %93 = load %struct.dentry*, %struct.dentry** %7, align 8
  %94 = call i32 @PTR_ERR(%struct.dentry* %93)
  store i32 %94, i32* %6, align 4
  br label %98

95:                                               ; preds = %88
  %96 = load i32, i32* @ENOMEM, align 4
  %97 = sub nsw i32 0, %96
  store i32 %97, i32* %6, align 4
  br label %98

98:                                               ; preds = %95, %92
  %99 = load i32, i32* %6, align 4
  store i32 %99, i32* %3, align 4
  br label %100

100:                                              ; preds = %98, %75
  %101 = load i32, i32* %3, align 4
  ret i32 %101
}

declare dso_local i32 @DEBUGFS_ADD(i32, %struct.dentry*) #1

declare dso_local %struct.dentry* @debugfs_create_dir(i8*, %struct.dentry*) #1

declare dso_local i64 @IS_ERR(%struct.dentry*) #1

declare dso_local i32 @DEBUGFS_ADD_PREFIX(i32, i32, %struct.dentry*) #1

declare dso_local i32 @PTR_ERR(%struct.dentry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
