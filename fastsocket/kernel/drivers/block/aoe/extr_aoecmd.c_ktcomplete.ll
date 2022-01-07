; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/block/aoe/extr_aoecmd.c_ktcomplete.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/block/aoe/extr_aoecmd.c_ktcomplete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_7__ = type { i32 }
%struct.frame = type { i32, %struct.TYPE_6__*, %struct.sk_buff* }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }
%struct.sk_buff = type { i32 }

@ncpus = common dso_local global i32 0, align 4
@iocq = common dso_local global %struct.TYPE_8__* null, align 8
@kts = common dso_local global %struct.TYPE_7__* null, align 8
@ktiowq = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.frame*, %struct.sk_buff*)* @ktcomplete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ktcomplete(%struct.frame* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca %struct.frame*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.frame* %0, %struct.frame** %3, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %4, align 8
  %7 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %8 = load %struct.frame*, %struct.frame** %3, align 8
  %9 = getelementptr inbounds %struct.frame, %struct.frame* %8, i32 0, i32 2
  store %struct.sk_buff* %7, %struct.sk_buff** %9, align 8
  %10 = load %struct.frame*, %struct.frame** %3, align 8
  %11 = getelementptr inbounds %struct.frame, %struct.frame* %10, i32 0, i32 1
  %12 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 0
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @ncpus, align 4
  %18 = srem i32 %16, %17
  store i32 %18, i32* %5, align 4
  %19 = load %struct.TYPE_8__*, %struct.TYPE_8__** @iocq, align 8
  %20 = load i32, i32* %5, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %19, i64 %21
  %23 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %22, i32 0, i32 0
  %24 = load i32, i32* %6, align 4
  %25 = call i32 @spin_lock_irqsave(i32* %23, i32 %24)
  %26 = load %struct.TYPE_7__*, %struct.TYPE_7__** @kts, align 8
  %27 = load i32, i32* %5, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %26, i64 %28
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %48, label %33

33:                                               ; preds = %2
  %34 = load %struct.TYPE_8__*, %struct.TYPE_8__** @iocq, align 8
  %35 = load i32, i32* %5, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %34, i64 %36
  %38 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %37, i32 0, i32 0
  %39 = load i32, i32* %6, align 4
  %40 = call i32 @spin_unlock_irqrestore(i32* %38, i32 %39)
  store i32 0, i32* %5, align 4
  %41 = load %struct.TYPE_8__*, %struct.TYPE_8__** @iocq, align 8
  %42 = load i32, i32* %5, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %41, i64 %43
  %45 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %44, i32 0, i32 0
  %46 = load i32, i32* %6, align 4
  %47 = call i32 @spin_lock_irqsave(i32* %45, i32 %46)
  br label %48

48:                                               ; preds = %33, %2
  %49 = load %struct.frame*, %struct.frame** %3, align 8
  %50 = getelementptr inbounds %struct.frame, %struct.frame* %49, i32 0, i32 0
  %51 = load %struct.TYPE_8__*, %struct.TYPE_8__** @iocq, align 8
  %52 = load i32, i32* %5, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %51, i64 %53
  %55 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %54, i32 0, i32 1
  %56 = call i32 @list_add_tail(i32* %50, i32* %55)
  %57 = load %struct.TYPE_8__*, %struct.TYPE_8__** @iocq, align 8
  %58 = load i32, i32* %5, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %57, i64 %59
  %61 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %60, i32 0, i32 0
  %62 = load i32, i32* %6, align 4
  %63 = call i32 @spin_unlock_irqrestore(i32* %61, i32 %62)
  %64 = load i32*, i32** @ktiowq, align 8
  %65 = load i32, i32* %5, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i32, i32* %64, i64 %66
  %68 = call i32 @wake_up(i32* %67)
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i32) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @wake_up(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
