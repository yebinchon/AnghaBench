; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_tty_io.c_tty_reopen.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_tty_io.c_tty_reopen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty_struct = type { i32, i32, %struct.tty_driver*, i64, %struct.TYPE_2__* }
%struct.tty_driver = type { i64, i64 }
%struct.TYPE_2__ = type { i32 }

@TTY_CLOSING = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@TTY_DRIVER_TYPE_PTY = common dso_local global i64 0, align 8
@PTY_TYPE_MASTER = common dso_local global i64 0, align 8
@TTY_LDISC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tty_struct*)* @tty_reopen to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tty_reopen(%struct.tty_struct* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.tty_struct*, align 8
  %4 = alloca %struct.tty_driver*, align 8
  store %struct.tty_struct* %0, %struct.tty_struct** %3, align 8
  %5 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %6 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %5, i32 0, i32 2
  %7 = load %struct.tty_driver*, %struct.tty_driver** %6, align 8
  store %struct.tty_driver* %7, %struct.tty_driver** %4, align 8
  %8 = load i32, i32* @TTY_CLOSING, align 4
  %9 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %10 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %9, i32 0, i32 1
  %11 = call i64 @test_bit(i32 %8, i32* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %1
  %14 = load i32, i32* @EIO, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %2, align 4
  br label %65

16:                                               ; preds = %1
  %17 = load %struct.tty_driver*, %struct.tty_driver** %4, align 8
  %18 = getelementptr inbounds %struct.tty_driver, %struct.tty_driver* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @TTY_DRIVER_TYPE_PTY, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %43

22:                                               ; preds = %16
  %23 = load %struct.tty_driver*, %struct.tty_driver** %4, align 8
  %24 = getelementptr inbounds %struct.tty_driver, %struct.tty_driver* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @PTY_TYPE_MASTER, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %43

28:                                               ; preds = %22
  %29 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %30 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %29, i32 0, i32 3
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %28
  %34 = load i32, i32* @EIO, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %2, align 4
  br label %65

36:                                               ; preds = %28
  %37 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %38 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %37, i32 0, i32 4
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %40, align 4
  br label %43

43:                                               ; preds = %36, %22, %16
  %44 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %45 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %44, i32 0, i32 3
  %46 = load i64, i64* %45, align 8
  %47 = add nsw i64 %46, 1
  store i64 %47, i64* %45, align 8
  %48 = load %struct.tty_driver*, %struct.tty_driver** %4, align 8
  %49 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %50 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %49, i32 0, i32 2
  store %struct.tty_driver* %48, %struct.tty_driver** %50, align 8
  %51 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %52 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %51, i32 0, i32 0
  %53 = call i32 @mutex_lock(i32* %52)
  %54 = load i32, i32* @TTY_LDISC, align 4
  %55 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %56 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %55, i32 0, i32 1
  %57 = call i64 @test_bit(i32 %54, i32* %56)
  %58 = icmp ne i64 %57, 0
  %59 = xor i1 %58, true
  %60 = zext i1 %59 to i32
  %61 = call i32 @WARN_ON(i32 %60)
  %62 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %63 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %62, i32 0, i32 0
  %64 = call i32 @mutex_unlock(i32* %63)
  store i32 0, i32* %2, align 4
  br label %65

65:                                               ; preds = %43, %33, %13
  %66 = load i32, i32* %2, align 4
  ret i32 %66
}

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
