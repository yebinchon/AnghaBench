; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-thin-metadata.c_dm_pool_block_is_used.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-thin-metadata.c_dm_pool_block_is_used.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dm_pool_metadata = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dm_pool_block_is_used(%struct.dm_pool_metadata* %0, i32 %1, i32* %2) #0 {
  %4 = alloca %struct.dm_pool_metadata*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store %struct.dm_pool_metadata* %0, %struct.dm_pool_metadata** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32* %2, i32** %6, align 8
  %9 = load %struct.dm_pool_metadata*, %struct.dm_pool_metadata** %4, align 8
  %10 = getelementptr inbounds %struct.dm_pool_metadata, %struct.dm_pool_metadata* %9, i32 0, i32 0
  %11 = call i32 @down_read(i32* %10)
  %12 = load %struct.dm_pool_metadata*, %struct.dm_pool_metadata** %4, align 8
  %13 = getelementptr inbounds %struct.dm_pool_metadata, %struct.dm_pool_metadata* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* %5, align 4
  %16 = call i32 @dm_sm_get_count(i32 %14, i32 %15, i64* %8)
  store i32 %16, i32* %7, align 4
  %17 = load i32, i32* %7, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %24, label %19

19:                                               ; preds = %3
  %20 = load i64, i64* %8, align 8
  %21 = icmp ne i64 %20, 0
  %22 = zext i1 %21 to i32
  %23 = load i32*, i32** %6, align 8
  store i32 %22, i32* %23, align 4
  br label %24

24:                                               ; preds = %19, %3
  %25 = load %struct.dm_pool_metadata*, %struct.dm_pool_metadata** %4, align 8
  %26 = getelementptr inbounds %struct.dm_pool_metadata, %struct.dm_pool_metadata* %25, i32 0, i32 0
  %27 = call i32 @up_read(i32* %26)
  %28 = load i32, i32* %7, align 4
  ret i32 %28
}

declare dso_local i32 @down_read(i32*) #1

declare dso_local i32 @dm_sm_get_count(i32, i32, i64*) #1

declare dso_local i32 @up_read(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
