; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/md/persistent-data/extr_dm-space-map.h_dm_sm_register_threshold_callback.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/md/persistent-data/extr_dm-space-map.h_dm_sm_register_threshold_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dm_space_map = type { {}* }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dm_space_map*, i32, i32, i8*)* @dm_sm_register_threshold_callback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dm_sm_register_threshold_callback(%struct.dm_space_map* %0, i32 %1, i32 %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.dm_space_map*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  store %struct.dm_space_map* %0, %struct.dm_space_map** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  %10 = load %struct.dm_space_map*, %struct.dm_space_map** %6, align 8
  %11 = getelementptr inbounds %struct.dm_space_map, %struct.dm_space_map* %10, i32 0, i32 0
  %12 = bitcast {}** %11 to i32 (%struct.dm_space_map*, i32, i32, i8*)**
  %13 = load i32 (%struct.dm_space_map*, i32, i32, i8*)*, i32 (%struct.dm_space_map*, i32, i32, i8*)** %12, align 8
  %14 = icmp ne i32 (%struct.dm_space_map*, i32, i32, i8*)* %13, null
  br i1 %14, label %15, label %25

15:                                               ; preds = %4
  %16 = load %struct.dm_space_map*, %struct.dm_space_map** %6, align 8
  %17 = getelementptr inbounds %struct.dm_space_map, %struct.dm_space_map* %16, i32 0, i32 0
  %18 = bitcast {}** %17 to i32 (%struct.dm_space_map*, i32, i32, i8*)**
  %19 = load i32 (%struct.dm_space_map*, i32, i32, i8*)*, i32 (%struct.dm_space_map*, i32, i32, i8*)** %18, align 8
  %20 = load %struct.dm_space_map*, %struct.dm_space_map** %6, align 8
  %21 = load i32, i32* %7, align 4
  %22 = load i32, i32* %8, align 4
  %23 = load i8*, i8** %9, align 8
  %24 = call i32 %19(%struct.dm_space_map* %20, i32 %21, i32 %22, i8* %23)
  store i32 %24, i32* %5, align 4
  br label %28

25:                                               ; preds = %4
  %26 = load i32, i32* @EINVAL, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %5, align 4
  br label %28

28:                                               ; preds = %25, %15
  %29 = load i32, i32* %5, align 4
  ret i32 %29
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
