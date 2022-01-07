; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/block/extr_bsg.c_blk_fill_sgv4_hdr_rq.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/block/extr_bsg.c_blk_fill_sgv4_hdr_rq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.request_queue = type { i64 }
%struct.request = type { i64, i64, i32, i32 }
%struct.sg_io_v4 = type { i64, i64, i32, i64 }
%struct.bsg_device = type { i32 }

@BLK_MAX_CDB = common dso_local global i64 0, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@EFAULT = common dso_local global i32 0, align 4
@BSG_SUB_PROTOCOL_SCSI_CMD = common dso_local global i64 0, align 8
@EPERM = common dso_local global i32 0, align 4
@CAP_SYS_RAWIO = common dso_local global i32 0, align 4
@REQ_TYPE_BLOCK_PC = common dso_local global i32 0, align 4
@BLK_DEFAULT_SG_TIMEOUT = common dso_local global i64 0, align 8
@BLK_MIN_SG_TIMEOUT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.request_queue*, %struct.request*, %struct.sg_io_v4*, %struct.bsg_device*, i32)* @blk_fill_sgv4_hdr_rq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @blk_fill_sgv4_hdr_rq(%struct.request_queue* %0, %struct.request* %1, %struct.sg_io_v4* %2, %struct.bsg_device* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.request_queue*, align 8
  %8 = alloca %struct.request*, align 8
  %9 = alloca %struct.sg_io_v4*, align 8
  %10 = alloca %struct.bsg_device*, align 8
  %11 = alloca i32, align 4
  store %struct.request_queue* %0, %struct.request_queue** %7, align 8
  store %struct.request* %1, %struct.request** %8, align 8
  store %struct.sg_io_v4* %2, %struct.sg_io_v4** %9, align 8
  store %struct.bsg_device* %3, %struct.bsg_device** %10, align 8
  store i32 %4, i32* %11, align 4
  %12 = load %struct.sg_io_v4*, %struct.sg_io_v4** %9, align 8
  %13 = getelementptr inbounds %struct.sg_io_v4, %struct.sg_io_v4* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @BLK_MAX_CDB, align 8
  %16 = icmp sgt i64 %14, %15
  br i1 %16, label %17, label %33

17:                                               ; preds = %5
  %18 = load %struct.sg_io_v4*, %struct.sg_io_v4** %9, align 8
  %19 = getelementptr inbounds %struct.sg_io_v4, %struct.sg_io_v4* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i32, i32* @GFP_KERNEL, align 4
  %22 = call i32 @kzalloc(i64 %20, i32 %21)
  %23 = load %struct.request*, %struct.request** %8, align 8
  %24 = getelementptr inbounds %struct.request, %struct.request* %23, i32 0, i32 3
  store i32 %22, i32* %24, align 4
  %25 = load %struct.request*, %struct.request** %8, align 8
  %26 = getelementptr inbounds %struct.request, %struct.request* %25, i32 0, i32 3
  %27 = load i32, i32* %26, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %32, label %29

29:                                               ; preds = %17
  %30 = load i32, i32* @ENOMEM, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %6, align 4
  br label %120

32:                                               ; preds = %17
  br label %33

33:                                               ; preds = %32, %5
  %34 = load %struct.request*, %struct.request** %8, align 8
  %35 = getelementptr inbounds %struct.request, %struct.request* %34, i32 0, i32 3
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.sg_io_v4*, %struct.sg_io_v4** %9, align 8
  %38 = getelementptr inbounds %struct.sg_io_v4, %struct.sg_io_v4* %37, i32 0, i32 3
  %39 = load i64, i64* %38, align 8
  %40 = inttoptr i64 %39 to i8*
  %41 = load %struct.sg_io_v4*, %struct.sg_io_v4** %9, align 8
  %42 = getelementptr inbounds %struct.sg_io_v4, %struct.sg_io_v4* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = call i64 @copy_from_user(i32 %36, i8* %40, i64 %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %33
  %47 = load i32, i32* @EFAULT, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %6, align 4
  br label %120

49:                                               ; preds = %33
  %50 = load %struct.sg_io_v4*, %struct.sg_io_v4** %9, align 8
  %51 = getelementptr inbounds %struct.sg_io_v4, %struct.sg_io_v4* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @BSG_SUB_PROTOCOL_SCSI_CMD, align 8
  %54 = icmp eq i64 %52, %53
  br i1 %54, label %55, label %67

55:                                               ; preds = %49
  %56 = load %struct.request_queue*, %struct.request_queue** %7, align 8
  %57 = load %struct.request*, %struct.request** %8, align 8
  %58 = getelementptr inbounds %struct.request, %struct.request* %57, i32 0, i32 3
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* %11, align 4
  %61 = call i64 @blk_verify_command(%struct.request_queue* %56, i32 %59, i32 %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %66

63:                                               ; preds = %55
  %64 = load i32, i32* @EPERM, align 4
  %65 = sub nsw i32 0, %64
  store i32 %65, i32* %6, align 4
  br label %120

66:                                               ; preds = %55
  br label %75

67:                                               ; preds = %49
  %68 = load i32, i32* @CAP_SYS_RAWIO, align 4
  %69 = call i32 @capable(i32 %68)
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %74, label %71

71:                                               ; preds = %67
  %72 = load i32, i32* @EPERM, align 4
  %73 = sub nsw i32 0, %72
  store i32 %73, i32* %6, align 4
  br label %120

74:                                               ; preds = %67
  br label %75

75:                                               ; preds = %74, %66
  %76 = load %struct.sg_io_v4*, %struct.sg_io_v4** %9, align 8
  %77 = getelementptr inbounds %struct.sg_io_v4, %struct.sg_io_v4* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = load %struct.request*, %struct.request** %8, align 8
  %80 = getelementptr inbounds %struct.request, %struct.request* %79, i32 0, i32 0
  store i64 %78, i64* %80, align 8
  %81 = load i32, i32* @REQ_TYPE_BLOCK_PC, align 4
  %82 = load %struct.request*, %struct.request** %8, align 8
  %83 = getelementptr inbounds %struct.request, %struct.request* %82, i32 0, i32 2
  store i32 %81, i32* %83, align 8
  %84 = load %struct.sg_io_v4*, %struct.sg_io_v4** %9, align 8
  %85 = getelementptr inbounds %struct.sg_io_v4, %struct.sg_io_v4* %84, i32 0, i32 2
  %86 = load i32, i32* %85, align 8
  %87 = call i64 @msecs_to_jiffies(i32 %86)
  %88 = load %struct.request*, %struct.request** %8, align 8
  %89 = getelementptr inbounds %struct.request, %struct.request* %88, i32 0, i32 1
  store i64 %87, i64* %89, align 8
  %90 = load %struct.request*, %struct.request** %8, align 8
  %91 = getelementptr inbounds %struct.request, %struct.request* %90, i32 0, i32 1
  %92 = load i64, i64* %91, align 8
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %100, label %94

94:                                               ; preds = %75
  %95 = load %struct.request_queue*, %struct.request_queue** %7, align 8
  %96 = getelementptr inbounds %struct.request_queue, %struct.request_queue* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = load %struct.request*, %struct.request** %8, align 8
  %99 = getelementptr inbounds %struct.request, %struct.request* %98, i32 0, i32 1
  store i64 %97, i64* %99, align 8
  br label %100

100:                                              ; preds = %94, %75
  %101 = load %struct.request*, %struct.request** %8, align 8
  %102 = getelementptr inbounds %struct.request, %struct.request* %101, i32 0, i32 1
  %103 = load i64, i64* %102, align 8
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %109, label %105

105:                                              ; preds = %100
  %106 = load i64, i64* @BLK_DEFAULT_SG_TIMEOUT, align 8
  %107 = load %struct.request*, %struct.request** %8, align 8
  %108 = getelementptr inbounds %struct.request, %struct.request* %107, i32 0, i32 1
  store i64 %106, i64* %108, align 8
  br label %109

109:                                              ; preds = %105, %100
  %110 = load %struct.request*, %struct.request** %8, align 8
  %111 = getelementptr inbounds %struct.request, %struct.request* %110, i32 0, i32 1
  %112 = load i64, i64* %111, align 8
  %113 = load i64, i64* @BLK_MIN_SG_TIMEOUT, align 8
  %114 = icmp slt i64 %112, %113
  br i1 %114, label %115, label %119

115:                                              ; preds = %109
  %116 = load i64, i64* @BLK_MIN_SG_TIMEOUT, align 8
  %117 = load %struct.request*, %struct.request** %8, align 8
  %118 = getelementptr inbounds %struct.request, %struct.request* %117, i32 0, i32 1
  store i64 %116, i64* %118, align 8
  br label %119

119:                                              ; preds = %115, %109
  store i32 0, i32* %6, align 4
  br label %120

120:                                              ; preds = %119, %71, %63, %46, %29
  %121 = load i32, i32* %6, align 4
  ret i32 %121
}

declare dso_local i32 @kzalloc(i64, i32) #1

declare dso_local i64 @copy_from_user(i32, i8*, i64) #1

declare dso_local i64 @blk_verify_command(%struct.request_queue*, i32, i32) #1

declare dso_local i32 @capable(i32) #1

declare dso_local i64 @msecs_to_jiffies(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
