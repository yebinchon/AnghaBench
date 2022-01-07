; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/power/extr_power_supply_core.c___power_supply_is_system_supplied.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/power/extr_power_supply_core.c___power_supply_is_system_supplied.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%union.power_supply_propval = type { i32 }
%struct.power_supply = type { i64, i64 (%struct.power_supply*, i32, %union.power_supply_propval*)* }

@POWER_SUPPLY_TYPE_BATTERY = common dso_local global i64 0, align 8
@POWER_SUPPLY_PROP_ONLINE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, i8*)* @__power_supply_is_system_supplied to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__power_supply_is_system_supplied(%struct.device* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %union.power_supply_propval, align 4
  %7 = alloca %struct.power_supply*, align 8
  store %struct.device* %0, %struct.device** %4, align 8
  store i8* %1, i8** %5, align 8
  %8 = bitcast %union.power_supply_propval* %6 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %8, i8 0, i64 4, i1 false)
  %9 = load %struct.device*, %struct.device** %4, align 8
  %10 = call %struct.power_supply* @dev_get_drvdata(%struct.device* %9)
  store %struct.power_supply* %10, %struct.power_supply** %7, align 8
  %11 = load %struct.power_supply*, %struct.power_supply** %7, align 8
  %12 = getelementptr inbounds %struct.power_supply, %struct.power_supply* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @POWER_SUPPLY_TYPE_BATTERY, align 8
  %15 = icmp ne i64 %13, %14
  br i1 %15, label %16, label %33

16:                                               ; preds = %2
  %17 = load %struct.power_supply*, %struct.power_supply** %7, align 8
  %18 = getelementptr inbounds %struct.power_supply, %struct.power_supply* %17, i32 0, i32 1
  %19 = load i64 (%struct.power_supply*, i32, %union.power_supply_propval*)*, i64 (%struct.power_supply*, i32, %union.power_supply_propval*)** %18, align 8
  %20 = load %struct.power_supply*, %struct.power_supply** %7, align 8
  %21 = load i32, i32* @POWER_SUPPLY_PROP_ONLINE, align 4
  %22 = call i64 %19(%struct.power_supply* %20, i32 %21, %union.power_supply_propval* %6)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %16
  store i32 0, i32* %3, align 4
  br label %34

25:                                               ; preds = %16
  %26 = bitcast %union.power_supply_propval* %6 to i32*
  %27 = load i32, i32* %26, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %25
  %30 = bitcast %union.power_supply_propval* %6 to i32*
  %31 = load i32, i32* %30, align 4
  store i32 %31, i32* %3, align 4
  br label %34

32:                                               ; preds = %25
  br label %33

33:                                               ; preds = %32, %2
  store i32 0, i32* %3, align 4
  br label %34

34:                                               ; preds = %33, %29, %24
  %35 = load i32, i32* %3, align 4
  ret i32 %35
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local %struct.power_supply* @dev_get_drvdata(%struct.device*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
