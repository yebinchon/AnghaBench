; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/orinoco/extr_hw.c_orinoco_hw_get_current_bssid.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/orinoco/extr_hw.c_orinoco_hw_get_current_bssid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.orinoco_private = type { %struct.hermes }
%struct.hermes = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.hermes*, i32, i32, i32, i32*, i32*)* }

@USER_BAP = common dso_local global i32 0, align 4
@HERMES_RID_CURRENTBSSID = common dso_local global i32 0, align 4
@ETH_ALEN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @orinoco_hw_get_current_bssid(%struct.orinoco_private* %0, i32* %1) #0 {
  %3 = alloca %struct.orinoco_private*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.hermes*, align 8
  %6 = alloca i32, align 4
  store %struct.orinoco_private* %0, %struct.orinoco_private** %3, align 8
  store i32* %1, i32** %4, align 8
  %7 = load %struct.orinoco_private*, %struct.orinoco_private** %3, align 8
  %8 = getelementptr inbounds %struct.orinoco_private, %struct.orinoco_private* %7, i32 0, i32 0
  store %struct.hermes* %8, %struct.hermes** %5, align 8
  %9 = load %struct.hermes*, %struct.hermes** %5, align 8
  %10 = getelementptr inbounds %struct.hermes, %struct.hermes* %9, i32 0, i32 0
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i32 (%struct.hermes*, i32, i32, i32, i32*, i32*)*, i32 (%struct.hermes*, i32, i32, i32, i32*, i32*)** %12, align 8
  %14 = load %struct.hermes*, %struct.hermes** %5, align 8
  %15 = load i32, i32* @USER_BAP, align 4
  %16 = load i32, i32* @HERMES_RID_CURRENTBSSID, align 4
  %17 = load i32, i32* @ETH_ALEN, align 4
  %18 = load i32*, i32** %4, align 8
  %19 = call i32 %13(%struct.hermes* %14, i32 %15, i32 %16, i32 %17, i32* null, i32* %18)
  store i32 %19, i32* %6, align 4
  %20 = load i32, i32* %6, align 4
  ret i32 %20
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
