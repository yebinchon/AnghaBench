; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/block/extr_blk-core.c_blk_partition_remap.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/block/extr_blk-core.c_blk_partition_remap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bio = type { i64, %struct.block_device* }
%struct.block_device = type { i32, %struct.block_device*, %struct.hd_struct* }
%struct.hd_struct = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bio*)* @blk_partition_remap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @blk_partition_remap(%struct.bio* %0) #0 {
  %2 = alloca %struct.bio*, align 8
  %3 = alloca %struct.block_device*, align 8
  %4 = alloca %struct.hd_struct*, align 8
  store %struct.bio* %0, %struct.bio** %2, align 8
  %5 = load %struct.bio*, %struct.bio** %2, align 8
  %6 = getelementptr inbounds %struct.bio, %struct.bio* %5, i32 0, i32 1
  %7 = load %struct.block_device*, %struct.block_device** %6, align 8
  store %struct.block_device* %7, %struct.block_device** %3, align 8
  %8 = load %struct.bio*, %struct.bio** %2, align 8
  %9 = call i64 @bio_sectors(%struct.bio* %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %49

11:                                               ; preds = %1
  %12 = load %struct.block_device*, %struct.block_device** %3, align 8
  %13 = load %struct.block_device*, %struct.block_device** %3, align 8
  %14 = getelementptr inbounds %struct.block_device, %struct.block_device* %13, i32 0, i32 1
  %15 = load %struct.block_device*, %struct.block_device** %14, align 8
  %16 = icmp ne %struct.block_device* %12, %15
  br i1 %16, label %17, label %49

17:                                               ; preds = %11
  %18 = load %struct.block_device*, %struct.block_device** %3, align 8
  %19 = getelementptr inbounds %struct.block_device, %struct.block_device* %18, i32 0, i32 2
  %20 = load %struct.hd_struct*, %struct.hd_struct** %19, align 8
  store %struct.hd_struct* %20, %struct.hd_struct** %4, align 8
  %21 = load %struct.hd_struct*, %struct.hd_struct** %4, align 8
  %22 = getelementptr inbounds %struct.hd_struct, %struct.hd_struct* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load %struct.bio*, %struct.bio** %2, align 8
  %25 = getelementptr inbounds %struct.bio, %struct.bio* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = add nsw i64 %26, %23
  store i64 %27, i64* %25, align 8
  %28 = load %struct.block_device*, %struct.block_device** %3, align 8
  %29 = getelementptr inbounds %struct.block_device, %struct.block_device* %28, i32 0, i32 1
  %30 = load %struct.block_device*, %struct.block_device** %29, align 8
  %31 = load %struct.bio*, %struct.bio** %2, align 8
  %32 = getelementptr inbounds %struct.bio, %struct.bio* %31, i32 0, i32 1
  store %struct.block_device* %30, %struct.block_device** %32, align 8
  %33 = load %struct.bio*, %struct.bio** %2, align 8
  %34 = getelementptr inbounds %struct.bio, %struct.bio* %33, i32 0, i32 1
  %35 = load %struct.block_device*, %struct.block_device** %34, align 8
  %36 = call i32 @bdev_get_queue(%struct.block_device* %35)
  %37 = load %struct.bio*, %struct.bio** %2, align 8
  %38 = load %struct.block_device*, %struct.block_device** %3, align 8
  %39 = getelementptr inbounds %struct.block_device, %struct.block_device* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = load %struct.bio*, %struct.bio** %2, align 8
  %42 = getelementptr inbounds %struct.bio, %struct.bio* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load %struct.hd_struct*, %struct.hd_struct** %4, align 8
  %45 = getelementptr inbounds %struct.hd_struct, %struct.hd_struct* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = sub nsw i64 %43, %46
  %48 = call i32 @trace_block_remap(i32 %36, %struct.bio* %37, i32 %40, i64 %47)
  br label %49

49:                                               ; preds = %17, %11, %1
  ret void
}

declare dso_local i64 @bio_sectors(%struct.bio*) #1

declare dso_local i32 @trace_block_remap(i32, %struct.bio*, i32, i64) #1

declare dso_local i32 @bdev_get_queue(%struct.block_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
