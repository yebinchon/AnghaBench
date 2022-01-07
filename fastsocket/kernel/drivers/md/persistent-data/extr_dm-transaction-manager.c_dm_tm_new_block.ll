; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/md/persistent-data/extr_dm-transaction-manager.c_dm_tm_new_block.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/md/persistent-data/extr_dm-transaction-manager.c_dm_tm_new_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dm_transaction_manager = type { i32, i32, i64 }
%struct.dm_block_validator = type { i32 }
%struct.dm_block = type { i32 }

@EWOULDBLOCK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dm_tm_new_block(%struct.dm_transaction_manager* %0, %struct.dm_block_validator* %1, %struct.dm_block** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.dm_transaction_manager*, align 8
  %6 = alloca %struct.dm_block_validator*, align 8
  %7 = alloca %struct.dm_block**, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.dm_transaction_manager* %0, %struct.dm_transaction_manager** %5, align 8
  store %struct.dm_block_validator* %1, %struct.dm_block_validator** %6, align 8
  store %struct.dm_block** %2, %struct.dm_block*** %7, align 8
  %10 = load %struct.dm_transaction_manager*, %struct.dm_transaction_manager** %5, align 8
  %11 = getelementptr inbounds %struct.dm_transaction_manager, %struct.dm_transaction_manager* %10, i32 0, i32 2
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %3
  %15 = load i32, i32* @EWOULDBLOCK, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %4, align 4
  br label %47

17:                                               ; preds = %3
  %18 = load %struct.dm_transaction_manager*, %struct.dm_transaction_manager** %5, align 8
  %19 = getelementptr inbounds %struct.dm_transaction_manager, %struct.dm_transaction_manager* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = call i32 @dm_sm_new_block(i32 %20, i32* %9)
  store i32 %21, i32* %8, align 4
  %22 = load i32, i32* %8, align 4
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %17
  %25 = load i32, i32* %8, align 4
  store i32 %25, i32* %4, align 4
  br label %47

26:                                               ; preds = %17
  %27 = load %struct.dm_transaction_manager*, %struct.dm_transaction_manager** %5, align 8
  %28 = getelementptr inbounds %struct.dm_transaction_manager, %struct.dm_transaction_manager* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* %9, align 4
  %31 = load %struct.dm_block_validator*, %struct.dm_block_validator** %6, align 8
  %32 = load %struct.dm_block**, %struct.dm_block*** %7, align 8
  %33 = call i32 @dm_bm_write_lock_zero(i32 %29, i32 %30, %struct.dm_block_validator* %31, %struct.dm_block** %32)
  store i32 %33, i32* %8, align 4
  %34 = load i32, i32* %8, align 4
  %35 = icmp slt i32 %34, 0
  br i1 %35, label %36, label %43

36:                                               ; preds = %26
  %37 = load %struct.dm_transaction_manager*, %struct.dm_transaction_manager** %5, align 8
  %38 = getelementptr inbounds %struct.dm_transaction_manager, %struct.dm_transaction_manager* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = load i32, i32* %9, align 4
  %41 = call i32 @dm_sm_dec_block(i32 %39, i32 %40)
  %42 = load i32, i32* %8, align 4
  store i32 %42, i32* %4, align 4
  br label %47

43:                                               ; preds = %26
  %44 = load %struct.dm_transaction_manager*, %struct.dm_transaction_manager** %5, align 8
  %45 = load i32, i32* %9, align 4
  %46 = call i32 @insert_shadow(%struct.dm_transaction_manager* %44, i32 %45)
  store i32 0, i32* %4, align 4
  br label %47

47:                                               ; preds = %43, %36, %24, %14
  %48 = load i32, i32* %4, align 4
  ret i32 %48
}

declare dso_local i32 @dm_sm_new_block(i32, i32*) #1

declare dso_local i32 @dm_bm_write_lock_zero(i32, i32, %struct.dm_block_validator*, %struct.dm_block**) #1

declare dso_local i32 @dm_sm_dec_block(i32, i32) #1

declare dso_local i32 @insert_shadow(%struct.dm_transaction_manager*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
