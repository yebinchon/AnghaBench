; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/ide/extr_ide-taskfile.c_ide_raw_taskfile.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/ide/extr_ide-taskfile.c_ide_raw_taskfile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }
%struct.ide_cmd = type { i32, %struct.request* }
%struct.request = type { %struct.ide_cmd*, i32 }

@IDE_TFLAG_WRITE = common dso_local global i32 0, align 4
@READ = common dso_local global i32 0, align 4
@WRITE = common dso_local global i32 0, align 4
@__GFP_WAIT = common dso_local global i32 0, align 4
@REQ_TYPE_ATA_TASKFILE = common dso_local global i32 0, align 4
@SECTOR_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ide_raw_taskfile(%struct.TYPE_3__* %0, %struct.ide_cmd* %1, i32* %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca %struct.ide_cmd*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.request*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %5, align 8
  store %struct.ide_cmd* %1, %struct.ide_cmd** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32 %3, i32* %8, align 4
  %12 = load %struct.ide_cmd*, %struct.ide_cmd** %6, align 8
  %13 = getelementptr inbounds %struct.ide_cmd, %struct.ide_cmd* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = load i32, i32* @IDE_TFLAG_WRITE, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %20, label %18

18:                                               ; preds = %4
  %19 = load i32, i32* @READ, align 4
  br label %22

20:                                               ; preds = %4
  %21 = load i32, i32* @WRITE, align 4
  br label %22

22:                                               ; preds = %20, %18
  %23 = phi i32 [ %19, %18 ], [ %21, %20 ]
  store i32 %23, i32* %11, align 4
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* %11, align 4
  %28 = load i32, i32* @__GFP_WAIT, align 4
  %29 = call %struct.request* @blk_get_request(i32 %26, i32 %27, i32 %28)
  store %struct.request* %29, %struct.request** %9, align 8
  %30 = load i32, i32* @REQ_TYPE_ATA_TASKFILE, align 4
  %31 = load %struct.request*, %struct.request** %9, align 8
  %32 = getelementptr inbounds %struct.request, %struct.request* %31, i32 0, i32 1
  store i32 %30, i32* %32, align 8
  %33 = load i32, i32* %8, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %50

35:                                               ; preds = %22
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.request*, %struct.request** %9, align 8
  %40 = load i32*, i32** %7, align 8
  %41 = load i32, i32* %8, align 4
  %42 = load i32, i32* @SECTOR_SIZE, align 4
  %43 = mul nsw i32 %41, %42
  %44 = load i32, i32* @__GFP_WAIT, align 4
  %45 = call i32 @blk_rq_map_kern(i32 %38, %struct.request* %39, i32* %40, i32 %43, i32 %44)
  store i32 %45, i32* %10, align 4
  %46 = load i32, i32* %10, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %35
  br label %62

49:                                               ; preds = %35
  br label %50

50:                                               ; preds = %49, %22
  %51 = load %struct.ide_cmd*, %struct.ide_cmd** %6, align 8
  %52 = load %struct.request*, %struct.request** %9, align 8
  %53 = getelementptr inbounds %struct.request, %struct.request* %52, i32 0, i32 0
  store %struct.ide_cmd* %51, %struct.ide_cmd** %53, align 8
  %54 = load %struct.request*, %struct.request** %9, align 8
  %55 = load %struct.ide_cmd*, %struct.ide_cmd** %6, align 8
  %56 = getelementptr inbounds %struct.ide_cmd, %struct.ide_cmd* %55, i32 0, i32 1
  store %struct.request* %54, %struct.request** %56, align 8
  %57 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.request*, %struct.request** %9, align 8
  %61 = call i32 @blk_execute_rq(i32 %59, i32* null, %struct.request* %60, i32 0)
  store i32 %61, i32* %10, align 4
  br label %62

62:                                               ; preds = %50, %48
  %63 = load %struct.request*, %struct.request** %9, align 8
  %64 = call i32 @blk_put_request(%struct.request* %63)
  %65 = load i32, i32* %10, align 4
  ret i32 %65
}

declare dso_local %struct.request* @blk_get_request(i32, i32, i32) #1

declare dso_local i32 @blk_rq_map_kern(i32, %struct.request*, i32*, i32, i32) #1

declare dso_local i32 @blk_execute_rq(i32, i32*, %struct.request*, i32) #1

declare dso_local i32 @blk_put_request(%struct.request*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
