; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/input/gameport/extr_gameport.c_gameport_run_poll_handler.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/input/gameport/extr_gameport.c_gameport_run_poll_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gameport = type { i32, i32, i64, i32 (%struct.gameport*)* }

@jiffies = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64)* @gameport_run_poll_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gameport_run_poll_handler(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.gameport*, align 8
  store i64 %0, i64* %2, align 8
  %4 = load i64, i64* %2, align 8
  %5 = inttoptr i64 %4 to %struct.gameport*
  store %struct.gameport* %5, %struct.gameport** %3, align 8
  %6 = load %struct.gameport*, %struct.gameport** %3, align 8
  %7 = getelementptr inbounds %struct.gameport, %struct.gameport* %6, i32 0, i32 3
  %8 = load i32 (%struct.gameport*)*, i32 (%struct.gameport*)** %7, align 8
  %9 = load %struct.gameport*, %struct.gameport** %3, align 8
  %10 = call i32 %8(%struct.gameport* %9)
  %11 = load %struct.gameport*, %struct.gameport** %3, align 8
  %12 = getelementptr inbounds %struct.gameport, %struct.gameport* %11, i32 0, i32 2
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %25

15:                                               ; preds = %1
  %16 = load %struct.gameport*, %struct.gameport** %3, align 8
  %17 = getelementptr inbounds %struct.gameport, %struct.gameport* %16, i32 0, i32 1
  %18 = load i64, i64* @jiffies, align 8
  %19 = load %struct.gameport*, %struct.gameport** %3, align 8
  %20 = getelementptr inbounds %struct.gameport, %struct.gameport* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = call i64 @msecs_to_jiffies(i32 %21)
  %23 = add nsw i64 %18, %22
  %24 = call i32 @mod_timer(i32* %17, i64 %23)
  br label %25

25:                                               ; preds = %15, %1
  ret void
}

declare dso_local i32 @mod_timer(i32*, i64) #1

declare dso_local i64 @msecs_to_jiffies(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
