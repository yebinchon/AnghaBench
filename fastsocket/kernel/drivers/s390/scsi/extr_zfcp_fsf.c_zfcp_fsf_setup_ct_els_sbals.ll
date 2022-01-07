; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/scsi/extr_zfcp_fsf.c_zfcp_fsf_setup_ct_els_sbals.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/scsi/extr_zfcp_fsf.c_zfcp_fsf_setup_ct_els_sbals.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zfcp_fsf_req = type { i32, %struct.fsf_qtcb*, %struct.zfcp_adapter* }
%struct.fsf_qtcb = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i8*, i8* }
%struct.zfcp_adapter = type { i32, %struct.zfcp_qdio* }
%struct.zfcp_qdio = type { i32 }
%struct.scatterlist = type { i32 }
%struct.qdio_buffer_element = type { i32 }

@SBAL_SFLAGS0_TYPE_WRITE_READ = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@FSF_FEATURE_ELS_CT_CHAINED_SBALS = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.zfcp_fsf_req*, %struct.scatterlist*, %struct.scatterlist*, i32)* @zfcp_fsf_setup_ct_els_sbals to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zfcp_fsf_setup_ct_els_sbals(%struct.zfcp_fsf_req* %0, %struct.scatterlist* %1, %struct.scatterlist* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.zfcp_fsf_req*, align 8
  %7 = alloca %struct.scatterlist*, align 8
  %8 = alloca %struct.scatterlist*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.zfcp_adapter*, align 8
  %11 = alloca %struct.qdio_buffer_element*, align 8
  %12 = alloca %struct.zfcp_qdio*, align 8
  %13 = alloca %struct.fsf_qtcb*, align 8
  %14 = alloca i32, align 4
  store %struct.zfcp_fsf_req* %0, %struct.zfcp_fsf_req** %6, align 8
  store %struct.scatterlist* %1, %struct.scatterlist** %7, align 8
  store %struct.scatterlist* %2, %struct.scatterlist** %8, align 8
  store i32 %3, i32* %9, align 4
  %15 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %6, align 8
  %16 = getelementptr inbounds %struct.zfcp_fsf_req, %struct.zfcp_fsf_req* %15, i32 0, i32 2
  %17 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %16, align 8
  store %struct.zfcp_adapter* %17, %struct.zfcp_adapter** %10, align 8
  %18 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %10, align 8
  %19 = getelementptr inbounds %struct.zfcp_adapter, %struct.zfcp_adapter* %18, i32 0, i32 1
  %20 = load %struct.zfcp_qdio*, %struct.zfcp_qdio** %19, align 8
  %21 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %6, align 8
  %22 = getelementptr inbounds %struct.zfcp_fsf_req, %struct.zfcp_fsf_req* %21, i32 0, i32 0
  %23 = call %struct.qdio_buffer_element* @zfcp_qdio_sbale_req(%struct.zfcp_qdio* %20, i32* %22)
  store %struct.qdio_buffer_element* %23, %struct.qdio_buffer_element** %11, align 8
  %24 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %10, align 8
  %25 = getelementptr inbounds %struct.zfcp_adapter, %struct.zfcp_adapter* %24, i32 0, i32 1
  %26 = load %struct.zfcp_qdio*, %struct.zfcp_qdio** %25, align 8
  store %struct.zfcp_qdio* %26, %struct.zfcp_qdio** %12, align 8
  %27 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %6, align 8
  %28 = getelementptr inbounds %struct.zfcp_fsf_req, %struct.zfcp_fsf_req* %27, i32 0, i32 1
  %29 = load %struct.fsf_qtcb*, %struct.fsf_qtcb** %28, align 8
  store %struct.fsf_qtcb* %29, %struct.fsf_qtcb** %13, align 8
  %30 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %10, align 8
  %31 = getelementptr inbounds %struct.zfcp_adapter, %struct.zfcp_adapter* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  store i32 %32, i32* %14, align 4
  %33 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %10, align 8
  %34 = call i64 @zfcp_adapter_multi_buffer_active(%struct.zfcp_adapter* %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %75

36:                                               ; preds = %4
  %37 = load %struct.zfcp_qdio*, %struct.zfcp_qdio** %12, align 8
  %38 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %6, align 8
  %39 = getelementptr inbounds %struct.zfcp_fsf_req, %struct.zfcp_fsf_req* %38, i32 0, i32 0
  %40 = load i32, i32* @SBAL_SFLAGS0_TYPE_WRITE_READ, align 4
  %41 = load %struct.scatterlist*, %struct.scatterlist** %7, align 8
  %42 = load i32, i32* %9, align 4
  %43 = call i64 @zfcp_qdio_sbals_from_sg(%struct.zfcp_qdio* %37, i32* %39, i32 %40, %struct.scatterlist* %41, i32 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %36
  %46 = load i32, i32* @EIO, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %5, align 4
  br label %145

48:                                               ; preds = %36
  %49 = load %struct.zfcp_qdio*, %struct.zfcp_qdio** %12, align 8
  %50 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %6, align 8
  %51 = getelementptr inbounds %struct.zfcp_fsf_req, %struct.zfcp_fsf_req* %50, i32 0, i32 0
  %52 = load i32, i32* @SBAL_SFLAGS0_TYPE_WRITE_READ, align 4
  %53 = load %struct.scatterlist*, %struct.scatterlist** %8, align 8
  %54 = load i32, i32* %9, align 4
  %55 = call i64 @zfcp_qdio_sbals_from_sg(%struct.zfcp_qdio* %49, i32* %51, i32 %52, %struct.scatterlist* %53, i32 %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %60

57:                                               ; preds = %48
  %58 = load i32, i32* @EIO, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %5, align 4
  br label %145

60:                                               ; preds = %48
  %61 = load %struct.zfcp_qdio*, %struct.zfcp_qdio** %12, align 8
  %62 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %6, align 8
  %63 = getelementptr inbounds %struct.zfcp_fsf_req, %struct.zfcp_fsf_req* %62, i32 0, i32 0
  %64 = load %struct.scatterlist*, %struct.scatterlist** %7, align 8
  %65 = call i32 @zfcp_qdio_sbale_count(%struct.scatterlist* %64)
  %66 = call i32 @zfcp_qdio_set_data_div(%struct.zfcp_qdio* %61, i32* %63, i32 %65)
  %67 = load %struct.zfcp_qdio*, %struct.zfcp_qdio** %12, align 8
  %68 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %6, align 8
  %69 = getelementptr inbounds %struct.zfcp_fsf_req, %struct.zfcp_fsf_req* %68, i32 0, i32 0
  %70 = call i32 @zfcp_qdio_set_sbale_last(%struct.zfcp_qdio* %67, i32* %69)
  %71 = load %struct.zfcp_qdio*, %struct.zfcp_qdio** %12, align 8
  %72 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %6, align 8
  %73 = getelementptr inbounds %struct.zfcp_fsf_req, %struct.zfcp_fsf_req* %72, i32 0, i32 0
  %74 = call i32 @zfcp_qdio_set_scount(%struct.zfcp_qdio* %71, i32* %73)
  store i32 0, i32* %5, align 4
  br label %145

75:                                               ; preds = %4
  %76 = load %struct.scatterlist*, %struct.scatterlist** %7, align 8
  %77 = call i64 @zfcp_fsf_one_sbal(%struct.scatterlist* %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %88

79:                                               ; preds = %75
  %80 = load %struct.scatterlist*, %struct.scatterlist** %8, align 8
  %81 = call i64 @zfcp_fsf_one_sbal(%struct.scatterlist* %80)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %88

83:                                               ; preds = %79
  %84 = load %struct.qdio_buffer_element*, %struct.qdio_buffer_element** %11, align 8
  %85 = load %struct.scatterlist*, %struct.scatterlist** %7, align 8
  %86 = load %struct.scatterlist*, %struct.scatterlist** %8, align 8
  %87 = call i32 @zfcp_fsf_setup_ct_els_unchained(%struct.qdio_buffer_element* %84, %struct.scatterlist* %85, %struct.scatterlist* %86)
  store i32 0, i32* %5, align 4
  br label %145

88:                                               ; preds = %79, %75
  %89 = load i32, i32* %14, align 4
  %90 = load i32, i32* @FSF_FEATURE_ELS_CT_CHAINED_SBALS, align 4
  %91 = and i32 %89, %90
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %96, label %93

93:                                               ; preds = %88
  %94 = load i32, i32* @EOPNOTSUPP, align 4
  %95 = sub nsw i32 0, %94
  store i32 %95, i32* %5, align 4
  br label %145

96:                                               ; preds = %88
  %97 = load %struct.zfcp_qdio*, %struct.zfcp_qdio** %12, align 8
  %98 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %6, align 8
  %99 = getelementptr inbounds %struct.zfcp_fsf_req, %struct.zfcp_fsf_req* %98, i32 0, i32 0
  %100 = load i32, i32* @SBAL_SFLAGS0_TYPE_WRITE_READ, align 4
  %101 = load %struct.scatterlist*, %struct.scatterlist** %7, align 8
  %102 = load i32, i32* %9, align 4
  %103 = call i64 @zfcp_qdio_sbals_from_sg(%struct.zfcp_qdio* %97, i32* %99, i32 %100, %struct.scatterlist* %101, i32 %102)
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %108

105:                                              ; preds = %96
  %106 = load i32, i32* @EIO, align 4
  %107 = sub nsw i32 0, %106
  store i32 %107, i32* %5, align 4
  br label %145

108:                                              ; preds = %96
  %109 = load %struct.scatterlist*, %struct.scatterlist** %7, align 8
  %110 = call i8* @zfcp_qdio_real_bytes(%struct.scatterlist* %109)
  %111 = load %struct.fsf_qtcb*, %struct.fsf_qtcb** %13, align 8
  %112 = getelementptr inbounds %struct.fsf_qtcb, %struct.fsf_qtcb* %111, i32 0, i32 0
  %113 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %112, i32 0, i32 0
  %114 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %113, i32 0, i32 1
  store i8* %110, i8** %114, align 8
  %115 = load %struct.zfcp_qdio*, %struct.zfcp_qdio** %12, align 8
  %116 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %6, align 8
  %117 = getelementptr inbounds %struct.zfcp_fsf_req, %struct.zfcp_fsf_req* %116, i32 0, i32 0
  %118 = call i32 @zfcp_qdio_set_sbale_last(%struct.zfcp_qdio* %115, i32* %117)
  %119 = load %struct.zfcp_qdio*, %struct.zfcp_qdio** %12, align 8
  %120 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %6, align 8
  %121 = getelementptr inbounds %struct.zfcp_fsf_req, %struct.zfcp_fsf_req* %120, i32 0, i32 0
  %122 = call i32 @zfcp_qdio_skip_to_last_sbale(%struct.zfcp_qdio* %119, i32* %121)
  %123 = load %struct.zfcp_qdio*, %struct.zfcp_qdio** %12, align 8
  %124 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %6, align 8
  %125 = getelementptr inbounds %struct.zfcp_fsf_req, %struct.zfcp_fsf_req* %124, i32 0, i32 0
  %126 = load i32, i32* @SBAL_SFLAGS0_TYPE_WRITE_READ, align 4
  %127 = load %struct.scatterlist*, %struct.scatterlist** %8, align 8
  %128 = load i32, i32* %9, align 4
  %129 = call i64 @zfcp_qdio_sbals_from_sg(%struct.zfcp_qdio* %123, i32* %125, i32 %126, %struct.scatterlist* %127, i32 %128)
  %130 = icmp ne i64 %129, 0
  br i1 %130, label %131, label %134

131:                                              ; preds = %108
  %132 = load i32, i32* @EIO, align 4
  %133 = sub nsw i32 0, %132
  store i32 %133, i32* %5, align 4
  br label %145

134:                                              ; preds = %108
  %135 = load %struct.scatterlist*, %struct.scatterlist** %8, align 8
  %136 = call i8* @zfcp_qdio_real_bytes(%struct.scatterlist* %135)
  %137 = load %struct.fsf_qtcb*, %struct.fsf_qtcb** %13, align 8
  %138 = getelementptr inbounds %struct.fsf_qtcb, %struct.fsf_qtcb* %137, i32 0, i32 0
  %139 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %138, i32 0, i32 0
  %140 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %139, i32 0, i32 0
  store i8* %136, i8** %140, align 8
  %141 = load %struct.zfcp_qdio*, %struct.zfcp_qdio** %12, align 8
  %142 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %6, align 8
  %143 = getelementptr inbounds %struct.zfcp_fsf_req, %struct.zfcp_fsf_req* %142, i32 0, i32 0
  %144 = call i32 @zfcp_qdio_set_sbale_last(%struct.zfcp_qdio* %141, i32* %143)
  store i32 0, i32* %5, align 4
  br label %145

145:                                              ; preds = %134, %131, %105, %93, %83, %60, %57, %45
  %146 = load i32, i32* %5, align 4
  ret i32 %146
}

declare dso_local %struct.qdio_buffer_element* @zfcp_qdio_sbale_req(%struct.zfcp_qdio*, i32*) #1

declare dso_local i64 @zfcp_adapter_multi_buffer_active(%struct.zfcp_adapter*) #1

declare dso_local i64 @zfcp_qdio_sbals_from_sg(%struct.zfcp_qdio*, i32*, i32, %struct.scatterlist*, i32) #1

declare dso_local i32 @zfcp_qdio_set_data_div(%struct.zfcp_qdio*, i32*, i32) #1

declare dso_local i32 @zfcp_qdio_sbale_count(%struct.scatterlist*) #1

declare dso_local i32 @zfcp_qdio_set_sbale_last(%struct.zfcp_qdio*, i32*) #1

declare dso_local i32 @zfcp_qdio_set_scount(%struct.zfcp_qdio*, i32*) #1

declare dso_local i64 @zfcp_fsf_one_sbal(%struct.scatterlist*) #1

declare dso_local i32 @zfcp_fsf_setup_ct_els_unchained(%struct.qdio_buffer_element*, %struct.scatterlist*, %struct.scatterlist*) #1

declare dso_local i8* @zfcp_qdio_real_bytes(%struct.scatterlist*) #1

declare dso_local i32 @zfcp_qdio_skip_to_last_sbale(%struct.zfcp_qdio*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
