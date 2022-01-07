; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/block/extr_cfq-iosched.c_cfq_update_io_seektime.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/block/extr_cfq-iosched.c_cfq_update_io_seektime.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cfq_data = type { i32 }
%struct.cfq_queue = type { i64, i32 }
%struct.request = type { i32 }

@CFQQ_SECT_THR_NONROT = common dso_local global i64 0, align 8
@CFQQ_SEEK_THR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cfq_data*, %struct.cfq_queue*, %struct.request*)* @cfq_update_io_seektime to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cfq_update_io_seektime(%struct.cfq_data* %0, %struct.cfq_queue* %1, %struct.request* %2) #0 {
  %4 = alloca %struct.cfq_data*, align 8
  %5 = alloca %struct.cfq_queue*, align 8
  %6 = alloca %struct.request*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.cfq_data* %0, %struct.cfq_data** %4, align 8
  store %struct.cfq_queue* %1, %struct.cfq_queue** %5, align 8
  store %struct.request* %2, %struct.request** %6, align 8
  store i64 0, i64* %7, align 8
  %9 = load %struct.request*, %struct.request** %6, align 8
  %10 = call i64 @blk_rq_sectors(%struct.request* %9)
  store i64 %10, i64* %8, align 8
  %11 = load %struct.cfq_queue*, %struct.cfq_queue** %5, align 8
  %12 = getelementptr inbounds %struct.cfq_queue, %struct.cfq_queue* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %37

15:                                               ; preds = %3
  %16 = load %struct.cfq_queue*, %struct.cfq_queue** %5, align 8
  %17 = getelementptr inbounds %struct.cfq_queue, %struct.cfq_queue* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load %struct.request*, %struct.request** %6, align 8
  %20 = call i64 @blk_rq_pos(%struct.request* %19)
  %21 = icmp slt i64 %18, %20
  br i1 %21, label %22, label %29

22:                                               ; preds = %15
  %23 = load %struct.request*, %struct.request** %6, align 8
  %24 = call i64 @blk_rq_pos(%struct.request* %23)
  %25 = load %struct.cfq_queue*, %struct.cfq_queue** %5, align 8
  %26 = getelementptr inbounds %struct.cfq_queue, %struct.cfq_queue* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = sub nsw i64 %24, %27
  store i64 %28, i64* %7, align 8
  br label %36

29:                                               ; preds = %15
  %30 = load %struct.cfq_queue*, %struct.cfq_queue** %5, align 8
  %31 = getelementptr inbounds %struct.cfq_queue, %struct.cfq_queue* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load %struct.request*, %struct.request** %6, align 8
  %34 = call i64 @blk_rq_pos(%struct.request* %33)
  %35 = sub nsw i64 %32, %34
  store i64 %35, i64* %7, align 8
  br label %36

36:                                               ; preds = %29, %22
  br label %37

37:                                               ; preds = %36, %3
  %38 = load %struct.cfq_queue*, %struct.cfq_queue** %5, align 8
  %39 = getelementptr inbounds %struct.cfq_queue, %struct.cfq_queue* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 8
  %41 = shl i32 %40, 1
  store i32 %41, i32* %39, align 8
  %42 = load %struct.cfq_data*, %struct.cfq_data** %4, align 8
  %43 = getelementptr inbounds %struct.cfq_data, %struct.cfq_data* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i64 @blk_queue_nonrot(i32 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %56

47:                                               ; preds = %37
  %48 = load i64, i64* %8, align 8
  %49 = load i64, i64* @CFQQ_SECT_THR_NONROT, align 8
  %50 = icmp slt i64 %48, %49
  %51 = zext i1 %50 to i32
  %52 = load %struct.cfq_queue*, %struct.cfq_queue** %5, align 8
  %53 = getelementptr inbounds %struct.cfq_queue, %struct.cfq_queue* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 8
  %55 = or i32 %54, %51
  store i32 %55, i32* %53, align 8
  br label %65

56:                                               ; preds = %37
  %57 = load i64, i64* %7, align 8
  %58 = load i64, i64* @CFQQ_SEEK_THR, align 8
  %59 = icmp sgt i64 %57, %58
  %60 = zext i1 %59 to i32
  %61 = load %struct.cfq_queue*, %struct.cfq_queue** %5, align 8
  %62 = getelementptr inbounds %struct.cfq_queue, %struct.cfq_queue* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 8
  %64 = or i32 %63, %60
  store i32 %64, i32* %62, align 8
  br label %65

65:                                               ; preds = %56, %47
  ret void
}

declare dso_local i64 @blk_rq_sectors(%struct.request*) #1

declare dso_local i64 @blk_rq_pos(%struct.request*) #1

declare dso_local i64 @blk_queue_nonrot(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
