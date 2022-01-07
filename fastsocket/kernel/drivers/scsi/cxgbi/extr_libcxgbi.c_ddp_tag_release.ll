; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/cxgbi/extr_libcxgbi.c_ddp_tag_release.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/cxgbi/extr_libcxgbi.c_ddp_tag_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cxgbi_hba = type { %struct.cxgbi_device* }
%struct.cxgbi_device = type { i32 (%struct.cxgbi_hba*, i64, i64, i32)*, %struct.cxgbi_ddp_info* }
%struct.cxgbi_ddp_info = type { i64, i64, i32, %struct.cxgbi_gather_list** }
%struct.cxgbi_gather_list = type { i32 }

@PPOD_IDX_SHIFT = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [32 x i8] c"tag 0x%x, idx %u, gl 0x%p, %u.\0A\00", align 1
@PPOD_PAGES_MAX = common dso_local global i32 0, align 4
@PPOD_PAGES_SHIFT = common dso_local global i32 0, align 4
@CXGBI_DBG_DDP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"tag 0x%x, release idx %u, npods %u.\0A\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"tag 0x%x, idx %u > max %u.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cxgbi_hba*, i64)* @ddp_tag_release to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ddp_tag_release(%struct.cxgbi_hba* %0, i64 %1) #0 {
  %3 = alloca %struct.cxgbi_hba*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.cxgbi_device*, align 8
  %6 = alloca %struct.cxgbi_ddp_info*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.cxgbi_gather_list*, align 8
  %9 = alloca i32, align 4
  store %struct.cxgbi_hba* %0, %struct.cxgbi_hba** %3, align 8
  store i64 %1, i64* %4, align 8
  %10 = load %struct.cxgbi_hba*, %struct.cxgbi_hba** %3, align 8
  %11 = getelementptr inbounds %struct.cxgbi_hba, %struct.cxgbi_hba* %10, i32 0, i32 0
  %12 = load %struct.cxgbi_device*, %struct.cxgbi_device** %11, align 8
  store %struct.cxgbi_device* %12, %struct.cxgbi_device** %5, align 8
  %13 = load %struct.cxgbi_device*, %struct.cxgbi_device** %5, align 8
  %14 = getelementptr inbounds %struct.cxgbi_device, %struct.cxgbi_device* %13, i32 0, i32 1
  %15 = load %struct.cxgbi_ddp_info*, %struct.cxgbi_ddp_info** %14, align 8
  store %struct.cxgbi_ddp_info* %15, %struct.cxgbi_ddp_info** %6, align 8
  %16 = load i64, i64* %4, align 8
  %17 = load i64, i64* @PPOD_IDX_SHIFT, align 8
  %18 = lshr i64 %16, %17
  %19 = load %struct.cxgbi_ddp_info*, %struct.cxgbi_ddp_info** %6, align 8
  %20 = getelementptr inbounds %struct.cxgbi_ddp_info, %struct.cxgbi_ddp_info* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = and i64 %18, %21
  store i64 %22, i64* %7, align 8
  %23 = load i64, i64* %7, align 8
  %24 = load %struct.cxgbi_ddp_info*, %struct.cxgbi_ddp_info** %6, align 8
  %25 = getelementptr inbounds %struct.cxgbi_ddp_info, %struct.cxgbi_ddp_info* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = icmp ult i64 %23, %26
  br i1 %27, label %28, label %88

28:                                               ; preds = %2
  %29 = load %struct.cxgbi_ddp_info*, %struct.cxgbi_ddp_info** %6, align 8
  %30 = getelementptr inbounds %struct.cxgbi_ddp_info, %struct.cxgbi_ddp_info* %29, i32 0, i32 3
  %31 = load %struct.cxgbi_gather_list**, %struct.cxgbi_gather_list*** %30, align 8
  %32 = load i64, i64* %7, align 8
  %33 = getelementptr inbounds %struct.cxgbi_gather_list*, %struct.cxgbi_gather_list** %31, i64 %32
  %34 = load %struct.cxgbi_gather_list*, %struct.cxgbi_gather_list** %33, align 8
  store %struct.cxgbi_gather_list* %34, %struct.cxgbi_gather_list** %8, align 8
  %35 = load %struct.cxgbi_gather_list*, %struct.cxgbi_gather_list** %8, align 8
  %36 = icmp ne %struct.cxgbi_gather_list* %35, null
  br i1 %36, label %37, label %42

37:                                               ; preds = %28
  %38 = load %struct.cxgbi_gather_list*, %struct.cxgbi_gather_list** %8, align 8
  %39 = getelementptr inbounds %struct.cxgbi_gather_list, %struct.cxgbi_gather_list* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %56, label %42

42:                                               ; preds = %37, %28
  %43 = load i64, i64* %4, align 8
  %44 = load i64, i64* %7, align 8
  %45 = load %struct.cxgbi_gather_list*, %struct.cxgbi_gather_list** %8, align 8
  %46 = load %struct.cxgbi_gather_list*, %struct.cxgbi_gather_list** %8, align 8
  %47 = icmp ne %struct.cxgbi_gather_list* %46, null
  br i1 %47, label %48, label %52

48:                                               ; preds = %42
  %49 = load %struct.cxgbi_gather_list*, %struct.cxgbi_gather_list** %8, align 8
  %50 = getelementptr inbounds %struct.cxgbi_gather_list, %struct.cxgbi_gather_list* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  br label %53

52:                                               ; preds = %42
  br label %53

53:                                               ; preds = %52, %48
  %54 = phi i32 [ %51, %48 ], [ 0, %52 ]
  %55 = call i32 (i8*, i64, i64, ...) @pr_warn(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i64 %43, i64 %44, %struct.cxgbi_gather_list* %45, i32 %54)
  br label %95

56:                                               ; preds = %37
  %57 = load %struct.cxgbi_gather_list*, %struct.cxgbi_gather_list** %8, align 8
  %58 = getelementptr inbounds %struct.cxgbi_gather_list, %struct.cxgbi_gather_list* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* @PPOD_PAGES_MAX, align 4
  %61 = add nsw i32 %59, %60
  %62 = sub nsw i32 %61, 1
  %63 = load i32, i32* @PPOD_PAGES_SHIFT, align 4
  %64 = ashr i32 %62, %63
  store i32 %64, i32* %9, align 4
  %65 = load i32, i32* @CXGBI_DBG_DDP, align 4
  %66 = shl i32 1, %65
  %67 = load i64, i64* %4, align 8
  %68 = load i64, i64* %7, align 8
  %69 = load i32, i32* %9, align 4
  %70 = call i32 @log_debug(i32 %66, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i64 %67, i64 %68, i32 %69)
  %71 = load %struct.cxgbi_device*, %struct.cxgbi_device** %5, align 8
  %72 = getelementptr inbounds %struct.cxgbi_device, %struct.cxgbi_device* %71, i32 0, i32 0
  %73 = load i32 (%struct.cxgbi_hba*, i64, i64, i32)*, i32 (%struct.cxgbi_hba*, i64, i64, i32)** %72, align 8
  %74 = load %struct.cxgbi_hba*, %struct.cxgbi_hba** %3, align 8
  %75 = load i64, i64* %4, align 8
  %76 = load i64, i64* %7, align 8
  %77 = load i32, i32* %9, align 4
  %78 = call i32 %73(%struct.cxgbi_hba* %74, i64 %75, i64 %76, i32 %77)
  %79 = load %struct.cxgbi_ddp_info*, %struct.cxgbi_ddp_info** %6, align 8
  %80 = load i64, i64* %7, align 8
  %81 = load i32, i32* %9, align 4
  %82 = call i32 @ddp_unmark_entries(%struct.cxgbi_ddp_info* %79, i64 %80, i32 %81)
  %83 = load %struct.cxgbi_gather_list*, %struct.cxgbi_gather_list** %8, align 8
  %84 = load %struct.cxgbi_ddp_info*, %struct.cxgbi_ddp_info** %6, align 8
  %85 = getelementptr inbounds %struct.cxgbi_ddp_info, %struct.cxgbi_ddp_info* %84, i32 0, i32 2
  %86 = load i32, i32* %85, align 8
  %87 = call i32 @ddp_release_gl(%struct.cxgbi_gather_list* %83, i32 %86)
  br label %95

88:                                               ; preds = %2
  %89 = load i64, i64* %4, align 8
  %90 = load i64, i64* %7, align 8
  %91 = load %struct.cxgbi_ddp_info*, %struct.cxgbi_ddp_info** %6, align 8
  %92 = getelementptr inbounds %struct.cxgbi_ddp_info, %struct.cxgbi_ddp_info* %91, i32 0, i32 1
  %93 = load i64, i64* %92, align 8
  %94 = call i32 (i8*, i64, i64, ...) @pr_warn(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), i64 %89, i64 %90, i64 %93)
  br label %95

95:                                               ; preds = %53, %88, %56
  ret void
}

declare dso_local i32 @pr_warn(i8*, i64, i64, ...) #1

declare dso_local i32 @log_debug(i32, i8*, i64, i64, i32) #1

declare dso_local i32 @ddp_unmark_entries(%struct.cxgbi_ddp_info*, i64, i32) #1

declare dso_local i32 @ddp_release_gl(%struct.cxgbi_gather_list*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
