; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/igb/extr_igb_ethtool.c_igb_loopback_test.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/igb/extr_igb_ethtool.c_igb_loopback_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.igb_adapter = type { %struct.TYPE_5__*, %struct.TYPE_6__ }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_6__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }

@.str = private unnamed_addr constant [54 x i8] c"Cannot do PHY loopback test when SoL/IDER is active.\0A\00", align 1
@e1000_i354 = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [38 x i8] c"Loopback test not supported on i354.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.igb_adapter*, i32*)* @igb_loopback_test to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @igb_loopback_test(%struct.igb_adapter* %0, i32* %1) #0 {
  %3 = alloca %struct.igb_adapter*, align 8
  %4 = alloca i32*, align 8
  store %struct.igb_adapter* %0, %struct.igb_adapter** %3, align 8
  store i32* %1, i32** %4, align 8
  %5 = load %struct.igb_adapter*, %struct.igb_adapter** %3, align 8
  %6 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %5, i32 0, i32 1
  %7 = call i64 @igb_check_reset_block(%struct.TYPE_6__* %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %16

9:                                                ; preds = %2
  %10 = load %struct.igb_adapter*, %struct.igb_adapter** %3, align 8
  %11 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %10, i32 0, i32 0
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 0
  %14 = call i32 @dev_err(i32* %13, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i64 0, i64 0))
  %15 = load i32*, i32** %4, align 8
  store i32 0, i32* %15, align 4
  br label %56

16:                                               ; preds = %2
  %17 = load %struct.igb_adapter*, %struct.igb_adapter** %3, align 8
  %18 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @e1000_i354, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %31

24:                                               ; preds = %16
  %25 = load %struct.igb_adapter*, %struct.igb_adapter** %3, align 8
  %26 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %25, i32 0, i32 0
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 0
  %29 = call i32 @dev_info(i32* %28, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0))
  %30 = load i32*, i32** %4, align 8
  store i32 0, i32* %30, align 4
  br label %56

31:                                               ; preds = %16
  %32 = load %struct.igb_adapter*, %struct.igb_adapter** %3, align 8
  %33 = call i32 @igb_setup_desc_rings(%struct.igb_adapter* %32)
  %34 = load i32*, i32** %4, align 8
  store i32 %33, i32* %34, align 4
  %35 = load i32*, i32** %4, align 8
  %36 = load i32, i32* %35, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %31
  br label %56

39:                                               ; preds = %31
  %40 = load %struct.igb_adapter*, %struct.igb_adapter** %3, align 8
  %41 = call i32 @igb_setup_loopback_test(%struct.igb_adapter* %40)
  %42 = load i32*, i32** %4, align 8
  store i32 %41, i32* %42, align 4
  %43 = load i32*, i32** %4, align 8
  %44 = load i32, i32* %43, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %39
  br label %53

47:                                               ; preds = %39
  %48 = load %struct.igb_adapter*, %struct.igb_adapter** %3, align 8
  %49 = call i32 @igb_run_loopback_test(%struct.igb_adapter* %48)
  %50 = load i32*, i32** %4, align 8
  store i32 %49, i32* %50, align 4
  %51 = load %struct.igb_adapter*, %struct.igb_adapter** %3, align 8
  %52 = call i32 @igb_loopback_cleanup(%struct.igb_adapter* %51)
  br label %53

53:                                               ; preds = %47, %46
  %54 = load %struct.igb_adapter*, %struct.igb_adapter** %3, align 8
  %55 = call i32 @igb_free_desc_rings(%struct.igb_adapter* %54)
  br label %56

56:                                               ; preds = %53, %38, %24, %9
  %57 = load i32*, i32** %4, align 8
  %58 = load i32, i32* %57, align 4
  ret i32 %58
}

declare dso_local i64 @igb_check_reset_block(%struct.TYPE_6__*) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @dev_info(i32*, i8*) #1

declare dso_local i32 @igb_setup_desc_rings(%struct.igb_adapter*) #1

declare dso_local i32 @igb_setup_loopback_test(%struct.igb_adapter*) #1

declare dso_local i32 @igb_run_loopback_test(%struct.igb_adapter*) #1

declare dso_local i32 @igb_loopback_cleanup(%struct.igb_adapter*) #1

declare dso_local i32 @igb_free_desc_rings(%struct.igb_adapter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
