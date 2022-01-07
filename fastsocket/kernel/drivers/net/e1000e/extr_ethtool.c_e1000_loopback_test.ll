; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/e1000e/extr_ethtool.c_e1000_loopback_test.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/e1000e/extr_ethtool.c_e1000_loopback_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_adapter = type { %struct.e1000_hw }
%struct.e1000_hw = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 (%struct.e1000_hw.0*)* }
%struct.e1000_hw.0 = type opaque

@.str = private unnamed_addr constant [54 x i8] c"Cannot do PHY loopback test when SoL/IDER is active.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.e1000_adapter*, i32*)* @e1000_loopback_test to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @e1000_loopback_test(%struct.e1000_adapter* %0, i32* %1) #0 {
  %3 = alloca %struct.e1000_adapter*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.e1000_hw*, align 8
  store %struct.e1000_adapter* %0, %struct.e1000_adapter** %3, align 8
  store i32* %1, i32** %4, align 8
  %6 = load %struct.e1000_adapter*, %struct.e1000_adapter** %3, align 8
  %7 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %6, i32 0, i32 0
  store %struct.e1000_hw* %7, %struct.e1000_hw** %5, align 8
  %8 = load %struct.e1000_hw*, %struct.e1000_hw** %5, align 8
  %9 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = load i64 (%struct.e1000_hw.0*)*, i64 (%struct.e1000_hw.0*)** %11, align 8
  %13 = icmp ne i64 (%struct.e1000_hw.0*)* %12, null
  br i1 %13, label %14, label %27

14:                                               ; preds = %2
  %15 = load %struct.e1000_hw*, %struct.e1000_hw** %5, align 8
  %16 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load i64 (%struct.e1000_hw.0*)*, i64 (%struct.e1000_hw.0*)** %18, align 8
  %20 = load %struct.e1000_hw*, %struct.e1000_hw** %5, align 8
  %21 = bitcast %struct.e1000_hw* %20 to %struct.e1000_hw.0*
  %22 = call i64 %19(%struct.e1000_hw.0* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %14
  %25 = call i32 @e_err(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i64 0, i64 0))
  %26 = load i32*, i32** %4, align 8
  store i32 0, i32* %26, align 4
  br label %52

27:                                               ; preds = %14, %2
  %28 = load %struct.e1000_adapter*, %struct.e1000_adapter** %3, align 8
  %29 = call i32 @e1000_setup_desc_rings(%struct.e1000_adapter* %28)
  %30 = load i32*, i32** %4, align 8
  store i32 %29, i32* %30, align 4
  %31 = load i32*, i32** %4, align 8
  %32 = load i32, i32* %31, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %27
  br label %52

35:                                               ; preds = %27
  %36 = load %struct.e1000_adapter*, %struct.e1000_adapter** %3, align 8
  %37 = call i32 @e1000_setup_loopback_test(%struct.e1000_adapter* %36)
  %38 = load i32*, i32** %4, align 8
  store i32 %37, i32* %38, align 4
  %39 = load i32*, i32** %4, align 8
  %40 = load i32, i32* %39, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %35
  br label %49

43:                                               ; preds = %35
  %44 = load %struct.e1000_adapter*, %struct.e1000_adapter** %3, align 8
  %45 = call i32 @e1000_run_loopback_test(%struct.e1000_adapter* %44)
  %46 = load i32*, i32** %4, align 8
  store i32 %45, i32* %46, align 4
  %47 = load %struct.e1000_adapter*, %struct.e1000_adapter** %3, align 8
  %48 = call i32 @e1000_loopback_cleanup(%struct.e1000_adapter* %47)
  br label %49

49:                                               ; preds = %43, %42
  %50 = load %struct.e1000_adapter*, %struct.e1000_adapter** %3, align 8
  %51 = call i32 @e1000_free_desc_rings(%struct.e1000_adapter* %50)
  br label %52

52:                                               ; preds = %49, %34, %24
  %53 = load i32*, i32** %4, align 8
  %54 = load i32, i32* %53, align 4
  ret i32 %54
}

declare dso_local i32 @e_err(i8*) #1

declare dso_local i32 @e1000_setup_desc_rings(%struct.e1000_adapter*) #1

declare dso_local i32 @e1000_setup_loopback_test(%struct.e1000_adapter*) #1

declare dso_local i32 @e1000_run_loopback_test(%struct.e1000_adapter*) #1

declare dso_local i32 @e1000_loopback_cleanup(%struct.e1000_adapter*) #1

declare dso_local i32 @e1000_free_desc_rings(%struct.e1000_adapter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
