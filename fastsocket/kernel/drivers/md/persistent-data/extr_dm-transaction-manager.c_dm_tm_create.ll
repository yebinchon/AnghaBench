; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/md/persistent-data/extr_dm-transaction-manager.c_dm_tm_create.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/md/persistent-data/extr_dm-transaction-manager.c_dm_tm_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dm_transaction_manager = type { i64, i32, %struct.dm_space_map*, %struct.dm_block_manager*, i32*, i64 }
%struct.dm_block_manager = type { i32 }
%struct.dm_space_map = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@DM_HASH_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.dm_transaction_manager* (%struct.dm_block_manager*, %struct.dm_space_map*)* @dm_tm_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.dm_transaction_manager* @dm_tm_create(%struct.dm_block_manager* %0, %struct.dm_space_map* %1) #0 {
  %3 = alloca %struct.dm_transaction_manager*, align 8
  %4 = alloca %struct.dm_block_manager*, align 8
  %5 = alloca %struct.dm_space_map*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.dm_transaction_manager*, align 8
  store %struct.dm_block_manager* %0, %struct.dm_block_manager** %4, align 8
  store %struct.dm_space_map* %1, %struct.dm_space_map** %5, align 8
  %8 = load i32, i32* @GFP_KERNEL, align 4
  %9 = call %struct.dm_transaction_manager* @kmalloc(i32 48, i32 %8)
  store %struct.dm_transaction_manager* %9, %struct.dm_transaction_manager** %7, align 8
  %10 = load %struct.dm_transaction_manager*, %struct.dm_transaction_manager** %7, align 8
  %11 = icmp ne %struct.dm_transaction_manager* %10, null
  br i1 %11, label %16, label %12

12:                                               ; preds = %2
  %13 = load i32, i32* @ENOMEM, align 4
  %14 = sub nsw i32 0, %13
  %15 = call %struct.dm_transaction_manager* @ERR_PTR(i32 %14)
  store %struct.dm_transaction_manager* %15, %struct.dm_transaction_manager** %3, align 8
  br label %47

16:                                               ; preds = %2
  %17 = load %struct.dm_transaction_manager*, %struct.dm_transaction_manager** %7, align 8
  %18 = getelementptr inbounds %struct.dm_transaction_manager, %struct.dm_transaction_manager* %17, i32 0, i32 5
  store i64 0, i64* %18, align 8
  %19 = load %struct.dm_transaction_manager*, %struct.dm_transaction_manager** %7, align 8
  %20 = getelementptr inbounds %struct.dm_transaction_manager, %struct.dm_transaction_manager* %19, i32 0, i32 4
  store i32* null, i32** %20, align 8
  %21 = load %struct.dm_block_manager*, %struct.dm_block_manager** %4, align 8
  %22 = load %struct.dm_transaction_manager*, %struct.dm_transaction_manager** %7, align 8
  %23 = getelementptr inbounds %struct.dm_transaction_manager, %struct.dm_transaction_manager* %22, i32 0, i32 3
  store %struct.dm_block_manager* %21, %struct.dm_block_manager** %23, align 8
  %24 = load %struct.dm_space_map*, %struct.dm_space_map** %5, align 8
  %25 = load %struct.dm_transaction_manager*, %struct.dm_transaction_manager** %7, align 8
  %26 = getelementptr inbounds %struct.dm_transaction_manager, %struct.dm_transaction_manager* %25, i32 0, i32 2
  store %struct.dm_space_map* %24, %struct.dm_space_map** %26, align 8
  %27 = load %struct.dm_transaction_manager*, %struct.dm_transaction_manager** %7, align 8
  %28 = getelementptr inbounds %struct.dm_transaction_manager, %struct.dm_transaction_manager* %27, i32 0, i32 1
  %29 = call i32 @spin_lock_init(i32* %28)
  store i32 0, i32* %6, align 4
  br label %30

30:                                               ; preds = %42, %16
  %31 = load i32, i32* %6, align 4
  %32 = load i32, i32* @DM_HASH_SIZE, align 4
  %33 = icmp slt i32 %31, %32
  br i1 %33, label %34, label %45

34:                                               ; preds = %30
  %35 = load %struct.dm_transaction_manager*, %struct.dm_transaction_manager** %7, align 8
  %36 = getelementptr inbounds %struct.dm_transaction_manager, %struct.dm_transaction_manager* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i32, i32* %6, align 4
  %39 = sext i32 %38 to i64
  %40 = add nsw i64 %37, %39
  %41 = call i32 @INIT_HLIST_HEAD(i64 %40)
  br label %42

42:                                               ; preds = %34
  %43 = load i32, i32* %6, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %6, align 4
  br label %30

45:                                               ; preds = %30
  %46 = load %struct.dm_transaction_manager*, %struct.dm_transaction_manager** %7, align 8
  store %struct.dm_transaction_manager* %46, %struct.dm_transaction_manager** %3, align 8
  br label %47

47:                                               ; preds = %45, %12
  %48 = load %struct.dm_transaction_manager*, %struct.dm_transaction_manager** %3, align 8
  ret %struct.dm_transaction_manager* %48
}

declare dso_local %struct.dm_transaction_manager* @kmalloc(i32, i32) #1

declare dso_local %struct.dm_transaction_manager* @ERR_PTR(i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @INIT_HLIST_HEAD(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
