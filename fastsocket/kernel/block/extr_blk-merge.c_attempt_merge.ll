; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/block/extr_blk-merge.c_attempt_merge.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/block/extr_blk-merge.c_attempt_merge.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.request_queue = type { i32 }
%struct.request = type { i32, i64, i32*, i32, i32, i32, %struct.TYPE_2__*, i32, i64 }
%struct.TYPE_2__ = type { i32* }

@REQ_DISCARD = common dso_local global i32 0, align 4
@REQ_MIXED_MERGE = common dso_local global i32 0, align 4
@REQ_FAILFAST_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.request_queue*, %struct.request*, %struct.request*)* @attempt_merge to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @attempt_merge(%struct.request_queue* %0, %struct.request* %1, %struct.request* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.request_queue*, align 8
  %6 = alloca %struct.request*, align 8
  %7 = alloca %struct.request*, align 8
  store %struct.request_queue* %0, %struct.request_queue** %5, align 8
  store %struct.request* %1, %struct.request** %6, align 8
  store %struct.request* %2, %struct.request** %7, align 8
  %8 = load %struct.request*, %struct.request** %6, align 8
  %9 = call i32 @rq_mergeable(%struct.request* %8)
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %15

11:                                               ; preds = %3
  %12 = load %struct.request*, %struct.request** %7, align 8
  %13 = call i32 @rq_mergeable(%struct.request* %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %11, %3
  store i32 0, i32* %4, align 4
  br label %167

16:                                               ; preds = %11
  %17 = load %struct.request*, %struct.request** %6, align 8
  %18 = getelementptr inbounds %struct.request, %struct.request* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* @REQ_DISCARD, align 4
  %21 = and i32 %19, %20
  %22 = load %struct.request*, %struct.request** %7, align 8
  %23 = getelementptr inbounds %struct.request, %struct.request* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* @REQ_DISCARD, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %21, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %16
  store i32 0, i32* %4, align 4
  br label %167

29:                                               ; preds = %16
  %30 = load %struct.request*, %struct.request** %6, align 8
  %31 = call i64 @blk_rq_pos(%struct.request* %30)
  %32 = load %struct.request*, %struct.request** %6, align 8
  %33 = call i64 @blk_rq_sectors(%struct.request* %32)
  %34 = add nsw i64 %31, %33
  %35 = load %struct.request*, %struct.request** %7, align 8
  %36 = call i64 @blk_rq_pos(%struct.request* %35)
  %37 = icmp ne i64 %34, %36
  br i1 %37, label %38, label %39

38:                                               ; preds = %29
  store i32 0, i32* %4, align 4
  br label %167

39:                                               ; preds = %29
  %40 = load %struct.request*, %struct.request** %6, align 8
  %41 = call i64 @rq_data_dir(%struct.request* %40)
  %42 = load %struct.request*, %struct.request** %7, align 8
  %43 = call i64 @rq_data_dir(%struct.request* %42)
  %44 = icmp ne i64 %41, %43
  br i1 %44, label %58, label %45

45:                                               ; preds = %39
  %46 = load %struct.request*, %struct.request** %6, align 8
  %47 = getelementptr inbounds %struct.request, %struct.request* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = load %struct.request*, %struct.request** %7, align 8
  %50 = getelementptr inbounds %struct.request, %struct.request* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = icmp ne i64 %48, %51
  br i1 %52, label %58, label %53

53:                                               ; preds = %45
  %54 = load %struct.request*, %struct.request** %7, align 8
  %55 = getelementptr inbounds %struct.request, %struct.request* %54, i32 0, i32 8
  %56 = load i64, i64* %55, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %53, %45, %39
  store i32 0, i32* %4, align 4
  br label %167

59:                                               ; preds = %53
  %60 = load %struct.request*, %struct.request** %6, align 8
  %61 = call i64 @blk_integrity_rq(%struct.request* %60)
  %62 = load %struct.request*, %struct.request** %7, align 8
  %63 = call i64 @blk_integrity_rq(%struct.request* %62)
  %64 = icmp ne i64 %61, %63
  br i1 %64, label %65, label %66

65:                                               ; preds = %59
  store i32 0, i32* %4, align 4
  br label %167

66:                                               ; preds = %59
  %67 = load %struct.request_queue*, %struct.request_queue** %5, align 8
  %68 = load %struct.request*, %struct.request** %6, align 8
  %69 = load %struct.request*, %struct.request** %7, align 8
  %70 = call i32 @ll_merge_requests_fn(%struct.request_queue* %67, %struct.request* %68, %struct.request* %69)
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %73, label %72

72:                                               ; preds = %66
  store i32 0, i32* %4, align 4
  br label %167

73:                                               ; preds = %66
  %74 = load %struct.request*, %struct.request** %6, align 8
  %75 = getelementptr inbounds %struct.request, %struct.request* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = load %struct.request*, %struct.request** %7, align 8
  %78 = getelementptr inbounds %struct.request, %struct.request* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = or i32 %76, %79
  %81 = load i32, i32* @REQ_MIXED_MERGE, align 4
  %82 = and i32 %80, %81
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %96, label %84

84:                                               ; preds = %73
  %85 = load %struct.request*, %struct.request** %6, align 8
  %86 = getelementptr inbounds %struct.request, %struct.request* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = load i32, i32* @REQ_FAILFAST_MASK, align 4
  %89 = and i32 %87, %88
  %90 = load %struct.request*, %struct.request** %7, align 8
  %91 = getelementptr inbounds %struct.request, %struct.request* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = load i32, i32* @REQ_FAILFAST_MASK, align 4
  %94 = and i32 %92, %93
  %95 = icmp ne i32 %89, %94
  br i1 %95, label %96, label %101

96:                                               ; preds = %84, %73
  %97 = load %struct.request*, %struct.request** %6, align 8
  %98 = call i32 @blk_rq_set_mixed_merge(%struct.request* %97)
  %99 = load %struct.request*, %struct.request** %7, align 8
  %100 = call i32 @blk_rq_set_mixed_merge(%struct.request* %99)
  br label %101

101:                                              ; preds = %96, %84
  %102 = load %struct.request*, %struct.request** %6, align 8
  %103 = getelementptr inbounds %struct.request, %struct.request* %102, i32 0, i32 7
  %104 = load i32, i32* %103, align 8
  %105 = load %struct.request*, %struct.request** %7, align 8
  %106 = getelementptr inbounds %struct.request, %struct.request* %105, i32 0, i32 7
  %107 = load i32, i32* %106, align 8
  %108 = call i64 @time_after(i32 %104, i32 %107)
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %116

110:                                              ; preds = %101
  %111 = load %struct.request*, %struct.request** %7, align 8
  %112 = getelementptr inbounds %struct.request, %struct.request* %111, i32 0, i32 7
  %113 = load i32, i32* %112, align 8
  %114 = load %struct.request*, %struct.request** %6, align 8
  %115 = getelementptr inbounds %struct.request, %struct.request* %114, i32 0, i32 7
  store i32 %113, i32* %115, align 8
  br label %116

116:                                              ; preds = %110, %101
  %117 = load %struct.request*, %struct.request** %7, align 8
  %118 = getelementptr inbounds %struct.request, %struct.request* %117, i32 0, i32 2
  %119 = load i32*, i32** %118, align 8
  %120 = load %struct.request*, %struct.request** %6, align 8
  %121 = getelementptr inbounds %struct.request, %struct.request* %120, i32 0, i32 6
  %122 = load %struct.TYPE_2__*, %struct.TYPE_2__** %121, align 8
  %123 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %122, i32 0, i32 0
  store i32* %119, i32** %123, align 8
  %124 = load %struct.request*, %struct.request** %7, align 8
  %125 = getelementptr inbounds %struct.request, %struct.request* %124, i32 0, i32 6
  %126 = load %struct.TYPE_2__*, %struct.TYPE_2__** %125, align 8
  %127 = load %struct.request*, %struct.request** %6, align 8
  %128 = getelementptr inbounds %struct.request, %struct.request* %127, i32 0, i32 6
  store %struct.TYPE_2__* %126, %struct.TYPE_2__** %128, align 8
  %129 = load %struct.request*, %struct.request** %7, align 8
  %130 = call i64 @blk_rq_bytes(%struct.request* %129)
  %131 = load %struct.request*, %struct.request** %6, align 8
  %132 = getelementptr inbounds %struct.request, %struct.request* %131, i32 0, i32 5
  %133 = load i32, i32* %132, align 8
  %134 = sext i32 %133 to i64
  %135 = add nsw i64 %134, %130
  %136 = trunc i64 %135 to i32
  store i32 %136, i32* %132, align 8
  %137 = load %struct.request_queue*, %struct.request_queue** %5, align 8
  %138 = load %struct.request*, %struct.request** %6, align 8
  %139 = load %struct.request*, %struct.request** %7, align 8
  %140 = call i32 @elv_merge_requests(%struct.request_queue* %137, %struct.request* %138, %struct.request* %139)
  %141 = load %struct.request*, %struct.request** %7, align 8
  %142 = call i32 @blk_account_io_merge(%struct.request* %141)
  %143 = load %struct.request*, %struct.request** %6, align 8
  %144 = getelementptr inbounds %struct.request, %struct.request* %143, i32 0, i32 4
  %145 = load i32, i32* %144, align 4
  %146 = load %struct.request*, %struct.request** %7, align 8
  %147 = getelementptr inbounds %struct.request, %struct.request* %146, i32 0, i32 4
  %148 = load i32, i32* %147, align 4
  %149 = call i32 @ioprio_best(i32 %145, i32 %148)
  %150 = load %struct.request*, %struct.request** %6, align 8
  %151 = getelementptr inbounds %struct.request, %struct.request* %150, i32 0, i32 4
  store i32 %149, i32* %151, align 4
  %152 = load %struct.request*, %struct.request** %7, align 8
  %153 = call i64 @blk_rq_cpu_valid(%struct.request* %152)
  %154 = icmp ne i64 %153, 0
  br i1 %154, label %155, label %161

155:                                              ; preds = %116
  %156 = load %struct.request*, %struct.request** %7, align 8
  %157 = getelementptr inbounds %struct.request, %struct.request* %156, i32 0, i32 3
  %158 = load i32, i32* %157, align 8
  %159 = load %struct.request*, %struct.request** %6, align 8
  %160 = getelementptr inbounds %struct.request, %struct.request* %159, i32 0, i32 3
  store i32 %158, i32* %160, align 8
  br label %161

161:                                              ; preds = %155, %116
  %162 = load %struct.request*, %struct.request** %7, align 8
  %163 = getelementptr inbounds %struct.request, %struct.request* %162, i32 0, i32 2
  store i32* null, i32** %163, align 8
  %164 = load %struct.request_queue*, %struct.request_queue** %5, align 8
  %165 = load %struct.request*, %struct.request** %7, align 8
  %166 = call i32 @__blk_put_request(%struct.request_queue* %164, %struct.request* %165)
  store i32 1, i32* %4, align 4
  br label %167

167:                                              ; preds = %161, %72, %65, %58, %38, %28, %15
  %168 = load i32, i32* %4, align 4
  ret i32 %168
}

declare dso_local i32 @rq_mergeable(%struct.request*) #1

declare dso_local i64 @blk_rq_pos(%struct.request*) #1

declare dso_local i64 @blk_rq_sectors(%struct.request*) #1

declare dso_local i64 @rq_data_dir(%struct.request*) #1

declare dso_local i64 @blk_integrity_rq(%struct.request*) #1

declare dso_local i32 @ll_merge_requests_fn(%struct.request_queue*, %struct.request*, %struct.request*) #1

declare dso_local i32 @blk_rq_set_mixed_merge(%struct.request*) #1

declare dso_local i64 @time_after(i32, i32) #1

declare dso_local i64 @blk_rq_bytes(%struct.request*) #1

declare dso_local i32 @elv_merge_requests(%struct.request_queue*, %struct.request*, %struct.request*) #1

declare dso_local i32 @blk_account_io_merge(%struct.request*) #1

declare dso_local i32 @ioprio_best(i32, i32) #1

declare dso_local i64 @blk_rq_cpu_valid(%struct.request*) #1

declare dso_local i32 @__blk_put_request(%struct.request_queue*, %struct.request*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
