; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/ide/extr_ide-io.c_ide_kill_rq.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/ide/extr_ide-io.c_ide_kill_rq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i32* }
%struct.request = type { i64, i32, i64 }

@REQ_TYPE_SPECIAL = common dso_local global i64 0, align 8
@ide_floppy = common dso_local global i64 0, align 8
@ide_tape = common dso_local global i64 0, align 8
@IDE_DRV_ERROR_GENERAL = common dso_local global i32 0, align 4
@REQ_TYPE_FS = common dso_local global i64 0, align 8
@EIO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ide_kill_rq(%struct.TYPE_4__* %0, %struct.request* %1) #0 {
  %3 = alloca %struct.TYPE_4__*, align 8
  %4 = alloca %struct.request*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %3, align 8
  store %struct.request* %1, %struct.request** %4, align 8
  %7 = load %struct.request*, %struct.request** %4, align 8
  %8 = getelementptr inbounds %struct.request, %struct.request* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @REQ_TYPE_SPECIAL, align 8
  %11 = icmp eq i64 %9, %10
  br i1 %11, label %12, label %17

12:                                               ; preds = %2
  %13 = load %struct.request*, %struct.request** %4, align 8
  %14 = getelementptr inbounds %struct.request, %struct.request* %13, i32 0, i32 2
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br label %17

17:                                               ; preds = %12, %2
  %18 = phi i1 [ false, %2 ], [ %16, %12 ]
  %19 = zext i1 %18 to i32
  %20 = sext i32 %19 to i64
  store i64 %20, i64* %5, align 8
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  store i64 %23, i64* %6, align 8
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 1
  store i32* null, i32** %25, align 8
  %26 = load i64, i64* %6, align 8
  %27 = load i64, i64* @ide_floppy, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %33, label %29

29:                                               ; preds = %17
  %30 = load i64, i64* %6, align 8
  %31 = load i64, i64* @ide_tape, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %39

33:                                               ; preds = %29, %17
  %34 = load i64, i64* %5, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %33
  %37 = load %struct.request*, %struct.request** %4, align 8
  %38 = getelementptr inbounds %struct.request, %struct.request* %37, i32 0, i32 1
  store i32 0, i32* %38, align 8
  br label %65

39:                                               ; preds = %33, %29
  %40 = load i64, i64* %6, align 8
  %41 = load i64, i64* @ide_tape, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %43, label %47

43:                                               ; preds = %39
  %44 = load i32, i32* @IDE_DRV_ERROR_GENERAL, align 4
  %45 = load %struct.request*, %struct.request** %4, align 8
  %46 = getelementptr inbounds %struct.request, %struct.request* %45, i32 0, i32 1
  store i32 %44, i32* %46, align 8
  br label %64

47:                                               ; preds = %39
  %48 = load %struct.request*, %struct.request** %4, align 8
  %49 = getelementptr inbounds %struct.request, %struct.request* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @REQ_TYPE_FS, align 8
  %52 = icmp ne i64 %50, %51
  br i1 %52, label %53, label %63

53:                                               ; preds = %47
  %54 = load %struct.request*, %struct.request** %4, align 8
  %55 = getelementptr inbounds %struct.request, %struct.request* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 8
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %58, label %63

58:                                               ; preds = %53
  %59 = load i32, i32* @EIO, align 4
  %60 = sub nsw i32 0, %59
  %61 = load %struct.request*, %struct.request** %4, align 8
  %62 = getelementptr inbounds %struct.request, %struct.request* %61, i32 0, i32 1
  store i32 %60, i32* %62, align 8
  br label %63

63:                                               ; preds = %58, %53, %47
  br label %64

64:                                               ; preds = %63, %43
  br label %65

65:                                               ; preds = %64, %36
  %66 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %67 = load i32, i32* @EIO, align 4
  %68 = sub nsw i32 0, %67
  %69 = load %struct.request*, %struct.request** %4, align 8
  %70 = call i32 @blk_rq_bytes(%struct.request* %69)
  %71 = call i32 @ide_complete_rq(%struct.TYPE_4__* %66, i32 %68, i32 %70)
  ret void
}

declare dso_local i32 @ide_complete_rq(%struct.TYPE_4__*, i32, i32) #1

declare dso_local i32 @blk_rq_bytes(%struct.request*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
