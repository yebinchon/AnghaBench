; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/android/extr_binder.c_binder_delete_ref.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/android/extr_binder.c_binder_delete_ref.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.binder_ref = type { %struct.binder_ref*, %struct.TYPE_5__, i32, i32, %struct.TYPE_4__*, %struct.TYPE_6__*, i32, i64, i32, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32, i32, i32 }
%struct.TYPE_6__ = type { i32 }

@BINDER_DEBUG_INTERNAL_REFS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"binder: %d delete ref %d desc %d for node %d\0A\00", align 1
@BINDER_DEBUG_DEAD_BINDER = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [57 x i8] c"binder: %d delete ref %d desc %d has death notification\0A\00", align 1
@BINDER_STAT_DEATH = common dso_local global i32 0, align 4
@BINDER_STAT_REF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.binder_ref*)* @binder_delete_ref to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @binder_delete_ref(%struct.binder_ref* %0) #0 {
  %2 = alloca %struct.binder_ref*, align 8
  store %struct.binder_ref* %0, %struct.binder_ref** %2, align 8
  %3 = load i32, i32* @BINDER_DEBUG_INTERNAL_REFS, align 4
  %4 = load %struct.binder_ref*, %struct.binder_ref** %2, align 8
  %5 = getelementptr inbounds %struct.binder_ref, %struct.binder_ref* %4, i32 0, i32 4
  %6 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %7 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = load %struct.binder_ref*, %struct.binder_ref** %2, align 8
  %10 = getelementptr inbounds %struct.binder_ref, %struct.binder_ref* %9, i32 0, i32 3
  %11 = load i32, i32* %10, align 8
  %12 = load %struct.binder_ref*, %struct.binder_ref** %2, align 8
  %13 = getelementptr inbounds %struct.binder_ref, %struct.binder_ref* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.binder_ref*, %struct.binder_ref** %2, align 8
  %16 = getelementptr inbounds %struct.binder_ref, %struct.binder_ref* %15, i32 0, i32 5
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 (i32, i8*, i32, i32, i32, ...) @binder_debug(i32 %3, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i32 %8, i32 %11, i32 %14, i32 %19)
  %21 = load %struct.binder_ref*, %struct.binder_ref** %2, align 8
  %22 = getelementptr inbounds %struct.binder_ref, %struct.binder_ref* %21, i32 0, i32 9
  %23 = load %struct.binder_ref*, %struct.binder_ref** %2, align 8
  %24 = getelementptr inbounds %struct.binder_ref, %struct.binder_ref* %23, i32 0, i32 4
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 2
  %27 = call i32 @rb_erase(i32* %22, i32* %26)
  %28 = load %struct.binder_ref*, %struct.binder_ref** %2, align 8
  %29 = getelementptr inbounds %struct.binder_ref, %struct.binder_ref* %28, i32 0, i32 8
  %30 = load %struct.binder_ref*, %struct.binder_ref** %2, align 8
  %31 = getelementptr inbounds %struct.binder_ref, %struct.binder_ref* %30, i32 0, i32 4
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 1
  %34 = call i32 @rb_erase(i32* %29, i32* %33)
  %35 = load %struct.binder_ref*, %struct.binder_ref** %2, align 8
  %36 = getelementptr inbounds %struct.binder_ref, %struct.binder_ref* %35, i32 0, i32 7
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %44

39:                                               ; preds = %1
  %40 = load %struct.binder_ref*, %struct.binder_ref** %2, align 8
  %41 = getelementptr inbounds %struct.binder_ref, %struct.binder_ref* %40, i32 0, i32 5
  %42 = load %struct.TYPE_6__*, %struct.TYPE_6__** %41, align 8
  %43 = call i32 @binder_dec_node(%struct.TYPE_6__* %42, i32 1, i32 1)
  br label %44

44:                                               ; preds = %39, %1
  %45 = load %struct.binder_ref*, %struct.binder_ref** %2, align 8
  %46 = getelementptr inbounds %struct.binder_ref, %struct.binder_ref* %45, i32 0, i32 6
  %47 = call i32 @hlist_del(i32* %46)
  %48 = load %struct.binder_ref*, %struct.binder_ref** %2, align 8
  %49 = getelementptr inbounds %struct.binder_ref, %struct.binder_ref* %48, i32 0, i32 5
  %50 = load %struct.TYPE_6__*, %struct.TYPE_6__** %49, align 8
  %51 = call i32 @binder_dec_node(%struct.TYPE_6__* %50, i32 0, i32 1)
  %52 = load %struct.binder_ref*, %struct.binder_ref** %2, align 8
  %53 = getelementptr inbounds %struct.binder_ref, %struct.binder_ref* %52, i32 0, i32 0
  %54 = load %struct.binder_ref*, %struct.binder_ref** %53, align 8
  %55 = icmp ne %struct.binder_ref* %54, null
  br i1 %55, label %56, label %82

56:                                               ; preds = %44
  %57 = load i32, i32* @BINDER_DEBUG_DEAD_BINDER, align 4
  %58 = load %struct.binder_ref*, %struct.binder_ref** %2, align 8
  %59 = getelementptr inbounds %struct.binder_ref, %struct.binder_ref* %58, i32 0, i32 4
  %60 = load %struct.TYPE_4__*, %struct.TYPE_4__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.binder_ref*, %struct.binder_ref** %2, align 8
  %64 = getelementptr inbounds %struct.binder_ref, %struct.binder_ref* %63, i32 0, i32 3
  %65 = load i32, i32* %64, align 8
  %66 = load %struct.binder_ref*, %struct.binder_ref** %2, align 8
  %67 = getelementptr inbounds %struct.binder_ref, %struct.binder_ref* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 4
  %69 = call i32 (i32, i8*, i32, i32, i32, ...) @binder_debug(i32 %57, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.1, i64 0, i64 0), i32 %62, i32 %65, i32 %68)
  %70 = load %struct.binder_ref*, %struct.binder_ref** %2, align 8
  %71 = getelementptr inbounds %struct.binder_ref, %struct.binder_ref* %70, i32 0, i32 0
  %72 = load %struct.binder_ref*, %struct.binder_ref** %71, align 8
  %73 = getelementptr inbounds %struct.binder_ref, %struct.binder_ref* %72, i32 0, i32 1
  %74 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %73, i32 0, i32 0
  %75 = call i32 @list_del(i32* %74)
  %76 = load %struct.binder_ref*, %struct.binder_ref** %2, align 8
  %77 = getelementptr inbounds %struct.binder_ref, %struct.binder_ref* %76, i32 0, i32 0
  %78 = load %struct.binder_ref*, %struct.binder_ref** %77, align 8
  %79 = call i32 @kfree(%struct.binder_ref* %78)
  %80 = load i32, i32* @BINDER_STAT_DEATH, align 4
  %81 = call i32 @binder_stats_deleted(i32 %80)
  br label %82

82:                                               ; preds = %56, %44
  %83 = load %struct.binder_ref*, %struct.binder_ref** %2, align 8
  %84 = call i32 @kfree(%struct.binder_ref* %83)
  %85 = load i32, i32* @BINDER_STAT_REF, align 4
  %86 = call i32 @binder_stats_deleted(i32 %85)
  ret void
}

declare dso_local i32 @binder_debug(i32, i8*, i32, i32, i32, ...) #1

declare dso_local i32 @rb_erase(i32*, i32*) #1

declare dso_local i32 @binder_dec_node(%struct.TYPE_6__*, i32, i32) #1

declare dso_local i32 @hlist_del(i32*) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @kfree(%struct.binder_ref*) #1

declare dso_local i32 @binder_stats_deleted(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
