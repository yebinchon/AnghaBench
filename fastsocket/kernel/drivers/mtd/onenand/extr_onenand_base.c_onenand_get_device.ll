; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/onenand/extr_onenand_base.c_onenand_get_device.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/onenand/extr_onenand_base.c_onenand_get_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtd_info = type { %struct.onenand_chip* }
%struct.onenand_chip = type { i32, i32, i32 }

@wait = common dso_local global i32 0, align 4
@current = common dso_local global i32 0, align 4
@FL_READY = common dso_local global i32 0, align 4
@FL_PM_SUSPENDED = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@TASK_UNINTERRUPTIBLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mtd_info*, i32)* @onenand_get_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @onenand_get_device(%struct.mtd_info* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mtd_info*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.onenand_chip*, align 8
  store %struct.mtd_info* %0, %struct.mtd_info** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.mtd_info*, %struct.mtd_info** %4, align 8
  %8 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %7, i32 0, i32 0
  %9 = load %struct.onenand_chip*, %struct.onenand_chip** %8, align 8
  store %struct.onenand_chip* %9, %struct.onenand_chip** %6, align 8
  %10 = load i32, i32* @wait, align 4
  %11 = load i32, i32* @current, align 4
  %12 = call i32 @DECLARE_WAITQUEUE(i32 %10, i32 %11)
  br label %13

13:                                               ; preds = %2, %48
  %14 = load %struct.onenand_chip*, %struct.onenand_chip** %6, align 8
  %15 = getelementptr inbounds %struct.onenand_chip, %struct.onenand_chip* %14, i32 0, i32 2
  %16 = call i32 @spin_lock(i32* %15)
  %17 = load %struct.onenand_chip*, %struct.onenand_chip** %6, align 8
  %18 = getelementptr inbounds %struct.onenand_chip, %struct.onenand_chip* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @FL_READY, align 4
  %21 = icmp eq i32 %19, %20
  br i1 %21, label %22, label %29

22:                                               ; preds = %13
  %23 = load i32, i32* %5, align 4
  %24 = load %struct.onenand_chip*, %struct.onenand_chip** %6, align 8
  %25 = getelementptr inbounds %struct.onenand_chip, %struct.onenand_chip* %24, i32 0, i32 0
  store i32 %23, i32* %25, align 4
  %26 = load %struct.onenand_chip*, %struct.onenand_chip** %6, align 8
  %27 = getelementptr inbounds %struct.onenand_chip, %struct.onenand_chip* %26, i32 0, i32 2
  %28 = call i32 @spin_unlock(i32* %27)
  br label %61

29:                                               ; preds = %13
  %30 = load i32, i32* %5, align 4
  %31 = load i32, i32* @FL_PM_SUSPENDED, align 4
  %32 = icmp eq i32 %30, %31
  br i1 %32, label %33, label %48

33:                                               ; preds = %29
  %34 = load %struct.onenand_chip*, %struct.onenand_chip** %6, align 8
  %35 = getelementptr inbounds %struct.onenand_chip, %struct.onenand_chip* %34, i32 0, i32 2
  %36 = call i32 @spin_unlock(i32* %35)
  %37 = load %struct.onenand_chip*, %struct.onenand_chip** %6, align 8
  %38 = getelementptr inbounds %struct.onenand_chip, %struct.onenand_chip* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @FL_PM_SUSPENDED, align 4
  %41 = icmp eq i32 %39, %40
  br i1 %41, label %42, label %43

42:                                               ; preds = %33
  br label %46

43:                                               ; preds = %33
  %44 = load i32, i32* @EAGAIN, align 4
  %45 = sub nsw i32 0, %44
  br label %46

46:                                               ; preds = %43, %42
  %47 = phi i32 [ 0, %42 ], [ %45, %43 ]
  store i32 %47, i32* %3, align 4
  br label %62

48:                                               ; preds = %29
  %49 = load i32, i32* @TASK_UNINTERRUPTIBLE, align 4
  %50 = call i32 @set_current_state(i32 %49)
  %51 = load %struct.onenand_chip*, %struct.onenand_chip** %6, align 8
  %52 = getelementptr inbounds %struct.onenand_chip, %struct.onenand_chip* %51, i32 0, i32 1
  %53 = call i32 @add_wait_queue(i32* %52, i32* @wait)
  %54 = load %struct.onenand_chip*, %struct.onenand_chip** %6, align 8
  %55 = getelementptr inbounds %struct.onenand_chip, %struct.onenand_chip* %54, i32 0, i32 2
  %56 = call i32 @spin_unlock(i32* %55)
  %57 = call i32 (...) @schedule()
  %58 = load %struct.onenand_chip*, %struct.onenand_chip** %6, align 8
  %59 = getelementptr inbounds %struct.onenand_chip, %struct.onenand_chip* %58, i32 0, i32 1
  %60 = call i32 @remove_wait_queue(i32* %59, i32* @wait)
  br label %13

61:                                               ; preds = %22
  store i32 0, i32* %3, align 4
  br label %62

62:                                               ; preds = %61, %46
  %63 = load i32, i32* %3, align 4
  ret i32 %63
}

declare dso_local i32 @DECLARE_WAITQUEUE(i32, i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @set_current_state(i32) #1

declare dso_local i32 @add_wait_queue(i32*, i32*) #1

declare dso_local i32 @schedule(...) #1

declare dso_local i32 @remove_wait_queue(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
