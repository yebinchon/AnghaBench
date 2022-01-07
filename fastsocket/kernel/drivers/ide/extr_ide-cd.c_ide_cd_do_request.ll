; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/ide/extr_ide-cd.c_ide_cd_do_request.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/ide/extr_ide-cd.c_ide_cd_do_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32 }
%struct.request = type { i32, i32, i32* }
%struct.ide_cmd = type { %struct.request*, i32 }

@IDE_DBG_RQ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"cmd: 0x%x, block: %llu\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"ide_cd_do_request\00", align 1
@ide_stopped = common dso_local global i32 0, align 4
@ATAPI_WAIT_PC = common dso_local global i32 0, align 4
@IDE_TFLAG_WRITE = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_9__*, %struct.request*, i64)* @ide_cd_do_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ide_cd_do_request(%struct.TYPE_9__* %0, %struct.request* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_9__*, align 8
  %6 = alloca %struct.request*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.ide_cmd, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %5, align 8
  store %struct.request* %1, %struct.request** %6, align 8
  store i64 %2, i64* %7, align 8
  store i32 0, i32* %9, align 4
  %11 = load i32, i32* @IDE_DBG_RQ, align 4
  %12 = load %struct.request*, %struct.request** %6, align 8
  %13 = getelementptr inbounds %struct.request, %struct.request* %12, i32 0, i32 2
  %14 = load i32*, i32** %13, align 8
  %15 = getelementptr inbounds i32, i32* %14, i64 0
  %16 = load i32, i32* %15, align 4
  %17 = load i64, i64* %7, align 8
  %18 = call i32 @ide_debug_log(i32 %11, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %16, i64 %17)
  %19 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @IDE_DBG_RQ, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %3
  %26 = load %struct.request*, %struct.request** %6, align 8
  %27 = call i32 @blk_dump_rq_flags(%struct.request* %26, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  br label %28

28:                                               ; preds = %25, %3
  %29 = load %struct.request*, %struct.request** %6, align 8
  %30 = getelementptr inbounds %struct.request, %struct.request* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  switch i32 %31, label %54 [
    i32 130, label %32
    i32 129, label %40
    i32 131, label %40
    i32 132, label %40
    i32 128, label %53
  ]

32:                                               ; preds = %28
  %33 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %34 = load %struct.request*, %struct.request** %6, align 8
  %35 = call i32 @cdrom_start_rw(%struct.TYPE_9__* %33, %struct.request* %34)
  %36 = load i32, i32* @ide_stopped, align 4
  %37 = icmp eq i32 %35, %36
  br i1 %37, label %38, label %39

38:                                               ; preds = %32
  br label %89

39:                                               ; preds = %32
  br label %56

40:                                               ; preds = %28, %28, %28
  %41 = load %struct.request*, %struct.request** %6, align 8
  %42 = getelementptr inbounds %struct.request, %struct.request* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %49, label %45

45:                                               ; preds = %40
  %46 = load i32, i32* @ATAPI_WAIT_PC, align 4
  %47 = load %struct.request*, %struct.request** %6, align 8
  %48 = getelementptr inbounds %struct.request, %struct.request* %47, i32 0, i32 1
  store i32 %46, i32* %48, align 4
  br label %49

49:                                               ; preds = %45, %40
  %50 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %51 = load %struct.request*, %struct.request** %6, align 8
  %52 = call i32 @cdrom_do_block_pc(%struct.TYPE_9__* %50, %struct.request* %51)
  br label %56

53:                                               ; preds = %28
  store i32 1, i32* %9, align 4
  br label %89

54:                                               ; preds = %28
  %55 = call i32 (...) @BUG()
  br label %56

56:                                               ; preds = %54, %49, %39
  %57 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %58 = load %struct.request*, %struct.request** %6, align 8
  %59 = call i32 @ide_prep_sense(%struct.TYPE_9__* %57, %struct.request* %58)
  %60 = call i32 @memset(%struct.ide_cmd* %8, i32 0, i32 16)
  %61 = load %struct.request*, %struct.request** %6, align 8
  %62 = call i64 @rq_data_dir(%struct.request* %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %69

64:                                               ; preds = %56
  %65 = load i32, i32* @IDE_TFLAG_WRITE, align 4
  %66 = getelementptr inbounds %struct.ide_cmd, %struct.ide_cmd* %8, i32 0, i32 1
  %67 = load i32, i32* %66, align 8
  %68 = or i32 %67, %65
  store i32 %68, i32* %66, align 8
  br label %69

69:                                               ; preds = %64, %56
  %70 = load %struct.request*, %struct.request** %6, align 8
  %71 = getelementptr inbounds %struct.ide_cmd, %struct.ide_cmd* %8, i32 0, i32 0
  store %struct.request* %70, %struct.request** %71, align 8
  %72 = load %struct.request*, %struct.request** %6, align 8
  %73 = getelementptr inbounds %struct.request, %struct.request* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = icmp eq i32 %74, 130
  br i1 %75, label %80, label %76

76:                                               ; preds = %69
  %77 = load %struct.request*, %struct.request** %6, align 8
  %78 = call i64 @blk_rq_bytes(%struct.request* %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %86

80:                                               ; preds = %76, %69
  %81 = load %struct.request*, %struct.request** %6, align 8
  %82 = call i64 @blk_rq_bytes(%struct.request* %81)
  %83 = call i32 @ide_init_sg_cmd(%struct.ide_cmd* %8, i64 %82)
  %84 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %85 = call i32 @ide_map_sg(%struct.TYPE_9__* %84, %struct.ide_cmd* %8)
  br label %86

86:                                               ; preds = %80, %76
  %87 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %88 = call i32 @ide_issue_pc(%struct.TYPE_9__* %87, %struct.ide_cmd* %8)
  store i32 %88, i32* %4, align 4
  br label %109

89:                                               ; preds = %53, %38
  %90 = load %struct.request*, %struct.request** %6, align 8
  %91 = call i32 @blk_rq_sectors(%struct.request* %90)
  store i32 %91, i32* %10, align 4
  %92 = load i32, i32* %10, align 4
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %94, label %95

94:                                               ; preds = %89
  store i32 1, i32* %10, align 4
  br label %95

95:                                               ; preds = %94, %89
  %96 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %97 = load i32, i32* %9, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %100

99:                                               ; preds = %95
  br label %103

100:                                              ; preds = %95
  %101 = load i32, i32* @EIO, align 4
  %102 = sub nsw i32 0, %101
  br label %103

103:                                              ; preds = %100, %99
  %104 = phi i32 [ 0, %99 ], [ %102, %100 ]
  %105 = load i32, i32* %10, align 4
  %106 = shl i32 %105, 9
  %107 = call i32 @ide_complete_rq(%struct.TYPE_9__* %96, i32 %104, i32 %106)
  %108 = load i32, i32* @ide_stopped, align 4
  store i32 %108, i32* %4, align 4
  br label %109

109:                                              ; preds = %103, %86
  %110 = load i32, i32* %4, align 4
  ret i32 %110
}

declare dso_local i32 @ide_debug_log(i32, i8*, i32, i64) #1

declare dso_local i32 @blk_dump_rq_flags(%struct.request*, i8*) #1

declare dso_local i32 @cdrom_start_rw(%struct.TYPE_9__*, %struct.request*) #1

declare dso_local i32 @cdrom_do_block_pc(%struct.TYPE_9__*, %struct.request*) #1

declare dso_local i32 @BUG(...) #1

declare dso_local i32 @ide_prep_sense(%struct.TYPE_9__*, %struct.request*) #1

declare dso_local i32 @memset(%struct.ide_cmd*, i32, i32) #1

declare dso_local i64 @rq_data_dir(%struct.request*) #1

declare dso_local i64 @blk_rq_bytes(%struct.request*) #1

declare dso_local i32 @ide_init_sg_cmd(%struct.ide_cmd*, i64) #1

declare dso_local i32 @ide_map_sg(%struct.TYPE_9__*, %struct.ide_cmd*) #1

declare dso_local i32 @ide_issue_pc(%struct.TYPE_9__*, %struct.ide_cmd*) #1

declare dso_local i32 @blk_rq_sectors(%struct.request*) #1

declare dso_local i32 @ide_complete_rq(%struct.TYPE_9__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
