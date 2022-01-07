; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_radeon_mem.c_free_block.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_radeon_mem.c_free_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mem_block = type { %struct.mem_block*, %struct.mem_block*, i64, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mem_block*)* @free_block to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @free_block(%struct.mem_block* %0) #0 {
  %2 = alloca %struct.mem_block*, align 8
  %3 = alloca %struct.mem_block*, align 8
  %4 = alloca %struct.mem_block*, align 8
  store %struct.mem_block* %0, %struct.mem_block** %2, align 8
  %5 = load %struct.mem_block*, %struct.mem_block** %2, align 8
  %6 = getelementptr inbounds %struct.mem_block, %struct.mem_block* %5, i32 0, i32 3
  store i32* null, i32** %6, align 8
  %7 = load %struct.mem_block*, %struct.mem_block** %2, align 8
  %8 = getelementptr inbounds %struct.mem_block, %struct.mem_block* %7, i32 0, i32 1
  %9 = load %struct.mem_block*, %struct.mem_block** %8, align 8
  %10 = getelementptr inbounds %struct.mem_block, %struct.mem_block* %9, i32 0, i32 3
  %11 = load i32*, i32** %10, align 8
  %12 = icmp eq i32* %11, null
  br i1 %12, label %13, label %36

13:                                               ; preds = %1
  %14 = load %struct.mem_block*, %struct.mem_block** %2, align 8
  %15 = getelementptr inbounds %struct.mem_block, %struct.mem_block* %14, i32 0, i32 1
  %16 = load %struct.mem_block*, %struct.mem_block** %15, align 8
  store %struct.mem_block* %16, %struct.mem_block** %3, align 8
  %17 = load %struct.mem_block*, %struct.mem_block** %3, align 8
  %18 = getelementptr inbounds %struct.mem_block, %struct.mem_block* %17, i32 0, i32 2
  %19 = load i64, i64* %18, align 8
  %20 = load %struct.mem_block*, %struct.mem_block** %2, align 8
  %21 = getelementptr inbounds %struct.mem_block, %struct.mem_block* %20, i32 0, i32 2
  %22 = load i64, i64* %21, align 8
  %23 = add nsw i64 %22, %19
  store i64 %23, i64* %21, align 8
  %24 = load %struct.mem_block*, %struct.mem_block** %3, align 8
  %25 = getelementptr inbounds %struct.mem_block, %struct.mem_block* %24, i32 0, i32 1
  %26 = load %struct.mem_block*, %struct.mem_block** %25, align 8
  %27 = load %struct.mem_block*, %struct.mem_block** %2, align 8
  %28 = getelementptr inbounds %struct.mem_block, %struct.mem_block* %27, i32 0, i32 1
  store %struct.mem_block* %26, %struct.mem_block** %28, align 8
  %29 = load %struct.mem_block*, %struct.mem_block** %2, align 8
  %30 = load %struct.mem_block*, %struct.mem_block** %2, align 8
  %31 = getelementptr inbounds %struct.mem_block, %struct.mem_block* %30, i32 0, i32 1
  %32 = load %struct.mem_block*, %struct.mem_block** %31, align 8
  %33 = getelementptr inbounds %struct.mem_block, %struct.mem_block* %32, i32 0, i32 0
  store %struct.mem_block* %29, %struct.mem_block** %33, align 8
  %34 = load %struct.mem_block*, %struct.mem_block** %3, align 8
  %35 = call i32 @kfree(%struct.mem_block* %34)
  br label %36

36:                                               ; preds = %13, %1
  %37 = load %struct.mem_block*, %struct.mem_block** %2, align 8
  %38 = getelementptr inbounds %struct.mem_block, %struct.mem_block* %37, i32 0, i32 0
  %39 = load %struct.mem_block*, %struct.mem_block** %38, align 8
  %40 = getelementptr inbounds %struct.mem_block, %struct.mem_block* %39, i32 0, i32 3
  %41 = load i32*, i32** %40, align 8
  %42 = icmp eq i32* %41, null
  br i1 %42, label %43, label %66

43:                                               ; preds = %36
  %44 = load %struct.mem_block*, %struct.mem_block** %2, align 8
  %45 = getelementptr inbounds %struct.mem_block, %struct.mem_block* %44, i32 0, i32 0
  %46 = load %struct.mem_block*, %struct.mem_block** %45, align 8
  store %struct.mem_block* %46, %struct.mem_block** %4, align 8
  %47 = load %struct.mem_block*, %struct.mem_block** %2, align 8
  %48 = getelementptr inbounds %struct.mem_block, %struct.mem_block* %47, i32 0, i32 2
  %49 = load i64, i64* %48, align 8
  %50 = load %struct.mem_block*, %struct.mem_block** %4, align 8
  %51 = getelementptr inbounds %struct.mem_block, %struct.mem_block* %50, i32 0, i32 2
  %52 = load i64, i64* %51, align 8
  %53 = add nsw i64 %52, %49
  store i64 %53, i64* %51, align 8
  %54 = load %struct.mem_block*, %struct.mem_block** %2, align 8
  %55 = getelementptr inbounds %struct.mem_block, %struct.mem_block* %54, i32 0, i32 1
  %56 = load %struct.mem_block*, %struct.mem_block** %55, align 8
  %57 = load %struct.mem_block*, %struct.mem_block** %4, align 8
  %58 = getelementptr inbounds %struct.mem_block, %struct.mem_block* %57, i32 0, i32 1
  store %struct.mem_block* %56, %struct.mem_block** %58, align 8
  %59 = load %struct.mem_block*, %struct.mem_block** %4, align 8
  %60 = load %struct.mem_block*, %struct.mem_block** %4, align 8
  %61 = getelementptr inbounds %struct.mem_block, %struct.mem_block* %60, i32 0, i32 1
  %62 = load %struct.mem_block*, %struct.mem_block** %61, align 8
  %63 = getelementptr inbounds %struct.mem_block, %struct.mem_block* %62, i32 0, i32 0
  store %struct.mem_block* %59, %struct.mem_block** %63, align 8
  %64 = load %struct.mem_block*, %struct.mem_block** %2, align 8
  %65 = call i32 @kfree(%struct.mem_block* %64)
  br label %66

66:                                               ; preds = %43, %36
  ret void
}

declare dso_local i32 @kfree(%struct.mem_block*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
