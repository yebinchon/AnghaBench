; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/bcma/extr_scan.c_bcma_erom_is_bridge.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/bcma/extr_scan.c_bcma_erom_is_bridge.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bcma_bus = type { i32 }

@SCAN_ER_VALID = common dso_local global i32 0, align 4
@SCAN_ER_TAGX = common dso_local global i32 0, align 4
@SCAN_ER_TAG_ADDR = common dso_local global i32 0, align 4
@SCAN_ADDR_TYPE = common dso_local global i32 0, align 4
@SCAN_ADDR_TYPE_BRIDGE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bcma_bus*, i32**)* @bcma_erom_is_bridge to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bcma_erom_is_bridge(%struct.bcma_bus* %0, i32** %1) #0 {
  %3 = alloca %struct.bcma_bus*, align 8
  %4 = alloca i32**, align 8
  %5 = alloca i32, align 4
  store %struct.bcma_bus* %0, %struct.bcma_bus** %3, align 8
  store i32** %1, i32*** %4, align 8
  %6 = load %struct.bcma_bus*, %struct.bcma_bus** %3, align 8
  %7 = load i32**, i32*** %4, align 8
  %8 = call i32 @bcma_erom_get_ent(%struct.bcma_bus* %6, i32** %7)
  store i32 %8, i32* %5, align 4
  %9 = load i32**, i32*** %4, align 8
  %10 = call i32 @bcma_erom_push_ent(i32** %9)
  %11 = load i32, i32* %5, align 4
  %12 = load i32, i32* @SCAN_ER_VALID, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %27

15:                                               ; preds = %2
  %16 = load i32, i32* %5, align 4
  %17 = load i32, i32* @SCAN_ER_TAGX, align 4
  %18 = and i32 %16, %17
  %19 = load i32, i32* @SCAN_ER_TAG_ADDR, align 4
  %20 = icmp eq i32 %18, %19
  br i1 %20, label %21, label %27

21:                                               ; preds = %15
  %22 = load i32, i32* %5, align 4
  %23 = load i32, i32* @SCAN_ADDR_TYPE, align 4
  %24 = and i32 %22, %23
  %25 = load i32, i32* @SCAN_ADDR_TYPE_BRIDGE, align 4
  %26 = icmp eq i32 %24, %25
  br label %27

27:                                               ; preds = %21, %15, %2
  %28 = phi i1 [ false, %15 ], [ false, %2 ], [ %26, %21 ]
  %29 = zext i1 %28 to i32
  ret i32 %29
}

declare dso_local i32 @bcma_erom_get_ent(%struct.bcma_bus*, i32**) #1

declare dso_local i32 @bcma_erom_push_ent(i32**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
