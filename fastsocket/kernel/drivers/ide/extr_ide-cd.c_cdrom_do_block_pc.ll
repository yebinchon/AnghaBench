; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/ide/extr_ide-cd.c_cdrom_do_block_pc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/ide/extr_ide-cd.c_cdrom_do_block_pc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, %struct.request_queue* }
%struct.request_queue = type { i32 }
%struct.request = type { i64, i64, i32, i32* }

@IDE_DBG_PC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"rq->cmd[0]: 0x%x, rq->cmd_type: 0x%x\00", align 1
@REQ_TYPE_BLOCK_PC = common dso_local global i64 0, align 8
@REQ_QUIET = common dso_local global i32 0, align 4
@REQ_FAILED = common dso_local global i32 0, align 4
@IDE_DFLAG_USING_DMA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*, %struct.request*)* @cdrom_do_block_pc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cdrom_do_block_pc(%struct.TYPE_3__* %0, %struct.request* %1) #0 {
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca %struct.request*, align 8
  %5 = alloca %struct.request_queue*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  store %struct.request* %1, %struct.request** %4, align 8
  %8 = load i32, i32* @IDE_DBG_PC, align 4
  %9 = load %struct.request*, %struct.request** %4, align 8
  %10 = getelementptr inbounds %struct.request, %struct.request* %9, i32 0, i32 3
  %11 = load i32*, i32** %10, align 8
  %12 = getelementptr inbounds i32, i32* %11, i64 0
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.request*, %struct.request** %4, align 8
  %15 = getelementptr inbounds %struct.request, %struct.request* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = call i32 @ide_debug_log(i32 %8, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %13, i64 %16)
  %18 = load %struct.request*, %struct.request** %4, align 8
  %19 = getelementptr inbounds %struct.request, %struct.request* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @REQ_TYPE_BLOCK_PC, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %29

23:                                               ; preds = %2
  %24 = load i32, i32* @REQ_QUIET, align 4
  %25 = load %struct.request*, %struct.request** %4, align 8
  %26 = getelementptr inbounds %struct.request, %struct.request* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 8
  %28 = or i32 %27, %24
  store i32 %28, i32* %26, align 8
  br label %36

29:                                               ; preds = %2
  %30 = load i32, i32* @REQ_FAILED, align 4
  %31 = xor i32 %30, -1
  %32 = load %struct.request*, %struct.request** %4, align 8
  %33 = getelementptr inbounds %struct.request, %struct.request* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 8
  %35 = and i32 %34, %31
  store i32 %35, i32* %33, align 8
  br label %36

36:                                               ; preds = %29, %23
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 0
  store i32 0, i32* %38, align 8
  %39 = load %struct.request*, %struct.request** %4, align 8
  %40 = getelementptr inbounds %struct.request, %struct.request* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %90

43:                                               ; preds = %36
  %44 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 2
  %46 = load %struct.request_queue*, %struct.request_queue** %45, align 8
  store %struct.request_queue* %46, %struct.request_queue** %5, align 8
  %47 = load %struct.request*, %struct.request** %4, align 8
  %48 = getelementptr inbounds %struct.request, %struct.request* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = call i8* @bio_data(i64 %49)
  store i8* %50, i8** %6, align 8
  %51 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* @IDE_DFLAG_USING_DMA, align 4
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  %57 = xor i1 %56, true
  %58 = xor i1 %57, true
  %59 = zext i1 %58 to i32
  %60 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i32 0, i32 0
  store i32 %59, i32* %61, align 8
  %62 = load %struct.request_queue*, %struct.request_queue** %5, align 8
  %63 = call i32 @queue_dma_alignment(%struct.request_queue* %62)
  %64 = load %struct.request_queue*, %struct.request_queue** %5, align 8
  %65 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = or i32 %63, %66
  store i32 %67, i32* %7, align 4
  %68 = load i8*, i8** %6, align 8
  %69 = ptrtoint i8* %68 to i64
  %70 = load i32, i32* %7, align 4
  %71 = zext i32 %70 to i64
  %72 = and i64 %69, %71
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %86, label %74

74:                                               ; preds = %43
  %75 = load %struct.request*, %struct.request** %4, align 8
  %76 = call i32 @blk_rq_bytes(%struct.request* %75)
  %77 = load %struct.request_queue*, %struct.request_queue** %5, align 8
  %78 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = and i32 %76, %79
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %86, label %82

82:                                               ; preds = %74
  %83 = load i8*, i8** %6, align 8
  %84 = call i64 @object_is_on_stack(i8* %83)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %89

86:                                               ; preds = %82, %74, %43
  %87 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %88 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %87, i32 0, i32 0
  store i32 0, i32* %88, align 8
  br label %89

89:                                               ; preds = %86, %82
  br label %90

90:                                               ; preds = %89, %36
  ret void
}

declare dso_local i32 @ide_debug_log(i32, i8*, i32, i64) #1

declare dso_local i8* @bio_data(i64) #1

declare dso_local i32 @queue_dma_alignment(%struct.request_queue*) #1

declare dso_local i32 @blk_rq_bytes(%struct.request*) #1

declare dso_local i64 @object_is_on_stack(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
