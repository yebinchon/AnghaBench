; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/scsi/extr_zfcp_qdio.c_zfcp_qdio_int_resp.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/scsi/extr_zfcp_qdio.c_zfcp_qdio_int_resp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ccw_device = type { i32 }
%struct.zfcp_qdio = type { %struct.zfcp_adapter*, %struct.TYPE_4__ }
%struct.zfcp_adapter = type { i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__** }
%struct.TYPE_3__ = type { %struct.qdio_buffer_element* }
%struct.qdio_buffer_element = type { i64, i64 }

@FSF_MAX_SBALS_PER_REQ = common dso_local global i32 0, align 4
@QDIO_MAX_BUFFERS_PER_Q = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"qdires1\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ccw_device*, i32, i32, i32, i32, i64)* @zfcp_qdio_int_resp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @zfcp_qdio_int_resp(%struct.ccw_device* %0, i32 %1, i32 %2, i32 %3, i32 %4, i64 %5) #0 {
  %7 = alloca %struct.ccw_device*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca %struct.zfcp_qdio*, align 8
  %14 = alloca %struct.zfcp_adapter*, align 8
  %15 = alloca %struct.qdio_buffer_element*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i8*, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  store %struct.ccw_device* %0, %struct.ccw_device** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i64 %5, i64* %12, align 8
  %23 = load i64, i64* %12, align 8
  %24 = inttoptr i64 %23 to %struct.zfcp_qdio*
  store %struct.zfcp_qdio* %24, %struct.zfcp_qdio** %13, align 8
  %25 = load %struct.zfcp_qdio*, %struct.zfcp_qdio** %13, align 8
  %26 = getelementptr inbounds %struct.zfcp_qdio, %struct.zfcp_qdio* %25, i32 0, i32 0
  %27 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %26, align 8
  store %struct.zfcp_adapter* %27, %struct.zfcp_adapter** %14, align 8
  %28 = load i32, i32* @FSF_MAX_SBALS_PER_REQ, align 4
  %29 = add nsw i32 %28, 1
  %30 = zext i32 %29 to i64
  %31 = call i8* @llvm.stacksave()
  store i8* %31, i8** %18, align 8
  %32 = alloca i8*, i64 %30, align 16
  store i64 %30, i64* %19, align 8
  store i64 0, i64* %20, align 8
  store i32 0, i32* %21, align 4
  %33 = load i32, i32* %8, align 4
  %34 = call i64 @unlikely(i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %115

36:                                               ; preds = %6
  %37 = load i32, i32* @FSF_MAX_SBALS_PER_REQ, align 4
  %38 = add nsw i32 %37, 1
  %39 = sext i32 %38 to i64
  %40 = mul i64 %39, 8
  %41 = trunc i64 %40 to i32
  %42 = call i32 @memset(i8** %32, i32 0, i32 %41)
  %43 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %14, align 8
  %44 = call i64 @zfcp_adapter_multi_buffer_active(%struct.zfcp_adapter* %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %93

46:                                               ; preds = %36
  %47 = load %struct.zfcp_qdio*, %struct.zfcp_qdio** %13, align 8
  %48 = getelementptr inbounds %struct.zfcp_qdio, %struct.zfcp_qdio* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 0
  %50 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %49, align 8
  %51 = load i32, i32* %10, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %50, i64 %52
  %54 = load %struct.TYPE_3__*, %struct.TYPE_3__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 0
  %56 = load %struct.qdio_buffer_element*, %struct.qdio_buffer_element** %55, align 8
  store %struct.qdio_buffer_element* %56, %struct.qdio_buffer_element** %15, align 8
  %57 = load %struct.qdio_buffer_element*, %struct.qdio_buffer_element** %15, align 8
  %58 = getelementptr inbounds %struct.qdio_buffer_element, %struct.qdio_buffer_element* %57, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  store i64 %59, i64* %20, align 8
  %60 = load %struct.qdio_buffer_element*, %struct.qdio_buffer_element** %15, align 8
  %61 = getelementptr inbounds %struct.qdio_buffer_element, %struct.qdio_buffer_element* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = add nsw i64 %62, 1
  %64 = load i32, i32* @FSF_MAX_SBALS_PER_REQ, align 4
  %65 = add nsw i32 %64, 1
  %66 = call i32 @min(i64 %63, i32 %65)
  store i32 %66, i32* %21, align 4
  store i32 0, i32* %16, align 4
  br label %67

67:                                               ; preds = %89, %46
  %68 = load i32, i32* %16, align 4
  %69 = load i32, i32* %21, align 4
  %70 = icmp slt i32 %68, %69
  br i1 %70, label %71, label %92

71:                                               ; preds = %67
  %72 = load i32, i32* %10, align 4
  %73 = load i32, i32* %16, align 4
  %74 = add nsw i32 %72, %73
  %75 = load i32, i32* @QDIO_MAX_BUFFERS_PER_Q, align 4
  %76 = srem i32 %74, %75
  store i32 %76, i32* %17, align 4
  %77 = load %struct.zfcp_qdio*, %struct.zfcp_qdio** %13, align 8
  %78 = getelementptr inbounds %struct.zfcp_qdio, %struct.zfcp_qdio* %77, i32 0, i32 1
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 0
  %80 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %79, align 8
  %81 = load i32, i32* %17, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %80, i64 %82
  %84 = load %struct.TYPE_3__*, %struct.TYPE_3__** %83, align 8
  %85 = bitcast %struct.TYPE_3__* %84 to i8*
  %86 = load i32, i32* %16, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds i8*, i8** %32, i64 %87
  store i8* %85, i8** %88, align 8
  br label %89

89:                                               ; preds = %71
  %90 = load i32, i32* %16, align 4
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* %16, align 4
  br label %67

92:                                               ; preds = %67
  br label %93

93:                                               ; preds = %92, %36
  %94 = load %struct.zfcp_qdio*, %struct.zfcp_qdio** %13, align 8
  %95 = getelementptr inbounds %struct.zfcp_qdio, %struct.zfcp_qdio* %94, i32 0, i32 0
  %96 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %95, align 8
  %97 = getelementptr inbounds %struct.zfcp_adapter, %struct.zfcp_adapter* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = load i32, i32* %8, align 4
  %100 = load i32, i32* %10, align 4
  %101 = load i32, i32* %11, align 4
  %102 = load i64, i64* %20, align 8
  %103 = load i32, i32* %21, align 4
  %104 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %14, align 8
  %105 = call i64 @zfcp_adapter_multi_buffer_active(%struct.zfcp_adapter* %104)
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %108

107:                                              ; preds = %93
  br label %109

108:                                              ; preds = %93
  br label %109

109:                                              ; preds = %108, %107
  %110 = phi i8** [ %32, %107 ], [ null, %108 ]
  %111 = call i32 @zfcp_dbf_hba_qdio(i32 %98, i32 %99, i32 %100, i32 %101, i64 %102, i32 %103, i8** %110)
  %112 = load %struct.zfcp_qdio*, %struct.zfcp_qdio** %13, align 8
  %113 = load i32, i32* %8, align 4
  %114 = call i32 @zfcp_qdio_handler_error(%struct.zfcp_qdio* %112, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 %113)
  store i32 1, i32* %22, align 4
  br label %136

115:                                              ; preds = %6
  store i32 0, i32* %16, align 4
  br label %116

116:                                              ; preds = %129, %115
  %117 = load i32, i32* %16, align 4
  %118 = load i32, i32* %11, align 4
  %119 = icmp slt i32 %117, %118
  br i1 %119, label %120, label %132

120:                                              ; preds = %116
  %121 = load i32, i32* %10, align 4
  %122 = load i32, i32* %16, align 4
  %123 = add nsw i32 %121, %122
  %124 = load i32, i32* @QDIO_MAX_BUFFERS_PER_Q, align 4
  %125 = srem i32 %123, %124
  store i32 %125, i32* %17, align 4
  %126 = load %struct.zfcp_qdio*, %struct.zfcp_qdio** %13, align 8
  %127 = load i32, i32* %17, align 4
  %128 = call i32 @zfcp_fsf_reqid_check(%struct.zfcp_qdio* %126, i32 %127)
  br label %129

129:                                              ; preds = %120
  %130 = load i32, i32* %16, align 4
  %131 = add nsw i32 %130, 1
  store i32 %131, i32* %16, align 4
  br label %116

132:                                              ; preds = %116
  %133 = load %struct.zfcp_qdio*, %struct.zfcp_qdio** %13, align 8
  %134 = load i32, i32* %11, align 4
  %135 = call i32 @zfcp_qdio_resp_put_back(%struct.zfcp_qdio* %133, i32 %134)
  store i32 0, i32* %22, align 4
  br label %136

136:                                              ; preds = %132, %109
  %137 = load i8*, i8** %18, align 8
  call void @llvm.stackrestore(i8* %137)
  %138 = load i32, i32* %22, align 4
  switch i32 %138, label %140 [
    i32 0, label %139
    i32 1, label %139
  ]

139:                                              ; preds = %136, %136
  ret void

140:                                              ; preds = %136
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @unlikely(i32) #2

declare dso_local i32 @memset(i8**, i32, i32) #2

declare dso_local i64 @zfcp_adapter_multi_buffer_active(%struct.zfcp_adapter*) #2

declare dso_local i32 @min(i64, i32) #2

declare dso_local i32 @zfcp_dbf_hba_qdio(i32, i32, i32, i32, i64, i32, i8**) #2

declare dso_local i32 @zfcp_qdio_handler_error(%struct.zfcp_qdio*, i8*, i32) #2

declare dso_local i32 @zfcp_fsf_reqid_check(%struct.zfcp_qdio*, i32) #2

declare dso_local i32 @zfcp_qdio_resp_put_back(%struct.zfcp_qdio*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
