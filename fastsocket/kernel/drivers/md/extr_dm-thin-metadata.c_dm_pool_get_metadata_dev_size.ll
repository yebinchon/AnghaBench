; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-thin-metadata.c_dm_pool_get_metadata_dev_size.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-thin-metadata.c_dm_pool_get_metadata_dev_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dm_pool_metadata = type { i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dm_pool_get_metadata_dev_size(%struct.dm_pool_metadata* %0, i32* %1) #0 {
  %3 = alloca %struct.dm_pool_metadata*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  store %struct.dm_pool_metadata* %0, %struct.dm_pool_metadata** %3, align 8
  store i32* %1, i32** %4, align 8
  %6 = load i32, i32* @EINVAL, align 4
  %7 = sub nsw i32 0, %6
  store i32 %7, i32* %5, align 4
  %8 = load %struct.dm_pool_metadata*, %struct.dm_pool_metadata** %3, align 8
  %9 = getelementptr inbounds %struct.dm_pool_metadata, %struct.dm_pool_metadata* %8, i32 0, i32 0
  %10 = call i32 @down_read(i32* %9)
  %11 = load %struct.dm_pool_metadata*, %struct.dm_pool_metadata** %3, align 8
  %12 = getelementptr inbounds %struct.dm_pool_metadata, %struct.dm_pool_metadata* %11, i32 0, i32 2
  %13 = load i32, i32* %12, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %21, label %15

15:                                               ; preds = %2
  %16 = load %struct.dm_pool_metadata*, %struct.dm_pool_metadata** %3, align 8
  %17 = getelementptr inbounds %struct.dm_pool_metadata, %struct.dm_pool_metadata* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = load i32*, i32** %4, align 8
  %20 = call i32 @dm_sm_get_nr_blocks(i32 %18, i32* %19)
  store i32 %20, i32* %5, align 4
  br label %21

21:                                               ; preds = %15, %2
  %22 = load %struct.dm_pool_metadata*, %struct.dm_pool_metadata** %3, align 8
  %23 = getelementptr inbounds %struct.dm_pool_metadata, %struct.dm_pool_metadata* %22, i32 0, i32 0
  %24 = call i32 @up_read(i32* %23)
  %25 = load i32, i32* %5, align 4
  ret i32 %25
}

declare dso_local i32 @down_read(i32*) #1

declare dso_local i32 @dm_sm_get_nr_blocks(i32, i32*) #1

declare dso_local i32 @up_read(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
