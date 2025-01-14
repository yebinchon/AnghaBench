; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/libertas/extr_main.c_command_timer_fn.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/libertas/extr_main.c_command_timer_fn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lbs_private = type { i32, i32, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@LBS_DEB_CMD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"command 0x%04x timed out\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64)* @command_timer_fn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @command_timer_fn(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.lbs_private*, align 8
  %4 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %5 = load i64, i64* %2, align 8
  %6 = inttoptr i64 %5 to %struct.lbs_private*
  store %struct.lbs_private* %6, %struct.lbs_private** %3, align 8
  %7 = load i32, i32* @LBS_DEB_CMD, align 4
  %8 = call i32 @lbs_deb_enter(i32 %7)
  %9 = load %struct.lbs_private*, %struct.lbs_private** %3, align 8
  %10 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %9, i32 0, i32 1
  %11 = load i64, i64* %4, align 8
  %12 = call i32 @spin_lock_irqsave(i32* %10, i64 %11)
  %13 = load %struct.lbs_private*, %struct.lbs_private** %3, align 8
  %14 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %13, i32 0, i32 3
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %16 = icmp ne %struct.TYPE_4__* %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %1
  br label %33

18:                                               ; preds = %1
  %19 = load %struct.lbs_private*, %struct.lbs_private** %3, align 8
  %20 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %19, i32 0, i32 3
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @le16_to_cpu(i32 %25)
  %27 = call i32 @lbs_pr_info(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %26)
  %28 = load %struct.lbs_private*, %struct.lbs_private** %3, align 8
  %29 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %28, i32 0, i32 0
  store i32 1, i32* %29, align 8
  %30 = load %struct.lbs_private*, %struct.lbs_private** %3, align 8
  %31 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %30, i32 0, i32 2
  %32 = call i32 @wake_up_interruptible(i32* %31)
  br label %33

33:                                               ; preds = %18, %17
  %34 = load %struct.lbs_private*, %struct.lbs_private** %3, align 8
  %35 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %34, i32 0, i32 1
  %36 = load i64, i64* %4, align 8
  %37 = call i32 @spin_unlock_irqrestore(i32* %35, i64 %36)
  %38 = load i32, i32* @LBS_DEB_CMD, align 4
  %39 = call i32 @lbs_deb_leave(i32 %38)
  ret void
}

declare dso_local i32 @lbs_deb_enter(i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @lbs_pr_info(i8*, i32) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @wake_up_interruptible(i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @lbs_deb_leave(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
