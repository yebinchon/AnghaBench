; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_tlan.c_TLan_PhyPrint.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_tlan.c_TLan_PhyPrint.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i64 }
%struct.TYPE_5__ = type { i64*, i64, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }

@TLAN_ADAPTER_UNMANAGED_PHY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"TLAN:   Device %s, Unmanaged PHY.\0A\00", align 1
@TLAN_PHY_MAX_ADDR = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [32 x i8] c"TLAN:   Device %s, PHY 0x%02x.\0A\00", align 1
@.str.2 = private unnamed_addr constant [43 x i8] c"TLAN:      Off.  +0     +1     +2     +3 \0A\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"TLAN:      0x%02x\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c" 0x%04hx\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c" 0x%04hx\0A\00", align 1
@.str.6 = private unnamed_addr constant [33 x i8] c"TLAN:   Device %s, Invalid PHY.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @TLan_PhyPrint to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @TLan_PhyPrint(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %10 = load %struct.net_device*, %struct.net_device** %2, align 8
  %11 = call %struct.TYPE_5__* @netdev_priv(%struct.net_device* %10)
  store %struct.TYPE_5__* %11, %struct.TYPE_5__** %3, align 8
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 0
  %14 = load i64*, i64** %13, align 8
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = getelementptr inbounds i64, i64* %14, i64 %17
  %19 = load i64, i64* %18, align 8
  store i64 %19, i64* %9, align 8
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 2
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @TLAN_ADAPTER_UNMANAGED_PHY, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %33

28:                                               ; preds = %1
  %29 = load %struct.net_device*, %struct.net_device** %2, align 8
  %30 = getelementptr inbounds %struct.net_device, %struct.net_device* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i64 %31)
  br label %87

33:                                               ; preds = %1
  %34 = load i64, i64* %9, align 8
  %35 = load i64, i64* @TLAN_PHY_MAX_ADDR, align 8
  %36 = icmp sle i64 %34, %35
  br i1 %36, label %37, label %81

37:                                               ; preds = %33
  %38 = load %struct.net_device*, %struct.net_device** %2, align 8
  %39 = getelementptr inbounds %struct.net_device, %struct.net_device* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* %9, align 8
  %42 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i64 %40, i64 %41)
  %43 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.2, i64 0, i64 0))
  store i64 0, i64* %4, align 8
  br label %44

44:                                               ; preds = %77, %37
  %45 = load i64, i64* %4, align 8
  %46 = icmp slt i64 %45, 32
  br i1 %46, label %47, label %80

47:                                               ; preds = %44
  %48 = load i64, i64* %4, align 8
  %49 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0), i64 %48)
  %50 = load %struct.net_device*, %struct.net_device** %2, align 8
  %51 = load i64, i64* %9, align 8
  %52 = load i64, i64* %4, align 8
  %53 = call i32 @TLan_MiiReadReg(%struct.net_device* %50, i64 %51, i64 %52, i64* %5)
  %54 = load i64, i64* %5, align 8
  %55 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0), i64 %54)
  %56 = load %struct.net_device*, %struct.net_device** %2, align 8
  %57 = load i64, i64* %9, align 8
  %58 = load i64, i64* %4, align 8
  %59 = add nsw i64 %58, 1
  %60 = call i32 @TLan_MiiReadReg(%struct.net_device* %56, i64 %57, i64 %59, i64* %6)
  %61 = load i64, i64* %6, align 8
  %62 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0), i64 %61)
  %63 = load %struct.net_device*, %struct.net_device** %2, align 8
  %64 = load i64, i64* %9, align 8
  %65 = load i64, i64* %4, align 8
  %66 = add nsw i64 %65, 2
  %67 = call i32 @TLan_MiiReadReg(%struct.net_device* %63, i64 %64, i64 %66, i64* %7)
  %68 = load i64, i64* %7, align 8
  %69 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0), i64 %68)
  %70 = load %struct.net_device*, %struct.net_device** %2, align 8
  %71 = load i64, i64* %9, align 8
  %72 = load i64, i64* %4, align 8
  %73 = add nsw i64 %72, 3
  %74 = call i32 @TLan_MiiReadReg(%struct.net_device* %70, i64 %71, i64 %73, i64* %8)
  %75 = load i64, i64* %8, align 8
  %76 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0), i64 %75)
  br label %77

77:                                               ; preds = %47
  %78 = load i64, i64* %4, align 8
  %79 = add nsw i64 %78, 4
  store i64 %79, i64* %4, align 8
  br label %44

80:                                               ; preds = %44
  br label %86

81:                                               ; preds = %33
  %82 = load %struct.net_device*, %struct.net_device** %2, align 8
  %83 = getelementptr inbounds %struct.net_device, %struct.net_device* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.6, i64 0, i64 0), i64 %84)
  br label %86

86:                                               ; preds = %81, %80
  br label %87

87:                                               ; preds = %86, %28
  ret void
}

declare dso_local %struct.TYPE_5__* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @printk(i8*, ...) #1

declare dso_local i32 @TLan_MiiReadReg(%struct.net_device*, i64, i64, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
