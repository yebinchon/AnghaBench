; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/platforms/cell/spufs/extr_file.c_spu_switch_log_notify.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/platforms/cell/spufs/extr_file.c_spu_switch_log_notify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spu = type { i32 }
%struct.spu_context = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32, %struct.switch_log_entry* }
%struct.switch_log_entry = type { i32, i8*, i8*, i32, i32 }

@SWITCH_LOG_BUFSIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @spu_switch_log_notify(%struct.spu* %0, %struct.spu_context* %1, i8* %2, i8* %3) #0 {
  %5 = alloca %struct.spu*, align 8
  %6 = alloca %struct.spu_context*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.switch_log_entry*, align 8
  store %struct.spu* %0, %struct.spu** %5, align 8
  store %struct.spu_context* %1, %struct.spu_context** %6, align 8
  store i8* %2, i8** %7, align 8
  store i8* %3, i8** %8, align 8
  %10 = load %struct.spu_context*, %struct.spu_context** %6, align 8
  %11 = getelementptr inbounds %struct.spu_context, %struct.spu_context* %10, i32 0, i32 0
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = icmp ne %struct.TYPE_2__* %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %4
  br label %73

15:                                               ; preds = %4
  %16 = load %struct.spu_context*, %struct.spu_context** %6, align 8
  %17 = call i32 @spufs_switch_log_avail(%struct.spu_context* %16)
  %18 = icmp sgt i32 %17, 1
  br i1 %18, label %19, label %67

19:                                               ; preds = %15
  %20 = load %struct.spu_context*, %struct.spu_context** %6, align 8
  %21 = getelementptr inbounds %struct.spu_context, %struct.spu_context* %20, i32 0, i32 0
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 2
  %24 = load %struct.switch_log_entry*, %struct.switch_log_entry** %23, align 8
  %25 = load %struct.spu_context*, %struct.spu_context** %6, align 8
  %26 = getelementptr inbounds %struct.spu_context, %struct.spu_context* %25, i32 0, i32 0
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.switch_log_entry, %struct.switch_log_entry* %24, i64 %30
  store %struct.switch_log_entry* %31, %struct.switch_log_entry** %9, align 8
  %32 = load %struct.switch_log_entry*, %struct.switch_log_entry** %9, align 8
  %33 = getelementptr inbounds %struct.switch_log_entry, %struct.switch_log_entry* %32, i32 0, i32 4
  %34 = call i32 @ktime_get_ts(i32* %33)
  %35 = call i32 (...) @get_tb()
  %36 = load %struct.switch_log_entry*, %struct.switch_log_entry** %9, align 8
  %37 = getelementptr inbounds %struct.switch_log_entry, %struct.switch_log_entry* %36, i32 0, i32 3
  store i32 %35, i32* %37, align 8
  %38 = load %struct.spu*, %struct.spu** %5, align 8
  %39 = icmp ne %struct.spu* %38, null
  br i1 %39, label %40, label %44

40:                                               ; preds = %19
  %41 = load %struct.spu*, %struct.spu** %5, align 8
  %42 = getelementptr inbounds %struct.spu, %struct.spu* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  br label %45

44:                                               ; preds = %19
  br label %45

45:                                               ; preds = %44, %40
  %46 = phi i32 [ %43, %40 ], [ -1, %44 ]
  %47 = load %struct.switch_log_entry*, %struct.switch_log_entry** %9, align 8
  %48 = getelementptr inbounds %struct.switch_log_entry, %struct.switch_log_entry* %47, i32 0, i32 0
  store i32 %46, i32* %48, align 8
  %49 = load i8*, i8** %7, align 8
  %50 = load %struct.switch_log_entry*, %struct.switch_log_entry** %9, align 8
  %51 = getelementptr inbounds %struct.switch_log_entry, %struct.switch_log_entry* %50, i32 0, i32 2
  store i8* %49, i8** %51, align 8
  %52 = load i8*, i8** %8, align 8
  %53 = load %struct.switch_log_entry*, %struct.switch_log_entry** %9, align 8
  %54 = getelementptr inbounds %struct.switch_log_entry, %struct.switch_log_entry* %53, i32 0, i32 1
  store i8* %52, i8** %54, align 8
  %55 = load %struct.spu_context*, %struct.spu_context** %6, align 8
  %56 = getelementptr inbounds %struct.spu_context, %struct.spu_context* %55, i32 0, i32 0
  %57 = load %struct.TYPE_2__*, %struct.TYPE_2__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = add nsw i32 %59, 1
  %61 = load i32, i32* @SWITCH_LOG_BUFSIZE, align 4
  %62 = srem i32 %60, %61
  %63 = load %struct.spu_context*, %struct.spu_context** %6, align 8
  %64 = getelementptr inbounds %struct.spu_context, %struct.spu_context* %63, i32 0, i32 0
  %65 = load %struct.TYPE_2__*, %struct.TYPE_2__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 0
  store i32 %62, i32* %66, align 8
  br label %67

67:                                               ; preds = %45, %15
  %68 = load %struct.spu_context*, %struct.spu_context** %6, align 8
  %69 = getelementptr inbounds %struct.spu_context, %struct.spu_context* %68, i32 0, i32 0
  %70 = load %struct.TYPE_2__*, %struct.TYPE_2__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 1
  %72 = call i32 @wake_up(i32* %71)
  br label %73

73:                                               ; preds = %67, %14
  ret void
}

declare dso_local i32 @spufs_switch_log_avail(%struct.spu_context*) #1

declare dso_local i32 @ktime_get_ts(i32*) #1

declare dso_local i32 @get_tb(...) #1

declare dso_local i32 @wake_up(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
