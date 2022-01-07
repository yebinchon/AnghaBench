; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/pch_gbe/extr_pch_gbe_main.c_pch_gbe_mac_set_pause_packet.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/pch_gbe/extr_pch_gbe_main.c_pch_gbe_mac_set_pause_packet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pch_gbe_hw = type { %struct.TYPE_4__*, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32, i32, i32, i32, i32, i32 }
%struct.TYPE_3__ = type { i64* }

@PCH_GBE_PAUSE_PKT2_VALUE = common dso_local global i64 0, align 8
@PCH_GBE_PAUSE_PKT1_VALUE = common dso_local global i64 0, align 8
@PCH_GBE_PAUSE_PKT4_VALUE = common dso_local global i64 0, align 8
@PCH_GBE_PAUSE_PKT5_VALUE = common dso_local global i64 0, align 8
@PCH_GBE_PS_PKT_RQ = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [55 x i8] c"PAUSE_PKT1-5 reg : 0x%08x 0x%08x 0x%08x 0x%08x 0x%08x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pch_gbe_hw*)* @pch_gbe_mac_set_pause_packet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pch_gbe_mac_set_pause_packet(%struct.pch_gbe_hw* %0) #0 {
  %2 = alloca %struct.pch_gbe_hw*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store %struct.pch_gbe_hw* %0, %struct.pch_gbe_hw** %2, align 8
  %5 = load %struct.pch_gbe_hw*, %struct.pch_gbe_hw** %2, align 8
  %6 = getelementptr inbounds %struct.pch_gbe_hw, %struct.pch_gbe_hw* %5, i32 0, i32 1
  %7 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 0
  %8 = load i64*, i64** %7, align 8
  %9 = getelementptr inbounds i64, i64* %8, i64 1
  %10 = load i64, i64* %9, align 8
  store i64 %10, i64* %3, align 8
  %11 = load i64, i64* %3, align 8
  %12 = shl i64 %11, 8
  %13 = load %struct.pch_gbe_hw*, %struct.pch_gbe_hw** %2, align 8
  %14 = getelementptr inbounds %struct.pch_gbe_hw, %struct.pch_gbe_hw* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load i64*, i64** %15, align 8
  %17 = getelementptr inbounds i64, i64* %16, i64 0
  %18 = load i64, i64* %17, align 8
  %19 = or i64 %12, %18
  store i64 %19, i64* %3, align 8
  %20 = load i64, i64* @PCH_GBE_PAUSE_PKT2_VALUE, align 8
  %21 = load i64, i64* %3, align 8
  %22 = shl i64 %21, 16
  %23 = or i64 %20, %22
  store i64 %23, i64* %3, align 8
  %24 = load %struct.pch_gbe_hw*, %struct.pch_gbe_hw** %2, align 8
  %25 = getelementptr inbounds %struct.pch_gbe_hw, %struct.pch_gbe_hw* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  %27 = load i64*, i64** %26, align 8
  %28 = getelementptr inbounds i64, i64* %27, i64 5
  %29 = load i64, i64* %28, align 8
  store i64 %29, i64* %4, align 8
  %30 = load i64, i64* %4, align 8
  %31 = shl i64 %30, 8
  %32 = load %struct.pch_gbe_hw*, %struct.pch_gbe_hw** %2, align 8
  %33 = getelementptr inbounds %struct.pch_gbe_hw, %struct.pch_gbe_hw* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 0
  %35 = load i64*, i64** %34, align 8
  %36 = getelementptr inbounds i64, i64* %35, i64 4
  %37 = load i64, i64* %36, align 8
  %38 = or i64 %31, %37
  store i64 %38, i64* %4, align 8
  %39 = load i64, i64* %4, align 8
  %40 = shl i64 %39, 8
  %41 = load %struct.pch_gbe_hw*, %struct.pch_gbe_hw** %2, align 8
  %42 = getelementptr inbounds %struct.pch_gbe_hw, %struct.pch_gbe_hw* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 0
  %44 = load i64*, i64** %43, align 8
  %45 = getelementptr inbounds i64, i64* %44, i64 3
  %46 = load i64, i64* %45, align 8
  %47 = or i64 %40, %46
  store i64 %47, i64* %4, align 8
  %48 = load i64, i64* %4, align 8
  %49 = shl i64 %48, 8
  %50 = load %struct.pch_gbe_hw*, %struct.pch_gbe_hw** %2, align 8
  %51 = getelementptr inbounds %struct.pch_gbe_hw, %struct.pch_gbe_hw* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 0
  %53 = load i64*, i64** %52, align 8
  %54 = getelementptr inbounds i64, i64* %53, i64 2
  %55 = load i64, i64* %54, align 8
  %56 = or i64 %49, %55
  store i64 %56, i64* %4, align 8
  %57 = load i64, i64* @PCH_GBE_PAUSE_PKT1_VALUE, align 8
  %58 = load %struct.pch_gbe_hw*, %struct.pch_gbe_hw** %2, align 8
  %59 = getelementptr inbounds %struct.pch_gbe_hw, %struct.pch_gbe_hw* %58, i32 0, i32 0
  %60 = load %struct.TYPE_4__*, %struct.TYPE_4__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 4
  %62 = call i32 @iowrite32(i64 %57, i32* %61)
  %63 = load i64, i64* %3, align 8
  %64 = load %struct.pch_gbe_hw*, %struct.pch_gbe_hw** %2, align 8
  %65 = getelementptr inbounds %struct.pch_gbe_hw, %struct.pch_gbe_hw* %64, i32 0, i32 0
  %66 = load %struct.TYPE_4__*, %struct.TYPE_4__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 3
  %68 = call i32 @iowrite32(i64 %63, i32* %67)
  %69 = load i64, i64* %4, align 8
  %70 = load %struct.pch_gbe_hw*, %struct.pch_gbe_hw** %2, align 8
  %71 = getelementptr inbounds %struct.pch_gbe_hw, %struct.pch_gbe_hw* %70, i32 0, i32 0
  %72 = load %struct.TYPE_4__*, %struct.TYPE_4__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 2
  %74 = call i32 @iowrite32(i64 %69, i32* %73)
  %75 = load i64, i64* @PCH_GBE_PAUSE_PKT4_VALUE, align 8
  %76 = load %struct.pch_gbe_hw*, %struct.pch_gbe_hw** %2, align 8
  %77 = getelementptr inbounds %struct.pch_gbe_hw, %struct.pch_gbe_hw* %76, i32 0, i32 0
  %78 = load %struct.TYPE_4__*, %struct.TYPE_4__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 1
  %80 = call i32 @iowrite32(i64 %75, i32* %79)
  %81 = load i64, i64* @PCH_GBE_PAUSE_PKT5_VALUE, align 8
  %82 = load %struct.pch_gbe_hw*, %struct.pch_gbe_hw** %2, align 8
  %83 = getelementptr inbounds %struct.pch_gbe_hw, %struct.pch_gbe_hw* %82, i32 0, i32 0
  %84 = load %struct.TYPE_4__*, %struct.TYPE_4__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i32 0, i32 0
  %86 = call i32 @iowrite32(i64 %81, i32* %85)
  %87 = load i64, i64* @PCH_GBE_PS_PKT_RQ, align 8
  %88 = load %struct.pch_gbe_hw*, %struct.pch_gbe_hw** %2, align 8
  %89 = getelementptr inbounds %struct.pch_gbe_hw, %struct.pch_gbe_hw* %88, i32 0, i32 0
  %90 = load %struct.TYPE_4__*, %struct.TYPE_4__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %90, i32 0, i32 5
  %92 = call i32 @iowrite32(i64 %87, i32* %91)
  %93 = load %struct.pch_gbe_hw*, %struct.pch_gbe_hw** %2, align 8
  %94 = getelementptr inbounds %struct.pch_gbe_hw, %struct.pch_gbe_hw* %93, i32 0, i32 0
  %95 = load %struct.TYPE_4__*, %struct.TYPE_4__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %95, i32 0, i32 4
  %97 = call i32 @ioread32(i32* %96)
  %98 = load %struct.pch_gbe_hw*, %struct.pch_gbe_hw** %2, align 8
  %99 = getelementptr inbounds %struct.pch_gbe_hw, %struct.pch_gbe_hw* %98, i32 0, i32 0
  %100 = load %struct.TYPE_4__*, %struct.TYPE_4__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %100, i32 0, i32 3
  %102 = call i32 @ioread32(i32* %101)
  %103 = load %struct.pch_gbe_hw*, %struct.pch_gbe_hw** %2, align 8
  %104 = getelementptr inbounds %struct.pch_gbe_hw, %struct.pch_gbe_hw* %103, i32 0, i32 0
  %105 = load %struct.TYPE_4__*, %struct.TYPE_4__** %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %105, i32 0, i32 2
  %107 = call i32 @ioread32(i32* %106)
  %108 = load %struct.pch_gbe_hw*, %struct.pch_gbe_hw** %2, align 8
  %109 = getelementptr inbounds %struct.pch_gbe_hw, %struct.pch_gbe_hw* %108, i32 0, i32 0
  %110 = load %struct.TYPE_4__*, %struct.TYPE_4__** %109, align 8
  %111 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %110, i32 0, i32 1
  %112 = call i32 @ioread32(i32* %111)
  %113 = load %struct.pch_gbe_hw*, %struct.pch_gbe_hw** %2, align 8
  %114 = getelementptr inbounds %struct.pch_gbe_hw, %struct.pch_gbe_hw* %113, i32 0, i32 0
  %115 = load %struct.TYPE_4__*, %struct.TYPE_4__** %114, align 8
  %116 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %115, i32 0, i32 0
  %117 = call i32 @ioread32(i32* %116)
  %118 = call i32 @pr_debug(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0), i32 %97, i32 %102, i32 %107, i32 %112, i32 %117)
  ret void
}

declare dso_local i32 @iowrite32(i64, i32*) #1

declare dso_local i32 @pr_debug(i8*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @ioread32(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
