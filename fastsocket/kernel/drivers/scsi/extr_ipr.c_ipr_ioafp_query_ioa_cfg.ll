; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_ipr.c_ipr_ioafp_query_ioa_cfg.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_ipr.c_ipr_ioafp_query_ioa_cfg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipr_cmnd = type { i32, %struct.ipr_ioarcb, %struct.ipr_ioa_cfg* }
%struct.ipr_ioarcb = type { %struct.TYPE_6__, i32 }
%struct.TYPE_6__ = type { i32*, i32 }
%struct.ipr_ioa_cfg = type { i32, i32, i32, %struct.TYPE_5__*, %struct.TYPE_4__* }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { %struct.ipr_inquiry_cap, %struct.ipr_inquiry_page3 }
%struct.ipr_inquiry_cap = type { i32 }
%struct.ipr_inquiry_page3 = type { i32*, i32, i32 }

@ENTER = common dso_local global i32 0, align 4
@IPR_CAP_DUAL_IOA_RAID = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"Adapter firmware version: %02X%02X%02X%02X\0A\00", align 1
@IPR_RQTYPE_IOACMD = common dso_local global i32 0, align 4
@IPR_IOA_RES_HANDLE = common dso_local global i32 0, align 4
@IPR_QUERY_IOA_CONFIG = common dso_local global i32 0, align 4
@IPR_IOADL_FLAGS_READ_LAST = common dso_local global i32 0, align 4
@ipr_init_res_table = common dso_local global i32 0, align 4
@ipr_reset_ioa_job = common dso_local global i32 0, align 4
@ipr_timeout = common dso_local global i32 0, align 4
@IPR_INTERNAL_TIMEOUT = common dso_local global i32 0, align 4
@LEAVE = common dso_local global i32 0, align 4
@IPR_RC_JOB_RETURN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ipr_cmnd*)* @ipr_ioafp_query_ioa_cfg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ipr_ioafp_query_ioa_cfg(%struct.ipr_cmnd* %0) #0 {
  %2 = alloca %struct.ipr_cmnd*, align 8
  %3 = alloca %struct.ipr_ioa_cfg*, align 8
  %4 = alloca %struct.ipr_ioarcb*, align 8
  %5 = alloca %struct.ipr_inquiry_page3*, align 8
  %6 = alloca %struct.ipr_inquiry_cap*, align 8
  store %struct.ipr_cmnd* %0, %struct.ipr_cmnd** %2, align 8
  %7 = load %struct.ipr_cmnd*, %struct.ipr_cmnd** %2, align 8
  %8 = getelementptr inbounds %struct.ipr_cmnd, %struct.ipr_cmnd* %7, i32 0, i32 2
  %9 = load %struct.ipr_ioa_cfg*, %struct.ipr_ioa_cfg** %8, align 8
  store %struct.ipr_ioa_cfg* %9, %struct.ipr_ioa_cfg** %3, align 8
  %10 = load %struct.ipr_cmnd*, %struct.ipr_cmnd** %2, align 8
  %11 = getelementptr inbounds %struct.ipr_cmnd, %struct.ipr_cmnd* %10, i32 0, i32 1
  store %struct.ipr_ioarcb* %11, %struct.ipr_ioarcb** %4, align 8
  %12 = load %struct.ipr_ioa_cfg*, %struct.ipr_ioa_cfg** %3, align 8
  %13 = getelementptr inbounds %struct.ipr_ioa_cfg, %struct.ipr_ioa_cfg* %12, i32 0, i32 4
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 1
  store %struct.ipr_inquiry_page3* %15, %struct.ipr_inquiry_page3** %5, align 8
  %16 = load %struct.ipr_ioa_cfg*, %struct.ipr_ioa_cfg** %3, align 8
  %17 = getelementptr inbounds %struct.ipr_ioa_cfg, %struct.ipr_ioa_cfg* %16, i32 0, i32 4
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  store %struct.ipr_inquiry_cap* %19, %struct.ipr_inquiry_cap** %6, align 8
  %20 = load i32, i32* @ENTER, align 4
  %21 = load %struct.ipr_inquiry_cap*, %struct.ipr_inquiry_cap** %6, align 8
  %22 = getelementptr inbounds %struct.ipr_inquiry_cap, %struct.ipr_inquiry_cap* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @IPR_CAP_DUAL_IOA_RAID, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %1
  %28 = load %struct.ipr_ioa_cfg*, %struct.ipr_ioa_cfg** %3, align 8
  %29 = getelementptr inbounds %struct.ipr_ioa_cfg, %struct.ipr_ioa_cfg* %28, i32 0, i32 0
  store i32 1, i32* %29, align 8
  br label %30

30:                                               ; preds = %27, %1
  %31 = load %struct.ipr_ioa_cfg*, %struct.ipr_ioa_cfg** %3, align 8
  %32 = getelementptr inbounds %struct.ipr_ioa_cfg, %struct.ipr_ioa_cfg* %31, i32 0, i32 3
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 0
  %35 = load %struct.ipr_inquiry_page3*, %struct.ipr_inquiry_page3** %5, align 8
  %36 = getelementptr inbounds %struct.ipr_inquiry_page3, %struct.ipr_inquiry_page3* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.ipr_inquiry_page3*, %struct.ipr_inquiry_page3** %5, align 8
  %39 = getelementptr inbounds %struct.ipr_inquiry_page3, %struct.ipr_inquiry_page3* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 8
  %41 = load %struct.ipr_inquiry_page3*, %struct.ipr_inquiry_page3** %5, align 8
  %42 = getelementptr inbounds %struct.ipr_inquiry_page3, %struct.ipr_inquiry_page3* %41, i32 0, i32 0
  %43 = load i32*, i32** %42, align 8
  %44 = getelementptr inbounds i32, i32* %43, i64 0
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.ipr_inquiry_page3*, %struct.ipr_inquiry_page3** %5, align 8
  %47 = getelementptr inbounds %struct.ipr_inquiry_page3, %struct.ipr_inquiry_page3* %46, i32 0, i32 0
  %48 = load i32*, i32** %47, align 8
  %49 = getelementptr inbounds i32, i32* %48, i64 1
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @dev_info(i32* %34, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i32 %37, i32 %40, i32 %45, i32 %50)
  %52 = load i32, i32* @IPR_RQTYPE_IOACMD, align 4
  %53 = load %struct.ipr_ioarcb*, %struct.ipr_ioarcb** %4, align 8
  %54 = getelementptr inbounds %struct.ipr_ioarcb, %struct.ipr_ioarcb* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 1
  store i32 %52, i32* %55, align 8
  %56 = load i32, i32* @IPR_IOA_RES_HANDLE, align 4
  %57 = call i32 @cpu_to_be32(i32 %56)
  %58 = load %struct.ipr_ioarcb*, %struct.ipr_ioarcb** %4, align 8
  %59 = getelementptr inbounds %struct.ipr_ioarcb, %struct.ipr_ioarcb* %58, i32 0, i32 1
  store i32 %57, i32* %59, align 8
  %60 = load i32, i32* @IPR_QUERY_IOA_CONFIG, align 4
  %61 = load %struct.ipr_ioarcb*, %struct.ipr_ioarcb** %4, align 8
  %62 = getelementptr inbounds %struct.ipr_ioarcb, %struct.ipr_ioarcb* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 0
  %64 = load i32*, i32** %63, align 8
  %65 = getelementptr inbounds i32, i32* %64, i64 0
  store i32 %60, i32* %65, align 4
  %66 = load %struct.ipr_ioa_cfg*, %struct.ipr_ioa_cfg** %3, align 8
  %67 = getelementptr inbounds %struct.ipr_ioa_cfg, %struct.ipr_ioa_cfg* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = ashr i32 %68, 16
  %70 = and i32 %69, 255
  %71 = load %struct.ipr_ioarcb*, %struct.ipr_ioarcb** %4, align 8
  %72 = getelementptr inbounds %struct.ipr_ioarcb, %struct.ipr_ioarcb* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i32 0, i32 0
  %74 = load i32*, i32** %73, align 8
  %75 = getelementptr inbounds i32, i32* %74, i64 6
  store i32 %70, i32* %75, align 4
  %76 = load %struct.ipr_ioa_cfg*, %struct.ipr_ioa_cfg** %3, align 8
  %77 = getelementptr inbounds %struct.ipr_ioa_cfg, %struct.ipr_ioa_cfg* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = ashr i32 %78, 8
  %80 = and i32 %79, 255
  %81 = load %struct.ipr_ioarcb*, %struct.ipr_ioarcb** %4, align 8
  %82 = getelementptr inbounds %struct.ipr_ioarcb, %struct.ipr_ioarcb* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %82, i32 0, i32 0
  %84 = load i32*, i32** %83, align 8
  %85 = getelementptr inbounds i32, i32* %84, i64 7
  store i32 %80, i32* %85, align 4
  %86 = load %struct.ipr_ioa_cfg*, %struct.ipr_ioa_cfg** %3, align 8
  %87 = getelementptr inbounds %struct.ipr_ioa_cfg, %struct.ipr_ioa_cfg* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = and i32 %88, 255
  %90 = load %struct.ipr_ioarcb*, %struct.ipr_ioarcb** %4, align 8
  %91 = getelementptr inbounds %struct.ipr_ioarcb, %struct.ipr_ioarcb* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %91, i32 0, i32 0
  %93 = load i32*, i32** %92, align 8
  %94 = getelementptr inbounds i32, i32* %93, i64 8
  store i32 %89, i32* %94, align 4
  %95 = load %struct.ipr_cmnd*, %struct.ipr_cmnd** %2, align 8
  %96 = load %struct.ipr_ioa_cfg*, %struct.ipr_ioa_cfg** %3, align 8
  %97 = getelementptr inbounds %struct.ipr_ioa_cfg, %struct.ipr_ioa_cfg* %96, i32 0, i32 2
  %98 = load i32, i32* %97, align 8
  %99 = load %struct.ipr_ioa_cfg*, %struct.ipr_ioa_cfg** %3, align 8
  %100 = getelementptr inbounds %struct.ipr_ioa_cfg, %struct.ipr_ioa_cfg* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 4
  %102 = load i32, i32* @IPR_IOADL_FLAGS_READ_LAST, align 4
  %103 = call i32 @ipr_init_ioadl(%struct.ipr_cmnd* %95, i32 %98, i32 %101, i32 %102)
  %104 = load i32, i32* @ipr_init_res_table, align 4
  %105 = load %struct.ipr_cmnd*, %struct.ipr_cmnd** %2, align 8
  %106 = getelementptr inbounds %struct.ipr_cmnd, %struct.ipr_cmnd* %105, i32 0, i32 0
  store i32 %104, i32* %106, align 8
  %107 = load %struct.ipr_cmnd*, %struct.ipr_cmnd** %2, align 8
  %108 = load i32, i32* @ipr_reset_ioa_job, align 4
  %109 = load i32, i32* @ipr_timeout, align 4
  %110 = load i32, i32* @IPR_INTERNAL_TIMEOUT, align 4
  %111 = call i32 @ipr_do_req(%struct.ipr_cmnd* %107, i32 %108, i32 %109, i32 %110)
  %112 = load i32, i32* @LEAVE, align 4
  %113 = load i32, i32* @IPR_RC_JOB_RETURN, align 4
  ret i32 %113
}

declare dso_local i32 @dev_info(i32*, i8*, i32, i32, i32, i32) #1

declare dso_local i32 @cpu_to_be32(i32) #1

declare dso_local i32 @ipr_init_ioadl(%struct.ipr_cmnd*, i32, i32, i32) #1

declare dso_local i32 @ipr_do_req(%struct.ipr_cmnd*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
