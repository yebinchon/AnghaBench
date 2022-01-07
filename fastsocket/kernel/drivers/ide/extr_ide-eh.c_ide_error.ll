; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/ide/extr_ide-eh.c_ide_error.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/ide/extr_ide-eh.c_ide_error.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { %struct.request* }
%struct.request = type { i64, i32, %struct.ide_cmd* }
%struct.ide_cmd = type { i32 }

@ide_stopped = common dso_local global i32 0, align 4
@REQ_TYPE_FS = common dso_local global i64 0, align 8
@REQ_TYPE_ATA_TASKFILE = common dso_local global i64 0, align 8
@EIO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ide_error(%struct.TYPE_10__* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_10__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.request*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.ide_cmd*, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %12 = load i8*, i8** %6, align 8
  %13 = load i32, i32* %7, align 4
  %14 = call i32 @ide_dump_status(%struct.TYPE_10__* %11, i8* %12, i32 %13)
  store i32 %14, i32* %9, align 4
  %15 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %15, i32 0, i32 0
  %17 = load %struct.TYPE_9__*, %struct.TYPE_9__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %17, i32 0, i32 0
  %19 = load %struct.request*, %struct.request** %18, align 8
  store %struct.request* %19, %struct.request** %8, align 8
  %20 = load %struct.request*, %struct.request** %8, align 8
  %21 = icmp eq %struct.request* %20, null
  br i1 %21, label %22, label %24

22:                                               ; preds = %3
  %23 = load i32, i32* @ide_stopped, align 4
  store i32 %23, i32* %4, align 4
  br label %84

24:                                               ; preds = %3
  %25 = load %struct.request*, %struct.request** %8, align 8
  %26 = getelementptr inbounds %struct.request, %struct.request* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @REQ_TYPE_FS, align 8
  %29 = icmp ne i64 %27, %28
  br i1 %29, label %30, label %78

30:                                               ; preds = %24
  %31 = load %struct.request*, %struct.request** %8, align 8
  %32 = getelementptr inbounds %struct.request, %struct.request* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @REQ_TYPE_ATA_TASKFILE, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %49

36:                                               ; preds = %30
  %37 = load %struct.request*, %struct.request** %8, align 8
  %38 = getelementptr inbounds %struct.request, %struct.request* %37, i32 0, i32 2
  %39 = load %struct.ide_cmd*, %struct.ide_cmd** %38, align 8
  store %struct.ide_cmd* %39, %struct.ide_cmd** %10, align 8
  %40 = load %struct.ide_cmd*, %struct.ide_cmd** %10, align 8
  %41 = icmp ne %struct.ide_cmd* %40, null
  br i1 %41, label %42, label %48

42:                                               ; preds = %36
  %43 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %44 = load %struct.ide_cmd*, %struct.ide_cmd** %10, align 8
  %45 = load i32, i32* %7, align 4
  %46 = load i32, i32* %9, align 4
  %47 = call i32 @ide_complete_cmd(%struct.TYPE_10__* %43, %struct.ide_cmd* %44, i32 %45, i32 %46)
  br label %48

48:                                               ; preds = %42, %36
  br label %61

49:                                               ; preds = %30
  %50 = load %struct.request*, %struct.request** %8, align 8
  %51 = call i64 @blk_pm_request(%struct.request* %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %60

53:                                               ; preds = %49
  %54 = load %struct.request*, %struct.request** %8, align 8
  %55 = getelementptr inbounds %struct.request, %struct.request* %54, i32 0, i32 1
  store i32 1, i32* %55, align 8
  %56 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %57 = load %struct.request*, %struct.request** %8, align 8
  %58 = call i32 @ide_complete_pm_rq(%struct.TYPE_10__* %56, %struct.request* %57)
  %59 = load i32, i32* @ide_stopped, align 4
  store i32 %59, i32* %4, align 4
  br label %84

60:                                               ; preds = %49
  br label %61

61:                                               ; preds = %60, %48
  %62 = load i32, i32* %9, align 4
  %63 = load %struct.request*, %struct.request** %8, align 8
  %64 = getelementptr inbounds %struct.request, %struct.request* %63, i32 0, i32 1
  store i32 %62, i32* %64, align 8
  %65 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %66 = load i32, i32* %9, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %71

68:                                               ; preds = %61
  %69 = load i32, i32* @EIO, align 4
  %70 = sub nsw i32 0, %69
  br label %72

71:                                               ; preds = %61
  br label %72

72:                                               ; preds = %71, %68
  %73 = phi i32 [ %70, %68 ], [ 0, %71 ]
  %74 = load %struct.request*, %struct.request** %8, align 8
  %75 = call i32 @blk_rq_bytes(%struct.request* %74)
  %76 = call i32 @ide_complete_rq(%struct.TYPE_10__* %65, i32 %73, i32 %75)
  %77 = load i32, i32* @ide_stopped, align 4
  store i32 %77, i32* %4, align 4
  br label %84

78:                                               ; preds = %24
  %79 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %80 = load %struct.request*, %struct.request** %8, align 8
  %81 = load i32, i32* %7, align 4
  %82 = load i32, i32* %9, align 4
  %83 = call i32 @__ide_error(%struct.TYPE_10__* %79, %struct.request* %80, i32 %81, i32 %82)
  store i32 %83, i32* %4, align 4
  br label %84

84:                                               ; preds = %78, %72, %53, %22
  %85 = load i32, i32* %4, align 4
  ret i32 %85
}

declare dso_local i32 @ide_dump_status(%struct.TYPE_10__*, i8*, i32) #1

declare dso_local i32 @ide_complete_cmd(%struct.TYPE_10__*, %struct.ide_cmd*, i32, i32) #1

declare dso_local i64 @blk_pm_request(%struct.request*) #1

declare dso_local i32 @ide_complete_pm_rq(%struct.TYPE_10__*, %struct.request*) #1

declare dso_local i32 @ide_complete_rq(%struct.TYPE_10__*, i32, i32) #1

declare dso_local i32 @blk_rq_bytes(%struct.request*) #1

declare dso_local i32 @__ide_error(%struct.TYPE_10__*, %struct.request*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
