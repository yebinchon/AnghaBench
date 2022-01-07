; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/md/persistent-data/extr_dm-space-map-disk.c_dm_sm_disk_open.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/md/persistent-data/extr_dm-space-map-disk.c_dm_sm_disk_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dm_space_map = type { i32 }
%struct.dm_transaction_manager = type { i32 }
%struct.sm_disk = type { %struct.dm_space_map, i32, i64, i64 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ops = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.dm_space_map* @dm_sm_disk_open(%struct.dm_transaction_manager* %0, i8* %1, i64 %2) #0 {
  %4 = alloca %struct.dm_space_map*, align 8
  %5 = alloca %struct.dm_transaction_manager*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.sm_disk*, align 8
  store %struct.dm_transaction_manager* %0, %struct.dm_transaction_manager** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %10 = load i32, i32* @GFP_KERNEL, align 4
  %11 = call %struct.sm_disk* @kmalloc(i32 24, i32 %10)
  store %struct.sm_disk* %11, %struct.sm_disk** %9, align 8
  %12 = load %struct.sm_disk*, %struct.sm_disk** %9, align 8
  %13 = icmp ne %struct.sm_disk* %12, null
  br i1 %13, label %18, label %14

14:                                               ; preds = %3
  %15 = load i32, i32* @ENOMEM, align 4
  %16 = sub nsw i32 0, %15
  %17 = call %struct.dm_space_map* @ERR_PTR(i32 %16)
  store %struct.dm_space_map* %17, %struct.dm_space_map** %4, align 8
  br label %50

18:                                               ; preds = %3
  %19 = load %struct.sm_disk*, %struct.sm_disk** %9, align 8
  %20 = getelementptr inbounds %struct.sm_disk, %struct.sm_disk* %19, i32 0, i32 3
  store i64 0, i64* %20, align 8
  %21 = load %struct.sm_disk*, %struct.sm_disk** %9, align 8
  %22 = getelementptr inbounds %struct.sm_disk, %struct.sm_disk* %21, i32 0, i32 2
  store i64 0, i64* %22, align 8
  %23 = load %struct.sm_disk*, %struct.sm_disk** %9, align 8
  %24 = getelementptr inbounds %struct.sm_disk, %struct.sm_disk* %23, i32 0, i32 0
  %25 = call i32 @memcpy(%struct.dm_space_map* %24, i32* @ops, i32 4)
  %26 = load %struct.sm_disk*, %struct.sm_disk** %9, align 8
  %27 = getelementptr inbounds %struct.sm_disk, %struct.sm_disk* %26, i32 0, i32 1
  %28 = load %struct.dm_transaction_manager*, %struct.dm_transaction_manager** %5, align 8
  %29 = load i8*, i8** %6, align 8
  %30 = load i64, i64* %7, align 8
  %31 = call i32 @sm_ll_open_disk(i32* %27, %struct.dm_transaction_manager* %28, i8* %29, i64 %30)
  store i32 %31, i32* %8, align 4
  %32 = load i32, i32* %8, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %18
  br label %45

35:                                               ; preds = %18
  %36 = load %struct.sm_disk*, %struct.sm_disk** %9, align 8
  %37 = getelementptr inbounds %struct.sm_disk, %struct.sm_disk* %36, i32 0, i32 0
  %38 = call i32 @sm_disk_commit(%struct.dm_space_map* %37)
  store i32 %38, i32* %8, align 4
  %39 = load i32, i32* %8, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %35
  br label %45

42:                                               ; preds = %35
  %43 = load %struct.sm_disk*, %struct.sm_disk** %9, align 8
  %44 = getelementptr inbounds %struct.sm_disk, %struct.sm_disk* %43, i32 0, i32 0
  store %struct.dm_space_map* %44, %struct.dm_space_map** %4, align 8
  br label %50

45:                                               ; preds = %41, %34
  %46 = load %struct.sm_disk*, %struct.sm_disk** %9, align 8
  %47 = call i32 @kfree(%struct.sm_disk* %46)
  %48 = load i32, i32* %8, align 4
  %49 = call %struct.dm_space_map* @ERR_PTR(i32 %48)
  store %struct.dm_space_map* %49, %struct.dm_space_map** %4, align 8
  br label %50

50:                                               ; preds = %45, %42, %14
  %51 = load %struct.dm_space_map*, %struct.dm_space_map** %4, align 8
  ret %struct.dm_space_map* %51
}

declare dso_local %struct.sm_disk* @kmalloc(i32, i32) #1

declare dso_local %struct.dm_space_map* @ERR_PTR(i32) #1

declare dso_local i32 @memcpy(%struct.dm_space_map*, i32*, i32) #1

declare dso_local i32 @sm_ll_open_disk(i32*, %struct.dm_transaction_manager*, i8*, i64) #1

declare dso_local i32 @sm_disk_commit(%struct.dm_space_map*) #1

declare dso_local i32 @kfree(%struct.sm_disk*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
