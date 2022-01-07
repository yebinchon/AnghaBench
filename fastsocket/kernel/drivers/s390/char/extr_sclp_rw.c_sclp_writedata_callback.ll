; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/char/extr_sclp_rw.c_sclp_writedata_callback.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/char/extr_sclp_rw.c_sclp_writedata_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sclp_req = type { i64 }
%struct.sclp_buffer = type { i32 (%struct.sclp_buffer*, i32)*, %struct.TYPE_3__, i32, %struct.write_sccb* }
%struct.TYPE_3__ = type { i8* }
%struct.write_sccb = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.sccb_header = type { i32 }

@SCLP_REQ_FAILED = common dso_local global i64 0, align 8
@EIO = common dso_local global i32 0, align 4
@SCLP_BUFFER_MAX_RETRY = common dso_local global i32 0, align 4
@SCLP_REQ_FILLED = common dso_local global i8* null, align 8
@ENOMEM = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sclp_req*, i8*)* @sclp_writedata_callback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sclp_writedata_callback(%struct.sclp_req* %0, i8* %1) #0 {
  %3 = alloca %struct.sclp_req*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.sclp_buffer*, align 8
  %7 = alloca %struct.write_sccb*, align 8
  store %struct.sclp_req* %0, %struct.sclp_req** %3, align 8
  store i8* %1, i8** %4, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = bitcast i8* %8 to %struct.sclp_buffer*
  store %struct.sclp_buffer* %9, %struct.sclp_buffer** %6, align 8
  %10 = load %struct.sclp_buffer*, %struct.sclp_buffer** %6, align 8
  %11 = getelementptr inbounds %struct.sclp_buffer, %struct.sclp_buffer* %10, i32 0, i32 3
  %12 = load %struct.write_sccb*, %struct.write_sccb** %11, align 8
  store %struct.write_sccb* %12, %struct.write_sccb** %7, align 8
  %13 = load %struct.sclp_req*, %struct.sclp_req** %3, align 8
  %14 = getelementptr inbounds %struct.sclp_req, %struct.sclp_req* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @SCLP_REQ_FAILED, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %32

18:                                               ; preds = %2
  %19 = load %struct.sclp_buffer*, %struct.sclp_buffer** %6, align 8
  %20 = getelementptr inbounds %struct.sclp_buffer, %struct.sclp_buffer* %19, i32 0, i32 0
  %21 = load i32 (%struct.sclp_buffer*, i32)*, i32 (%struct.sclp_buffer*, i32)** %20, align 8
  %22 = icmp ne i32 (%struct.sclp_buffer*, i32)* %21, null
  br i1 %22, label %23, label %31

23:                                               ; preds = %18
  %24 = load %struct.sclp_buffer*, %struct.sclp_buffer** %6, align 8
  %25 = getelementptr inbounds %struct.sclp_buffer, %struct.sclp_buffer* %24, i32 0, i32 0
  %26 = load i32 (%struct.sclp_buffer*, i32)*, i32 (%struct.sclp_buffer*, i32)** %25, align 8
  %27 = load %struct.sclp_buffer*, %struct.sclp_buffer** %6, align 8
  %28 = load i32, i32* @EIO, align 4
  %29 = sub nsw i32 0, %28
  %30 = call i32 %26(%struct.sclp_buffer* %27, i32 %29)
  br label %31

31:                                               ; preds = %23, %18
  br label %118

32:                                               ; preds = %2
  %33 = load %struct.write_sccb*, %struct.write_sccb** %7, align 8
  %34 = getelementptr inbounds %struct.write_sccb, %struct.write_sccb* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  switch i32 %36, label %93 [
    i32 32, label %37
    i32 832, label %38
    i32 64, label %69
    i32 1520, label %69
  ]

37:                                               ; preds = %32
  store i32 0, i32* %5, align 4
  br label %106

38:                                               ; preds = %32
  %39 = load %struct.sclp_buffer*, %struct.sclp_buffer** %6, align 8
  %40 = getelementptr inbounds %struct.sclp_buffer, %struct.sclp_buffer* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 8
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %40, align 8
  %43 = load i32, i32* @SCLP_BUFFER_MAX_RETRY, align 4
  %44 = icmp sgt i32 %42, %43
  br i1 %44, label %45, label %48

45:                                               ; preds = %38
  %46 = load i32, i32* @EIO, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %5, align 4
  br label %106

48:                                               ; preds = %38
  %49 = load %struct.write_sccb*, %struct.write_sccb** %7, align 8
  %50 = bitcast %struct.write_sccb* %49 to %struct.sccb_header*
  %51 = call i32 @sclp_remove_processed(%struct.sccb_header* %50)
  %52 = icmp sgt i32 %51, 0
  br i1 %52, label %53, label %67

53:                                               ; preds = %48
  %54 = load %struct.write_sccb*, %struct.write_sccb** %7, align 8
  %55 = getelementptr inbounds %struct.write_sccb, %struct.write_sccb* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 0
  store i32 0, i32* %56, align 4
  %57 = load i8*, i8** @SCLP_REQ_FILLED, align 8
  %58 = load %struct.sclp_buffer*, %struct.sclp_buffer** %6, align 8
  %59 = getelementptr inbounds %struct.sclp_buffer, %struct.sclp_buffer* %58, i32 0, i32 1
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 0
  store i8* %57, i8** %60, align 8
  %61 = load %struct.sclp_req*, %struct.sclp_req** %3, align 8
  %62 = call i32 @sclp_add_request(%struct.sclp_req* %61)
  store i32 %62, i32* %5, align 4
  %63 = load i32, i32* %5, align 4
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %53
  br label %118

66:                                               ; preds = %53
  br label %68

67:                                               ; preds = %48
  store i32 0, i32* %5, align 4
  br label %68

68:                                               ; preds = %67, %66
  br label %106

69:                                               ; preds = %32, %32
  %70 = load %struct.sclp_buffer*, %struct.sclp_buffer** %6, align 8
  %71 = getelementptr inbounds %struct.sclp_buffer, %struct.sclp_buffer* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 8
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %71, align 8
  %74 = load i32, i32* @SCLP_BUFFER_MAX_RETRY, align 4
  %75 = icmp sgt i32 %73, %74
  br i1 %75, label %76, label %79

76:                                               ; preds = %69
  %77 = load i32, i32* @EIO, align 4
  %78 = sub nsw i32 0, %77
  store i32 %78, i32* %5, align 4
  br label %106

79:                                               ; preds = %69
  %80 = load %struct.write_sccb*, %struct.write_sccb** %7, align 8
  %81 = getelementptr inbounds %struct.write_sccb, %struct.write_sccb* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %81, i32 0, i32 0
  store i32 0, i32* %82, align 4
  %83 = load i8*, i8** @SCLP_REQ_FILLED, align 8
  %84 = load %struct.sclp_buffer*, %struct.sclp_buffer** %6, align 8
  %85 = getelementptr inbounds %struct.sclp_buffer, %struct.sclp_buffer* %84, i32 0, i32 1
  %86 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %85, i32 0, i32 0
  store i8* %83, i8** %86, align 8
  %87 = load %struct.sclp_req*, %struct.sclp_req** %3, align 8
  %88 = call i32 @sclp_add_request(%struct.sclp_req* %87)
  store i32 %88, i32* %5, align 4
  %89 = load i32, i32* %5, align 4
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %91, label %92

91:                                               ; preds = %79
  br label %118

92:                                               ; preds = %79
  br label %106

93:                                               ; preds = %32
  %94 = load %struct.write_sccb*, %struct.write_sccb** %7, align 8
  %95 = getelementptr inbounds %struct.write_sccb, %struct.write_sccb* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = icmp eq i32 %97, 29168
  br i1 %98, label %99, label %102

99:                                               ; preds = %93
  %100 = load i32, i32* @ENOMEM, align 4
  %101 = sub nsw i32 0, %100
  store i32 %101, i32* %5, align 4
  br label %105

102:                                              ; preds = %93
  %103 = load i32, i32* @EINVAL, align 4
  %104 = sub nsw i32 0, %103
  store i32 %104, i32* %5, align 4
  br label %105

105:                                              ; preds = %102, %99
  br label %106

106:                                              ; preds = %105, %92, %76, %68, %45, %37
  %107 = load %struct.sclp_buffer*, %struct.sclp_buffer** %6, align 8
  %108 = getelementptr inbounds %struct.sclp_buffer, %struct.sclp_buffer* %107, i32 0, i32 0
  %109 = load i32 (%struct.sclp_buffer*, i32)*, i32 (%struct.sclp_buffer*, i32)** %108, align 8
  %110 = icmp ne i32 (%struct.sclp_buffer*, i32)* %109, null
  br i1 %110, label %111, label %118

111:                                              ; preds = %106
  %112 = load %struct.sclp_buffer*, %struct.sclp_buffer** %6, align 8
  %113 = getelementptr inbounds %struct.sclp_buffer, %struct.sclp_buffer* %112, i32 0, i32 0
  %114 = load i32 (%struct.sclp_buffer*, i32)*, i32 (%struct.sclp_buffer*, i32)** %113, align 8
  %115 = load %struct.sclp_buffer*, %struct.sclp_buffer** %6, align 8
  %116 = load i32, i32* %5, align 4
  %117 = call i32 %114(%struct.sclp_buffer* %115, i32 %116)
  br label %118

118:                                              ; preds = %31, %65, %91, %111, %106
  ret void
}

declare dso_local i32 @sclp_remove_processed(%struct.sccb_header*) #1

declare dso_local i32 @sclp_add_request(%struct.sclp_req*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
