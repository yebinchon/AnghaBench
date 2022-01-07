; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_tty_io.c_send_break.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_tty_io.c_send_break.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty_struct = type { %struct.TYPE_3__*, %struct.TYPE_4__* }
%struct.TYPE_3__ = type { i32 (%struct.tty_struct*, i32)* }
%struct.TYPE_4__ = type { i32 }

@TTY_DRIVER_HARDWARE_BREAK = common dso_local global i32 0, align 4
@EINTR = common dso_local global i32 0, align 4
@current = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tty_struct*, i32)* @send_break to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @send_break(%struct.tty_struct* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.tty_struct*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.tty_struct* %0, %struct.tty_struct** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %8 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %7, i32 0, i32 0
  %9 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %11 = load i32 (%struct.tty_struct*, i32)*, i32 (%struct.tty_struct*, i32)** %10, align 8
  %12 = icmp eq i32 (%struct.tty_struct*, i32)* %11, null
  br i1 %12, label %13, label %14

13:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %77

14:                                               ; preds = %2
  %15 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %16 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %15, i32 0, i32 1
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @TTY_DRIVER_HARDWARE_BREAK, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %32

23:                                               ; preds = %14
  %24 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %25 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %24, i32 0, i32 0
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  %28 = load i32 (%struct.tty_struct*, i32)*, i32 (%struct.tty_struct*, i32)** %27, align 8
  %29 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %30 = load i32, i32* %5, align 4
  %31 = call i32 %28(%struct.tty_struct* %29, i32 %30)
  store i32 %31, i32* %6, align 4
  br label %75

32:                                               ; preds = %14
  %33 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %34 = call i64 @tty_write_lock(%struct.tty_struct* %33, i32 0)
  %35 = icmp slt i64 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %32
  %37 = load i32, i32* @EINTR, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %3, align 4
  br label %77

39:                                               ; preds = %32
  %40 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %41 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %40, i32 0, i32 0
  %42 = load %struct.TYPE_3__*, %struct.TYPE_3__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 0
  %44 = load i32 (%struct.tty_struct*, i32)*, i32 (%struct.tty_struct*, i32)** %43, align 8
  %45 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %46 = call i32 %44(%struct.tty_struct* %45, i32 -1)
  store i32 %46, i32* %6, align 4
  %47 = load i32, i32* %6, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %39
  br label %65

50:                                               ; preds = %39
  %51 = load i32, i32* @current, align 4
  %52 = call i64 @signal_pending(i32 %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %57, label %54

54:                                               ; preds = %50
  %55 = load i32, i32* %5, align 4
  %56 = call i32 @msleep_interruptible(i32 %55)
  br label %57

57:                                               ; preds = %54, %50
  %58 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %59 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %58, i32 0, i32 0
  %60 = load %struct.TYPE_3__*, %struct.TYPE_3__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i32 0, i32 0
  %62 = load i32 (%struct.tty_struct*, i32)*, i32 (%struct.tty_struct*, i32)** %61, align 8
  %63 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %64 = call i32 %62(%struct.tty_struct* %63, i32 0)
  store i32 %64, i32* %6, align 4
  br label %65

65:                                               ; preds = %57, %49
  %66 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %67 = call i32 @tty_write_unlock(%struct.tty_struct* %66)
  %68 = load i32, i32* @current, align 4
  %69 = call i64 @signal_pending(i32 %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %74

71:                                               ; preds = %65
  %72 = load i32, i32* @EINTR, align 4
  %73 = sub nsw i32 0, %72
  store i32 %73, i32* %6, align 4
  br label %74

74:                                               ; preds = %71, %65
  br label %75

75:                                               ; preds = %74, %23
  %76 = load i32, i32* %6, align 4
  store i32 %76, i32* %3, align 4
  br label %77

77:                                               ; preds = %75, %36, %13
  %78 = load i32, i32* %3, align 4
  ret i32 %78
}

declare dso_local i64 @tty_write_lock(%struct.tty_struct*, i32) #1

declare dso_local i64 @signal_pending(i32) #1

declare dso_local i32 @msleep_interruptible(i32) #1

declare dso_local i32 @tty_write_unlock(%struct.tty_struct*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
