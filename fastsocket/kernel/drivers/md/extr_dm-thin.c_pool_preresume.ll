; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-thin.c_pool_preresume.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-thin.c_pool_preresume.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dm_target = type { %struct.pool_c* }
%struct.pool_c = type { %struct.pool* }
%struct.pool = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dm_target*)* @pool_preresume to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pool_preresume(%struct.dm_target* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dm_target*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.pool_c*, align 8
  %8 = alloca %struct.pool*, align 8
  store %struct.dm_target* %0, %struct.dm_target** %3, align 8
  %9 = load %struct.dm_target*, %struct.dm_target** %3, align 8
  %10 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %9, i32 0, i32 0
  %11 = load %struct.pool_c*, %struct.pool_c** %10, align 8
  store %struct.pool_c* %11, %struct.pool_c** %7, align 8
  %12 = load %struct.pool_c*, %struct.pool_c** %7, align 8
  %13 = getelementptr inbounds %struct.pool_c, %struct.pool_c* %12, i32 0, i32 0
  %14 = load %struct.pool*, %struct.pool** %13, align 8
  store %struct.pool* %14, %struct.pool** %8, align 8
  %15 = load %struct.pool*, %struct.pool** %8, align 8
  %16 = load %struct.dm_target*, %struct.dm_target** %3, align 8
  %17 = call i32 @bind_control_target(%struct.pool* %15, %struct.dm_target* %16)
  store i32 %17, i32* %4, align 4
  %18 = load i32, i32* %4, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %1
  %21 = load i32, i32* %4, align 4
  store i32 %21, i32* %2, align 4
  br label %46

22:                                               ; preds = %1
  %23 = load %struct.dm_target*, %struct.dm_target** %3, align 8
  %24 = call i32 @maybe_resize_data_dev(%struct.dm_target* %23, i32* %5)
  store i32 %24, i32* %4, align 4
  %25 = load i32, i32* %4, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %22
  %28 = load i32, i32* %4, align 4
  store i32 %28, i32* %2, align 4
  br label %46

29:                                               ; preds = %22
  %30 = load %struct.dm_target*, %struct.dm_target** %3, align 8
  %31 = call i32 @maybe_resize_metadata_dev(%struct.dm_target* %30, i32* %6)
  store i32 %31, i32* %4, align 4
  %32 = load i32, i32* %4, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %29
  %35 = load i32, i32* %4, align 4
  store i32 %35, i32* %2, align 4
  br label %46

36:                                               ; preds = %29
  %37 = load i32, i32* %5, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %42, label %39

39:                                               ; preds = %36
  %40 = load i32, i32* %6, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %39, %36
  %43 = load %struct.pool*, %struct.pool** %8, align 8
  %44 = call i32 @commit(%struct.pool* %43)
  br label %45

45:                                               ; preds = %42, %39
  store i32 0, i32* %2, align 4
  br label %46

46:                                               ; preds = %45, %34, %27, %20
  %47 = load i32, i32* %2, align 4
  ret i32 %47
}

declare dso_local i32 @bind_control_target(%struct.pool*, %struct.dm_target*) #1

declare dso_local i32 @maybe_resize_data_dev(%struct.dm_target*, i32*) #1

declare dso_local i32 @maybe_resize_metadata_dev(%struct.dm_target*, i32*) #1

declare dso_local i32 @commit(%struct.pool*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
