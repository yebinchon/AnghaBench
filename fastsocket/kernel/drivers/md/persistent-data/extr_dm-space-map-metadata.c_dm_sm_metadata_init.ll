; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/md/persistent-data/extr_dm-space-map-metadata.c_dm_sm_metadata_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/md/persistent-data/extr_dm-space-map-metadata.c_dm_sm_metadata_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dm_space_map = type { i32 }
%struct.sm_metadata = type { %struct.dm_space_map }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ops = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.dm_space_map* @dm_sm_metadata_init() #0 {
  %1 = alloca %struct.dm_space_map*, align 8
  %2 = alloca %struct.sm_metadata*, align 8
  %3 = load i32, i32* @GFP_KERNEL, align 4
  %4 = call %struct.sm_metadata* @kmalloc(i32 4, i32 %3)
  store %struct.sm_metadata* %4, %struct.sm_metadata** %2, align 8
  %5 = load %struct.sm_metadata*, %struct.sm_metadata** %2, align 8
  %6 = icmp ne %struct.sm_metadata* %5, null
  br i1 %6, label %11, label %7

7:                                                ; preds = %0
  %8 = load i32, i32* @ENOMEM, align 4
  %9 = sub nsw i32 0, %8
  %10 = call %struct.dm_space_map* @ERR_PTR(i32 %9)
  store %struct.dm_space_map* %10, %struct.dm_space_map** %1, align 8
  br label %17

11:                                               ; preds = %0
  %12 = load %struct.sm_metadata*, %struct.sm_metadata** %2, align 8
  %13 = getelementptr inbounds %struct.sm_metadata, %struct.sm_metadata* %12, i32 0, i32 0
  %14 = call i32 @memcpy(%struct.dm_space_map* %13, i32* @ops, i32 4)
  %15 = load %struct.sm_metadata*, %struct.sm_metadata** %2, align 8
  %16 = getelementptr inbounds %struct.sm_metadata, %struct.sm_metadata* %15, i32 0, i32 0
  store %struct.dm_space_map* %16, %struct.dm_space_map** %1, align 8
  br label %17

17:                                               ; preds = %11, %7
  %18 = load %struct.dm_space_map*, %struct.dm_space_map** %1, align 8
  ret %struct.dm_space_map* %18
}

declare dso_local %struct.sm_metadata* @kmalloc(i32, i32) #1

declare dso_local %struct.dm_space_map* @ERR_PTR(i32) #1

declare dso_local i32 @memcpy(%struct.dm_space_map*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
