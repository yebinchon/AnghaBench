; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/dma/ioat/extr_dma_v2.c_ioat2_alloc_ring.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/dma/ioat/extr_dma_v2.c_ioat2_alloc_ring.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ioat_ring_ent = type { %struct.TYPE_2__, %struct.ioat_dma_descriptor* }
%struct.TYPE_2__ = type { i32 }
%struct.ioat_dma_descriptor = type { i32 }
%struct.dma_chan = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.ioat_ring_ent** (%struct.dma_chan*, i32, i32)* @ioat2_alloc_ring to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.ioat_ring_ent** @ioat2_alloc_ring(%struct.dma_chan* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.ioat_ring_ent**, align 8
  %5 = alloca %struct.dma_chan*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.ioat_ring_ent**, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.ioat_ring_ent*, align 8
  %12 = alloca %struct.ioat_dma_descriptor*, align 8
  store %struct.dma_chan* %0, %struct.dma_chan** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %13 = load i32, i32* %6, align 4
  %14 = shl i32 1, %13
  store i32 %14, i32* %9, align 4
  %15 = load i32, i32* %6, align 4
  %16 = call i32 (...) @ioat_get_max_alloc_order()
  %17 = icmp sgt i32 %15, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %3
  store %struct.ioat_ring_ent** null, %struct.ioat_ring_ent*** %4, align 8
  br label %117

19:                                               ; preds = %3
  %20 = load i32, i32* %9, align 4
  %21 = load i32, i32* %7, align 4
  %22 = call %struct.ioat_ring_ent** @kcalloc(i32 %20, i32 8, i32 %21)
  store %struct.ioat_ring_ent** %22, %struct.ioat_ring_ent*** %8, align 8
  %23 = load %struct.ioat_ring_ent**, %struct.ioat_ring_ent*** %8, align 8
  %24 = icmp ne %struct.ioat_ring_ent** %23, null
  br i1 %24, label %26, label %25

25:                                               ; preds = %19
  store %struct.ioat_ring_ent** null, %struct.ioat_ring_ent*** %4, align 8
  br label %117

26:                                               ; preds = %19
  store i32 0, i32* %10, align 4
  br label %27

27:                                               ; preds = %69, %26
  %28 = load i32, i32* %10, align 4
  %29 = load i32, i32* %9, align 4
  %30 = icmp slt i32 %28, %29
  br i1 %30, label %31, label %72

31:                                               ; preds = %27
  %32 = load %struct.dma_chan*, %struct.dma_chan** %5, align 8
  %33 = load i32, i32* %7, align 4
  %34 = call %struct.ioat_ring_ent* @ioat2_alloc_ring_ent(%struct.dma_chan* %32, i32 %33)
  %35 = load %struct.ioat_ring_ent**, %struct.ioat_ring_ent*** %8, align 8
  %36 = load i32, i32* %10, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.ioat_ring_ent*, %struct.ioat_ring_ent** %35, i64 %37
  store %struct.ioat_ring_ent* %34, %struct.ioat_ring_ent** %38, align 8
  %39 = load %struct.ioat_ring_ent**, %struct.ioat_ring_ent*** %8, align 8
  %40 = load i32, i32* %10, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.ioat_ring_ent*, %struct.ioat_ring_ent** %39, i64 %41
  %43 = load %struct.ioat_ring_ent*, %struct.ioat_ring_ent** %42, align 8
  %44 = icmp ne %struct.ioat_ring_ent* %43, null
  br i1 %44, label %61, label %45

45:                                               ; preds = %31
  br label %46

46:                                               ; preds = %50, %45
  %47 = load i32, i32* %10, align 4
  %48 = add nsw i32 %47, -1
  store i32 %48, i32* %10, align 4
  %49 = icmp ne i32 %47, 0
  br i1 %49, label %50, label %58

50:                                               ; preds = %46
  %51 = load %struct.ioat_ring_ent**, %struct.ioat_ring_ent*** %8, align 8
  %52 = load i32, i32* %10, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds %struct.ioat_ring_ent*, %struct.ioat_ring_ent** %51, i64 %53
  %55 = load %struct.ioat_ring_ent*, %struct.ioat_ring_ent** %54, align 8
  %56 = load %struct.dma_chan*, %struct.dma_chan** %5, align 8
  %57 = call i32 @ioat2_free_ring_ent(%struct.ioat_ring_ent* %55, %struct.dma_chan* %56)
  br label %46

58:                                               ; preds = %46
  %59 = load %struct.ioat_ring_ent**, %struct.ioat_ring_ent*** %8, align 8
  %60 = call i32 @kfree(%struct.ioat_ring_ent** %59)
  store %struct.ioat_ring_ent** null, %struct.ioat_ring_ent*** %4, align 8
  br label %117

61:                                               ; preds = %31
  %62 = load %struct.ioat_ring_ent**, %struct.ioat_ring_ent*** %8, align 8
  %63 = load i32, i32* %10, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds %struct.ioat_ring_ent*, %struct.ioat_ring_ent** %62, i64 %64
  %66 = load %struct.ioat_ring_ent*, %struct.ioat_ring_ent** %65, align 8
  %67 = load i32, i32* %10, align 4
  %68 = call i32 @set_desc_id(%struct.ioat_ring_ent* %66, i32 %67)
  br label %69

69:                                               ; preds = %61
  %70 = load i32, i32* %10, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %10, align 4
  br label %27

72:                                               ; preds = %27
  store i32 0, i32* %10, align 4
  br label %73

73:                                               ; preds = %98, %72
  %74 = load i32, i32* %10, align 4
  %75 = load i32, i32* %9, align 4
  %76 = sub nsw i32 %75, 1
  %77 = icmp slt i32 %74, %76
  br i1 %77, label %78, label %101

78:                                               ; preds = %73
  %79 = load %struct.ioat_ring_ent**, %struct.ioat_ring_ent*** %8, align 8
  %80 = load i32, i32* %10, align 4
  %81 = add nsw i32 %80, 1
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds %struct.ioat_ring_ent*, %struct.ioat_ring_ent** %79, i64 %82
  %84 = load %struct.ioat_ring_ent*, %struct.ioat_ring_ent** %83, align 8
  store %struct.ioat_ring_ent* %84, %struct.ioat_ring_ent** %11, align 8
  %85 = load %struct.ioat_ring_ent**, %struct.ioat_ring_ent*** %8, align 8
  %86 = load i32, i32* %10, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds %struct.ioat_ring_ent*, %struct.ioat_ring_ent** %85, i64 %87
  %89 = load %struct.ioat_ring_ent*, %struct.ioat_ring_ent** %88, align 8
  %90 = getelementptr inbounds %struct.ioat_ring_ent, %struct.ioat_ring_ent* %89, i32 0, i32 1
  %91 = load %struct.ioat_dma_descriptor*, %struct.ioat_dma_descriptor** %90, align 8
  store %struct.ioat_dma_descriptor* %91, %struct.ioat_dma_descriptor** %12, align 8
  %92 = load %struct.ioat_ring_ent*, %struct.ioat_ring_ent** %11, align 8
  %93 = getelementptr inbounds %struct.ioat_ring_ent, %struct.ioat_ring_ent* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = load %struct.ioat_dma_descriptor*, %struct.ioat_dma_descriptor** %12, align 8
  %97 = getelementptr inbounds %struct.ioat_dma_descriptor, %struct.ioat_dma_descriptor* %96, i32 0, i32 0
  store i32 %95, i32* %97, align 4
  br label %98

98:                                               ; preds = %78
  %99 = load i32, i32* %10, align 4
  %100 = add nsw i32 %99, 1
  store i32 %100, i32* %10, align 4
  br label %73

101:                                              ; preds = %73
  %102 = load %struct.ioat_ring_ent**, %struct.ioat_ring_ent*** %8, align 8
  %103 = getelementptr inbounds %struct.ioat_ring_ent*, %struct.ioat_ring_ent** %102, i64 0
  %104 = load %struct.ioat_ring_ent*, %struct.ioat_ring_ent** %103, align 8
  %105 = getelementptr inbounds %struct.ioat_ring_ent, %struct.ioat_ring_ent* %104, i32 0, i32 0
  %106 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 8
  %108 = load %struct.ioat_ring_ent**, %struct.ioat_ring_ent*** %8, align 8
  %109 = load i32, i32* %10, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds %struct.ioat_ring_ent*, %struct.ioat_ring_ent** %108, i64 %110
  %112 = load %struct.ioat_ring_ent*, %struct.ioat_ring_ent** %111, align 8
  %113 = getelementptr inbounds %struct.ioat_ring_ent, %struct.ioat_ring_ent* %112, i32 0, i32 1
  %114 = load %struct.ioat_dma_descriptor*, %struct.ioat_dma_descriptor** %113, align 8
  %115 = getelementptr inbounds %struct.ioat_dma_descriptor, %struct.ioat_dma_descriptor* %114, i32 0, i32 0
  store i32 %107, i32* %115, align 4
  %116 = load %struct.ioat_ring_ent**, %struct.ioat_ring_ent*** %8, align 8
  store %struct.ioat_ring_ent** %116, %struct.ioat_ring_ent*** %4, align 8
  br label %117

117:                                              ; preds = %101, %58, %25, %18
  %118 = load %struct.ioat_ring_ent**, %struct.ioat_ring_ent*** %4, align 8
  ret %struct.ioat_ring_ent** %118
}

declare dso_local i32 @ioat_get_max_alloc_order(...) #1

declare dso_local %struct.ioat_ring_ent** @kcalloc(i32, i32, i32) #1

declare dso_local %struct.ioat_ring_ent* @ioat2_alloc_ring_ent(%struct.dma_chan*, i32) #1

declare dso_local i32 @ioat2_free_ring_ent(%struct.ioat_ring_ent*, %struct.dma_chan*) #1

declare dso_local i32 @kfree(%struct.ioat_ring_ent**) #1

declare dso_local i32 @set_desc_id(%struct.ioat_ring_ent*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
