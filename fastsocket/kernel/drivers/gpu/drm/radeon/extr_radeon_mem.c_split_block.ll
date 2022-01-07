; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_radeon_mem.c_split_block.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_radeon_mem.c_split_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mem_block = type { i32, i32, %struct.drm_file*, %struct.mem_block*, %struct.mem_block* }
%struct.drm_file = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.mem_block* (%struct.mem_block*, i32, i32, %struct.drm_file*)* @split_block to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.mem_block* @split_block(%struct.mem_block* %0, i32 %1, i32 %2, %struct.drm_file* %3) #0 {
  %5 = alloca %struct.mem_block*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.drm_file*, align 8
  %9 = alloca %struct.mem_block*, align 8
  %10 = alloca %struct.mem_block*, align 8
  store %struct.mem_block* %0, %struct.mem_block** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store %struct.drm_file* %3, %struct.drm_file** %8, align 8
  %11 = load i32, i32* %6, align 4
  %12 = load %struct.mem_block*, %struct.mem_block** %5, align 8
  %13 = getelementptr inbounds %struct.mem_block, %struct.mem_block* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = icmp sgt i32 %11, %14
  br i1 %15, label %16, label %63

16:                                               ; preds = %4
  %17 = load i32, i32* @GFP_KERNEL, align 4
  %18 = call %struct.mem_block* @kmalloc(i32 32, i32 %17)
  store %struct.mem_block* %18, %struct.mem_block** %9, align 8
  %19 = load %struct.mem_block*, %struct.mem_block** %9, align 8
  %20 = icmp ne %struct.mem_block* %19, null
  br i1 %20, label %22, label %21

21:                                               ; preds = %16
  br label %110

22:                                               ; preds = %16
  %23 = load i32, i32* %6, align 4
  %24 = load %struct.mem_block*, %struct.mem_block** %9, align 8
  %25 = getelementptr inbounds %struct.mem_block, %struct.mem_block* %24, i32 0, i32 0
  store i32 %23, i32* %25, align 8
  %26 = load %struct.mem_block*, %struct.mem_block** %5, align 8
  %27 = getelementptr inbounds %struct.mem_block, %struct.mem_block* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* %6, align 4
  %30 = load %struct.mem_block*, %struct.mem_block** %5, align 8
  %31 = getelementptr inbounds %struct.mem_block, %struct.mem_block* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = sub nsw i32 %29, %32
  %34 = sub nsw i32 %28, %33
  %35 = load %struct.mem_block*, %struct.mem_block** %9, align 8
  %36 = getelementptr inbounds %struct.mem_block, %struct.mem_block* %35, i32 0, i32 1
  store i32 %34, i32* %36, align 4
  %37 = load %struct.mem_block*, %struct.mem_block** %9, align 8
  %38 = getelementptr inbounds %struct.mem_block, %struct.mem_block* %37, i32 0, i32 2
  store %struct.drm_file* null, %struct.drm_file** %38, align 8
  %39 = load %struct.mem_block*, %struct.mem_block** %5, align 8
  %40 = getelementptr inbounds %struct.mem_block, %struct.mem_block* %39, i32 0, i32 3
  %41 = load %struct.mem_block*, %struct.mem_block** %40, align 8
  %42 = load %struct.mem_block*, %struct.mem_block** %9, align 8
  %43 = getelementptr inbounds %struct.mem_block, %struct.mem_block* %42, i32 0, i32 3
  store %struct.mem_block* %41, %struct.mem_block** %43, align 8
  %44 = load %struct.mem_block*, %struct.mem_block** %5, align 8
  %45 = load %struct.mem_block*, %struct.mem_block** %9, align 8
  %46 = getelementptr inbounds %struct.mem_block, %struct.mem_block* %45, i32 0, i32 4
  store %struct.mem_block* %44, %struct.mem_block** %46, align 8
  %47 = load %struct.mem_block*, %struct.mem_block** %9, align 8
  %48 = load %struct.mem_block*, %struct.mem_block** %5, align 8
  %49 = getelementptr inbounds %struct.mem_block, %struct.mem_block* %48, i32 0, i32 3
  %50 = load %struct.mem_block*, %struct.mem_block** %49, align 8
  %51 = getelementptr inbounds %struct.mem_block, %struct.mem_block* %50, i32 0, i32 4
  store %struct.mem_block* %47, %struct.mem_block** %51, align 8
  %52 = load %struct.mem_block*, %struct.mem_block** %9, align 8
  %53 = load %struct.mem_block*, %struct.mem_block** %5, align 8
  %54 = getelementptr inbounds %struct.mem_block, %struct.mem_block* %53, i32 0, i32 3
  store %struct.mem_block* %52, %struct.mem_block** %54, align 8
  %55 = load %struct.mem_block*, %struct.mem_block** %9, align 8
  %56 = getelementptr inbounds %struct.mem_block, %struct.mem_block* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.mem_block*, %struct.mem_block** %5, align 8
  %59 = getelementptr inbounds %struct.mem_block, %struct.mem_block* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = sub nsw i32 %60, %57
  store i32 %61, i32* %59, align 4
  %62 = load %struct.mem_block*, %struct.mem_block** %9, align 8
  store %struct.mem_block* %62, %struct.mem_block** %5, align 8
  br label %63

63:                                               ; preds = %22, %4
  %64 = load i32, i32* %7, align 4
  %65 = load %struct.mem_block*, %struct.mem_block** %5, align 8
  %66 = getelementptr inbounds %struct.mem_block, %struct.mem_block* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = icmp slt i32 %64, %67
  br i1 %68, label %69, label %109

69:                                               ; preds = %63
  %70 = load i32, i32* @GFP_KERNEL, align 4
  %71 = call %struct.mem_block* @kmalloc(i32 32, i32 %70)
  store %struct.mem_block* %71, %struct.mem_block** %10, align 8
  %72 = load %struct.mem_block*, %struct.mem_block** %10, align 8
  %73 = icmp ne %struct.mem_block* %72, null
  br i1 %73, label %75, label %74

74:                                               ; preds = %69
  br label %110

75:                                               ; preds = %69
  %76 = load i32, i32* %6, align 4
  %77 = load i32, i32* %7, align 4
  %78 = add nsw i32 %76, %77
  %79 = load %struct.mem_block*, %struct.mem_block** %10, align 8
  %80 = getelementptr inbounds %struct.mem_block, %struct.mem_block* %79, i32 0, i32 0
  store i32 %78, i32* %80, align 8
  %81 = load %struct.mem_block*, %struct.mem_block** %5, align 8
  %82 = getelementptr inbounds %struct.mem_block, %struct.mem_block* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = load i32, i32* %7, align 4
  %85 = sub nsw i32 %83, %84
  %86 = load %struct.mem_block*, %struct.mem_block** %10, align 8
  %87 = getelementptr inbounds %struct.mem_block, %struct.mem_block* %86, i32 0, i32 1
  store i32 %85, i32* %87, align 4
  %88 = load %struct.mem_block*, %struct.mem_block** %10, align 8
  %89 = getelementptr inbounds %struct.mem_block, %struct.mem_block* %88, i32 0, i32 2
  store %struct.drm_file* null, %struct.drm_file** %89, align 8
  %90 = load %struct.mem_block*, %struct.mem_block** %5, align 8
  %91 = getelementptr inbounds %struct.mem_block, %struct.mem_block* %90, i32 0, i32 3
  %92 = load %struct.mem_block*, %struct.mem_block** %91, align 8
  %93 = load %struct.mem_block*, %struct.mem_block** %10, align 8
  %94 = getelementptr inbounds %struct.mem_block, %struct.mem_block* %93, i32 0, i32 3
  store %struct.mem_block* %92, %struct.mem_block** %94, align 8
  %95 = load %struct.mem_block*, %struct.mem_block** %5, align 8
  %96 = load %struct.mem_block*, %struct.mem_block** %10, align 8
  %97 = getelementptr inbounds %struct.mem_block, %struct.mem_block* %96, i32 0, i32 4
  store %struct.mem_block* %95, %struct.mem_block** %97, align 8
  %98 = load %struct.mem_block*, %struct.mem_block** %10, align 8
  %99 = load %struct.mem_block*, %struct.mem_block** %5, align 8
  %100 = getelementptr inbounds %struct.mem_block, %struct.mem_block* %99, i32 0, i32 3
  %101 = load %struct.mem_block*, %struct.mem_block** %100, align 8
  %102 = getelementptr inbounds %struct.mem_block, %struct.mem_block* %101, i32 0, i32 4
  store %struct.mem_block* %98, %struct.mem_block** %102, align 8
  %103 = load %struct.mem_block*, %struct.mem_block** %10, align 8
  %104 = load %struct.mem_block*, %struct.mem_block** %5, align 8
  %105 = getelementptr inbounds %struct.mem_block, %struct.mem_block* %104, i32 0, i32 3
  store %struct.mem_block* %103, %struct.mem_block** %105, align 8
  %106 = load i32, i32* %7, align 4
  %107 = load %struct.mem_block*, %struct.mem_block** %5, align 8
  %108 = getelementptr inbounds %struct.mem_block, %struct.mem_block* %107, i32 0, i32 1
  store i32 %106, i32* %108, align 4
  br label %109

109:                                              ; preds = %75, %63
  br label %110

110:                                              ; preds = %109, %74, %21
  %111 = load %struct.drm_file*, %struct.drm_file** %8, align 8
  %112 = load %struct.mem_block*, %struct.mem_block** %5, align 8
  %113 = getelementptr inbounds %struct.mem_block, %struct.mem_block* %112, i32 0, i32 2
  store %struct.drm_file* %111, %struct.drm_file** %113, align 8
  %114 = load %struct.mem_block*, %struct.mem_block** %5, align 8
  ret %struct.mem_block* %114
}

declare dso_local %struct.mem_block* @kmalloc(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
