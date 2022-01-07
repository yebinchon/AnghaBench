; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/block/extr_bsg-lib.c_bsg_create_job.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/block/extr_bsg-lib.c_bsg_create_job.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.request = type { i64, i32, i32, i32, %struct.bsg_job*, %struct.request* }
%struct.bsg_job = type { %struct.TYPE_2__, %struct.device*, %struct.TYPE_2__, i32, i32, i32, i32, i8*, %struct.request* }
%struct.TYPE_2__ = type { %struct.bsg_job* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@SCSI_SENSE_BUFFERSIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.request*, i32)* @bsg_create_job to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bsg_create_job(%struct.device* %0, %struct.request* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.request*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.request*, align 8
  %9 = alloca %struct.bsg_job*, align 8
  %10 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %5, align 8
  store %struct.request* %1, %struct.request** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load %struct.request*, %struct.request** %6, align 8
  %12 = getelementptr inbounds %struct.request, %struct.request* %11, i32 0, i32 5
  %13 = load %struct.request*, %struct.request** %12, align 8
  store %struct.request* %13, %struct.request** %8, align 8
  %14 = load %struct.request*, %struct.request** %6, align 8
  %15 = getelementptr inbounds %struct.request, %struct.request* %14, i32 0, i32 4
  %16 = load %struct.bsg_job*, %struct.bsg_job** %15, align 8
  %17 = call i32 @BUG_ON(%struct.bsg_job* %16)
  %18 = load i32, i32* %7, align 4
  %19 = sext i32 %18 to i64
  %20 = add i64 56, %19
  %21 = trunc i64 %20 to i32
  %22 = load i32, i32* @GFP_KERNEL, align 4
  %23 = call %struct.bsg_job* @kzalloc(i32 %21, i32 %22)
  store %struct.bsg_job* %23, %struct.bsg_job** %9, align 8
  %24 = load %struct.bsg_job*, %struct.bsg_job** %9, align 8
  %25 = icmp ne %struct.bsg_job* %24, null
  br i1 %25, label %29, label %26

26:                                               ; preds = %3
  %27 = load i32, i32* @ENOMEM, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %4, align 4
  br label %112

29:                                               ; preds = %3
  %30 = load %struct.bsg_job*, %struct.bsg_job** %9, align 8
  %31 = load %struct.request*, %struct.request** %6, align 8
  %32 = getelementptr inbounds %struct.request, %struct.request* %31, i32 0, i32 4
  store %struct.bsg_job* %30, %struct.bsg_job** %32, align 8
  %33 = load %struct.request*, %struct.request** %6, align 8
  %34 = load %struct.bsg_job*, %struct.bsg_job** %9, align 8
  %35 = getelementptr inbounds %struct.bsg_job, %struct.bsg_job* %34, i32 0, i32 8
  store %struct.request* %33, %struct.request** %35, align 8
  %36 = load i32, i32* %7, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %44

38:                                               ; preds = %29
  %39 = load %struct.bsg_job*, %struct.bsg_job** %9, align 8
  %40 = getelementptr inbounds %struct.bsg_job, %struct.bsg_job* %39, i64 1
  %41 = bitcast %struct.bsg_job* %40 to i8*
  %42 = load %struct.bsg_job*, %struct.bsg_job** %9, align 8
  %43 = getelementptr inbounds %struct.bsg_job, %struct.bsg_job* %42, i32 0, i32 7
  store i8* %41, i8** %43, align 8
  br label %44

44:                                               ; preds = %38, %29
  %45 = load %struct.request*, %struct.request** %6, align 8
  %46 = getelementptr inbounds %struct.request, %struct.request* %45, i32 0, i32 3
  %47 = load i32, i32* %46, align 8
  %48 = load %struct.bsg_job*, %struct.bsg_job** %9, align 8
  %49 = getelementptr inbounds %struct.bsg_job, %struct.bsg_job* %48, i32 0, i32 6
  store i32 %47, i32* %49, align 4
  %50 = load %struct.request*, %struct.request** %6, align 8
  %51 = getelementptr inbounds %struct.request, %struct.request* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.bsg_job*, %struct.bsg_job** %9, align 8
  %54 = getelementptr inbounds %struct.bsg_job, %struct.bsg_job* %53, i32 0, i32 5
  store i32 %52, i32* %54, align 8
  %55 = load %struct.request*, %struct.request** %6, align 8
  %56 = getelementptr inbounds %struct.request, %struct.request* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 8
  %58 = load %struct.bsg_job*, %struct.bsg_job** %9, align 8
  %59 = getelementptr inbounds %struct.bsg_job, %struct.bsg_job* %58, i32 0, i32 4
  store i32 %57, i32* %59, align 4
  %60 = load i32, i32* @SCSI_SENSE_BUFFERSIZE, align 4
  %61 = load %struct.bsg_job*, %struct.bsg_job** %9, align 8
  %62 = getelementptr inbounds %struct.bsg_job, %struct.bsg_job* %61, i32 0, i32 3
  store i32 %60, i32* %62, align 8
  %63 = load %struct.request*, %struct.request** %6, align 8
  %64 = getelementptr inbounds %struct.request, %struct.request* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %76

67:                                               ; preds = %44
  %68 = load %struct.bsg_job*, %struct.bsg_job** %9, align 8
  %69 = getelementptr inbounds %struct.bsg_job, %struct.bsg_job* %68, i32 0, i32 0
  %70 = load %struct.request*, %struct.request** %6, align 8
  %71 = call i32 @bsg_map_buffer(%struct.TYPE_2__* %69, %struct.request* %70)
  store i32 %71, i32* %10, align 4
  %72 = load i32, i32* %10, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %75

74:                                               ; preds = %67
  br label %107

75:                                               ; preds = %67
  br label %76

76:                                               ; preds = %75, %44
  %77 = load %struct.request*, %struct.request** %8, align 8
  %78 = icmp ne %struct.request* %77, null
  br i1 %78, label %79, label %93

79:                                               ; preds = %76
  %80 = load %struct.request*, %struct.request** %8, align 8
  %81 = getelementptr inbounds %struct.request, %struct.request* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %93

84:                                               ; preds = %79
  %85 = load %struct.bsg_job*, %struct.bsg_job** %9, align 8
  %86 = getelementptr inbounds %struct.bsg_job, %struct.bsg_job* %85, i32 0, i32 2
  %87 = load %struct.request*, %struct.request** %8, align 8
  %88 = call i32 @bsg_map_buffer(%struct.TYPE_2__* %86, %struct.request* %87)
  store i32 %88, i32* %10, align 4
  %89 = load i32, i32* %10, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %92

91:                                               ; preds = %84
  br label %101

92:                                               ; preds = %84
  br label %93

93:                                               ; preds = %92, %79, %76
  %94 = load %struct.device*, %struct.device** %5, align 8
  %95 = load %struct.bsg_job*, %struct.bsg_job** %9, align 8
  %96 = getelementptr inbounds %struct.bsg_job, %struct.bsg_job* %95, i32 0, i32 1
  store %struct.device* %94, %struct.device** %96, align 8
  %97 = load %struct.bsg_job*, %struct.bsg_job** %9, align 8
  %98 = getelementptr inbounds %struct.bsg_job, %struct.bsg_job* %97, i32 0, i32 1
  %99 = load %struct.device*, %struct.device** %98, align 8
  %100 = call i32 @get_device(%struct.device* %99)
  store i32 0, i32* %4, align 4
  br label %112

101:                                              ; preds = %91
  %102 = load %struct.bsg_job*, %struct.bsg_job** %9, align 8
  %103 = getelementptr inbounds %struct.bsg_job, %struct.bsg_job* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %103, i32 0, i32 0
  %105 = load %struct.bsg_job*, %struct.bsg_job** %104, align 8
  %106 = call i32 @kfree(%struct.bsg_job* %105)
  br label %107

107:                                              ; preds = %101, %74
  %108 = load %struct.bsg_job*, %struct.bsg_job** %9, align 8
  %109 = call i32 @kfree(%struct.bsg_job* %108)
  %110 = load i32, i32* @ENOMEM, align 4
  %111 = sub nsw i32 0, %110
  store i32 %111, i32* %4, align 4
  br label %112

112:                                              ; preds = %107, %93, %26
  %113 = load i32, i32* %4, align 4
  ret i32 %113
}

declare dso_local i32 @BUG_ON(%struct.bsg_job*) #1

declare dso_local %struct.bsg_job* @kzalloc(i32, i32) #1

declare dso_local i32 @bsg_map_buffer(%struct.TYPE_2__*, %struct.request*) #1

declare dso_local i32 @get_device(%struct.device*) #1

declare dso_local i32 @kfree(%struct.bsg_job*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
