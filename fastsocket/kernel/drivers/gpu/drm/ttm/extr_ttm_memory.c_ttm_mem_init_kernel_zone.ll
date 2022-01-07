; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/ttm/extr_ttm_memory.c_ttm_mem_init_kernel_zone.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/ttm/extr_ttm_memory.c_ttm_mem_init_kernel_zone.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ttm_mem_global = type { i32, %struct.ttm_mem_zone**, i32, %struct.ttm_mem_zone* }
%struct.ttm_mem_zone = type { i8*, i32, i32, i32, i32, i32, %struct.ttm_mem_global*, i64 }
%struct.sysinfo = type { i32, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"kernel\00", align 1
@ttm_mem_zone_kobj_type = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ttm_mem_global*, %struct.sysinfo*)* @ttm_mem_init_kernel_zone to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ttm_mem_init_kernel_zone(%struct.ttm_mem_global* %0, %struct.sysinfo* %1) #0 {
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
  br label %94

20:                                               ; preds = %2
  %21 = load %struct.sysinfo*, %struct.sysinfo** %5, align 8
  %22 = getelementptr inbounds %struct.sysinfo, %struct.sysinfo* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.sysinfo*, %struct.sysinfo** %5, align 8
  %25 = getelementptr inbounds %struct.sysinfo, %struct.sysinfo* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = sub nsw i32 %23, %26
  store i32 %27, i32* %7, align 4
  %28 = load %struct.sysinfo*, %struct.sysinfo** %5, align 8
  %29 = getelementptr inbounds %struct.sysinfo, %struct.sysinfo* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* %7, align 4
  %32 = mul nsw i32 %31, %30
  store i32 %32, i32* %7, align 4
  %33 = load %struct.ttm_mem_zone*, %struct.ttm_mem_zone** %6, align 8
  %34 = getelementptr inbounds %struct.ttm_mem_zone, %struct.ttm_mem_zone* %33, i32 0, i32 0
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8** %34, align 8
  %35 = load i32, i32* %7, align 4
  %36 = load %struct.ttm_mem_zone*, %struct.ttm_mem_zone** %6, align 8
  %37 = getelementptr inbounds %struct.ttm_mem_zone, %struct.ttm_mem_zone* %36, i32 0, i32 1
  store i32 %35, i32* %37, align 8
  %38 = load i32, i32* %7, align 4
  %39 = ashr i32 %38, 1
  %40 = load %struct.ttm_mem_zone*, %struct.ttm_mem_zone** %6, align 8
  %41 = getelementptr inbounds %struct.ttm_mem_zone, %struct.ttm_mem_zone* %40, i32 0, i32 2
  store i32 %39, i32* %41, align 4
  %42 = load i32, i32* %7, align 4
  %43 = ashr i32 %42, 1
  %44 = load i32, i32* %7, align 4
  %45 = ashr i32 %44, 2
  %46 = add nsw i32 %43, %45
  %47 = load %struct.ttm_mem_zone*, %struct.ttm_mem_zone** %6, align 8
  %48 = getelementptr inbounds %struct.ttm_mem_zone, %struct.ttm_mem_zone* %47, i32 0, i32 3
  store i32 %46, i32* %48, align 8
  %49 = load %struct.ttm_mem_zone*, %struct.ttm_mem_zone** %6, align 8
  %50 = getelementptr inbounds %struct.ttm_mem_zone, %struct.ttm_mem_zone* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* %7, align 4
  %53 = ashr i32 %52, 3
  %54 = sub nsw i32 %51, %53
  %55 = load %struct.ttm_mem_zone*, %struct.ttm_mem_zone** %6, align 8
  %56 = getelementptr inbounds %struct.ttm_mem_zone, %struct.ttm_mem_zone* %55, i32 0, i32 4
  store i32 %54, i32* %56, align 4
  %57 = load %struct.ttm_mem_zone*, %struct.ttm_mem_zone** %6, align 8
  %58 = getelementptr inbounds %struct.ttm_mem_zone, %struct.ttm_mem_zone* %57, i32 0, i32 7
  store i64 0, i64* %58, align 8
  %59 = load %struct.ttm_mem_global*, %struct.ttm_mem_global** %4, align 8
  %60 = load %struct.ttm_mem_zone*, %struct.ttm_mem_zone** %6, align 8
  %61 = getelementptr inbounds %struct.ttm_mem_zone, %struct.ttm_mem_zone* %60, i32 0, i32 6
  store %struct.ttm_mem_global* %59, %struct.ttm_mem_global** %61, align 8
  %62 = load %struct.ttm_mem_zone*, %struct.ttm_mem_zone** %6, align 8
  %63 = load %struct.ttm_mem_global*, %struct.ttm_mem_global** %4, align 8
  %64 = getelementptr inbounds %struct.ttm_mem_global, %struct.ttm_mem_global* %63, i32 0, i32 3
  store %struct.ttm_mem_zone* %62, %struct.ttm_mem_zone** %64, align 8
  %65 = load %struct.ttm_mem_zone*, %struct.ttm_mem_zone** %6, align 8
  %66 = getelementptr inbounds %struct.ttm_mem_zone, %struct.ttm_mem_zone* %65, i32 0, i32 5
  %67 = load %struct.ttm_mem_global*, %struct.ttm_mem_global** %4, align 8
  %68 = getelementptr inbounds %struct.ttm_mem_global, %struct.ttm_mem_global* %67, i32 0, i32 2
  %69 = load %struct.ttm_mem_zone*, %struct.ttm_mem_zone** %6, align 8
  %70 = getelementptr inbounds %struct.ttm_mem_zone, %struct.ttm_mem_zone* %69, i32 0, i32 0
  %71 = load i8*, i8** %70, align 8
  %72 = call i32 @kobject_init_and_add(i32* %66, i32* @ttm_mem_zone_kobj_type, i32* %68, i8* %71)
  store i32 %72, i32* %8, align 4
  %73 = load i32, i32* %8, align 4
  %74 = icmp ne i32 %73, 0
  %75 = zext i1 %74 to i32
  %76 = call i64 @unlikely(i32 %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %83

78:                                               ; preds = %20
  %79 = load %struct.ttm_mem_zone*, %struct.ttm_mem_zone** %6, align 8
  %80 = getelementptr inbounds %struct.ttm_mem_zone, %struct.ttm_mem_zone* %79, i32 0, i32 5
  %81 = call i32 @kobject_put(i32* %80)
  %82 = load i32, i32* %8, align 4
  store i32 %82, i32* %3, align 4
  br label %94

83:                                               ; preds = %20
  %84 = load %struct.ttm_mem_zone*, %struct.ttm_mem_zone** %6, align 8
  %85 = load %struct.ttm_mem_global*, %struct.ttm_mem_global** %4, align 8
  %86 = getelementptr inbounds %struct.ttm_mem_global, %struct.ttm_mem_global* %85, i32 0, i32 1
  %87 = load %struct.ttm_mem_zone**, %struct.ttm_mem_zone*** %86, align 8
  %88 = load %struct.ttm_mem_global*, %struct.ttm_mem_global** %4, align 8
  %89 = getelementptr inbounds %struct.ttm_mem_global, %struct.ttm_mem_global* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* %89, align 8
  %92 = sext i32 %90 to i64
  %93 = getelementptr inbounds %struct.ttm_mem_zone*, %struct.ttm_mem_zone** %87, i64 %92
  store %struct.ttm_mem_zone* %84, %struct.ttm_mem_zone** %93, align 8
  store i32 0, i32* %3, align 4
  br label %94

94:                                               ; preds = %83, %78, %17
  %95 = load i32, i32* %3, align 4
  ret i32 %95
}

declare dso_local %struct.ttm_mem_zone* @kzalloc(i32, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @kobject_init_and_add(i32*, i32*, i32*, i8*) #1

declare dso_local i32 @kobject_put(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
