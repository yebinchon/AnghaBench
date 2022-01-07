; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_radeon_mem.c_init_heap.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_radeon_mem.c_init_heap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mem_block = type { i32, i32, %struct.mem_block*, %struct.mem_block*, %struct.drm_file* }
%struct.drm_file = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mem_block**, i32, i32)* @init_heap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @init_heap(%struct.mem_block** %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mem_block**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.mem_block*, align 8
  store %struct.mem_block** %0, %struct.mem_block*** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %9 = load i32, i32* @GFP_KERNEL, align 4
  %10 = call %struct.mem_block* @kmalloc(i32 32, i32 %9)
  store %struct.mem_block* %10, %struct.mem_block** %8, align 8
  %11 = load %struct.mem_block*, %struct.mem_block** %8, align 8
  %12 = icmp ne %struct.mem_block* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %3
  %14 = load i32, i32* @ENOMEM, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %4, align 4
  br label %53

16:                                               ; preds = %3
  %17 = load i32, i32* @GFP_KERNEL, align 4
  %18 = call %struct.mem_block* @kzalloc(i32 32, i32 %17)
  %19 = load %struct.mem_block**, %struct.mem_block*** %5, align 8
  store %struct.mem_block* %18, %struct.mem_block** %19, align 8
  %20 = load %struct.mem_block**, %struct.mem_block*** %5, align 8
  %21 = load %struct.mem_block*, %struct.mem_block** %20, align 8
  %22 = icmp ne %struct.mem_block* %21, null
  br i1 %22, label %28, label %23

23:                                               ; preds = %16
  %24 = load %struct.mem_block*, %struct.mem_block** %8, align 8
  %25 = call i32 @kfree(%struct.mem_block* %24)
  %26 = load i32, i32* @ENOMEM, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %4, align 4
  br label %53

28:                                               ; preds = %16
  %29 = load i32, i32* %6, align 4
  %30 = load %struct.mem_block*, %struct.mem_block** %8, align 8
  %31 = getelementptr inbounds %struct.mem_block, %struct.mem_block* %30, i32 0, i32 0
  store i32 %29, i32* %31, align 8
  %32 = load i32, i32* %7, align 4
  %33 = load %struct.mem_block*, %struct.mem_block** %8, align 8
  %34 = getelementptr inbounds %struct.mem_block, %struct.mem_block* %33, i32 0, i32 1
  store i32 %32, i32* %34, align 4
  %35 = load %struct.mem_block*, %struct.mem_block** %8, align 8
  %36 = getelementptr inbounds %struct.mem_block, %struct.mem_block* %35, i32 0, i32 4
  store %struct.drm_file* null, %struct.drm_file** %36, align 8
  %37 = load %struct.mem_block**, %struct.mem_block*** %5, align 8
  %38 = load %struct.mem_block*, %struct.mem_block** %37, align 8
  %39 = load %struct.mem_block*, %struct.mem_block** %8, align 8
  %40 = getelementptr inbounds %struct.mem_block, %struct.mem_block* %39, i32 0, i32 2
  store %struct.mem_block* %38, %struct.mem_block** %40, align 8
  %41 = load %struct.mem_block*, %struct.mem_block** %8, align 8
  %42 = getelementptr inbounds %struct.mem_block, %struct.mem_block* %41, i32 0, i32 3
  store %struct.mem_block* %38, %struct.mem_block** %42, align 8
  %43 = load %struct.mem_block**, %struct.mem_block*** %5, align 8
  %44 = load %struct.mem_block*, %struct.mem_block** %43, align 8
  %45 = getelementptr inbounds %struct.mem_block, %struct.mem_block* %44, i32 0, i32 4
  store %struct.drm_file* inttoptr (i64 -1 to %struct.drm_file*), %struct.drm_file** %45, align 8
  %46 = load %struct.mem_block*, %struct.mem_block** %8, align 8
  %47 = load %struct.mem_block**, %struct.mem_block*** %5, align 8
  %48 = load %struct.mem_block*, %struct.mem_block** %47, align 8
  %49 = getelementptr inbounds %struct.mem_block, %struct.mem_block* %48, i32 0, i32 2
  store %struct.mem_block* %46, %struct.mem_block** %49, align 8
  %50 = load %struct.mem_block**, %struct.mem_block*** %5, align 8
  %51 = load %struct.mem_block*, %struct.mem_block** %50, align 8
  %52 = getelementptr inbounds %struct.mem_block, %struct.mem_block* %51, i32 0, i32 3
  store %struct.mem_block* %46, %struct.mem_block** %52, align 8
  store i32 0, i32* %4, align 4
  br label %53

53:                                               ; preds = %28, %23, %13
  %54 = load i32, i32* %4, align 4
  ret i32 %54
}

declare dso_local %struct.mem_block* @kmalloc(i32, i32) #1

declare dso_local %struct.mem_block* @kzalloc(i32, i32) #1

declare dso_local i32 @kfree(%struct.mem_block*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
