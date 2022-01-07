; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/pch_gbe/extr_pch_gbe_main.c_pch_gbe_mac_set_wol_event.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/pch_gbe/extr_pch_gbe_main.c_pch_gbe_mac_set_wol_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pch_gbe_hw = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [41 x i8] c"wu_evt : 0x%08x  ADDR_MASK reg : 0x%08x\0A\00", align 1
@PCH_GBE_WLA_BUSY = common dso_local global i32 0, align 4
@PCH_GBE_WLC_WOL_MODE = common dso_local global i32 0, align 4
@PCH_GBE_INT_ENABLE_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pch_gbe_hw*, i32)* @pch_gbe_mac_set_wol_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pch_gbe_mac_set_wol_event(%struct.pch_gbe_hw* %0, i32 %1) #0 {
  %3 = alloca %struct.pch_gbe_hw*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.pch_gbe_hw* %0, %struct.pch_gbe_hw** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* %4, align 4
  %7 = load %struct.pch_gbe_hw*, %struct.pch_gbe_hw** %3, align 8
  %8 = getelementptr inbounds %struct.pch_gbe_hw, %struct.pch_gbe_hw* %7, i32 0, i32 0
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 5
  %11 = call i32 @ioread32(i32* %10)
  %12 = call i32 @pr_debug(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %6, i32 %11)
  %13 = load i32, i32* %4, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %57

15:                                               ; preds = %2
  %16 = load %struct.pch_gbe_hw*, %struct.pch_gbe_hw** %3, align 8
  %17 = getelementptr inbounds %struct.pch_gbe_hw, %struct.pch_gbe_hw* %16, i32 0, i32 0
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 5
  %20 = call i32 @ioread32(i32* %19)
  store i32 %20, i32* %5, align 4
  %21 = load i32, i32* %5, align 4
  %22 = load %struct.pch_gbe_hw*, %struct.pch_gbe_hw** %3, align 8
  %23 = getelementptr inbounds %struct.pch_gbe_hw, %struct.pch_gbe_hw* %22, i32 0, i32 0
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 4
  %26 = call i32 @iowrite32(i32 %21, i32* %25)
  %27 = load %struct.pch_gbe_hw*, %struct.pch_gbe_hw** %3, align 8
  %28 = getelementptr inbounds %struct.pch_gbe_hw, %struct.pch_gbe_hw* %27, i32 0, i32 0
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 4
  %31 = load i32, i32* @PCH_GBE_WLA_BUSY, align 4
  %32 = call i32 @pch_gbe_wait_clr_bit(i32* %30, i32 %31)
  %33 = load %struct.pch_gbe_hw*, %struct.pch_gbe_hw** %3, align 8
  %34 = getelementptr inbounds %struct.pch_gbe_hw, %struct.pch_gbe_hw* %33, i32 0, i32 0
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = call i32 @iowrite32(i32 0, i32* %36)
  %38 = load i32, i32* %4, align 4
  %39 = load i32, i32* @PCH_GBE_WLC_WOL_MODE, align 4
  %40 = or i32 %38, %39
  %41 = load %struct.pch_gbe_hw*, %struct.pch_gbe_hw** %3, align 8
  %42 = getelementptr inbounds %struct.pch_gbe_hw, %struct.pch_gbe_hw* %41, i32 0, i32 0
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 1
  %45 = call i32 @iowrite32(i32 %40, i32* %44)
  %46 = load %struct.pch_gbe_hw*, %struct.pch_gbe_hw** %3, align 8
  %47 = getelementptr inbounds %struct.pch_gbe_hw, %struct.pch_gbe_hw* %46, i32 0, i32 0
  %48 = load %struct.TYPE_2__*, %struct.TYPE_2__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 3
  %50 = call i32 @iowrite32(i32 2, i32* %49)
  %51 = load i32, i32* @PCH_GBE_INT_ENABLE_MASK, align 4
  %52 = load %struct.pch_gbe_hw*, %struct.pch_gbe_hw** %3, align 8
  %53 = getelementptr inbounds %struct.pch_gbe_hw, %struct.pch_gbe_hw* %52, i32 0, i32 0
  %54 = load %struct.TYPE_2__*, %struct.TYPE_2__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 2
  %56 = call i32 @iowrite32(i32 %51, i32* %55)
  br label %68

57:                                               ; preds = %2
  %58 = load %struct.pch_gbe_hw*, %struct.pch_gbe_hw** %3, align 8
  %59 = getelementptr inbounds %struct.pch_gbe_hw, %struct.pch_gbe_hw* %58, i32 0, i32 0
  %60 = load %struct.TYPE_2__*, %struct.TYPE_2__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 1
  %62 = call i32 @iowrite32(i32 0, i32* %61)
  %63 = load %struct.pch_gbe_hw*, %struct.pch_gbe_hw** %3, align 8
  %64 = getelementptr inbounds %struct.pch_gbe_hw, %struct.pch_gbe_hw* %63, i32 0, i32 0
  %65 = load %struct.TYPE_2__*, %struct.TYPE_2__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 0
  %67 = call i32 @iowrite32(i32 0, i32* %66)
  br label %68

68:                                               ; preds = %57, %15
  ret void
}

declare dso_local i32 @pr_debug(i8*, i32, i32) #1

declare dso_local i32 @ioread32(i32*) #1

declare dso_local i32 @iowrite32(i32, i32*) #1

declare dso_local i32 @pch_gbe_wait_clr_bit(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
