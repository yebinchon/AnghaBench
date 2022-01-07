; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/ide/extr_ide-devsets.c_ide_devset_execute.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/ide/extr_ide-devsets.c_ide_devset_execute.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.request_queue* }
%struct.request_queue = type { i32 }
%struct.ide_devset = type { i32, i32 (%struct.TYPE_4__*, i32)* }
%struct.request = type { i32, i32 (%struct.TYPE_4__*, i32)*, i32, i32*, i32 }

@DS_SYNC = common dso_local global i32 0, align 4
@READ = common dso_local global i32 0, align 4
@__GFP_WAIT = common dso_local global i32 0, align 4
@REQ_TYPE_SPECIAL = common dso_local global i32 0, align 4
@REQ_DEVSET_EXEC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ide_devset_execute(%struct.TYPE_4__* %0, %struct.ide_devset* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_4__*, align 8
  %6 = alloca %struct.ide_devset*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.request_queue*, align 8
  %9 = alloca %struct.request*, align 8
  %10 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %5, align 8
  store %struct.ide_devset* %1, %struct.ide_devset** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = load %struct.request_queue*, %struct.request_queue** %12, align 8
  store %struct.request_queue* %13, %struct.request_queue** %8, align 8
  store i32 0, i32* %10, align 4
  %14 = load %struct.ide_devset*, %struct.ide_devset** %6, align 8
  %15 = getelementptr inbounds %struct.ide_devset, %struct.ide_devset* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load i32, i32* @DS_SYNC, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %27, label %20

20:                                               ; preds = %3
  %21 = load %struct.ide_devset*, %struct.ide_devset** %6, align 8
  %22 = getelementptr inbounds %struct.ide_devset, %struct.ide_devset* %21, i32 0, i32 1
  %23 = load i32 (%struct.TYPE_4__*, i32)*, i32 (%struct.TYPE_4__*, i32)** %22, align 8
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %25 = load i32, i32* %7, align 4
  %26 = call i32 %23(%struct.TYPE_4__* %24, i32 %25)
  store i32 %26, i32* %4, align 4
  br label %64

27:                                               ; preds = %3
  %28 = load %struct.request_queue*, %struct.request_queue** %8, align 8
  %29 = load i32, i32* @READ, align 4
  %30 = load i32, i32* @__GFP_WAIT, align 4
  %31 = call %struct.request* @blk_get_request(%struct.request_queue* %28, i32 %29, i32 %30)
  store %struct.request* %31, %struct.request** %9, align 8
  %32 = load i32, i32* @REQ_TYPE_SPECIAL, align 4
  %33 = load %struct.request*, %struct.request** %9, align 8
  %34 = getelementptr inbounds %struct.request, %struct.request* %33, i32 0, i32 4
  store i32 %32, i32* %34, align 8
  %35 = load %struct.request*, %struct.request** %9, align 8
  %36 = getelementptr inbounds %struct.request, %struct.request* %35, i32 0, i32 0
  store i32 5, i32* %36, align 8
  %37 = load i32, i32* @REQ_DEVSET_EXEC, align 4
  %38 = load %struct.request*, %struct.request** %9, align 8
  %39 = getelementptr inbounds %struct.request, %struct.request* %38, i32 0, i32 3
  %40 = load i32*, i32** %39, align 8
  %41 = getelementptr inbounds i32, i32* %40, i64 0
  store i32 %37, i32* %41, align 4
  %42 = load i32, i32* %7, align 4
  %43 = load %struct.request*, %struct.request** %9, align 8
  %44 = getelementptr inbounds %struct.request, %struct.request* %43, i32 0, i32 3
  %45 = load i32*, i32** %44, align 8
  %46 = getelementptr inbounds i32, i32* %45, i64 1
  store i32 %42, i32* %46, align 4
  %47 = load %struct.ide_devset*, %struct.ide_devset** %6, align 8
  %48 = getelementptr inbounds %struct.ide_devset, %struct.ide_devset* %47, i32 0, i32 1
  %49 = load i32 (%struct.TYPE_4__*, i32)*, i32 (%struct.TYPE_4__*, i32)** %48, align 8
  %50 = load %struct.request*, %struct.request** %9, align 8
  %51 = getelementptr inbounds %struct.request, %struct.request* %50, i32 0, i32 1
  store i32 (%struct.TYPE_4__*, i32)* %49, i32 (%struct.TYPE_4__*, i32)** %51, align 8
  %52 = load %struct.request_queue*, %struct.request_queue** %8, align 8
  %53 = load %struct.request*, %struct.request** %9, align 8
  %54 = call i64 @blk_execute_rq(%struct.request_queue* %52, i32* null, %struct.request* %53, i32 0)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %60

56:                                               ; preds = %27
  %57 = load %struct.request*, %struct.request** %9, align 8
  %58 = getelementptr inbounds %struct.request, %struct.request* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 8
  store i32 %59, i32* %10, align 4
  br label %60

60:                                               ; preds = %56, %27
  %61 = load %struct.request*, %struct.request** %9, align 8
  %62 = call i32 @blk_put_request(%struct.request* %61)
  %63 = load i32, i32* %10, align 4
  store i32 %63, i32* %4, align 4
  br label %64

64:                                               ; preds = %60, %20
  %65 = load i32, i32* %4, align 4
  ret i32 %65
}

declare dso_local %struct.request* @blk_get_request(%struct.request_queue*, i32, i32) #1

declare dso_local i64 @blk_execute_rq(%struct.request_queue*, i32*, %struct.request*, i32) #1

declare dso_local i32 @blk_put_request(%struct.request*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
