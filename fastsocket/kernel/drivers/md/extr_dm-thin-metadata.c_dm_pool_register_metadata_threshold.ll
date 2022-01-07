; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-thin-metadata.c_dm_pool_register_metadata_threshold.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-thin-metadata.c_dm_pool_register_metadata_threshold.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dm_pool_metadata = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dm_pool_register_metadata_threshold(%struct.dm_pool_metadata* %0, i32 %1, i32 %2, i8* %3) #0 {
  %5 = alloca %struct.dm_pool_metadata*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  store %struct.dm_pool_metadata* %0, %struct.dm_pool_metadata** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i8* %3, i8** %8, align 8
  %10 = load %struct.dm_pool_metadata*, %struct.dm_pool_metadata** %5, align 8
  %11 = getelementptr inbounds %struct.dm_pool_metadata, %struct.dm_pool_metadata* %10, i32 0, i32 0
  %12 = call i32 @down_write(i32* %11)
  %13 = load %struct.dm_pool_metadata*, %struct.dm_pool_metadata** %5, align 8
  %14 = getelementptr inbounds %struct.dm_pool_metadata, %struct.dm_pool_metadata* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* %6, align 4
  %17 = load i32, i32* %7, align 4
  %18 = load i8*, i8** %8, align 8
  %19 = call i32 @dm_sm_register_threshold_callback(i32 %15, i32 %16, i32 %17, i8* %18)
  store i32 %19, i32* %9, align 4
  %20 = load %struct.dm_pool_metadata*, %struct.dm_pool_metadata** %5, align 8
  %21 = getelementptr inbounds %struct.dm_pool_metadata, %struct.dm_pool_metadata* %20, i32 0, i32 0
  %22 = call i32 @up_write(i32* %21)
  %23 = load i32, i32* %9, align 4
  ret i32 %23
}

declare dso_local i32 @down_write(i32*) #1

declare dso_local i32 @dm_sm_register_threshold_callback(i32, i32, i32, i8*) #1

declare dso_local i32 @up_write(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
