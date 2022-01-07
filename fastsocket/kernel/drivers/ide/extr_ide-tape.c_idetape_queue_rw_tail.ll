; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/ide/extr_ide-tape.c_idetape_queue_rw_tail.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/ide/extr_ide-tape.c_idetape_queue_rw_tail.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, i32, i32, i32, i32, i32 }
%struct.request = type { i32*, i64, i64, i32, i32, i32 }

@IDE_DBG_FUNC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"cmd: 0x%x, size: %d\00", align 1
@REQ_IDETAPE_READ = common dso_local global i32 0, align 4
@REQ_IDETAPE_WRITE = common dso_local global i32 0, align 4
@READ = common dso_local global i32 0, align 4
@__GFP_WAIT = common dso_local global i32 0, align 4
@REQ_TYPE_SPECIAL = common dso_local global i32 0, align 4
@IDE_DRV_ERROR_GENERAL = common dso_local global i64 0, align 8
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_5__*, i32, i32)* @idetape_queue_rw_tail to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @idetape_queue_rw_tail(%struct.TYPE_5__* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_4__*, align 8
  %8 = alloca %struct.request*, align 8
  %9 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %10 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 1
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  store %struct.TYPE_4__* %12, %struct.TYPE_4__** %7, align 8
  %13 = load i32, i32* @IDE_DBG_FUNC, align 4
  %14 = load i32, i32* %5, align 4
  %15 = load i32, i32* %6, align 4
  %16 = call i32 @ide_debug_log(i32 %13, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %14, i32 %15)
  %17 = load i32, i32* %5, align 4
  %18 = load i32, i32* @REQ_IDETAPE_READ, align 4
  %19 = icmp ne i32 %17, %18
  br i1 %19, label %20, label %24

20:                                               ; preds = %3
  %21 = load i32, i32* %5, align 4
  %22 = load i32, i32* @REQ_IDETAPE_WRITE, align 4
  %23 = icmp ne i32 %21, %22
  br label %24

24:                                               ; preds = %20, %3
  %25 = phi i1 [ false, %3 ], [ %23, %20 ]
  %26 = zext i1 %25 to i32
  %27 = call i32 @BUG_ON(i32 %26)
  %28 = load i32, i32* %6, align 4
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %37, label %30

30:                                               ; preds = %24
  %31 = load i32, i32* %6, align 4
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = srem i32 %31, %34
  %36 = icmp ne i32 %35, 0
  br label %37

37:                                               ; preds = %30, %24
  %38 = phi i1 [ true, %24 ], [ %36, %30 ]
  %39 = zext i1 %38 to i32
  %40 = call i32 @BUG_ON(i32 %39)
  %41 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = load i32, i32* @READ, align 4
  %45 = load i32, i32* @__GFP_WAIT, align 4
  %46 = call %struct.request* @blk_get_request(i32 %43, i32 %44, i32 %45)
  store %struct.request* %46, %struct.request** %8, align 8
  %47 = load i32, i32* @REQ_TYPE_SPECIAL, align 4
  %48 = load %struct.request*, %struct.request** %8, align 8
  %49 = getelementptr inbounds %struct.request, %struct.request* %48, i32 0, i32 5
  store i32 %47, i32* %49, align 8
  %50 = load i32, i32* %5, align 4
  %51 = load %struct.request*, %struct.request** %8, align 8
  %52 = getelementptr inbounds %struct.request, %struct.request* %51, i32 0, i32 0
  %53 = load i32*, i32** %52, align 8
  %54 = getelementptr inbounds i32, i32* %53, i64 13
  store i32 %50, i32* %54, align 4
  %55 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 4
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.request*, %struct.request** %8, align 8
  %59 = getelementptr inbounds %struct.request, %struct.request* %58, i32 0, i32 4
  store i32 %57, i32* %59, align 4
  %60 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 5
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.request*, %struct.request** %8, align 8
  %64 = getelementptr inbounds %struct.request, %struct.request* %63, i32 0, i32 3
  store i32 %62, i32* %64, align 8
  %65 = load i32, i32* %6, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %82

67:                                               ; preds = %37
  %68 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %69 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = load %struct.request*, %struct.request** %8, align 8
  %72 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 4
  %75 = load i32, i32* %6, align 4
  %76 = load i32, i32* @__GFP_WAIT, align 4
  %77 = call i32 @blk_rq_map_kern(i32 %70, %struct.request* %71, i32 %74, i32 %75, i32 %76)
  store i32 %77, i32* %9, align 4
  %78 = load i32, i32* %9, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %81

80:                                               ; preds = %67
  br label %124

81:                                               ; preds = %67
  br label %82

82:                                               ; preds = %81, %37
  %83 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %84 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %86, i32 0, i32 4
  %88 = load i32, i32* %87, align 4
  %89 = load %struct.request*, %struct.request** %8, align 8
  %90 = call i32 @blk_execute_rq(i32 %85, i32 %88, %struct.request* %89, i32 0)
  %91 = load %struct.request*, %struct.request** %8, align 8
  %92 = getelementptr inbounds %struct.request, %struct.request* %91, i32 0, i32 2
  %93 = load i64, i64* %92, align 8
  %94 = load i32, i32* %6, align 4
  %95 = sext i32 %94 to i64
  %96 = sub nsw i64 %95, %93
  %97 = trunc i64 %96 to i32
  store i32 %97, i32* %6, align 4
  %98 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %99 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %98, i32 0, i32 2
  %100 = load i32, i32* %99, align 4
  %101 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %102 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %101, i32 0, i32 3
  store i32 %100, i32* %102, align 4
  %103 = load i32, i32* %5, align 4
  %104 = load i32, i32* @REQ_IDETAPE_READ, align 4
  %105 = icmp eq i32 %103, %104
  br i1 %105, label %106, label %110

106:                                              ; preds = %82
  %107 = load i32, i32* %6, align 4
  %108 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %109 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %108, i32 0, i32 1
  store i32 %107, i32* %109, align 4
  br label %113

110:                                              ; preds = %82
  %111 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %112 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %111, i32 0, i32 1
  store i32 0, i32* %112, align 4
  br label %113

113:                                              ; preds = %110, %106
  %114 = load i32, i32* %6, align 4
  store i32 %114, i32* %9, align 4
  %115 = load %struct.request*, %struct.request** %8, align 8
  %116 = getelementptr inbounds %struct.request, %struct.request* %115, i32 0, i32 1
  %117 = load i64, i64* %116, align 8
  %118 = load i64, i64* @IDE_DRV_ERROR_GENERAL, align 8
  %119 = icmp eq i64 %117, %118
  br i1 %119, label %120, label %123

120:                                              ; preds = %113
  %121 = load i32, i32* @EIO, align 4
  %122 = sub nsw i32 0, %121
  store i32 %122, i32* %9, align 4
  br label %123

123:                                              ; preds = %120, %113
  br label %124

124:                                              ; preds = %123, %80
  %125 = load %struct.request*, %struct.request** %8, align 8
  %126 = call i32 @blk_put_request(%struct.request* %125)
  %127 = load i32, i32* %9, align 4
  ret i32 %127
}

declare dso_local i32 @ide_debug_log(i32, i8*, i32, i32) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local %struct.request* @blk_get_request(i32, i32, i32) #1

declare dso_local i32 @blk_rq_map_kern(i32, %struct.request*, i32, i32, i32) #1

declare dso_local i32 @blk_execute_rq(i32, i32, %struct.request*, i32) #1

declare dso_local i32 @blk_put_request(%struct.request*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
