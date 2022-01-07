; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/input/gameport/extr_gameport.c_gameport_start_polling.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/input/gameport/extr_gameport.c_gameport_start_polling.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gameport = type { i32, i32, i32, i32, i32 }

@jiffies = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gameport_start_polling(%struct.gameport* %0) #0 {
  %2 = alloca %struct.gameport*, align 8
  store %struct.gameport* %0, %struct.gameport** %2, align 8
  %3 = load %struct.gameport*, %struct.gameport** %2, align 8
  %4 = getelementptr inbounds %struct.gameport, %struct.gameport* %3, i32 0, i32 0
  %5 = call i32 @spin_lock(i32* %4)
  %6 = load %struct.gameport*, %struct.gameport** %2, align 8
  %7 = getelementptr inbounds %struct.gameport, %struct.gameport* %6, i32 0, i32 4
  %8 = load i32, i32* %7, align 4
  %9 = add nsw i32 %8, 1
  store i32 %9, i32* %7, align 4
  %10 = icmp ne i32 %8, 0
  br i1 %10, label %35, label %11

11:                                               ; preds = %1
  %12 = load %struct.gameport*, %struct.gameport** %2, align 8
  %13 = getelementptr inbounds %struct.gameport, %struct.gameport* %12, i32 0, i32 3
  %14 = load i32, i32* %13, align 4
  %15 = icmp ne i32 %14, 0
  %16 = xor i1 %15, true
  %17 = zext i1 %16 to i32
  %18 = call i32 @BUG_ON(i32 %17)
  %19 = load %struct.gameport*, %struct.gameport** %2, align 8
  %20 = getelementptr inbounds %struct.gameport, %struct.gameport* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = icmp ne i32 %21, 0
  %23 = xor i1 %22, true
  %24 = zext i1 %23 to i32
  %25 = call i32 @BUG_ON(i32 %24)
  %26 = load %struct.gameport*, %struct.gameport** %2, align 8
  %27 = getelementptr inbounds %struct.gameport, %struct.gameport* %26, i32 0, i32 2
  %28 = load i64, i64* @jiffies, align 8
  %29 = load %struct.gameport*, %struct.gameport** %2, align 8
  %30 = getelementptr inbounds %struct.gameport, %struct.gameport* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = call i64 @msecs_to_jiffies(i32 %31)
  %33 = add nsw i64 %28, %32
  %34 = call i32 @mod_timer(i32* %27, i64 %33)
  br label %35

35:                                               ; preds = %11, %1
  %36 = load %struct.gameport*, %struct.gameport** %2, align 8
  %37 = getelementptr inbounds %struct.gameport, %struct.gameport* %36, i32 0, i32 0
  %38 = call i32 @spin_unlock(i32* %37)
  ret void
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @mod_timer(i32*, i64) #1

declare dso_local i64 @msecs_to_jiffies(i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
