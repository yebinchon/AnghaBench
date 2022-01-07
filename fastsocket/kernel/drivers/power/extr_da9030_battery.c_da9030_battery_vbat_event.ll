; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/power/extr_da9030_battery.c_da9030_battery_vbat_event.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/power/extr_da9030_battery.c_da9030_battery_vbat_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.da9030_charger = type { i32 (...)*, %struct.TYPE_3__, %struct.TYPE_4__, i32 (...)*, i32, i64 }
%struct.TYPE_3__ = type { i64, i64 }
%struct.TYPE_4__ = type { i64 }

@DA9030_VBATMON = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.da9030_charger*)* @da9030_battery_vbat_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @da9030_battery_vbat_event(%struct.da9030_charger* %0) #0 {
  %2 = alloca %struct.da9030_charger*, align 8
  store %struct.da9030_charger* %0, %struct.da9030_charger** %2, align 8
  %3 = load %struct.da9030_charger*, %struct.da9030_charger** %2, align 8
  %4 = load %struct.da9030_charger*, %struct.da9030_charger** %2, align 8
  %5 = getelementptr inbounds %struct.da9030_charger, %struct.da9030_charger* %4, i32 0, i32 2
  %6 = call i32 @da9030_read_adc(%struct.da9030_charger* %3, %struct.TYPE_4__* %5)
  %7 = load %struct.da9030_charger*, %struct.da9030_charger** %2, align 8
  %8 = getelementptr inbounds %struct.da9030_charger, %struct.da9030_charger* %7, i32 0, i32 5
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  br label %64

12:                                               ; preds = %1
  %13 = load %struct.da9030_charger*, %struct.da9030_charger** %2, align 8
  %14 = getelementptr inbounds %struct.da9030_charger, %struct.da9030_charger* %13, i32 0, i32 2
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load %struct.da9030_charger*, %struct.da9030_charger** %2, align 8
  %18 = getelementptr inbounds %struct.da9030_charger, %struct.da9030_charger* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp slt i64 %16, %20
  br i1 %21, label %22, label %42

22:                                               ; preds = %12
  %23 = load %struct.da9030_charger*, %struct.da9030_charger** %2, align 8
  %24 = getelementptr inbounds %struct.da9030_charger, %struct.da9030_charger* %23, i32 0, i32 4
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* @DA9030_VBATMON, align 4
  %27 = load %struct.da9030_charger*, %struct.da9030_charger** %2, align 8
  %28 = getelementptr inbounds %struct.da9030_charger, %struct.da9030_charger* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = call i32 @da903x_write(i32 %25, i32 %26, i64 %30)
  %32 = load %struct.da9030_charger*, %struct.da9030_charger** %2, align 8
  %33 = getelementptr inbounds %struct.da9030_charger, %struct.da9030_charger* %32, i32 0, i32 3
  %34 = load i32 (...)*, i32 (...)** %33, align 8
  %35 = icmp ne i32 (...)* %34, null
  br i1 %35, label %36, label %41

36:                                               ; preds = %22
  %37 = load %struct.da9030_charger*, %struct.da9030_charger** %2, align 8
  %38 = getelementptr inbounds %struct.da9030_charger, %struct.da9030_charger* %37, i32 0, i32 3
  %39 = load i32 (...)*, i32 (...)** %38, align 8
  %40 = call i32 (...) %39()
  br label %41

41:                                               ; preds = %36, %22
  br label %64

42:                                               ; preds = %12
  %43 = load %struct.da9030_charger*, %struct.da9030_charger** %2, align 8
  %44 = getelementptr inbounds %struct.da9030_charger, %struct.da9030_charger* %43, i32 0, i32 2
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load %struct.da9030_charger*, %struct.da9030_charger** %2, align 8
  %48 = getelementptr inbounds %struct.da9030_charger, %struct.da9030_charger* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = icmp slt i64 %46, %50
  br i1 %51, label %52, label %63

52:                                               ; preds = %42
  %53 = load %struct.da9030_charger*, %struct.da9030_charger** %2, align 8
  %54 = getelementptr inbounds %struct.da9030_charger, %struct.da9030_charger* %53, i32 0, i32 0
  %55 = load i32 (...)*, i32 (...)** %54, align 8
  %56 = icmp ne i32 (...)* %55, null
  br i1 %56, label %57, label %62

57:                                               ; preds = %52
  %58 = load %struct.da9030_charger*, %struct.da9030_charger** %2, align 8
  %59 = getelementptr inbounds %struct.da9030_charger, %struct.da9030_charger* %58, i32 0, i32 0
  %60 = load i32 (...)*, i32 (...)** %59, align 8
  %61 = call i32 (...) %60()
  br label %62

62:                                               ; preds = %57, %52
  br label %63

63:                                               ; preds = %62, %42
  br label %64

64:                                               ; preds = %11, %63, %41
  ret void
}

declare dso_local i32 @da9030_read_adc(%struct.da9030_charger*, %struct.TYPE_4__*) #1

declare dso_local i32 @da903x_write(i32, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
