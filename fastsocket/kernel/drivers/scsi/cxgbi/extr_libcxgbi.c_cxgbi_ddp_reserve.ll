; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/cxgbi/extr_libcxgbi.c_cxgbi_ddp_reserve.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/cxgbi/extr_libcxgbi.c_cxgbi_ddp_reserve.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cxgbi_sock = type { i32, %struct.cxgbi_device* }
%struct.cxgbi_device = type { i32, i32, %struct.cxgbi_tag_format }
%struct.cxgbi_tag_format = type { i32 }
%struct.scatterlist = type { i32 }
%struct.cxgbi_gather_list = type { i32 }

@page_idx = common dso_local global i64 0, align 8
@DDP_PGIDX_MAX = common dso_local global i64 0, align 8
@DDP_THRESHOLD = common dso_local global i32 0, align 4
@CXGBI_DBG_DDP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"pgidx %u, xfer %u, NO ddp.\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"sw_tag 0x%x NOT usable.\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cxgbi_ddp_reserve(%struct.cxgbi_sock* %0, i32* %1, i32 %2, i32 %3, %struct.scatterlist* %4, i32 %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.cxgbi_sock*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.scatterlist*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.cxgbi_device*, align 8
  %17 = alloca %struct.cxgbi_tag_format*, align 8
  %18 = alloca %struct.cxgbi_gather_list*, align 8
  %19 = alloca i32, align 4
  store %struct.cxgbi_sock* %0, %struct.cxgbi_sock** %9, align 8
  store i32* %1, i32** %10, align 8
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store %struct.scatterlist* %4, %struct.scatterlist** %13, align 8
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  %20 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %9, align 8
  %21 = getelementptr inbounds %struct.cxgbi_sock, %struct.cxgbi_sock* %20, i32 0, i32 1
  %22 = load %struct.cxgbi_device*, %struct.cxgbi_device** %21, align 8
  store %struct.cxgbi_device* %22, %struct.cxgbi_device** %16, align 8
  %23 = load %struct.cxgbi_device*, %struct.cxgbi_device** %16, align 8
  %24 = getelementptr inbounds %struct.cxgbi_device, %struct.cxgbi_device* %23, i32 0, i32 2
  store %struct.cxgbi_tag_format* %24, %struct.cxgbi_tag_format** %17, align 8
  %25 = load i64, i64* @page_idx, align 8
  %26 = load i64, i64* @DDP_PGIDX_MAX, align 8
  %27 = icmp sge i64 %25, %26
  br i1 %27, label %37, label %28

28:                                               ; preds = %7
  %29 = load %struct.cxgbi_device*, %struct.cxgbi_device** %16, align 8
  %30 = getelementptr inbounds %struct.cxgbi_device, %struct.cxgbi_device* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %37

33:                                               ; preds = %28
  %34 = load i32, i32* %12, align 4
  %35 = load i32, i32* @DDP_THRESHOLD, align 4
  %36 = icmp ult i32 %34, %35
  br i1 %36, label %37, label %46

37:                                               ; preds = %33, %28, %7
  %38 = load i32, i32* @CXGBI_DBG_DDP, align 4
  %39 = shl i32 1, %38
  %40 = load i64, i64* @page_idx, align 8
  %41 = trunc i64 %40 to i32
  %42 = load i32, i32* %12, align 4
  %43 = call i32 (i32, i8*, i32, ...) @log_debug(i32 %39, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %41, i32 %42)
  %44 = load i32, i32* @EINVAL, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %8, align 4
  br label %92

46:                                               ; preds = %33
  %47 = load %struct.cxgbi_tag_format*, %struct.cxgbi_tag_format** %17, align 8
  %48 = load i32, i32* %11, align 4
  %49 = call i32 @cxgbi_sw_tag_usable(%struct.cxgbi_tag_format* %47, i32 %48)
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %58, label %51

51:                                               ; preds = %46
  %52 = load i32, i32* @CXGBI_DBG_DDP, align 4
  %53 = shl i32 1, %52
  %54 = load i32, i32* %11, align 4
  %55 = call i32 (i32, i8*, i32, ...) @log_debug(i32 %53, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 %54)
  %56 = load i32, i32* @EINVAL, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %8, align 4
  br label %92

58:                                               ; preds = %46
  %59 = load i32, i32* %12, align 4
  %60 = load %struct.scatterlist*, %struct.scatterlist** %13, align 8
  %61 = load i32, i32* %14, align 4
  %62 = load %struct.cxgbi_device*, %struct.cxgbi_device** %16, align 8
  %63 = getelementptr inbounds %struct.cxgbi_device, %struct.cxgbi_device* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* %15, align 4
  %66 = call %struct.cxgbi_gather_list* @ddp_make_gl(i32 %59, %struct.scatterlist* %60, i32 %61, i32 %64, i32 %65)
  store %struct.cxgbi_gather_list* %66, %struct.cxgbi_gather_list** %18, align 8
  %67 = load %struct.cxgbi_gather_list*, %struct.cxgbi_gather_list** %18, align 8
  %68 = icmp ne %struct.cxgbi_gather_list* %67, null
  br i1 %68, label %72, label %69

69:                                               ; preds = %58
  %70 = load i32, i32* @ENOMEM, align 4
  %71 = sub nsw i32 0, %70
  store i32 %71, i32* %8, align 4
  br label %92

72:                                               ; preds = %58
  %73 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %9, align 8
  %74 = load %struct.cxgbi_sock*, %struct.cxgbi_sock** %9, align 8
  %75 = getelementptr inbounds %struct.cxgbi_sock, %struct.cxgbi_sock* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = load i32, i32* %11, align 4
  %78 = load i32*, i32** %10, align 8
  %79 = load %struct.cxgbi_gather_list*, %struct.cxgbi_gather_list** %18, align 8
  %80 = load i32, i32* %15, align 4
  %81 = call i32 @ddp_tag_reserve(%struct.cxgbi_sock* %73, i32 %76, i32 %77, i32* %78, %struct.cxgbi_gather_list* %79, i32 %80)
  store i32 %81, i32* %19, align 4
  %82 = load i32, i32* %19, align 4
  %83 = icmp slt i32 %82, 0
  br i1 %83, label %84, label %90

84:                                               ; preds = %72
  %85 = load %struct.cxgbi_gather_list*, %struct.cxgbi_gather_list** %18, align 8
  %86 = load %struct.cxgbi_device*, %struct.cxgbi_device** %16, align 8
  %87 = getelementptr inbounds %struct.cxgbi_device, %struct.cxgbi_device* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = call i32 @ddp_release_gl(%struct.cxgbi_gather_list* %85, i32 %88)
  br label %90

90:                                               ; preds = %84, %72
  %91 = load i32, i32* %19, align 4
  store i32 %91, i32* %8, align 4
  br label %92

92:                                               ; preds = %90, %69, %51, %37
  %93 = load i32, i32* %8, align 4
  ret i32 %93
}

declare dso_local i32 @log_debug(i32, i8*, i32, ...) #1

declare dso_local i32 @cxgbi_sw_tag_usable(%struct.cxgbi_tag_format*, i32) #1

declare dso_local %struct.cxgbi_gather_list* @ddp_make_gl(i32, %struct.scatterlist*, i32, i32, i32) #1

declare dso_local i32 @ddp_tag_reserve(%struct.cxgbi_sock*, i32, i32, i32*, %struct.cxgbi_gather_list*, i32) #1

declare dso_local i32 @ddp_release_gl(%struct.cxgbi_gather_list*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
