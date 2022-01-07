; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-thin-metadata.c_save_sm_roots.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-thin-metadata.c_save_sm_roots.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dm_pool_metadata = type { i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dm_pool_metadata*)* @save_sm_roots to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @save_sm_roots(%struct.dm_pool_metadata* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dm_pool_metadata*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  store %struct.dm_pool_metadata* %0, %struct.dm_pool_metadata** %3, align 8
  %6 = load %struct.dm_pool_metadata*, %struct.dm_pool_metadata** %3, align 8
  %7 = getelementptr inbounds %struct.dm_pool_metadata, %struct.dm_pool_metadata* %6, i32 0, i32 3
  %8 = load i32, i32* %7, align 4
  %9 = call i32 @dm_sm_root_size(i32 %8, i64* %5)
  store i32 %9, i32* %4, align 4
  %10 = load i32, i32* %4, align 4
  %11 = icmp slt i32 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %1
  %13 = load i32, i32* %4, align 4
  store i32 %13, i32* %2, align 4
  br label %43

14:                                               ; preds = %1
  %15 = load %struct.dm_pool_metadata*, %struct.dm_pool_metadata** %3, align 8
  %16 = getelementptr inbounds %struct.dm_pool_metadata, %struct.dm_pool_metadata* %15, i32 0, i32 3
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.dm_pool_metadata*, %struct.dm_pool_metadata** %3, align 8
  %19 = getelementptr inbounds %struct.dm_pool_metadata, %struct.dm_pool_metadata* %18, i32 0, i32 2
  %20 = load i64, i64* %5, align 8
  %21 = call i32 @dm_sm_copy_root(i32 %17, i32* %19, i64 %20)
  store i32 %21, i32* %4, align 4
  %22 = load i32, i32* %4, align 4
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %14
  %25 = load i32, i32* %4, align 4
  store i32 %25, i32* %2, align 4
  br label %43

26:                                               ; preds = %14
  %27 = load %struct.dm_pool_metadata*, %struct.dm_pool_metadata** %3, align 8
  %28 = getelementptr inbounds %struct.dm_pool_metadata, %struct.dm_pool_metadata* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @dm_sm_root_size(i32 %29, i64* %5)
  store i32 %30, i32* %4, align 4
  %31 = load i32, i32* %4, align 4
  %32 = icmp slt i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %26
  %34 = load i32, i32* %4, align 4
  store i32 %34, i32* %2, align 4
  br label %43

35:                                               ; preds = %26
  %36 = load %struct.dm_pool_metadata*, %struct.dm_pool_metadata** %3, align 8
  %37 = getelementptr inbounds %struct.dm_pool_metadata, %struct.dm_pool_metadata* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.dm_pool_metadata*, %struct.dm_pool_metadata** %3, align 8
  %40 = getelementptr inbounds %struct.dm_pool_metadata, %struct.dm_pool_metadata* %39, i32 0, i32 0
  %41 = load i64, i64* %5, align 8
  %42 = call i32 @dm_sm_copy_root(i32 %38, i32* %40, i64 %41)
  store i32 %42, i32* %2, align 4
  br label %43

43:                                               ; preds = %35, %33, %24, %12
  %44 = load i32, i32* %2, align 4
  ret i32 %44
}

declare dso_local i32 @dm_sm_root_size(i32, i64*) #1

declare dso_local i32 @dm_sm_copy_root(i32, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
