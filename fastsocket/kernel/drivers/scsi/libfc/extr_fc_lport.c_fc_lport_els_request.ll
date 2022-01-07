; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/libfc/extr_fc_lport.c_fc_lport_els_request.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/libfc/extr_fc_lport.c_fc_lport_els_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fc_bsg_job = type { %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i32, i32 }
%struct.TYPE_4__ = type { i32, i32, i32 }
%struct.fc_lport = type { %struct.TYPE_6__, i32 }
%struct.TYPE_6__ = type { i32 (%struct.fc_lport.0*, %struct.fc_frame*, i32, i32*, %struct.fc_bsg_info*, i32)* }
%struct.fc_lport.0 = type opaque
%struct.fc_frame = type opaque
%struct.fc_bsg_info = type opaque
%struct.fc_bsg_info.1 = type { i32, i32, i32, %struct.fc_lport*, %struct.fc_bsg_job* }
%struct.fc_frame.2 = type { i32 }
%struct.fc_frame_header = type { i64, i64, i64, i32, i32, i32, i32, i32 }

@ENOMEM = common dso_local global i32 0, align 4
@FC_RCTL_ELS_REQ = common dso_local global i32 0, align 4
@FC_TYPE_ELS = common dso_local global i32 0, align 4
@FC_FCTL_REQ = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ELS_LS_ACC = common dso_local global i32 0, align 4
@fc_lport_bsg_resp = common dso_local global i32 0, align 4
@ECOMM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fc_bsg_job*, %struct.fc_lport*, i32, i32)* @fc_lport_els_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fc_lport_els_request(%struct.fc_bsg_job* %0, %struct.fc_lport* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.fc_bsg_job*, align 8
  %7 = alloca %struct.fc_lport*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.fc_bsg_info.1*, align 8
  %11 = alloca %struct.fc_frame.2*, align 8
  %12 = alloca %struct.fc_frame_header*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  store %struct.fc_bsg_job* %0, %struct.fc_bsg_job** %6, align 8
  store %struct.fc_lport* %1, %struct.fc_lport** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %15 = load %struct.fc_lport*, %struct.fc_lport** %7, align 8
  %16 = load %struct.fc_bsg_job*, %struct.fc_bsg_job** %6, align 8
  %17 = getelementptr inbounds %struct.fc_bsg_job, %struct.fc_bsg_job* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call %struct.fc_frame.2* @fc_frame_alloc(%struct.fc_lport* %15, i32 %19)
  store %struct.fc_frame.2* %20, %struct.fc_frame.2** %11, align 8
  %21 = load %struct.fc_frame.2*, %struct.fc_frame.2** %11, align 8
  %22 = icmp ne %struct.fc_frame.2* %21, null
  br i1 %22, label %26, label %23

23:                                               ; preds = %4
  %24 = load i32, i32* @ENOMEM, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %5, align 4
  br label %127

26:                                               ; preds = %4
  %27 = load %struct.fc_bsg_job*, %struct.fc_bsg_job** %6, align 8
  %28 = getelementptr inbounds %struct.fc_bsg_job, %struct.fc_bsg_job* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  store i32 %30, i32* %14, align 4
  %31 = load %struct.fc_frame.2*, %struct.fc_frame.2** %11, align 8
  %32 = load i32, i32* %14, align 4
  %33 = call i8* @fc_frame_payload_get(%struct.fc_frame.2* %31, i32 %32)
  store i8* %33, i8** %13, align 8
  %34 = load %struct.fc_bsg_job*, %struct.fc_bsg_job** %6, align 8
  %35 = getelementptr inbounds %struct.fc_bsg_job, %struct.fc_bsg_job* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.fc_bsg_job*, %struct.fc_bsg_job** %6, align 8
  %39 = getelementptr inbounds %struct.fc_bsg_job, %struct.fc_bsg_job* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = load i8*, i8** %13, align 8
  %43 = load i32, i32* %14, align 4
  %44 = call i32 @sg_copy_to_buffer(i32 %37, i32 %41, i8* %42, i32 %43)
  %45 = load %struct.fc_frame.2*, %struct.fc_frame.2** %11, align 8
  %46 = call %struct.fc_frame_header* @fc_frame_header_get(%struct.fc_frame.2* %45)
  store %struct.fc_frame_header* %46, %struct.fc_frame_header** %12, align 8
  %47 = load i32, i32* @FC_RCTL_ELS_REQ, align 4
  %48 = load %struct.fc_frame_header*, %struct.fc_frame_header** %12, align 8
  %49 = getelementptr inbounds %struct.fc_frame_header, %struct.fc_frame_header* %48, i32 0, i32 7
  store i32 %47, i32* %49, align 8
  %50 = load %struct.fc_frame_header*, %struct.fc_frame_header** %12, align 8
  %51 = getelementptr inbounds %struct.fc_frame_header, %struct.fc_frame_header* %50, i32 0, i32 6
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* %8, align 4
  %54 = call i32 @hton24(i32 %52, i32 %53)
  %55 = load %struct.fc_frame_header*, %struct.fc_frame_header** %12, align 8
  %56 = getelementptr inbounds %struct.fc_frame_header, %struct.fc_frame_header* %55, i32 0, i32 5
  %57 = load i32, i32* %56, align 8
  %58 = load %struct.fc_lport*, %struct.fc_lport** %7, align 8
  %59 = getelementptr inbounds %struct.fc_lport, %struct.fc_lport* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 8
  %61 = call i32 @hton24(i32 %57, i32 %60)
  %62 = load i32, i32* @FC_TYPE_ELS, align 4
  %63 = load %struct.fc_frame_header*, %struct.fc_frame_header** %12, align 8
  %64 = getelementptr inbounds %struct.fc_frame_header, %struct.fc_frame_header* %63, i32 0, i32 4
  store i32 %62, i32* %64, align 4
  %65 = load %struct.fc_frame_header*, %struct.fc_frame_header** %12, align 8
  %66 = getelementptr inbounds %struct.fc_frame_header, %struct.fc_frame_header* %65, i32 0, i32 3
  %67 = load i32, i32* %66, align 8
  %68 = load i32, i32* @FC_FCTL_REQ, align 4
  %69 = call i32 @hton24(i32 %67, i32 %68)
  %70 = load %struct.fc_frame_header*, %struct.fc_frame_header** %12, align 8
  %71 = getelementptr inbounds %struct.fc_frame_header, %struct.fc_frame_header* %70, i32 0, i32 2
  store i64 0, i64* %71, align 8
  %72 = load %struct.fc_frame_header*, %struct.fc_frame_header** %12, align 8
  %73 = getelementptr inbounds %struct.fc_frame_header, %struct.fc_frame_header* %72, i32 0, i32 1
  store i64 0, i64* %73, align 8
  %74 = load %struct.fc_frame_header*, %struct.fc_frame_header** %12, align 8
  %75 = getelementptr inbounds %struct.fc_frame_header, %struct.fc_frame_header* %74, i32 0, i32 0
  store i64 0, i64* %75, align 8
  %76 = load i32, i32* @GFP_KERNEL, align 4
  %77 = call %struct.fc_bsg_info.1* @kzalloc(i32 32, i32 %76)
  store %struct.fc_bsg_info.1* %77, %struct.fc_bsg_info.1** %10, align 8
  %78 = load %struct.fc_bsg_info.1*, %struct.fc_bsg_info.1** %10, align 8
  %79 = icmp ne %struct.fc_bsg_info.1* %78, null
  br i1 %79, label %85, label %80

80:                                               ; preds = %26
  %81 = load %struct.fc_frame.2*, %struct.fc_frame.2** %11, align 8
  %82 = call i32 @fc_frame_free(%struct.fc_frame.2* %81)
  %83 = load i32, i32* @ENOMEM, align 4
  %84 = sub nsw i32 0, %83
  store i32 %84, i32* %5, align 4
  br label %127

85:                                               ; preds = %26
  %86 = load %struct.fc_bsg_job*, %struct.fc_bsg_job** %6, align 8
  %87 = load %struct.fc_bsg_info.1*, %struct.fc_bsg_info.1** %10, align 8
  %88 = getelementptr inbounds %struct.fc_bsg_info.1, %struct.fc_bsg_info.1* %87, i32 0, i32 4
  store %struct.fc_bsg_job* %86, %struct.fc_bsg_job** %88, align 8
  %89 = load %struct.fc_lport*, %struct.fc_lport** %7, align 8
  %90 = load %struct.fc_bsg_info.1*, %struct.fc_bsg_info.1** %10, align 8
  %91 = getelementptr inbounds %struct.fc_bsg_info.1, %struct.fc_bsg_info.1* %90, i32 0, i32 3
  store %struct.fc_lport* %89, %struct.fc_lport** %91, align 8
  %92 = load i32, i32* @ELS_LS_ACC, align 4
  %93 = load %struct.fc_bsg_info.1*, %struct.fc_bsg_info.1** %10, align 8
  %94 = getelementptr inbounds %struct.fc_bsg_info.1, %struct.fc_bsg_info.1* %93, i32 0, i32 2
  store i32 %92, i32* %94, align 8
  %95 = load %struct.fc_bsg_job*, %struct.fc_bsg_job** %6, align 8
  %96 = getelementptr inbounds %struct.fc_bsg_job, %struct.fc_bsg_job* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = load %struct.fc_bsg_info.1*, %struct.fc_bsg_info.1** %10, align 8
  %100 = getelementptr inbounds %struct.fc_bsg_info.1, %struct.fc_bsg_info.1* %99, i32 0, i32 1
  store i32 %98, i32* %100, align 4
  %101 = load %struct.fc_bsg_job*, %struct.fc_bsg_job** %6, align 8
  %102 = getelementptr inbounds %struct.fc_bsg_job, %struct.fc_bsg_job* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = load %struct.fc_bsg_info.1*, %struct.fc_bsg_info.1** %10, align 8
  %106 = getelementptr inbounds %struct.fc_bsg_info.1, %struct.fc_bsg_info.1* %105, i32 0, i32 0
  store i32 %104, i32* %106, align 8
  %107 = load %struct.fc_lport*, %struct.fc_lport** %7, align 8
  %108 = getelementptr inbounds %struct.fc_lport, %struct.fc_lport* %107, i32 0, i32 0
  %109 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %108, i32 0, i32 0
  %110 = load i32 (%struct.fc_lport.0*, %struct.fc_frame*, i32, i32*, %struct.fc_bsg_info*, i32)*, i32 (%struct.fc_lport.0*, %struct.fc_frame*, i32, i32*, %struct.fc_bsg_info*, i32)** %109, align 8
  %111 = load %struct.fc_lport*, %struct.fc_lport** %7, align 8
  %112 = bitcast %struct.fc_lport* %111 to %struct.fc_lport.0*
  %113 = load %struct.fc_frame.2*, %struct.fc_frame.2** %11, align 8
  %114 = bitcast %struct.fc_frame.2* %113 to %struct.fc_frame*
  %115 = load i32, i32* @fc_lport_bsg_resp, align 4
  %116 = load %struct.fc_bsg_info.1*, %struct.fc_bsg_info.1** %10, align 8
  %117 = bitcast %struct.fc_bsg_info.1* %116 to %struct.fc_bsg_info*
  %118 = load i32, i32* %9, align 4
  %119 = call i32 %110(%struct.fc_lport.0* %112, %struct.fc_frame* %114, i32 %115, i32* null, %struct.fc_bsg_info* %117, i32 %118)
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %126, label %121

121:                                              ; preds = %85
  %122 = load %struct.fc_bsg_info.1*, %struct.fc_bsg_info.1** %10, align 8
  %123 = call i32 @kfree(%struct.fc_bsg_info.1* %122)
  %124 = load i32, i32* @ECOMM, align 4
  %125 = sub nsw i32 0, %124
  store i32 %125, i32* %5, align 4
  br label %127

126:                                              ; preds = %85
  store i32 0, i32* %5, align 4
  br label %127

127:                                              ; preds = %126, %121, %80, %23
  %128 = load i32, i32* %5, align 4
  ret i32 %128
}

declare dso_local %struct.fc_frame.2* @fc_frame_alloc(%struct.fc_lport*, i32) #1

declare dso_local i8* @fc_frame_payload_get(%struct.fc_frame.2*, i32) #1

declare dso_local i32 @sg_copy_to_buffer(i32, i32, i8*, i32) #1

declare dso_local %struct.fc_frame_header* @fc_frame_header_get(%struct.fc_frame.2*) #1

declare dso_local i32 @hton24(i32, i32) #1

declare dso_local %struct.fc_bsg_info.1* @kzalloc(i32, i32) #1

declare dso_local i32 @fc_frame_free(%struct.fc_frame.2*) #1

declare dso_local i32 @kfree(%struct.fc_bsg_info.1*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
