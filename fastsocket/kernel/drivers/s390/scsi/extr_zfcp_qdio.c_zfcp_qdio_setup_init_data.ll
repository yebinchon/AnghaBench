; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/scsi/extr_zfcp_qdio.c_zfcp_qdio_setup_init_data.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/scsi/extr_zfcp_qdio.c_zfcp_qdio_setup_init_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qdio_initialize = type { i32, i32, i64, i32, i8**, i8**, i32, i32, i32, i32, i32, %struct.TYPE_6__*, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.zfcp_qdio = type { %struct.TYPE_8__, %struct.TYPE_7__, %struct.TYPE_5__* }
%struct.TYPE_8__ = type { i64 }
%struct.TYPE_7__ = type { i64 }
%struct.TYPE_5__ = type { %struct.TYPE_6__* }

@QDIO_ZFCP_QFMT = common dso_local global i32 0, align 4
@QIB_RFLAGS_ENABLE_DATA_DIV = common dso_local global i32 0, align 4
@enable_multibuffer = common dso_local global i64 0, align 8
@QDR_AC_MULTI_BUFFER_ENABLE = common dso_local global i32 0, align 4
@zfcp_qdio_int_resp = common dso_local global i32 0, align 4
@zfcp_qdio_int_req = common dso_local global i32 0, align 4
@QDIO_INBOUND_0COPY_SBALS = common dso_local global i32 0, align 4
@QDIO_OUTBOUND_0COPY_SBALS = common dso_local global i32 0, align 4
@QDIO_USE_OUTBOUND_PCIS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.qdio_initialize*, %struct.zfcp_qdio*)* @zfcp_qdio_setup_init_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @zfcp_qdio_setup_init_data(%struct.qdio_initialize* %0, %struct.zfcp_qdio* %1) #0 {
  %3 = alloca %struct.qdio_initialize*, align 8
  %4 = alloca %struct.zfcp_qdio*, align 8
  store %struct.qdio_initialize* %0, %struct.qdio_initialize** %3, align 8
  store %struct.zfcp_qdio* %1, %struct.zfcp_qdio** %4, align 8
  %5 = load %struct.qdio_initialize*, %struct.qdio_initialize** %3, align 8
  %6 = call i32 @memset(%struct.qdio_initialize* %5, i32 0, i32 80)
  %7 = load %struct.zfcp_qdio*, %struct.zfcp_qdio** %4, align 8
  %8 = getelementptr inbounds %struct.zfcp_qdio, %struct.zfcp_qdio* %7, i32 0, i32 2
  %9 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 0
  %11 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %12 = load %struct.qdio_initialize*, %struct.qdio_initialize** %3, align 8
  %13 = getelementptr inbounds %struct.qdio_initialize, %struct.qdio_initialize* %12, i32 0, i32 11
  store %struct.TYPE_6__* %11, %struct.TYPE_6__** %13, align 8
  %14 = load i32, i32* @QDIO_ZFCP_QFMT, align 4
  %15 = load %struct.qdio_initialize*, %struct.qdio_initialize** %3, align 8
  %16 = getelementptr inbounds %struct.qdio_initialize, %struct.qdio_initialize* %15, i32 0, i32 12
  store i32 %14, i32* %16, align 8
  %17 = load %struct.qdio_initialize*, %struct.qdio_initialize** %3, align 8
  %18 = getelementptr inbounds %struct.qdio_initialize, %struct.qdio_initialize* %17, i32 0, i32 10
  %19 = load i32, i32* %18, align 8
  %20 = load %struct.qdio_initialize*, %struct.qdio_initialize** %3, align 8
  %21 = getelementptr inbounds %struct.qdio_initialize, %struct.qdio_initialize* %20, i32 0, i32 11
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 0
  %24 = call i32 @dev_name(i32* %23)
  %25 = call i32 @memcpy(i32 %19, i32 %24, i32 8)
  %26 = load %struct.qdio_initialize*, %struct.qdio_initialize** %3, align 8
  %27 = getelementptr inbounds %struct.qdio_initialize, %struct.qdio_initialize* %26, i32 0, i32 10
  %28 = load i32, i32* %27, align 8
  %29 = call i32 @ASCEBC(i32 %28, i32 8)
  %30 = load i32, i32* @QIB_RFLAGS_ENABLE_DATA_DIV, align 4
  %31 = load %struct.qdio_initialize*, %struct.qdio_initialize** %3, align 8
  %32 = getelementptr inbounds %struct.qdio_initialize, %struct.qdio_initialize* %31, i32 0, i32 9
  store i32 %30, i32* %32, align 4
  %33 = load i64, i64* @enable_multibuffer, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %41

35:                                               ; preds = %2
  %36 = load i32, i32* @QDR_AC_MULTI_BUFFER_ENABLE, align 4
  %37 = load %struct.qdio_initialize*, %struct.qdio_initialize** %3, align 8
  %38 = getelementptr inbounds %struct.qdio_initialize, %struct.qdio_initialize* %37, i32 0, i32 8
  %39 = load i32, i32* %38, align 8
  %40 = or i32 %39, %36
  store i32 %40, i32* %38, align 8
  br label %41

41:                                               ; preds = %35, %2
  %42 = load %struct.qdio_initialize*, %struct.qdio_initialize** %3, align 8
  %43 = getelementptr inbounds %struct.qdio_initialize, %struct.qdio_initialize* %42, i32 0, i32 0
  store i32 1, i32* %43, align 8
  %44 = load %struct.qdio_initialize*, %struct.qdio_initialize** %3, align 8
  %45 = getelementptr inbounds %struct.qdio_initialize, %struct.qdio_initialize* %44, i32 0, i32 1
  store i32 1, i32* %45, align 4
  %46 = load i32, i32* @zfcp_qdio_int_resp, align 4
  %47 = load %struct.qdio_initialize*, %struct.qdio_initialize** %3, align 8
  %48 = getelementptr inbounds %struct.qdio_initialize, %struct.qdio_initialize* %47, i32 0, i32 7
  store i32 %46, i32* %48, align 4
  %49 = load i32, i32* @zfcp_qdio_int_req, align 4
  %50 = load %struct.qdio_initialize*, %struct.qdio_initialize** %3, align 8
  %51 = getelementptr inbounds %struct.qdio_initialize, %struct.qdio_initialize* %50, i32 0, i32 6
  store i32 %49, i32* %51, align 8
  %52 = load %struct.zfcp_qdio*, %struct.zfcp_qdio** %4, align 8
  %53 = ptrtoint %struct.zfcp_qdio* %52 to i64
  %54 = load %struct.qdio_initialize*, %struct.qdio_initialize** %3, align 8
  %55 = getelementptr inbounds %struct.qdio_initialize, %struct.qdio_initialize* %54, i32 0, i32 2
  store i64 %53, i64* %55, align 8
  %56 = load i32, i32* @QDIO_INBOUND_0COPY_SBALS, align 4
  %57 = load i32, i32* @QDIO_OUTBOUND_0COPY_SBALS, align 4
  %58 = or i32 %56, %57
  %59 = load i32, i32* @QDIO_USE_OUTBOUND_PCIS, align 4
  %60 = or i32 %58, %59
  %61 = load %struct.qdio_initialize*, %struct.qdio_initialize** %3, align 8
  %62 = getelementptr inbounds %struct.qdio_initialize, %struct.qdio_initialize* %61, i32 0, i32 3
  store i32 %60, i32* %62, align 8
  %63 = load %struct.zfcp_qdio*, %struct.zfcp_qdio** %4, align 8
  %64 = getelementptr inbounds %struct.zfcp_qdio, %struct.zfcp_qdio* %63, i32 0, i32 1
  %65 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = inttoptr i64 %66 to i8**
  %68 = load %struct.qdio_initialize*, %struct.qdio_initialize** %3, align 8
  %69 = getelementptr inbounds %struct.qdio_initialize, %struct.qdio_initialize* %68, i32 0, i32 4
  store i8** %67, i8*** %69, align 8
  %70 = load %struct.zfcp_qdio*, %struct.zfcp_qdio** %4, align 8
  %71 = getelementptr inbounds %struct.zfcp_qdio, %struct.zfcp_qdio* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = inttoptr i64 %73 to i8**
  %75 = load %struct.qdio_initialize*, %struct.qdio_initialize** %3, align 8
  %76 = getelementptr inbounds %struct.qdio_initialize, %struct.qdio_initialize* %75, i32 0, i32 5
  store i8** %74, i8*** %76, align 8
  ret void
}

declare dso_local i32 @memset(%struct.qdio_initialize*, i32, i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @dev_name(i32*) #1

declare dso_local i32 @ASCEBC(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
