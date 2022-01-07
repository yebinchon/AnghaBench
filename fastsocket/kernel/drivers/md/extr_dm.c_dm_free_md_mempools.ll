; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm.c_dm_free_md_mempools.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm.c_dm_free_md_mempools.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dm_md_mempools = type { i64, i64, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dm_free_md_mempools(%struct.dm_md_mempools* %0) #0 {
  %2 = alloca %struct.dm_md_mempools*, align 8
  store %struct.dm_md_mempools* %0, %struct.dm_md_mempools** %2, align 8
  %3 = load %struct.dm_md_mempools*, %struct.dm_md_mempools** %2, align 8
  %4 = icmp ne %struct.dm_md_mempools* %3, null
  br i1 %4, label %6, label %5

5:                                                ; preds = %1
  br label %39

6:                                                ; preds = %1
  %7 = load %struct.dm_md_mempools*, %struct.dm_md_mempools** %2, align 8
  %8 = getelementptr inbounds %struct.dm_md_mempools, %struct.dm_md_mempools* %7, i32 0, i32 2
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %16

11:                                               ; preds = %6
  %12 = load %struct.dm_md_mempools*, %struct.dm_md_mempools** %2, align 8
  %13 = getelementptr inbounds %struct.dm_md_mempools, %struct.dm_md_mempools* %12, i32 0, i32 2
  %14 = load i64, i64* %13, align 8
  %15 = call i32 @mempool_destroy(i64 %14)
  br label %16

16:                                               ; preds = %11, %6
  %17 = load %struct.dm_md_mempools*, %struct.dm_md_mempools** %2, align 8
  %18 = getelementptr inbounds %struct.dm_md_mempools, %struct.dm_md_mempools* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %26

21:                                               ; preds = %16
  %22 = load %struct.dm_md_mempools*, %struct.dm_md_mempools** %2, align 8
  %23 = getelementptr inbounds %struct.dm_md_mempools, %struct.dm_md_mempools* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = call i32 @mempool_destroy(i64 %24)
  br label %26

26:                                               ; preds = %21, %16
  %27 = load %struct.dm_md_mempools*, %struct.dm_md_mempools** %2, align 8
  %28 = getelementptr inbounds %struct.dm_md_mempools, %struct.dm_md_mempools* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %36

31:                                               ; preds = %26
  %32 = load %struct.dm_md_mempools*, %struct.dm_md_mempools** %2, align 8
  %33 = getelementptr inbounds %struct.dm_md_mempools, %struct.dm_md_mempools* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = call i32 @bioset_free(i64 %34)
  br label %36

36:                                               ; preds = %31, %26
  %37 = load %struct.dm_md_mempools*, %struct.dm_md_mempools** %2, align 8
  %38 = call i32 @kfree(%struct.dm_md_mempools* %37)
  br label %39

39:                                               ; preds = %36, %5
  ret void
}

declare dso_local i32 @mempool_destroy(i64) #1

declare dso_local i32 @bioset_free(i64) #1

declare dso_local i32 @kfree(%struct.dm_md_mempools*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
