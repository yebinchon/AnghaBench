; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/gigaset/extr_common.c_gigaset_free_channel.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/gigaset/extr_common.c_gigaset_free_channel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bc_state = type { %struct.TYPE_4__*, i32, i64, i32 }
%struct.TYPE_4__ = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@DEBUG_ANY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"could not free channel %d\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"freed channel %d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gigaset_free_channel(%struct.bc_state* %0) #0 {
  %2 = alloca %struct.bc_state*, align 8
  %3 = alloca i64, align 8
  store %struct.bc_state* %0, %struct.bc_state** %2, align 8
  %4 = load %struct.bc_state*, %struct.bc_state** %2, align 8
  %5 = getelementptr inbounds %struct.bc_state, %struct.bc_state* %4, i32 0, i32 0
  %6 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %7 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 0
  %8 = load i64, i64* %3, align 8
  %9 = call i32 @spin_lock_irqsave(i32* %7, i64 %8)
  %10 = load %struct.bc_state*, %struct.bc_state** %2, align 8
  %11 = getelementptr inbounds %struct.bc_state, %struct.bc_state* %10, i32 0, i32 2
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %26, label %14

14:                                               ; preds = %1
  %15 = load i32, i32* @DEBUG_ANY, align 4
  %16 = load %struct.bc_state*, %struct.bc_state** %2, align 8
  %17 = getelementptr inbounds %struct.bc_state, %struct.bc_state* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 8
  %19 = call i32 @gig_dbg(i32 %15, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %18)
  %20 = load %struct.bc_state*, %struct.bc_state** %2, align 8
  %21 = getelementptr inbounds %struct.bc_state, %struct.bc_state* %20, i32 0, i32 0
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = load i64, i64* %3, align 8
  %25 = call i32 @spin_unlock_irqrestore(i32* %23, i64 %24)
  br label %52

26:                                               ; preds = %1
  %27 = load %struct.bc_state*, %struct.bc_state** %2, align 8
  %28 = getelementptr inbounds %struct.bc_state, %struct.bc_state* %27, i32 0, i32 3
  %29 = load i32, i32* %28, align 8
  %30 = add nsw i32 %29, -1
  store i32 %30, i32* %28, align 8
  %31 = load %struct.bc_state*, %struct.bc_state** %2, align 8
  %32 = getelementptr inbounds %struct.bc_state, %struct.bc_state* %31, i32 0, i32 2
  store i64 0, i64* %32, align 8
  %33 = load %struct.bc_state*, %struct.bc_state** %2, align 8
  %34 = getelementptr inbounds %struct.bc_state, %struct.bc_state* %33, i32 0, i32 0
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 1
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @module_put(i32 %39)
  %41 = load i32, i32* @DEBUG_ANY, align 4
  %42 = load %struct.bc_state*, %struct.bc_state** %2, align 8
  %43 = getelementptr inbounds %struct.bc_state, %struct.bc_state* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 8
  %45 = call i32 @gig_dbg(i32 %41, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i32 %44)
  %46 = load %struct.bc_state*, %struct.bc_state** %2, align 8
  %47 = getelementptr inbounds %struct.bc_state, %struct.bc_state* %46, i32 0, i32 0
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 0
  %50 = load i64, i64* %3, align 8
  %51 = call i32 @spin_unlock_irqrestore(i32* %49, i64 %50)
  br label %52

52:                                               ; preds = %26, %14
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @gig_dbg(i32, i8*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @module_put(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
