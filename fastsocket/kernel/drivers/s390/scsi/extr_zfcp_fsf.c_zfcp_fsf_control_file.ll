; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/scsi/extr_zfcp_fsf.c_zfcp_fsf_control_file.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/scsi/extr_zfcp_fsf.c_zfcp_fsf_control_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zfcp_fsf_req = type { i32, i32, %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.fsf_qtcb_bottom_support }
%struct.fsf_qtcb_bottom_support = type { i32, i32 }
%struct.zfcp_adapter = type { i32, %struct.zfcp_qdio* }
%struct.zfcp_qdio = type { i32 }
%struct.zfcp_fsf_cfdc = type { i32, i32, i32 }
%struct.qdio_buffer_element = type { i32 }

@EIO = common dso_local global i32 0, align 4
@FSF_FEATURE_CFDC = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@SBAL_SFLAGS0_TYPE_WRITE = common dso_local global i32 0, align 4
@SBAL_SFLAGS0_TYPE_READ = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@zfcp_fsf_control_file_handler = common dso_local global i32 0, align 4
@FSF_CFDC_OPERATION_SUBTYPE = common dso_local global i32 0, align 4
@FSF_MAX_SBALS_PER_REQ = common dso_local global i32 0, align 4
@ZFCP_CFDC_MAX_SIZE = common dso_local global i64 0, align 8
@ZFCP_FSF_REQUEST_TIMEOUT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.zfcp_fsf_req* @zfcp_fsf_control_file(%struct.zfcp_adapter* %0, %struct.zfcp_fsf_cfdc* %1) #0 {
  %3 = alloca %struct.zfcp_fsf_req*, align 8
  %4 = alloca %struct.zfcp_adapter*, align 8
  %5 = alloca %struct.zfcp_fsf_cfdc*, align 8
  %6 = alloca %struct.qdio_buffer_element*, align 8
  %7 = alloca %struct.zfcp_qdio*, align 8
  %8 = alloca %struct.zfcp_fsf_req*, align 8
  %9 = alloca %struct.fsf_qtcb_bottom_support*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.zfcp_adapter* %0, %struct.zfcp_adapter** %4, align 8
  store %struct.zfcp_fsf_cfdc* %1, %struct.zfcp_fsf_cfdc** %5, align 8
  %12 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %4, align 8
  %13 = getelementptr inbounds %struct.zfcp_adapter, %struct.zfcp_adapter* %12, i32 0, i32 1
  %14 = load %struct.zfcp_qdio*, %struct.zfcp_qdio** %13, align 8
  store %struct.zfcp_qdio* %14, %struct.zfcp_qdio** %7, align 8
  store %struct.zfcp_fsf_req* null, %struct.zfcp_fsf_req** %8, align 8
  %15 = load i32, i32* @EIO, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %10, align 4
  %17 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %4, align 8
  %18 = getelementptr inbounds %struct.zfcp_adapter, %struct.zfcp_adapter* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* @FSF_FEATURE_CFDC, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %27, label %23

23:                                               ; preds = %2
  %24 = load i32, i32* @EOPNOTSUPP, align 4
  %25 = sub nsw i32 0, %24
  %26 = call %struct.zfcp_fsf_req* @ERR_PTR(i32 %25)
  store %struct.zfcp_fsf_req* %26, %struct.zfcp_fsf_req** %3, align 8
  br label %142

27:                                               ; preds = %2
  %28 = load %struct.zfcp_fsf_cfdc*, %struct.zfcp_fsf_cfdc** %5, align 8
  %29 = getelementptr inbounds %struct.zfcp_fsf_cfdc, %struct.zfcp_fsf_cfdc* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 4
  switch i32 %30, label %35 [
    i32 129, label %31
    i32 128, label %33
  ]

31:                                               ; preds = %27
  %32 = load i32, i32* @SBAL_SFLAGS0_TYPE_WRITE, align 4
  store i32 %32, i32* %11, align 4
  br label %39

33:                                               ; preds = %27
  %34 = load i32, i32* @SBAL_SFLAGS0_TYPE_READ, align 4
  store i32 %34, i32* %11, align 4
  br label %39

35:                                               ; preds = %27
  %36 = load i32, i32* @EINVAL, align 4
  %37 = sub nsw i32 0, %36
  %38 = call %struct.zfcp_fsf_req* @ERR_PTR(i32 %37)
  store %struct.zfcp_fsf_req* %38, %struct.zfcp_fsf_req** %3, align 8
  br label %142

39:                                               ; preds = %33, %31
  %40 = load %struct.zfcp_qdio*, %struct.zfcp_qdio** %7, align 8
  %41 = getelementptr inbounds %struct.zfcp_qdio, %struct.zfcp_qdio* %40, i32 0, i32 0
  %42 = call i32 @spin_lock_bh(i32* %41)
  %43 = load %struct.zfcp_qdio*, %struct.zfcp_qdio** %7, align 8
  %44 = call i64 @zfcp_fsf_req_sbal_get(%struct.zfcp_qdio* %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %39
  br label %128

47:                                               ; preds = %39
  %48 = load %struct.zfcp_qdio*, %struct.zfcp_qdio** %7, align 8
  %49 = load %struct.zfcp_fsf_cfdc*, %struct.zfcp_fsf_cfdc** %5, align 8
  %50 = getelementptr inbounds %struct.zfcp_fsf_cfdc, %struct.zfcp_fsf_cfdc* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 4
  %52 = call %struct.zfcp_fsf_req* @zfcp_fsf_req_create(%struct.zfcp_qdio* %48, i32 %51, i32* null)
  store %struct.zfcp_fsf_req* %52, %struct.zfcp_fsf_req** %8, align 8
  %53 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %8, align 8
  %54 = call i64 @IS_ERR(%struct.zfcp_fsf_req* %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %59

56:                                               ; preds = %47
  %57 = load i32, i32* @EPERM, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %10, align 4
  br label %128

59:                                               ; preds = %47
  %60 = load i32, i32* @zfcp_fsf_control_file_handler, align 4
  %61 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %8, align 8
  %62 = getelementptr inbounds %struct.zfcp_fsf_req, %struct.zfcp_fsf_req* %61, i32 0, i32 3
  store i32 %60, i32* %62, align 8
  %63 = load %struct.zfcp_qdio*, %struct.zfcp_qdio** %7, align 8
  %64 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %8, align 8
  %65 = getelementptr inbounds %struct.zfcp_fsf_req, %struct.zfcp_fsf_req* %64, i32 0, i32 1
  %66 = call %struct.qdio_buffer_element* @zfcp_qdio_sbale_req(%struct.zfcp_qdio* %63, i32* %65)
  store %struct.qdio_buffer_element* %66, %struct.qdio_buffer_element** %6, align 8
  %67 = load i32, i32* %11, align 4
  %68 = load %struct.qdio_buffer_element*, %struct.qdio_buffer_element** %6, align 8
  %69 = getelementptr inbounds %struct.qdio_buffer_element, %struct.qdio_buffer_element* %68, i64 0
  %70 = getelementptr inbounds %struct.qdio_buffer_element, %struct.qdio_buffer_element* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = or i32 %71, %67
  store i32 %72, i32* %70, align 4
  %73 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %8, align 8
  %74 = getelementptr inbounds %struct.zfcp_fsf_req, %struct.zfcp_fsf_req* %73, i32 0, i32 2
  %75 = load %struct.TYPE_4__*, %struct.TYPE_4__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %76, i32 0, i32 0
  store %struct.fsf_qtcb_bottom_support* %77, %struct.fsf_qtcb_bottom_support** %9, align 8
  %78 = load i32, i32* @FSF_CFDC_OPERATION_SUBTYPE, align 4
  %79 = load %struct.fsf_qtcb_bottom_support*, %struct.fsf_qtcb_bottom_support** %9, align 8
  %80 = getelementptr inbounds %struct.fsf_qtcb_bottom_support, %struct.fsf_qtcb_bottom_support* %79, i32 0, i32 1
  store i32 %78, i32* %80, align 4
  %81 = load %struct.zfcp_fsf_cfdc*, %struct.zfcp_fsf_cfdc** %5, align 8
  %82 = getelementptr inbounds %struct.zfcp_fsf_cfdc, %struct.zfcp_fsf_cfdc* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = load %struct.fsf_qtcb_bottom_support*, %struct.fsf_qtcb_bottom_support** %9, align 8
  %85 = getelementptr inbounds %struct.fsf_qtcb_bottom_support, %struct.fsf_qtcb_bottom_support* %84, i32 0, i32 0
  store i32 %83, i32* %85, align 4
  %86 = load %struct.zfcp_qdio*, %struct.zfcp_qdio** %7, align 8
  %87 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %8, align 8
  %88 = getelementptr inbounds %struct.zfcp_fsf_req, %struct.zfcp_fsf_req* %87, i32 0, i32 1
  %89 = load i32, i32* %11, align 4
  %90 = load %struct.zfcp_fsf_cfdc*, %struct.zfcp_fsf_cfdc** %5, align 8
  %91 = getelementptr inbounds %struct.zfcp_fsf_cfdc, %struct.zfcp_fsf_cfdc* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = load i32, i32* @FSF_MAX_SBALS_PER_REQ, align 4
  %94 = call i32 @zfcp_qdio_sbals_from_sg(%struct.zfcp_qdio* %86, i32* %88, i32 %89, i32 %92, i32 %93)
  store i32 %94, i32* %10, align 4
  %95 = load i32, i32* %10, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %104, label %97

97:                                               ; preds = %59
  %98 = load %struct.zfcp_fsf_cfdc*, %struct.zfcp_fsf_cfdc** %5, align 8
  %99 = getelementptr inbounds %struct.zfcp_fsf_cfdc, %struct.zfcp_fsf_cfdc* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = call i64 @zfcp_qdio_real_bytes(i32 %100)
  %102 = load i64, i64* @ZFCP_CFDC_MAX_SIZE, align 8
  %103 = icmp ne i64 %101, %102
  br i1 %103, label %104, label %109

104:                                              ; preds = %97, %59
  %105 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %8, align 8
  %106 = call i32 @zfcp_fsf_req_free(%struct.zfcp_fsf_req* %105)
  %107 = load i32, i32* @EIO, align 4
  %108 = sub nsw i32 0, %107
  store i32 %108, i32* %10, align 4
  br label %128

109:                                              ; preds = %97
  %110 = load %struct.zfcp_qdio*, %struct.zfcp_qdio** %7, align 8
  %111 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %8, align 8
  %112 = getelementptr inbounds %struct.zfcp_fsf_req, %struct.zfcp_fsf_req* %111, i32 0, i32 1
  %113 = call i32 @zfcp_qdio_set_sbale_last(%struct.zfcp_qdio* %110, i32* %112)
  %114 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %4, align 8
  %115 = call i64 @zfcp_adapter_multi_buffer_active(%struct.zfcp_adapter* %114)
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %122

117:                                              ; preds = %109
  %118 = load %struct.zfcp_qdio*, %struct.zfcp_qdio** %7, align 8
  %119 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %8, align 8
  %120 = getelementptr inbounds %struct.zfcp_fsf_req, %struct.zfcp_fsf_req* %119, i32 0, i32 1
  %121 = call i32 @zfcp_qdio_set_scount(%struct.zfcp_qdio* %118, i32* %120)
  br label %122

122:                                              ; preds = %117, %109
  %123 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %8, align 8
  %124 = load i32, i32* @ZFCP_FSF_REQUEST_TIMEOUT, align 4
  %125 = call i32 @zfcp_fsf_start_timer(%struct.zfcp_fsf_req* %123, i32 %124)
  %126 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %8, align 8
  %127 = call i32 @zfcp_fsf_req_send(%struct.zfcp_fsf_req* %126)
  store i32 %127, i32* %10, align 4
  br label %128

128:                                              ; preds = %122, %104, %56, %46
  %129 = load %struct.zfcp_qdio*, %struct.zfcp_qdio** %7, align 8
  %130 = getelementptr inbounds %struct.zfcp_qdio, %struct.zfcp_qdio* %129, i32 0, i32 0
  %131 = call i32 @spin_unlock_bh(i32* %130)
  %132 = load i32, i32* %10, align 4
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %139, label %134

134:                                              ; preds = %128
  %135 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %8, align 8
  %136 = getelementptr inbounds %struct.zfcp_fsf_req, %struct.zfcp_fsf_req* %135, i32 0, i32 0
  %137 = call i32 @wait_for_completion(i32* %136)
  %138 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %8, align 8
  store %struct.zfcp_fsf_req* %138, %struct.zfcp_fsf_req** %3, align 8
  br label %142

139:                                              ; preds = %128
  %140 = load i32, i32* %10, align 4
  %141 = call %struct.zfcp_fsf_req* @ERR_PTR(i32 %140)
  store %struct.zfcp_fsf_req* %141, %struct.zfcp_fsf_req** %3, align 8
  br label %142

142:                                              ; preds = %139, %134, %35, %23
  %143 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %3, align 8
  ret %struct.zfcp_fsf_req* %143
}

declare dso_local %struct.zfcp_fsf_req* @ERR_PTR(i32) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i64 @zfcp_fsf_req_sbal_get(%struct.zfcp_qdio*) #1

declare dso_local %struct.zfcp_fsf_req* @zfcp_fsf_req_create(%struct.zfcp_qdio*, i32, i32*) #1

declare dso_local i64 @IS_ERR(%struct.zfcp_fsf_req*) #1

declare dso_local %struct.qdio_buffer_element* @zfcp_qdio_sbale_req(%struct.zfcp_qdio*, i32*) #1

declare dso_local i32 @zfcp_qdio_sbals_from_sg(%struct.zfcp_qdio*, i32*, i32, i32, i32) #1

declare dso_local i64 @zfcp_qdio_real_bytes(i32) #1

declare dso_local i32 @zfcp_fsf_req_free(%struct.zfcp_fsf_req*) #1

declare dso_local i32 @zfcp_qdio_set_sbale_last(%struct.zfcp_qdio*, i32*) #1

declare dso_local i64 @zfcp_adapter_multi_buffer_active(%struct.zfcp_adapter*) #1

declare dso_local i32 @zfcp_qdio_set_scount(%struct.zfcp_qdio*, i32*) #1

declare dso_local i32 @zfcp_fsf_start_timer(%struct.zfcp_fsf_req*, i32) #1

declare dso_local i32 @zfcp_fsf_req_send(%struct.zfcp_fsf_req*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @wait_for_completion(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
