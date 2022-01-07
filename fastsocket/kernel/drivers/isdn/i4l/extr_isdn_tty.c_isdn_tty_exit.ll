; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/i4l/extr_isdn_tty.c_isdn_tty_exit.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/i4l/extr_isdn_tty.c_isdn_tty_exit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32*, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i64, i64 }

@ISDN_MAX_CHANNELS = common dso_local global i32 0, align 4
@dev = common dso_local global %struct.TYPE_7__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @isdn_tty_exit() #0 {
  %1 = alloca %struct.TYPE_6__*, align 8
  %2 = alloca i32, align 4
  store i32 0, i32* %2, align 4
  br label %3

3:                                                ; preds = %22, %0
  %4 = load i32, i32* %2, align 4
  %5 = load i32, i32* @ISDN_MAX_CHANNELS, align 4
  %6 = icmp slt i32 %4, %5
  br i1 %6, label %7, label %25

7:                                                ; preds = %3
  %8 = load %struct.TYPE_7__*, %struct.TYPE_7__** @dev, align 8
  %9 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 1
  %11 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %12 = load i32, i32* %2, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i64 %13
  store %struct.TYPE_6__* %14, %struct.TYPE_6__** %1, align 8
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** %1, align 8
  %16 = call i32 @isdn_tty_cleanup_xmit(%struct.TYPE_6__* %15)
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %1, align 8
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = sub nsw i64 %19, 4
  %21 = call i32 @kfree(i64 %20)
  br label %22

22:                                               ; preds = %7
  %23 = load i32, i32* %2, align 4
  %24 = add nsw i32 %23, 1
  store i32 %24, i32* %2, align 4
  br label %3

25:                                               ; preds = %3
  %26 = load %struct.TYPE_7__*, %struct.TYPE_7__** @dev, align 8
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 0
  %29 = load i32*, i32** %28, align 8
  %30 = call i32 @tty_unregister_driver(i32* %29)
  %31 = load %struct.TYPE_7__*, %struct.TYPE_7__** @dev, align 8
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 0
  %34 = load i32*, i32** %33, align 8
  %35 = call i32 @put_tty_driver(i32* %34)
  %36 = load %struct.TYPE_7__*, %struct.TYPE_7__** @dev, align 8
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 0
  store i32* null, i32** %38, align 8
  ret void
}

declare dso_local i32 @isdn_tty_cleanup_xmit(%struct.TYPE_6__*) #1

declare dso_local i32 @kfree(i64) #1

declare dso_local i32 @tty_unregister_driver(i32*) #1

declare dso_local i32 @put_tty_driver(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
