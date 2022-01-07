; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/char/extr_sclp_ocf.c_sclp_ocf_handler.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/char/extr_sclp_ocf.c_sclp_ocf_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.evbuf_header = type { i32 }
%struct.gds_vector = type { i32 }
%struct.gds_subvector = type { i32 }

@sclp_ocf_lock = common dso_local global i32 0, align 4
@OCF_LENGTH_HMC_NETWORK = common dso_local global i32 0, align 4
@hmc_network = common dso_local global i64* null, align 8
@OCF_LENGTH_CPC_NAME = common dso_local global i32 0, align 4
@cpc_name = common dso_local global i64* null, align 8
@sclp_ocf_change_work = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.evbuf_header*)* @sclp_ocf_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sclp_ocf_handler(%struct.evbuf_header* %0) #0 {
  %2 = alloca %struct.evbuf_header*, align 8
  %3 = alloca %struct.gds_vector*, align 8
  %4 = alloca %struct.gds_subvector*, align 8
  %5 = alloca %struct.gds_subvector*, align 8
  %6 = alloca %struct.gds_subvector*, align 8
  %7 = alloca i64, align 8
  store %struct.evbuf_header* %0, %struct.evbuf_header** %2, align 8
  %8 = load %struct.evbuf_header*, %struct.evbuf_header** %2, align 8
  %9 = getelementptr inbounds %struct.evbuf_header, %struct.evbuf_header* %8, i64 1
  %10 = bitcast %struct.evbuf_header* %9 to %struct.gds_vector*
  %11 = load %struct.evbuf_header*, %struct.evbuf_header** %2, align 8
  %12 = bitcast %struct.evbuf_header* %11 to i8*
  %13 = load %struct.evbuf_header*, %struct.evbuf_header** %2, align 8
  %14 = getelementptr inbounds %struct.evbuf_header, %struct.evbuf_header* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr i8, i8* %12, i64 %16
  %18 = call %struct.gds_vector* @sclp_find_gds_vector(%struct.gds_vector* %10, i8* %17, i32 40704)
  store %struct.gds_vector* %18, %struct.gds_vector** %3, align 8
  %19 = load %struct.gds_vector*, %struct.gds_vector** %3, align 8
  %20 = icmp ne %struct.gds_vector* %19, null
  br i1 %20, label %22, label %21

21:                                               ; preds = %1
  br label %123

22:                                               ; preds = %1
  %23 = load %struct.gds_vector*, %struct.gds_vector** %3, align 8
  %24 = getelementptr inbounds %struct.gds_vector, %struct.gds_vector* %23, i64 1
  %25 = load %struct.gds_vector*, %struct.gds_vector** %3, align 8
  %26 = bitcast %struct.gds_vector* %25 to i8*
  %27 = load %struct.gds_vector*, %struct.gds_vector** %3, align 8
  %28 = getelementptr inbounds %struct.gds_vector, %struct.gds_vector* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr i8, i8* %26, i64 %30
  %32 = call %struct.gds_vector* @sclp_find_gds_vector(%struct.gds_vector* %24, i8* %31, i32 40738)
  store %struct.gds_vector* %32, %struct.gds_vector** %3, align 8
  %33 = load %struct.gds_vector*, %struct.gds_vector** %3, align 8
  %34 = icmp ne %struct.gds_vector* %33, null
  br i1 %34, label %36, label %35

35:                                               ; preds = %22
  br label %123

36:                                               ; preds = %22
  %37 = load %struct.gds_vector*, %struct.gds_vector** %3, align 8
  %38 = getelementptr inbounds %struct.gds_vector, %struct.gds_vector* %37, i64 1
  %39 = load %struct.gds_vector*, %struct.gds_vector** %3, align 8
  %40 = bitcast %struct.gds_vector* %39 to i8*
  %41 = load %struct.gds_vector*, %struct.gds_vector** %3, align 8
  %42 = getelementptr inbounds %struct.gds_vector, %struct.gds_vector* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr i8, i8* %40, i64 %44
  %46 = call %struct.gds_vector* @sclp_find_gds_subvector(%struct.gds_vector* %38, i8* %45, i32 129)
  %47 = bitcast %struct.gds_vector* %46 to %struct.gds_subvector*
  store %struct.gds_subvector* %47, %struct.gds_subvector** %4, align 8
  %48 = load %struct.gds_subvector*, %struct.gds_subvector** %4, align 8
  %49 = icmp ne %struct.gds_subvector* %48, null
  br i1 %49, label %51, label %50

50:                                               ; preds = %36
  br label %123

51:                                               ; preds = %36
  %52 = load %struct.gds_subvector*, %struct.gds_subvector** %4, align 8
  %53 = getelementptr inbounds %struct.gds_subvector, %struct.gds_subvector* %52, i64 1
  %54 = bitcast %struct.gds_subvector* %53 to %struct.gds_vector*
  %55 = load %struct.gds_subvector*, %struct.gds_subvector** %4, align 8
  %56 = bitcast %struct.gds_subvector* %55 to i8*
  %57 = load %struct.gds_subvector*, %struct.gds_subvector** %4, align 8
  %58 = getelementptr inbounds %struct.gds_subvector, %struct.gds_subvector* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr i8, i8* %56, i64 %60
  %62 = call %struct.gds_vector* @sclp_find_gds_subvector(%struct.gds_vector* %54, i8* %61, i32 1)
  %63 = bitcast %struct.gds_vector* %62 to %struct.gds_subvector*
  store %struct.gds_subvector* %63, %struct.gds_subvector** %5, align 8
  %64 = load %struct.gds_subvector*, %struct.gds_subvector** %4, align 8
  %65 = getelementptr inbounds %struct.gds_subvector, %struct.gds_subvector* %64, i64 1
  %66 = bitcast %struct.gds_subvector* %65 to %struct.gds_vector*
  %67 = load %struct.gds_subvector*, %struct.gds_subvector** %4, align 8
  %68 = bitcast %struct.gds_subvector* %67 to i8*
  %69 = load %struct.gds_subvector*, %struct.gds_subvector** %4, align 8
  %70 = getelementptr inbounds %struct.gds_subvector, %struct.gds_subvector* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr i8, i8* %68, i64 %72
  %74 = call %struct.gds_vector* @sclp_find_gds_subvector(%struct.gds_vector* %66, i8* %73, i32 2)
  %75 = bitcast %struct.gds_vector* %74 to %struct.gds_subvector*
  store %struct.gds_subvector* %75, %struct.gds_subvector** %6, align 8
  %76 = call i32 @spin_lock(i32* @sclp_ocf_lock)
  %77 = load %struct.gds_subvector*, %struct.gds_subvector** %5, align 8
  %78 = icmp ne %struct.gds_subvector* %77, null
  br i1 %78, label %79, label %98

79:                                               ; preds = %51
  %80 = load i32, i32* @OCF_LENGTH_HMC_NETWORK, align 4
  %81 = load %struct.gds_subvector*, %struct.gds_subvector** %5, align 8
  %82 = getelementptr inbounds %struct.gds_subvector, %struct.gds_subvector* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = sext i32 %83 to i64
  %85 = call i64 @min(i32 %80, i64 %84)
  store i64 %85, i64* %7, align 8
  %86 = load i64*, i64** @hmc_network, align 8
  %87 = load %struct.gds_subvector*, %struct.gds_subvector** %5, align 8
  %88 = getelementptr inbounds %struct.gds_subvector, %struct.gds_subvector* %87, i64 1
  %89 = bitcast %struct.gds_subvector* %88 to %struct.gds_vector*
  %90 = load i64, i64* %7, align 8
  %91 = call i32 @memcpy(i64* %86, %struct.gds_vector* %89, i64 %90)
  %92 = load i64*, i64** @hmc_network, align 8
  %93 = load i64, i64* %7, align 8
  %94 = call i32 @EBCASC(i64* %92, i64 %93)
  %95 = load i64*, i64** @hmc_network, align 8
  %96 = load i64, i64* %7, align 8
  %97 = getelementptr inbounds i64, i64* %95, i64 %96
  store i64 0, i64* %97, align 8
  br label %98

98:                                               ; preds = %79, %51
  %99 = load %struct.gds_subvector*, %struct.gds_subvector** %6, align 8
  %100 = icmp ne %struct.gds_subvector* %99, null
  br i1 %100, label %101, label %120

101:                                              ; preds = %98
  %102 = load i32, i32* @OCF_LENGTH_CPC_NAME, align 4
  %103 = load %struct.gds_subvector*, %struct.gds_subvector** %6, align 8
  %104 = getelementptr inbounds %struct.gds_subvector, %struct.gds_subvector* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = sext i32 %105 to i64
  %107 = call i64 @min(i32 %102, i64 %106)
  store i64 %107, i64* %7, align 8
  %108 = load i64*, i64** @cpc_name, align 8
  %109 = load %struct.gds_subvector*, %struct.gds_subvector** %6, align 8
  %110 = getelementptr inbounds %struct.gds_subvector, %struct.gds_subvector* %109, i64 1
  %111 = bitcast %struct.gds_subvector* %110 to %struct.gds_vector*
  %112 = load i64, i64* %7, align 8
  %113 = call i32 @memcpy(i64* %108, %struct.gds_vector* %111, i64 %112)
  %114 = load i64*, i64** @cpc_name, align 8
  %115 = load i64, i64* %7, align 8
  %116 = call i32 @EBCASC(i64* %114, i64 %115)
  %117 = load i64*, i64** @cpc_name, align 8
  %118 = load i64, i64* %7, align 8
  %119 = getelementptr inbounds i64, i64* %117, i64 %118
  store i64 0, i64* %119, align 8
  br label %120

120:                                              ; preds = %101, %98
  %121 = call i32 @spin_unlock(i32* @sclp_ocf_lock)
  %122 = call i32 @schedule_work(i32* @sclp_ocf_change_work)
  br label %123

123:                                              ; preds = %120, %50, %35, %21
  ret void
}

declare dso_local %struct.gds_vector* @sclp_find_gds_vector(%struct.gds_vector*, i8*, i32) #1

declare dso_local %struct.gds_vector* @sclp_find_gds_subvector(%struct.gds_vector*, i8*, i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i64 @min(i32, i64) #1

declare dso_local i32 @memcpy(i64*, %struct.gds_vector*, i64) #1

declare dso_local i32 @EBCASC(i64*, i64) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @schedule_work(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
