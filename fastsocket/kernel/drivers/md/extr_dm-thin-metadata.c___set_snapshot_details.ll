; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-thin-metadata.c___set_snapshot_details.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-thin-metadata.c___set_snapshot_details.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dm_pool_metadata = type { i32 }
%struct.dm_thin_device = type { i32, i8*, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dm_pool_metadata*, %struct.dm_thin_device*, i32, i8*)* @__set_snapshot_details to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__set_snapshot_details(%struct.dm_pool_metadata* %0, %struct.dm_thin_device* %1, i32 %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.dm_pool_metadata*, align 8
  %7 = alloca %struct.dm_thin_device*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.dm_thin_device*, align 8
  store %struct.dm_pool_metadata* %0, %struct.dm_pool_metadata** %6, align 8
  store %struct.dm_thin_device* %1, %struct.dm_thin_device** %7, align 8
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  %12 = load %struct.dm_pool_metadata*, %struct.dm_pool_metadata** %6, align 8
  %13 = load i32, i32* %8, align 4
  %14 = call i32 @__open_device(%struct.dm_pool_metadata* %12, i32 %13, i32 0, %struct.dm_thin_device** %11)
  store i32 %14, i32* %10, align 4
  %15 = load i32, i32* %10, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %4
  %18 = load i32, i32* %10, align 4
  store i32 %18, i32* %5, align 4
  br label %35

19:                                               ; preds = %4
  %20 = load %struct.dm_thin_device*, %struct.dm_thin_device** %11, align 8
  %21 = getelementptr inbounds %struct.dm_thin_device, %struct.dm_thin_device* %20, i32 0, i32 0
  store i32 1, i32* %21, align 8
  %22 = load i8*, i8** %9, align 8
  %23 = load %struct.dm_thin_device*, %struct.dm_thin_device** %11, align 8
  %24 = getelementptr inbounds %struct.dm_thin_device, %struct.dm_thin_device* %23, i32 0, i32 1
  store i8* %22, i8** %24, align 8
  %25 = load %struct.dm_thin_device*, %struct.dm_thin_device** %11, align 8
  %26 = getelementptr inbounds %struct.dm_thin_device, %struct.dm_thin_device* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 8
  %28 = load %struct.dm_thin_device*, %struct.dm_thin_device** %7, align 8
  %29 = getelementptr inbounds %struct.dm_thin_device, %struct.dm_thin_device* %28, i32 0, i32 2
  store i32 %27, i32* %29, align 8
  %30 = load i8*, i8** %9, align 8
  %31 = load %struct.dm_thin_device*, %struct.dm_thin_device** %7, align 8
  %32 = getelementptr inbounds %struct.dm_thin_device, %struct.dm_thin_device* %31, i32 0, i32 1
  store i8* %30, i8** %32, align 8
  %33 = load %struct.dm_thin_device*, %struct.dm_thin_device** %11, align 8
  %34 = call i32 @__close_device(%struct.dm_thin_device* %33)
  store i32 0, i32* %5, align 4
  br label %35

35:                                               ; preds = %19, %17
  %36 = load i32, i32* %5, align 4
  ret i32 %36
}

declare dso_local i32 @__open_device(%struct.dm_pool_metadata*, i32, i32, %struct.dm_thin_device**) #1

declare dso_local i32 @__close_device(%struct.dm_thin_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
