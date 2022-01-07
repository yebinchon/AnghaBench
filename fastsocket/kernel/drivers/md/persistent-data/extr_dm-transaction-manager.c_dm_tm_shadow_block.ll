; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/md/persistent-data/extr_dm-transaction-manager.c_dm_tm_shadow_block.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/md/persistent-data/extr_dm-transaction-manager.c_dm_tm_shadow_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dm_transaction_manager = type { i32, i32, i64 }
%struct.dm_block_validator = type { i32 }
%struct.dm_block = type { i32 }

@EWOULDBLOCK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dm_tm_shadow_block(%struct.dm_transaction_manager* %0, i32 %1, %struct.dm_block_validator* %2, %struct.dm_block** %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.dm_transaction_manager*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.dm_block_validator*, align 8
  %10 = alloca %struct.dm_block**, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  store %struct.dm_transaction_manager* %0, %struct.dm_transaction_manager** %7, align 8
  store i32 %1, i32* %8, align 4
  store %struct.dm_block_validator* %2, %struct.dm_block_validator** %9, align 8
  store %struct.dm_block** %3, %struct.dm_block*** %10, align 8
  store i32* %4, i32** %11, align 8
  %13 = load %struct.dm_transaction_manager*, %struct.dm_transaction_manager** %7, align 8
  %14 = getelementptr inbounds %struct.dm_transaction_manager, %struct.dm_transaction_manager* %13, i32 0, i32 2
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %5
  %18 = load i32, i32* @EWOULDBLOCK, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %6, align 4
  br label %65

20:                                               ; preds = %5
  %21 = load %struct.dm_transaction_manager*, %struct.dm_transaction_manager** %7, align 8
  %22 = getelementptr inbounds %struct.dm_transaction_manager, %struct.dm_transaction_manager* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* %8, align 4
  %25 = load i32*, i32** %11, align 8
  %26 = call i32 @dm_sm_count_is_more_than_one(i32 %23, i32 %24, i32* %25)
  store i32 %26, i32* %12, align 4
  %27 = load i32, i32* %12, align 4
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %20
  %30 = load i32, i32* %12, align 4
  store i32 %30, i32* %6, align 4
  br label %65

31:                                               ; preds = %20
  %32 = load %struct.dm_transaction_manager*, %struct.dm_transaction_manager** %7, align 8
  %33 = load i32, i32* %8, align 4
  %34 = call i64 @is_shadow(%struct.dm_transaction_manager* %32, i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %48

36:                                               ; preds = %31
  %37 = load i32*, i32** %11, align 8
  %38 = load i32, i32* %37, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %48, label %40

40:                                               ; preds = %36
  %41 = load %struct.dm_transaction_manager*, %struct.dm_transaction_manager** %7, align 8
  %42 = getelementptr inbounds %struct.dm_transaction_manager, %struct.dm_transaction_manager* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = load i32, i32* %8, align 4
  %45 = load %struct.dm_block_validator*, %struct.dm_block_validator** %9, align 8
  %46 = load %struct.dm_block**, %struct.dm_block*** %10, align 8
  %47 = call i32 @dm_bm_write_lock(i32 %43, i32 %44, %struct.dm_block_validator* %45, %struct.dm_block** %46)
  store i32 %47, i32* %6, align 4
  br label %65

48:                                               ; preds = %36, %31
  %49 = load %struct.dm_transaction_manager*, %struct.dm_transaction_manager** %7, align 8
  %50 = load i32, i32* %8, align 4
  %51 = load %struct.dm_block_validator*, %struct.dm_block_validator** %9, align 8
  %52 = load %struct.dm_block**, %struct.dm_block*** %10, align 8
  %53 = call i32 @__shadow_block(%struct.dm_transaction_manager* %49, i32 %50, %struct.dm_block_validator* %51, %struct.dm_block** %52)
  store i32 %53, i32* %12, align 4
  %54 = load i32, i32* %12, align 4
  %55 = icmp slt i32 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %48
  %57 = load i32, i32* %12, align 4
  store i32 %57, i32* %6, align 4
  br label %65

58:                                               ; preds = %48
  %59 = load %struct.dm_transaction_manager*, %struct.dm_transaction_manager** %7, align 8
  %60 = load %struct.dm_block**, %struct.dm_block*** %10, align 8
  %61 = load %struct.dm_block*, %struct.dm_block** %60, align 8
  %62 = call i32 @dm_block_location(%struct.dm_block* %61)
  %63 = call i32 @insert_shadow(%struct.dm_transaction_manager* %59, i32 %62)
  %64 = load i32, i32* %12, align 4
  store i32 %64, i32* %6, align 4
  br label %65

65:                                               ; preds = %58, %56, %40, %29, %17
  %66 = load i32, i32* %6, align 4
  ret i32 %66
}

declare dso_local i32 @dm_sm_count_is_more_than_one(i32, i32, i32*) #1

declare dso_local i64 @is_shadow(%struct.dm_transaction_manager*, i32) #1

declare dso_local i32 @dm_bm_write_lock(i32, i32, %struct.dm_block_validator*, %struct.dm_block**) #1

declare dso_local i32 @__shadow_block(%struct.dm_transaction_manager*, i32, %struct.dm_block_validator*, %struct.dm_block**) #1

declare dso_local i32 @insert_shadow(%struct.dm_transaction_manager*, i32) #1

declare dso_local i32 @dm_block_location(%struct.dm_block*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
