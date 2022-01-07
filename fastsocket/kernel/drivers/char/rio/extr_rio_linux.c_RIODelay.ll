; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/rio/extr_rio_linux.c_RIODelay.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/rio/extr_rio_linux.c_RIODelay.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Port = type { i32 }

@RIO_DEBUG_DELAY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"delaying %d jiffies\0A\00", align 1
@current = common dso_local global i32 0, align 4
@RIO_FAIL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @RIODelay(%struct.Port* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.Port*, align 8
  %5 = alloca i32, align 4
  store %struct.Port* %0, %struct.Port** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = call i32 (...) @func_enter()
  %7 = load i32, i32* @RIO_DEBUG_DELAY, align 4
  %8 = load i32, i32* %5, align 4
  %9 = call i32 @rio_dprintk(i32 %7, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %8)
  %10 = load i32, i32* %5, align 4
  %11 = call i32 @jiffies_to_msecs(i32 %10)
  %12 = call i32 @msleep_interruptible(i32 %11)
  %13 = call i32 (...) @func_exit()
  %14 = load i32, i32* @current, align 4
  %15 = call i64 @signal_pending(i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %2
  %18 = load i32, i32* @RIO_FAIL, align 4
  store i32 %18, i32* %3, align 4
  br label %24

19:                                               ; preds = %2
  %20 = load i32, i32* @RIO_FAIL, align 4
  %21 = icmp ne i32 %20, 0
  %22 = xor i1 %21, true
  %23 = zext i1 %22 to i32
  store i32 %23, i32* %3, align 4
  br label %24

24:                                               ; preds = %19, %17
  %25 = load i32, i32* %3, align 4
  ret i32 %25
}

declare dso_local i32 @func_enter(...) #1

declare dso_local i32 @rio_dprintk(i32, i8*, i32) #1

declare dso_local i32 @msleep_interruptible(i32) #1

declare dso_local i32 @jiffies_to_msecs(i32) #1

declare dso_local i32 @func_exit(...) #1

declare dso_local i64 @signal_pending(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
