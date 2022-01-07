; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-table.c_dm_table_set_integrity.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-table.c_dm_table_set_integrity.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dm_table = type { i32 }
%struct.gendisk = type { i32 }

@.str = private unnamed_addr constant [51 x i8] c"%s: device no longer has a valid integrity profile\00", align 1
@.str.1 = private unnamed_addr constant [45 x i8] c"%s: unable to establish an integrity profile\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dm_table*)* @dm_table_set_integrity to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dm_table_set_integrity(%struct.dm_table* %0) #0 {
  %2 = alloca %struct.dm_table*, align 8
  %3 = alloca %struct.gendisk*, align 8
  store %struct.dm_table* %0, %struct.dm_table** %2, align 8
  store %struct.gendisk* null, %struct.gendisk** %3, align 8
  %4 = load %struct.dm_table*, %struct.dm_table** %2, align 8
  %5 = getelementptr inbounds %struct.dm_table, %struct.dm_table* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  %7 = call %struct.gendisk* @dm_disk(i32 %6)
  %8 = call i32 @blk_get_integrity(%struct.gendisk* %7)
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %1
  br label %44

11:                                               ; preds = %1
  %12 = load %struct.dm_table*, %struct.dm_table** %2, align 8
  %13 = call %struct.gendisk* @dm_table_get_integrity_disk(%struct.dm_table* %12, i32 1)
  store %struct.gendisk* %13, %struct.gendisk** %3, align 8
  %14 = load %struct.gendisk*, %struct.gendisk** %3, align 8
  %15 = icmp ne %struct.gendisk* %14, null
  br i1 %15, label %16, label %24

16:                                               ; preds = %11
  %17 = load %struct.dm_table*, %struct.dm_table** %2, align 8
  %18 = getelementptr inbounds %struct.dm_table, %struct.dm_table* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call %struct.gendisk* @dm_disk(i32 %19)
  %21 = load %struct.gendisk*, %struct.gendisk** %3, align 8
  %22 = call i32 @blk_get_integrity(%struct.gendisk* %21)
  %23 = call i32 @blk_integrity_register(%struct.gendisk* %20, i32 %22)
  br label %44

24:                                               ; preds = %11
  %25 = load %struct.dm_table*, %struct.dm_table** %2, align 8
  %26 = getelementptr inbounds %struct.dm_table, %struct.dm_table* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call %struct.gendisk* @dm_disk(i32 %27)
  %29 = call i64 @blk_integrity_is_initialized(%struct.gendisk* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %37

31:                                               ; preds = %24
  %32 = load %struct.dm_table*, %struct.dm_table** %2, align 8
  %33 = getelementptr inbounds %struct.dm_table, %struct.dm_table* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @dm_device_name(i32 %34)
  %36 = call i32 @DMWARN(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0), i32 %35)
  br label %43

37:                                               ; preds = %24
  %38 = load %struct.dm_table*, %struct.dm_table** %2, align 8
  %39 = getelementptr inbounds %struct.dm_table, %struct.dm_table* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @dm_device_name(i32 %40)
  %42 = call i32 @DMWARN(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0), i32 %41)
  br label %43

43:                                               ; preds = %37, %31
  br label %44

44:                                               ; preds = %10, %43, %16
  ret void
}

declare dso_local i32 @blk_get_integrity(%struct.gendisk*) #1

declare dso_local %struct.gendisk* @dm_disk(i32) #1

declare dso_local %struct.gendisk* @dm_table_get_integrity_disk(%struct.dm_table*, i32) #1

declare dso_local i32 @blk_integrity_register(%struct.gendisk*, i32) #1

declare dso_local i64 @blk_integrity_is_initialized(%struct.gendisk*) #1

declare dso_local i32 @DMWARN(i8*, i32) #1

declare dso_local i32 @dm_device_name(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
