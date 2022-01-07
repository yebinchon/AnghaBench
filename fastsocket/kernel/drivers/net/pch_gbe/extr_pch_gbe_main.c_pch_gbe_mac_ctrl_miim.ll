; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/pch_gbe/extr_pch_gbe_main.c_pch_gbe_mac_ctrl_miim.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/pch_gbe/extr_pch_gbe_main.c_pch_gbe_mac_ctrl_miim.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pch_gbe_hw = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@PCH_GBE_MIIM_OPER_READY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"pch-gbe.miim won't go Ready\0A\00", align 1
@PCH_GBE_MIIM_REG_ADDR_SHIFT = common dso_local global i32 0, align 4
@PCH_GBE_MIIM_PHY_ADDR_SHIFT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"PHY %s: reg=%d, data=0x%04X\0A\00", align 1
@PCH_GBE_MIIM_OPER_READ = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [5 x i8] c"READ\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"WRITE\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pch_gbe_mac_ctrl_miim(%struct.pch_gbe_hw* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.pch_gbe_hw*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  store %struct.pch_gbe_hw* %0, %struct.pch_gbe_hw** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 0, i32* %12, align 4
  %15 = load %struct.pch_gbe_hw*, %struct.pch_gbe_hw** %7, align 8
  %16 = getelementptr inbounds %struct.pch_gbe_hw, %struct.pch_gbe_hw* %15, i32 0, i32 0
  %17 = load i64, i64* %14, align 8
  %18 = call i32 @spin_lock_irqsave(i32* %16, i64 %17)
  store i32 100, i32* %13, align 4
  br label %19

19:                                               ; preds = %34, %5
  %20 = load i32, i32* %13, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %37

22:                                               ; preds = %19
  %23 = load %struct.pch_gbe_hw*, %struct.pch_gbe_hw** %7, align 8
  %24 = getelementptr inbounds %struct.pch_gbe_hw, %struct.pch_gbe_hw* %23, i32 0, i32 1
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = call i32 @ioread32(i32* %26)
  %28 = load i32, i32* @PCH_GBE_MIIM_OPER_READY, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %22
  br label %37

32:                                               ; preds = %22
  %33 = call i32 @udelay(i32 20)
  br label %34

34:                                               ; preds = %32
  %35 = load i32, i32* %13, align 4
  %36 = add i32 %35, -1
  store i32 %36, i32* %13, align 4
  br label %19

37:                                               ; preds = %31, %19
  %38 = load i32, i32* %13, align 4
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %46

40:                                               ; preds = %37
  %41 = call i32 @pr_err(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %42 = load %struct.pch_gbe_hw*, %struct.pch_gbe_hw** %7, align 8
  %43 = getelementptr inbounds %struct.pch_gbe_hw, %struct.pch_gbe_hw* %42, i32 0, i32 0
  %44 = load i64, i64* %14, align 8
  %45 = call i32 @spin_unlock_irqrestore(i32* %43, i64 %44)
  store i32 0, i32* %6, align 4
  br label %104

46:                                               ; preds = %37
  %47 = load i32, i32* %10, align 4
  %48 = load i32, i32* @PCH_GBE_MIIM_REG_ADDR_SHIFT, align 4
  %49 = shl i32 %47, %48
  %50 = load i32, i32* %8, align 4
  %51 = load i32, i32* @PCH_GBE_MIIM_PHY_ADDR_SHIFT, align 4
  %52 = shl i32 %50, %51
  %53 = or i32 %49, %52
  %54 = load i32, i32* %9, align 4
  %55 = or i32 %53, %54
  %56 = load i32, i32* %11, align 4
  %57 = or i32 %55, %56
  %58 = load %struct.pch_gbe_hw*, %struct.pch_gbe_hw** %7, align 8
  %59 = getelementptr inbounds %struct.pch_gbe_hw, %struct.pch_gbe_hw* %58, i32 0, i32 1
  %60 = load %struct.TYPE_2__*, %struct.TYPE_2__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 0
  %62 = call i32 @iowrite32(i32 %57, i32* %61)
  store i32 0, i32* %13, align 4
  br label %63

63:                                               ; preds = %79, %46
  %64 = load i32, i32* %13, align 4
  %65 = icmp ult i32 %64, 100
  br i1 %65, label %66, label %82

66:                                               ; preds = %63
  %67 = call i32 @udelay(i32 20)
  %68 = load %struct.pch_gbe_hw*, %struct.pch_gbe_hw** %7, align 8
  %69 = getelementptr inbounds %struct.pch_gbe_hw, %struct.pch_gbe_hw* %68, i32 0, i32 1
  %70 = load %struct.TYPE_2__*, %struct.TYPE_2__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 0
  %72 = call i32 @ioread32(i32* %71)
  store i32 %72, i32* %12, align 4
  %73 = load i32, i32* %12, align 4
  %74 = load i32, i32* @PCH_GBE_MIIM_OPER_READY, align 4
  %75 = and i32 %73, %74
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %78

77:                                               ; preds = %66
  br label %82

78:                                               ; preds = %66
  br label %79

79:                                               ; preds = %78
  %80 = load i32, i32* %13, align 4
  %81 = add i32 %80, 1
  store i32 %81, i32* %13, align 4
  br label %63

82:                                               ; preds = %77, %63
  %83 = load %struct.pch_gbe_hw*, %struct.pch_gbe_hw** %7, align 8
  %84 = getelementptr inbounds %struct.pch_gbe_hw, %struct.pch_gbe_hw* %83, i32 0, i32 0
  %85 = load i64, i64* %14, align 8
  %86 = call i32 @spin_unlock_irqrestore(i32* %84, i64 %85)
  %87 = load i32, i32* %9, align 4
  %88 = load i32, i32* @PCH_GBE_MIIM_OPER_READ, align 4
  %89 = icmp eq i32 %87, %88
  %90 = zext i1 %89 to i64
  %91 = select i1 %89, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0)
  %92 = load i32, i32* %10, align 4
  %93 = load i32, i32* %9, align 4
  %94 = load i32, i32* @PCH_GBE_MIIM_OPER_READ, align 4
  %95 = icmp eq i32 %93, %94
  br i1 %95, label %96, label %98

96:                                               ; preds = %82
  %97 = load i32, i32* %12, align 4
  br label %100

98:                                               ; preds = %82
  %99 = load i32, i32* %11, align 4
  br label %100

100:                                              ; preds = %98, %96
  %101 = phi i32 [ %97, %96 ], [ %99, %98 ]
  %102 = call i32 @pr_debug(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i8* %91, i32 %92, i32 %101)
  %103 = load i32, i32* %12, align 4
  store i32 %103, i32* %6, align 4
  br label %104

104:                                              ; preds = %100, %40
  %105 = load i32, i32* %6, align 4
  ret i32 %105
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @ioread32(i32*) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @iowrite32(i32, i32*) #1

declare dso_local i32 @pr_debug(i8*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
