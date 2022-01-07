; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ti/wlcore/extr_main.c_wlcore_free_hw.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ti/wlcore/extr_main.c_wlcore_free_hw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wl1271 = type { i32, i32, i32*, i32, i32*, i32*, i32*, i32, i32*, i32, i64, i32, i64, i32*, i32*, i32, i32, i32 }

@fwlog_attr = common dso_local global i32 0, align 4
@dev_attr_hw_pg_ver = common dso_local global i32 0, align 4
@dev_attr_bt_coex_state = common dso_local global i32 0, align 4
@WL12XX_FW_TYPE_NONE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wlcore_free_hw(%struct.wl1271* %0) #0 {
  %2 = alloca %struct.wl1271*, align 8
  store %struct.wl1271* %0, %struct.wl1271** %2, align 8
  %3 = load %struct.wl1271*, %struct.wl1271** %2, align 8
  %4 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %3, i32 0, i32 16
  %5 = call i32 @mutex_lock(i32* %4)
  %6 = load %struct.wl1271*, %struct.wl1271** %2, align 8
  %7 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %6, i32 0, i32 0
  store i32 -1, i32* %7, align 8
  %8 = load %struct.wl1271*, %struct.wl1271** %2, align 8
  %9 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %8, i32 0, i32 17
  %10 = call i32 @wake_up_interruptible_all(i32* %9)
  %11 = load %struct.wl1271*, %struct.wl1271** %2, align 8
  %12 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %11, i32 0, i32 16
  %13 = call i32 @mutex_unlock(i32* %12)
  %14 = load %struct.wl1271*, %struct.wl1271** %2, align 8
  %15 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %14, i32 0, i32 15
  %16 = load i32, i32* %15, align 8
  %17 = call i32 @device_remove_bin_file(i32 %16, i32* @fwlog_attr)
  %18 = load %struct.wl1271*, %struct.wl1271** %2, align 8
  %19 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %18, i32 0, i32 15
  %20 = load i32, i32* %19, align 8
  %21 = call i32 @device_remove_file(i32 %20, i32* @dev_attr_hw_pg_ver)
  %22 = load %struct.wl1271*, %struct.wl1271** %2, align 8
  %23 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %22, i32 0, i32 15
  %24 = load i32, i32* %23, align 8
  %25 = call i32 @device_remove_file(i32 %24, i32* @dev_attr_bt_coex_state)
  %26 = load %struct.wl1271*, %struct.wl1271** %2, align 8
  %27 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %26, i32 0, i32 14
  %28 = load i32*, i32** %27, align 8
  %29 = call i32 @kfree(i32* %28)
  %30 = load %struct.wl1271*, %struct.wl1271** %2, align 8
  %31 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %30, i32 0, i32 13
  %32 = load i32*, i32** %31, align 8
  %33 = call i32 @kfree(i32* %32)
  %34 = load %struct.wl1271*, %struct.wl1271** %2, align 8
  %35 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %34, i32 0, i32 12
  %36 = load i64, i64* %35, align 8
  %37 = call i32 @free_page(i64 %36)
  %38 = load %struct.wl1271*, %struct.wl1271** %2, align 8
  %39 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %38, i32 0, i32 11
  %40 = load i32, i32* %39, align 8
  %41 = call i32 @dev_kfree_skb(i32 %40)
  %42 = load %struct.wl1271*, %struct.wl1271** %2, align 8
  %43 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %42, i32 0, i32 10
  %44 = load i64, i64* %43, align 8
  %45 = load %struct.wl1271*, %struct.wl1271** %2, align 8
  %46 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %45, i32 0, i32 9
  %47 = load i32, i32* %46, align 8
  %48 = call i32 @get_order(i32 %47)
  %49 = call i32 @free_pages(i64 %44, i32 %48)
  %50 = load %struct.wl1271*, %struct.wl1271** %2, align 8
  %51 = call i32 @wl1271_debugfs_exit(%struct.wl1271* %50)
  %52 = load %struct.wl1271*, %struct.wl1271** %2, align 8
  %53 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %52, i32 0, i32 8
  %54 = load i32*, i32** %53, align 8
  %55 = call i32 @vfree(i32* %54)
  %56 = load %struct.wl1271*, %struct.wl1271** %2, align 8
  %57 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %56, i32 0, i32 8
  store i32* null, i32** %57, align 8
  %58 = load i32, i32* @WL12XX_FW_TYPE_NONE, align 4
  %59 = load %struct.wl1271*, %struct.wl1271** %2, align 8
  %60 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %59, i32 0, i32 7
  store i32 %58, i32* %60, align 8
  %61 = load %struct.wl1271*, %struct.wl1271** %2, align 8
  %62 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %61, i32 0, i32 6
  %63 = load i32*, i32** %62, align 8
  %64 = call i32 @kfree(i32* %63)
  %65 = load %struct.wl1271*, %struct.wl1271** %2, align 8
  %66 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %65, i32 0, i32 6
  store i32* null, i32** %66, align 8
  %67 = load %struct.wl1271*, %struct.wl1271** %2, align 8
  %68 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %67, i32 0, i32 5
  %69 = load i32*, i32** %68, align 8
  %70 = call i32 @kfree(i32* %69)
  %71 = load %struct.wl1271*, %struct.wl1271** %2, align 8
  %72 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %71, i32 0, i32 4
  %73 = load i32*, i32** %72, align 8
  %74 = call i32 @kfree(i32* %73)
  %75 = load %struct.wl1271*, %struct.wl1271** %2, align 8
  %76 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %75, i32 0, i32 3
  %77 = load i32, i32* %76, align 8
  %78 = call i32 @destroy_workqueue(i32 %77)
  %79 = load %struct.wl1271*, %struct.wl1271** %2, align 8
  %80 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %79, i32 0, i32 2
  %81 = load i32*, i32** %80, align 8
  %82 = call i32 @kfree(i32* %81)
  %83 = load %struct.wl1271*, %struct.wl1271** %2, align 8
  %84 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = call i32 @ieee80211_free_hw(i32 %85)
  ret i32 0
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @wake_up_interruptible_all(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @device_remove_bin_file(i32, i32*) #1

declare dso_local i32 @device_remove_file(i32, i32*) #1

declare dso_local i32 @kfree(i32*) #1

declare dso_local i32 @free_page(i64) #1

declare dso_local i32 @dev_kfree_skb(i32) #1

declare dso_local i32 @free_pages(i64, i32) #1

declare dso_local i32 @get_order(i32) #1

declare dso_local i32 @wl1271_debugfs_exit(%struct.wl1271*) #1

declare dso_local i32 @vfree(i32*) #1

declare dso_local i32 @destroy_workqueue(i32) #1

declare dso_local i32 @ieee80211_free_hw(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
