; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ti/wl1251/extr_main.c_wl1251_free_hw.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ti/wl1251/extr_main.c_wl1251_free_hw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wl1251 = type { i32, i32*, i32*, i32*, i32*, i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wl1251_free_hw(%struct.wl1251* %0) #0 {
  %2 = alloca %struct.wl1251*, align 8
  store %struct.wl1251* %0, %struct.wl1251** %2, align 8
  %3 = load %struct.wl1251*, %struct.wl1251** %2, align 8
  %4 = getelementptr inbounds %struct.wl1251, %struct.wl1251* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 8
  %6 = call i32 @ieee80211_unregister_hw(i32 %5)
  %7 = load %struct.wl1251*, %struct.wl1251** %2, align 8
  %8 = call i32 @wl1251_debugfs_exit(%struct.wl1251* %7)
  %9 = load %struct.wl1251*, %struct.wl1251** %2, align 8
  %10 = getelementptr inbounds %struct.wl1251, %struct.wl1251* %9, i32 0, i32 5
  %11 = load i32*, i32** %10, align 8
  %12 = call i32 @kfree(i32* %11)
  %13 = load %struct.wl1251*, %struct.wl1251** %2, align 8
  %14 = getelementptr inbounds %struct.wl1251, %struct.wl1251* %13, i32 0, i32 4
  %15 = load i32*, i32** %14, align 8
  %16 = call i32 @kfree(i32* %15)
  %17 = load %struct.wl1251*, %struct.wl1251** %2, align 8
  %18 = getelementptr inbounds %struct.wl1251, %struct.wl1251* %17, i32 0, i32 3
  %19 = load i32*, i32** %18, align 8
  %20 = call i32 @vfree(i32* %19)
  %21 = load %struct.wl1251*, %struct.wl1251** %2, align 8
  %22 = getelementptr inbounds %struct.wl1251, %struct.wl1251* %21, i32 0, i32 3
  store i32* null, i32** %22, align 8
  %23 = load %struct.wl1251*, %struct.wl1251** %2, align 8
  %24 = getelementptr inbounds %struct.wl1251, %struct.wl1251* %23, i32 0, i32 2
  %25 = load i32*, i32** %24, align 8
  %26 = call i32 @kfree(i32* %25)
  %27 = load %struct.wl1251*, %struct.wl1251** %2, align 8
  %28 = getelementptr inbounds %struct.wl1251, %struct.wl1251* %27, i32 0, i32 2
  store i32* null, i32** %28, align 8
  %29 = load %struct.wl1251*, %struct.wl1251** %2, align 8
  %30 = getelementptr inbounds %struct.wl1251, %struct.wl1251* %29, i32 0, i32 1
  %31 = load i32*, i32** %30, align 8
  %32 = call i32 @kfree(i32* %31)
  %33 = load %struct.wl1251*, %struct.wl1251** %2, align 8
  %34 = getelementptr inbounds %struct.wl1251, %struct.wl1251* %33, i32 0, i32 1
  store i32* null, i32** %34, align 8
  %35 = load %struct.wl1251*, %struct.wl1251** %2, align 8
  %36 = getelementptr inbounds %struct.wl1251, %struct.wl1251* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = call i32 @ieee80211_free_hw(i32 %37)
  ret i32 0
}

declare dso_local i32 @ieee80211_unregister_hw(i32) #1

declare dso_local i32 @wl1251_debugfs_exit(%struct.wl1251*) #1

declare dso_local i32 @kfree(i32*) #1

declare dso_local i32 @vfree(i32*) #1

declare dso_local i32 @ieee80211_free_hw(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
