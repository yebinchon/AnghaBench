; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/platforms/cell/spufs/extr_context.c_spu_unmap_mappings.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/platforms/cell/spufs/extr_context.c_spu_unmap_mappings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spu_context = type { i32, i64, i64, i64, i64, i64, i64, i64 }

@LS_SIZE = common dso_local global i32 0, align 4
@SPUFS_MFC_MAP_SIZE = common dso_local global i32 0, align 4
@SPUFS_CNTL_MAP_SIZE = common dso_local global i32 0, align 4
@SPUFS_SIGNAL_MAP_SIZE = common dso_local global i32 0, align 4
@SPUFS_MSS_MAP_SIZE = common dso_local global i32 0, align 4
@SPUFS_PS_MAP_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @spu_unmap_mappings(%struct.spu_context* %0) #0 {
  %2 = alloca %struct.spu_context*, align 8
  store %struct.spu_context* %0, %struct.spu_context** %2, align 8
  %3 = load %struct.spu_context*, %struct.spu_context** %2, align 8
  %4 = getelementptr inbounds %struct.spu_context, %struct.spu_context* %3, i32 0, i32 0
  %5 = call i32 @mutex_lock(i32* %4)
  %6 = load %struct.spu_context*, %struct.spu_context** %2, align 8
  %7 = getelementptr inbounds %struct.spu_context, %struct.spu_context* %6, i32 0, i32 7
  %8 = load i64, i64* %7, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %16

10:                                               ; preds = %1
  %11 = load %struct.spu_context*, %struct.spu_context** %2, align 8
  %12 = getelementptr inbounds %struct.spu_context, %struct.spu_context* %11, i32 0, i32 7
  %13 = load i64, i64* %12, align 8
  %14 = load i32, i32* @LS_SIZE, align 4
  %15 = call i32 @unmap_mapping_range(i64 %13, i32 0, i32 %14, i32 1)
  br label %16

16:                                               ; preds = %10, %1
  %17 = load %struct.spu_context*, %struct.spu_context** %2, align 8
  %18 = getelementptr inbounds %struct.spu_context, %struct.spu_context* %17, i32 0, i32 6
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %27

21:                                               ; preds = %16
  %22 = load %struct.spu_context*, %struct.spu_context** %2, align 8
  %23 = getelementptr inbounds %struct.spu_context, %struct.spu_context* %22, i32 0, i32 6
  %24 = load i64, i64* %23, align 8
  %25 = load i32, i32* @SPUFS_MFC_MAP_SIZE, align 4
  %26 = call i32 @unmap_mapping_range(i64 %24, i32 0, i32 %25, i32 1)
  br label %27

27:                                               ; preds = %21, %16
  %28 = load %struct.spu_context*, %struct.spu_context** %2, align 8
  %29 = getelementptr inbounds %struct.spu_context, %struct.spu_context* %28, i32 0, i32 5
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %38

32:                                               ; preds = %27
  %33 = load %struct.spu_context*, %struct.spu_context** %2, align 8
  %34 = getelementptr inbounds %struct.spu_context, %struct.spu_context* %33, i32 0, i32 5
  %35 = load i64, i64* %34, align 8
  %36 = load i32, i32* @SPUFS_CNTL_MAP_SIZE, align 4
  %37 = call i32 @unmap_mapping_range(i64 %35, i32 0, i32 %36, i32 1)
  br label %38

38:                                               ; preds = %32, %27
  %39 = load %struct.spu_context*, %struct.spu_context** %2, align 8
  %40 = getelementptr inbounds %struct.spu_context, %struct.spu_context* %39, i32 0, i32 4
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %49

43:                                               ; preds = %38
  %44 = load %struct.spu_context*, %struct.spu_context** %2, align 8
  %45 = getelementptr inbounds %struct.spu_context, %struct.spu_context* %44, i32 0, i32 4
  %46 = load i64, i64* %45, align 8
  %47 = load i32, i32* @SPUFS_SIGNAL_MAP_SIZE, align 4
  %48 = call i32 @unmap_mapping_range(i64 %46, i32 0, i32 %47, i32 1)
  br label %49

49:                                               ; preds = %43, %38
  %50 = load %struct.spu_context*, %struct.spu_context** %2, align 8
  %51 = getelementptr inbounds %struct.spu_context, %struct.spu_context* %50, i32 0, i32 3
  %52 = load i64, i64* %51, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %60

54:                                               ; preds = %49
  %55 = load %struct.spu_context*, %struct.spu_context** %2, align 8
  %56 = getelementptr inbounds %struct.spu_context, %struct.spu_context* %55, i32 0, i32 3
  %57 = load i64, i64* %56, align 8
  %58 = load i32, i32* @SPUFS_SIGNAL_MAP_SIZE, align 4
  %59 = call i32 @unmap_mapping_range(i64 %57, i32 0, i32 %58, i32 1)
  br label %60

60:                                               ; preds = %54, %49
  %61 = load %struct.spu_context*, %struct.spu_context** %2, align 8
  %62 = getelementptr inbounds %struct.spu_context, %struct.spu_context* %61, i32 0, i32 2
  %63 = load i64, i64* %62, align 8
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %71

65:                                               ; preds = %60
  %66 = load %struct.spu_context*, %struct.spu_context** %2, align 8
  %67 = getelementptr inbounds %struct.spu_context, %struct.spu_context* %66, i32 0, i32 2
  %68 = load i64, i64* %67, align 8
  %69 = load i32, i32* @SPUFS_MSS_MAP_SIZE, align 4
  %70 = call i32 @unmap_mapping_range(i64 %68, i32 0, i32 %69, i32 1)
  br label %71

71:                                               ; preds = %65, %60
  %72 = load %struct.spu_context*, %struct.spu_context** %2, align 8
  %73 = getelementptr inbounds %struct.spu_context, %struct.spu_context* %72, i32 0, i32 1
  %74 = load i64, i64* %73, align 8
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %82

76:                                               ; preds = %71
  %77 = load %struct.spu_context*, %struct.spu_context** %2, align 8
  %78 = getelementptr inbounds %struct.spu_context, %struct.spu_context* %77, i32 0, i32 1
  %79 = load i64, i64* %78, align 8
  %80 = load i32, i32* @SPUFS_PS_MAP_SIZE, align 4
  %81 = call i32 @unmap_mapping_range(i64 %79, i32 0, i32 %80, i32 1)
  br label %82

82:                                               ; preds = %76, %71
  %83 = load %struct.spu_context*, %struct.spu_context** %2, align 8
  %84 = getelementptr inbounds %struct.spu_context, %struct.spu_context* %83, i32 0, i32 0
  %85 = call i32 @mutex_unlock(i32* %84)
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @unmap_mapping_range(i64, i32, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
