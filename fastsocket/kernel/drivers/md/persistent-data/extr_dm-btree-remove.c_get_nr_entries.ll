; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/md/persistent-data/extr_dm-btree-remove.c_get_nr_entries.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/md/persistent-data/extr_dm-btree-remove.c_get_nr_entries.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dm_transaction_manager = type { i32 }
%struct.dm_block = type { i32 }
%struct.btree_node = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@btree_node_validator = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dm_transaction_manager*, i32, i32*)* @get_nr_entries to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_nr_entries(%struct.dm_transaction_manager* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.dm_transaction_manager*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.dm_block*, align 8
  %10 = alloca %struct.btree_node*, align 8
  store %struct.dm_transaction_manager* %0, %struct.dm_transaction_manager** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %11 = load %struct.dm_transaction_manager*, %struct.dm_transaction_manager** %5, align 8
  %12 = load i32, i32* %6, align 4
  %13 = call i32 @dm_tm_read_lock(%struct.dm_transaction_manager* %11, i32 %12, i32* @btree_node_validator, %struct.dm_block** %9)
  store i32 %13, i32* %8, align 4
  %14 = load i32, i32* %8, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %3
  %17 = load i32, i32* %8, align 4
  store i32 %17, i32* %4, align 4
  br label %30

18:                                               ; preds = %3
  %19 = load %struct.dm_block*, %struct.dm_block** %9, align 8
  %20 = call %struct.btree_node* @dm_block_data(%struct.dm_block* %19)
  store %struct.btree_node* %20, %struct.btree_node** %10, align 8
  %21 = load %struct.btree_node*, %struct.btree_node** %10, align 8
  %22 = getelementptr inbounds %struct.btree_node, %struct.btree_node* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @le32_to_cpu(i32 %24)
  %26 = load i32*, i32** %7, align 8
  store i32 %25, i32* %26, align 4
  %27 = load %struct.dm_transaction_manager*, %struct.dm_transaction_manager** %5, align 8
  %28 = load %struct.dm_block*, %struct.dm_block** %9, align 8
  %29 = call i32 @dm_tm_unlock(%struct.dm_transaction_manager* %27, %struct.dm_block* %28)
  store i32 %29, i32* %4, align 4
  br label %30

30:                                               ; preds = %18, %16
  %31 = load i32, i32* %4, align 4
  ret i32 %31
}

declare dso_local i32 @dm_tm_read_lock(%struct.dm_transaction_manager*, i32, i32*, %struct.dm_block**) #1

declare dso_local %struct.btree_node* @dm_block_data(%struct.dm_block*) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @dm_tm_unlock(%struct.dm_transaction_manager*, %struct.dm_block*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
