; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ti/wlcore/extr_cmd.c_wl12xx_allocate_link.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ti/wlcore/extr_cmd.c_wl12xx_allocate_link.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wl1271 = type { i32, %struct.TYPE_6__*, %struct.TYPE_5__*, i32, i32, i32* }
%struct.TYPE_6__ = type { i32, %struct.wl12xx_vif*, i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32* }
%struct.wl12xx_vif = type { i64, i32, i32 }

@WL12XX_MAX_LINKS = common dso_local global i64 0, align 8
@EBUSY = common dso_local global i32 0, align 4
@BSS_TYPE_AP_BSS = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wl12xx_allocate_link(%struct.wl1271* %0, %struct.wl12xx_vif* %1, i64* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.wl1271*, align 8
  %6 = alloca %struct.wl12xx_vif*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store %struct.wl1271* %0, %struct.wl1271** %5, align 8
  store %struct.wl12xx_vif* %1, %struct.wl12xx_vif** %6, align 8
  store i64* %2, i64** %7, align 8
  %10 = load %struct.wl1271*, %struct.wl1271** %5, align 8
  %11 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %10, i32 0, i32 4
  %12 = load i32, i32* %11, align 4
  %13 = load i64, i64* @WL12XX_MAX_LINKS, align 8
  %14 = call i64 @find_first_zero_bit(i32 %12, i64 %13)
  store i64 %14, i64* %9, align 8
  %15 = load i64, i64* %9, align 8
  %16 = load i64, i64* @WL12XX_MAX_LINKS, align 8
  %17 = icmp uge i64 %15, %16
  br i1 %17, label %18, label %21

18:                                               ; preds = %3
  %19 = load i32, i32* @EBUSY, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %4, align 4
  br label %92

21:                                               ; preds = %3
  %22 = load %struct.wl1271*, %struct.wl1271** %5, align 8
  %23 = load i64, i64* %9, align 8
  %24 = call i32 @wlcore_get_new_session_id(%struct.wl1271* %22, i64 %23)
  %25 = load %struct.wl1271*, %struct.wl1271** %5, align 8
  %26 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %25, i32 0, i32 5
  %27 = load i32*, i32** %26, align 8
  %28 = load i64, i64* %9, align 8
  %29 = getelementptr inbounds i32, i32* %27, i64 %28
  store i32 %24, i32* %29, align 4
  %30 = load %struct.wl1271*, %struct.wl1271** %5, align 8
  %31 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %30, i32 0, i32 3
  %32 = load i64, i64* %8, align 8
  %33 = call i32 @spin_lock_irqsave(i32* %31, i64 %32)
  %34 = load i64, i64* %9, align 8
  %35 = load %struct.wl1271*, %struct.wl1271** %5, align 8
  %36 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %35, i32 0, i32 4
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @__set_bit(i64 %34, i32 %37)
  %39 = load i64, i64* %9, align 8
  %40 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %6, align 8
  %41 = getelementptr inbounds %struct.wl12xx_vif, %struct.wl12xx_vif* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @__set_bit(i64 %39, i32 %42)
  %44 = load %struct.wl1271*, %struct.wl1271** %5, align 8
  %45 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %44, i32 0, i32 3
  %46 = load i64, i64* %8, align 8
  %47 = call i32 @spin_unlock_irqrestore(i32* %45, i64 %46)
  %48 = load %struct.wl1271*, %struct.wl1271** %5, align 8
  %49 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %48, i32 0, i32 2
  %50 = load %struct.TYPE_5__*, %struct.TYPE_5__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 0
  %53 = load i32*, i32** %52, align 8
  %54 = load i64, i64* %9, align 8
  %55 = getelementptr inbounds i32, i32* %53, i64 %54
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.wl1271*, %struct.wl1271** %5, align 8
  %58 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %57, i32 0, i32 1
  %59 = load %struct.TYPE_6__*, %struct.TYPE_6__** %58, align 8
  %60 = load i64, i64* %9, align 8
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i64 %60
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 2
  store i32 %56, i32* %62, align 8
  %63 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %6, align 8
  %64 = load %struct.wl1271*, %struct.wl1271** %5, align 8
  %65 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %64, i32 0, i32 1
  %66 = load %struct.TYPE_6__*, %struct.TYPE_6__** %65, align 8
  %67 = load i64, i64* %9, align 8
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i64 %67
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i32 0, i32 1
  store %struct.wl12xx_vif* %63, %struct.wl12xx_vif** %69, align 8
  %70 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %6, align 8
  %71 = getelementptr inbounds %struct.wl12xx_vif, %struct.wl12xx_vif* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = load i64, i64* @BSS_TYPE_AP_BSS, align 8
  %74 = icmp ne i64 %72, %73
  br i1 %74, label %75, label %85

75:                                               ; preds = %21
  %76 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %6, align 8
  %77 = getelementptr inbounds %struct.wl12xx_vif, %struct.wl12xx_vif* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 8
  %79 = load %struct.wl1271*, %struct.wl1271** %5, align 8
  %80 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %79, i32 0, i32 1
  %81 = load %struct.TYPE_6__*, %struct.TYPE_6__** %80, align 8
  %82 = load i64, i64* %9, align 8
  %83 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %81, i64 %82
  %84 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %83, i32 0, i32 0
  store i32 %78, i32* %84, align 8
  br label %85

85:                                               ; preds = %75, %21
  %86 = load i64, i64* %9, align 8
  %87 = load i64*, i64** %7, align 8
  store i64 %86, i64* %87, align 8
  %88 = load %struct.wl1271*, %struct.wl1271** %5, align 8
  %89 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* %89, align 8
  store i32 0, i32* %4, align 4
  br label %92

92:                                               ; preds = %85, %18
  %93 = load i32, i32* %4, align 4
  ret i32 %93
}

declare dso_local i64 @find_first_zero_bit(i32, i64) #1

declare dso_local i32 @wlcore_get_new_session_id(%struct.wl1271*, i64) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @__set_bit(i64, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
