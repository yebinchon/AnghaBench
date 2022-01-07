; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/block/extr_cfq-iosched.c_cfq_set_request.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/block/extr_cfq-iosched.c_cfq_set_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.request_queue = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.cfq_data* }
%struct.cfq_data = type { %struct.cfq_queue }
%struct.cfq_queue = type { i32, i32, i32, i32*, i64 }
%struct.request = type { %struct.cfq_queue** }
%struct.cfq_io_context = type { i32, i32, i32, i32*, i64 }

@__GFP_WAIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"breaking apart cfqq\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"set_request fail\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.request_queue*, %struct.request*, i32)* @cfq_set_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cfq_set_request(%struct.request_queue* %0, %struct.request* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.request_queue*, align 8
  %6 = alloca %struct.request*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.cfq_data*, align 8
  %9 = alloca %struct.cfq_io_context*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.cfq_queue*, align 8
  %13 = alloca i64, align 8
  store %struct.request_queue* %0, %struct.request_queue** %5, align 8
  store %struct.request* %1, %struct.request** %6, align 8
  store i32 %2, i32* %7, align 4
  %14 = load %struct.request_queue*, %struct.request_queue** %5, align 8
  %15 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %14, i32 0, i32 1
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load %struct.cfq_data*, %struct.cfq_data** %17, align 8
  store %struct.cfq_data* %18, %struct.cfq_data** %8, align 8
  %19 = load %struct.request*, %struct.request** %6, align 8
  %20 = call i32 @rq_data_dir(%struct.request* %19)
  store i32 %20, i32* %10, align 4
  %21 = load %struct.request*, %struct.request** %6, align 8
  %22 = call i32 @rq_is_sync(%struct.request* %21)
  store i32 %22, i32* %11, align 4
  %23 = load i32, i32* %7, align 4
  %24 = load i32, i32* @__GFP_WAIT, align 4
  %25 = and i32 %23, %24
  %26 = call i32 @might_sleep_if(i32 %25)
  %27 = load %struct.cfq_data*, %struct.cfq_data** %8, align 8
  %28 = load i32, i32* %7, align 4
  %29 = call %struct.cfq_queue* @cfq_get_io_context(%struct.cfq_data* %27, i32 %28)
  %30 = bitcast %struct.cfq_queue* %29 to %struct.cfq_io_context*
  store %struct.cfq_io_context* %30, %struct.cfq_io_context** %9, align 8
  %31 = load %struct.request_queue*, %struct.request_queue** %5, align 8
  %32 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = load i64, i64* %13, align 8
  %35 = call i32 @spin_lock_irqsave(i32 %33, i64 %34)
  %36 = load %struct.cfq_io_context*, %struct.cfq_io_context** %9, align 8
  %37 = icmp ne %struct.cfq_io_context* %36, null
  br i1 %37, label %39, label %38

38:                                               ; preds = %3
  br label %134

39:                                               ; preds = %3
  br label %40

40:                                               ; preds = %83, %39
  %41 = load %struct.cfq_io_context*, %struct.cfq_io_context** %9, align 8
  %42 = bitcast %struct.cfq_io_context* %41 to %struct.cfq_queue*
  %43 = load i32, i32* %11, align 4
  %44 = call %struct.cfq_queue* @cic_to_cfqq(%struct.cfq_queue* %42, i32 %43)
  store %struct.cfq_queue* %44, %struct.cfq_queue** %12, align 8
  %45 = load %struct.cfq_queue*, %struct.cfq_queue** %12, align 8
  %46 = icmp ne %struct.cfq_queue* %45, null
  br i1 %46, label %47, label %52

47:                                               ; preds = %40
  %48 = load %struct.cfq_queue*, %struct.cfq_queue** %12, align 8
  %49 = load %struct.cfq_data*, %struct.cfq_data** %8, align 8
  %50 = getelementptr inbounds %struct.cfq_data, %struct.cfq_data* %49, i32 0, i32 0
  %51 = icmp eq %struct.cfq_queue* %48, %50
  br i1 %51, label %52, label %65

52:                                               ; preds = %47, %40
  %53 = load %struct.cfq_data*, %struct.cfq_data** %8, align 8
  %54 = load i32, i32* %11, align 4
  %55 = load %struct.cfq_io_context*, %struct.cfq_io_context** %9, align 8
  %56 = getelementptr inbounds %struct.cfq_io_context, %struct.cfq_io_context* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = load i32, i32* %7, align 4
  %59 = call %struct.cfq_queue* @cfq_get_queue(%struct.cfq_data* %53, i32 %54, i32 %57, i32 %58)
  store %struct.cfq_queue* %59, %struct.cfq_queue** %12, align 8
  %60 = load %struct.cfq_io_context*, %struct.cfq_io_context** %9, align 8
  %61 = bitcast %struct.cfq_io_context* %60 to %struct.cfq_queue*
  %62 = load %struct.cfq_queue*, %struct.cfq_queue** %12, align 8
  %63 = load i32, i32* %11, align 4
  %64 = call i32 @cic_set_cfqq(%struct.cfq_queue* %61, %struct.cfq_queue* %62, i32 %63)
  br label %97

65:                                               ; preds = %47
  %66 = load %struct.cfq_queue*, %struct.cfq_queue** %12, align 8
  %67 = call i64 @cfq_cfqq_coop(%struct.cfq_queue* %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %85

69:                                               ; preds = %65
  %70 = load %struct.cfq_queue*, %struct.cfq_queue** %12, align 8
  %71 = call i64 @cfq_cfqq_split_coop(%struct.cfq_queue* %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %85

73:                                               ; preds = %69
  %74 = load %struct.cfq_data*, %struct.cfq_data** %8, align 8
  %75 = load %struct.cfq_queue*, %struct.cfq_queue** %12, align 8
  %76 = call i32 @cfq_log_cfqq(%struct.cfq_data* %74, %struct.cfq_queue* %75, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %77 = load %struct.cfq_io_context*, %struct.cfq_io_context** %9, align 8
  %78 = bitcast %struct.cfq_io_context* %77 to %struct.cfq_queue*
  %79 = load %struct.cfq_queue*, %struct.cfq_queue** %12, align 8
  %80 = call %struct.cfq_queue* @split_cfqq(%struct.cfq_queue* %78, %struct.cfq_queue* %79)
  store %struct.cfq_queue* %80, %struct.cfq_queue** %12, align 8
  %81 = load %struct.cfq_queue*, %struct.cfq_queue** %12, align 8
  %82 = icmp ne %struct.cfq_queue* %81, null
  br i1 %82, label %84, label %83

83:                                               ; preds = %73
  br label %40

84:                                               ; preds = %73
  br label %85

85:                                               ; preds = %84, %69, %65
  %86 = load %struct.cfq_queue*, %struct.cfq_queue** %12, align 8
  %87 = getelementptr inbounds %struct.cfq_queue, %struct.cfq_queue* %86, i32 0, i32 4
  %88 = load i64, i64* %87, align 8
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %96

90:                                               ; preds = %85
  %91 = load %struct.cfq_data*, %struct.cfq_data** %8, align 8
  %92 = load %struct.cfq_io_context*, %struct.cfq_io_context** %9, align 8
  %93 = bitcast %struct.cfq_io_context* %92 to %struct.cfq_queue*
  %94 = load %struct.cfq_queue*, %struct.cfq_queue** %12, align 8
  %95 = call %struct.cfq_queue* @cfq_merge_cfqqs(%struct.cfq_data* %91, %struct.cfq_queue* %93, %struct.cfq_queue* %94)
  store %struct.cfq_queue* %95, %struct.cfq_queue** %12, align 8
  br label %96

96:                                               ; preds = %90, %85
  br label %97

97:                                               ; preds = %96, %52
  %98 = load %struct.cfq_queue*, %struct.cfq_queue** %12, align 8
  %99 = getelementptr inbounds %struct.cfq_queue, %struct.cfq_queue* %98, i32 0, i32 3
  %100 = load i32*, i32** %99, align 8
  %101 = load i32, i32* %10, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds i32, i32* %100, i64 %102
  %104 = load i32, i32* %103, align 4
  %105 = add nsw i32 %104, 1
  store i32 %105, i32* %103, align 4
  %106 = load %struct.cfq_queue*, %struct.cfq_queue** %12, align 8
  %107 = getelementptr inbounds %struct.cfq_queue, %struct.cfq_queue* %106, i32 0, i32 2
  %108 = load i32, i32* %107, align 8
  %109 = add nsw i32 %108, 1
  store i32 %109, i32* %107, align 8
  %110 = load %struct.cfq_io_context*, %struct.cfq_io_context** %9, align 8
  %111 = bitcast %struct.cfq_io_context* %110 to %struct.cfq_queue*
  %112 = load %struct.request*, %struct.request** %6, align 8
  %113 = getelementptr inbounds %struct.request, %struct.request* %112, i32 0, i32 0
  %114 = load %struct.cfq_queue**, %struct.cfq_queue*** %113, align 8
  %115 = getelementptr inbounds %struct.cfq_queue*, %struct.cfq_queue** %114, i64 0
  store %struct.cfq_queue* %111, %struct.cfq_queue** %115, align 8
  %116 = load %struct.cfq_queue*, %struct.cfq_queue** %12, align 8
  %117 = load %struct.request*, %struct.request** %6, align 8
  %118 = getelementptr inbounds %struct.request, %struct.request* %117, i32 0, i32 0
  %119 = load %struct.cfq_queue**, %struct.cfq_queue*** %118, align 8
  %120 = getelementptr inbounds %struct.cfq_queue*, %struct.cfq_queue** %119, i64 1
  store %struct.cfq_queue* %116, %struct.cfq_queue** %120, align 8
  %121 = load %struct.cfq_queue*, %struct.cfq_queue** %12, align 8
  %122 = getelementptr inbounds %struct.cfq_queue, %struct.cfq_queue* %121, i32 0, i32 1
  %123 = load i32, i32* %122, align 4
  %124 = call %struct.cfq_queue* @cfq_ref_get_cfqg(i32 %123)
  %125 = load %struct.request*, %struct.request** %6, align 8
  %126 = getelementptr inbounds %struct.request, %struct.request* %125, i32 0, i32 0
  %127 = load %struct.cfq_queue**, %struct.cfq_queue*** %126, align 8
  %128 = getelementptr inbounds %struct.cfq_queue*, %struct.cfq_queue** %127, i64 2
  store %struct.cfq_queue* %124, %struct.cfq_queue** %128, align 8
  %129 = load %struct.request_queue*, %struct.request_queue** %5, align 8
  %130 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 8
  %132 = load i64, i64* %13, align 8
  %133 = call i32 @spin_unlock_irqrestore(i32 %131, i64 %132)
  store i32 0, i32* %4, align 4
  br label %152

134:                                              ; preds = %38
  %135 = load %struct.cfq_io_context*, %struct.cfq_io_context** %9, align 8
  %136 = icmp ne %struct.cfq_io_context* %135, null
  br i1 %136, label %137, label %142

137:                                              ; preds = %134
  %138 = load %struct.cfq_io_context*, %struct.cfq_io_context** %9, align 8
  %139 = getelementptr inbounds %struct.cfq_io_context, %struct.cfq_io_context* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 8
  %141 = call i32 @put_io_context(i32 %140)
  br label %142

142:                                              ; preds = %137, %134
  %143 = load %struct.cfq_data*, %struct.cfq_data** %8, align 8
  %144 = call i32 @cfq_schedule_dispatch(%struct.cfq_data* %143)
  %145 = load %struct.request_queue*, %struct.request_queue** %5, align 8
  %146 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 8
  %148 = load i64, i64* %13, align 8
  %149 = call i32 @spin_unlock_irqrestore(i32 %147, i64 %148)
  %150 = load %struct.cfq_data*, %struct.cfq_data** %8, align 8
  %151 = call i32 @cfq_log(%struct.cfq_data* %150, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  store i32 1, i32* %4, align 4
  br label %152

152:                                              ; preds = %142, %97
  %153 = load i32, i32* %4, align 4
  ret i32 %153
}

declare dso_local i32 @rq_data_dir(%struct.request*) #1

declare dso_local i32 @rq_is_sync(%struct.request*) #1

declare dso_local i32 @might_sleep_if(i32) #1

declare dso_local %struct.cfq_queue* @cfq_get_io_context(%struct.cfq_data*, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32, i64) #1

declare dso_local %struct.cfq_queue* @cic_to_cfqq(%struct.cfq_queue*, i32) #1

declare dso_local %struct.cfq_queue* @cfq_get_queue(%struct.cfq_data*, i32, i32, i32) #1

declare dso_local i32 @cic_set_cfqq(%struct.cfq_queue*, %struct.cfq_queue*, i32) #1

declare dso_local i64 @cfq_cfqq_coop(%struct.cfq_queue*) #1

declare dso_local i64 @cfq_cfqq_split_coop(%struct.cfq_queue*) #1

declare dso_local i32 @cfq_log_cfqq(%struct.cfq_data*, %struct.cfq_queue*, i8*) #1

declare dso_local %struct.cfq_queue* @split_cfqq(%struct.cfq_queue*, %struct.cfq_queue*) #1

declare dso_local %struct.cfq_queue* @cfq_merge_cfqqs(%struct.cfq_data*, %struct.cfq_queue*, %struct.cfq_queue*) #1

declare dso_local %struct.cfq_queue* @cfq_ref_get_cfqg(i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32, i64) #1

declare dso_local i32 @put_io_context(i32) #1

declare dso_local i32 @cfq_schedule_dispatch(%struct.cfq_data*) #1

declare dso_local i32 @cfq_log(%struct.cfq_data*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
