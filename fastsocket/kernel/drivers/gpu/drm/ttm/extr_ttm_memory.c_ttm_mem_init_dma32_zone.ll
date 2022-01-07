; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/ttm/extr_ttm_memory.c_ttm_mem_init_dma32_zone.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/ttm/extr_ttm_memory.c_ttm_mem_init_dma32_zone.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ttm_mem_global = type { i32, %struct.ttm_mem_zone**, i32, %struct.ttm_mem_zone* }
%struct.ttm_mem_zone = type { i8*, i32, i32, i32, i32, i32, %struct.ttm_mem_global*, i64 }
%struct.sysinfo = type { i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"dma32\00", align 1
@ttm_mem_zone_kobj_type = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ttm_mem_global*, %struct.sysinfo*)* @ttm_mem_init_dma32_zone to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ttm_mem_init_dma32_zone(%struct.ttm_mem_global* %0, %struct.sysinfo* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ttm_mem_global*, align 8
  %5 = alloca %struct.sysinfo*, align 8
  %6 = alloca %struct.ttm_mem_zone*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.ttm_mem_global* %0, %struct.ttm_mem_global** %4, align 8
  store %struct.sysinfo* %1, %struct.sysinfo** %5, align 8
  %9 = load i32, i32* @GFP_KERNEL, align 4
  %10 = call %struct.ttm_mem_zone* @kzalloc(i32 48, i32 %9)
  store %struct.ttm_mem_zone* %10, %struct.ttm_mem_zone** %6, align 8
  %11 = load %struct.ttm_mem_zone*, %struct.ttm_mem_zone** %6, align 8
  %12 = icmp ne %struct.ttm_mem_zone* %11, null
  %13 = xor i1 %12, true
  %14 = zext i1 %13 to i32
  %15 = call i64 @unlikely(i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %2
  %18 = load i32, i32* @ENOMEM, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %3, align 4
  br label %96

20:                                               ; preds = %2
  %21 = load %struct.sysinfo*, %struct.sysinfo** %5, align 8
  %22 = getelementptr inbounds %struct.sysinfo, %struct.sysinfo* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  store i32 %23, i32* %7, align 4
  %24 = load %struct.sysinfo*, %struct.sysinfo** %5, align 8
  %25 = getelementptr inbounds %struct.sysinfo, %struct.sysinfo* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* %7, align 4
  %28 = mul nsw i32 %27, %26
  store i32 %28, i32* %7, align 4
  %29 = load i32, i32* %7, align 4
  %30 = icmp sle i32 %29, undef
  br i1 %30, label %31, label %34

31:                                               ; preds = %20
  %32 = load %struct.ttm_mem_zone*, %struct.ttm_mem_zone** %6, align 8
  %33 = call i32 @kfree(%struct.ttm_mem_zone* %32)
  store i32 0, i32* %3, align 4
  br label %96

34:                                               ; preds = %20
  store i32 undef, i32* %7, align 4
  %35 = load %struct.ttm_mem_zone*, %struct.ttm_mem_zone** %6, align 8
  %36 = getelementptr inbounds %struct.ttm_mem_zone, %struct.ttm_mem_zone* %35, i32 0, i32 0
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8** %36, align 8
  %37 = load i32, i32* %7, align 4
  %38 = load %struct.ttm_mem_zone*, %struct.ttm_mem_zone** %6, align 8
  %39 = getelementptr inbounds %struct.ttm_mem_zone, %struct.ttm_mem_zone* %38, i32 0, i32 1
  store i32 %37, i32* %39, align 8
  %40 = load i32, i32* %7, align 4
  %41 = ashr i32 %40, 1
  %42 = load %struct.ttm_mem_zone*, %struct.ttm_mem_zone** %6, align 8
  %43 = getelementptr inbounds %struct.ttm_mem_zone, %struct.ttm_mem_zone* %42, i32 0, i32 2
  store i32 %41, i32* %43, align 4
  %44 = load i32, i32* %7, align 4
  %45 = ashr i32 %44, 1
  %46 = load i32, i32* %7, align 4
  %47 = ashr i32 %46, 2
  %48 = add nsw i32 %45, %47
  %49 = load %struct.ttm_mem_zone*, %struct.ttm_mem_zone** %6, align 8
  %50 = getelementptr inbounds %struct.ttm_mem_zone, %struct.ttm_mem_zone* %49, i32 0, i32 3
  store i32 %48, i32* %50, align 8
  %51 = load %struct.ttm_mem_zone*, %struct.ttm_mem_zone** %6, align 8
  %52 = getelementptr inbounds %struct.ttm_mem_zone, %struct.ttm_mem_zone* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* %7, align 4
  %55 = ashr i32 %54, 3
  %56 = sub nsw i32 %53, %55
  %57 = load %struct.ttm_mem_zone*, %struct.ttm_mem_zone** %6, align 8
  %58 = getelementptr inbounds %struct.ttm_mem_zone, %struct.ttm_mem_zone* %57, i32 0, i32 4
  store i32 %56, i32* %58, align 4
  %59 = load %struct.ttm_mem_zone*, %struct.ttm_mem_zone** %6, align 8
  %60 = getelementptr inbounds %struct.ttm_mem_zone, %struct.ttm_mem_zone* %59, i32 0, i32 7
  store i64 0, i64* %60, align 8
  %61 = load %struct.ttm_mem_global*, %struct.ttm_mem_global** %4, align 8
  %62 = load %struct.ttm_mem_zone*, %struct.ttm_mem_zone** %6, align 8
  %63 = getelementptr inbounds %struct.ttm_mem_zone, %struct.ttm_mem_zone* %62, i32 0, i32 6
  store %struct.ttm_mem_global* %61, %struct.ttm_mem_global** %63, align 8
  %64 = load %struct.ttm_mem_zone*, %struct.ttm_mem_zone** %6, align 8
  %65 = load %struct.ttm_mem_global*, %struct.ttm_mem_global** %4, align 8
  %66 = getelementptr inbounds %struct.ttm_mem_global, %struct.ttm_mem_global* %65, i32 0, i32 3
  store %struct.ttm_mem_zone* %64, %struct.ttm_mem_zone** %66, align 8
  %67 = load %struct.ttm_mem_zone*, %struct.ttm_mem_zone** %6, align 8
  %68 = getelementptr inbounds %struct.ttm_mem_zone, %struct.ttm_mem_zone* %67, i32 0, i32 5
  %69 = load %struct.ttm_mem_global*, %struct.ttm_mem_global** %4, align 8
  %70 = getelementptr inbounds %struct.ttm_mem_global, %struct.ttm_mem_global* %69, i32 0, i32 2
  %71 = load %struct.ttm_mem_zone*, %struct.ttm_mem_zone** %6, align 8
  %72 = getelementptr inbounds %struct.ttm_mem_zone, %struct.ttm_mem_zone* %71, i32 0, i32 0
  %73 = load i8*, i8** %72, align 8
  %74 = call i32 @kobject_init_and_add(i32* %68, i32* @ttm_mem_zone_kobj_type, i32* %70, i8* %73)
  store i32 %74, i32* %8, align 4
  %75 = load i32, i32* %8, align 4
  %76 = icmp ne i32 %75, 0
  %77 = zext i1 %76 to i32
  %78 = call i64 @unlikely(i32 %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %85

80:                                               ; preds = %34
  %81 = load %struct.ttm_mem_zone*, %struct.ttm_mem_zone** %6, align 8
  %82 = getelementptr inbounds %struct.ttm_mem_zone, %struct.ttm_mem_zone* %81, i32 0, i32 5
  %83 = call i32 @kobject_put(i32* %82)
  %84 = load i32, i32* %8, align 4
  store i32 %84, i32* %3, align 4
  br label %96

85:                                               ; preds = %34
  %86 = load %struct.ttm_mem_zone*, %struct.ttm_mem_zone** %6, align 8
  %87 = load %struct.ttm_mem_global*, %struct.ttm_mem_global** %4, align 8
  %88 = getelementptr inbounds %struct.ttm_mem_global, %struct.ttm_mem_global* %87, i32 0, i32 1
  %89 = load %struct.ttm_mem_zone**, %struct.ttm_mem_zone*** %88, align 8
  %90 = load %struct.ttm_mem_global*, %struct.ttm_mem_global** %4, align 8
  %91 = getelementptr inbounds %struct.ttm_mem_global, %struct.ttm_mem_global* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* %91, align 8
  %94 = sext i32 %92 to i64
  %95 = getelementptr inbounds %struct.ttm_mem_zone*, %struct.ttm_mem_zone** %89, i64 %94
  store %struct.ttm_mem_zone* %86, %struct.ttm_mem_zone** %95, align 8
  store i32 0, i32* %3, align 4
  br label %96

96:                                               ; preds = %85, %80, %31, %17
  %97 = load i32, i32* %3, align 4
  ret i32 %97
}

declare dso_local %struct.ttm_mem_zone* @kzalloc(i32, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @kfree(%struct.ttm_mem_zone*) #1

declare dso_local i32 @kobject_init_and_add(i32*, i32*, i32*, i8*) #1

declare dso_local i32 @kobject_put(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
