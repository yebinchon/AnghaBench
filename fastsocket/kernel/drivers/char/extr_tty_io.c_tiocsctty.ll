; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_tty_io.c_tiocsctty.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_tty_io.c_tiocsctty.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i64, i64 }
%struct.tty_struct = type { i64 }

@current = common dso_local global %struct.TYPE_6__* null, align 8
@tty_mutex = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@CAP_SYS_ADMIN = common dso_local global i32 0, align 4
@tasklist_lock = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tty_struct*, i32)* @tiocsctty to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tiocsctty(%struct.tty_struct* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.tty_struct*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.tty_struct* %0, %struct.tty_struct** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %7 = load %struct.TYPE_6__*, %struct.TYPE_6__** @current, align 8
  %8 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 0
  %9 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 1
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %22

13:                                               ; preds = %2
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** @current, align 8
  %15 = call i64 @task_session(%struct.TYPE_6__* %14)
  %16 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %17 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp eq i64 %15, %18
  br i1 %19, label %20, label %22

20:                                               ; preds = %13
  %21 = load i32, i32* %6, align 4
  store i32 %21, i32* %3, align 4
  br label %70

22:                                               ; preds = %13, %2
  %23 = call i32 @mutex_lock(i32* @tty_mutex)
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** @current, align 8
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 0
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %37

30:                                               ; preds = %22
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** @current, align 8
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 0
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %30, %22
  %38 = load i32, i32* @EPERM, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %6, align 4
  br label %67

40:                                               ; preds = %30
  %41 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %42 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %63

45:                                               ; preds = %40
  %46 = load i32, i32* %5, align 4
  %47 = icmp eq i32 %46, 1
  br i1 %47, label %48, label %59

48:                                               ; preds = %45
  %49 = load i32, i32* @CAP_SYS_ADMIN, align 4
  %50 = call i64 @capable(i32 %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %59

52:                                               ; preds = %48
  %53 = call i32 @read_lock(i32* @tasklist_lock)
  %54 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %55 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = call i32 @session_clear_tty(i64 %56)
  %58 = call i32 @read_unlock(i32* @tasklist_lock)
  br label %62

59:                                               ; preds = %48, %45
  %60 = load i32, i32* @EPERM, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %6, align 4
  br label %67

62:                                               ; preds = %52
  br label %63

63:                                               ; preds = %62, %40
  %64 = load %struct.TYPE_6__*, %struct.TYPE_6__** @current, align 8
  %65 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %66 = call i32 @proc_set_tty(%struct.TYPE_6__* %64, %struct.tty_struct* %65)
  br label %67

67:                                               ; preds = %63, %59, %37
  %68 = call i32 @mutex_unlock(i32* @tty_mutex)
  %69 = load i32, i32* %6, align 4
  store i32 %69, i32* %3, align 4
  br label %70

70:                                               ; preds = %67, %20
  %71 = load i32, i32* %3, align 4
  ret i32 %71
}

declare dso_local i64 @task_session(%struct.TYPE_6__*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @capable(i32) #1

declare dso_local i32 @read_lock(i32*) #1

declare dso_local i32 @session_clear_tty(i64) #1

declare dso_local i32 @read_unlock(i32*) #1

declare dso_local i32 @proc_set_tty(%struct.TYPE_6__*, %struct.tty_struct*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
