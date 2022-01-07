; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_scsi_lib.c_scsi_execute.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_scsi_lib.c_scsi_execute.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_device = type { i32 }
%struct.request = type { i8*, i32, i32, i32, i32, i32, i32, i32, i64, i32, i32 }

@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@DRIVER_ERROR = common dso_local global i32 0, align 4
@__GFP_WAIT = common dso_local global i32 0, align 4
@REQ_TYPE_BLOCK_PC = common dso_local global i32 0, align 4
@REQ_QUIET = common dso_local global i32 0, align 4
@REQ_PREEMPT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @scsi_execute(%struct.scsi_device* %0, i8* %1, i32 %2, i8* %3, i32 %4, i8* %5, i32 %6, i32 %7, i32 %8, i32* %9) #0 {
  %11 = alloca i32, align 4
  %12 = alloca %struct.scsi_device*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i8*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32*, align 8
  %22 = alloca %struct.request*, align 8
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  store %struct.scsi_device* %0, %struct.scsi_device** %12, align 8
  store i8* %1, i8** %13, align 8
  store i32 %2, i32* %14, align 4
  store i8* %3, i8** %15, align 8
  store i32 %4, i32* %16, align 4
  store i8* %5, i8** %17, align 8
  store i32 %6, i32* %18, align 4
  store i32 %7, i32* %19, align 4
  store i32 %8, i32* %20, align 4
  store i32* %9, i32** %21, align 8
  %25 = load i32, i32* %14, align 4
  %26 = load i32, i32* @DMA_TO_DEVICE, align 4
  %27 = icmp eq i32 %25, %26
  %28 = zext i1 %27 to i32
  store i32 %28, i32* %23, align 4
  %29 = load i32, i32* @DRIVER_ERROR, align 4
  %30 = shl i32 %29, 24
  store i32 %30, i32* %24, align 4
  %31 = load %struct.scsi_device*, %struct.scsi_device** %12, align 8
  %32 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* %23, align 4
  %35 = load i32, i32* @__GFP_WAIT, align 4
  %36 = call %struct.request* @blk_get_request(i32 %33, i32 %34, i32 %35)
  store %struct.request* %36, %struct.request** %22, align 8
  %37 = load %struct.request*, %struct.request** %22, align 8
  %38 = icmp ne %struct.request* %37, null
  br i1 %38, label %41, label %39

39:                                               ; preds = %10
  %40 = load i32, i32* %24, align 4
  store i32 %40, i32* %11, align 4
  br label %142

41:                                               ; preds = %10
  %42 = load i32, i32* %16, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %55

44:                                               ; preds = %41
  %45 = load %struct.scsi_device*, %struct.scsi_device** %12, align 8
  %46 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.request*, %struct.request** %22, align 8
  %49 = load i8*, i8** %15, align 8
  %50 = load i32, i32* %16, align 4
  %51 = load i32, i32* @__GFP_WAIT, align 4
  %52 = call i64 @blk_rq_map_kern(i32 %47, %struct.request* %48, i8* %49, i32 %50, i32 %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %44
  br label %138

55:                                               ; preds = %44, %41
  %56 = load i8*, i8** %13, align 8
  %57 = getelementptr inbounds i8, i8* %56, i64 0
  %58 = load i8, i8* %57, align 1
  %59 = call i32 @COMMAND_SIZE(i8 zeroext %58)
  %60 = load %struct.request*, %struct.request** %22, align 8
  %61 = getelementptr inbounds %struct.request, %struct.request* %60, i32 0, i32 9
  store i32 %59, i32* %61, align 8
  %62 = load %struct.request*, %struct.request** %22, align 8
  %63 = getelementptr inbounds %struct.request, %struct.request* %62, i32 0, i32 10
  %64 = load i32, i32* %63, align 4
  %65 = load i8*, i8** %13, align 8
  %66 = load %struct.request*, %struct.request** %22, align 8
  %67 = getelementptr inbounds %struct.request, %struct.request* %66, i32 0, i32 9
  %68 = load i32, i32* %67, align 8
  %69 = call i32 @memcpy(i32 %64, i8* %65, i32 %68)
  %70 = load i8*, i8** %17, align 8
  %71 = load %struct.request*, %struct.request** %22, align 8
  %72 = getelementptr inbounds %struct.request, %struct.request* %71, i32 0, i32 0
  store i8* %70, i8** %72, align 8
  %73 = load %struct.request*, %struct.request** %22, align 8
  %74 = getelementptr inbounds %struct.request, %struct.request* %73, i32 0, i32 8
  store i64 0, i64* %74, align 8
  %75 = load i32, i32* %19, align 4
  %76 = load %struct.request*, %struct.request** %22, align 8
  %77 = getelementptr inbounds %struct.request, %struct.request* %76, i32 0, i32 1
  store i32 %75, i32* %77, align 8
  %78 = load i32, i32* %18, align 4
  %79 = load %struct.request*, %struct.request** %22, align 8
  %80 = getelementptr inbounds %struct.request, %struct.request* %79, i32 0, i32 2
  store i32 %78, i32* %80, align 4
  %81 = load i32, i32* @REQ_TYPE_BLOCK_PC, align 4
  %82 = load %struct.request*, %struct.request** %22, align 8
  %83 = getelementptr inbounds %struct.request, %struct.request* %82, i32 0, i32 7
  store i32 %81, i32* %83, align 8
  %84 = load i32, i32* %20, align 4
  %85 = load i32, i32* @REQ_QUIET, align 4
  %86 = or i32 %84, %85
  %87 = load i32, i32* @REQ_PREEMPT, align 4
  %88 = or i32 %86, %87
  %89 = load %struct.request*, %struct.request** %22, align 8
  %90 = getelementptr inbounds %struct.request, %struct.request* %89, i32 0, i32 3
  %91 = load i32, i32* %90, align 8
  %92 = or i32 %91, %88
  store i32 %92, i32* %90, align 8
  %93 = load %struct.request*, %struct.request** %22, align 8
  %94 = getelementptr inbounds %struct.request, %struct.request* %93, i32 0, i32 6
  %95 = load i32, i32* %94, align 4
  %96 = load %struct.request*, %struct.request** %22, align 8
  %97 = call i32 @blk_execute_rq(i32 %95, i32* null, %struct.request* %96, i32 1)
  %98 = load %struct.request*, %struct.request** %22, align 8
  %99 = getelementptr inbounds %struct.request, %struct.request* %98, i32 0, i32 4
  %100 = load i32, i32* %99, align 4
  %101 = icmp ugt i32 %100, 0
  br i1 %101, label %102, label %108

102:                                              ; preds = %55
  %103 = load %struct.request*, %struct.request** %22, align 8
  %104 = getelementptr inbounds %struct.request, %struct.request* %103, i32 0, i32 4
  %105 = load i32, i32* %104, align 4
  %106 = load i32, i32* %16, align 4
  %107 = icmp ule i32 %105, %106
  br label %108

108:                                              ; preds = %102, %55
  %109 = phi i1 [ false, %55 ], [ %107, %102 ]
  %110 = zext i1 %109 to i32
  %111 = call i64 @unlikely(i32 %110)
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %126

113:                                              ; preds = %108
  %114 = load i8*, i8** %15, align 8
  %115 = load i32, i32* %16, align 4
  %116 = load %struct.request*, %struct.request** %22, align 8
  %117 = getelementptr inbounds %struct.request, %struct.request* %116, i32 0, i32 4
  %118 = load i32, i32* %117, align 4
  %119 = sub i32 %115, %118
  %120 = zext i32 %119 to i64
  %121 = getelementptr i8, i8* %114, i64 %120
  %122 = load %struct.request*, %struct.request** %22, align 8
  %123 = getelementptr inbounds %struct.request, %struct.request* %122, i32 0, i32 4
  %124 = load i32, i32* %123, align 4
  %125 = call i32 @memset(i8* %121, i32 0, i32 %124)
  br label %126

126:                                              ; preds = %113, %108
  %127 = load i32*, i32** %21, align 8
  %128 = icmp ne i32* %127, null
  br i1 %128, label %129, label %134

129:                                              ; preds = %126
  %130 = load %struct.request*, %struct.request** %22, align 8
  %131 = getelementptr inbounds %struct.request, %struct.request* %130, i32 0, i32 4
  %132 = load i32, i32* %131, align 4
  %133 = load i32*, i32** %21, align 8
  store i32 %132, i32* %133, align 4
  br label %134

134:                                              ; preds = %129, %126
  %135 = load %struct.request*, %struct.request** %22, align 8
  %136 = getelementptr inbounds %struct.request, %struct.request* %135, i32 0, i32 5
  %137 = load i32, i32* %136, align 8
  store i32 %137, i32* %24, align 4
  br label %138

138:                                              ; preds = %134, %54
  %139 = load %struct.request*, %struct.request** %22, align 8
  %140 = call i32 @blk_put_request(%struct.request* %139)
  %141 = load i32, i32* %24, align 4
  store i32 %141, i32* %11, align 4
  br label %142

142:                                              ; preds = %138, %39
  %143 = load i32, i32* %11, align 4
  ret i32 %143
}

declare dso_local %struct.request* @blk_get_request(i32, i32, i32) #1

declare dso_local i64 @blk_rq_map_kern(i32, %struct.request*, i8*, i32, i32) #1

declare dso_local i32 @COMMAND_SIZE(i8 zeroext) #1

declare dso_local i32 @memcpy(i32, i8*, i32) #1

declare dso_local i32 @blk_execute_rq(i32, i32*, %struct.request*, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @blk_put_request(%struct.request*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
