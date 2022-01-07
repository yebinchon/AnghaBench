; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/libfc/extr_fc_lport.c_fc_lport_ct_request.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/libfc/extr_fc_lport.c_fc_lport_ct_request.c"
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
%struct.fc_ct_req = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@FC_RCTL_DD_UNSOL_CTL = common dso_local global i32 0, align 4
@FC_TYPE_CT = common dso_local global i32 0, align 4
@FC_FCTL_REQ = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@FC_FS_ACC = common dso_local global i32 0, align 4
@fc_lport_bsg_resp = common dso_local global i32 0, align 4
@ECOMM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fc_bsg_job*, %struct.fc_lport*, i32, i32)* @fc_lport_ct_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fc_lport_ct_request(%struct.fc_bsg_job* %0, %struct.fc_lport* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.fc_bsg_job*, align 8
  %7 = alloca %struct.fc_lport*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.fc_bsg_info.1*, align 8
  %11 = alloca %struct.fc_frame.2*, align 8
  %12 = alloca %struct.fc_frame_header*, align 8
  %13 = alloca %struct.fc_ct_req*, align 8
  %14 = alloca i64, align 8
  store %struct.fc_bsg_job* %0, %struct.fc_bsg_job** %6, align 8
  store %struct.fc_lport* %1, %struct.fc_lport** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %15 = load %struct.fc_lport*, %struct.fc_lport** %7, align 8
  %16 = load %struct.fc_bsg_job*, %struct.fc_bsg_job** %6, align 8
  %17 = getelementptr inbounds %struct.fc_bsg_job, %struct.fc_bsg_job* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = sext i32 %19 to i64
  %21 = add i64 4, %20
  %22 = trunc i64 %21 to i32
  %23 = call %struct.fc_frame.2* @fc_frame_alloc(%struct.fc_lport* %15, i32 %22)
  store %struct.fc_frame.2* %23, %struct.fc_frame.2** %11, align 8
  %24 = load %struct.fc_frame.2*, %struct.fc_frame.2** %11, align 8
  %25 = icmp ne %struct.fc_frame.2* %24, null
  br i1 %25, label %29, label %26

26:                                               ; preds = %4
  %27 = load i32, i32* @ENOMEM, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %5, align 4
  br label %131

29:                                               ; preds = %4
  %30 = load %struct.fc_bsg_job*, %struct.fc_bsg_job** %6, align 8
  %31 = getelementptr inbounds %struct.fc_bsg_job, %struct.fc_bsg_job* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = sext i32 %33 to i64
  store i64 %34, i64* %14, align 8
  %35 = load %struct.fc_frame.2*, %struct.fc_frame.2** %11, align 8
  %36 = load i64, i64* %14, align 8
  %37 = call %struct.fc_ct_req* @fc_frame_payload_get(%struct.fc_frame.2* %35, i64 %36)
  store %struct.fc_ct_req* %37, %struct.fc_ct_req** %13, align 8
  %38 = load %struct.fc_bsg_job*, %struct.fc_bsg_job** %6, align 8
  %39 = getelementptr inbounds %struct.fc_bsg_job, %struct.fc_bsg_job* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.fc_bsg_job*, %struct.fc_bsg_job** %6, align 8
  %43 = getelementptr inbounds %struct.fc_bsg_job, %struct.fc_bsg_job* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.fc_ct_req*, %struct.fc_ct_req** %13, align 8
  %47 = load i64, i64* %14, align 8
  %48 = call i32 @sg_copy_to_buffer(i32 %41, i32 %45, %struct.fc_ct_req* %46, i64 %47)
  %49 = load %struct.fc_frame.2*, %struct.fc_frame.2** %11, align 8
  %50 = call %struct.fc_frame_header* @fc_frame_header_get(%struct.fc_frame.2* %49)
  store %struct.fc_frame_header* %50, %struct.fc_frame_header** %12, align 8
  %51 = load i32, i32* @FC_RCTL_DD_UNSOL_CTL, align 4
  %52 = load %struct.fc_frame_header*, %struct.fc_frame_header** %12, align 8
  %53 = getelementptr inbounds %struct.fc_frame_header, %struct.fc_frame_header* %52, i32 0, i32 7
  store i32 %51, i32* %53, align 8
  %54 = load %struct.fc_frame_header*, %struct.fc_frame_header** %12, align 8
  %55 = getelementptr inbounds %struct.fc_frame_header, %struct.fc_frame_header* %54, i32 0, i32 6
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* %8, align 4
  %58 = call i32 @hton24(i32 %56, i32 %57)
  %59 = load %struct.fc_frame_header*, %struct.fc_frame_header** %12, align 8
  %60 = getelementptr inbounds %struct.fc_frame_header, %struct.fc_frame_header* %59, i32 0, i32 5
  %61 = load i32, i32* %60, align 8
  %62 = load %struct.fc_lport*, %struct.fc_lport** %7, align 8
  %63 = getelementptr inbounds %struct.fc_lport, %struct.fc_lport* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 8
  %65 = call i32 @hton24(i32 %61, i32 %64)
  %66 = load i32, i32* @FC_TYPE_CT, align 4
  %67 = load %struct.fc_frame_header*, %struct.fc_frame_header** %12, align 8
  %68 = getelementptr inbounds %struct.fc_frame_header, %struct.fc_frame_header* %67, i32 0, i32 4
  store i32 %66, i32* %68, align 4
  %69 = load %struct.fc_frame_header*, %struct.fc_frame_header** %12, align 8
  %70 = getelementptr inbounds %struct.fc_frame_header, %struct.fc_frame_header* %69, i32 0, i32 3
  %71 = load i32, i32* %70, align 8
  %72 = load i32, i32* @FC_FCTL_REQ, align 4
  %73 = call i32 @hton24(i32 %71, i32 %72)
  %74 = load %struct.fc_frame_header*, %struct.fc_frame_header** %12, align 8
  %75 = getelementptr inbounds %struct.fc_frame_header, %struct.fc_frame_header* %74, i32 0, i32 2
  store i64 0, i64* %75, align 8
  %76 = load %struct.fc_frame_header*, %struct.fc_frame_header** %12, align 8
  %77 = getelementptr inbounds %struct.fc_frame_header, %struct.fc_frame_header* %76, i32 0, i32 1
  store i64 0, i64* %77, align 8
  %78 = load %struct.fc_frame_header*, %struct.fc_frame_header** %12, align 8
  %79 = getelementptr inbounds %struct.fc_frame_header, %struct.fc_frame_header* %78, i32 0, i32 0
  store i64 0, i64* %79, align 8
  %80 = load i32, i32* @GFP_KERNEL, align 4
  %81 = call %struct.fc_bsg_info.1* @kzalloc(i32 32, i32 %80)
  store %struct.fc_bsg_info.1* %81, %struct.fc_bsg_info.1** %10, align 8
  %82 = load %struct.fc_bsg_info.1*, %struct.fc_bsg_info.1** %10, align 8
  %83 = icmp ne %struct.fc_bsg_info.1* %82, null
  br i1 %83, label %89, label %84

84:                                               ; preds = %29
  %85 = load %struct.fc_frame.2*, %struct.fc_frame.2** %11, align 8
  %86 = call i32 @fc_frame_free(%struct.fc_frame.2* %85)
  %87 = load i32, i32* @ENOMEM, align 4
  %88 = sub nsw i32 0, %87
  store i32 %88, i32* %5, align 4
  br label %131

89:                                               ; preds = %29
  %90 = load %struct.fc_bsg_job*, %struct.fc_bsg_job** %6, align 8
  %91 = load %struct.fc_bsg_info.1*, %struct.fc_bsg_info.1** %10, align 8
  %92 = getelementptr inbounds %struct.fc_bsg_info.1, %struct.fc_bsg_info.1* %91, i32 0, i32 4
  store %struct.fc_bsg_job* %90, %struct.fc_bsg_job** %92, align 8
  %93 = load %struct.fc_lport*, %struct.fc_lport** %7, align 8
  %94 = load %struct.fc_bsg_info.1*, %struct.fc_bsg_info.1** %10, align 8
  %95 = getelementptr inbounds %struct.fc_bsg_info.1, %struct.fc_bsg_info.1* %94, i32 0, i32 3
  store %struct.fc_lport* %93, %struct.fc_lport** %95, align 8
  %96 = load i32, i32* @FC_FS_ACC, align 4
  %97 = load %struct.fc_bsg_info.1*, %struct.fc_bsg_info.1** %10, align 8
  %98 = getelementptr inbounds %struct.fc_bsg_info.1, %struct.fc_bsg_info.1* %97, i32 0, i32 2
  store i32 %96, i32* %98, align 8
  %99 = load %struct.fc_bsg_job*, %struct.fc_bsg_job** %6, align 8
  %100 = getelementptr inbounds %struct.fc_bsg_job, %struct.fc_bsg_job* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  %103 = load %struct.fc_bsg_info.1*, %struct.fc_bsg_info.1** %10, align 8
  %104 = getelementptr inbounds %struct.fc_bsg_info.1, %struct.fc_bsg_info.1* %103, i32 0, i32 1
  store i32 %102, i32* %104, align 4
  %105 = load %struct.fc_bsg_job*, %struct.fc_bsg_job** %6, align 8
  %106 = getelementptr inbounds %struct.fc_bsg_job, %struct.fc_bsg_job* %105, i32 0, i32 0
  %107 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = load %struct.fc_bsg_info.1*, %struct.fc_bsg_info.1** %10, align 8
  %110 = getelementptr inbounds %struct.fc_bsg_info.1, %struct.fc_bsg_info.1* %109, i32 0, i32 0
  store i32 %108, i32* %110, align 8
  %111 = load %struct.fc_lport*, %struct.fc_lport** %7, align 8
  %112 = getelementptr inbounds %struct.fc_lport, %struct.fc_lport* %111, i32 0, i32 0
  %113 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %112, i32 0, i32 0
  %114 = load i32 (%struct.fc_lport.0*, %struct.fc_frame*, i32, i32*, %struct.fc_bsg_info*, i32)*, i32 (%struct.fc_lport.0*, %struct.fc_frame*, i32, i32*, %struct.fc_bsg_info*, i32)** %113, align 8
  %115 = load %struct.fc_lport*, %struct.fc_lport** %7, align 8
  %116 = bitcast %struct.fc_lport* %115 to %struct.fc_lport.0*
  %117 = load %struct.fc_frame.2*, %struct.fc_frame.2** %11, align 8
  %118 = bitcast %struct.fc_frame.2* %117 to %struct.fc_frame*
  %119 = load i32, i32* @fc_lport_bsg_resp, align 4
  %120 = load %struct.fc_bsg_info.1*, %struct.fc_bsg_info.1** %10, align 8
  %121 = bitcast %struct.fc_bsg_info.1* %120 to %struct.fc_bsg_info*
  %122 = load i32, i32* %9, align 4
  %123 = call i32 %114(%struct.fc_lport.0* %116, %struct.fc_frame* %118, i32 %119, i32* null, %struct.fc_bsg_info* %121, i32 %122)
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %130, label %125

125:                                              ; preds = %89
  %126 = load %struct.fc_bsg_info.1*, %struct.fc_bsg_info.1** %10, align 8
  %127 = call i32 @kfree(%struct.fc_bsg_info.1* %126)
  %128 = load i32, i32* @ECOMM, align 4
  %129 = sub nsw i32 0, %128
  store i32 %129, i32* %5, align 4
  br label %131

130:                                              ; preds = %89
  store i32 0, i32* %5, align 4
  br label %131

131:                                              ; preds = %130, %125, %84, %26
  %132 = load i32, i32* %5, align 4
  ret i32 %132
}

declare dso_local %struct.fc_frame.2* @fc_frame_alloc(%struct.fc_lport*, i32) #1

declare dso_local %struct.fc_ct_req* @fc_frame_payload_get(%struct.fc_frame.2*, i64) #1

declare dso_local i32 @sg_copy_to_buffer(i32, i32, %struct.fc_ct_req*, i64) #1

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
