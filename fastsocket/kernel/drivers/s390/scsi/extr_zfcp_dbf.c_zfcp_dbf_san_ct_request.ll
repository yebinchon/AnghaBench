; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/scsi/extr_zfcp_dbf.c_zfcp_dbf_san_ct_request.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/scsi/extr_zfcp_dbf.c_zfcp_dbf_san_ct_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zfcp_fsf_req = type { i32, i32, i64 }
%struct.zfcp_send_ct = type { %struct.TYPE_4__*, %struct.zfcp_wka_port* }
%struct.TYPE_4__ = type { i64 }
%struct.zfcp_wka_port = type { i32, %struct.zfcp_adapter* }
%struct.zfcp_adapter = type { i32, %struct.zfcp_dbf* }
%struct.zfcp_dbf = type { i32, i32, %struct.zfcp_dbf_san_record }
%struct.zfcp_dbf_san_record = type { i32, i32, i32, i32, i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.zfcp_dbf_san_record_ct_request }
%struct.zfcp_dbf_san_record_ct_request = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.ct_hdr = type { i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [5 x i8] c"octc\00", align 1
@ZFCP_DBF_TAG_SIZE = common dso_local global i32 0, align 4
@ZFCP_DBF_SAN_MAX_PAYLOAD = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @zfcp_dbf_san_ct_request(%struct.zfcp_fsf_req* %0) #0 {
  %2 = alloca %struct.zfcp_fsf_req*, align 8
  %3 = alloca %struct.zfcp_send_ct*, align 8
  %4 = alloca %struct.zfcp_wka_port*, align 8
  %5 = alloca %struct.zfcp_adapter*, align 8
  %6 = alloca %struct.zfcp_dbf*, align 8
  %7 = alloca %struct.ct_hdr*, align 8
  %8 = alloca %struct.zfcp_dbf_san_record*, align 8
  %9 = alloca %struct.zfcp_dbf_san_record_ct_request*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  store %struct.zfcp_fsf_req* %0, %struct.zfcp_fsf_req** %2, align 8
  %12 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %2, align 8
  %13 = getelementptr inbounds %struct.zfcp_fsf_req, %struct.zfcp_fsf_req* %12, i32 0, i32 2
  %14 = load i64, i64* %13, align 8
  %15 = inttoptr i64 %14 to %struct.zfcp_send_ct*
  store %struct.zfcp_send_ct* %15, %struct.zfcp_send_ct** %3, align 8
  %16 = load %struct.zfcp_send_ct*, %struct.zfcp_send_ct** %3, align 8
  %17 = getelementptr inbounds %struct.zfcp_send_ct, %struct.zfcp_send_ct* %16, i32 0, i32 1
  %18 = load %struct.zfcp_wka_port*, %struct.zfcp_wka_port** %17, align 8
  store %struct.zfcp_wka_port* %18, %struct.zfcp_wka_port** %4, align 8
  %19 = load %struct.zfcp_wka_port*, %struct.zfcp_wka_port** %4, align 8
  %20 = getelementptr inbounds %struct.zfcp_wka_port, %struct.zfcp_wka_port* %19, i32 0, i32 1
  %21 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %20, align 8
  store %struct.zfcp_adapter* %21, %struct.zfcp_adapter** %5, align 8
  %22 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %5, align 8
  %23 = getelementptr inbounds %struct.zfcp_adapter, %struct.zfcp_adapter* %22, i32 0, i32 1
  %24 = load %struct.zfcp_dbf*, %struct.zfcp_dbf** %23, align 8
  store %struct.zfcp_dbf* %24, %struct.zfcp_dbf** %6, align 8
  %25 = load %struct.zfcp_send_ct*, %struct.zfcp_send_ct** %3, align 8
  %26 = getelementptr inbounds %struct.zfcp_send_ct, %struct.zfcp_send_ct* %25, i32 0, i32 0
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %26, align 8
  %28 = call %struct.ct_hdr* @sg_virt(%struct.TYPE_4__* %27)
  store %struct.ct_hdr* %28, %struct.ct_hdr** %7, align 8
  %29 = load %struct.zfcp_dbf*, %struct.zfcp_dbf** %6, align 8
  %30 = getelementptr inbounds %struct.zfcp_dbf, %struct.zfcp_dbf* %29, i32 0, i32 2
  store %struct.zfcp_dbf_san_record* %30, %struct.zfcp_dbf_san_record** %8, align 8
  %31 = load %struct.zfcp_dbf_san_record*, %struct.zfcp_dbf_san_record** %8, align 8
  %32 = getelementptr inbounds %struct.zfcp_dbf_san_record, %struct.zfcp_dbf_san_record* %31, i32 0, i32 5
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 0
  store %struct.zfcp_dbf_san_record_ct_request* %33, %struct.zfcp_dbf_san_record_ct_request** %9, align 8
  store i32 3, i32* %10, align 4
  %34 = load %struct.zfcp_dbf*, %struct.zfcp_dbf** %6, align 8
  %35 = getelementptr inbounds %struct.zfcp_dbf, %struct.zfcp_dbf* %34, i32 0, i32 0
  %36 = load i64, i64* %11, align 8
  %37 = call i32 @spin_lock_irqsave(i32* %35, i64 %36)
  %38 = load %struct.zfcp_dbf_san_record*, %struct.zfcp_dbf_san_record** %8, align 8
  %39 = call i32 @memset(%struct.zfcp_dbf_san_record* %38, i32 0, i32 48)
  %40 = load %struct.zfcp_dbf_san_record*, %struct.zfcp_dbf_san_record** %8, align 8
  %41 = getelementptr inbounds %struct.zfcp_dbf_san_record, %struct.zfcp_dbf_san_record* %40, i32 0, i32 4
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @ZFCP_DBF_TAG_SIZE, align 4
  %44 = call i32 @strncpy(i32 %42, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %43)
  %45 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %2, align 8
  %46 = getelementptr inbounds %struct.zfcp_fsf_req, %struct.zfcp_fsf_req* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.zfcp_dbf_san_record*, %struct.zfcp_dbf_san_record** %8, align 8
  %49 = getelementptr inbounds %struct.zfcp_dbf_san_record, %struct.zfcp_dbf_san_record* %48, i32 0, i32 3
  store i32 %47, i32* %49, align 4
  %50 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %2, align 8
  %51 = getelementptr inbounds %struct.zfcp_fsf_req, %struct.zfcp_fsf_req* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = load %struct.zfcp_dbf_san_record*, %struct.zfcp_dbf_san_record** %8, align 8
  %54 = getelementptr inbounds %struct.zfcp_dbf_san_record, %struct.zfcp_dbf_san_record* %53, i32 0, i32 2
  store i32 %52, i32* %54, align 4
  %55 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %5, align 8
  %56 = getelementptr inbounds %struct.zfcp_adapter, %struct.zfcp_adapter* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = call i32 @fc_host_port_id(i32 %57)
  %59 = load %struct.zfcp_dbf_san_record*, %struct.zfcp_dbf_san_record** %8, align 8
  %60 = getelementptr inbounds %struct.zfcp_dbf_san_record, %struct.zfcp_dbf_san_record* %59, i32 0, i32 1
  store i32 %58, i32* %60, align 4
  %61 = load %struct.zfcp_wka_port*, %struct.zfcp_wka_port** %4, align 8
  %62 = getelementptr inbounds %struct.zfcp_wka_port, %struct.zfcp_wka_port* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = load %struct.zfcp_dbf_san_record*, %struct.zfcp_dbf_san_record** %8, align 8
  %65 = getelementptr inbounds %struct.zfcp_dbf_san_record, %struct.zfcp_dbf_san_record* %64, i32 0, i32 0
  store i32 %63, i32* %65, align 4
  %66 = load %struct.ct_hdr*, %struct.ct_hdr** %7, align 8
  %67 = getelementptr inbounds %struct.ct_hdr, %struct.ct_hdr* %66, i32 0, i32 5
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.zfcp_dbf_san_record_ct_request*, %struct.zfcp_dbf_san_record_ct_request** %9, align 8
  %70 = getelementptr inbounds %struct.zfcp_dbf_san_record_ct_request, %struct.zfcp_dbf_san_record_ct_request* %69, i32 0, i32 6
  store i32 %68, i32* %70, align 4
  %71 = load %struct.ct_hdr*, %struct.ct_hdr** %7, align 8
  %72 = getelementptr inbounds %struct.ct_hdr, %struct.ct_hdr* %71, i32 0, i32 4
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.zfcp_dbf_san_record_ct_request*, %struct.zfcp_dbf_san_record_ct_request** %9, align 8
  %75 = getelementptr inbounds %struct.zfcp_dbf_san_record_ct_request, %struct.zfcp_dbf_san_record_ct_request* %74, i32 0, i32 5
  store i32 %73, i32* %75, align 4
  %76 = load %struct.ct_hdr*, %struct.ct_hdr** %7, align 8
  %77 = getelementptr inbounds %struct.ct_hdr, %struct.ct_hdr* %76, i32 0, i32 3
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.zfcp_dbf_san_record_ct_request*, %struct.zfcp_dbf_san_record_ct_request** %9, align 8
  %80 = getelementptr inbounds %struct.zfcp_dbf_san_record_ct_request, %struct.zfcp_dbf_san_record_ct_request* %79, i32 0, i32 4
  store i32 %78, i32* %80, align 4
  %81 = load %struct.ct_hdr*, %struct.ct_hdr** %7, align 8
  %82 = getelementptr inbounds %struct.ct_hdr, %struct.ct_hdr* %81, i32 0, i32 2
  %83 = load i32, i32* %82, align 4
  %84 = load %struct.zfcp_dbf_san_record_ct_request*, %struct.zfcp_dbf_san_record_ct_request** %9, align 8
  %85 = getelementptr inbounds %struct.zfcp_dbf_san_record_ct_request, %struct.zfcp_dbf_san_record_ct_request* %84, i32 0, i32 3
  store i32 %83, i32* %85, align 4
  %86 = load %struct.ct_hdr*, %struct.ct_hdr** %7, align 8
  %87 = getelementptr inbounds %struct.ct_hdr, %struct.ct_hdr* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = load %struct.zfcp_dbf_san_record_ct_request*, %struct.zfcp_dbf_san_record_ct_request** %9, align 8
  %90 = getelementptr inbounds %struct.zfcp_dbf_san_record_ct_request, %struct.zfcp_dbf_san_record_ct_request* %89, i32 0, i32 2
  store i32 %88, i32* %90, align 4
  %91 = load %struct.ct_hdr*, %struct.ct_hdr** %7, align 8
  %92 = getelementptr inbounds %struct.ct_hdr, %struct.ct_hdr* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = load %struct.zfcp_dbf_san_record_ct_request*, %struct.zfcp_dbf_san_record_ct_request** %9, align 8
  %95 = getelementptr inbounds %struct.zfcp_dbf_san_record_ct_request, %struct.zfcp_dbf_san_record_ct_request* %94, i32 0, i32 1
  store i32 %93, i32* %95, align 4
  %96 = load %struct.zfcp_send_ct*, %struct.zfcp_send_ct** %3, align 8
  %97 = getelementptr inbounds %struct.zfcp_send_ct, %struct.zfcp_send_ct* %96, i32 0, i32 0
  %98 = load %struct.TYPE_4__*, %struct.TYPE_4__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %98, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = trunc i64 %100 to i32
  %102 = sub nsw i32 %101, 24
  %103 = load i32, i32* @ZFCP_DBF_SAN_MAX_PAYLOAD, align 4
  %104 = call i32 @min(i32 %102, i32 %103)
  %105 = load %struct.zfcp_dbf_san_record_ct_request*, %struct.zfcp_dbf_san_record_ct_request** %9, align 8
  %106 = getelementptr inbounds %struct.zfcp_dbf_san_record_ct_request, %struct.zfcp_dbf_san_record_ct_request* %105, i32 0, i32 0
  store i32 %104, i32* %106, align 4
  %107 = load %struct.zfcp_dbf*, %struct.zfcp_dbf** %6, align 8
  %108 = getelementptr inbounds %struct.zfcp_dbf, %struct.zfcp_dbf* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 4
  %110 = load i32, i32* %10, align 4
  %111 = load %struct.zfcp_dbf_san_record*, %struct.zfcp_dbf_san_record** %8, align 8
  %112 = call i32 @debug_event(i32 %109, i32 %110, %struct.zfcp_dbf_san_record* %111, i32 48)
  %113 = load %struct.zfcp_dbf*, %struct.zfcp_dbf** %6, align 8
  %114 = getelementptr inbounds %struct.zfcp_dbf, %struct.zfcp_dbf* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 4
  %116 = load %struct.zfcp_dbf_san_record*, %struct.zfcp_dbf_san_record** %8, align 8
  %117 = load i32, i32* %10, align 4
  %118 = load %struct.ct_hdr*, %struct.ct_hdr** %7, align 8
  %119 = bitcast %struct.ct_hdr* %118 to i8*
  %120 = getelementptr i8, i8* %119, i64 24
  %121 = load %struct.zfcp_dbf_san_record_ct_request*, %struct.zfcp_dbf_san_record_ct_request** %9, align 8
  %122 = getelementptr inbounds %struct.zfcp_dbf_san_record_ct_request, %struct.zfcp_dbf_san_record_ct_request* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 4
  %124 = call i32 @zfcp_dbf_hexdump(i32 %115, %struct.zfcp_dbf_san_record* %116, i32 48, i32 %117, i8* %120, i32 %123)
  %125 = load %struct.zfcp_dbf*, %struct.zfcp_dbf** %6, align 8
  %126 = getelementptr inbounds %struct.zfcp_dbf, %struct.zfcp_dbf* %125, i32 0, i32 0
  %127 = load i64, i64* %11, align 8
  %128 = call i32 @spin_unlock_irqrestore(i32* %126, i64 %127)
  ret void
}

declare dso_local %struct.ct_hdr* @sg_virt(%struct.TYPE_4__*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @memset(%struct.zfcp_dbf_san_record*, i32, i32) #1

declare dso_local i32 @strncpy(i32, i8*, i32) #1

declare dso_local i32 @fc_host_port_id(i32) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @debug_event(i32, i32, %struct.zfcp_dbf_san_record*, i32) #1

declare dso_local i32 @zfcp_dbf_hexdump(i32, %struct.zfcp_dbf_san_record*, i32, i32, i8*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
