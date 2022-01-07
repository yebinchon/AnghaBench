; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/gigaset/extr_common.c_gigaset_freebcs.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/gigaset/extr_common.c_gigaset_freebcs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bc_state = type { i32**, i64, i32, i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 (%struct.bc_state*)* }

@DEBUG_INIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"freeing bcs[%d]->hw\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"failed\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"clearing bcs[%d]->at_state\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"freeing bcs[%d]->skb\00", align 1
@AT_NUM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bc_state*)* @gigaset_freebcs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gigaset_freebcs(%struct.bc_state* %0) #0 {
  %2 = alloca %struct.bc_state*, align 8
  %3 = alloca i32, align 4
  store %struct.bc_state* %0, %struct.bc_state** %2, align 8
  %4 = load i32, i32* @DEBUG_INIT, align 4
  %5 = load %struct.bc_state*, %struct.bc_state** %2, align 8
  %6 = getelementptr inbounds %struct.bc_state, %struct.bc_state* %5, i32 0, i32 2
  %7 = load i32, i32* %6, align 8
  %8 = call i32 (i32, i8*, ...) @gig_dbg(i32 %4, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %7)
  %9 = load %struct.bc_state*, %struct.bc_state** %2, align 8
  %10 = getelementptr inbounds %struct.bc_state, %struct.bc_state* %9, i32 0, i32 4
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load i32 (%struct.bc_state*)*, i32 (%struct.bc_state*)** %14, align 8
  %16 = load %struct.bc_state*, %struct.bc_state** %2, align 8
  %17 = call i32 %15(%struct.bc_state* %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %22, label %19

19:                                               ; preds = %1
  %20 = load i32, i32* @DEBUG_INIT, align 4
  %21 = call i32 (i32, i8*, ...) @gig_dbg(i32 %20, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  br label %22

22:                                               ; preds = %19, %1
  %23 = load i32, i32* @DEBUG_INIT, align 4
  %24 = load %struct.bc_state*, %struct.bc_state** %2, align 8
  %25 = getelementptr inbounds %struct.bc_state, %struct.bc_state* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 8
  %27 = call i32 (i32, i8*, ...) @gig_dbg(i32 %23, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i32 %26)
  %28 = load %struct.bc_state*, %struct.bc_state** %2, align 8
  %29 = getelementptr inbounds %struct.bc_state, %struct.bc_state* %28, i32 0, i32 3
  %30 = call i32 @clear_at_state(i32* %29)
  %31 = load i32, i32* @DEBUG_INIT, align 4
  %32 = load %struct.bc_state*, %struct.bc_state** %2, align 8
  %33 = getelementptr inbounds %struct.bc_state, %struct.bc_state* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 8
  %35 = call i32 (i32, i8*, ...) @gig_dbg(i32 %31, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0), i32 %34)
  %36 = load %struct.bc_state*, %struct.bc_state** %2, align 8
  %37 = getelementptr inbounds %struct.bc_state, %struct.bc_state* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %45

40:                                               ; preds = %22
  %41 = load %struct.bc_state*, %struct.bc_state** %2, align 8
  %42 = getelementptr inbounds %struct.bc_state, %struct.bc_state* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = call i32 @dev_kfree_skb(i64 %43)
  br label %45

45:                                               ; preds = %40, %22
  store i32 0, i32* %3, align 4
  br label %46

46:                                               ; preds = %65, %45
  %47 = load i32, i32* %3, align 4
  %48 = load i32, i32* @AT_NUM, align 4
  %49 = icmp slt i32 %47, %48
  br i1 %49, label %50, label %68

50:                                               ; preds = %46
  %51 = load %struct.bc_state*, %struct.bc_state** %2, align 8
  %52 = getelementptr inbounds %struct.bc_state, %struct.bc_state* %51, i32 0, i32 0
  %53 = load i32**, i32*** %52, align 8
  %54 = load i32, i32* %3, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i32*, i32** %53, i64 %55
  %57 = load i32*, i32** %56, align 8
  %58 = call i32 @kfree(i32* %57)
  %59 = load %struct.bc_state*, %struct.bc_state** %2, align 8
  %60 = getelementptr inbounds %struct.bc_state, %struct.bc_state* %59, i32 0, i32 0
  %61 = load i32**, i32*** %60, align 8
  %62 = load i32, i32* %3, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i32*, i32** %61, i64 %63
  store i32* null, i32** %64, align 8
  br label %65

65:                                               ; preds = %50
  %66 = load i32, i32* %3, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %3, align 4
  br label %46

68:                                               ; preds = %46
  ret void
}

declare dso_local i32 @gig_dbg(i32, i8*, ...) #1

declare dso_local i32 @clear_at_state(i32*) #1

declare dso_local i32 @dev_kfree_skb(i64) #1

declare dso_local i32 @kfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
