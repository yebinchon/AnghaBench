; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/block/extr_cfq-iosched.c_cfq_update_idle_window.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/block/extr_cfq-iosched.c_cfq_update_idle_window.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cfq_data = type { i64 }
%struct.cfq_queue = type { i32*, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.cfq_io_context = type { i64, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }

@REQ_NOIDLE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"idle=%d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cfq_data*, %struct.cfq_queue*, %struct.cfq_io_context*)* @cfq_update_idle_window to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cfq_update_idle_window(%struct.cfq_data* %0, %struct.cfq_queue* %1, %struct.cfq_io_context* %2) #0 {
  %4 = alloca %struct.cfq_data*, align 8
  %5 = alloca %struct.cfq_queue*, align 8
  %6 = alloca %struct.cfq_io_context*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.cfq_data* %0, %struct.cfq_data** %4, align 8
  store %struct.cfq_queue* %1, %struct.cfq_queue** %5, align 8
  store %struct.cfq_io_context* %2, %struct.cfq_io_context** %6, align 8
  %9 = load %struct.cfq_queue*, %struct.cfq_queue** %5, align 8
  %10 = call i32 @cfq_cfqq_sync(%struct.cfq_queue* %9)
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %16

12:                                               ; preds = %3
  %13 = load %struct.cfq_queue*, %struct.cfq_queue** %5, align 8
  %14 = call i64 @cfq_class_idle(%struct.cfq_queue* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %12, %3
  br label %108

17:                                               ; preds = %12
  %18 = load %struct.cfq_queue*, %struct.cfq_queue** %5, align 8
  %19 = call i32 @cfq_cfqq_idle_window(%struct.cfq_queue* %18)
  store i32 %19, i32* %7, align 4
  store i32 %19, i32* %8, align 4
  %20 = load %struct.cfq_queue*, %struct.cfq_queue** %5, align 8
  %21 = getelementptr inbounds %struct.cfq_queue, %struct.cfq_queue* %20, i32 0, i32 0
  %22 = load i32*, i32** %21, align 8
  %23 = getelementptr inbounds i32, i32* %22, i64 0
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.cfq_queue*, %struct.cfq_queue** %5, align 8
  %26 = getelementptr inbounds %struct.cfq_queue, %struct.cfq_queue* %25, i32 0, i32 0
  %27 = load i32*, i32** %26, align 8
  %28 = getelementptr inbounds i32, i32* %27, i64 1
  %29 = load i32, i32* %28, align 4
  %30 = add nsw i32 %24, %29
  %31 = icmp sge i32 %30, 4
  br i1 %31, label %32, label %35

32:                                               ; preds = %17
  %33 = load %struct.cfq_queue*, %struct.cfq_queue** %5, align 8
  %34 = call i32 @cfq_mark_cfqq_deep(%struct.cfq_queue* %33)
  br label %35

35:                                               ; preds = %32, %17
  %36 = load %struct.cfq_queue*, %struct.cfq_queue** %5, align 8
  %37 = getelementptr inbounds %struct.cfq_queue, %struct.cfq_queue* %36, i32 0, i32 1
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** %37, align 8
  %39 = icmp ne %struct.TYPE_3__* %38, null
  br i1 %39, label %40, label %50

40:                                               ; preds = %35
  %41 = load %struct.cfq_queue*, %struct.cfq_queue** %5, align 8
  %42 = getelementptr inbounds %struct.cfq_queue, %struct.cfq_queue* %41, i32 0, i32 1
  %43 = load %struct.TYPE_3__*, %struct.TYPE_3__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* @REQ_NOIDLE, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %40
  store i32 0, i32* %8, align 4
  br label %90

50:                                               ; preds = %40, %35
  %51 = load %struct.cfq_io_context*, %struct.cfq_io_context** %6, align 8
  %52 = getelementptr inbounds %struct.cfq_io_context, %struct.cfq_io_context* %51, i32 0, i32 2
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 0
  %55 = call i32 @atomic_read(i32* %54)
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %70

57:                                               ; preds = %50
  %58 = load %struct.cfq_data*, %struct.cfq_data** %4, align 8
  %59 = getelementptr inbounds %struct.cfq_data, %struct.cfq_data* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %70

62:                                               ; preds = %57
  %63 = load %struct.cfq_queue*, %struct.cfq_queue** %5, align 8
  %64 = call i32 @cfq_cfqq_deep(%struct.cfq_queue* %63)
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %71, label %66

66:                                               ; preds = %62
  %67 = load %struct.cfq_queue*, %struct.cfq_queue** %5, align 8
  %68 = call i64 @CFQQ_SEEKY(%struct.cfq_queue* %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %71

70:                                               ; preds = %66, %57, %50
  store i32 0, i32* %8, align 4
  br label %89

71:                                               ; preds = %66, %62
  %72 = load %struct.cfq_io_context*, %struct.cfq_io_context** %6, align 8
  %73 = getelementptr inbounds %struct.cfq_io_context, %struct.cfq_io_context* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 8
  %75 = call i64 @sample_valid(i32 %74)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %88

77:                                               ; preds = %71
  %78 = load %struct.cfq_io_context*, %struct.cfq_io_context** %6, align 8
  %79 = getelementptr inbounds %struct.cfq_io_context, %struct.cfq_io_context* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = load %struct.cfq_data*, %struct.cfq_data** %4, align 8
  %82 = getelementptr inbounds %struct.cfq_data, %struct.cfq_data* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = icmp sgt i64 %80, %83
  br i1 %84, label %85, label %86

85:                                               ; preds = %77
  store i32 0, i32* %8, align 4
  br label %87

86:                                               ; preds = %77
  store i32 1, i32* %8, align 4
  br label %87

87:                                               ; preds = %86, %85
  br label %88

88:                                               ; preds = %87, %71
  br label %89

89:                                               ; preds = %88, %70
  br label %90

90:                                               ; preds = %89, %49
  %91 = load i32, i32* %7, align 4
  %92 = load i32, i32* %8, align 4
  %93 = icmp ne i32 %91, %92
  br i1 %93, label %94, label %108

94:                                               ; preds = %90
  %95 = load %struct.cfq_data*, %struct.cfq_data** %4, align 8
  %96 = load %struct.cfq_queue*, %struct.cfq_queue** %5, align 8
  %97 = load i32, i32* %8, align 4
  %98 = call i32 @cfq_log_cfqq(%struct.cfq_data* %95, %struct.cfq_queue* %96, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 %97)
  %99 = load i32, i32* %8, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %104

101:                                              ; preds = %94
  %102 = load %struct.cfq_queue*, %struct.cfq_queue** %5, align 8
  %103 = call i32 @cfq_mark_cfqq_idle_window(%struct.cfq_queue* %102)
  br label %107

104:                                              ; preds = %94
  %105 = load %struct.cfq_queue*, %struct.cfq_queue** %5, align 8
  %106 = call i32 @cfq_clear_cfqq_idle_window(%struct.cfq_queue* %105)
  br label %107

107:                                              ; preds = %104, %101
  br label %108

108:                                              ; preds = %16, %107, %90
  ret void
}

declare dso_local i32 @cfq_cfqq_sync(%struct.cfq_queue*) #1

declare dso_local i64 @cfq_class_idle(%struct.cfq_queue*) #1

declare dso_local i32 @cfq_cfqq_idle_window(%struct.cfq_queue*) #1

declare dso_local i32 @cfq_mark_cfqq_deep(%struct.cfq_queue*) #1

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i32 @cfq_cfqq_deep(%struct.cfq_queue*) #1

declare dso_local i64 @CFQQ_SEEKY(%struct.cfq_queue*) #1

declare dso_local i64 @sample_valid(i32) #1

declare dso_local i32 @cfq_log_cfqq(%struct.cfq_data*, %struct.cfq_queue*, i8*, i32) #1

declare dso_local i32 @cfq_mark_cfqq_idle_window(%struct.cfq_queue*) #1

declare dso_local i32 @cfq_clear_cfqq_idle_window(%struct.cfq_queue*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
