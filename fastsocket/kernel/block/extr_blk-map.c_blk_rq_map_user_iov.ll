; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/block/extr_blk-map.c_blk_rq_map_user_iov.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/block/extr_blk-map.c_blk_rq_map_user_iov.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.request_queue = type { i32 }
%struct.request = type { i32*, i32 }
%struct.rq_map_data = type { i32 }
%struct.sg_iovec = type { i32, i64 }
%struct.bio = type { i32 }

@READ = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@BIO_USER_MAPPED = common dso_local global i32 0, align 4
@REQ_COPY_USER = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @blk_rq_map_user_iov(%struct.request_queue* %0, %struct.request* %1, %struct.rq_map_data* %2, %struct.sg_iovec* %3, i32 %4, i32 %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.request_queue*, align 8
  %10 = alloca %struct.request*, align 8
  %11 = alloca %struct.rq_map_data*, align 8
  %12 = alloca %struct.sg_iovec*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.bio*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i64, align 8
  store %struct.request_queue* %0, %struct.request_queue** %9, align 8
  store %struct.request* %1, %struct.request** %10, align 8
  store %struct.rq_map_data* %2, %struct.rq_map_data** %11, align 8
  store %struct.sg_iovec* %3, %struct.sg_iovec** %12, align 8
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  %21 = load %struct.request*, %struct.request** %10, align 8
  %22 = call i64 @rq_data_dir(%struct.request* %21)
  %23 = load i64, i64* @READ, align 8
  %24 = icmp eq i64 %22, %23
  %25 = zext i1 %24 to i32
  store i32 %25, i32* %18, align 4
  store i32 0, i32* %19, align 4
  %26 = load %struct.sg_iovec*, %struct.sg_iovec** %12, align 8
  %27 = icmp ne %struct.sg_iovec* %26, null
  br i1 %27, label %28, label %31

28:                                               ; preds = %7
  %29 = load i32, i32* %13, align 4
  %30 = icmp sle i32 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %28, %7
  %32 = load i32, i32* @EINVAL, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %8, align 4
  br label %139

34:                                               ; preds = %28
  store i32 0, i32* %17, align 4
  br label %35

35:                                               ; preds = %64, %34
  %36 = load i32, i32* %17, align 4
  %37 = load i32, i32* %13, align 4
  %38 = icmp slt i32 %36, %37
  br i1 %38, label %39, label %67

39:                                               ; preds = %35
  %40 = load %struct.sg_iovec*, %struct.sg_iovec** %12, align 8
  %41 = load i32, i32* %17, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.sg_iovec, %struct.sg_iovec* %40, i64 %42
  %44 = getelementptr inbounds %struct.sg_iovec, %struct.sg_iovec* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  store i64 %45, i64* %20, align 8
  %46 = load %struct.sg_iovec*, %struct.sg_iovec** %12, align 8
  %47 = load i32, i32* %17, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.sg_iovec, %struct.sg_iovec* %46, i64 %48
  %50 = getelementptr inbounds %struct.sg_iovec, %struct.sg_iovec* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %56, label %53

53:                                               ; preds = %39
  %54 = load i32, i32* @EINVAL, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %8, align 4
  br label %139

56:                                               ; preds = %39
  %57 = load i64, i64* %20, align 8
  %58 = load %struct.request_queue*, %struct.request_queue** %9, align 8
  %59 = call i64 @queue_dma_alignment(%struct.request_queue* %58)
  %60 = and i64 %57, %59
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %56
  store i32 1, i32* %19, align 4
  br label %67

63:                                               ; preds = %56
  br label %64

64:                                               ; preds = %63
  %65 = load i32, i32* %17, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %17, align 4
  br label %35

67:                                               ; preds = %62, %35
  %68 = load i32, i32* %19, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %80, label %70

70:                                               ; preds = %67
  %71 = load %struct.request_queue*, %struct.request_queue** %9, align 8
  %72 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = load i32, i32* %14, align 4
  %75 = and i32 %73, %74
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %80, label %77

77:                                               ; preds = %70
  %78 = load %struct.rq_map_data*, %struct.rq_map_data** %11, align 8
  %79 = icmp ne %struct.rq_map_data* %78, null
  br i1 %79, label %80, label %88

80:                                               ; preds = %77, %70, %67
  %81 = load %struct.request_queue*, %struct.request_queue** %9, align 8
  %82 = load %struct.rq_map_data*, %struct.rq_map_data** %11, align 8
  %83 = load %struct.sg_iovec*, %struct.sg_iovec** %12, align 8
  %84 = load i32, i32* %13, align 4
  %85 = load i32, i32* %18, align 4
  %86 = load i32, i32* %15, align 4
  %87 = call %struct.bio* @bio_copy_user_iov(%struct.request_queue* %81, %struct.rq_map_data* %82, %struct.sg_iovec* %83, i32 %84, i32 %85, i32 %86)
  store %struct.bio* %87, %struct.bio** %16, align 8
  br label %95

88:                                               ; preds = %77
  %89 = load %struct.request_queue*, %struct.request_queue** %9, align 8
  %90 = load %struct.sg_iovec*, %struct.sg_iovec** %12, align 8
  %91 = load i32, i32* %13, align 4
  %92 = load i32, i32* %18, align 4
  %93 = load i32, i32* %15, align 4
  %94 = call %struct.bio* @bio_map_user_iov(%struct.request_queue* %89, i32* null, %struct.sg_iovec* %90, i32 %91, i32 %92, i32 %93)
  store %struct.bio* %94, %struct.bio** %16, align 8
  br label %95

95:                                               ; preds = %88, %80
  %96 = load %struct.bio*, %struct.bio** %16, align 8
  %97 = call i64 @IS_ERR(%struct.bio* %96)
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %102

99:                                               ; preds = %95
  %100 = load %struct.bio*, %struct.bio** %16, align 8
  %101 = call i32 @PTR_ERR(%struct.bio* %100)
  store i32 %101, i32* %8, align 4
  br label %139

102:                                              ; preds = %95
  %103 = load %struct.bio*, %struct.bio** %16, align 8
  %104 = getelementptr inbounds %struct.bio, %struct.bio* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = load i32, i32* %14, align 4
  %107 = icmp ne i32 %105, %106
  br i1 %107, label %108, label %117

108:                                              ; preds = %102
  %109 = load %struct.bio*, %struct.bio** %16, align 8
  %110 = call i32 @bio_get(%struct.bio* %109)
  %111 = load %struct.bio*, %struct.bio** %16, align 8
  %112 = call i32 @bio_endio(%struct.bio* %111, i32 0)
  %113 = load %struct.bio*, %struct.bio** %16, align 8
  %114 = call i32 @__blk_rq_unmap_user(%struct.bio* %113)
  %115 = load i32, i32* @EINVAL, align 4
  %116 = sub nsw i32 0, %115
  store i32 %116, i32* %8, align 4
  br label %139

117:                                              ; preds = %102
  %118 = load %struct.bio*, %struct.bio** %16, align 8
  %119 = load i32, i32* @BIO_USER_MAPPED, align 4
  %120 = call i32 @bio_flagged(%struct.bio* %118, i32 %119)
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %128, label %122

122:                                              ; preds = %117
  %123 = load i32, i32* @REQ_COPY_USER, align 4
  %124 = load %struct.request*, %struct.request** %10, align 8
  %125 = getelementptr inbounds %struct.request, %struct.request* %124, i32 0, i32 1
  %126 = load i32, i32* %125, align 8
  %127 = or i32 %126, %123
  store i32 %127, i32* %125, align 8
  br label %128

128:                                              ; preds = %122, %117
  %129 = load %struct.request_queue*, %struct.request_queue** %9, align 8
  %130 = call i32 @blk_queue_bounce(%struct.request_queue* %129, %struct.bio** %16)
  %131 = load %struct.bio*, %struct.bio** %16, align 8
  %132 = call i32 @bio_get(%struct.bio* %131)
  %133 = load %struct.request_queue*, %struct.request_queue** %9, align 8
  %134 = load %struct.request*, %struct.request** %10, align 8
  %135 = load %struct.bio*, %struct.bio** %16, align 8
  %136 = call i32 @blk_rq_bio_prep(%struct.request_queue* %133, %struct.request* %134, %struct.bio* %135)
  %137 = load %struct.request*, %struct.request** %10, align 8
  %138 = getelementptr inbounds %struct.request, %struct.request* %137, i32 0, i32 0
  store i32* null, i32** %138, align 8
  store i32 0, i32* %8, align 4
  br label %139

139:                                              ; preds = %128, %108, %99, %53, %31
  %140 = load i32, i32* %8, align 4
  ret i32 %140
}

declare dso_local i64 @rq_data_dir(%struct.request*) #1

declare dso_local i64 @queue_dma_alignment(%struct.request_queue*) #1

declare dso_local %struct.bio* @bio_copy_user_iov(%struct.request_queue*, %struct.rq_map_data*, %struct.sg_iovec*, i32, i32, i32) #1

declare dso_local %struct.bio* @bio_map_user_iov(%struct.request_queue*, i32*, %struct.sg_iovec*, i32, i32, i32) #1

declare dso_local i64 @IS_ERR(%struct.bio*) #1

declare dso_local i32 @PTR_ERR(%struct.bio*) #1

declare dso_local i32 @bio_get(%struct.bio*) #1

declare dso_local i32 @bio_endio(%struct.bio*, i32) #1

declare dso_local i32 @__blk_rq_unmap_user(%struct.bio*) #1

declare dso_local i32 @bio_flagged(%struct.bio*, i32) #1

declare dso_local i32 @blk_queue_bounce(%struct.request_queue*, %struct.bio**) #1

declare dso_local i32 @blk_rq_bio_prep(%struct.request_queue*, %struct.request*, %struct.bio*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
