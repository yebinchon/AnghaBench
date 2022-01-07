; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-thin-metadata.c_dm_pool_abort_metadata.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-thin-metadata.c_dm_pool_abort_metadata.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dm_pool_metadata = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dm_pool_abort_metadata(%struct.dm_pool_metadata* %0) #0 {
  %2 = alloca %struct.dm_pool_metadata*, align 8
  %3 = alloca i32, align 4
  store %struct.dm_pool_metadata* %0, %struct.dm_pool_metadata** %2, align 8
  %4 = load i32, i32* @EINVAL, align 4
  %5 = sub nsw i32 0, %4
  store i32 %5, i32* %3, align 4
  %6 = load %struct.dm_pool_metadata*, %struct.dm_pool_metadata** %2, align 8
  %7 = getelementptr inbounds %struct.dm_pool_metadata, %struct.dm_pool_metadata* %6, i32 0, i32 1
  %8 = call i32 @down_write(i32* %7)
  %9 = load %struct.dm_pool_metadata*, %struct.dm_pool_metadata** %2, align 8
  %10 = getelementptr inbounds %struct.dm_pool_metadata, %struct.dm_pool_metadata* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %1
  br label %27

14:                                               ; preds = %1
  %15 = load %struct.dm_pool_metadata*, %struct.dm_pool_metadata** %2, align 8
  %16 = call i32 @__set_abort_with_changes_flags(%struct.dm_pool_metadata* %15)
  %17 = load %struct.dm_pool_metadata*, %struct.dm_pool_metadata** %2, align 8
  %18 = call i32 @__destroy_persistent_data_objects(%struct.dm_pool_metadata* %17)
  %19 = load %struct.dm_pool_metadata*, %struct.dm_pool_metadata** %2, align 8
  %20 = call i32 @__create_persistent_data_objects(%struct.dm_pool_metadata* %19, i32 0)
  store i32 %20, i32* %3, align 4
  %21 = load i32, i32* %3, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %14
  %24 = load %struct.dm_pool_metadata*, %struct.dm_pool_metadata** %2, align 8
  %25 = getelementptr inbounds %struct.dm_pool_metadata, %struct.dm_pool_metadata* %24, i32 0, i32 0
  store i32 1, i32* %25, align 4
  br label %26

26:                                               ; preds = %23, %14
  br label %27

27:                                               ; preds = %26, %13
  %28 = load %struct.dm_pool_metadata*, %struct.dm_pool_metadata** %2, align 8
  %29 = getelementptr inbounds %struct.dm_pool_metadata, %struct.dm_pool_metadata* %28, i32 0, i32 1
  %30 = call i32 @up_write(i32* %29)
  %31 = load i32, i32* %3, align 4
  ret i32 %31
}

declare dso_local i32 @down_write(i32*) #1

declare dso_local i32 @__set_abort_with_changes_flags(%struct.dm_pool_metadata*) #1

declare dso_local i32 @__destroy_persistent_data_objects(%struct.dm_pool_metadata*) #1

declare dso_local i32 @__create_persistent_data_objects(%struct.dm_pool_metadata*, i32) #1

declare dso_local i32 @up_write(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
