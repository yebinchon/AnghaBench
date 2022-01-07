; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/b3dfg/extr_b3dfg.c_handle_cstate_change.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/b3dfg/extr_b3dfg.c_handle_cstate_change.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.b3dfg_dev = type { i64, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.device }
%struct.device = type { i32 }

@B3D_REG_WAND_STS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"cable state change: %u\0A\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"ignoring unexpected plug event\0A\00", align 1
@jiffies_64 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.b3dfg_dev*)* @handle_cstate_change to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @handle_cstate_change(%struct.b3dfg_dev* %0) #0 {
  %2 = alloca %struct.b3dfg_dev*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.device*, align 8
  store %struct.b3dfg_dev* %0, %struct.b3dfg_dev** %2, align 8
  %6 = load %struct.b3dfg_dev*, %struct.b3dfg_dev** %2, align 8
  %7 = load i32, i32* @B3D_REG_WAND_STS, align 4
  %8 = call i64 @b3dfg_read32(%struct.b3dfg_dev* %6, i32 %7)
  store i64 %8, i64* %3, align 8
  %9 = load %struct.b3dfg_dev*, %struct.b3dfg_dev** %2, align 8
  %10 = getelementptr inbounds %struct.b3dfg_dev, %struct.b3dfg_dev* %9, i32 0, i32 3
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  store %struct.device* %12, %struct.device** %5, align 8
  %13 = load %struct.device*, %struct.device** %5, align 8
  %14 = load i64, i64* %3, align 8
  %15 = call i32 @dev_dbg(%struct.device* %13, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i64 %14)
  %16 = load i64, i64* %3, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %1
  %19 = load %struct.device*, %struct.device** %5, align 8
  %20 = call i32 @dev_warn(%struct.device* %19, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  br label %48

21:                                               ; preds = %1
  %22 = load %struct.b3dfg_dev*, %struct.b3dfg_dev** %2, align 8
  %23 = call i32 @handle_cstate_unplug(%struct.b3dfg_dev* %22)
  %24 = load %struct.b3dfg_dev*, %struct.b3dfg_dev** %2, align 8
  %25 = getelementptr inbounds %struct.b3dfg_dev, %struct.b3dfg_dev* %24, i32 0, i32 1
  %26 = call i32 @spin_lock(i32* %25)
  %27 = load i64, i64* @jiffies_64, align 8
  store i64 %27, i64* %4, align 8
  %28 = load i64, i64* %4, align 8
  %29 = load %struct.b3dfg_dev*, %struct.b3dfg_dev** %2, align 8
  %30 = getelementptr inbounds %struct.b3dfg_dev, %struct.b3dfg_dev* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = icmp ule i64 %28, %31
  br i1 %32, label %33, label %38

33:                                               ; preds = %21
  %34 = load %struct.b3dfg_dev*, %struct.b3dfg_dev** %2, align 8
  %35 = getelementptr inbounds %struct.b3dfg_dev, %struct.b3dfg_dev* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = add i64 %36, 1
  store i64 %37, i64* %4, align 8
  br label %38

38:                                               ; preds = %33, %21
  %39 = load i64, i64* %4, align 8
  %40 = load %struct.b3dfg_dev*, %struct.b3dfg_dev** %2, align 8
  %41 = getelementptr inbounds %struct.b3dfg_dev, %struct.b3dfg_dev* %40, i32 0, i32 0
  store i64 %39, i64* %41, align 8
  %42 = load %struct.b3dfg_dev*, %struct.b3dfg_dev** %2, align 8
  %43 = getelementptr inbounds %struct.b3dfg_dev, %struct.b3dfg_dev* %42, i32 0, i32 2
  %44 = call i32 @wake_up_interruptible(i32* %43)
  %45 = load %struct.b3dfg_dev*, %struct.b3dfg_dev** %2, align 8
  %46 = getelementptr inbounds %struct.b3dfg_dev, %struct.b3dfg_dev* %45, i32 0, i32 1
  %47 = call i32 @spin_unlock(i32* %46)
  br label %48

48:                                               ; preds = %38, %18
  ret void
}

declare dso_local i64 @b3dfg_read32(%struct.b3dfg_dev*, i32) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*, i64) #1

declare dso_local i32 @dev_warn(%struct.device*, i8*) #1

declare dso_local i32 @handle_cstate_unplug(%struct.b3dfg_dev*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @wake_up_interruptible(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
