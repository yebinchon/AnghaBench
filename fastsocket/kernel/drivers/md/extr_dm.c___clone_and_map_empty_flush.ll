; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm.c___clone_and_map_empty_flush.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm.c___clone_and_map_empty_flush.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clone_info = type { i32, i32 }
%struct.dm_target = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.clone_info*)* @__clone_and_map_empty_flush to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__clone_and_map_empty_flush(%struct.clone_info* %0) #0 {
  %2 = alloca %struct.clone_info*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.dm_target*, align 8
  store %struct.clone_info* %0, %struct.clone_info** %2, align 8
  store i32 0, i32* %3, align 4
  %5 = load %struct.clone_info*, %struct.clone_info** %2, align 8
  %6 = getelementptr inbounds %struct.clone_info, %struct.clone_info* %5, i32 0, i32 1
  %7 = load i32, i32* %6, align 4
  %8 = call i32 @bio_has_data(i32 %7)
  %9 = call i32 @BUG_ON(i32 %8)
  br label %10

10:                                               ; preds = %18, %1
  %11 = load %struct.clone_info*, %struct.clone_info** %2, align 8
  %12 = getelementptr inbounds %struct.clone_info, %struct.clone_info* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* %3, align 4
  %15 = add i32 %14, 1
  store i32 %15, i32* %3, align 4
  %16 = call %struct.dm_target* @dm_table_get_target(i32 %13, i32 %14)
  store %struct.dm_target* %16, %struct.dm_target** %4, align 8
  %17 = icmp ne %struct.dm_target* %16, null
  br i1 %17, label %18, label %25

18:                                               ; preds = %10
  %19 = load %struct.clone_info*, %struct.clone_info** %2, align 8
  %20 = load %struct.dm_target*, %struct.dm_target** %4, align 8
  %21 = load %struct.dm_target*, %struct.dm_target** %4, align 8
  %22 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @__issue_target_requests(%struct.clone_info* %19, %struct.dm_target* %20, i32 %23, i32 0)
  br label %10

25:                                               ; preds = %10
  ret i32 0
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @bio_has_data(i32) #1

declare dso_local %struct.dm_target* @dm_table_get_target(i32, i32) #1

declare dso_local i32 @__issue_target_requests(%struct.clone_info*, %struct.dm_target*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
