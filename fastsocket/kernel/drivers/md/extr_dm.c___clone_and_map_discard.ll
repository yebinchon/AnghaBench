; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm.c___clone_and_map_discard.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm.c___clone_and_map_discard.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clone_info = type { i32, i32, i32 }
%struct.dm_target = type { i32, i32 }

@EIO = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.clone_info*)* @__clone_and_map_discard to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__clone_and_map_discard(%struct.clone_info* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.clone_info*, align 8
  %4 = alloca %struct.dm_target*, align 8
  %5 = alloca i64, align 8
  store %struct.clone_info* %0, %struct.clone_info** %3, align 8
  br label %6

6:                                                ; preds = %68, %1
  %7 = load %struct.clone_info*, %struct.clone_info** %3, align 8
  %8 = getelementptr inbounds %struct.clone_info, %struct.clone_info* %7, i32 0, i32 2
  %9 = load i32, i32* %8, align 4
  %10 = load %struct.clone_info*, %struct.clone_info** %3, align 8
  %11 = getelementptr inbounds %struct.clone_info, %struct.clone_info* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call %struct.dm_target* @dm_table_find_target(i32 %9, i32 %12)
  store %struct.dm_target* %13, %struct.dm_target** %4, align 8
  %14 = load %struct.dm_target*, %struct.dm_target** %4, align 8
  %15 = call i32 @dm_target_is_valid(%struct.dm_target* %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %20, label %17

17:                                               ; preds = %6
  %18 = load i32, i32* @EIO, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %2, align 4
  br label %78

20:                                               ; preds = %6
  %21 = load %struct.dm_target*, %struct.dm_target** %4, align 8
  %22 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %28, label %25

25:                                               ; preds = %20
  %26 = load i32, i32* @EOPNOTSUPP, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %2, align 4
  br label %78

28:                                               ; preds = %20
  %29 = load %struct.dm_target*, %struct.dm_target** %4, align 8
  %30 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %43, label %33

33:                                               ; preds = %28
  %34 = load %struct.clone_info*, %struct.clone_info** %3, align 8
  %35 = getelementptr inbounds %struct.clone_info, %struct.clone_info* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.clone_info*, %struct.clone_info** %3, align 8
  %38 = getelementptr inbounds %struct.clone_info, %struct.clone_info* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.dm_target*, %struct.dm_target** %4, align 8
  %41 = call i32 @max_io_len_target_boundary(i32 %39, %struct.dm_target* %40)
  %42 = call i64 @min(i32 %36, i32 %41)
  store i64 %42, i64* %5, align 8
  br label %53

43:                                               ; preds = %28
  %44 = load %struct.clone_info*, %struct.clone_info** %3, align 8
  %45 = getelementptr inbounds %struct.clone_info, %struct.clone_info* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.clone_info*, %struct.clone_info** %3, align 8
  %48 = getelementptr inbounds %struct.clone_info, %struct.clone_info* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.dm_target*, %struct.dm_target** %4, align 8
  %51 = call i32 @max_io_len(i32 %49, %struct.dm_target* %50)
  %52 = call i64 @min(i32 %46, i32 %51)
  store i64 %52, i64* %5, align 8
  br label %53

53:                                               ; preds = %43, %33
  %54 = load %struct.clone_info*, %struct.clone_info** %3, align 8
  %55 = load %struct.dm_target*, %struct.dm_target** %4, align 8
  %56 = load %struct.dm_target*, %struct.dm_target** %4, align 8
  %57 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load i64, i64* %5, align 8
  %60 = call i32 @__issue_target_requests(%struct.clone_info* %54, %struct.dm_target* %55, i32 %58, i64 %59)
  %61 = load i64, i64* %5, align 8
  %62 = load %struct.clone_info*, %struct.clone_info** %3, align 8
  %63 = getelementptr inbounds %struct.clone_info, %struct.clone_info* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = sext i32 %64 to i64
  %66 = add nsw i64 %65, %61
  %67 = trunc i64 %66 to i32
  store i32 %67, i32* %63, align 4
  br label %68

68:                                               ; preds = %53
  %69 = load i64, i64* %5, align 8
  %70 = load %struct.clone_info*, %struct.clone_info** %3, align 8
  %71 = getelementptr inbounds %struct.clone_info, %struct.clone_info* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = sext i32 %72 to i64
  %74 = sub nsw i64 %73, %69
  %75 = trunc i64 %74 to i32
  store i32 %75, i32* %71, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %6, label %77

77:                                               ; preds = %68
  store i32 0, i32* %2, align 4
  br label %78

78:                                               ; preds = %77, %25, %17
  %79 = load i32, i32* %2, align 4
  ret i32 %79
}

declare dso_local %struct.dm_target* @dm_table_find_target(i32, i32) #1

declare dso_local i32 @dm_target_is_valid(%struct.dm_target*) #1

declare dso_local i64 @min(i32, i32) #1

declare dso_local i32 @max_io_len_target_boundary(i32, %struct.dm_target*) #1

declare dso_local i32 @max_io_len(i32, %struct.dm_target*) #1

declare dso_local i32 @__issue_target_requests(%struct.clone_info*, %struct.dm_target*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
