; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_tty_io.c_tioccons.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_tty_io.c_tioccons.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@CAP_SYS_ADMIN = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@redirected_tty_write = common dso_local global i64 0, align 8
@redirect_lock = common dso_local global i32 0, align 4
@redirect = common dso_local global %struct.file* null, align 8
@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*)* @tioccons to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tioccons(%struct.file* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.file*, align 8
  %4 = alloca %struct.file*, align 8
  store %struct.file* %0, %struct.file** %3, align 8
  %5 = load i32, i32* @CAP_SYS_ADMIN, align 4
  %6 = call i32 @capable(i32 %5)
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %11, label %8

8:                                                ; preds = %1
  %9 = load i32, i32* @EPERM, align 4
  %10 = sub nsw i32 0, %9
  store i32 %10, i32* %2, align 4
  br label %42

11:                                               ; preds = %1
  %12 = load %struct.file*, %struct.file** %3, align 8
  %13 = getelementptr inbounds %struct.file, %struct.file* %12, i32 0, i32 0
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @redirected_tty_write, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %29

19:                                               ; preds = %11
  %20 = call i32 @spin_lock(i32* @redirect_lock)
  %21 = load %struct.file*, %struct.file** @redirect, align 8
  store %struct.file* %21, %struct.file** %4, align 8
  store %struct.file* null, %struct.file** @redirect, align 8
  %22 = call i32 @spin_unlock(i32* @redirect_lock)
  %23 = load %struct.file*, %struct.file** %4, align 8
  %24 = icmp ne %struct.file* %23, null
  br i1 %24, label %25, label %28

25:                                               ; preds = %19
  %26 = load %struct.file*, %struct.file** %4, align 8
  %27 = call i32 @fput(%struct.file* %26)
  br label %28

28:                                               ; preds = %25, %19
  store i32 0, i32* %2, align 4
  br label %42

29:                                               ; preds = %11
  %30 = call i32 @spin_lock(i32* @redirect_lock)
  %31 = load %struct.file*, %struct.file** @redirect, align 8
  %32 = icmp ne %struct.file* %31, null
  br i1 %32, label %33, label %37

33:                                               ; preds = %29
  %34 = call i32 @spin_unlock(i32* @redirect_lock)
  %35 = load i32, i32* @EBUSY, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %2, align 4
  br label %42

37:                                               ; preds = %29
  %38 = load %struct.file*, %struct.file** %3, align 8
  %39 = call i32 @get_file(%struct.file* %38)
  %40 = load %struct.file*, %struct.file** %3, align 8
  store %struct.file* %40, %struct.file** @redirect, align 8
  %41 = call i32 @spin_unlock(i32* @redirect_lock)
  store i32 0, i32* %2, align 4
  br label %42

42:                                               ; preds = %37, %33, %28, %8
  %43 = load i32, i32* %2, align 4
  ret i32 %43
}

declare dso_local i32 @capable(i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @fput(%struct.file*) #1

declare dso_local i32 @get_file(%struct.file*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
