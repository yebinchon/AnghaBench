; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/scsi/extr_zfcp_dbf.c_zfcp_dbf_san_els_response.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/scsi/extr_zfcp_dbf.c_zfcp_dbf_san_els_response.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zfcp_fsf_req = type { i64 }
%struct.zfcp_send_els = type { %struct.TYPE_4__*, %struct.TYPE_4__*, %struct.TYPE_3__*, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [5 x i8] c"rels\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @zfcp_dbf_san_els_response(%struct.zfcp_fsf_req* %0) #0 {
  %2 = alloca %struct.zfcp_fsf_req*, align 8
  %3 = alloca %struct.zfcp_send_els*, align 8
  store %struct.zfcp_fsf_req* %0, %struct.zfcp_fsf_req** %2, align 8
  %4 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %2, align 8
  %5 = getelementptr inbounds %struct.zfcp_fsf_req, %struct.zfcp_fsf_req* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = inttoptr i64 %6 to %struct.zfcp_send_els*
  store %struct.zfcp_send_els* %7, %struct.zfcp_send_els** %3, align 8
  %8 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %2, align 8
  %9 = load %struct.zfcp_send_els*, %struct.zfcp_send_els** %3, align 8
  %10 = getelementptr inbounds %struct.zfcp_send_els, %struct.zfcp_send_els* %9, i32 0, i32 3
  %11 = load i32, i32* %10, align 8
  %12 = load %struct.zfcp_send_els*, %struct.zfcp_send_els** %3, align 8
  %13 = getelementptr inbounds %struct.zfcp_send_els, %struct.zfcp_send_els* %12, i32 0, i32 2
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @fc_host_port_id(i32 %16)
  %18 = load %struct.zfcp_send_els*, %struct.zfcp_send_els** %3, align 8
  %19 = getelementptr inbounds %struct.zfcp_send_els, %struct.zfcp_send_els* %18, i32 0, i32 1
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  %21 = call i64 @sg_virt(%struct.TYPE_4__* %20)
  %22 = inttoptr i64 %21 to i32*
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.zfcp_send_els*, %struct.zfcp_send_els** %3, align 8
  %25 = getelementptr inbounds %struct.zfcp_send_els, %struct.zfcp_send_els* %24, i32 0, i32 0
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %25, align 8
  %27 = call i64 @sg_virt(%struct.TYPE_4__* %26)
  %28 = load %struct.zfcp_send_els*, %struct.zfcp_send_els** %3, align 8
  %29 = getelementptr inbounds %struct.zfcp_send_els, %struct.zfcp_send_els* %28, i32 0, i32 0
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @zfcp_dbf_san_els(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 2, %struct.zfcp_fsf_req* %8, i32 %11, i32 %17, i32 %23, i64 %27, i32 %32)
  ret void
}

declare dso_local i32 @zfcp_dbf_san_els(i8*, i32, %struct.zfcp_fsf_req*, i32, i32, i32, i64, i32) #1

declare dso_local i32 @fc_host_port_id(i32) #1

declare dso_local i64 @sg_virt(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
