; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/e1000e/extr_ethtool.c_e1000_link_test.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/e1000e/extr_ethtool.c_e1000_link_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_adapter = type { %struct.e1000_hw }
%struct.e1000_hw = type { %struct.TYPE_6__, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { i32, i64, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 (%struct.e1000_hw.0*)* }
%struct.e1000_hw.0 = type opaque
%struct.TYPE_4__ = type { i64 }

@e1000_media_type_internal_serdes = common dso_local global i64 0, align 8
@STATUS = common dso_local global i32 0, align 4
@E1000_STATUS_LU = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.e1000_adapter*, i32*)* @e1000_link_test to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @e1000_link_test(%struct.e1000_adapter* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.e1000_adapter*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.e1000_hw*, align 8
  %7 = alloca i32, align 4
  store %struct.e1000_adapter* %0, %struct.e1000_adapter** %4, align 8
  store i32* %1, i32** %5, align 8
  %8 = load %struct.e1000_adapter*, %struct.e1000_adapter** %4, align 8
  %9 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %8, i32 0, i32 0
  store %struct.e1000_hw* %9, %struct.e1000_hw** %6, align 8
  %10 = load i32*, i32** %5, align 8
  store i32 0, i32* %10, align 4
  %11 = load %struct.e1000_hw*, %struct.e1000_hw** %6, align 8
  %12 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @e1000_media_type_internal_serdes, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %46

17:                                               ; preds = %2
  store i32 0, i32* %7, align 4
  %18 = load %struct.e1000_hw*, %struct.e1000_hw** %6, align 8
  %19 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 0
  store i32 0, i32* %20, align 8
  br label %21

21:                                               ; preds = %40, %17
  %22 = load %struct.e1000_hw*, %struct.e1000_hw** %6, align 8
  %23 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 2
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 0
  %26 = load i32 (%struct.e1000_hw.0*)*, i32 (%struct.e1000_hw.0*)** %25, align 8
  %27 = load %struct.e1000_hw*, %struct.e1000_hw** %6, align 8
  %28 = bitcast %struct.e1000_hw* %27 to %struct.e1000_hw.0*
  %29 = call i32 %26(%struct.e1000_hw.0* %28)
  %30 = load %struct.e1000_hw*, %struct.e1000_hw** %6, align 8
  %31 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %21
  %36 = load i32*, i32** %5, align 8
  %37 = load i32, i32* %36, align 4
  store i32 %37, i32* %3, align 4
  br label %74

38:                                               ; preds = %21
  %39 = call i32 @msleep(i32 20)
  br label %40

40:                                               ; preds = %38
  %41 = load i32, i32* %7, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %7, align 4
  %43 = icmp slt i32 %41, 3750
  br i1 %43, label %21, label %44

44:                                               ; preds = %40
  %45 = load i32*, i32** %5, align 8
  store i32 1, i32* %45, align 4
  br label %71

46:                                               ; preds = %2
  %47 = load %struct.e1000_hw*, %struct.e1000_hw** %6, align 8
  %48 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 2
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 0
  %51 = load i32 (%struct.e1000_hw.0*)*, i32 (%struct.e1000_hw.0*)** %50, align 8
  %52 = load %struct.e1000_hw*, %struct.e1000_hw** %6, align 8
  %53 = bitcast %struct.e1000_hw* %52 to %struct.e1000_hw.0*
  %54 = call i32 %51(%struct.e1000_hw.0* %53)
  %55 = load %struct.e1000_hw*, %struct.e1000_hw** %6, align 8
  %56 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %62

60:                                               ; preds = %46
  %61 = call i32 @msleep_interruptible(i32 5000)
  br label %62

62:                                               ; preds = %60, %46
  %63 = load i32, i32* @STATUS, align 4
  %64 = call i32 @er32(i32 %63)
  %65 = load i32, i32* @E1000_STATUS_LU, align 4
  %66 = and i32 %64, %65
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %70, label %68

68:                                               ; preds = %62
  %69 = load i32*, i32** %5, align 8
  store i32 1, i32* %69, align 4
  br label %70

70:                                               ; preds = %68, %62
  br label %71

71:                                               ; preds = %70, %44
  %72 = load i32*, i32** %5, align 8
  %73 = load i32, i32* %72, align 4
  store i32 %73, i32* %3, align 4
  br label %74

74:                                               ; preds = %71, %35
  %75 = load i32, i32* %3, align 4
  ret i32 %75
}

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @msleep_interruptible(i32) #1

declare dso_local i32 @er32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
