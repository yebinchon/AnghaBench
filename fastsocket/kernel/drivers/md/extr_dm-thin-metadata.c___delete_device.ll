; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-thin-metadata.c___delete_device.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-thin-metadata.c___delete_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dm_pool_metadata = type { i32, i32, i32, i32 }
%struct.dm_thin_device = type { i32, i32 }

@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dm_pool_metadata*, i32)* @__delete_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__delete_device(%struct.dm_pool_metadata* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dm_pool_metadata*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.dm_thin_device*, align 8
  store %struct.dm_pool_metadata* %0, %struct.dm_pool_metadata** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load i32, i32* %5, align 4
  store i32 %9, i32* %7, align 4
  %10 = load %struct.dm_pool_metadata*, %struct.dm_pool_metadata** %4, align 8
  %11 = load i32, i32* %5, align 4
  %12 = call i32 @__open_device(%struct.dm_pool_metadata* %10, i32 %11, i32 0, %struct.dm_thin_device** %8)
  store i32 %12, i32* %6, align 4
  %13 = load i32, i32* %6, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %2
  %16 = load i32, i32* %6, align 4
  store i32 %16, i32* %3, align 4
  br label %59

17:                                               ; preds = %2
  %18 = load %struct.dm_thin_device*, %struct.dm_thin_device** %8, align 8
  %19 = getelementptr inbounds %struct.dm_thin_device, %struct.dm_thin_device* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = icmp sgt i32 %20, 1
  br i1 %21, label %22, label %27

22:                                               ; preds = %17
  %23 = load %struct.dm_thin_device*, %struct.dm_thin_device** %8, align 8
  %24 = call i32 @__close_device(%struct.dm_thin_device* %23)
  %25 = load i32, i32* @EBUSY, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %3, align 4
  br label %59

27:                                               ; preds = %17
  %28 = load %struct.dm_thin_device*, %struct.dm_thin_device** %8, align 8
  %29 = getelementptr inbounds %struct.dm_thin_device, %struct.dm_thin_device* %28, i32 0, i32 1
  %30 = call i32 @list_del(i32* %29)
  %31 = load %struct.dm_thin_device*, %struct.dm_thin_device** %8, align 8
  %32 = call i32 @kfree(%struct.dm_thin_device* %31)
  %33 = load %struct.dm_pool_metadata*, %struct.dm_pool_metadata** %4, align 8
  %34 = getelementptr inbounds %struct.dm_pool_metadata, %struct.dm_pool_metadata* %33, i32 0, i32 3
  %35 = load %struct.dm_pool_metadata*, %struct.dm_pool_metadata** %4, align 8
  %36 = getelementptr inbounds %struct.dm_pool_metadata, %struct.dm_pool_metadata* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.dm_pool_metadata*, %struct.dm_pool_metadata** %4, align 8
  %39 = getelementptr inbounds %struct.dm_pool_metadata, %struct.dm_pool_metadata* %38, i32 0, i32 2
  %40 = call i32 @dm_btree_remove(i32* %34, i32 %37, i32* %7, i32* %39)
  store i32 %40, i32* %6, align 4
  %41 = load i32, i32* %6, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %27
  %44 = load i32, i32* %6, align 4
  store i32 %44, i32* %3, align 4
  br label %59

45:                                               ; preds = %27
  %46 = load %struct.dm_pool_metadata*, %struct.dm_pool_metadata** %4, align 8
  %47 = getelementptr inbounds %struct.dm_pool_metadata, %struct.dm_pool_metadata* %46, i32 0, i32 1
  %48 = load %struct.dm_pool_metadata*, %struct.dm_pool_metadata** %4, align 8
  %49 = getelementptr inbounds %struct.dm_pool_metadata, %struct.dm_pool_metadata* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.dm_pool_metadata*, %struct.dm_pool_metadata** %4, align 8
  %52 = getelementptr inbounds %struct.dm_pool_metadata, %struct.dm_pool_metadata* %51, i32 0, i32 0
  %53 = call i32 @dm_btree_remove(i32* %47, i32 %50, i32* %7, i32* %52)
  store i32 %53, i32* %6, align 4
  %54 = load i32, i32* %6, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %45
  %57 = load i32, i32* %6, align 4
  store i32 %57, i32* %3, align 4
  br label %59

58:                                               ; preds = %45
  store i32 0, i32* %3, align 4
  br label %59

59:                                               ; preds = %58, %56, %43, %22, %15
  %60 = load i32, i32* %3, align 4
  ret i32 %60
}

declare dso_local i32 @__open_device(%struct.dm_pool_metadata*, i32, i32, %struct.dm_thin_device**) #1

declare dso_local i32 @__close_device(%struct.dm_thin_device*) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @kfree(%struct.dm_thin_device*) #1

declare dso_local i32 @dm_btree_remove(i32*, i32, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
