; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/block/extr_deadline-iosched.c_deadline_dispatch_requests.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/block/extr_deadline-iosched.c_deadline_dispatch_requests.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.request_queue = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.deadline_data* }
%struct.deadline_data = type { i64, i64, i64, %struct.request**, %struct.TYPE_4__*, i64, i32* }
%struct.request = type { i32 }
%struct.TYPE_4__ = type { i32 }

@READ = common dso_local global i64 0, align 8
@WRITE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.request_queue*, i32)* @deadline_dispatch_requests to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @deadline_dispatch_requests(%struct.request_queue* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.request_queue*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.deadline_data*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.request*, align 8
  %10 = alloca i32, align 4
  store %struct.request_queue* %0, %struct.request_queue** %4, align 8
  store i32 %1, i32* %5, align 4
  %11 = load %struct.request_queue*, %struct.request_queue** %4, align 8
  %12 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %11, i32 0, i32 0
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load %struct.deadline_data*, %struct.deadline_data** %14, align 8
  store %struct.deadline_data* %15, %struct.deadline_data** %6, align 8
  %16 = load %struct.deadline_data*, %struct.deadline_data** %6, align 8
  %17 = getelementptr inbounds %struct.deadline_data, %struct.deadline_data* %16, i32 0, i32 4
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %19 = load i64, i64* @READ, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i64 %19
  %21 = call i32 @list_empty(%struct.TYPE_4__* %20)
  %22 = icmp ne i32 %21, 0
  %23 = xor i1 %22, true
  %24 = zext i1 %23 to i32
  store i32 %24, i32* %7, align 4
  %25 = load %struct.deadline_data*, %struct.deadline_data** %6, align 8
  %26 = getelementptr inbounds %struct.deadline_data, %struct.deadline_data* %25, i32 0, i32 4
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %26, align 8
  %28 = load i64, i64* @WRITE, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i64 %28
  %30 = call i32 @list_empty(%struct.TYPE_4__* %29)
  %31 = icmp ne i32 %30, 0
  %32 = xor i1 %31, true
  %33 = zext i1 %32 to i32
  store i32 %33, i32* %8, align 4
  %34 = load %struct.deadline_data*, %struct.deadline_data** %6, align 8
  %35 = getelementptr inbounds %struct.deadline_data, %struct.deadline_data* %34, i32 0, i32 3
  %36 = load %struct.request**, %struct.request*** %35, align 8
  %37 = load i64, i64* @WRITE, align 8
  %38 = getelementptr inbounds %struct.request*, %struct.request** %36, i64 %37
  %39 = load %struct.request*, %struct.request** %38, align 8
  %40 = icmp ne %struct.request* %39, null
  br i1 %40, label %41, label %48

41:                                               ; preds = %2
  %42 = load %struct.deadline_data*, %struct.deadline_data** %6, align 8
  %43 = getelementptr inbounds %struct.deadline_data, %struct.deadline_data* %42, i32 0, i32 3
  %44 = load %struct.request**, %struct.request*** %43, align 8
  %45 = load i64, i64* @WRITE, align 8
  %46 = getelementptr inbounds %struct.request*, %struct.request** %44, i64 %45
  %47 = load %struct.request*, %struct.request** %46, align 8
  store %struct.request* %47, %struct.request** %9, align 8
  br label %55

48:                                               ; preds = %2
  %49 = load %struct.deadline_data*, %struct.deadline_data** %6, align 8
  %50 = getelementptr inbounds %struct.deadline_data, %struct.deadline_data* %49, i32 0, i32 3
  %51 = load %struct.request**, %struct.request*** %50, align 8
  %52 = load i64, i64* @READ, align 8
  %53 = getelementptr inbounds %struct.request*, %struct.request** %51, i64 %52
  %54 = load %struct.request*, %struct.request** %53, align 8
  store %struct.request* %54, %struct.request** %9, align 8
  br label %55

55:                                               ; preds = %48, %41
  %56 = load %struct.request*, %struct.request** %9, align 8
  %57 = icmp ne %struct.request* %56, null
  br i1 %57, label %58, label %67

58:                                               ; preds = %55
  %59 = load %struct.deadline_data*, %struct.deadline_data** %6, align 8
  %60 = getelementptr inbounds %struct.deadline_data, %struct.deadline_data* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = load %struct.deadline_data*, %struct.deadline_data** %6, align 8
  %63 = getelementptr inbounds %struct.deadline_data, %struct.deadline_data* %62, i32 0, i32 1
  %64 = load i64, i64* %63, align 8
  %65 = icmp slt i64 %61, %64
  br i1 %65, label %66, label %67

66:                                               ; preds = %58
  br label %145

67:                                               ; preds = %58, %55
  %68 = load i32, i32* %7, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %93

70:                                               ; preds = %67
  %71 = load %struct.deadline_data*, %struct.deadline_data** %6, align 8
  %72 = getelementptr inbounds %struct.deadline_data, %struct.deadline_data* %71, i32 0, i32 6
  %73 = load i32*, i32** %72, align 8
  %74 = load i64, i64* @READ, align 8
  %75 = getelementptr inbounds i32, i32* %73, i64 %74
  %76 = call i32 @RB_EMPTY_ROOT(i32* %75)
  %77 = call i32 @BUG_ON(i32 %76)
  %78 = load i32, i32* %8, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %90

80:                                               ; preds = %70
  %81 = load %struct.deadline_data*, %struct.deadline_data** %6, align 8
  %82 = getelementptr inbounds %struct.deadline_data, %struct.deadline_data* %81, i32 0, i32 5
  %83 = load i64, i64* %82, align 8
  %84 = add nsw i64 %83, 1
  store i64 %84, i64* %82, align 8
  %85 = load %struct.deadline_data*, %struct.deadline_data** %6, align 8
  %86 = getelementptr inbounds %struct.deadline_data, %struct.deadline_data* %85, i32 0, i32 2
  %87 = load i64, i64* %86, align 8
  %88 = icmp sge i64 %83, %87
  br i1 %88, label %89, label %90

89:                                               ; preds = %80
  br label %97

90:                                               ; preds = %80, %70
  %91 = load i64, i64* @READ, align 8
  %92 = trunc i64 %91 to i32
  store i32 %92, i32* %10, align 4
  br label %110

93:                                               ; preds = %67
  %94 = load i32, i32* %8, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %109

96:                                               ; preds = %93
  br label %97

97:                                               ; preds = %96, %89
  %98 = load %struct.deadline_data*, %struct.deadline_data** %6, align 8
  %99 = getelementptr inbounds %struct.deadline_data, %struct.deadline_data* %98, i32 0, i32 6
  %100 = load i32*, i32** %99, align 8
  %101 = load i64, i64* @WRITE, align 8
  %102 = getelementptr inbounds i32, i32* %100, i64 %101
  %103 = call i32 @RB_EMPTY_ROOT(i32* %102)
  %104 = call i32 @BUG_ON(i32 %103)
  %105 = load %struct.deadline_data*, %struct.deadline_data** %6, align 8
  %106 = getelementptr inbounds %struct.deadline_data, %struct.deadline_data* %105, i32 0, i32 5
  store i64 0, i64* %106, align 8
  %107 = load i64, i64* @WRITE, align 8
  %108 = trunc i64 %107 to i32
  store i32 %108, i32* %10, align 4
  br label %110

109:                                              ; preds = %93
  store i32 0, i32* %3, align 4
  br label %153

110:                                              ; preds = %97, %90
  %111 = load %struct.deadline_data*, %struct.deadline_data** %6, align 8
  %112 = load i32, i32* %10, align 4
  %113 = call i64 @deadline_check_fifo(%struct.deadline_data* %111, i32 %112)
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %124, label %115

115:                                              ; preds = %110
  %116 = load %struct.deadline_data*, %struct.deadline_data** %6, align 8
  %117 = getelementptr inbounds %struct.deadline_data, %struct.deadline_data* %116, i32 0, i32 3
  %118 = load %struct.request**, %struct.request*** %117, align 8
  %119 = load i32, i32* %10, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds %struct.request*, %struct.request** %118, i64 %120
  %122 = load %struct.request*, %struct.request** %121, align 8
  %123 = icmp ne %struct.request* %122, null
  br i1 %123, label %134, label %124

124:                                              ; preds = %115, %110
  %125 = load %struct.deadline_data*, %struct.deadline_data** %6, align 8
  %126 = getelementptr inbounds %struct.deadline_data, %struct.deadline_data* %125, i32 0, i32 4
  %127 = load %struct.TYPE_4__*, %struct.TYPE_4__** %126, align 8
  %128 = load i32, i32* %10, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %127, i64 %129
  %131 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 4
  %133 = call %struct.request* @rq_entry_fifo(i32 %132)
  store %struct.request* %133, %struct.request** %9, align 8
  br label %142

134:                                              ; preds = %115
  %135 = load %struct.deadline_data*, %struct.deadline_data** %6, align 8
  %136 = getelementptr inbounds %struct.deadline_data, %struct.deadline_data* %135, i32 0, i32 3
  %137 = load %struct.request**, %struct.request*** %136, align 8
  %138 = load i32, i32* %10, align 4
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds %struct.request*, %struct.request** %137, i64 %139
  %141 = load %struct.request*, %struct.request** %140, align 8
  store %struct.request* %141, %struct.request** %9, align 8
  br label %142

142:                                              ; preds = %134, %124
  %143 = load %struct.deadline_data*, %struct.deadline_data** %6, align 8
  %144 = getelementptr inbounds %struct.deadline_data, %struct.deadline_data* %143, i32 0, i32 0
  store i64 0, i64* %144, align 8
  br label %145

145:                                              ; preds = %142, %66
  %146 = load %struct.deadline_data*, %struct.deadline_data** %6, align 8
  %147 = getelementptr inbounds %struct.deadline_data, %struct.deadline_data* %146, i32 0, i32 0
  %148 = load i64, i64* %147, align 8
  %149 = add nsw i64 %148, 1
  store i64 %149, i64* %147, align 8
  %150 = load %struct.deadline_data*, %struct.deadline_data** %6, align 8
  %151 = load %struct.request*, %struct.request** %9, align 8
  %152 = call i32 @deadline_move_request(%struct.deadline_data* %150, %struct.request* %151)
  store i32 1, i32* %3, align 4
  br label %153

153:                                              ; preds = %145, %109
  %154 = load i32, i32* %3, align 4
  ret i32 %154
}

declare dso_local i32 @list_empty(%struct.TYPE_4__*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @RB_EMPTY_ROOT(i32*) #1

declare dso_local i64 @deadline_check_fifo(%struct.deadline_data*, i32) #1

declare dso_local %struct.request* @rq_entry_fifo(i32) #1

declare dso_local i32 @deadline_move_request(%struct.deadline_data*, %struct.request*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
