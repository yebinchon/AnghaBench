; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_fschmd.c_watchdog_release.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/hwmon/extr_fschmd.c_watchdog_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.file = type { %struct.fschmd_data* }
%struct.fschmd_data = type { i32, i32, %struct.TYPE_2__*, i64 }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [42 x i8] c"unexpected close, not stopping watchdog!\0A\00", align 1
@watchdog_data_mutex = common dso_local global i32 0, align 4
@fschmd_release_resources = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.file*)* @watchdog_release to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @watchdog_release(%struct.inode* %0, %struct.file* %1) #0 {
  %3 = alloca %struct.inode*, align 8
  %4 = alloca %struct.file*, align 8
  %5 = alloca %struct.fschmd_data*, align 8
  store %struct.inode* %0, %struct.inode** %3, align 8
  store %struct.file* %1, %struct.file** %4, align 8
  %6 = load %struct.file*, %struct.file** %4, align 8
  %7 = getelementptr inbounds %struct.file, %struct.file* %6, i32 0, i32 0
  %8 = load %struct.fschmd_data*, %struct.fschmd_data** %7, align 8
  store %struct.fschmd_data* %8, %struct.fschmd_data** %5, align 8
  %9 = load %struct.fschmd_data*, %struct.fschmd_data** %5, align 8
  %10 = getelementptr inbounds %struct.fschmd_data, %struct.fschmd_data* %9, i32 0, i32 3
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %18

13:                                               ; preds = %2
  %14 = load %struct.fschmd_data*, %struct.fschmd_data** %5, align 8
  %15 = call i32 @watchdog_stop(%struct.fschmd_data* %14)
  %16 = load %struct.fschmd_data*, %struct.fschmd_data** %5, align 8
  %17 = getelementptr inbounds %struct.fschmd_data, %struct.fschmd_data* %16, i32 0, i32 3
  store i64 0, i64* %17, align 8
  br label %26

18:                                               ; preds = %2
  %19 = load %struct.fschmd_data*, %struct.fschmd_data** %5, align 8
  %20 = call i32 @watchdog_trigger(%struct.fschmd_data* %19)
  %21 = load %struct.fschmd_data*, %struct.fschmd_data** %5, align 8
  %22 = getelementptr inbounds %struct.fschmd_data, %struct.fschmd_data* %21, i32 0, i32 2
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = call i32 @dev_crit(i32* %24, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0))
  br label %26

26:                                               ; preds = %18, %13
  %27 = load %struct.fschmd_data*, %struct.fschmd_data** %5, align 8
  %28 = getelementptr inbounds %struct.fschmd_data, %struct.fschmd_data* %27, i32 0, i32 1
  %29 = call i32 @clear_bit(i32 0, i32* %28)
  %30 = call i32 @mutex_lock(i32* @watchdog_data_mutex)
  %31 = load %struct.fschmd_data*, %struct.fschmd_data** %5, align 8
  %32 = getelementptr inbounds %struct.fschmd_data, %struct.fschmd_data* %31, i32 0, i32 0
  %33 = load i32, i32* @fschmd_release_resources, align 4
  %34 = call i32 @kref_put(i32* %32, i32 %33)
  %35 = call i32 @mutex_unlock(i32* @watchdog_data_mutex)
  ret i32 0
}

declare dso_local i32 @watchdog_stop(%struct.fschmd_data*) #1

declare dso_local i32 @watchdog_trigger(%struct.fschmd_data*) #1

declare dso_local i32 @dev_crit(i32*, i8*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @kref_put(i32*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
