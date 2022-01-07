; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/rt2x00/extr_rt2800lib.c_rt2800_config_ps.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/rt2x00/extr_rt2800lib.c_rt2800_config_ps.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rt2x00_dev = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 (%struct.rt2x00_dev*, i32)* }
%struct.rt2x00lib_conf = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, i32 }

@IEEE80211_CONF_PS = common dso_local global i32 0, align 4
@STATE_SLEEP = common dso_local global i32 0, align 4
@STATE_AWAKE = common dso_local global i32 0, align 4
@AUTOWAKEUP_CFG = common dso_local global i32 0, align 4
@AUTOWAKEUP_CFG_AUTO_LEAD_TIME = common dso_local global i32 0, align 4
@AUTOWAKEUP_CFG_TBCN_BEFORE_WAKE = common dso_local global i32 0, align 4
@AUTOWAKEUP_CFG_AUTOWAKE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rt2x00_dev*, %struct.rt2x00lib_conf*)* @rt2800_config_ps to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rt2800_config_ps(%struct.rt2x00_dev* %0, %struct.rt2x00lib_conf* %1) #0 {
  %3 = alloca %struct.rt2x00_dev*, align 8
  %4 = alloca %struct.rt2x00lib_conf*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.rt2x00_dev* %0, %struct.rt2x00_dev** %3, align 8
  store %struct.rt2x00lib_conf* %1, %struct.rt2x00lib_conf** %4, align 8
  %7 = load %struct.rt2x00lib_conf*, %struct.rt2x00lib_conf** %4, align 8
  %8 = getelementptr inbounds %struct.rt2x00lib_conf, %struct.rt2x00lib_conf* %7, i32 0, i32 0
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @IEEE80211_CONF_PS, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %2
  %16 = load i32, i32* @STATE_SLEEP, align 4
  br label %19

17:                                               ; preds = %2
  %18 = load i32, i32* @STATE_AWAKE, align 4
  br label %19

19:                                               ; preds = %17, %15
  %20 = phi i32 [ %16, %15 ], [ %18, %17 ]
  store i32 %20, i32* %5, align 4
  %21 = load i32, i32* %5, align 4
  %22 = load i32, i32* @STATE_SLEEP, align 4
  %23 = icmp eq i32 %21, %22
  br i1 %23, label %24, label %57

24:                                               ; preds = %19
  %25 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %26 = load i32, i32* @AUTOWAKEUP_CFG, align 4
  %27 = call i32 @rt2800_register_write(%struct.rt2x00_dev* %25, i32 %26, i32 0)
  %28 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %29 = load i32, i32* @AUTOWAKEUP_CFG, align 4
  %30 = call i32 @rt2800_register_read(%struct.rt2x00_dev* %28, i32 %29, i32* %6)
  %31 = load i32, i32* @AUTOWAKEUP_CFG_AUTO_LEAD_TIME, align 4
  %32 = call i32 @rt2x00_set_field32(i32* %6, i32 %31, i32 5)
  %33 = load i32, i32* @AUTOWAKEUP_CFG_TBCN_BEFORE_WAKE, align 4
  %34 = load %struct.rt2x00lib_conf*, %struct.rt2x00lib_conf** %4, align 8
  %35 = getelementptr inbounds %struct.rt2x00lib_conf, %struct.rt2x00lib_conf* %34, i32 0, i32 0
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = sub nsw i32 %38, 1
  %40 = call i32 @rt2x00_set_field32(i32* %6, i32 %33, i32 %39)
  %41 = load i32, i32* @AUTOWAKEUP_CFG_AUTOWAKE, align 4
  %42 = call i32 @rt2x00_set_field32(i32* %6, i32 %41, i32 1)
  %43 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %44 = load i32, i32* @AUTOWAKEUP_CFG, align 4
  %45 = load i32, i32* %6, align 4
  %46 = call i32 @rt2800_register_write(%struct.rt2x00_dev* %43, i32 %44, i32 %45)
  %47 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %48 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %47, i32 0, i32 0
  %49 = load %struct.TYPE_6__*, %struct.TYPE_6__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 0
  %51 = load %struct.TYPE_5__*, %struct.TYPE_5__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 0
  %53 = load i32 (%struct.rt2x00_dev*, i32)*, i32 (%struct.rt2x00_dev*, i32)** %52, align 8
  %54 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %55 = load i32, i32* %5, align 4
  %56 = call i32 %53(%struct.rt2x00_dev* %54, i32 %55)
  br label %81

57:                                               ; preds = %19
  %58 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %59 = load i32, i32* @AUTOWAKEUP_CFG, align 4
  %60 = call i32 @rt2800_register_read(%struct.rt2x00_dev* %58, i32 %59, i32* %6)
  %61 = load i32, i32* @AUTOWAKEUP_CFG_AUTO_LEAD_TIME, align 4
  %62 = call i32 @rt2x00_set_field32(i32* %6, i32 %61, i32 0)
  %63 = load i32, i32* @AUTOWAKEUP_CFG_TBCN_BEFORE_WAKE, align 4
  %64 = call i32 @rt2x00_set_field32(i32* %6, i32 %63, i32 0)
  %65 = load i32, i32* @AUTOWAKEUP_CFG_AUTOWAKE, align 4
  %66 = call i32 @rt2x00_set_field32(i32* %6, i32 %65, i32 0)
  %67 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %68 = load i32, i32* @AUTOWAKEUP_CFG, align 4
  %69 = load i32, i32* %6, align 4
  %70 = call i32 @rt2800_register_write(%struct.rt2x00_dev* %67, i32 %68, i32 %69)
  %71 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %72 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %71, i32 0, i32 0
  %73 = load %struct.TYPE_6__*, %struct.TYPE_6__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %73, i32 0, i32 0
  %75 = load %struct.TYPE_5__*, %struct.TYPE_5__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %75, i32 0, i32 0
  %77 = load i32 (%struct.rt2x00_dev*, i32)*, i32 (%struct.rt2x00_dev*, i32)** %76, align 8
  %78 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %79 = load i32, i32* %5, align 4
  %80 = call i32 %77(%struct.rt2x00_dev* %78, i32 %79)
  br label %81

81:                                               ; preds = %57, %24
  ret void
}

declare dso_local i32 @rt2800_register_write(%struct.rt2x00_dev*, i32, i32) #1

declare dso_local i32 @rt2800_register_read(%struct.rt2x00_dev*, i32, i32*) #1

declare dso_local i32 @rt2x00_set_field32(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
