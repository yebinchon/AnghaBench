; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/cx18/extr_cx18-queue.c__cx18_enqueue.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/cx18/extr_cx18-queue.c__cx18_enqueue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cx18_stream = type { %struct.cx18_queue, %struct.cx18_queue, %struct.cx18_queue }
%struct.cx18_queue = type { i32, i32, i32, i32 }
%struct.cx18_mdl = type { i64, i64, i32, i32*, i64, i64 }

@CX18_MAX_FW_MDLS_PER_STREAM = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.cx18_queue* @_cx18_enqueue(%struct.cx18_stream* %0, %struct.cx18_mdl* %1, %struct.cx18_queue* %2, i32 %3) #0 {
  %5 = alloca %struct.cx18_stream*, align 8
  %6 = alloca %struct.cx18_mdl*, align 8
  %7 = alloca %struct.cx18_queue*, align 8
  %8 = alloca i32, align 4
  store %struct.cx18_stream* %0, %struct.cx18_stream** %5, align 8
  store %struct.cx18_mdl* %1, %struct.cx18_mdl** %6, align 8
  store %struct.cx18_queue* %2, %struct.cx18_queue** %7, align 8
  store i32 %3, i32* %8, align 4
  %9 = load %struct.cx18_queue*, %struct.cx18_queue** %7, align 8
  %10 = load %struct.cx18_stream*, %struct.cx18_stream** %5, align 8
  %11 = getelementptr inbounds %struct.cx18_stream, %struct.cx18_stream* %10, i32 0, i32 2
  %12 = icmp ne %struct.cx18_queue* %9, %11
  br i1 %12, label %13, label %24

13:                                               ; preds = %4
  %14 = load %struct.cx18_mdl*, %struct.cx18_mdl** %6, align 8
  %15 = getelementptr inbounds %struct.cx18_mdl, %struct.cx18_mdl* %14, i32 0, i32 1
  store i64 0, i64* %15, align 8
  %16 = load %struct.cx18_mdl*, %struct.cx18_mdl** %6, align 8
  %17 = getelementptr inbounds %struct.cx18_mdl, %struct.cx18_mdl* %16, i32 0, i32 0
  store i64 0, i64* %17, align 8
  %18 = load %struct.cx18_mdl*, %struct.cx18_mdl** %6, align 8
  %19 = getelementptr inbounds %struct.cx18_mdl, %struct.cx18_mdl* %18, i32 0, i32 5
  store i64 0, i64* %19, align 8
  %20 = load %struct.cx18_mdl*, %struct.cx18_mdl** %6, align 8
  %21 = getelementptr inbounds %struct.cx18_mdl, %struct.cx18_mdl* %20, i32 0, i32 4
  store i64 0, i64* %21, align 8
  %22 = load %struct.cx18_mdl*, %struct.cx18_mdl** %6, align 8
  %23 = getelementptr inbounds %struct.cx18_mdl, %struct.cx18_mdl* %22, i32 0, i32 3
  store i32* null, i32** %23, align 8
  br label %24

24:                                               ; preds = %13, %4
  %25 = load %struct.cx18_queue*, %struct.cx18_queue** %7, align 8
  %26 = load %struct.cx18_stream*, %struct.cx18_stream** %5, align 8
  %27 = getelementptr inbounds %struct.cx18_stream, %struct.cx18_stream* %26, i32 0, i32 1
  %28 = icmp eq %struct.cx18_queue* %25, %27
  br i1 %28, label %29, label %38

29:                                               ; preds = %24
  %30 = load %struct.cx18_queue*, %struct.cx18_queue** %7, align 8
  %31 = getelementptr inbounds %struct.cx18_queue, %struct.cx18_queue* %30, i32 0, i32 1
  %32 = call i64 @atomic_read(i32* %31)
  %33 = load i64, i64* @CX18_MAX_FW_MDLS_PER_STREAM, align 8
  %34 = icmp sge i64 %32, %33
  br i1 %34, label %35, label %38

35:                                               ; preds = %29
  %36 = load %struct.cx18_stream*, %struct.cx18_stream** %5, align 8
  %37 = getelementptr inbounds %struct.cx18_stream, %struct.cx18_stream* %36, i32 0, i32 0
  store %struct.cx18_queue* %37, %struct.cx18_queue** %7, align 8
  br label %38

38:                                               ; preds = %35, %29, %24
  %39 = load %struct.cx18_queue*, %struct.cx18_queue** %7, align 8
  %40 = getelementptr inbounds %struct.cx18_queue, %struct.cx18_queue* %39, i32 0, i32 0
  %41 = call i32 @spin_lock(i32* %40)
  %42 = load i32, i32* %8, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %50

44:                                               ; preds = %38
  %45 = load %struct.cx18_mdl*, %struct.cx18_mdl** %6, align 8
  %46 = getelementptr inbounds %struct.cx18_mdl, %struct.cx18_mdl* %45, i32 0, i32 2
  %47 = load %struct.cx18_queue*, %struct.cx18_queue** %7, align 8
  %48 = getelementptr inbounds %struct.cx18_queue, %struct.cx18_queue* %47, i32 0, i32 3
  %49 = call i32 @list_add(i32* %46, i32* %48)
  br label %56

50:                                               ; preds = %38
  %51 = load %struct.cx18_mdl*, %struct.cx18_mdl** %6, align 8
  %52 = getelementptr inbounds %struct.cx18_mdl, %struct.cx18_mdl* %51, i32 0, i32 2
  %53 = load %struct.cx18_queue*, %struct.cx18_queue** %7, align 8
  %54 = getelementptr inbounds %struct.cx18_queue, %struct.cx18_queue* %53, i32 0, i32 3
  %55 = call i32 @list_add_tail(i32* %52, i32* %54)
  br label %56

56:                                               ; preds = %50, %44
  %57 = load %struct.cx18_mdl*, %struct.cx18_mdl** %6, align 8
  %58 = getelementptr inbounds %struct.cx18_mdl, %struct.cx18_mdl* %57, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = load %struct.cx18_mdl*, %struct.cx18_mdl** %6, align 8
  %61 = getelementptr inbounds %struct.cx18_mdl, %struct.cx18_mdl* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = sub nsw i64 %59, %62
  %64 = load %struct.cx18_queue*, %struct.cx18_queue** %7, align 8
  %65 = getelementptr inbounds %struct.cx18_queue, %struct.cx18_queue* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 4
  %67 = sext i32 %66 to i64
  %68 = add nsw i64 %67, %63
  %69 = trunc i64 %68 to i32
  store i32 %69, i32* %65, align 4
  %70 = load %struct.cx18_queue*, %struct.cx18_queue** %7, align 8
  %71 = getelementptr inbounds %struct.cx18_queue, %struct.cx18_queue* %70, i32 0, i32 1
  %72 = call i32 @atomic_inc(i32* %71)
  %73 = load %struct.cx18_queue*, %struct.cx18_queue** %7, align 8
  %74 = getelementptr inbounds %struct.cx18_queue, %struct.cx18_queue* %73, i32 0, i32 0
  %75 = call i32 @spin_unlock(i32* %74)
  %76 = load %struct.cx18_queue*, %struct.cx18_queue** %7, align 8
  ret %struct.cx18_queue* %76
}

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
