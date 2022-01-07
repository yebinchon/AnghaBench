; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-table.c_dm_table_create.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-table.c_dm_table_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dm_table = type { %struct.mapped_device*, i32, i32, i32, i32 }
%struct.mapped_device = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@KEYS_PER_NODE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dm_table_create(%struct.dm_table** %0, i32 %1, i32 %2, %struct.mapped_device* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.dm_table**, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.mapped_device*, align 8
  %10 = alloca %struct.dm_table*, align 8
  store %struct.dm_table** %0, %struct.dm_table*** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store %struct.mapped_device* %3, %struct.mapped_device** %9, align 8
  %11 = load i32, i32* @GFP_KERNEL, align 4
  %12 = call %struct.dm_table* @kzalloc(i32 24, i32 %11)
  store %struct.dm_table* %12, %struct.dm_table** %10, align 8
  %13 = load %struct.dm_table*, %struct.dm_table** %10, align 8
  %14 = icmp ne %struct.dm_table* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %4
  %16 = load i32, i32* @ENOMEM, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %5, align 4
  br label %54

18:                                               ; preds = %4
  %19 = load %struct.dm_table*, %struct.dm_table** %10, align 8
  %20 = getelementptr inbounds %struct.dm_table, %struct.dm_table* %19, i32 0, i32 4
  %21 = call i32 @INIT_LIST_HEAD(i32* %20)
  %22 = load %struct.dm_table*, %struct.dm_table** %10, align 8
  %23 = getelementptr inbounds %struct.dm_table, %struct.dm_table* %22, i32 0, i32 3
  %24 = call i32 @INIT_LIST_HEAD(i32* %23)
  %25 = load %struct.dm_table*, %struct.dm_table** %10, align 8
  %26 = getelementptr inbounds %struct.dm_table, %struct.dm_table* %25, i32 0, i32 2
  %27 = call i32 @atomic_set(i32* %26, i32 0)
  %28 = load i32, i32* %8, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %32, label %30

30:                                               ; preds = %18
  %31 = load i32, i32* @KEYS_PER_NODE, align 4
  store i32 %31, i32* %8, align 4
  br label %32

32:                                               ; preds = %30, %18
  %33 = load i32, i32* %8, align 4
  %34 = load i32, i32* @KEYS_PER_NODE, align 4
  %35 = call i32 @dm_round_up(i32 %33, i32 %34)
  store i32 %35, i32* %8, align 4
  %36 = load %struct.dm_table*, %struct.dm_table** %10, align 8
  %37 = load i32, i32* %8, align 4
  %38 = call i64 @alloc_targets(%struct.dm_table* %36, i32 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %45

40:                                               ; preds = %32
  %41 = load %struct.dm_table*, %struct.dm_table** %10, align 8
  %42 = call i32 @kfree(%struct.dm_table* %41)
  %43 = load i32, i32* @ENOMEM, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %5, align 4
  br label %54

45:                                               ; preds = %32
  %46 = load i32, i32* %7, align 4
  %47 = load %struct.dm_table*, %struct.dm_table** %10, align 8
  %48 = getelementptr inbounds %struct.dm_table, %struct.dm_table* %47, i32 0, i32 1
  store i32 %46, i32* %48, align 8
  %49 = load %struct.mapped_device*, %struct.mapped_device** %9, align 8
  %50 = load %struct.dm_table*, %struct.dm_table** %10, align 8
  %51 = getelementptr inbounds %struct.dm_table, %struct.dm_table* %50, i32 0, i32 0
  store %struct.mapped_device* %49, %struct.mapped_device** %51, align 8
  %52 = load %struct.dm_table*, %struct.dm_table** %10, align 8
  %53 = load %struct.dm_table**, %struct.dm_table*** %6, align 8
  store %struct.dm_table* %52, %struct.dm_table** %53, align 8
  store i32 0, i32* %5, align 4
  br label %54

54:                                               ; preds = %45, %40, %15
  %55 = load i32, i32* %5, align 4
  ret i32 %55
}

declare dso_local %struct.dm_table* @kzalloc(i32, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @dm_round_up(i32, i32) #1

declare dso_local i64 @alloc_targets(%struct.dm_table*, i32) #1

declare dso_local i32 @kfree(%struct.dm_table*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
