; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/char/extr_sclp_cpi_sys.c_cpi_prepare_req.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/char/extr_sclp_cpi_sys.c_cpi_prepare_req.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sclp_req = type { i32, i32, %struct.cpi_sccb*, i32 }
%struct.cpi_sccb = type { %struct.cpi_evbuf, %struct.TYPE_3__ }
%struct.cpi_evbuf = type { i32, i32, i32, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_3__ = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@GFP_DMA = common dso_local global i32 0, align 4
@system_type = common dso_local global i32 0, align 4
@system_name = common dso_local global i32 0, align 4
@system_level = common dso_local global i32 0, align 4
@sysplex_name = common dso_local global i32 0, align 4
@SCLP_CMDW_WRITE_EVENT_DATA = common dso_local global i32 0, align 4
@SCLP_REQ_FILLED = common dso_local global i32 0, align 4
@cpi_callback = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.sclp_req* ()* @cpi_prepare_req to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.sclp_req* @cpi_prepare_req() #0 {
  %1 = alloca %struct.sclp_req*, align 8
  %2 = alloca %struct.sclp_req*, align 8
  %3 = alloca %struct.cpi_sccb*, align 8
  %4 = alloca %struct.cpi_evbuf*, align 8
  %5 = load i32, i32* @GFP_KERNEL, align 4
  %6 = call %struct.sclp_req* @kzalloc(i32 24, i32 %5)
  store %struct.sclp_req* %6, %struct.sclp_req** %2, align 8
  %7 = load %struct.sclp_req*, %struct.sclp_req** %2, align 8
  %8 = icmp ne %struct.sclp_req* %7, null
  br i1 %8, label %13, label %9

9:                                                ; preds = %0
  %10 = load i32, i32* @ENOMEM, align 4
  %11 = sub nsw i32 0, %10
  %12 = call %struct.sclp_req* @ERR_PTR(i32 %11)
  store %struct.sclp_req* %12, %struct.sclp_req** %1, align 8
  br label %72

13:                                               ; preds = %0
  %14 = load i32, i32* @GFP_KERNEL, align 4
  %15 = load i32, i32* @GFP_DMA, align 4
  %16 = or i32 %14, %15
  %17 = call i64 @get_zeroed_page(i32 %16)
  %18 = inttoptr i64 %17 to %struct.cpi_sccb*
  store %struct.cpi_sccb* %18, %struct.cpi_sccb** %3, align 8
  %19 = load %struct.cpi_sccb*, %struct.cpi_sccb** %3, align 8
  %20 = icmp ne %struct.cpi_sccb* %19, null
  br i1 %20, label %27, label %21

21:                                               ; preds = %13
  %22 = load %struct.sclp_req*, %struct.sclp_req** %2, align 8
  %23 = call i32 @kfree(%struct.sclp_req* %22)
  %24 = load i32, i32* @ENOMEM, align 4
  %25 = sub nsw i32 0, %24
  %26 = call %struct.sclp_req* @ERR_PTR(i32 %25)
  store %struct.sclp_req* %26, %struct.sclp_req** %1, align 8
  br label %72

27:                                               ; preds = %13
  %28 = load %struct.cpi_sccb*, %struct.cpi_sccb** %3, align 8
  %29 = getelementptr inbounds %struct.cpi_sccb, %struct.cpi_sccb* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  store i32 28, i32* %30, align 4
  %31 = load %struct.cpi_sccb*, %struct.cpi_sccb** %3, align 8
  %32 = getelementptr inbounds %struct.cpi_sccb, %struct.cpi_sccb* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.cpi_evbuf, %struct.cpi_evbuf* %32, i32 0, i32 4
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  store i32 24, i32* %34, align 4
  %35 = load %struct.cpi_sccb*, %struct.cpi_sccb** %3, align 8
  %36 = getelementptr inbounds %struct.cpi_sccb, %struct.cpi_sccb* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.cpi_evbuf, %struct.cpi_evbuf* %36, i32 0, i32 4
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 1
  store i32 11, i32* %38, align 4
  %39 = load %struct.cpi_sccb*, %struct.cpi_sccb** %3, align 8
  %40 = getelementptr inbounds %struct.cpi_sccb, %struct.cpi_sccb* %39, i32 0, i32 0
  store %struct.cpi_evbuf* %40, %struct.cpi_evbuf** %4, align 8
  %41 = load %struct.cpi_evbuf*, %struct.cpi_evbuf** %4, align 8
  %42 = getelementptr inbounds %struct.cpi_evbuf, %struct.cpi_evbuf* %41, i32 0, i32 3
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @system_type, align 4
  %45 = call i32 @set_data(i32 %43, i32 %44)
  %46 = load %struct.cpi_evbuf*, %struct.cpi_evbuf** %4, align 8
  %47 = getelementptr inbounds %struct.cpi_evbuf, %struct.cpi_evbuf* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* @system_name, align 4
  %50 = call i32 @set_data(i32 %48, i32 %49)
  %51 = load i32, i32* @system_level, align 4
  %52 = load %struct.cpi_evbuf*, %struct.cpi_evbuf** %4, align 8
  %53 = getelementptr inbounds %struct.cpi_evbuf, %struct.cpi_evbuf* %52, i32 0, i32 1
  store i32 %51, i32* %53, align 4
  %54 = load %struct.cpi_evbuf*, %struct.cpi_evbuf** %4, align 8
  %55 = getelementptr inbounds %struct.cpi_evbuf, %struct.cpi_evbuf* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* @sysplex_name, align 4
  %58 = call i32 @set_data(i32 %56, i32 %57)
  %59 = load i32, i32* @SCLP_CMDW_WRITE_EVENT_DATA, align 4
  %60 = load %struct.sclp_req*, %struct.sclp_req** %2, align 8
  %61 = getelementptr inbounds %struct.sclp_req, %struct.sclp_req* %60, i32 0, i32 3
  store i32 %59, i32* %61, align 8
  %62 = load %struct.cpi_sccb*, %struct.cpi_sccb** %3, align 8
  %63 = load %struct.sclp_req*, %struct.sclp_req** %2, align 8
  %64 = getelementptr inbounds %struct.sclp_req, %struct.sclp_req* %63, i32 0, i32 2
  store %struct.cpi_sccb* %62, %struct.cpi_sccb** %64, align 8
  %65 = load i32, i32* @SCLP_REQ_FILLED, align 4
  %66 = load %struct.sclp_req*, %struct.sclp_req** %2, align 8
  %67 = getelementptr inbounds %struct.sclp_req, %struct.sclp_req* %66, i32 0, i32 1
  store i32 %65, i32* %67, align 4
  %68 = load i32, i32* @cpi_callback, align 4
  %69 = load %struct.sclp_req*, %struct.sclp_req** %2, align 8
  %70 = getelementptr inbounds %struct.sclp_req, %struct.sclp_req* %69, i32 0, i32 0
  store i32 %68, i32* %70, align 8
  %71 = load %struct.sclp_req*, %struct.sclp_req** %2, align 8
  store %struct.sclp_req* %71, %struct.sclp_req** %1, align 8
  br label %72

72:                                               ; preds = %27, %21, %9
  %73 = load %struct.sclp_req*, %struct.sclp_req** %1, align 8
  ret %struct.sclp_req* %73
}

declare dso_local %struct.sclp_req* @kzalloc(i32, i32) #1

declare dso_local %struct.sclp_req* @ERR_PTR(i32) #1

declare dso_local i64 @get_zeroed_page(i32) #1

declare dso_local i32 @kfree(%struct.sclp_req*) #1

declare dso_local i32 @set_data(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
