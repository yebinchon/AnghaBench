; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/power/extr_power_supply_core.c___power_supply_am_i_supplied.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/power/extr_power_supply_core.c___power_supply_am_i_supplied.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%union.power_supply_propval = type { i32 }
%struct.power_supply = type { i32, i64 (%struct.power_supply*, i32, %union.power_supply_propval*)*, i32, i32* }

@POWER_SUPPLY_PROP_ONLINE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, i8*)* @__power_supply_am_i_supplied to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__power_supply_am_i_supplied(%struct.device* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %union.power_supply_propval, align 4
  %7 = alloca %struct.power_supply*, align 8
  %8 = alloca %struct.power_supply*, align 8
  %9 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %4, align 8
  store i8* %1, i8** %5, align 8
  %10 = bitcast %union.power_supply_propval* %6 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %10, i8 0, i64 4, i1 false)
  %11 = load i8*, i8** %5, align 8
  %12 = bitcast i8* %11 to %struct.power_supply*
  store %struct.power_supply* %12, %struct.power_supply** %7, align 8
  %13 = load %struct.device*, %struct.device** %4, align 8
  %14 = call %struct.power_supply* @dev_get_drvdata(%struct.device* %13)
  store %struct.power_supply* %14, %struct.power_supply** %8, align 8
  store i32 0, i32* %9, align 4
  br label %15

15:                                               ; preds = %52, %2
  %16 = load i32, i32* %9, align 4
  %17 = load %struct.power_supply*, %struct.power_supply** %8, align 8
  %18 = getelementptr inbounds %struct.power_supply, %struct.power_supply* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = icmp slt i32 %16, %19
  br i1 %20, label %21, label %55

21:                                               ; preds = %15
  %22 = load %struct.power_supply*, %struct.power_supply** %8, align 8
  %23 = getelementptr inbounds %struct.power_supply, %struct.power_supply* %22, i32 0, i32 3
  %24 = load i32*, i32** %23, align 8
  %25 = load i32, i32* %9, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i32, i32* %24, i64 %26
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.power_supply*, %struct.power_supply** %7, align 8
  %30 = getelementptr inbounds %struct.power_supply, %struct.power_supply* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 8
  %32 = call i32 @strcmp(i32 %28, i32 %31)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %51, label %34

34:                                               ; preds = %21
  %35 = load %struct.power_supply*, %struct.power_supply** %8, align 8
  %36 = getelementptr inbounds %struct.power_supply, %struct.power_supply* %35, i32 0, i32 1
  %37 = load i64 (%struct.power_supply*, i32, %union.power_supply_propval*)*, i64 (%struct.power_supply*, i32, %union.power_supply_propval*)** %36, align 8
  %38 = load %struct.power_supply*, %struct.power_supply** %8, align 8
  %39 = load i32, i32* @POWER_SUPPLY_PROP_ONLINE, align 4
  %40 = call i64 %37(%struct.power_supply* %38, i32 %39, %union.power_supply_propval* %6)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %34
  br label %52

43:                                               ; preds = %34
  %44 = bitcast %union.power_supply_propval* %6 to i32*
  %45 = load i32, i32* %44, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %43
  %48 = bitcast %union.power_supply_propval* %6 to i32*
  %49 = load i32, i32* %48, align 4
  store i32 %49, i32* %3, align 4
  br label %56

50:                                               ; preds = %43
  br label %51

51:                                               ; preds = %50, %21
  br label %52

52:                                               ; preds = %51, %42
  %53 = load i32, i32* %9, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %9, align 4
  br label %15

55:                                               ; preds = %15
  store i32 0, i32* %3, align 4
  br label %56

56:                                               ; preds = %55, %47
  %57 = load i32, i32* %3, align 4
  ret i32 %57
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local %struct.power_supply* @dev_get_drvdata(%struct.device*) #2

declare dso_local i32 @strcmp(i32, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
