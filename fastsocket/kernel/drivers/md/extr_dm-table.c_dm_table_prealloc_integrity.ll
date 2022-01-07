; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-table.c_dm_table_prealloc_integrity.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-table.c_dm_table_prealloc_integrity.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dm_table = type { i32, i32 }
%struct.mapped_device = type { i32 }
%struct.gendisk = type { i32 }

@.str = private unnamed_addr constant [66 x i8] c"%s: conflict with existing integrity profile: %s profile mismatch\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dm_table*, %struct.mapped_device*)* @dm_table_prealloc_integrity to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dm_table_prealloc_integrity(%struct.dm_table* %0, %struct.mapped_device* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dm_table*, align 8
  %5 = alloca %struct.mapped_device*, align 8
  %6 = alloca %struct.gendisk*, align 8
  store %struct.dm_table* %0, %struct.dm_table** %4, align 8
  store %struct.mapped_device* %1, %struct.mapped_device** %5, align 8
  store %struct.gendisk* null, %struct.gendisk** %6, align 8
  %7 = load %struct.dm_table*, %struct.dm_table** %4, align 8
  %8 = call %struct.gendisk* @dm_table_get_integrity_disk(%struct.dm_table* %7, i32 0)
  store %struct.gendisk* %8, %struct.gendisk** %6, align 8
  %9 = load %struct.gendisk*, %struct.gendisk** %6, align 8
  %10 = icmp ne %struct.gendisk* %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %45

12:                                               ; preds = %2
  %13 = load %struct.mapped_device*, %struct.mapped_device** %5, align 8
  %14 = call %struct.gendisk* @dm_disk(%struct.mapped_device* %13)
  %15 = call i64 @blk_integrity_is_initialized(%struct.gendisk* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %23, label %17

17:                                               ; preds = %12
  %18 = load %struct.dm_table*, %struct.dm_table** %4, align 8
  %19 = getelementptr inbounds %struct.dm_table, %struct.dm_table* %18, i32 0, i32 0
  store i32 1, i32* %19, align 4
  %20 = load %struct.mapped_device*, %struct.mapped_device** %5, align 8
  %21 = call %struct.gendisk* @dm_disk(%struct.mapped_device* %20)
  %22 = call i32 @blk_integrity_register(%struct.gendisk* %21, i32* null)
  store i32 %22, i32* %3, align 4
  br label %45

23:                                               ; preds = %12
  %24 = load %struct.gendisk*, %struct.gendisk** %6, align 8
  %25 = call i64 @blk_integrity_is_initialized(%struct.gendisk* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %42

27:                                               ; preds = %23
  %28 = load %struct.mapped_device*, %struct.mapped_device** %5, align 8
  %29 = call %struct.gendisk* @dm_disk(%struct.mapped_device* %28)
  %30 = load %struct.gendisk*, %struct.gendisk** %6, align 8
  %31 = call i64 @blk_integrity_compare(%struct.gendisk* %29, %struct.gendisk* %30)
  %32 = icmp slt i64 %31, 0
  br i1 %32, label %33, label %42

33:                                               ; preds = %27
  %34 = load %struct.dm_table*, %struct.dm_table** %4, align 8
  %35 = getelementptr inbounds %struct.dm_table, %struct.dm_table* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @dm_device_name(i32 %36)
  %38 = load %struct.gendisk*, %struct.gendisk** %6, align 8
  %39 = getelementptr inbounds %struct.gendisk, %struct.gendisk* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @DMWARN(i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str, i64 0, i64 0), i32 %37, i32 %40)
  store i32 1, i32* %3, align 4
  br label %45

42:                                               ; preds = %27, %23
  %43 = load %struct.dm_table*, %struct.dm_table** %4, align 8
  %44 = getelementptr inbounds %struct.dm_table, %struct.dm_table* %43, i32 0, i32 0
  store i32 1, i32* %44, align 4
  store i32 0, i32* %3, align 4
  br label %45

45:                                               ; preds = %42, %33, %17, %11
  %46 = load i32, i32* %3, align 4
  ret i32 %46
}

declare dso_local %struct.gendisk* @dm_table_get_integrity_disk(%struct.dm_table*, i32) #1

declare dso_local i64 @blk_integrity_is_initialized(%struct.gendisk*) #1

declare dso_local %struct.gendisk* @dm_disk(%struct.mapped_device*) #1

declare dso_local i32 @blk_integrity_register(%struct.gendisk*, i32*) #1

declare dso_local i64 @blk_integrity_compare(%struct.gendisk*, %struct.gendisk*) #1

declare dso_local i32 @DMWARN(i8*, i32, i32) #1

declare dso_local i32 @dm_device_name(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
