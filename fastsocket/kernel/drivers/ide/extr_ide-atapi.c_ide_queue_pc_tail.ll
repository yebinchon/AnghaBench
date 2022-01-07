; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/ide/extr_ide-atapi.c_ide_queue_pc_tail.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/ide/extr_ide-atapi.c_ide_queue_pc_tail.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i32 }
%struct.gendisk = type { i32 }
%struct.ide_atapi_pc = type { i32 }
%struct.request = type { i8*, i32*, i32 }

@READ = common dso_local global i32 0, align 4
@__GFP_WAIT = common dso_local global i32 0, align 4
@REQ_TYPE_SPECIAL = common dso_local global i32 0, align 4
@GFP_NOIO = common dso_local global i32 0, align 4
@ide_tape = common dso_local global i64 0, align 8
@REQ_IDETAPE_PC1 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ide_queue_pc_tail(%struct.TYPE_3__* %0, %struct.gendisk* %1, %struct.ide_atapi_pc* %2, i8* %3, i32 %4) #0 {
  %6 = alloca %struct.TYPE_3__*, align 8
  %7 = alloca %struct.gendisk*, align 8
  %8 = alloca %struct.ide_atapi_pc*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.request*, align 8
  %12 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %6, align 8
  store %struct.gendisk* %1, %struct.gendisk** %7, align 8
  store %struct.ide_atapi_pc* %2, %struct.ide_atapi_pc** %8, align 8
  store i8* %3, i8** %9, align 8
  store i32 %4, i32* %10, align 4
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 8
  %16 = load i32, i32* @READ, align 4
  %17 = load i32, i32* @__GFP_WAIT, align 4
  %18 = call %struct.request* @blk_get_request(i32 %15, i32 %16, i32 %17)
  store %struct.request* %18, %struct.request** %11, align 8
  %19 = load i32, i32* @REQ_TYPE_SPECIAL, align 4
  %20 = load %struct.request*, %struct.request** %11, align 8
  %21 = getelementptr inbounds %struct.request, %struct.request* %20, i32 0, i32 2
  store i32 %19, i32* %21, align 8
  %22 = load %struct.ide_atapi_pc*, %struct.ide_atapi_pc** %8, align 8
  %23 = bitcast %struct.ide_atapi_pc* %22 to i8*
  %24 = load %struct.request*, %struct.request** %11, align 8
  %25 = getelementptr inbounds %struct.request, %struct.request* %24, i32 0, i32 0
  store i8* %23, i8** %25, align 8
  %26 = load i8*, i8** %9, align 8
  %27 = icmp ne i8* %26, null
  br i1 %27, label %28, label %44

28:                                               ; preds = %5
  %29 = load i32, i32* %10, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %44

31:                                               ; preds = %28
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = load %struct.request*, %struct.request** %11, align 8
  %36 = load i8*, i8** %9, align 8
  %37 = load i32, i32* %10, align 4
  %38 = load i32, i32* @GFP_NOIO, align 4
  %39 = call i32 @blk_rq_map_kern(i32 %34, %struct.request* %35, i8* %36, i32 %37, i32 %38)
  store i32 %39, i32* %12, align 4
  %40 = load i32, i32* %12, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %31
  br label %70

43:                                               ; preds = %31
  br label %44

44:                                               ; preds = %43, %28, %5
  %45 = load %struct.request*, %struct.request** %11, align 8
  %46 = getelementptr inbounds %struct.request, %struct.request* %45, i32 0, i32 1
  %47 = load i32*, i32** %46, align 8
  %48 = load %struct.ide_atapi_pc*, %struct.ide_atapi_pc** %8, align 8
  %49 = getelementptr inbounds %struct.ide_atapi_pc, %struct.ide_atapi_pc* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @memcpy(i32* %47, i32 %50, i32 12)
  %52 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* @ide_tape, align 8
  %56 = icmp eq i64 %54, %55
  br i1 %56, label %57, label %63

57:                                               ; preds = %44
  %58 = load i32, i32* @REQ_IDETAPE_PC1, align 4
  %59 = load %struct.request*, %struct.request** %11, align 8
  %60 = getelementptr inbounds %struct.request, %struct.request* %59, i32 0, i32 1
  %61 = load i32*, i32** %60, align 8
  %62 = getelementptr inbounds i32, i32* %61, i64 13
  store i32 %58, i32* %62, align 4
  br label %63

63:                                               ; preds = %57, %44
  %64 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 8
  %67 = load %struct.gendisk*, %struct.gendisk** %7, align 8
  %68 = load %struct.request*, %struct.request** %11, align 8
  %69 = call i32 @blk_execute_rq(i32 %66, %struct.gendisk* %67, %struct.request* %68, i32 0)
  store i32 %69, i32* %12, align 4
  br label %70

70:                                               ; preds = %63, %42
  %71 = load %struct.request*, %struct.request** %11, align 8
  %72 = call i32 @blk_put_request(%struct.request* %71)
  %73 = load i32, i32* %12, align 4
  ret i32 %73
}

declare dso_local %struct.request* @blk_get_request(i32, i32, i32) #1

declare dso_local i32 @blk_rq_map_kern(i32, %struct.request*, i8*, i32, i32) #1

declare dso_local i32 @memcpy(i32*, i32, i32) #1

declare dso_local i32 @blk_execute_rq(i32, %struct.gendisk*, %struct.request*, i32) #1

declare dso_local i32 @blk_put_request(%struct.request*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
