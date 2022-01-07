; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/pch_gbe/extr_pch_gbe_main.c_pch_gbe_mac_force_mac_fc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/pch_gbe/extr_pch_gbe_main.c_pch_gbe_mac_force_mac_fc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pch_gbe_hw = type { %struct.TYPE_2__*, %struct.pch_gbe_mac_info }
%struct.TYPE_2__ = type { i32 }
%struct.pch_gbe_mac_info = type { i32, i32, i64 }

@.str = private unnamed_addr constant [14 x i8] c"mac->fc = %u\0A\00", align 1
@PCH_GBE_FL_CTRL_EN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"Flow control param set incorrectly\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@DUPLEX_HALF = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [47 x i8] c"RX_FCTRL reg : 0x%08x  mac->tx_fc_enable : %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pch_gbe_mac_force_mac_fc(%struct.pch_gbe_hw* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pch_gbe_hw*, align 8
  %4 = alloca %struct.pch_gbe_mac_info*, align 8
  %5 = alloca i32, align 4
  store %struct.pch_gbe_hw* %0, %struct.pch_gbe_hw** %3, align 8
  %6 = load %struct.pch_gbe_hw*, %struct.pch_gbe_hw** %3, align 8
  %7 = getelementptr inbounds %struct.pch_gbe_hw, %struct.pch_gbe_hw* %6, i32 0, i32 1
  store %struct.pch_gbe_mac_info* %7, %struct.pch_gbe_mac_info** %4, align 8
  %8 = load %struct.pch_gbe_mac_info*, %struct.pch_gbe_mac_info** %4, align 8
  %9 = getelementptr inbounds %struct.pch_gbe_mac_info, %struct.pch_gbe_mac_info* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = call i32 (i8*, i32, ...) @pr_debug(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 %10)
  %12 = load %struct.pch_gbe_hw*, %struct.pch_gbe_hw** %3, align 8
  %13 = getelementptr inbounds %struct.pch_gbe_hw, %struct.pch_gbe_hw* %12, i32 0, i32 0
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = call i32 @ioread32(i32* %15)
  store i32 %16, i32* %5, align 4
  %17 = load %struct.pch_gbe_mac_info*, %struct.pch_gbe_mac_info** %4, align 8
  %18 = getelementptr inbounds %struct.pch_gbe_mac_info, %struct.pch_gbe_mac_info* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  switch i32 %19, label %46 [
    i32 130, label %20
    i32 129, label %27
    i32 128, label %33
    i32 131, label %40
  ]

20:                                               ; preds = %1
  %21 = load i32, i32* @PCH_GBE_FL_CTRL_EN, align 4
  %22 = xor i32 %21, -1
  %23 = load i32, i32* %5, align 4
  %24 = and i32 %23, %22
  store i32 %24, i32* %5, align 4
  %25 = load %struct.pch_gbe_mac_info*, %struct.pch_gbe_mac_info** %4, align 8
  %26 = getelementptr inbounds %struct.pch_gbe_mac_info, %struct.pch_gbe_mac_info* %25, i32 0, i32 1
  store i32 0, i32* %26, align 4
  br label %50

27:                                               ; preds = %1
  %28 = load i32, i32* @PCH_GBE_FL_CTRL_EN, align 4
  %29 = load i32, i32* %5, align 4
  %30 = or i32 %29, %28
  store i32 %30, i32* %5, align 4
  %31 = load %struct.pch_gbe_mac_info*, %struct.pch_gbe_mac_info** %4, align 8
  %32 = getelementptr inbounds %struct.pch_gbe_mac_info, %struct.pch_gbe_mac_info* %31, i32 0, i32 1
  store i32 0, i32* %32, align 4
  br label %50

33:                                               ; preds = %1
  %34 = load i32, i32* @PCH_GBE_FL_CTRL_EN, align 4
  %35 = xor i32 %34, -1
  %36 = load i32, i32* %5, align 4
  %37 = and i32 %36, %35
  store i32 %37, i32* %5, align 4
  %38 = load %struct.pch_gbe_mac_info*, %struct.pch_gbe_mac_info** %4, align 8
  %39 = getelementptr inbounds %struct.pch_gbe_mac_info, %struct.pch_gbe_mac_info* %38, i32 0, i32 1
  store i32 1, i32* %39, align 4
  br label %50

40:                                               ; preds = %1
  %41 = load i32, i32* @PCH_GBE_FL_CTRL_EN, align 4
  %42 = load i32, i32* %5, align 4
  %43 = or i32 %42, %41
  store i32 %43, i32* %5, align 4
  %44 = load %struct.pch_gbe_mac_info*, %struct.pch_gbe_mac_info** %4, align 8
  %45 = getelementptr inbounds %struct.pch_gbe_mac_info, %struct.pch_gbe_mac_info* %44, i32 0, i32 1
  store i32 1, i32* %45, align 4
  br label %50

46:                                               ; preds = %1
  %47 = call i32 @pr_err(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0))
  %48 = load i32, i32* @EINVAL, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %2, align 4
  br label %77

50:                                               ; preds = %40, %33, %27, %20
  %51 = load %struct.pch_gbe_mac_info*, %struct.pch_gbe_mac_info** %4, align 8
  %52 = getelementptr inbounds %struct.pch_gbe_mac_info, %struct.pch_gbe_mac_info* %51, i32 0, i32 2
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* @DUPLEX_HALF, align 8
  %55 = icmp eq i64 %53, %54
  br i1 %55, label %56, label %61

56:                                               ; preds = %50
  %57 = load i32, i32* @PCH_GBE_FL_CTRL_EN, align 4
  %58 = xor i32 %57, -1
  %59 = load i32, i32* %5, align 4
  %60 = and i32 %59, %58
  store i32 %60, i32* %5, align 4
  br label %61

61:                                               ; preds = %56, %50
  %62 = load i32, i32* %5, align 4
  %63 = load %struct.pch_gbe_hw*, %struct.pch_gbe_hw** %3, align 8
  %64 = getelementptr inbounds %struct.pch_gbe_hw, %struct.pch_gbe_hw* %63, i32 0, i32 0
  %65 = load %struct.TYPE_2__*, %struct.TYPE_2__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 0
  %67 = call i32 @iowrite32(i32 %62, i32* %66)
  %68 = load %struct.pch_gbe_hw*, %struct.pch_gbe_hw** %3, align 8
  %69 = getelementptr inbounds %struct.pch_gbe_hw, %struct.pch_gbe_hw* %68, i32 0, i32 0
  %70 = load %struct.TYPE_2__*, %struct.TYPE_2__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 0
  %72 = call i32 @ioread32(i32* %71)
  %73 = load %struct.pch_gbe_mac_info*, %struct.pch_gbe_mac_info** %4, align 8
  %74 = getelementptr inbounds %struct.pch_gbe_mac_info, %struct.pch_gbe_mac_info* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = call i32 (i8*, i32, ...) @pr_debug(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.2, i64 0, i64 0), i32 %72, i32 %75)
  store i32 0, i32* %2, align 4
  br label %77

77:                                               ; preds = %61, %46
  %78 = load i32, i32* %2, align 4
  ret i32 %78
}

declare dso_local i32 @pr_debug(i8*, i32, ...) #1

declare dso_local i32 @ioread32(i32*) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @iowrite32(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
