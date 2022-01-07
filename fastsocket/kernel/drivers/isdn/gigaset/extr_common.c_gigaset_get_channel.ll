; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/gigaset/extr_common.c_gigaset_get_channel.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/gigaset/extr_common.c_gigaset_get_channel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bc_state = type { i32, %struct.TYPE_4__*, i32, i64 }
%struct.TYPE_4__ = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@DEBUG_ANY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"could not allocate channel %d\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"allocated channel %d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @gigaset_get_channel(%struct.bc_state* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bc_state*, align 8
  %4 = alloca i64, align 8
  store %struct.bc_state* %0, %struct.bc_state** %3, align 8
  %5 = load %struct.bc_state*, %struct.bc_state** %3, align 8
  %6 = getelementptr inbounds %struct.bc_state, %struct.bc_state* %5, i32 0, i32 1
  %7 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 0
  %9 = load i64, i64* %4, align 8
  %10 = call i32 @spin_lock_irqsave(i32* %8, i64 %9)
  %11 = load %struct.bc_state*, %struct.bc_state** %3, align 8
  %12 = getelementptr inbounds %struct.bc_state, %struct.bc_state* %11, i32 0, i32 3
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %25, label %15

15:                                               ; preds = %1
  %16 = load %struct.bc_state*, %struct.bc_state** %3, align 8
  %17 = getelementptr inbounds %struct.bc_state, %struct.bc_state* %16, i32 0, i32 1
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 1
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @try_module_get(i32 %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %37, label %25

25:                                               ; preds = %15, %1
  %26 = load i32, i32* @DEBUG_ANY, align 4
  %27 = load %struct.bc_state*, %struct.bc_state** %3, align 8
  %28 = getelementptr inbounds %struct.bc_state, %struct.bc_state* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @gig_dbg(i32 %26, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %29)
  %31 = load %struct.bc_state*, %struct.bc_state** %3, align 8
  %32 = getelementptr inbounds %struct.bc_state, %struct.bc_state* %31, i32 0, i32 1
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = load i64, i64* %4, align 8
  %36 = call i32 @spin_unlock_irqrestore(i32* %34, i64 %35)
  store i32 0, i32* %2, align 4
  br label %55

37:                                               ; preds = %15
  %38 = load %struct.bc_state*, %struct.bc_state** %3, align 8
  %39 = getelementptr inbounds %struct.bc_state, %struct.bc_state* %38, i32 0, i32 3
  %40 = load i64, i64* %39, align 8
  %41 = add nsw i64 %40, 1
  store i64 %41, i64* %39, align 8
  %42 = load %struct.bc_state*, %struct.bc_state** %3, align 8
  %43 = getelementptr inbounds %struct.bc_state, %struct.bc_state* %42, i32 0, i32 0
  store i32 1, i32* %43, align 8
  %44 = load i32, i32* @DEBUG_ANY, align 4
  %45 = load %struct.bc_state*, %struct.bc_state** %3, align 8
  %46 = getelementptr inbounds %struct.bc_state, %struct.bc_state* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 8
  %48 = call i32 @gig_dbg(i32 %44, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 %47)
  %49 = load %struct.bc_state*, %struct.bc_state** %3, align 8
  %50 = getelementptr inbounds %struct.bc_state, %struct.bc_state* %49, i32 0, i32 1
  %51 = load %struct.TYPE_4__*, %struct.TYPE_4__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 0
  %53 = load i64, i64* %4, align 8
  %54 = call i32 @spin_unlock_irqrestore(i32* %52, i64 %53)
  store i32 1, i32* %2, align 4
  br label %55

55:                                               ; preds = %37, %25
  %56 = load i32, i32* %2, align 4
  ret i32 %56
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @try_module_get(i32) #1

declare dso_local i32 @gig_dbg(i32, i8*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
