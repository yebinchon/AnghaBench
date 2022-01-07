; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_crisv10.c_rs_wait_until_sent.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_crisv10.c_rs_wait_until_sent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty_struct = type { i64 }
%struct.e100_serial = type { i64, i64, i32*, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i64 }

@jiffies = common dso_local global i64 0, align 8
@HZ = common dso_local global i32 0, align 4
@current = common dso_local global i32 0, align 4
@TASK_RUNNING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tty_struct*, i32)* @rs_wait_until_sent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rs_wait_until_sent(%struct.tty_struct* %0, i32 %1) #0 {
  %3 = alloca %struct.tty_struct*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca %struct.e100_serial*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store %struct.tty_struct* %0, %struct.tty_struct** %3, align 8
  store i32 %1, i32* %4, align 4
  %10 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %11 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = inttoptr i64 %12 to %struct.e100_serial*
  store %struct.e100_serial* %13, %struct.e100_serial** %6, align 8
  %14 = load i64, i64* @jiffies, align 8
  store i64 %14, i64* %7, align 8
  %15 = call i64 (...) @GET_JIFFIES_USEC()
  store i64 %15, i64* %8, align 8
  %16 = load i64, i64* %7, align 8
  %17 = load %struct.e100_serial*, %struct.e100_serial** %6, align 8
  %18 = getelementptr inbounds %struct.e100_serial, %struct.e100_serial* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = sub i64 %16, %19
  %21 = load i32, i32* @HZ, align 4
  %22 = sdiv i32 1000000, %21
  %23 = sext i32 %22 to i64
  %24 = mul i64 %20, %23
  %25 = load i64, i64* %8, align 8
  %26 = add i64 %24, %25
  %27 = load %struct.e100_serial*, %struct.e100_serial** %6, align 8
  %28 = getelementptr inbounds %struct.e100_serial, %struct.e100_serial* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = sub i64 %26, %29
  store i64 %30, i64* %9, align 8
  %31 = call i32 (...) @lock_kernel()
  %32 = load i64, i64* @jiffies, align 8
  store i64 %32, i64* %5, align 8
  br label %33

33:                                               ; preds = %78, %2
  %34 = load %struct.e100_serial*, %struct.e100_serial** %6, align 8
  %35 = getelementptr inbounds %struct.e100_serial, %struct.e100_serial* %34, i32 0, i32 4
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load %struct.e100_serial*, %struct.e100_serial** %6, align 8
  %39 = getelementptr inbounds %struct.e100_serial, %struct.e100_serial* %38, i32 0, i32 4
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %37, %41
  br i1 %42, label %58, label %43

43:                                               ; preds = %33
  %44 = load %struct.e100_serial*, %struct.e100_serial** %6, align 8
  %45 = getelementptr inbounds %struct.e100_serial, %struct.e100_serial* %44, i32 0, i32 2
  %46 = load i32*, i32** %45, align 8
  %47 = load i32, i32* %46, align 4
  %48 = and i32 %47, 127
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %58, label %50

50:                                               ; preds = %43
  %51 = load i64, i64* %9, align 8
  %52 = load %struct.e100_serial*, %struct.e100_serial** %6, align 8
  %53 = getelementptr inbounds %struct.e100_serial, %struct.e100_serial* %52, i32 0, i32 3
  %54 = load i32, i32* %53, align 8
  %55 = mul nsw i32 2, %54
  %56 = sext i32 %55 to i64
  %57 = icmp slt i64 %51, %56
  br label %58

58:                                               ; preds = %50, %43, %33
  %59 = phi i1 [ true, %43 ], [ true, %33 ], [ %57, %50 ]
  br i1 %59, label %60, label %96

60:                                               ; preds = %58
  %61 = call i32 @schedule_timeout_interruptible(i32 1)
  %62 = load i32, i32* @current, align 4
  %63 = call i64 @signal_pending(i32 %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %60
  br label %96

66:                                               ; preds = %60
  %67 = load i32, i32* %4, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %78

69:                                               ; preds = %66
  %70 = load i64, i64* @jiffies, align 8
  %71 = load i64, i64* %5, align 8
  %72 = load i32, i32* %4, align 4
  %73 = sext i32 %72 to i64
  %74 = add i64 %71, %73
  %75 = call i64 @time_after(i64 %70, i64 %74)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %78

77:                                               ; preds = %69
  br label %96

78:                                               ; preds = %69, %66
  %79 = load i64, i64* @jiffies, align 8
  store i64 %79, i64* %7, align 8
  %80 = call i64 (...) @GET_JIFFIES_USEC()
  store i64 %80, i64* %8, align 8
  %81 = load i64, i64* %7, align 8
  %82 = load %struct.e100_serial*, %struct.e100_serial** %6, align 8
  %83 = getelementptr inbounds %struct.e100_serial, %struct.e100_serial* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = sub i64 %81, %84
  %86 = load i32, i32* @HZ, align 4
  %87 = sdiv i32 1000000, %86
  %88 = sext i32 %87 to i64
  %89 = mul i64 %85, %88
  %90 = load i64, i64* %8, align 8
  %91 = add i64 %89, %90
  %92 = load %struct.e100_serial*, %struct.e100_serial** %6, align 8
  %93 = getelementptr inbounds %struct.e100_serial, %struct.e100_serial* %92, i32 0, i32 1
  %94 = load i64, i64* %93, align 8
  %95 = sub i64 %91, %94
  store i64 %95, i64* %9, align 8
  br label %33

96:                                               ; preds = %77, %65, %58
  %97 = load i32, i32* @TASK_RUNNING, align 4
  %98 = call i32 @set_current_state(i32 %97)
  %99 = call i32 (...) @unlock_kernel()
  ret void
}

declare dso_local i64 @GET_JIFFIES_USEC(...) #1

declare dso_local i32 @lock_kernel(...) #1

declare dso_local i32 @schedule_timeout_interruptible(i32) #1

declare dso_local i64 @signal_pending(i32) #1

declare dso_local i64 @time_after(i64, i64) #1

declare dso_local i32 @set_current_state(i32) #1

declare dso_local i32 @unlock_kernel(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
