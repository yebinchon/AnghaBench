; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/block/extr_blk-map.c_blk_rq_map_kern.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/block/extr_blk-map.c_blk_rq_map_kern.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.request_queue = type { i32 }
%struct.request = type { i32*, i32, i32 }
%struct.bio = type { i32 }

@READ = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@WRITE = common dso_local global i64 0, align 8
@BIO_RW = common dso_local global i32 0, align 4
@REQ_COPY_USER = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @blk_rq_map_kern(%struct.request_queue* %0, %struct.request* %1, i8* %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.request_queue*, align 8
  %8 = alloca %struct.request*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.bio*, align 8
  %15 = alloca i32, align 4
  store %struct.request_queue* %0, %struct.request_queue** %7, align 8
  store %struct.request* %1, %struct.request** %8, align 8
  store i8* %2, i8** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %16 = load %struct.request*, %struct.request** %8, align 8
  %17 = call i64 @rq_data_dir(%struct.request* %16)
  %18 = load i64, i64* @READ, align 8
  %19 = icmp eq i64 %17, %18
  %20 = zext i1 %19 to i32
  store i32 %20, i32* %12, align 4
  store i32 0, i32* %13, align 4
  %21 = load i32, i32* %10, align 4
  %22 = load %struct.request_queue*, %struct.request_queue** %7, align 8
  %23 = call i32 @queue_max_hw_sectors(%struct.request_queue* %22)
  %24 = shl i32 %23, 9
  %25 = icmp ugt i32 %21, %24
  br i1 %25, label %26, label %29

26:                                               ; preds = %5
  %27 = load i32, i32* @EINVAL, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %6, align 4
  br label %113

29:                                               ; preds = %5
  %30 = load i32, i32* %10, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %29
  %33 = load i8*, i8** %9, align 8
  %34 = icmp ne i8* %33, null
  br i1 %34, label %38, label %35

35:                                               ; preds = %32, %29
  %36 = load i32, i32* @EINVAL, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %6, align 4
  br label %113

38:                                               ; preds = %32
  %39 = load %struct.request_queue*, %struct.request_queue** %7, align 8
  %40 = load i8*, i8** %9, align 8
  %41 = load i32, i32* %10, align 4
  %42 = call i32 @blk_rq_aligned(%struct.request_queue* %39, i8* %40, i32 %41)
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %48

44:                                               ; preds = %38
  %45 = load i8*, i8** %9, align 8
  %46 = call i64 @object_is_on_stack(i8* %45)
  %47 = icmp ne i64 %46, 0
  br label %48

48:                                               ; preds = %44, %38
  %49 = phi i1 [ true, %38 ], [ %47, %44 ]
  %50 = zext i1 %49 to i32
  store i32 %50, i32* %13, align 4
  %51 = load i32, i32* %13, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %60

53:                                               ; preds = %48
  %54 = load %struct.request_queue*, %struct.request_queue** %7, align 8
  %55 = load i8*, i8** %9, align 8
  %56 = load i32, i32* %10, align 4
  %57 = load i32, i32* %11, align 4
  %58 = load i32, i32* %12, align 4
  %59 = call %struct.bio* @bio_copy_kern(%struct.request_queue* %54, i8* %55, i32 %56, i32 %57, i32 %58)
  store %struct.bio* %59, %struct.bio** %14, align 8
  br label %66

60:                                               ; preds = %48
  %61 = load %struct.request_queue*, %struct.request_queue** %7, align 8
  %62 = load i8*, i8** %9, align 8
  %63 = load i32, i32* %10, align 4
  %64 = load i32, i32* %11, align 4
  %65 = call %struct.bio* @bio_map_kern(%struct.request_queue* %61, i8* %62, i32 %63, i32 %64)
  store %struct.bio* %65, %struct.bio** %14, align 8
  br label %66

66:                                               ; preds = %60, %53
  %67 = load %struct.bio*, %struct.bio** %14, align 8
  %68 = call i64 @IS_ERR(%struct.bio* %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %73

70:                                               ; preds = %66
  %71 = load %struct.bio*, %struct.bio** %14, align 8
  %72 = call i32 @PTR_ERR(%struct.bio* %71)
  store i32 %72, i32* %6, align 4
  br label %113

73:                                               ; preds = %66
  %74 = load %struct.request*, %struct.request** %8, align 8
  %75 = call i64 @rq_data_dir(%struct.request* %74)
  %76 = load i64, i64* @WRITE, align 8
  %77 = icmp eq i64 %75, %76
  br i1 %77, label %78, label %85

78:                                               ; preds = %73
  %79 = load i32, i32* @BIO_RW, align 4
  %80 = shl i32 1, %79
  %81 = load %struct.bio*, %struct.bio** %14, align 8
  %82 = getelementptr inbounds %struct.bio, %struct.bio* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = or i32 %83, %80
  store i32 %84, i32* %82, align 4
  br label %85

85:                                               ; preds = %78, %73
  %86 = load i32, i32* %13, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %94

88:                                               ; preds = %85
  %89 = load i32, i32* @REQ_COPY_USER, align 4
  %90 = load %struct.request*, %struct.request** %8, align 8
  %91 = getelementptr inbounds %struct.request, %struct.request* %90, i32 0, i32 2
  %92 = load i32, i32* %91, align 4
  %93 = or i32 %92, %89
  store i32 %93, i32* %91, align 4
  br label %94

94:                                               ; preds = %88, %85
  %95 = load %struct.request_queue*, %struct.request_queue** %7, align 8
  %96 = load %struct.request*, %struct.request** %8, align 8
  %97 = load %struct.bio*, %struct.bio** %14, align 8
  %98 = call i32 @blk_rq_append_bio(%struct.request_queue* %95, %struct.request* %96, %struct.bio* %97)
  store i32 %98, i32* %15, align 4
  %99 = load i32, i32* %15, align 4
  %100 = call i64 @unlikely(i32 %99)
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %106

102:                                              ; preds = %94
  %103 = load %struct.bio*, %struct.bio** %14, align 8
  %104 = call i32 @bio_put(%struct.bio* %103)
  %105 = load i32, i32* %15, align 4
  store i32 %105, i32* %6, align 4
  br label %113

106:                                              ; preds = %94
  %107 = load %struct.request_queue*, %struct.request_queue** %7, align 8
  %108 = load %struct.request*, %struct.request** %8, align 8
  %109 = getelementptr inbounds %struct.request, %struct.request* %108, i32 0, i32 1
  %110 = call i32 @blk_queue_bounce(%struct.request_queue* %107, i32* %109)
  %111 = load %struct.request*, %struct.request** %8, align 8
  %112 = getelementptr inbounds %struct.request, %struct.request* %111, i32 0, i32 0
  store i32* null, i32** %112, align 8
  store i32 0, i32* %6, align 4
  br label %113

113:                                              ; preds = %106, %102, %70, %35, %26
  %114 = load i32, i32* %6, align 4
  ret i32 %114
}

declare dso_local i64 @rq_data_dir(%struct.request*) #1

declare dso_local i32 @queue_max_hw_sectors(%struct.request_queue*) #1

declare dso_local i32 @blk_rq_aligned(%struct.request_queue*, i8*, i32) #1

declare dso_local i64 @object_is_on_stack(i8*) #1

declare dso_local %struct.bio* @bio_copy_kern(%struct.request_queue*, i8*, i32, i32, i32) #1

declare dso_local %struct.bio* @bio_map_kern(%struct.request_queue*, i8*, i32, i32) #1

declare dso_local i64 @IS_ERR(%struct.bio*) #1

declare dso_local i32 @PTR_ERR(%struct.bio*) #1

declare dso_local i32 @blk_rq_append_bio(%struct.request_queue*, %struct.request*, %struct.bio*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @bio_put(%struct.bio*) #1

declare dso_local i32 @blk_queue_bounce(%struct.request_queue*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
