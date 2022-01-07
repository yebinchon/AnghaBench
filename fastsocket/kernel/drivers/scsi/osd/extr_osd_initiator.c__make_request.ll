; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/osd/extr_osd_initiator.c__make_request.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/osd/extr_osd_initiator.c__make_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.request = type { i32 }
%struct.request_queue = type { i32 }
%struct._osd_io_info = type { i64 }

@WRITE = common dso_local global i32 0, align 4
@READ = common dso_local global i32 0, align 4
@__GFP_WAIT = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.request* (%struct.request_queue*, i32, %struct._osd_io_info*, i32)* @_make_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.request* @_make_request(%struct.request_queue* %0, i32 %1, %struct._osd_io_info* %2, i32 %3) #0 {
  %5 = alloca %struct.request*, align 8
  %6 = alloca %struct.request_queue*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct._osd_io_info*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.request*, align 8
  store %struct.request_queue* %0, %struct.request_queue** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct._osd_io_info* %2, %struct._osd_io_info** %8, align 8
  store i32 %3, i32* %9, align 4
  %11 = load %struct._osd_io_info*, %struct._osd_io_info** %8, align 8
  %12 = getelementptr inbounds %struct._osd_io_info, %struct._osd_io_info* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %22

15:                                               ; preds = %4
  %16 = load %struct.request_queue*, %struct.request_queue** %6, align 8
  %17 = load %struct._osd_io_info*, %struct._osd_io_info** %8, align 8
  %18 = getelementptr inbounds %struct._osd_io_info, %struct._osd_io_info* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i32, i32* %9, align 4
  %21 = call %struct.request* @blk_make_request(%struct.request_queue* %16, i64 %19, i32 %20)
  store %struct.request* %21, %struct.request** %5, align 8
  br label %57

22:                                               ; preds = %4
  %23 = load %struct.request_queue*, %struct.request_queue** %6, align 8
  %24 = load i32, i32* %7, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %22
  %27 = load i32, i32* @WRITE, align 4
  br label %30

28:                                               ; preds = %22
  %29 = load i32, i32* @READ, align 4
  br label %30

30:                                               ; preds = %28, %26
  %31 = phi i32 [ %27, %26 ], [ %29, %28 ]
  %32 = load i32, i32* %9, align 4
  %33 = call %struct.request* @blk_get_request(%struct.request_queue* %23, i32 %31, i32 %32)
  store %struct.request* %33, %struct.request** %10, align 8
  %34 = load %struct.request*, %struct.request** %10, align 8
  %35 = icmp ne %struct.request* %34, null
  %36 = xor i1 %35, true
  %37 = zext i1 %36 to i32
  %38 = call i64 @unlikely(i32 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %55

40:                                               ; preds = %30
  %41 = load i32, i32* %9, align 4
  %42 = load i32, i32* @__GFP_WAIT, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %49

45:                                               ; preds = %40
  %46 = load i32, i32* @ENODEV, align 4
  %47 = sub nsw i32 0, %46
  %48 = call %struct.request* @ERR_PTR(i32 %47)
  br label %53

49:                                               ; preds = %40
  %50 = load i32, i32* @ENOMEM, align 4
  %51 = sub nsw i32 0, %50
  %52 = call %struct.request* @ERR_PTR(i32 %51)
  br label %53

53:                                               ; preds = %49, %45
  %54 = phi %struct.request* [ %48, %45 ], [ %52, %49 ]
  store %struct.request* %54, %struct.request** %5, align 8
  br label %57

55:                                               ; preds = %30
  %56 = load %struct.request*, %struct.request** %10, align 8
  store %struct.request* %56, %struct.request** %5, align 8
  br label %57

57:                                               ; preds = %55, %53, %15
  %58 = load %struct.request*, %struct.request** %5, align 8
  ret %struct.request* %58
}

declare dso_local %struct.request* @blk_make_request(%struct.request_queue*, i64, i32) #1

declare dso_local %struct.request* @blk_get_request(%struct.request_queue*, i32, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local %struct.request* @ERR_PTR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
