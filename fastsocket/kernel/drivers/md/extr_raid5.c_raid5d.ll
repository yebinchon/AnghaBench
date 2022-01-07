; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_raid5.c_raid5d.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_raid5.c_raid5d.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.md_thread = type { %struct.mddev* }
%struct.mddev = type { i32, i32, %struct.r5conf* }
%struct.r5conf = type { i64, i64, i32 }
%struct.bio = type { i32 }

@.str = private unnamed_addr constant [19 x i8] c"+++ raid5d active\0A\00", align 1
@MD_CHANGE_PENDING = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"%d stripes handled\0A\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"--- raid5d inactive\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.md_thread*)* @raid5d to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @raid5d(%struct.md_thread* %0) #0 {
  %2 = alloca %struct.md_thread*, align 8
  %3 = alloca %struct.mddev*, align 8
  %4 = alloca %struct.r5conf*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.bio*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.md_thread* %0, %struct.md_thread** %2, align 8
  %10 = load %struct.md_thread*, %struct.md_thread** %2, align 8
  %11 = getelementptr inbounds %struct.md_thread, %struct.md_thread* %10, i32 0, i32 0
  %12 = load %struct.mddev*, %struct.mddev** %11, align 8
  store %struct.mddev* %12, %struct.mddev** %3, align 8
  %13 = load %struct.mddev*, %struct.mddev** %3, align 8
  %14 = getelementptr inbounds %struct.mddev, %struct.mddev* %13, i32 0, i32 2
  %15 = load %struct.r5conf*, %struct.r5conf** %14, align 8
  store %struct.r5conf* %15, %struct.r5conf** %4, align 8
  %16 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %17 = load %struct.mddev*, %struct.mddev** %3, align 8
  %18 = call i32 @md_check_recovery(%struct.mddev* %17)
  store i32 0, i32* %5, align 4
  %19 = load %struct.r5conf*, %struct.r5conf** %4, align 8
  %20 = getelementptr inbounds %struct.r5conf, %struct.r5conf* %19, i32 0, i32 2
  %21 = call i32 @spin_lock_irq(i32* %20)
  br label %22

22:                                               ; preds = %1, %99
  %23 = load %struct.r5conf*, %struct.r5conf** %4, align 8
  %24 = getelementptr inbounds %struct.r5conf, %struct.r5conf* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load %struct.r5conf*, %struct.r5conf** %4, align 8
  %27 = getelementptr inbounds %struct.r5conf, %struct.r5conf* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %25, %28
  br i1 %29, label %30, label %51

30:                                               ; preds = %22
  %31 = load %struct.r5conf*, %struct.r5conf** %4, align 8
  %32 = getelementptr inbounds %struct.r5conf, %struct.r5conf* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = trunc i64 %33 to i32
  store i32 %34, i32* %8, align 4
  %35 = load %struct.r5conf*, %struct.r5conf** %4, align 8
  %36 = getelementptr inbounds %struct.r5conf, %struct.r5conf* %35, i32 0, i32 2
  %37 = call i32 @spin_unlock_irq(i32* %36)
  %38 = load %struct.mddev*, %struct.mddev** %3, align 8
  %39 = getelementptr inbounds %struct.mddev, %struct.mddev* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @bitmap_unplug(i32 %40)
  %42 = load %struct.r5conf*, %struct.r5conf** %4, align 8
  %43 = getelementptr inbounds %struct.r5conf, %struct.r5conf* %42, i32 0, i32 2
  %44 = call i32 @spin_lock_irq(i32* %43)
  %45 = load i32, i32* %8, align 4
  %46 = sext i32 %45 to i64
  %47 = load %struct.r5conf*, %struct.r5conf** %4, align 8
  %48 = getelementptr inbounds %struct.r5conf, %struct.r5conf* %47, i32 0, i32 1
  store i64 %46, i64* %48, align 8
  %49 = load %struct.r5conf*, %struct.r5conf** %4, align 8
  %50 = call i32 @activate_bit_delay(%struct.r5conf* %49)
  br label %51

51:                                               ; preds = %30, %22
  br label %52

52:                                               ; preds = %69, %51
  %53 = load %struct.r5conf*, %struct.r5conf** %4, align 8
  %54 = call %struct.bio* @remove_bio_from_retry(%struct.r5conf* %53)
  store %struct.bio* %54, %struct.bio** %6, align 8
  %55 = icmp ne %struct.bio* %54, null
  br i1 %55, label %56, label %72

56:                                               ; preds = %52
  %57 = load %struct.r5conf*, %struct.r5conf** %4, align 8
  %58 = getelementptr inbounds %struct.r5conf, %struct.r5conf* %57, i32 0, i32 2
  %59 = call i32 @spin_unlock_irq(i32* %58)
  %60 = load %struct.r5conf*, %struct.r5conf** %4, align 8
  %61 = load %struct.bio*, %struct.bio** %6, align 8
  %62 = call i32 @retry_aligned_read(%struct.r5conf* %60, %struct.bio* %61)
  store i32 %62, i32* %9, align 4
  %63 = load %struct.r5conf*, %struct.r5conf** %4, align 8
  %64 = getelementptr inbounds %struct.r5conf, %struct.r5conf* %63, i32 0, i32 2
  %65 = call i32 @spin_lock_irq(i32* %64)
  %66 = load i32, i32* %9, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %69, label %68

68:                                               ; preds = %56
  br label %72

69:                                               ; preds = %56
  %70 = load i32, i32* %5, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %5, align 4
  br label %52

72:                                               ; preds = %68, %52
  %73 = load %struct.r5conf*, %struct.r5conf** %4, align 8
  %74 = call i32 @handle_active_stripes(%struct.r5conf* %73)
  store i32 %74, i32* %7, align 4
  %75 = load i32, i32* %7, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %78, label %77

77:                                               ; preds = %72
  br label %100

78:                                               ; preds = %72
  %79 = load i32, i32* %7, align 4
  %80 = load i32, i32* %5, align 4
  %81 = add nsw i32 %80, %79
  store i32 %81, i32* %5, align 4
  %82 = load %struct.mddev*, %struct.mddev** %3, align 8
  %83 = getelementptr inbounds %struct.mddev, %struct.mddev* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = load i32, i32* @MD_CHANGE_PENDING, align 4
  %86 = shl i32 1, %85
  %87 = xor i32 %86, -1
  %88 = and i32 %84, %87
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %99

90:                                               ; preds = %78
  %91 = load %struct.r5conf*, %struct.r5conf** %4, align 8
  %92 = getelementptr inbounds %struct.r5conf, %struct.r5conf* %91, i32 0, i32 2
  %93 = call i32 @spin_unlock_irq(i32* %92)
  %94 = load %struct.mddev*, %struct.mddev** %3, align 8
  %95 = call i32 @md_check_recovery(%struct.mddev* %94)
  %96 = load %struct.r5conf*, %struct.r5conf** %4, align 8
  %97 = getelementptr inbounds %struct.r5conf, %struct.r5conf* %96, i32 0, i32 2
  %98 = call i32 @spin_lock_irq(i32* %97)
  br label %99

99:                                               ; preds = %90, %78
  br label %22

100:                                              ; preds = %77
  %101 = load i32, i32* %5, align 4
  %102 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 %101)
  %103 = load %struct.r5conf*, %struct.r5conf** %4, align 8
  %104 = getelementptr inbounds %struct.r5conf, %struct.r5conf* %103, i32 0, i32 2
  %105 = call i32 @spin_unlock_irq(i32* %104)
  %106 = call i32 (...) @async_tx_issue_pending_all()
  %107 = load %struct.mddev*, %struct.mddev** %3, align 8
  %108 = call i32 @unplug_slaves(%struct.mddev* %107)
  %109 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0))
  ret void
}

declare dso_local i32 @pr_debug(i8*, ...) #1

declare dso_local i32 @md_check_recovery(%struct.mddev*) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @bitmap_unplug(i32) #1

declare dso_local i32 @activate_bit_delay(%struct.r5conf*) #1

declare dso_local %struct.bio* @remove_bio_from_retry(%struct.r5conf*) #1

declare dso_local i32 @retry_aligned_read(%struct.r5conf*, %struct.bio*) #1

declare dso_local i32 @handle_active_stripes(%struct.r5conf*) #1

declare dso_local i32 @async_tx_issue_pending_all(...) #1

declare dso_local i32 @unplug_slaves(%struct.mddev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
