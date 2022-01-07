; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/agp/extr_intel-gtt.c_intel_fake_agp_insert_entries.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/agp/extr_intel-gtt.c_intel_fake_agp_insert_entries.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32, i64, i64, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 (i32)* }
%struct.agp_memory = type { i64, i32, i32, i32, i32, i32 }
%struct.sg_table = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@intel_private = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@PAGE_SIZE = common dso_local global i32 0, align 4
@INTEL_GTT_GEN = common dso_local global i32 0, align 4
@AGP_DCACHE_MEMORY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.agp_memory*, i64, i32)* @intel_fake_agp_insert_entries to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @intel_fake_agp_insert_entries(%struct.agp_memory* %0, i64 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.agp_memory*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.sg_table, align 4
  store %struct.agp_memory* %0, %struct.agp_memory** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  %12 = load i32, i32* @EINVAL, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %8, align 4
  %14 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @intel_private, i32 0, i32 0), align 8
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %26

16:                                               ; preds = %3
  %17 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @intel_private, i32 0, i32 1), align 4
  %18 = load i32, i32* @PAGE_SIZE, align 4
  %19 = sdiv i32 %17, %18
  store i32 %19, i32* %9, align 4
  %20 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @intel_private, i32 0, i32 2), align 8
  store i32 %20, i32* %10, align 4
  %21 = load i32, i32* %9, align 4
  %22 = load i32, i32* %10, align 4
  %23 = load i32, i32* %9, align 4
  %24 = sub nsw i32 %22, %23
  %25 = call i32 @intel_gtt_clear_range(i32 %21, i32 %24)
  store i32 0, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @intel_private, i32 0, i32 0), align 8
  br label %26

26:                                               ; preds = %16, %3
  %27 = load i32, i32* @INTEL_GTT_GEN, align 4
  %28 = icmp eq i32 %27, 1
  br i1 %28, label %29, label %38

29:                                               ; preds = %26
  %30 = load i32, i32* %7, align 4
  %31 = load i32, i32* @AGP_DCACHE_MEMORY, align 4
  %32 = icmp eq i32 %30, %31
  br i1 %32, label %33, label %38

33:                                               ; preds = %29
  %34 = load %struct.agp_memory*, %struct.agp_memory** %5, align 8
  %35 = load i64, i64* %6, align 8
  %36 = load i32, i32* %7, align 4
  %37 = call i32 @i810_insert_dcache_entries(%struct.agp_memory* %34, i64 %35, i32 %36)
  store i32 %37, i32* %4, align 4
  br label %118

38:                                               ; preds = %29, %26
  %39 = load %struct.agp_memory*, %struct.agp_memory** %5, align 8
  %40 = getelementptr inbounds %struct.agp_memory, %struct.agp_memory* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = icmp eq i64 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %38
  br label %113

44:                                               ; preds = %38
  %45 = load i64, i64* %6, align 8
  %46 = load %struct.agp_memory*, %struct.agp_memory** %5, align 8
  %47 = getelementptr inbounds %struct.agp_memory, %struct.agp_memory* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = add nsw i64 %45, %48
  %50 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @intel_private, i32 0, i32 3), align 8
  %51 = icmp sgt i64 %49, %50
  br i1 %51, label %52, label %53

52:                                               ; preds = %44
  br label %114

53:                                               ; preds = %44
  %54 = load i32, i32* %7, align 4
  %55 = load %struct.agp_memory*, %struct.agp_memory** %5, align 8
  %56 = getelementptr inbounds %struct.agp_memory, %struct.agp_memory* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 8
  %58 = icmp ne i32 %54, %57
  br i1 %58, label %59, label %60

59:                                               ; preds = %53
  br label %114

60:                                               ; preds = %53
  %61 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @intel_private, i32 0, i32 5), align 8
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i32 0, i32 0
  %63 = load i32 (i32)*, i32 (i32)** %62, align 8
  %64 = load i32, i32* %7, align 4
  %65 = call i32 %63(i32 %64)
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %68, label %67

67:                                               ; preds = %60
  br label %114

68:                                               ; preds = %60
  %69 = load %struct.agp_memory*, %struct.agp_memory** %5, align 8
  %70 = getelementptr inbounds %struct.agp_memory, %struct.agp_memory* %69, i32 0, i32 2
  %71 = load i32, i32* %70, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %75, label %73

73:                                               ; preds = %68
  %74 = call i32 (...) @global_cache_flush()
  br label %75

75:                                               ; preds = %73, %68
  %76 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @intel_private, i32 0, i32 4), align 8
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %102

78:                                               ; preds = %75
  %79 = load %struct.agp_memory*, %struct.agp_memory** %5, align 8
  %80 = getelementptr inbounds %struct.agp_memory, %struct.agp_memory* %79, i32 0, i32 3
  %81 = load i32, i32* %80, align 8
  %82 = load %struct.agp_memory*, %struct.agp_memory** %5, align 8
  %83 = getelementptr inbounds %struct.agp_memory, %struct.agp_memory* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = call i32 @intel_gtt_map_memory(i32 %81, i64 %84, %struct.sg_table* %11)
  store i32 %85, i32* %8, align 4
  %86 = load i32, i32* %8, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %90

88:                                               ; preds = %78
  %89 = load i32, i32* %8, align 4
  store i32 %89, i32* %4, align 4
  br label %118

90:                                               ; preds = %78
  %91 = load i64, i64* %6, align 8
  %92 = load i32, i32* %7, align 4
  %93 = call i32 @intel_gtt_insert_sg_entries(%struct.sg_table* %11, i64 %91, i32 %92)
  %94 = getelementptr inbounds %struct.sg_table, %struct.sg_table* %11, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  %96 = load %struct.agp_memory*, %struct.agp_memory** %5, align 8
  %97 = getelementptr inbounds %struct.agp_memory, %struct.agp_memory* %96, i32 0, i32 5
  store i32 %95, i32* %97, align 8
  %98 = getelementptr inbounds %struct.sg_table, %struct.sg_table* %11, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = load %struct.agp_memory*, %struct.agp_memory** %5, align 8
  %101 = getelementptr inbounds %struct.agp_memory, %struct.agp_memory* %100, i32 0, i32 4
  store i32 %99, i32* %101, align 4
  br label %112

102:                                              ; preds = %75
  %103 = load i64, i64* %6, align 8
  %104 = load %struct.agp_memory*, %struct.agp_memory** %5, align 8
  %105 = getelementptr inbounds %struct.agp_memory, %struct.agp_memory* %104, i32 0, i32 0
  %106 = load i64, i64* %105, align 8
  %107 = load %struct.agp_memory*, %struct.agp_memory** %5, align 8
  %108 = getelementptr inbounds %struct.agp_memory, %struct.agp_memory* %107, i32 0, i32 3
  %109 = load i32, i32* %108, align 8
  %110 = load i32, i32* %7, align 4
  %111 = call i32 @intel_gtt_insert_pages(i64 %103, i64 %106, i32 %109, i32 %110)
  br label %112

112:                                              ; preds = %102, %90
  br label %113

113:                                              ; preds = %112, %43
  store i32 0, i32* %8, align 4
  br label %114

114:                                              ; preds = %113, %67, %59, %52
  %115 = load %struct.agp_memory*, %struct.agp_memory** %5, align 8
  %116 = getelementptr inbounds %struct.agp_memory, %struct.agp_memory* %115, i32 0, i32 2
  store i32 1, i32* %116, align 4
  %117 = load i32, i32* %8, align 4
  store i32 %117, i32* %4, align 4
  br label %118

118:                                              ; preds = %114, %88, %33
  %119 = load i32, i32* %4, align 4
  ret i32 %119
}

declare dso_local i32 @intel_gtt_clear_range(i32, i32) #1

declare dso_local i32 @i810_insert_dcache_entries(%struct.agp_memory*, i64, i32) #1

declare dso_local i32 @global_cache_flush(...) #1

declare dso_local i32 @intel_gtt_map_memory(i32, i64, %struct.sg_table*) #1

declare dso_local i32 @intel_gtt_insert_sg_entries(%struct.sg_table*, i64, i32) #1

declare dso_local i32 @intel_gtt_insert_pages(i64, i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
