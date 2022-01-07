; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/gigaset/extr_common.c_gigaset_freecs.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/gigaset/extr_common.c_gigaset_freecs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cardstate = type { i32, i32, i32, i64, i64, i32, %struct.TYPE_2__*, i32, i32, i32, i64 }
%struct.TYPE_2__ = type { i32 (%struct.cardstate*)* }

@DEBUG_INIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"clearing hw\00", align 1
@VALID_ID = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [13 x i8] c"clearing iif\00", align 1
@ISDN_STAT_UNLOAD = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [18 x i8] c"clearing at_state\00", align 1
@.str.3 = private unnamed_addr constant [17 x i8] c"clearing bcs[%d]\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c"freeing inbuf\00", align 1
@.str.5 = private unnamed_addr constant [14 x i8] c"freeing bcs[]\00", align 1
@.str.6 = private unnamed_addr constant [11 x i8] c"freeing cs\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gigaset_freecs(%struct.cardstate* %0) #0 {
  %2 = alloca %struct.cardstate*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  store %struct.cardstate* %0, %struct.cardstate** %2, align 8
  %5 = load %struct.cardstate*, %struct.cardstate** %2, align 8
  %6 = icmp ne %struct.cardstate* %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %1
  br label %120

8:                                                ; preds = %1
  %9 = load %struct.cardstate*, %struct.cardstate** %2, align 8
  %10 = getelementptr inbounds %struct.cardstate, %struct.cardstate* %9, i32 0, i32 2
  %11 = call i32 @mutex_lock(i32* %10)
  %12 = load %struct.cardstate*, %struct.cardstate** %2, align 8
  %13 = getelementptr inbounds %struct.cardstate, %struct.cardstate* %12, i32 0, i32 3
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %8
  br label %112

17:                                               ; preds = %8
  %18 = load %struct.cardstate*, %struct.cardstate** %2, align 8
  %19 = getelementptr inbounds %struct.cardstate, %struct.cardstate* %18, i32 0, i32 4
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %17
  br label %105

23:                                               ; preds = %17
  %24 = load %struct.cardstate*, %struct.cardstate** %2, align 8
  %25 = getelementptr inbounds %struct.cardstate, %struct.cardstate* %24, i32 0, i32 9
  %26 = load i64, i64* %4, align 8
  %27 = call i32 @spin_lock_irqsave(i32* %25, i64 %26)
  %28 = load %struct.cardstate*, %struct.cardstate** %2, align 8
  %29 = getelementptr inbounds %struct.cardstate, %struct.cardstate* %28, i32 0, i32 10
  store i64 0, i64* %29, align 8
  %30 = load %struct.cardstate*, %struct.cardstate** %2, align 8
  %31 = getelementptr inbounds %struct.cardstate, %struct.cardstate* %30, i32 0, i32 9
  %32 = load i64, i64* %4, align 8
  %33 = call i32 @spin_unlock_irqrestore(i32* %31, i64 %32)
  %34 = load %struct.cardstate*, %struct.cardstate** %2, align 8
  %35 = getelementptr inbounds %struct.cardstate, %struct.cardstate* %34, i32 0, i32 8
  %36 = call i32 @tasklet_kill(i32* %35)
  %37 = load %struct.cardstate*, %struct.cardstate** %2, align 8
  %38 = getelementptr inbounds %struct.cardstate, %struct.cardstate* %37, i32 0, i32 7
  %39 = call i32 @del_timer_sync(i32* %38)
  %40 = load %struct.cardstate*, %struct.cardstate** %2, align 8
  %41 = getelementptr inbounds %struct.cardstate, %struct.cardstate* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  switch i32 %42, label %43 [
    i32 2, label %57
    i32 1, label %66
    i32 0, label %74
  ]

43:                                               ; preds = %23
  %44 = load %struct.cardstate*, %struct.cardstate** %2, align 8
  %45 = call i32 @gigaset_free_dev_sysfs(%struct.cardstate* %44)
  %46 = load %struct.cardstate*, %struct.cardstate** %2, align 8
  %47 = call i32 @gigaset_if_free(%struct.cardstate* %46)
  %48 = load i32, i32* @DEBUG_INIT, align 4
  %49 = call i32 (i32, i8*, ...) @gig_dbg(i32 %48, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  %50 = load %struct.cardstate*, %struct.cardstate** %2, align 8
  %51 = getelementptr inbounds %struct.cardstate, %struct.cardstate* %50, i32 0, i32 6
  %52 = load %struct.TYPE_2__*, %struct.TYPE_2__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 0
  %54 = load i32 (%struct.cardstate*)*, i32 (%struct.cardstate*)** %53, align 8
  %55 = load %struct.cardstate*, %struct.cardstate** %2, align 8
  %56 = call i32 %54(%struct.cardstate* %55)
  br label %57

57:                                               ; preds = %23, %43
  %58 = load %struct.cardstate*, %struct.cardstate** %2, align 8
  %59 = load i32, i32* @VALID_ID, align 4
  %60 = call i32 @make_invalid(%struct.cardstate* %58, i32 %59)
  %61 = load i32, i32* @DEBUG_INIT, align 4
  %62 = call i32 (i32, i8*, ...) @gig_dbg(i32 %61, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  %63 = load %struct.cardstate*, %struct.cardstate** %2, align 8
  %64 = load i32, i32* @ISDN_STAT_UNLOAD, align 4
  %65 = call i32 @gigaset_i4l_cmd(%struct.cardstate* %63, i32 %64)
  br label %66

66:                                               ; preds = %23, %57
  %67 = load i32, i32* @DEBUG_INIT, align 4
  %68 = call i32 (i32, i8*, ...) @gig_dbg(i32 %67, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0))
  %69 = load %struct.cardstate*, %struct.cardstate** %2, align 8
  %70 = getelementptr inbounds %struct.cardstate, %struct.cardstate* %69, i32 0, i32 5
  %71 = call i32 @clear_at_state(i32* %70)
  %72 = load %struct.cardstate*, %struct.cardstate** %2, align 8
  %73 = call i32 @dealloc_at_states(%struct.cardstate* %72)
  br label %74

74:                                               ; preds = %23, %66
  store i32 0, i32* %3, align 4
  br label %75

75:                                               ; preds = %92, %74
  %76 = load i32, i32* %3, align 4
  %77 = load %struct.cardstate*, %struct.cardstate** %2, align 8
  %78 = getelementptr inbounds %struct.cardstate, %struct.cardstate* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = icmp slt i32 %76, %79
  br i1 %80, label %81, label %95

81:                                               ; preds = %75
  %82 = load i32, i32* @DEBUG_INIT, align 4
  %83 = load i32, i32* %3, align 4
  %84 = call i32 (i32, i8*, ...) @gig_dbg(i32 %82, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0), i32 %83)
  %85 = load %struct.cardstate*, %struct.cardstate** %2, align 8
  %86 = getelementptr inbounds %struct.cardstate, %struct.cardstate* %85, i32 0, i32 3
  %87 = load i64, i64* %86, align 8
  %88 = load i32, i32* %3, align 4
  %89 = sext i32 %88 to i64
  %90 = add nsw i64 %87, %89
  %91 = call i32 @gigaset_freebcs(i64 %90)
  br label %92

92:                                               ; preds = %81
  %93 = load i32, i32* %3, align 4
  %94 = add nsw i32 %93, 1
  store i32 %94, i32* %3, align 4
  br label %75

95:                                               ; preds = %75
  %96 = load %struct.cardstate*, %struct.cardstate** %2, align 8
  %97 = call i32 @clear_events(%struct.cardstate* %96)
  %98 = load i32, i32* @DEBUG_INIT, align 4
  %99 = call i32 (i32, i8*, ...) @gig_dbg(i32 %98, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0))
  %100 = load %struct.cardstate*, %struct.cardstate** %2, align 8
  %101 = getelementptr inbounds %struct.cardstate, %struct.cardstate* %100, i32 0, i32 4
  %102 = load i64, i64* %101, align 8
  %103 = call i32 @kfree(i64 %102)
  br label %104

104:                                              ; preds = %95
  br label %105

105:                                              ; preds = %104, %22
  %106 = load i32, i32* @DEBUG_INIT, align 4
  %107 = call i32 (i32, i8*, ...) @gig_dbg(i32 %106, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i64 0, i64 0))
  %108 = load %struct.cardstate*, %struct.cardstate** %2, align 8
  %109 = getelementptr inbounds %struct.cardstate, %struct.cardstate* %108, i32 0, i32 3
  %110 = load i64, i64* %109, align 8
  %111 = call i32 @kfree(i64 %110)
  br label %112

112:                                              ; preds = %105, %16
  %113 = load i32, i32* @DEBUG_INIT, align 4
  %114 = call i32 (i32, i8*, ...) @gig_dbg(i32 %113, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i64 0, i64 0))
  %115 = load %struct.cardstate*, %struct.cardstate** %2, align 8
  %116 = getelementptr inbounds %struct.cardstate, %struct.cardstate* %115, i32 0, i32 2
  %117 = call i32 @mutex_unlock(i32* %116)
  %118 = load %struct.cardstate*, %struct.cardstate** %2, align 8
  %119 = call i32 @free_cs(%struct.cardstate* %118)
  br label %120

120:                                              ; preds = %112, %7
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @tasklet_kill(i32*) #1

declare dso_local i32 @del_timer_sync(i32*) #1

declare dso_local i32 @gigaset_free_dev_sysfs(%struct.cardstate*) #1

declare dso_local i32 @gigaset_if_free(%struct.cardstate*) #1

declare dso_local i32 @gig_dbg(i32, i8*, ...) #1

declare dso_local i32 @make_invalid(%struct.cardstate*, i32) #1

declare dso_local i32 @gigaset_i4l_cmd(%struct.cardstate*, i32) #1

declare dso_local i32 @clear_at_state(i32*) #1

declare dso_local i32 @dealloc_at_states(%struct.cardstate*) #1

declare dso_local i32 @gigaset_freebcs(i64) #1

declare dso_local i32 @clear_events(%struct.cardstate*) #1

declare dso_local i32 @kfree(i64) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @free_cs(%struct.cardstate*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
