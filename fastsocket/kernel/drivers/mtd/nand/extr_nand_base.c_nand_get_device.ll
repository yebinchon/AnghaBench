; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/nand/extr_nand_base.c_nand_get_device.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/nand/extr_nand_base.c_nand_get_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nand_chip = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.nand_chip*, i32, i32 }
%struct.mtd_info = type { i32 }

@wait = common dso_local global i32 0, align 4
@current = common dso_local global i32 0, align 4
@FL_READY = common dso_local global i32 0, align 4
@FL_PM_SUSPENDED = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@TASK_UNINTERRUPTIBLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nand_chip*, %struct.mtd_info*, i32)* @nand_get_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nand_get_device(%struct.nand_chip* %0, %struct.mtd_info* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.nand_chip*, align 8
  %6 = alloca %struct.mtd_info*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  store %struct.nand_chip* %0, %struct.nand_chip** %5, align 8
  store %struct.mtd_info* %1, %struct.mtd_info** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load %struct.nand_chip*, %struct.nand_chip** %5, align 8
  %11 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %10, i32 0, i32 1
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 2
  store i32* %13, i32** %8, align 8
  %14 = load %struct.nand_chip*, %struct.nand_chip** %5, align 8
  %15 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %14, i32 0, i32 1
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 1
  store i32* %17, i32** %9, align 8
  %18 = load i32, i32* @wait, align 4
  %19 = load i32, i32* @current, align 4
  %20 = call i32 @DECLARE_WAITQUEUE(i32 %18, i32 %19)
  br label %21

21:                                               ; preds = %74, %3
  %22 = load i32*, i32** %8, align 8
  %23 = call i32 @spin_lock(i32* %22)
  %24 = load %struct.nand_chip*, %struct.nand_chip** %5, align 8
  %25 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %24, i32 0, i32 1
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load %struct.nand_chip*, %struct.nand_chip** %27, align 8
  %29 = icmp ne %struct.nand_chip* %28, null
  br i1 %29, label %36, label %30

30:                                               ; preds = %21
  %31 = load %struct.nand_chip*, %struct.nand_chip** %5, align 8
  %32 = load %struct.nand_chip*, %struct.nand_chip** %5, align 8
  %33 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %32, i32 0, i32 1
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  store %struct.nand_chip* %31, %struct.nand_chip** %35, align 8
  br label %36

36:                                               ; preds = %30, %21
  %37 = load %struct.nand_chip*, %struct.nand_chip** %5, align 8
  %38 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %37, i32 0, i32 1
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = load %struct.nand_chip*, %struct.nand_chip** %40, align 8
  %42 = load %struct.nand_chip*, %struct.nand_chip** %5, align 8
  %43 = icmp eq %struct.nand_chip* %41, %42
  br i1 %43, label %44, label %56

44:                                               ; preds = %36
  %45 = load %struct.nand_chip*, %struct.nand_chip** %5, align 8
  %46 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = load i32, i32* @FL_READY, align 4
  %49 = icmp eq i32 %47, %48
  br i1 %49, label %50, label %56

50:                                               ; preds = %44
  %51 = load i32, i32* %7, align 4
  %52 = load %struct.nand_chip*, %struct.nand_chip** %5, align 8
  %53 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %52, i32 0, i32 0
  store i32 %51, i32* %53, align 8
  %54 = load i32*, i32** %8, align 8
  %55 = call i32 @spin_unlock(i32* %54)
  store i32 0, i32* %4, align 4
  br label %84

56:                                               ; preds = %44, %36
  %57 = load i32, i32* %7, align 4
  %58 = load i32, i32* @FL_PM_SUSPENDED, align 4
  %59 = icmp eq i32 %57, %58
  br i1 %59, label %60, label %74

60:                                               ; preds = %56
  %61 = load i32*, i32** %8, align 8
  %62 = call i32 @spin_unlock(i32* %61)
  %63 = load %struct.nand_chip*, %struct.nand_chip** %5, align 8
  %64 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = load i32, i32* @FL_PM_SUSPENDED, align 4
  %67 = icmp eq i32 %65, %66
  br i1 %67, label %68, label %69

68:                                               ; preds = %60
  br label %72

69:                                               ; preds = %60
  %70 = load i32, i32* @EAGAIN, align 4
  %71 = sub nsw i32 0, %70
  br label %72

72:                                               ; preds = %69, %68
  %73 = phi i32 [ 0, %68 ], [ %71, %69 ]
  store i32 %73, i32* %4, align 4
  br label %84

74:                                               ; preds = %56
  %75 = load i32, i32* @TASK_UNINTERRUPTIBLE, align 4
  %76 = call i32 @set_current_state(i32 %75)
  %77 = load i32*, i32** %9, align 8
  %78 = call i32 @add_wait_queue(i32* %77, i32* @wait)
  %79 = load i32*, i32** %8, align 8
  %80 = call i32 @spin_unlock(i32* %79)
  %81 = call i32 (...) @schedule()
  %82 = load i32*, i32** %9, align 8
  %83 = call i32 @remove_wait_queue(i32* %82, i32* @wait)
  br label %21

84:                                               ; preds = %72, %50
  %85 = load i32, i32* %4, align 4
  ret i32 %85
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
