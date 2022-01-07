; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-thin-metadata.c___create_thin.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-thin-metadata.c___create_thin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dm_pool_metadata = type { i32, i32, i32, i32, i32 }
%struct.disk_device_details = type { i32 }
%struct.dm_thin_device = type { i32 }

@EEXIST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dm_pool_metadata*, i32)* @__create_thin to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__create_thin(%struct.dm_pool_metadata* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dm_pool_metadata*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.disk_device_details, align 4
  %10 = alloca %struct.dm_thin_device*, align 8
  %11 = alloca i32, align 4
  store %struct.dm_pool_metadata* %0, %struct.dm_pool_metadata** %4, align 8
  store i32 %1, i32* %5, align 4
  %12 = load i32, i32* %5, align 4
  store i32 %12, i32* %8, align 4
  %13 = load %struct.dm_pool_metadata*, %struct.dm_pool_metadata** %4, align 8
  %14 = getelementptr inbounds %struct.dm_pool_metadata, %struct.dm_pool_metadata* %13, i32 0, i32 4
  %15 = load %struct.dm_pool_metadata*, %struct.dm_pool_metadata** %4, align 8
  %16 = getelementptr inbounds %struct.dm_pool_metadata, %struct.dm_pool_metadata* %15, i32 0, i32 3
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @dm_btree_lookup(i32* %14, i32 %17, i32* %8, %struct.disk_device_details* %9)
  store i32 %18, i32* %6, align 4
  %19 = load i32, i32* %6, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %24, label %21

21:                                               ; preds = %2
  %22 = load i32, i32* @EEXIST, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %3, align 4
  br label %76

24:                                               ; preds = %2
  %25 = load %struct.dm_pool_metadata*, %struct.dm_pool_metadata** %4, align 8
  %26 = getelementptr inbounds %struct.dm_pool_metadata, %struct.dm_pool_metadata* %25, i32 0, i32 0
  %27 = call i32 @dm_btree_empty(i32* %26, i32* %7)
  store i32 %27, i32* %6, align 4
  %28 = load i32, i32* %6, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %24
  %31 = load i32, i32* %6, align 4
  store i32 %31, i32* %3, align 4
  br label %76

32:                                               ; preds = %24
  %33 = load i32, i32* %7, align 4
  %34 = call i32 @cpu_to_le64(i32 %33)
  store i32 %34, i32* %11, align 4
  %35 = call i32 @__dm_bless_for_disk(i32* %11)
  %36 = load %struct.dm_pool_metadata*, %struct.dm_pool_metadata** %4, align 8
  %37 = getelementptr inbounds %struct.dm_pool_metadata, %struct.dm_pool_metadata* %36, i32 0, i32 2
  %38 = load %struct.dm_pool_metadata*, %struct.dm_pool_metadata** %4, align 8
  %39 = getelementptr inbounds %struct.dm_pool_metadata, %struct.dm_pool_metadata* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.dm_pool_metadata*, %struct.dm_pool_metadata** %4, align 8
  %42 = getelementptr inbounds %struct.dm_pool_metadata, %struct.dm_pool_metadata* %41, i32 0, i32 1
  %43 = call i32 @dm_btree_insert(i32* %37, i32 %40, i32* %8, i32* %11, i32* %42)
  store i32 %43, i32* %6, align 4
  %44 = load i32, i32* %6, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %52

46:                                               ; preds = %32
  %47 = load %struct.dm_pool_metadata*, %struct.dm_pool_metadata** %4, align 8
  %48 = getelementptr inbounds %struct.dm_pool_metadata, %struct.dm_pool_metadata* %47, i32 0, i32 0
  %49 = load i32, i32* %7, align 4
  %50 = call i32 @dm_btree_del(i32* %48, i32 %49)
  %51 = load i32, i32* %6, align 4
  store i32 %51, i32* %3, align 4
  br label %76

52:                                               ; preds = %32
  %53 = load %struct.dm_pool_metadata*, %struct.dm_pool_metadata** %4, align 8
  %54 = load i32, i32* %5, align 4
  %55 = call i32 @__open_device(%struct.dm_pool_metadata* %53, i32 %54, i32 1, %struct.dm_thin_device** %10)
  store i32 %55, i32* %6, align 4
  %56 = load i32, i32* %6, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %72

58:                                               ; preds = %52
  %59 = load %struct.dm_pool_metadata*, %struct.dm_pool_metadata** %4, align 8
  %60 = getelementptr inbounds %struct.dm_pool_metadata, %struct.dm_pool_metadata* %59, i32 0, i32 2
  %61 = load %struct.dm_pool_metadata*, %struct.dm_pool_metadata** %4, align 8
  %62 = getelementptr inbounds %struct.dm_pool_metadata, %struct.dm_pool_metadata* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.dm_pool_metadata*, %struct.dm_pool_metadata** %4, align 8
  %65 = getelementptr inbounds %struct.dm_pool_metadata, %struct.dm_pool_metadata* %64, i32 0, i32 1
  %66 = call i32 @dm_btree_remove(i32* %60, i32 %63, i32* %8, i32* %65)
  %67 = load %struct.dm_pool_metadata*, %struct.dm_pool_metadata** %4, align 8
  %68 = getelementptr inbounds %struct.dm_pool_metadata, %struct.dm_pool_metadata* %67, i32 0, i32 0
  %69 = load i32, i32* %7, align 4
  %70 = call i32 @dm_btree_del(i32* %68, i32 %69)
  %71 = load i32, i32* %6, align 4
  store i32 %71, i32* %3, align 4
  br label %76

72:                                               ; preds = %52
  %73 = load %struct.dm_thin_device*, %struct.dm_thin_device** %10, align 8
  %74 = call i32 @__close_device(%struct.dm_thin_device* %73)
  %75 = load i32, i32* %6, align 4
  store i32 %75, i32* %3, align 4
  br label %76

76:                                               ; preds = %72, %58, %46, %30, %21
  %77 = load i32, i32* %3, align 4
  ret i32 %77
}

declare dso_local i32 @dm_btree_lookup(i32*, i32, i32*, %struct.disk_device_details*) #1

declare dso_local i32 @dm_btree_empty(i32*, i32*) #1

declare dso_local i32 @cpu_to_le64(i32) #1

declare dso_local i32 @__dm_bless_for_disk(i32*) #1

declare dso_local i32 @dm_btree_insert(i32*, i32, i32*, i32*, i32*) #1

declare dso_local i32 @dm_btree_del(i32*, i32) #1

declare dso_local i32 @__open_device(%struct.dm_pool_metadata*, i32, i32, %struct.dm_thin_device**) #1

declare dso_local i32 @dm_btree_remove(i32*, i32, i32*, i32*) #1

declare dso_local i32 @__close_device(%struct.dm_thin_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
