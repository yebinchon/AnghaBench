; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/gigaset/extr_common.c_gigaset_start.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/gigaset/extr_common.c_gigaset_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cardstate = type { i32, i64, i32, i32, i32, i32, i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 (%struct.cardstate*, i32)*, i32 (%struct.cardstate*, i32)*, i32 (%struct.cardstate*, i32, i32)* }

@MS_LOCKED = common dso_local global i64 0, align 8
@TIOCM_DTR = common dso_local global i32 0, align 4
@TIOCM_RTS = common dso_local global i32 0, align 4
@B115200 = common dso_local global i32 0, align 4
@CS8 = common dso_local global i32 0, align 4
@EV_START = common dso_local global i32 0, align 4
@DEBUG_CMD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"scheduling START\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @gigaset_start(%struct.cardstate* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.cardstate*, align 8
  %4 = alloca i64, align 8
  store %struct.cardstate* %0, %struct.cardstate** %3, align 8
  %5 = load %struct.cardstate*, %struct.cardstate** %3, align 8
  %6 = getelementptr inbounds %struct.cardstate, %struct.cardstate* %5, i32 0, i32 4
  %7 = call i64 @mutex_lock_interruptible(i32* %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  store i32 0, i32* %2, align 4
  br label %93

10:                                               ; preds = %1
  %11 = load %struct.cardstate*, %struct.cardstate** %3, align 8
  %12 = getelementptr inbounds %struct.cardstate, %struct.cardstate* %11, i32 0, i32 8
  %13 = load i64, i64* %4, align 8
  %14 = call i32 @spin_lock_irqsave(i32* %12, i64 %13)
  %15 = load %struct.cardstate*, %struct.cardstate** %3, align 8
  %16 = getelementptr inbounds %struct.cardstate, %struct.cardstate* %15, i32 0, i32 0
  store i32 1, i32* %16, align 8
  %17 = load %struct.cardstate*, %struct.cardstate** %3, align 8
  %18 = getelementptr inbounds %struct.cardstate, %struct.cardstate* %17, i32 0, i32 8
  %19 = load i64, i64* %4, align 8
  %20 = call i32 @spin_unlock_irqrestore(i32* %18, i64 %19)
  %21 = load %struct.cardstate*, %struct.cardstate** %3, align 8
  %22 = getelementptr inbounds %struct.cardstate, %struct.cardstate* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @MS_LOCKED, align 8
  %25 = icmp ne i64 %23, %24
  br i1 %25, label %26, label %58

26:                                               ; preds = %10
  %27 = load %struct.cardstate*, %struct.cardstate** %3, align 8
  %28 = getelementptr inbounds %struct.cardstate, %struct.cardstate* %27, i32 0, i32 7
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 2
  %31 = load i32 (%struct.cardstate*, i32, i32)*, i32 (%struct.cardstate*, i32, i32)** %30, align 8
  %32 = load %struct.cardstate*, %struct.cardstate** %3, align 8
  %33 = load i32, i32* @TIOCM_DTR, align 4
  %34 = load i32, i32* @TIOCM_RTS, align 4
  %35 = or i32 %33, %34
  %36 = call i32 %31(%struct.cardstate* %32, i32 0, i32 %35)
  %37 = load %struct.cardstate*, %struct.cardstate** %3, align 8
  %38 = getelementptr inbounds %struct.cardstate, %struct.cardstate* %37, i32 0, i32 7
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 1
  %41 = load i32 (%struct.cardstate*, i32)*, i32 (%struct.cardstate*, i32)** %40, align 8
  %42 = load %struct.cardstate*, %struct.cardstate** %3, align 8
  %43 = load i32, i32* @B115200, align 4
  %44 = call i32 %41(%struct.cardstate* %42, i32 %43)
  %45 = load %struct.cardstate*, %struct.cardstate** %3, align 8
  %46 = getelementptr inbounds %struct.cardstate, %struct.cardstate* %45, i32 0, i32 7
  %47 = load %struct.TYPE_2__*, %struct.TYPE_2__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  %49 = load i32 (%struct.cardstate*, i32)*, i32 (%struct.cardstate*, i32)** %48, align 8
  %50 = load %struct.cardstate*, %struct.cardstate** %3, align 8
  %51 = load i32, i32* @CS8, align 4
  %52 = call i32 %49(%struct.cardstate* %50, i32 %51)
  %53 = load i32, i32* @TIOCM_DTR, align 4
  %54 = load i32, i32* @TIOCM_RTS, align 4
  %55 = or i32 %53, %54
  %56 = load %struct.cardstate*, %struct.cardstate** %3, align 8
  %57 = getelementptr inbounds %struct.cardstate, %struct.cardstate* %56, i32 0, i32 2
  store i32 %55, i32* %57, align 8
  br label %59

58:                                               ; preds = %10
  br label %59

59:                                               ; preds = %58, %26
  %60 = load %struct.cardstate*, %struct.cardstate** %3, align 8
  %61 = getelementptr inbounds %struct.cardstate, %struct.cardstate* %60, i32 0, i32 3
  store i32 1, i32* %61, align 4
  %62 = load %struct.cardstate*, %struct.cardstate** %3, align 8
  %63 = load %struct.cardstate*, %struct.cardstate** %3, align 8
  %64 = getelementptr inbounds %struct.cardstate, %struct.cardstate* %63, i32 0, i32 6
  %65 = load i32, i32* @EV_START, align 4
  %66 = call i32 @gigaset_add_event(%struct.cardstate* %62, i32* %64, i32 %65, i32* null, i32 0, i32* null)
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %71, label %68

68:                                               ; preds = %59
  %69 = load %struct.cardstate*, %struct.cardstate** %3, align 8
  %70 = getelementptr inbounds %struct.cardstate, %struct.cardstate* %69, i32 0, i32 3
  store i32 0, i32* %70, align 4
  br label %89

71:                                               ; preds = %59
  %72 = load i32, i32* @DEBUG_CMD, align 4
  %73 = call i32 @gig_dbg(i32 %72, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %74 = load %struct.cardstate*, %struct.cardstate** %3, align 8
  %75 = call i32 @gigaset_schedule_event(%struct.cardstate* %74)
  %76 = load %struct.cardstate*, %struct.cardstate** %3, align 8
  %77 = getelementptr inbounds %struct.cardstate, %struct.cardstate* %76, i32 0, i32 5
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.cardstate*, %struct.cardstate** %3, align 8
  %80 = getelementptr inbounds %struct.cardstate, %struct.cardstate* %79, i32 0, i32 3
  %81 = load i32, i32* %80, align 4
  %82 = icmp ne i32 %81, 0
  %83 = xor i1 %82, true
  %84 = zext i1 %83 to i32
  %85 = call i32 @wait_event(i32 %78, i32 %84)
  %86 = load %struct.cardstate*, %struct.cardstate** %3, align 8
  %87 = getelementptr inbounds %struct.cardstate, %struct.cardstate* %86, i32 0, i32 4
  %88 = call i32 @mutex_unlock(i32* %87)
  store i32 1, i32* %2, align 4
  br label %93

89:                                               ; preds = %68
  %90 = load %struct.cardstate*, %struct.cardstate** %3, align 8
  %91 = getelementptr inbounds %struct.cardstate, %struct.cardstate* %90, i32 0, i32 4
  %92 = call i32 @mutex_unlock(i32* %91)
  store i32 0, i32* %2, align 4
  br label %93

93:                                               ; preds = %89, %71, %9
  %94 = load i32, i32* %2, align 4
  ret i32 %94
}

declare dso_local i64 @mutex_lock_interruptible(i32*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @gigaset_add_event(%struct.cardstate*, i32*, i32, i32*, i32, i32*) #1

declare dso_local i32 @gig_dbg(i32, i8*) #1

declare dso_local i32 @gigaset_schedule_event(%struct.cardstate*) #1

declare dso_local i32 @wait_event(i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
