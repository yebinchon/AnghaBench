; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/scsi/extr_zfcp_cfdc.c_zfcp_cfdc_req_to_sense.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/scsi/extr_zfcp_cfdc.c_zfcp_cfdc_req_to_sense.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zfcp_cfdc_data = type { i32, i32, i32 }
%struct.zfcp_fsf_req = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { %struct.TYPE_6__, %struct.TYPE_7__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_7__ = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.zfcp_cfdc_data*, %struct.zfcp_fsf_req*)* @zfcp_cfdc_req_to_sense to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @zfcp_cfdc_req_to_sense(%struct.zfcp_cfdc_data* %0, %struct.zfcp_fsf_req* %1) #0 {
  %3 = alloca %struct.zfcp_cfdc_data*, align 8
  %4 = alloca %struct.zfcp_fsf_req*, align 8
  store %struct.zfcp_cfdc_data* %0, %struct.zfcp_cfdc_data** %3, align 8
  store %struct.zfcp_fsf_req* %1, %struct.zfcp_fsf_req** %4, align 8
  %5 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %4, align 8
  %6 = getelementptr inbounds %struct.zfcp_fsf_req, %struct.zfcp_fsf_req* %5, i32 0, i32 0
  %7 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %7, i32 0, i32 1
  %9 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 4
  %11 = load %struct.zfcp_cfdc_data*, %struct.zfcp_cfdc_data** %3, align 8
  %12 = getelementptr inbounds %struct.zfcp_cfdc_data, %struct.zfcp_cfdc_data* %11, i32 0, i32 2
  store i32 %10, i32* %12, align 4
  %13 = load %struct.zfcp_cfdc_data*, %struct.zfcp_cfdc_data** %3, align 8
  %14 = getelementptr inbounds %struct.zfcp_cfdc_data, %struct.zfcp_cfdc_data* %13, i32 0, i32 1
  %15 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %4, align 8
  %16 = getelementptr inbounds %struct.zfcp_fsf_req, %struct.zfcp_fsf_req* %15, i32 0, i32 0
  %17 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 0
  %20 = call i32 @memcpy(i32* %14, i32* %19, i32 4)
  %21 = load %struct.zfcp_cfdc_data*, %struct.zfcp_cfdc_data** %3, align 8
  %22 = getelementptr inbounds %struct.zfcp_cfdc_data, %struct.zfcp_cfdc_data* %21, i32 0, i32 0
  %23 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %4, align 8
  %24 = getelementptr inbounds %struct.zfcp_fsf_req, %struct.zfcp_fsf_req* %23, i32 0, i32 0
  %25 = load %struct.TYPE_8__*, %struct.TYPE_8__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 0
  %29 = call i32 @memcpy(i32* %22, i32* %28, i32 4)
  ret void
}

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
