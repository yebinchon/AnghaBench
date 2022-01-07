; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/mISDN/extr_timerdev.c_misdn_add_timer.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/mISDN/extr_timerdev.c_misdn_add_timer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mISDNtimerdev = type { i32, i32, i32, i32, i32 }
%struct.mISDNtimer = type { i32, %struct.TYPE_3__, %struct.mISDNtimerdev*, i32 }
%struct.TYPE_3__ = type { i64, i64, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@dev_expire_timer = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@HZ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mISDNtimerdev*, i32)* @misdn_add_timer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @misdn_add_timer(%struct.mISDNtimerdev* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mISDNtimerdev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.mISDNtimer*, align 8
  store %struct.mISDNtimerdev* %0, %struct.mISDNtimerdev** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load i32, i32* %5, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %17, label %11

11:                                               ; preds = %2
  %12 = load %struct.mISDNtimerdev*, %struct.mISDNtimerdev** %4, align 8
  %13 = getelementptr inbounds %struct.mISDNtimerdev, %struct.mISDNtimerdev* %12, i32 0, i32 0
  store i32 1, i32* %13, align 4
  %14 = load %struct.mISDNtimerdev*, %struct.mISDNtimerdev** %4, align 8
  %15 = getelementptr inbounds %struct.mISDNtimerdev, %struct.mISDNtimerdev* %14, i32 0, i32 4
  %16 = call i32 @wake_up_interruptible(i32* %15)
  store i32 0, i32* %6, align 4
  br label %84

17:                                               ; preds = %2
  %18 = load i32, i32* @GFP_KERNEL, align 4
  %19 = call %struct.mISDNtimer* @kzalloc(i32 48, i32 %18)
  store %struct.mISDNtimer* %19, %struct.mISDNtimer** %8, align 8
  %20 = load %struct.mISDNtimer*, %struct.mISDNtimer** %8, align 8
  %21 = icmp ne %struct.mISDNtimer* %20, null
  br i1 %21, label %25, label %22

22:                                               ; preds = %17
  %23 = load i32, i32* @ENOMEM, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %3, align 4
  br label %86

25:                                               ; preds = %17
  %26 = load %struct.mISDNtimerdev*, %struct.mISDNtimerdev** %4, align 8
  %27 = getelementptr inbounds %struct.mISDNtimerdev, %struct.mISDNtimerdev* %26, i32 0, i32 2
  %28 = load i32, i32* %7, align 4
  %29 = call i32 @spin_lock_irqsave(i32* %27, i32 %28)
  %30 = load %struct.mISDNtimerdev*, %struct.mISDNtimerdev** %4, align 8
  %31 = getelementptr inbounds %struct.mISDNtimerdev, %struct.mISDNtimerdev* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %31, align 4
  %34 = load %struct.mISDNtimer*, %struct.mISDNtimer** %8, align 8
  %35 = getelementptr inbounds %struct.mISDNtimer, %struct.mISDNtimer* %34, i32 0, i32 0
  store i32 %32, i32* %35, align 8
  %36 = load %struct.mISDNtimerdev*, %struct.mISDNtimerdev** %4, align 8
  %37 = getelementptr inbounds %struct.mISDNtimerdev, %struct.mISDNtimerdev* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = icmp slt i32 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %25
  %41 = load %struct.mISDNtimerdev*, %struct.mISDNtimerdev** %4, align 8
  %42 = getelementptr inbounds %struct.mISDNtimerdev, %struct.mISDNtimerdev* %41, i32 0, i32 1
  store i32 1, i32* %42, align 4
  br label %43

43:                                               ; preds = %40, %25
  %44 = load %struct.mISDNtimer*, %struct.mISDNtimer** %8, align 8
  %45 = getelementptr inbounds %struct.mISDNtimer, %struct.mISDNtimer* %44, i32 0, i32 3
  %46 = load %struct.mISDNtimerdev*, %struct.mISDNtimerdev** %4, align 8
  %47 = getelementptr inbounds %struct.mISDNtimerdev, %struct.mISDNtimerdev* %46, i32 0, i32 3
  %48 = call i32 @list_add_tail(i32* %45, i32* %47)
  %49 = load %struct.mISDNtimerdev*, %struct.mISDNtimerdev** %4, align 8
  %50 = getelementptr inbounds %struct.mISDNtimerdev, %struct.mISDNtimerdev* %49, i32 0, i32 2
  %51 = load i32, i32* %7, align 4
  %52 = call i32 @spin_unlock_irqrestore(i32* %50, i32 %51)
  %53 = load %struct.mISDNtimerdev*, %struct.mISDNtimerdev** %4, align 8
  %54 = load %struct.mISDNtimer*, %struct.mISDNtimer** %8, align 8
  %55 = getelementptr inbounds %struct.mISDNtimer, %struct.mISDNtimer* %54, i32 0, i32 2
  store %struct.mISDNtimerdev* %53, %struct.mISDNtimerdev** %55, align 8
  %56 = load %struct.mISDNtimer*, %struct.mISDNtimer** %8, align 8
  %57 = ptrtoint %struct.mISDNtimer* %56 to i64
  %58 = load %struct.mISDNtimer*, %struct.mISDNtimer** %8, align 8
  %59 = getelementptr inbounds %struct.mISDNtimer, %struct.mISDNtimer* %58, i32 0, i32 1
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 0
  store i64 %57, i64* %60, align 8
  %61 = load i32, i32* @dev_expire_timer, align 4
  %62 = load %struct.mISDNtimer*, %struct.mISDNtimer** %8, align 8
  %63 = getelementptr inbounds %struct.mISDNtimer, %struct.mISDNtimer* %62, i32 0, i32 1
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i32 0, i32 2
  store i32 %61, i32* %64, align 8
  %65 = load %struct.mISDNtimer*, %struct.mISDNtimer** %8, align 8
  %66 = getelementptr inbounds %struct.mISDNtimer, %struct.mISDNtimer* %65, i32 0, i32 1
  %67 = call i32 @init_timer(%struct.TYPE_3__* %66)
  %68 = load i64, i64* @jiffies, align 8
  %69 = load i32, i32* @HZ, align 4
  %70 = load i32, i32* %5, align 4
  %71 = mul nsw i32 %69, %70
  %72 = sdiv i32 %71, 1000
  %73 = sext i32 %72 to i64
  %74 = add nsw i64 %68, %73
  %75 = load %struct.mISDNtimer*, %struct.mISDNtimer** %8, align 8
  %76 = getelementptr inbounds %struct.mISDNtimer, %struct.mISDNtimer* %75, i32 0, i32 1
  %77 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %76, i32 0, i32 1
  store i64 %74, i64* %77, align 8
  %78 = load %struct.mISDNtimer*, %struct.mISDNtimer** %8, align 8
  %79 = getelementptr inbounds %struct.mISDNtimer, %struct.mISDNtimer* %78, i32 0, i32 1
  %80 = call i32 @add_timer(%struct.TYPE_3__* %79)
  %81 = load %struct.mISDNtimer*, %struct.mISDNtimer** %8, align 8
  %82 = getelementptr inbounds %struct.mISDNtimer, %struct.mISDNtimer* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  store i32 %83, i32* %6, align 4
  br label %84

84:                                               ; preds = %43, %11
  %85 = load i32, i32* %6, align 4
  store i32 %85, i32* %3, align 4
  br label %86

86:                                               ; preds = %84, %22
  %87 = load i32, i32* %3, align 4
  ret i32 %87
}

declare dso_local i32 @wake_up_interruptible(i32*) #1

declare dso_local %struct.mISDNtimer* @kzalloc(i32, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i32) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i32) #1

declare dso_local i32 @init_timer(%struct.TYPE_3__*) #1

declare dso_local i32 @add_timer(%struct.TYPE_3__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
