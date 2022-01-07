; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-thin-metadata.c_dm_thin_find_block.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-thin-metadata.c_dm_thin_find_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dm_thin_device = type { i32, %struct.dm_pool_metadata* }
%struct.dm_pool_metadata = type { i32, i32, i64, %struct.dm_btree_info, %struct.dm_btree_info }
%struct.dm_btree_info = type { i32 }
%struct.dm_thin_lookup_result = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@EWOULDBLOCK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dm_thin_find_block(%struct.dm_thin_device* %0, i32 %1, i32 %2, %struct.dm_thin_lookup_result* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.dm_thin_device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.dm_thin_lookup_result*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.dm_pool_metadata*, align 8
  %14 = alloca [2 x i32], align 4
  %15 = alloca %struct.dm_btree_info*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.dm_thin_device* %0, %struct.dm_thin_device** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store %struct.dm_thin_lookup_result* %3, %struct.dm_thin_lookup_result** %9, align 8
  %18 = load i32, i32* @EINVAL, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %20 = load %struct.dm_thin_device*, %struct.dm_thin_device** %6, align 8
  %21 = getelementptr inbounds %struct.dm_thin_device, %struct.dm_thin_device* %20, i32 0, i32 1
  %22 = load %struct.dm_pool_metadata*, %struct.dm_pool_metadata** %21, align 8
  store %struct.dm_pool_metadata* %22, %struct.dm_pool_metadata** %13, align 8
  %23 = getelementptr inbounds [2 x i32], [2 x i32]* %14, i64 0, i64 0
  %24 = load %struct.dm_thin_device*, %struct.dm_thin_device** %6, align 8
  %25 = getelementptr inbounds %struct.dm_thin_device, %struct.dm_thin_device* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  store i32 %26, i32* %23, align 4
  %27 = getelementptr inbounds i32, i32* %23, i64 1
  %28 = load i32, i32* %7, align 4
  store i32 %28, i32* %27, align 4
  %29 = load i32, i32* %8, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %37

31:                                               ; preds = %4
  %32 = load %struct.dm_pool_metadata*, %struct.dm_pool_metadata** %13, align 8
  %33 = getelementptr inbounds %struct.dm_pool_metadata, %struct.dm_pool_metadata* %32, i32 0, i32 0
  %34 = call i32 @down_read(i32* %33)
  %35 = load %struct.dm_pool_metadata*, %struct.dm_pool_metadata** %13, align 8
  %36 = getelementptr inbounds %struct.dm_pool_metadata, %struct.dm_pool_metadata* %35, i32 0, i32 4
  store %struct.dm_btree_info* %36, %struct.dm_btree_info** %15, align 8
  br label %49

37:                                               ; preds = %4
  %38 = load %struct.dm_pool_metadata*, %struct.dm_pool_metadata** %13, align 8
  %39 = getelementptr inbounds %struct.dm_pool_metadata, %struct.dm_pool_metadata* %38, i32 0, i32 0
  %40 = call i64 @down_read_trylock(i32* %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %37
  %43 = load %struct.dm_pool_metadata*, %struct.dm_pool_metadata** %13, align 8
  %44 = getelementptr inbounds %struct.dm_pool_metadata, %struct.dm_pool_metadata* %43, i32 0, i32 3
  store %struct.dm_btree_info* %44, %struct.dm_btree_info** %15, align 8
  br label %48

45:                                               ; preds = %37
  %46 = load i32, i32* @EWOULDBLOCK, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %5, align 4
  br label %87

48:                                               ; preds = %42
  br label %49

49:                                               ; preds = %48, %31
  %50 = load %struct.dm_pool_metadata*, %struct.dm_pool_metadata** %13, align 8
  %51 = getelementptr inbounds %struct.dm_pool_metadata, %struct.dm_pool_metadata* %50, i32 0, i32 2
  %52 = load i64, i64* %51, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %49
  br label %68

55:                                               ; preds = %49
  %56 = load %struct.dm_btree_info*, %struct.dm_btree_info** %15, align 8
  %57 = load %struct.dm_pool_metadata*, %struct.dm_pool_metadata** %13, align 8
  %58 = getelementptr inbounds %struct.dm_pool_metadata, %struct.dm_pool_metadata* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = getelementptr inbounds [2 x i32], [2 x i32]* %14, i64 0, i64 0
  %61 = call i32 @dm_btree_lookup(%struct.dm_btree_info* %56, i32 %59, i32* %60, i32* %12)
  store i32 %61, i32* %10, align 4
  %62 = load i32, i32* %10, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %67, label %64

64:                                               ; preds = %55
  %65 = load i32, i32* %12, align 4
  %66 = call i32 @le64_to_cpu(i32 %65)
  store i32 %66, i32* %11, align 4
  br label %67

67:                                               ; preds = %64, %55
  br label %68

68:                                               ; preds = %67, %54
  %69 = load %struct.dm_pool_metadata*, %struct.dm_pool_metadata** %13, align 8
  %70 = getelementptr inbounds %struct.dm_pool_metadata, %struct.dm_pool_metadata* %69, i32 0, i32 0
  %71 = call i32 @up_read(i32* %70)
  %72 = load i32, i32* %10, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %85, label %74

74:                                               ; preds = %68
  %75 = load i32, i32* %11, align 4
  %76 = call i32 @unpack_block_time(i32 %75, i32* %16, i32* %17)
  %77 = load i32, i32* %16, align 4
  %78 = load %struct.dm_thin_lookup_result*, %struct.dm_thin_lookup_result** %9, align 8
  %79 = getelementptr inbounds %struct.dm_thin_lookup_result, %struct.dm_thin_lookup_result* %78, i32 0, i32 1
  store i32 %77, i32* %79, align 4
  %80 = load %struct.dm_thin_device*, %struct.dm_thin_device** %6, align 8
  %81 = load i32, i32* %17, align 4
  %82 = call i32 @__snapshotted_since(%struct.dm_thin_device* %80, i32 %81)
  %83 = load %struct.dm_thin_lookup_result*, %struct.dm_thin_lookup_result** %9, align 8
  %84 = getelementptr inbounds %struct.dm_thin_lookup_result, %struct.dm_thin_lookup_result* %83, i32 0, i32 0
  store i32 %82, i32* %84, align 4
  br label %85

85:                                               ; preds = %74, %68
  %86 = load i32, i32* %10, align 4
  store i32 %86, i32* %5, align 4
  br label %87

87:                                               ; preds = %85, %45
  %88 = load i32, i32* %5, align 4
  ret i32 %88
}

declare dso_local i32 @down_read(i32*) #1

declare dso_local i64 @down_read_trylock(i32*) #1

declare dso_local i32 @dm_btree_lookup(%struct.dm_btree_info*, i32, i32*, i32*) #1

declare dso_local i32 @le64_to_cpu(i32) #1

declare dso_local i32 @up_read(i32*) #1

declare dso_local i32 @unpack_block_time(i32, i32*, i32*) #1

declare dso_local i32 @__snapshotted_since(%struct.dm_thin_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
