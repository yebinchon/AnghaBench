; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/extr_airo.c_waitbusy.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/extr_airo.c_waitbusy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.airo_info = type { i32 }

@COMMAND = common dso_local global i32 0, align 4
@COMMAND_BUSY = common dso_local global i32 0, align 4
@EVACK = common dso_local global i32 0, align 4
@EV_CLEARCOMMANDBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.airo_info*)* @waitbusy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @waitbusy(%struct.airo_info* %0) #0 {
  %2 = alloca %struct.airo_info*, align 8
  %3 = alloca i32, align 4
  store %struct.airo_info* %0, %struct.airo_info** %2, align 8
  store i32 0, i32* %3, align 4
  br label %4

4:                                                ; preds = %27, %1
  %5 = load %struct.airo_info*, %struct.airo_info** %2, align 8
  %6 = load i32, i32* @COMMAND, align 4
  %7 = call i32 @IN4500(%struct.airo_info* %5, i32 %6)
  %8 = load i32, i32* @COMMAND_BUSY, align 4
  %9 = and i32 %7, %8
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %14

11:                                               ; preds = %4
  %12 = load i32, i32* %3, align 4
  %13 = icmp slt i32 %12, 10000
  br label %14

14:                                               ; preds = %11, %4
  %15 = phi i1 [ false, %4 ], [ %13, %11 ]
  br i1 %15, label %16, label %28

16:                                               ; preds = %14
  %17 = call i32 @udelay(i32 10)
  %18 = load i32, i32* %3, align 4
  %19 = add nsw i32 %18, 1
  store i32 %19, i32* %3, align 4
  %20 = srem i32 %19, 20
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %27

22:                                               ; preds = %16
  %23 = load %struct.airo_info*, %struct.airo_info** %2, align 8
  %24 = load i32, i32* @EVACK, align 4
  %25 = load i32, i32* @EV_CLEARCOMMANDBUSY, align 4
  %26 = call i32 @OUT4500(%struct.airo_info* %23, i32 %24, i32 %25)
  br label %27

27:                                               ; preds = %22, %16
  br label %4

28:                                               ; preds = %14
  %29 = load i32, i32* %3, align 4
  %30 = icmp slt i32 %29, 10000
  %31 = zext i1 %30 to i32
  ret i32 %31
}

declare dso_local i32 @IN4500(%struct.airo_info*, i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @OUT4500(%struct.airo_info*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
