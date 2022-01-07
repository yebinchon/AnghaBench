; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/bcma/extr_scan.c_bcma_erom_get_addr_desc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/bcma/extr_scan.c_bcma_erom_get_addr_desc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bcma_bus = type { i32 }

@SCAN_ER_VALID = common dso_local global i32 0, align 4
@SCAN_ER_TAGX = common dso_local global i32 0, align 4
@SCAN_ER_TAG_ADDR = common dso_local global i32 0, align 4
@SCAN_ADDR_TYPE = common dso_local global i32 0, align 4
@SCAN_ADDR_PORT = common dso_local global i32 0, align 4
@SCAN_ADDR_PORT_SHIFT = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@SCAN_ADDR_ADDR = common dso_local global i32 0, align 4
@SCAN_ADDR_AG32 = common dso_local global i32 0, align 4
@SCAN_ADDR_SZ = common dso_local global i32 0, align 4
@SCAN_ADDR_SZ_SZD = common dso_local global i32 0, align 4
@SCAN_SIZE_SZ = common dso_local global i32 0, align 4
@SCAN_SIZE_SG32 = common dso_local global i32 0, align 4
@SCAN_ADDR_SZ_BASE = common dso_local global i32 0, align 4
@SCAN_ADDR_SZ_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bcma_bus*, i32**, i32, i32)* @bcma_erom_get_addr_desc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bcma_erom_get_addr_desc(%struct.bcma_bus* %0, i32** %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.bcma_bus*, align 8
  %7 = alloca i32**, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.bcma_bus* %0, %struct.bcma_bus** %6, align 8
  store i32** %1, i32*** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 0, i32* %13, align 4
  %16 = load %struct.bcma_bus*, %struct.bcma_bus** %6, align 8
  %17 = load i32**, i32*** %7, align 8
  %18 = call i32 @bcma_erom_get_ent(%struct.bcma_bus* %16, i32** %17)
  store i32 %18, i32* %15, align 4
  %19 = load i32, i32* %15, align 4
  %20 = load i32, i32* @SCAN_ER_VALID, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %43

23:                                               ; preds = %4
  %24 = load i32, i32* %15, align 4
  %25 = load i32, i32* @SCAN_ER_TAGX, align 4
  %26 = and i32 %24, %25
  %27 = load i32, i32* @SCAN_ER_TAG_ADDR, align 4
  %28 = icmp ne i32 %26, %27
  br i1 %28, label %43, label %29

29:                                               ; preds = %23
  %30 = load i32, i32* %15, align 4
  %31 = load i32, i32* @SCAN_ADDR_TYPE, align 4
  %32 = and i32 %30, %31
  %33 = load i32, i32* %8, align 4
  %34 = icmp ne i32 %32, %33
  br i1 %34, label %43, label %35

35:                                               ; preds = %29
  %36 = load i32, i32* %15, align 4
  %37 = load i32, i32* @SCAN_ADDR_PORT, align 4
  %38 = and i32 %36, %37
  %39 = load i32, i32* @SCAN_ADDR_PORT_SHIFT, align 4
  %40 = ashr i32 %38, %39
  %41 = load i32, i32* %9, align 4
  %42 = icmp ne i32 %40, %41
  br i1 %42, label %43, label %48

43:                                               ; preds = %35, %29, %23, %4
  %44 = load i32**, i32*** %7, align 8
  %45 = call i32 @bcma_erom_push_ent(i32** %44)
  %46 = load i32, i32* @EINVAL, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %5, align 4
  br label %93

48:                                               ; preds = %35
  %49 = load i32, i32* %15, align 4
  %50 = load i32, i32* @SCAN_ADDR_ADDR, align 4
  %51 = and i32 %49, %50
  store i32 %51, i32* %10, align 4
  %52 = load i32, i32* %15, align 4
  %53 = load i32, i32* @SCAN_ADDR_AG32, align 4
  %54 = and i32 %52, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %60

56:                                               ; preds = %48
  %57 = load %struct.bcma_bus*, %struct.bcma_bus** %6, align 8
  %58 = load i32**, i32*** %7, align 8
  %59 = call i32 @bcma_erom_get_ent(%struct.bcma_bus* %57, i32** %58)
  store i32 %59, i32* %11, align 4
  br label %61

60:                                               ; preds = %48
  store i32 0, i32* %11, align 4
  br label %61

61:                                               ; preds = %60, %56
  %62 = load i32, i32* %15, align 4
  %63 = load i32, i32* @SCAN_ADDR_SZ, align 4
  %64 = and i32 %62, %63
  %65 = load i32, i32* @SCAN_ADDR_SZ_SZD, align 4
  %66 = icmp eq i32 %64, %65
  br i1 %66, label %67, label %83

67:                                               ; preds = %61
  %68 = load %struct.bcma_bus*, %struct.bcma_bus** %6, align 8
  %69 = load i32**, i32*** %7, align 8
  %70 = call i32 @bcma_erom_get_ent(%struct.bcma_bus* %68, i32** %69)
  store i32 %70, i32* %14, align 4
  %71 = load i32, i32* %14, align 4
  %72 = load i32, i32* @SCAN_SIZE_SZ, align 4
  %73 = and i32 %71, %72
  store i32 %73, i32* %12, align 4
  %74 = load i32, i32* %14, align 4
  %75 = load i32, i32* @SCAN_SIZE_SG32, align 4
  %76 = and i32 %74, %75
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %82

78:                                               ; preds = %67
  %79 = load %struct.bcma_bus*, %struct.bcma_bus** %6, align 8
  %80 = load i32**, i32*** %7, align 8
  %81 = call i32 @bcma_erom_get_ent(%struct.bcma_bus* %79, i32** %80)
  store i32 %81, i32* %13, align 4
  br label %82

82:                                               ; preds = %78, %67
  br label %91

83:                                               ; preds = %61
  %84 = load i32, i32* @SCAN_ADDR_SZ_BASE, align 4
  %85 = load i32, i32* %15, align 4
  %86 = load i32, i32* @SCAN_ADDR_SZ, align 4
  %87 = and i32 %85, %86
  %88 = load i32, i32* @SCAN_ADDR_SZ_SHIFT, align 4
  %89 = ashr i32 %87, %88
  %90 = shl i32 %84, %89
  store i32 %90, i32* %12, align 4
  br label %91

91:                                               ; preds = %83, %82
  %92 = load i32, i32* %10, align 4
  store i32 %92, i32* %5, align 4
  br label %93

93:                                               ; preds = %91, %43
  %94 = load i32, i32* %5, align 4
  ret i32 %94
}

declare dso_local i32 @bcma_erom_get_ent(%struct.bcma_bus*, i32**) #1

declare dso_local i32 @bcma_erom_push_ent(i32**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
