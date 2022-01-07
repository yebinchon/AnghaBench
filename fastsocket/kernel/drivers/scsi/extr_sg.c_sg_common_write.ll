; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_sg.c_sg_common_write.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_sg.c_sg_common_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { i32, %struct.TYPE_19__* }
%struct.TYPE_19__ = type { i32, %struct.TYPE_15__*, i64 }
%struct.TYPE_15__ = type { i32 }
%struct.TYPE_17__ = type { %struct.TYPE_13__*, i64, %struct.TYPE_14__, %struct.TYPE_16__ }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_14__ = type { i8 }
%struct.TYPE_16__ = type { i32, i32, i64, i64, i64, i64, i64, i64, i64, i64 }

@.str = private unnamed_addr constant [51 x i8] c"sg_common_write:  scsi opcode=0x%02x, cmd_size=%d\0A\00", align 1
@.str.1 = private unnamed_addr constant [35 x i8] c"sg_common_write: start_req err=%d\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@DMA_BIDIRECTIONAL = common dso_local global i32 0, align 4
@DMA_NONE = common dso_local global i32 0, align 4
@jiffies = common dso_local global i32 0, align 4
@sg_rq_end_io = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_18__*, %struct.TYPE_17__*, i8*, i32, i32)* @sg_common_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sg_common_write(%struct.TYPE_18__* %0, %struct.TYPE_17__* %1, i8* %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_18__*, align 8
  %8 = alloca %struct.TYPE_17__*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_19__*, align 8
  %15 = alloca %struct.TYPE_16__*, align 8
  store %struct.TYPE_18__* %0, %struct.TYPE_18__** %7, align 8
  store %struct.TYPE_17__* %1, %struct.TYPE_17__** %8, align 8
  store i8* %2, i8** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %16 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %17 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %16, i32 0, i32 1
  %18 = load %struct.TYPE_19__*, %struct.TYPE_19__** %17, align 8
  store %struct.TYPE_19__* %18, %struct.TYPE_19__** %14, align 8
  %19 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %20 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %19, i32 0, i32 3
  store %struct.TYPE_16__* %20, %struct.TYPE_16__** %15, align 8
  %21 = load i8*, i8** %9, align 8
  %22 = getelementptr inbounds i8, i8* %21, i64 0
  %23 = load i8, i8* %22, align 1
  %24 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %25 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %24, i32 0, i32 2
  %26 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %25, i32 0, i32 0
  store i8 %23, i8* %26, align 8
  %27 = load %struct.TYPE_16__*, %struct.TYPE_16__** %15, align 8
  %28 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %27, i32 0, i32 9
  store i64 0, i64* %28, align 8
  %29 = load %struct.TYPE_16__*, %struct.TYPE_16__** %15, align 8
  %30 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %29, i32 0, i32 8
  store i64 0, i64* %30, align 8
  %31 = load %struct.TYPE_16__*, %struct.TYPE_16__** %15, align 8
  %32 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %31, i32 0, i32 7
  store i64 0, i64* %32, align 8
  %33 = load %struct.TYPE_16__*, %struct.TYPE_16__** %15, align 8
  %34 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %33, i32 0, i32 6
  store i64 0, i64* %34, align 8
  %35 = load %struct.TYPE_16__*, %struct.TYPE_16__** %15, align 8
  %36 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %35, i32 0, i32 5
  store i64 0, i64* %36, align 8
  %37 = load %struct.TYPE_16__*, %struct.TYPE_16__** %15, align 8
  %38 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %37, i32 0, i32 4
  store i64 0, i64* %38, align 8
  %39 = load %struct.TYPE_16__*, %struct.TYPE_16__** %15, align 8
  %40 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %39, i32 0, i32 3
  store i64 0, i64* %40, align 8
  %41 = load i8*, i8** %9, align 8
  %42 = getelementptr inbounds i8, i8* %41, i64 0
  %43 = load i8, i8* %42, align 1
  %44 = zext i8 %43 to i32
  %45 = load %struct.TYPE_16__*, %struct.TYPE_16__** %15, align 8
  %46 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %45, i32 0, i32 2
  %47 = load i64, i64* %46, align 8
  %48 = trunc i64 %47 to i32
  %49 = call i32 (i8*, i32, ...) @printk(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0), i32 %44, i32 %48)
  %50 = call i32 @SCSI_LOG_TIMEOUT(i32 4, i32 %49)
  %51 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %52 = load i8*, i8** %9, align 8
  %53 = call i32 @sg_start_req(%struct.TYPE_17__* %51, i8* %52)
  store i32 %53, i32* %12, align 4
  %54 = load i32, i32* %12, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %63

56:                                               ; preds = %5
  %57 = load i32, i32* %12, align 4
  %58 = call i32 (i8*, i32, ...) @printk(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i32 %57)
  %59 = call i32 @SCSI_LOG_TIMEOUT(i32 1, i32 %58)
  %60 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %61 = call i32 @sg_finish_rem_req(%struct.TYPE_17__* %60)
  %62 = load i32, i32* %12, align 4
  store i32 %62, i32* %6, align 4
  br label %123

63:                                               ; preds = %5
  %64 = load %struct.TYPE_19__*, %struct.TYPE_19__** %14, align 8
  %65 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %64, i32 0, i32 2
  %66 = load i64, i64* %65, align 8
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %85

68:                                               ; preds = %63
  %69 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %70 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %69, i32 0, i32 1
  %71 = load i64, i64* %70, align 8
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %80

73:                                               ; preds = %68
  %74 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %75 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %74, i32 0, i32 0
  %76 = load %struct.TYPE_13__*, %struct.TYPE_13__** %75, align 8
  %77 = load i32, i32* @EIO, align 4
  %78 = sub nsw i32 0, %77
  %79 = call i32 @blk_end_request_all(%struct.TYPE_13__* %76, i32 %78)
  br label %80

80:                                               ; preds = %73, %68
  %81 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %82 = call i32 @sg_finish_rem_req(%struct.TYPE_17__* %81)
  %83 = load i32, i32* @ENODEV, align 4
  %84 = sub nsw i32 0, %83
  store i32 %84, i32* %6, align 4
  br label %123

85:                                               ; preds = %63
  %86 = load %struct.TYPE_16__*, %struct.TYPE_16__** %15, align 8
  %87 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  switch i32 %88, label %95 [
    i32 129, label %89
    i32 131, label %89
    i32 130, label %91
    i32 128, label %93
  ]

89:                                               ; preds = %85, %85
  %90 = load i32, i32* @DMA_FROM_DEVICE, align 4
  store i32 %90, i32* %13, align 4
  br label %97

91:                                               ; preds = %85
  %92 = load i32, i32* @DMA_TO_DEVICE, align 4
  store i32 %92, i32* %13, align 4
  br label %97

93:                                               ; preds = %85
  %94 = load i32, i32* @DMA_BIDIRECTIONAL, align 4
  store i32 %94, i32* %13, align 4
  br label %97

95:                                               ; preds = %85
  %96 = load i32, i32* @DMA_NONE, align 4
  store i32 %96, i32* %13, align 4
  br label %97

97:                                               ; preds = %95, %93, %91, %89
  %98 = load i32, i32* @jiffies, align 4
  %99 = call i32 @jiffies_to_msecs(i32 %98)
  %100 = load %struct.TYPE_16__*, %struct.TYPE_16__** %15, align 8
  %101 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %100, i32 0, i32 1
  store i32 %99, i32* %101, align 4
  %102 = load i32, i32* %10, align 4
  %103 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %104 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %103, i32 0, i32 0
  %105 = load %struct.TYPE_13__*, %struct.TYPE_13__** %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %105, i32 0, i32 0
  store i32 %102, i32* %106, align 4
  %107 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %108 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %107, i32 0, i32 0
  %109 = call i32 @kref_get(i32* %108)
  %110 = load %struct.TYPE_19__*, %struct.TYPE_19__** %14, align 8
  %111 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %110, i32 0, i32 1
  %112 = load %struct.TYPE_15__*, %struct.TYPE_15__** %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  %115 = load %struct.TYPE_19__*, %struct.TYPE_19__** %14, align 8
  %116 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 8
  %118 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %119 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %118, i32 0, i32 0
  %120 = load %struct.TYPE_13__*, %struct.TYPE_13__** %119, align 8
  %121 = load i32, i32* @sg_rq_end_io, align 4
  %122 = call i32 @blk_execute_rq_nowait(i32 %114, i32 %117, %struct.TYPE_13__* %120, i32 1, i32 %121)
  store i32 0, i32* %6, align 4
  br label %123

123:                                              ; preds = %97, %80, %56
  %124 = load i32, i32* %6, align 4
  ret i32 %124
}

declare dso_local i32 @SCSI_LOG_TIMEOUT(i32, i32) #1

declare dso_local i32 @printk(i8*, i32, ...) #1

declare dso_local i32 @sg_start_req(%struct.TYPE_17__*, i8*) #1

declare dso_local i32 @sg_finish_rem_req(%struct.TYPE_17__*) #1

declare dso_local i32 @blk_end_request_all(%struct.TYPE_13__*, i32) #1

declare dso_local i32 @jiffies_to_msecs(i32) #1

declare dso_local i32 @kref_get(i32*) #1

declare dso_local i32 @blk_execute_rq_nowait(i32, i32, %struct.TYPE_13__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
