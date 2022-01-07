; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/power/extr_olpc_battery.c_olpc_battery_trigger_uevent.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/power/extr_olpc_battery.c_olpc_battery_trigger_uevent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }

@EC_SCI_SRC_ACPWR = common dso_local global i64 0, align 8
@olpc_ac = common dso_local global %struct.TYPE_8__ zeroinitializer, align 8
@KOBJ_CHANGE = common dso_local global i32 0, align 4
@EC_SCI_SRC_BATERR = common dso_local global i64 0, align 8
@EC_SCI_SRC_BATSOC = common dso_local global i64 0, align 8
@EC_SCI_SRC_BATTERY = common dso_local global i64 0, align 8
@olpc_bat = common dso_local global %struct.TYPE_7__ zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @olpc_battery_trigger_uevent(i64 %0) #0 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %3 = load i64, i64* %2, align 8
  %4 = load i64, i64* @EC_SCI_SRC_ACPWR, align 8
  %5 = and i64 %3, %4
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %12

7:                                                ; preds = %1
  %8 = load %struct.TYPE_5__*, %struct.TYPE_5__** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @olpc_ac, i32 0, i32 0), align 8
  %9 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 0
  %10 = load i32, i32* @KOBJ_CHANGE, align 4
  %11 = call i32 @kobject_uevent(i32* %9, i32 %10)
  br label %12

12:                                               ; preds = %7, %1
  %13 = load i64, i64* %2, align 8
  %14 = load i64, i64* @EC_SCI_SRC_BATERR, align 8
  %15 = load i64, i64* @EC_SCI_SRC_BATSOC, align 8
  %16 = or i64 %14, %15
  %17 = load i64, i64* @EC_SCI_SRC_BATTERY, align 8
  %18 = or i64 %16, %17
  %19 = and i64 %13, %18
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %26

21:                                               ; preds = %12
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @olpc_bat, i32 0, i32 0), align 8
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 0
  %24 = load i32, i32* @KOBJ_CHANGE, align 4
  %25 = call i32 @kobject_uevent(i32* %23, i32 %24)
  br label %26

26:                                               ; preds = %21, %12
  ret void
}

declare dso_local i32 @kobject_uevent(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
