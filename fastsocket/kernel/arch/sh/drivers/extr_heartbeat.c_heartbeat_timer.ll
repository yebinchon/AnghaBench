; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/sh/drivers/extr_heartbeat.c_heartbeat_timer.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/sh/drivers/extr_heartbeat.c_heartbeat_timer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.heartbeat_data = type { i32, i32, i32 }

@heartbeat_timer.bit = internal global i32 0, align 4
@heartbeat_timer.up = internal global i32 1, align 4
@HEARTBEAT_INVERTED = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@FSHIFT = common dso_local global i32 0, align 4
@avenrun = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64)* @heartbeat_timer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @heartbeat_timer(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.heartbeat_data*, align 8
  store i64 %0, i64* %2, align 8
  %4 = load i64, i64* %2, align 8
  %5 = inttoptr i64 %4 to %struct.heartbeat_data*
  store %struct.heartbeat_data* %5, %struct.heartbeat_data** %3, align 8
  %6 = load %struct.heartbeat_data*, %struct.heartbeat_data** %3, align 8
  %7 = load i32, i32* @heartbeat_timer.bit, align 4
  %8 = load %struct.heartbeat_data*, %struct.heartbeat_data** %3, align 8
  %9 = getelementptr inbounds %struct.heartbeat_data, %struct.heartbeat_data* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* @HEARTBEAT_INVERTED, align 4
  %12 = and i32 %10, %11
  %13 = call i32 @heartbeat_toggle_bit(%struct.heartbeat_data* %6, i32 %7, i32 %12)
  %14 = load i32, i32* @heartbeat_timer.up, align 4
  %15 = load i32, i32* @heartbeat_timer.bit, align 4
  %16 = add i32 %15, %14
  store i32 %16, i32* @heartbeat_timer.bit, align 4
  %17 = load i32, i32* @heartbeat_timer.bit, align 4
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %26, label %19

19:                                               ; preds = %1
  %20 = load i32, i32* @heartbeat_timer.bit, align 4
  %21 = load %struct.heartbeat_data*, %struct.heartbeat_data** %3, align 8
  %22 = getelementptr inbounds %struct.heartbeat_data, %struct.heartbeat_data* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = sub nsw i32 %23, 1
  %25 = icmp eq i32 %20, %24
  br i1 %25, label %26, label %29

26:                                               ; preds = %19, %1
  %27 = load i32, i32* @heartbeat_timer.up, align 4
  %28 = sub i32 0, %27
  store i32 %28, i32* @heartbeat_timer.up, align 4
  br label %29

29:                                               ; preds = %26, %19
  %30 = load %struct.heartbeat_data*, %struct.heartbeat_data** %3, align 8
  %31 = getelementptr inbounds %struct.heartbeat_data, %struct.heartbeat_data* %30, i32 0, i32 2
  %32 = load i64, i64* @jiffies, align 8
  %33 = load i32, i32* @FSHIFT, align 4
  %34 = shl i32 300, %33
  %35 = load i32*, i32** @avenrun, align 8
  %36 = getelementptr inbounds i32, i32* %35, i64 0
  %37 = load i32, i32* %36, align 4
  %38 = sdiv i32 %37, 5
  %39 = load i32, i32* @FSHIFT, align 4
  %40 = shl i32 3, %39
  %41 = add nsw i32 %38, %40
  %42 = sdiv i32 %34, %41
  %43 = sub nsw i32 110, %42
  %44 = sext i32 %43 to i64
  %45 = add nsw i64 %32, %44
  %46 = call i32 @mod_timer(i32* %31, i64 %45)
  ret void
}

declare dso_local i32 @heartbeat_toggle_bit(%struct.heartbeat_data*, i32, i32) #1

declare dso_local i32 @mod_timer(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
