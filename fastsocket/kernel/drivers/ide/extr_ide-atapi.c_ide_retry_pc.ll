; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/ide/extr_ide-atapi.c_ide_retry_pc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/ide/extr_ide-atapi.c_ide_retry_pc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64, %struct.TYPE_7__*, i32, %struct.ide_atapi_pc, %struct.request }
%struct.TYPE_7__ = type { %struct.request* }
%struct.ide_atapi_pc = type { i32 }
%struct.request = type { i32, i32 }

@ide_tape = common dso_local global i64 0, align 8
@IDE_AFLAG_IGNORE_DSC = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ide_retry_pc(%struct.TYPE_8__* %0) #0 {
  %2 = alloca %struct.TYPE_8__*, align 8
  %3 = alloca %struct.request*, align 8
  %4 = alloca %struct.request*, align 8
  %5 = alloca %struct.ide_atapi_pc*, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %2, align 8
  %6 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %7 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %6, i32 0, i32 1
  %8 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 0
  %10 = load %struct.request*, %struct.request** %9, align 8
  store %struct.request* %10, %struct.request** %3, align 8
  %11 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %12 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %11, i32 0, i32 4
  store %struct.request* %12, %struct.request** %4, align 8
  %13 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %14 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 3
  store %struct.ide_atapi_pc* %14, %struct.ide_atapi_pc** %5, align 8
  %15 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %16 = call i32 @ide_read_error(%struct.TYPE_8__* %15)
  %17 = load %struct.ide_atapi_pc*, %struct.ide_atapi_pc** %5, align 8
  %18 = call i32 @ide_init_pc(%struct.ide_atapi_pc* %17)
  %19 = load %struct.ide_atapi_pc*, %struct.ide_atapi_pc** %5, align 8
  %20 = getelementptr inbounds %struct.ide_atapi_pc, %struct.ide_atapi_pc* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.request*, %struct.request** %4, align 8
  %23 = getelementptr inbounds %struct.request, %struct.request* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @memcpy(i32 %21, i32 %24, i32 12)
  %26 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @ide_tape, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %37

31:                                               ; preds = %1
  %32 = load i32, i32* @IDE_AFLAG_IGNORE_DSC, align 4
  %33 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %34 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 8
  %36 = or i32 %35, %32
  store i32 %36, i32* %34, align 8
  br label %37

37:                                               ; preds = %31, %1
  %38 = load %struct.request*, %struct.request** %3, align 8
  %39 = getelementptr inbounds %struct.request, %struct.request* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.request*, %struct.request** %3, align 8
  %42 = call i32 @blk_requeue_request(i32 %40, %struct.request* %41)
  %43 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %44 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %43, i32 0, i32 1
  %45 = load %struct.TYPE_7__*, %struct.TYPE_7__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %45, i32 0, i32 0
  store %struct.request* null, %struct.request** %46, align 8
  %47 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %48 = load %struct.ide_atapi_pc*, %struct.ide_atapi_pc** %5, align 8
  %49 = call i64 @ide_queue_sense_rq(%struct.TYPE_8__* %47, %struct.ide_atapi_pc* %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %60

51:                                               ; preds = %37
  %52 = load %struct.request*, %struct.request** %3, align 8
  %53 = call i32 @blk_start_request(%struct.request* %52)
  %54 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %55 = load i32, i32* @EIO, align 4
  %56 = sub nsw i32 0, %55
  %57 = load %struct.request*, %struct.request** %3, align 8
  %58 = call i32 @blk_rq_bytes(%struct.request* %57)
  %59 = call i32 @ide_complete_rq(%struct.TYPE_8__* %54, i32 %56, i32 %58)
  br label %60

60:                                               ; preds = %51, %37
  ret void
}

declare dso_local i32 @ide_read_error(%struct.TYPE_8__*) #1

declare dso_local i32 @ide_init_pc(%struct.ide_atapi_pc*) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @blk_requeue_request(i32, %struct.request*) #1

declare dso_local i64 @ide_queue_sense_rq(%struct.TYPE_8__*, %struct.ide_atapi_pc*) #1

declare dso_local i32 @blk_start_request(%struct.request*) #1

declare dso_local i32 @ide_complete_rq(%struct.TYPE_8__*, i32, i32) #1

declare dso_local i32 @blk_rq_bytes(%struct.request*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
