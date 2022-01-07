; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/md/persistent-data/extr_dm-btree.c_prefetch_children.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/md/persistent-data/extr_dm-btree.c_prefetch_children.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.del_stack = type { i32 }
%struct.frame = type { i32, i32 }
%struct.dm_block_manager = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.del_stack*, %struct.frame*)* @prefetch_children to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @prefetch_children(%struct.del_stack* %0, %struct.frame* %1) #0 {
  %3 = alloca %struct.del_stack*, align 8
  %4 = alloca %struct.frame*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.dm_block_manager*, align 8
  store %struct.del_stack* %0, %struct.del_stack** %3, align 8
  store %struct.frame* %1, %struct.frame** %4, align 8
  %7 = load %struct.del_stack*, %struct.del_stack** %3, align 8
  %8 = getelementptr inbounds %struct.del_stack, %struct.del_stack* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call %struct.dm_block_manager* @dm_tm_get_bm(i32 %9)
  store %struct.dm_block_manager* %10, %struct.dm_block_manager** %6, align 8
  store i32 0, i32* %5, align 4
  br label %11

11:                                               ; preds = %25, %2
  %12 = load i32, i32* %5, align 4
  %13 = load %struct.frame*, %struct.frame** %4, align 8
  %14 = getelementptr inbounds %struct.frame, %struct.frame* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = icmp ult i32 %12, %15
  br i1 %16, label %17, label %28

17:                                               ; preds = %11
  %18 = load %struct.dm_block_manager*, %struct.dm_block_manager** %6, align 8
  %19 = load %struct.frame*, %struct.frame** %4, align 8
  %20 = getelementptr inbounds %struct.frame, %struct.frame* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* %5, align 4
  %23 = call i32 @value64(i32 %21, i32 %22)
  %24 = call i32 @dm_bm_prefetch(%struct.dm_block_manager* %18, i32 %23)
  br label %25

25:                                               ; preds = %17
  %26 = load i32, i32* %5, align 4
  %27 = add i32 %26, 1
  store i32 %27, i32* %5, align 4
  br label %11

28:                                               ; preds = %11
  ret void
}

declare dso_local %struct.dm_block_manager* @dm_tm_get_bm(i32) #1

declare dso_local i32 @dm_bm_prefetch(%struct.dm_block_manager*, i32) #1

declare dso_local i32 @value64(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
