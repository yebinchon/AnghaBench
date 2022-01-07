; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-thin.c_process_deferred_bios.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-thin.c_process_deferred_bios.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pool = type { i32, i32, i32, %struct.bio_list }
%struct.bio_list = type { i32 }
%struct.bio = type { i32 }
%struct.thin_c = type { i32 }

@jiffies = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pool*)* @process_deferred_bios to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @process_deferred_bios(%struct.pool* %0) #0 {
  %2 = alloca %struct.pool*, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.bio*, align 8
  %5 = alloca %struct.bio_list, align 4
  %6 = alloca %struct.thin_c*, align 8
  store %struct.pool* %0, %struct.pool** %2, align 8
  %7 = load %struct.pool*, %struct.pool** %2, align 8
  %8 = call %struct.thin_c* @get_first_thin(%struct.pool* %7)
  store %struct.thin_c* %8, %struct.thin_c** %6, align 8
  br label %9

9:                                                ; preds = %12, %1
  %10 = load %struct.thin_c*, %struct.thin_c** %6, align 8
  %11 = icmp ne %struct.thin_c* %10, null
  br i1 %11, label %12, label %18

12:                                               ; preds = %9
  %13 = load %struct.thin_c*, %struct.thin_c** %6, align 8
  %14 = call i32 @process_thin_deferred_bios(%struct.thin_c* %13)
  %15 = load %struct.pool*, %struct.pool** %2, align 8
  %16 = load %struct.thin_c*, %struct.thin_c** %6, align 8
  %17 = call %struct.thin_c* @get_next_thin(%struct.pool* %15, %struct.thin_c* %16)
  store %struct.thin_c* %17, %struct.thin_c** %6, align 8
  br label %9

18:                                               ; preds = %9
  %19 = call i32 @bio_list_init(%struct.bio_list* %5)
  %20 = load %struct.pool*, %struct.pool** %2, align 8
  %21 = getelementptr inbounds %struct.pool, %struct.pool* %20, i32 0, i32 2
  %22 = load i64, i64* %3, align 8
  %23 = call i32 @spin_lock_irqsave(i32* %21, i64 %22)
  %24 = load %struct.pool*, %struct.pool** %2, align 8
  %25 = getelementptr inbounds %struct.pool, %struct.pool* %24, i32 0, i32 3
  %26 = call i32 @bio_list_merge(%struct.bio_list* %5, %struct.bio_list* %25)
  %27 = load %struct.pool*, %struct.pool** %2, align 8
  %28 = getelementptr inbounds %struct.pool, %struct.pool* %27, i32 0, i32 3
  %29 = call i32 @bio_list_init(%struct.bio_list* %28)
  %30 = load %struct.pool*, %struct.pool** %2, align 8
  %31 = getelementptr inbounds %struct.pool, %struct.pool* %30, i32 0, i32 2
  %32 = load i64, i64* %3, align 8
  %33 = call i32 @spin_unlock_irqrestore(i32* %31, i64 %32)
  %34 = call i64 @bio_list_empty(%struct.bio_list* %5)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %47

36:                                               ; preds = %18
  %37 = load %struct.pool*, %struct.pool** %2, align 8
  %38 = getelementptr inbounds %struct.pool, %struct.pool* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = call i64 @dm_pool_changed_this_transaction(i32 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %46

42:                                               ; preds = %36
  %43 = load %struct.pool*, %struct.pool** %2, align 8
  %44 = call i64 @need_commit_due_to_time(%struct.pool* %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %47, label %46

46:                                               ; preds = %42, %36
  br label %69

47:                                               ; preds = %42, %18
  %48 = load %struct.pool*, %struct.pool** %2, align 8
  %49 = call i64 @commit(%struct.pool* %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %59

51:                                               ; preds = %47
  br label %52

52:                                               ; preds = %55, %51
  %53 = call %struct.bio* @bio_list_pop(%struct.bio_list* %5)
  store %struct.bio* %53, %struct.bio** %4, align 8
  %54 = icmp ne %struct.bio* %53, null
  br i1 %54, label %55, label %58

55:                                               ; preds = %52
  %56 = load %struct.bio*, %struct.bio** %4, align 8
  %57 = call i32 @bio_io_error(%struct.bio* %56)
  br label %52

58:                                               ; preds = %52
  br label %69

59:                                               ; preds = %47
  %60 = load i32, i32* @jiffies, align 4
  %61 = load %struct.pool*, %struct.pool** %2, align 8
  %62 = getelementptr inbounds %struct.pool, %struct.pool* %61, i32 0, i32 0
  store i32 %60, i32* %62, align 4
  br label %63

63:                                               ; preds = %66, %59
  %64 = call %struct.bio* @bio_list_pop(%struct.bio_list* %5)
  store %struct.bio* %64, %struct.bio** %4, align 8
  %65 = icmp ne %struct.bio* %64, null
  br i1 %65, label %66, label %69

66:                                               ; preds = %63
  %67 = load %struct.bio*, %struct.bio** %4, align 8
  %68 = call i32 @generic_make_request(%struct.bio* %67)
  br label %63

69:                                               ; preds = %46, %58, %63
  ret void
}

declare dso_local %struct.thin_c* @get_first_thin(%struct.pool*) #1

declare dso_local i32 @process_thin_deferred_bios(%struct.thin_c*) #1

declare dso_local %struct.thin_c* @get_next_thin(%struct.pool*, %struct.thin_c*) #1

declare dso_local i32 @bio_list_init(%struct.bio_list*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @bio_list_merge(%struct.bio_list*, %struct.bio_list*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i64 @bio_list_empty(%struct.bio_list*) #1

declare dso_local i64 @dm_pool_changed_this_transaction(i32) #1

declare dso_local i64 @need_commit_due_to_time(%struct.pool*) #1

declare dso_local i64 @commit(%struct.pool*) #1

declare dso_local %struct.bio* @bio_list_pop(%struct.bio_list*) #1

declare dso_local i32 @bio_io_error(%struct.bio*) #1

declare dso_local i32 @generic_make_request(%struct.bio*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
