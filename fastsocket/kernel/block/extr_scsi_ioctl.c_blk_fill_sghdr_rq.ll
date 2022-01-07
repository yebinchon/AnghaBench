; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/block/extr_scsi_ioctl.c_blk_fill_sghdr_rq.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/block/extr_scsi_ioctl.c_blk_fill_sghdr_rq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.request_queue = type { i64 }
%struct.request = type { i64, i32, i32, i32 }
%struct.sg_io_hdr = type { i32, i32, i32 }

@EFAULT = common dso_local global i32 0, align 4
@FMODE_WRITE = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@REQ_TYPE_BLOCK_PC = common dso_local global i32 0, align 4
@BLK_DEFAULT_SG_TIMEOUT = common dso_local global i64 0, align 8
@BLK_MIN_SG_TIMEOUT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.request_queue*, %struct.request*, %struct.sg_io_hdr*, i32)* @blk_fill_sghdr_rq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @blk_fill_sghdr_rq(%struct.request_queue* %0, %struct.request* %1, %struct.sg_io_hdr* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.request_queue*, align 8
  %7 = alloca %struct.request*, align 8
  %8 = alloca %struct.sg_io_hdr*, align 8
  %9 = alloca i32, align 4
  store %struct.request_queue* %0, %struct.request_queue** %6, align 8
  store %struct.request* %1, %struct.request** %7, align 8
  store %struct.sg_io_hdr* %2, %struct.sg_io_hdr** %8, align 8
  store i32 %3, i32* %9, align 4
  %10 = load %struct.request*, %struct.request** %7, align 8
  %11 = getelementptr inbounds %struct.request, %struct.request* %10, i32 0, i32 3
  %12 = load i32, i32* %11, align 8
  %13 = load %struct.sg_io_hdr*, %struct.sg_io_hdr** %8, align 8
  %14 = getelementptr inbounds %struct.sg_io_hdr, %struct.sg_io_hdr* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.sg_io_hdr*, %struct.sg_io_hdr** %8, align 8
  %17 = getelementptr inbounds %struct.sg_io_hdr, %struct.sg_io_hdr* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = call i64 @copy_from_user(i32 %12, i32 %15, i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %4
  %22 = load i32, i32* @EFAULT, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %5, align 4
  br label %82

24:                                               ; preds = %4
  %25 = load %struct.request_queue*, %struct.request_queue** %6, align 8
  %26 = load %struct.request*, %struct.request** %7, align 8
  %27 = getelementptr inbounds %struct.request, %struct.request* %26, i32 0, i32 3
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* %9, align 4
  %30 = load i32, i32* @FMODE_WRITE, align 4
  %31 = and i32 %29, %30
  %32 = call i64 @blk_verify_command(%struct.request_queue* %25, i32 %28, i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %24
  %35 = load i32, i32* @EPERM, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %5, align 4
  br label %82

37:                                               ; preds = %24
  %38 = load %struct.sg_io_hdr*, %struct.sg_io_hdr** %8, align 8
  %39 = getelementptr inbounds %struct.sg_io_hdr, %struct.sg_io_hdr* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.request*, %struct.request** %7, align 8
  %42 = getelementptr inbounds %struct.request, %struct.request* %41, i32 0, i32 2
  store i32 %40, i32* %42, align 4
  %43 = load i32, i32* @REQ_TYPE_BLOCK_PC, align 4
  %44 = load %struct.request*, %struct.request** %7, align 8
  %45 = getelementptr inbounds %struct.request, %struct.request* %44, i32 0, i32 1
  store i32 %43, i32* %45, align 8
  %46 = load %struct.sg_io_hdr*, %struct.sg_io_hdr** %8, align 8
  %47 = getelementptr inbounds %struct.sg_io_hdr, %struct.sg_io_hdr* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call i64 @msecs_to_jiffies(i32 %48)
  %50 = load %struct.request*, %struct.request** %7, align 8
  %51 = getelementptr inbounds %struct.request, %struct.request* %50, i32 0, i32 0
  store i64 %49, i64* %51, align 8
  %52 = load %struct.request*, %struct.request** %7, align 8
  %53 = getelementptr inbounds %struct.request, %struct.request* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %62, label %56

56:                                               ; preds = %37
  %57 = load %struct.request_queue*, %struct.request_queue** %6, align 8
  %58 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = load %struct.request*, %struct.request** %7, align 8
  %61 = getelementptr inbounds %struct.request, %struct.request* %60, i32 0, i32 0
  store i64 %59, i64* %61, align 8
  br label %62

62:                                               ; preds = %56, %37
  %63 = load %struct.request*, %struct.request** %7, align 8
  %64 = getelementptr inbounds %struct.request, %struct.request* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %71, label %67

67:                                               ; preds = %62
  %68 = load i64, i64* @BLK_DEFAULT_SG_TIMEOUT, align 8
  %69 = load %struct.request*, %struct.request** %7, align 8
  %70 = getelementptr inbounds %struct.request, %struct.request* %69, i32 0, i32 0
  store i64 %68, i64* %70, align 8
  br label %71

71:                                               ; preds = %67, %62
  %72 = load %struct.request*, %struct.request** %7, align 8
  %73 = getelementptr inbounds %struct.request, %struct.request* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = load i64, i64* @BLK_MIN_SG_TIMEOUT, align 8
  %76 = icmp slt i64 %74, %75
  br i1 %76, label %77, label %81

77:                                               ; preds = %71
  %78 = load i64, i64* @BLK_MIN_SG_TIMEOUT, align 8
  %79 = load %struct.request*, %struct.request** %7, align 8
  %80 = getelementptr inbounds %struct.request, %struct.request* %79, i32 0, i32 0
  store i64 %78, i64* %80, align 8
  br label %81

81:                                               ; preds = %77, %71
  store i32 0, i32* %5, align 4
  br label %82

82:                                               ; preds = %81, %34, %21
  %83 = load i32, i32* %5, align 4
  ret i32 %83
}

declare dso_local i64 @copy_from_user(i32, i32, i32) #1

declare dso_local i64 @blk_verify_command(%struct.request_queue*, i32, i32) #1

declare dso_local i64 @msecs_to_jiffies(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
