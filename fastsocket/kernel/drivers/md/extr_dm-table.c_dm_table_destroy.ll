; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-table.c_dm_table_destroy.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-table.c_dm_table_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dm_table = type { i32, i32, i32, i32, i32, %struct.dm_target*, i32*, i32 }
%struct.dm_target = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.dm_target*)* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dm_table_destroy(%struct.dm_table* %0) #0 {
  %2 = alloca %struct.dm_table*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.dm_target*, align 8
  store %struct.dm_table* %0, %struct.dm_table** %2, align 8
  %5 = load %struct.dm_table*, %struct.dm_table** %2, align 8
  %6 = icmp ne %struct.dm_table* %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %1
  br label %84

8:                                                ; preds = %1
  br label %9

9:                                                ; preds = %14, %8
  %10 = load %struct.dm_table*, %struct.dm_table** %2, align 8
  %11 = getelementptr inbounds %struct.dm_table, %struct.dm_table* %10, i32 0, i32 7
  %12 = call i64 @atomic_read(i32* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %9
  %15 = call i32 @msleep(i32 1)
  br label %9

16:                                               ; preds = %9
  %17 = call i32 (...) @smp_mb()
  %18 = load %struct.dm_table*, %struct.dm_table** %2, align 8
  %19 = getelementptr inbounds %struct.dm_table, %struct.dm_table* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = icmp sge i32 %20, 2
  br i1 %21, label %22, label %34

22:                                               ; preds = %16
  %23 = load %struct.dm_table*, %struct.dm_table** %2, align 8
  %24 = getelementptr inbounds %struct.dm_table, %struct.dm_table* %23, i32 0, i32 6
  %25 = load i32*, i32** %24, align 8
  %26 = load %struct.dm_table*, %struct.dm_table** %2, align 8
  %27 = getelementptr inbounds %struct.dm_table, %struct.dm_table* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = sub nsw i32 %28, 2
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i32, i32* %25, i64 %30
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @vfree(i32 %32)
  br label %34

34:                                               ; preds = %22, %16
  store i32 0, i32* %3, align 4
  br label %35

35:                                               ; preds = %67, %34
  %36 = load i32, i32* %3, align 4
  %37 = load %struct.dm_table*, %struct.dm_table** %2, align 8
  %38 = getelementptr inbounds %struct.dm_table, %struct.dm_table* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = icmp ult i32 %36, %39
  br i1 %40, label %41, label %70

41:                                               ; preds = %35
  %42 = load %struct.dm_table*, %struct.dm_table** %2, align 8
  %43 = getelementptr inbounds %struct.dm_table, %struct.dm_table* %42, i32 0, i32 5
  %44 = load %struct.dm_target*, %struct.dm_target** %43, align 8
  %45 = load i32, i32* %3, align 4
  %46 = zext i32 %45 to i64
  %47 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %44, i64 %46
  store %struct.dm_target* %47, %struct.dm_target** %4, align 8
  %48 = load %struct.dm_target*, %struct.dm_target** %4, align 8
  %49 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %48, i32 0, i32 0
  %50 = load %struct.TYPE_2__*, %struct.TYPE_2__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 0
  %52 = load i32 (%struct.dm_target*)*, i32 (%struct.dm_target*)** %51, align 8
  %53 = icmp ne i32 (%struct.dm_target*)* %52, null
  br i1 %53, label %54, label %62

54:                                               ; preds = %41
  %55 = load %struct.dm_target*, %struct.dm_target** %4, align 8
  %56 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %55, i32 0, i32 0
  %57 = load %struct.TYPE_2__*, %struct.TYPE_2__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 0
  %59 = load i32 (%struct.dm_target*)*, i32 (%struct.dm_target*)** %58, align 8
  %60 = load %struct.dm_target*, %struct.dm_target** %4, align 8
  %61 = call i32 %59(%struct.dm_target* %60)
  br label %62

62:                                               ; preds = %54, %41
  %63 = load %struct.dm_target*, %struct.dm_target** %4, align 8
  %64 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %63, i32 0, i32 0
  %65 = load %struct.TYPE_2__*, %struct.TYPE_2__** %64, align 8
  %66 = call i32 @dm_put_target_type(%struct.TYPE_2__* %65)
  br label %67

67:                                               ; preds = %62
  %68 = load i32, i32* %3, align 4
  %69 = add i32 %68, 1
  store i32 %69, i32* %3, align 4
  br label %35

70:                                               ; preds = %35
  %71 = load %struct.dm_table*, %struct.dm_table** %2, align 8
  %72 = getelementptr inbounds %struct.dm_table, %struct.dm_table* %71, i32 0, i32 4
  %73 = load i32, i32* %72, align 8
  %74 = call i32 @vfree(i32 %73)
  %75 = load %struct.dm_table*, %struct.dm_table** %2, align 8
  %76 = getelementptr inbounds %struct.dm_table, %struct.dm_table* %75, i32 0, i32 3
  %77 = call i32 @free_devices(i32* %76)
  %78 = load %struct.dm_table*, %struct.dm_table** %2, align 8
  %79 = getelementptr inbounds %struct.dm_table, %struct.dm_table* %78, i32 0, i32 2
  %80 = load i32, i32* %79, align 8
  %81 = call i32 @dm_free_md_mempools(i32 %80)
  %82 = load %struct.dm_table*, %struct.dm_table** %2, align 8
  %83 = call i32 @kfree(%struct.dm_table* %82)
  br label %84

84:                                               ; preds = %70, %7
  ret void
}

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @smp_mb(...) #1

declare dso_local i32 @vfree(i32) #1

declare dso_local i32 @dm_put_target_type(%struct.TYPE_2__*) #1

declare dso_local i32 @free_devices(i32*) #1

declare dso_local i32 @dm_free_md_mempools(i32) #1

declare dso_local i32 @kfree(%struct.dm_table*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
