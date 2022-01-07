; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/memstick/host/extr_jmb38x_ms.c_jmb38x_ms_abort.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/memstick/host/extr_jmb38x_ms.c_jmb38x_ms_abort.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.memstick_host = type { i32 }
%struct.jmb38x_ms_host = type { i32, %struct.TYPE_6__*, %struct.TYPE_5__* }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }

@.str = private unnamed_addr constant [7 x i8] c"abort\0A\00", align 1
@ETIME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64)* @jmb38x_ms_abort to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @jmb38x_ms_abort(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.memstick_host*, align 8
  %4 = alloca %struct.jmb38x_ms_host*, align 8
  %5 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %6 = load i64, i64* %2, align 8
  %7 = inttoptr i64 %6 to %struct.memstick_host*
  store %struct.memstick_host* %7, %struct.memstick_host** %3, align 8
  %8 = load %struct.memstick_host*, %struct.memstick_host** %3, align 8
  %9 = call %struct.jmb38x_ms_host* @memstick_priv(%struct.memstick_host* %8)
  store %struct.jmb38x_ms_host* %9, %struct.jmb38x_ms_host** %4, align 8
  %10 = load %struct.jmb38x_ms_host*, %struct.jmb38x_ms_host** %4, align 8
  %11 = getelementptr inbounds %struct.jmb38x_ms_host, %struct.jmb38x_ms_host* %10, i32 0, i32 2
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 0
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = call i32 @dev_dbg(i32* %15, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %17 = load %struct.jmb38x_ms_host*, %struct.jmb38x_ms_host** %4, align 8
  %18 = getelementptr inbounds %struct.jmb38x_ms_host, %struct.jmb38x_ms_host* %17, i32 0, i32 0
  %19 = load i64, i64* %5, align 8
  %20 = call i32 @spin_lock_irqsave(i32* %18, i64 %19)
  %21 = load %struct.jmb38x_ms_host*, %struct.jmb38x_ms_host** %4, align 8
  %22 = getelementptr inbounds %struct.jmb38x_ms_host, %struct.jmb38x_ms_host* %21, i32 0, i32 1
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %22, align 8
  %24 = icmp ne %struct.TYPE_6__* %23, null
  br i1 %24, label %25, label %34

25:                                               ; preds = %1
  %26 = load i32, i32* @ETIME, align 4
  %27 = sub nsw i32 0, %26
  %28 = load %struct.jmb38x_ms_host*, %struct.jmb38x_ms_host** %4, align 8
  %29 = getelementptr inbounds %struct.jmb38x_ms_host, %struct.jmb38x_ms_host* %28, i32 0, i32 1
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 0
  store i32 %27, i32* %31, align 4
  %32 = load %struct.memstick_host*, %struct.memstick_host** %3, align 8
  %33 = call i32 @jmb38x_ms_complete_cmd(%struct.memstick_host* %32, i32 0)
  br label %34

34:                                               ; preds = %25, %1
  %35 = load %struct.jmb38x_ms_host*, %struct.jmb38x_ms_host** %4, align 8
  %36 = getelementptr inbounds %struct.jmb38x_ms_host, %struct.jmb38x_ms_host* %35, i32 0, i32 0
  %37 = load i64, i64* %5, align 8
  %38 = call i32 @spin_unlock_irqrestore(i32* %36, i64 %37)
  ret void
}

declare dso_local %struct.jmb38x_ms_host* @memstick_priv(%struct.memstick_host*) #1

declare dso_local i32 @dev_dbg(i32*, i8*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @jmb38x_ms_complete_cmd(%struct.memstick_host*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
