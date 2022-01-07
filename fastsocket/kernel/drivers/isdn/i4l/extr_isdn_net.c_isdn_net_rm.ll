; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/i4l/extr_isdn_net.c_isdn_net_rm.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/i4l/extr_isdn_net.c_isdn_net_rm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_7__*, i32 }
%struct.TYPE_7__ = type { i64, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }

@dev = common dso_local global %struct.TYPE_8__* null, align 8
@ISDN_TIMER_NETHANGUP = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @isdn_net_rm(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca %struct.TYPE_7__*, align 8
  store i8* %0, i8** %3, align 8
  %7 = load %struct.TYPE_8__*, %struct.TYPE_8__** @dev, align 8
  %8 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %7, i32 0, i32 1
  %9 = load i32, i32* %4, align 4
  %10 = call i32 @spin_lock_irqsave(i32* %8, i32 %9)
  %11 = load %struct.TYPE_8__*, %struct.TYPE_8__** @dev, align 8
  %12 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %11, i32 0, i32 0
  %13 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  store %struct.TYPE_7__* %13, %struct.TYPE_7__** %5, align 8
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %6, align 8
  br label %14

14:                                               ; preds = %34, %1
  %15 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %16 = icmp ne %struct.TYPE_7__* %15, null
  br i1 %16, label %17, label %40

17:                                               ; preds = %14
  %18 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 1
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i8*, i8** %3, align 8
  %24 = call i32 @strcmp(i32 %22, i8* %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %34, label %26

26:                                               ; preds = %17
  %27 = load %struct.TYPE_8__*, %struct.TYPE_8__** @dev, align 8
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %27, i32 0, i32 1
  %29 = load i32, i32* %4, align 4
  %30 = call i32 @spin_unlock_irqrestore(i32* %28, i32 %29)
  %31 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %32 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %33 = call i32 @isdn_net_realrm(%struct.TYPE_7__* %31, %struct.TYPE_7__* %32)
  store i32 %33, i32* %2, align 4
  br label %55

34:                                               ; preds = %17
  %35 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  store %struct.TYPE_7__* %35, %struct.TYPE_7__** %6, align 8
  %36 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = inttoptr i64 %38 to %struct.TYPE_7__*
  store %struct.TYPE_7__* %39, %struct.TYPE_7__** %5, align 8
  br label %14

40:                                               ; preds = %14
  %41 = load %struct.TYPE_8__*, %struct.TYPE_8__** @dev, align 8
  %42 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %41, i32 0, i32 1
  %43 = load i32, i32* %4, align 4
  %44 = call i32 @spin_unlock_irqrestore(i32* %42, i32 %43)
  %45 = load %struct.TYPE_8__*, %struct.TYPE_8__** @dev, align 8
  %46 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %45, i32 0, i32 0
  %47 = load %struct.TYPE_7__*, %struct.TYPE_7__** %46, align 8
  %48 = icmp eq %struct.TYPE_7__* %47, null
  br i1 %48, label %49, label %52

49:                                               ; preds = %40
  %50 = load i32, i32* @ISDN_TIMER_NETHANGUP, align 4
  %51 = call i32 @isdn_timer_ctrl(i32 %50, i32 0)
  br label %52

52:                                               ; preds = %49, %40
  %53 = load i32, i32* @ENODEV, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %2, align 4
  br label %55

55:                                               ; preds = %52, %26
  %56 = load i32, i32* %2, align 4
  ret i32 %56
}

declare dso_local i32 @spin_lock_irqsave(i32*, i32) #1

declare dso_local i32 @strcmp(i32, i8*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i32) #1

declare dso_local i32 @isdn_net_realrm(%struct.TYPE_7__*, %struct.TYPE_7__*) #1

declare dso_local i32 @isdn_timer_ctrl(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
