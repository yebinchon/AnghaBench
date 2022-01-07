; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/bfa/extr_bfad_bsg.c_bfad_im_bsg_vendor_request.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/bfa/extr_bfad_bsg.c_bfad_im_bsg_vendor_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fc_bsg_job = type { i32, %struct.TYPE_16__*, {}*, %struct.TYPE_15__, %struct.TYPE_14__, %struct.TYPE_13__*, %struct.TYPE_12__*, %struct.TYPE_11__* }
%struct.TYPE_16__ = type { i32, i32 }
%struct.TYPE_15__ = type { i32, i32, i32 }
%struct.TYPE_14__ = type { i32, i32, i32 }
%struct.TYPE_13__ = type { %struct.request_queue* }
%struct.request_queue = type { i32 }
%struct.TYPE_12__ = type { i64* }
%struct.TYPE_11__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32* }
%struct.bfad_im_port_s = type { %struct.bfad_s* }
%struct.bfad_s = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@BFA_STATUS_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fc_bsg_job*)* @bfad_im_bsg_vendor_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bfad_im_bsg_vendor_request(%struct.fc_bsg_job* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.fc_bsg_job*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.bfad_im_port_s*, align 8
  %6 = alloca %struct.bfad_s*, align 8
  %7 = alloca %struct.request_queue*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  store %struct.fc_bsg_job* %0, %struct.fc_bsg_job** %3, align 8
  %10 = load %struct.fc_bsg_job*, %struct.fc_bsg_job** %3, align 8
  %11 = getelementptr inbounds %struct.fc_bsg_job, %struct.fc_bsg_job* %10, i32 0, i32 7
  %12 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %14, i32 0, i32 0
  %16 = load i32*, i32** %15, align 8
  %17 = getelementptr inbounds i32, i32* %16, i64 0
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %4, align 4
  %19 = load %struct.fc_bsg_job*, %struct.fc_bsg_job** %3, align 8
  %20 = getelementptr inbounds %struct.fc_bsg_job, %struct.fc_bsg_job* %19, i32 0, i32 6
  %21 = load %struct.TYPE_12__*, %struct.TYPE_12__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %21, i32 0, i32 0
  %23 = load i64*, i64** %22, align 8
  %24 = getelementptr inbounds i64, i64* %23, i64 0
  %25 = load i64, i64* %24, align 8
  %26 = inttoptr i64 %25 to %struct.bfad_im_port_s*
  store %struct.bfad_im_port_s* %26, %struct.bfad_im_port_s** %5, align 8
  %27 = load %struct.bfad_im_port_s*, %struct.bfad_im_port_s** %5, align 8
  %28 = getelementptr inbounds %struct.bfad_im_port_s, %struct.bfad_im_port_s* %27, i32 0, i32 0
  %29 = load %struct.bfad_s*, %struct.bfad_s** %28, align 8
  store %struct.bfad_s* %29, %struct.bfad_s** %6, align 8
  %30 = load %struct.fc_bsg_job*, %struct.fc_bsg_job** %3, align 8
  %31 = getelementptr inbounds %struct.fc_bsg_job, %struct.fc_bsg_job* %30, i32 0, i32 5
  %32 = load %struct.TYPE_13__*, %struct.TYPE_13__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %32, i32 0, i32 0
  %34 = load %struct.request_queue*, %struct.request_queue** %33, align 8
  store %struct.request_queue* %34, %struct.request_queue** %7, align 8
  %35 = load i32, i32* @EINVAL, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %9, align 4
  %37 = load %struct.request_queue*, %struct.request_queue** %7, align 8
  %38 = call i32 @blk_queue_max_segments(%struct.request_queue* %37, i32 256)
  %39 = load %struct.fc_bsg_job*, %struct.fc_bsg_job** %3, align 8
  %40 = getelementptr inbounds %struct.fc_bsg_job, %struct.fc_bsg_job* %39, i32 0, i32 4
  %41 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @GFP_KERNEL, align 4
  %44 = call i8* @kzalloc(i32 %42, i32 %43)
  store i8* %44, i8** %8, align 8
  %45 = load i8*, i8** %8, align 8
  %46 = icmp ne i8* %45, null
  br i1 %46, label %50, label %47

47:                                               ; preds = %1
  %48 = load i32, i32* @ENOMEM, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %9, align 4
  br label %123

50:                                               ; preds = %1
  %51 = load %struct.fc_bsg_job*, %struct.fc_bsg_job** %3, align 8
  %52 = getelementptr inbounds %struct.fc_bsg_job, %struct.fc_bsg_job* %51, i32 0, i32 4
  %53 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.fc_bsg_job*, %struct.fc_bsg_job** %3, align 8
  %56 = getelementptr inbounds %struct.fc_bsg_job, %struct.fc_bsg_job* %55, i32 0, i32 4
  %57 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = load i8*, i8** %8, align 8
  %60 = load %struct.fc_bsg_job*, %struct.fc_bsg_job** %3, align 8
  %61 = getelementptr inbounds %struct.fc_bsg_job, %struct.fc_bsg_job* %60, i32 0, i32 4
  %62 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @sg_copy_to_buffer(i32 %54, i32 %58, i8* %59, i32 %63)
  %65 = load %struct.bfad_s*, %struct.bfad_s** %6, align 8
  %66 = load i32, i32* %4, align 4
  %67 = load i8*, i8** %8, align 8
  %68 = load %struct.fc_bsg_job*, %struct.fc_bsg_job** %3, align 8
  %69 = getelementptr inbounds %struct.fc_bsg_job, %struct.fc_bsg_job* %68, i32 0, i32 4
  %70 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @bfad_iocmd_handler(%struct.bfad_s* %65, i32 %66, i8* %67, i32 %71)
  store i32 %72, i32* %9, align 4
  %73 = load i32, i32* %9, align 4
  %74 = load i32, i32* @BFA_STATUS_OK, align 4
  %75 = icmp ne i32 %73, %74
  br i1 %75, label %76, label %77

76:                                               ; preds = %50
  br label %120

77:                                               ; preds = %50
  %78 = load %struct.fc_bsg_job*, %struct.fc_bsg_job** %3, align 8
  %79 = getelementptr inbounds %struct.fc_bsg_job, %struct.fc_bsg_job* %78, i32 0, i32 3
  %80 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %79, i32 0, i32 2
  %81 = load i32, i32* %80, align 8
  %82 = load %struct.fc_bsg_job*, %struct.fc_bsg_job** %3, align 8
  %83 = getelementptr inbounds %struct.fc_bsg_job, %struct.fc_bsg_job* %82, i32 0, i32 3
  %84 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = load i8*, i8** %8, align 8
  %87 = load %struct.fc_bsg_job*, %struct.fc_bsg_job** %3, align 8
  %88 = getelementptr inbounds %struct.fc_bsg_job, %struct.fc_bsg_job* %87, i32 0, i32 3
  %89 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = call i32 @sg_copy_from_buffer(i32 %81, i32 %85, i8* %86, i32 %90)
  %92 = load i8*, i8** %8, align 8
  %93 = call i32 @kfree(i8* %92)
  %94 = load %struct.fc_bsg_job*, %struct.fc_bsg_job** %3, align 8
  %95 = getelementptr inbounds %struct.fc_bsg_job, %struct.fc_bsg_job* %94, i32 0, i32 3
  %96 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = load %struct.fc_bsg_job*, %struct.fc_bsg_job** %3, align 8
  %99 = getelementptr inbounds %struct.fc_bsg_job, %struct.fc_bsg_job* %98, i32 0, i32 0
  store i32 %97, i32* %99, align 8
  %100 = load %struct.fc_bsg_job*, %struct.fc_bsg_job** %3, align 8
  %101 = getelementptr inbounds %struct.fc_bsg_job, %struct.fc_bsg_job* %100, i32 0, i32 3
  %102 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = load %struct.fc_bsg_job*, %struct.fc_bsg_job** %3, align 8
  %105 = getelementptr inbounds %struct.fc_bsg_job, %struct.fc_bsg_job* %104, i32 0, i32 1
  %106 = load %struct.TYPE_16__*, %struct.TYPE_16__** %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %106, i32 0, i32 0
  store i32 %103, i32* %107, align 4
  %108 = load i32, i32* %9, align 4
  %109 = load %struct.fc_bsg_job*, %struct.fc_bsg_job** %3, align 8
  %110 = getelementptr inbounds %struct.fc_bsg_job, %struct.fc_bsg_job* %109, i32 0, i32 1
  %111 = load %struct.TYPE_16__*, %struct.TYPE_16__** %110, align 8
  %112 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %111, i32 0, i32 1
  store i32 %108, i32* %112, align 4
  %113 = load %struct.fc_bsg_job*, %struct.fc_bsg_job** %3, align 8
  %114 = getelementptr inbounds %struct.fc_bsg_job, %struct.fc_bsg_job* %113, i32 0, i32 2
  %115 = bitcast {}** %114 to i32 (%struct.fc_bsg_job*)**
  %116 = load i32 (%struct.fc_bsg_job*)*, i32 (%struct.fc_bsg_job*)** %115, align 8
  %117 = load %struct.fc_bsg_job*, %struct.fc_bsg_job** %3, align 8
  %118 = call i32 %116(%struct.fc_bsg_job* %117)
  %119 = load i32, i32* %9, align 4
  store i32 %119, i32* %2, align 4
  br label %136

120:                                              ; preds = %76
  %121 = load i8*, i8** %8, align 8
  %122 = call i32 @kfree(i8* %121)
  br label %123

123:                                              ; preds = %120, %47
  %124 = load i32, i32* %9, align 4
  %125 = load %struct.fc_bsg_job*, %struct.fc_bsg_job** %3, align 8
  %126 = getelementptr inbounds %struct.fc_bsg_job, %struct.fc_bsg_job* %125, i32 0, i32 1
  %127 = load %struct.TYPE_16__*, %struct.TYPE_16__** %126, align 8
  %128 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %127, i32 0, i32 1
  store i32 %124, i32* %128, align 4
  %129 = load %struct.fc_bsg_job*, %struct.fc_bsg_job** %3, align 8
  %130 = getelementptr inbounds %struct.fc_bsg_job, %struct.fc_bsg_job* %129, i32 0, i32 0
  store i32 4, i32* %130, align 8
  %131 = load %struct.fc_bsg_job*, %struct.fc_bsg_job** %3, align 8
  %132 = getelementptr inbounds %struct.fc_bsg_job, %struct.fc_bsg_job* %131, i32 0, i32 1
  %133 = load %struct.TYPE_16__*, %struct.TYPE_16__** %132, align 8
  %134 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %133, i32 0, i32 0
  store i32 0, i32* %134, align 4
  %135 = load i32, i32* %9, align 4
  store i32 %135, i32* %2, align 4
  br label %136

136:                                              ; preds = %123, %77
  %137 = load i32, i32* %2, align 4
  ret i32 %137
}

declare dso_local i32 @blk_queue_max_segments(%struct.request_queue*, i32) #1

declare dso_local i8* @kzalloc(i32, i32) #1

declare dso_local i32 @sg_copy_to_buffer(i32, i32, i8*, i32) #1

declare dso_local i32 @bfad_iocmd_handler(%struct.bfad_s*, i32, i8*, i32) #1

declare dso_local i32 @sg_copy_from_buffer(i32, i32, i8*, i32) #1

declare dso_local i32 @kfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
