; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-thin-metadata.c___remove.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-thin-metadata.c___remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dm_thin_device = type { i32, i32, i32, %struct.dm_pool_metadata* }
%struct.dm_pool_metadata = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dm_thin_device*, i32)* @__remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__remove(%struct.dm_thin_device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dm_thin_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.dm_pool_metadata*, align 8
  %8 = alloca [2 x i32], align 4
  store %struct.dm_thin_device* %0, %struct.dm_thin_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.dm_thin_device*, %struct.dm_thin_device** %4, align 8
  %10 = getelementptr inbounds %struct.dm_thin_device, %struct.dm_thin_device* %9, i32 0, i32 3
  %11 = load %struct.dm_pool_metadata*, %struct.dm_pool_metadata** %10, align 8
  store %struct.dm_pool_metadata* %11, %struct.dm_pool_metadata** %7, align 8
  %12 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 0
  %13 = load %struct.dm_thin_device*, %struct.dm_thin_device** %4, align 8
  %14 = getelementptr inbounds %struct.dm_thin_device, %struct.dm_thin_device* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 8
  store i32 %15, i32* %12, align 4
  %16 = getelementptr inbounds i32, i32* %12, i64 1
  %17 = load i32, i32* %5, align 4
  store i32 %17, i32* %16, align 4
  %18 = load %struct.dm_pool_metadata*, %struct.dm_pool_metadata** %7, align 8
  %19 = getelementptr inbounds %struct.dm_pool_metadata, %struct.dm_pool_metadata* %18, i32 0, i32 1
  %20 = load %struct.dm_pool_metadata*, %struct.dm_pool_metadata** %7, align 8
  %21 = getelementptr inbounds %struct.dm_pool_metadata, %struct.dm_pool_metadata* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 0
  %24 = load %struct.dm_pool_metadata*, %struct.dm_pool_metadata** %7, align 8
  %25 = getelementptr inbounds %struct.dm_pool_metadata, %struct.dm_pool_metadata* %24, i32 0, i32 0
  %26 = call i32 @dm_btree_remove(i32* %19, i32 %22, i32* %23, i32* %25)
  store i32 %26, i32* %6, align 4
  %27 = load i32, i32* %6, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %2
  %30 = load i32, i32* %6, align 4
  store i32 %30, i32* %3, align 4
  br label %38

31:                                               ; preds = %2
  %32 = load %struct.dm_thin_device*, %struct.dm_thin_device** %4, align 8
  %33 = getelementptr inbounds %struct.dm_thin_device, %struct.dm_thin_device* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = add nsw i32 %34, -1
  store i32 %35, i32* %33, align 4
  %36 = load %struct.dm_thin_device*, %struct.dm_thin_device** %4, align 8
  %37 = getelementptr inbounds %struct.dm_thin_device, %struct.dm_thin_device* %36, i32 0, i32 0
  store i32 1, i32* %37, align 8
  store i32 0, i32* %3, align 4
  br label %38

38:                                               ; preds = %31, %29
  %39 = load i32, i32* %3, align 4
  ret i32 %39
}

declare dso_local i32 @dm_btree_remove(i32*, i32, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
