; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm.c_dm_done.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm.c_dm_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.request = type { %struct.dm_rq_target_io* }
%struct.dm_rq_target_io = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 (%struct.TYPE_4__*, %struct.request*, i32, i32*)* }

@DM_ENDIO_INCOMPLETE = common dso_local global i32 0, align 4
@DM_ENDIO_REQUEUE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"unimplemented target endio return value: %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.request*, i32, i32)* @dm_done to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dm_done(%struct.request* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.request*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.dm_rq_target_io*, align 8
  %9 = alloca i32 (%struct.TYPE_4__*, %struct.request*, i32, i32*)*, align 8
  store %struct.request* %0, %struct.request** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %10 = load i32, i32* %5, align 4
  store i32 %10, i32* %7, align 4
  %11 = load %struct.request*, %struct.request** %4, align 8
  %12 = getelementptr inbounds %struct.request, %struct.request* %11, i32 0, i32 0
  %13 = load %struct.dm_rq_target_io*, %struct.dm_rq_target_io** %12, align 8
  store %struct.dm_rq_target_io* %13, %struct.dm_rq_target_io** %8, align 8
  store i32 (%struct.TYPE_4__*, %struct.request*, i32, i32*)* null, i32 (%struct.TYPE_4__*, %struct.request*, i32, i32*)** %9, align 8
  %14 = load %struct.dm_rq_target_io*, %struct.dm_rq_target_io** %8, align 8
  %15 = getelementptr inbounds %struct.dm_rq_target_io, %struct.dm_rq_target_io* %14, i32 0, i32 1
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %17 = icmp ne %struct.TYPE_4__* %16, null
  br i1 %17, label %18, label %42

18:                                               ; preds = %3
  %19 = load %struct.dm_rq_target_io*, %struct.dm_rq_target_io** %8, align 8
  %20 = getelementptr inbounds %struct.dm_rq_target_io, %struct.dm_rq_target_io* %19, i32 0, i32 1
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = load i32 (%struct.TYPE_4__*, %struct.request*, i32, i32*)*, i32 (%struct.TYPE_4__*, %struct.request*, i32, i32*)** %24, align 8
  store i32 (%struct.TYPE_4__*, %struct.request*, i32, i32*)* %25, i32 (%struct.TYPE_4__*, %struct.request*, i32, i32*)** %9, align 8
  %26 = load i32, i32* %6, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %41

28:                                               ; preds = %18
  %29 = load i32 (%struct.TYPE_4__*, %struct.request*, i32, i32*)*, i32 (%struct.TYPE_4__*, %struct.request*, i32, i32*)** %9, align 8
  %30 = icmp ne i32 (%struct.TYPE_4__*, %struct.request*, i32, i32*)* %29, null
  br i1 %30, label %31, label %41

31:                                               ; preds = %28
  %32 = load i32 (%struct.TYPE_4__*, %struct.request*, i32, i32*)*, i32 (%struct.TYPE_4__*, %struct.request*, i32, i32*)** %9, align 8
  %33 = load %struct.dm_rq_target_io*, %struct.dm_rq_target_io** %8, align 8
  %34 = getelementptr inbounds %struct.dm_rq_target_io, %struct.dm_rq_target_io* %33, i32 0, i32 1
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %34, align 8
  %36 = load %struct.request*, %struct.request** %4, align 8
  %37 = load i32, i32* %5, align 4
  %38 = load %struct.dm_rq_target_io*, %struct.dm_rq_target_io** %8, align 8
  %39 = getelementptr inbounds %struct.dm_rq_target_io, %struct.dm_rq_target_io* %38, i32 0, i32 0
  %40 = call i32 %32(%struct.TYPE_4__* %35, %struct.request* %36, i32 %37, i32* %39)
  store i32 %40, i32* %7, align 4
  br label %41

41:                                               ; preds = %31, %28, %18
  br label %42

42:                                               ; preds = %41, %3
  %43 = load i32, i32* %7, align 4
  %44 = icmp sle i32 %43, 0
  br i1 %44, label %45, label %49

45:                                               ; preds = %42
  %46 = load %struct.request*, %struct.request** %4, align 8
  %47 = load i32, i32* %7, align 4
  %48 = call i32 @dm_end_request(%struct.request* %46, i32 %47)
  br label %67

49:                                               ; preds = %42
  %50 = load i32, i32* %7, align 4
  %51 = load i32, i32* @DM_ENDIO_INCOMPLETE, align 4
  %52 = icmp eq i32 %50, %51
  br i1 %52, label %53, label %54

53:                                               ; preds = %49
  br label %67

54:                                               ; preds = %49
  %55 = load i32, i32* %7, align 4
  %56 = load i32, i32* @DM_ENDIO_REQUEUE, align 4
  %57 = icmp eq i32 %55, %56
  br i1 %57, label %58, label %61

58:                                               ; preds = %54
  %59 = load %struct.request*, %struct.request** %4, align 8
  %60 = call i32 @dm_requeue_unmapped_request(%struct.request* %59)
  br label %65

61:                                               ; preds = %54
  %62 = load i32, i32* %7, align 4
  %63 = call i32 @DMWARN(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i32 %62)
  %64 = call i32 (...) @BUG()
  br label %65

65:                                               ; preds = %61, %58
  br label %66

66:                                               ; preds = %65
  br label %67

67:                                               ; preds = %53, %66, %45
  ret void
}

declare dso_local i32 @dm_end_request(%struct.request*, i32) #1

declare dso_local i32 @dm_requeue_unmapped_request(%struct.request*) #1

declare dso_local i32 @DMWARN(i8*, i32) #1

declare dso_local i32 @BUG(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
