; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-omap2/extr_gpmc.c_gpmc_cs_request.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-omap2/extr_gpmc.c_gpmc_cs_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.resource = type { i64 }

@gpmc_cs_mem = common dso_local global %struct.resource* null, align 8
@GPMC_CS_NUM = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@GPMC_SECTION_SHIFT = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@gpmc_mem_lock = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@gpmc_mem_root = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @gpmc_cs_request(i32 %0, i64 %1, i64* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64*, align 8
  %8 = alloca %struct.resource*, align 8
  %9 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i64 %1, i64* %6, align 8
  store i64* %2, i64** %7, align 8
  %10 = load %struct.resource*, %struct.resource** @gpmc_cs_mem, align 8
  %11 = load i32, i32* %5, align 4
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds %struct.resource, %struct.resource* %10, i64 %12
  store %struct.resource* %13, %struct.resource** %8, align 8
  store i32 -1, i32* %9, align 4
  %14 = load i32, i32* %5, align 4
  %15 = load i32, i32* @GPMC_CS_NUM, align 4
  %16 = icmp sgt i32 %14, %15
  br i1 %16, label %17, label %20

17:                                               ; preds = %3
  %18 = load i32, i32* @ENODEV, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %4, align 4
  br label %83

20:                                               ; preds = %3
  %21 = load i64, i64* %6, align 8
  %22 = call i64 @gpmc_mem_align(i64 %21)
  store i64 %22, i64* %6, align 8
  %23 = load i64, i64* %6, align 8
  %24 = load i32, i32* @GPMC_SECTION_SHIFT, align 4
  %25 = shl i32 1, %24
  %26 = sext i32 %25 to i64
  %27 = icmp ugt i64 %23, %26
  br i1 %27, label %28, label %31

28:                                               ; preds = %20
  %29 = load i32, i32* @ENOMEM, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %4, align 4
  br label %83

31:                                               ; preds = %20
  %32 = call i32 @spin_lock(i32* @gpmc_mem_lock)
  %33 = load i32, i32* %5, align 4
  %34 = call i64 @gpmc_cs_reserved(i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %31
  %37 = load i32, i32* @EBUSY, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %9, align 4
  br label %80

39:                                               ; preds = %31
  %40 = load i32, i32* %5, align 4
  %41 = call i64 @gpmc_cs_mem_enabled(i32 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %54

43:                                               ; preds = %39
  %44 = load %struct.resource*, %struct.resource** %8, align 8
  %45 = load %struct.resource*, %struct.resource** %8, align 8
  %46 = getelementptr inbounds %struct.resource, %struct.resource* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* %6, align 8
  %49 = sub i64 %48, 1
  %50 = xor i64 %49, -1
  %51 = and i64 %47, %50
  %52 = load i64, i64* %6, align 8
  %53 = call i32 @adjust_resource(%struct.resource* %44, i64 %51, i64 %52)
  store i32 %53, i32* %9, align 4
  br label %54

54:                                               ; preds = %43, %39
  %55 = load i32, i32* %9, align 4
  %56 = icmp slt i32 %55, 0
  br i1 %56, label %57, label %62

57:                                               ; preds = %54
  %58 = load %struct.resource*, %struct.resource** %8, align 8
  %59 = load i64, i64* %6, align 8
  %60 = load i64, i64* %6, align 8
  %61 = call i32 @allocate_resource(i32* @gpmc_mem_root, %struct.resource* %58, i64 %59, i32 0, i32 -1, i64 %60, i32* null, i32* null)
  store i32 %61, i32* %9, align 4
  br label %62

62:                                               ; preds = %57, %54
  %63 = load i32, i32* %9, align 4
  %64 = icmp slt i32 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %62
  br label %80

66:                                               ; preds = %62
  %67 = load i32, i32* %5, align 4
  %68 = load %struct.resource*, %struct.resource** %8, align 8
  %69 = getelementptr inbounds %struct.resource, %struct.resource* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = load %struct.resource*, %struct.resource** %8, align 8
  %72 = call i32 @resource_size(%struct.resource* %71)
  %73 = call i32 @gpmc_cs_enable_mem(i32 %67, i64 %70, i32 %72)
  %74 = load %struct.resource*, %struct.resource** %8, align 8
  %75 = getelementptr inbounds %struct.resource, %struct.resource* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = load i64*, i64** %7, align 8
  store i64 %76, i64* %77, align 8
  %78 = load i32, i32* %5, align 4
  %79 = call i32 @gpmc_cs_set_reserved(i32 %78, i32 1)
  br label %80

80:                                               ; preds = %66, %65, %36
  %81 = call i32 @spin_unlock(i32* @gpmc_mem_lock)
  %82 = load i32, i32* %9, align 4
  store i32 %82, i32* %4, align 4
  br label %83

83:                                               ; preds = %80, %28, %17
  %84 = load i32, i32* %4, align 4
  ret i32 %84
}

declare dso_local i64 @gpmc_mem_align(i64) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i64 @gpmc_cs_reserved(i32) #1

declare dso_local i64 @gpmc_cs_mem_enabled(i32) #1

declare dso_local i32 @adjust_resource(%struct.resource*, i64, i64) #1

declare dso_local i32 @allocate_resource(i32*, %struct.resource*, i64, i32, i32, i64, i32*, i32*) #1

declare dso_local i32 @gpmc_cs_enable_mem(i32, i64, i32) #1

declare dso_local i32 @resource_size(%struct.resource*) #1

declare dso_local i32 @gpmc_cs_set_reserved(i32, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
