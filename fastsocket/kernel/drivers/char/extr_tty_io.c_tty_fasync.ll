; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_tty_io.c_tty_fasync.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_tty_io.c_tty_fasync.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { %struct.TYPE_4__, i64 }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.tty_struct = type { i32, i32, i32, i32, %struct.pid* }
%struct.pid = type { i32 }

@.str = private unnamed_addr constant [11 x i8] c"tty_fasync\00", align 1
@PIDTYPE_PGID = common dso_local global i32 0, align 4
@current = common dso_local global i32 0, align 4
@PIDTYPE_PID = common dso_local global i32 0, align 4
@N_TTY_BUF_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.file*, i32)* @tty_fasync to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tty_fasync(i32 %0, %struct.file* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.tty_struct*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.pid*, align 8
  store i32 %0, i32* %4, align 4
  store %struct.file* %1, %struct.file** %5, align 8
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %9, align 4
  %12 = call i32 (...) @lock_kernel()
  %13 = load %struct.file*, %struct.file** %5, align 8
  %14 = getelementptr inbounds %struct.file, %struct.file* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = inttoptr i64 %15 to %struct.tty_struct*
  store %struct.tty_struct* %16, %struct.tty_struct** %7, align 8
  %17 = load %struct.tty_struct*, %struct.tty_struct** %7, align 8
  %18 = load %struct.file*, %struct.file** %5, align 8
  %19 = getelementptr inbounds %struct.file, %struct.file* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i64 @tty_paranoia_check(%struct.tty_struct* %17, i32 %23, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %3
  br label %99

27:                                               ; preds = %3
  %28 = load i32, i32* %4, align 4
  %29 = load %struct.file*, %struct.file** %5, align 8
  %30 = load i32, i32* %6, align 4
  %31 = load %struct.tty_struct*, %struct.tty_struct** %7, align 8
  %32 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %31, i32 0, i32 2
  %33 = call i32 @fasync_helper(i32 %28, %struct.file* %29, i32 %30, i32* %32)
  store i32 %33, i32* %9, align 4
  %34 = load i32, i32* %9, align 4
  %35 = icmp sle i32 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %27
  br label %99

37:                                               ; preds = %27
  %38 = load i32, i32* %6, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %83

40:                                               ; preds = %37
  %41 = load %struct.tty_struct*, %struct.tty_struct** %7, align 8
  %42 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %41, i32 0, i32 1
  %43 = call i32 @waitqueue_active(i32* %42)
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %48, label %45

45:                                               ; preds = %40
  %46 = load %struct.tty_struct*, %struct.tty_struct** %7, align 8
  %47 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %46, i32 0, i32 0
  store i32 1, i32* %47, align 8
  br label %48

48:                                               ; preds = %45, %40
  %49 = load %struct.tty_struct*, %struct.tty_struct** %7, align 8
  %50 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %49, i32 0, i32 3
  %51 = load i64, i64* %8, align 8
  %52 = call i32 @spin_lock_irqsave(i32* %50, i64 %51)
  %53 = load %struct.tty_struct*, %struct.tty_struct** %7, align 8
  %54 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %53, i32 0, i32 4
  %55 = load %struct.pid*, %struct.pid** %54, align 8
  %56 = icmp ne %struct.pid* %55, null
  br i1 %56, label %57, label %62

57:                                               ; preds = %48
  %58 = load %struct.tty_struct*, %struct.tty_struct** %7, align 8
  %59 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %58, i32 0, i32 4
  %60 = load %struct.pid*, %struct.pid** %59, align 8
  store %struct.pid* %60, %struct.pid** %11, align 8
  %61 = load i32, i32* @PIDTYPE_PGID, align 4
  store i32 %61, i32* %10, align 4
  br label %66

62:                                               ; preds = %48
  %63 = load i32, i32* @current, align 4
  %64 = call %struct.pid* @task_pid(i32 %63)
  store %struct.pid* %64, %struct.pid** %11, align 8
  %65 = load i32, i32* @PIDTYPE_PID, align 4
  store i32 %65, i32* %10, align 4
  br label %66

66:                                               ; preds = %62, %57
  %67 = load %struct.pid*, %struct.pid** %11, align 8
  %68 = call i32 @get_pid(%struct.pid* %67)
  %69 = load %struct.tty_struct*, %struct.tty_struct** %7, align 8
  %70 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %69, i32 0, i32 3
  %71 = load i64, i64* %8, align 8
  %72 = call i32 @spin_unlock_irqrestore(i32* %70, i64 %71)
  %73 = load %struct.file*, %struct.file** %5, align 8
  %74 = load %struct.pid*, %struct.pid** %11, align 8
  %75 = load i32, i32* %10, align 4
  %76 = call i32 @__f_setown(%struct.file* %73, %struct.pid* %74, i32 %75, i32 0)
  store i32 %76, i32* %9, align 4
  %77 = load %struct.pid*, %struct.pid** %11, align 8
  %78 = call i32 @put_pid(%struct.pid* %77)
  %79 = load i32, i32* %9, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %82

81:                                               ; preds = %66
  br label %99

82:                                               ; preds = %66
  br label %98

83:                                               ; preds = %37
  %84 = load %struct.tty_struct*, %struct.tty_struct** %7, align 8
  %85 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %84, i32 0, i32 2
  %86 = load i32, i32* %85, align 8
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %97, label %88

88:                                               ; preds = %83
  %89 = load %struct.tty_struct*, %struct.tty_struct** %7, align 8
  %90 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %89, i32 0, i32 1
  %91 = call i32 @waitqueue_active(i32* %90)
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %97, label %93

93:                                               ; preds = %88
  %94 = load i32, i32* @N_TTY_BUF_SIZE, align 4
  %95 = load %struct.tty_struct*, %struct.tty_struct** %7, align 8
  %96 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %95, i32 0, i32 0
  store i32 %94, i32* %96, align 8
  br label %97

97:                                               ; preds = %93, %88, %83
  br label %98

98:                                               ; preds = %97, %82
  store i32 0, i32* %9, align 4
  br label %99

99:                                               ; preds = %98, %81, %36, %26
  %100 = call i32 (...) @unlock_kernel()
  %101 = load i32, i32* %9, align 4
  ret i32 %101
}

declare dso_local i32 @lock_kernel(...) #1

declare dso_local i64 @tty_paranoia_check(%struct.tty_struct*, i32, i8*) #1

declare dso_local i32 @fasync_helper(i32, %struct.file*, i32, i32*) #1

declare dso_local i32 @waitqueue_active(i32*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local %struct.pid* @task_pid(i32) #1

declare dso_local i32 @get_pid(%struct.pid*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @__f_setown(%struct.file*, %struct.pid*, i32, i32) #1

declare dso_local i32 @put_pid(%struct.pid*) #1

declare dso_local i32 @unlock_kernel(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
