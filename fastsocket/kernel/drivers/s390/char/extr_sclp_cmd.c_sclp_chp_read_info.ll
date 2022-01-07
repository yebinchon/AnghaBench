; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/char/extr_sclp_cmd.c_sclp_chp_read_info.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/char/extr_sclp_cmd.c_sclp_chp_read_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sclp_chp_info = type { i32, i32, i32 }
%struct.chp_info_sccb = type { i32, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

@SCLP_HAS_CHP_INFO = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@GFP_DMA = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@SCLP_CMDW_READ_CHPATH_INFORMATION = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [49 x i8] c"read channel-path info failed (response=0x%04x)\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@SCLP_CHP_INFO_MASK_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sclp_chp_read_info(%struct.sclp_chp_info* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sclp_chp_info*, align 8
  %4 = alloca %struct.chp_info_sccb*, align 8
  %5 = alloca i32, align 4
  store %struct.sclp_chp_info* %0, %struct.sclp_chp_info** %3, align 8
  %6 = load i32, i32* @SCLP_HAS_CHP_INFO, align 4
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %11, label %8

8:                                                ; preds = %1
  %9 = load i32, i32* @EOPNOTSUPP, align 4
  %10 = sub nsw i32 0, %9
  store i32 %10, i32* %2, align 4
  br label %76

11:                                               ; preds = %1
  %12 = load i32, i32* @GFP_KERNEL, align 4
  %13 = load i32, i32* @GFP_DMA, align 4
  %14 = or i32 %12, %13
  %15 = call i64 @get_zeroed_page(i32 %14)
  %16 = inttoptr i64 %15 to %struct.chp_info_sccb*
  store %struct.chp_info_sccb* %16, %struct.chp_info_sccb** %4, align 8
  %17 = load %struct.chp_info_sccb*, %struct.chp_info_sccb** %4, align 8
  %18 = icmp ne %struct.chp_info_sccb* %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %11
  %20 = load i32, i32* @ENOMEM, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %2, align 4
  br label %76

22:                                               ; preds = %11
  %23 = load %struct.chp_info_sccb*, %struct.chp_info_sccb** %4, align 8
  %24 = getelementptr inbounds %struct.chp_info_sccb, %struct.chp_info_sccb* %23, i32 0, i32 3
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  store i32 20, i32* %25, align 4
  %26 = load i32, i32* @SCLP_CMDW_READ_CHPATH_INFORMATION, align 4
  %27 = load %struct.chp_info_sccb*, %struct.chp_info_sccb** %4, align 8
  %28 = call i32 @do_sync_request(i32 %26, %struct.chp_info_sccb* %27)
  store i32 %28, i32* %5, align 4
  %29 = load i32, i32* %5, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %22
  br label %71

32:                                               ; preds = %22
  %33 = load %struct.chp_info_sccb*, %struct.chp_info_sccb** %4, align 8
  %34 = getelementptr inbounds %struct.chp_info_sccb, %struct.chp_info_sccb* %33, i32 0, i32 3
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = icmp ne i32 %36, 16
  br i1 %37, label %38, label %46

38:                                               ; preds = %32
  %39 = load %struct.chp_info_sccb*, %struct.chp_info_sccb** %4, align 8
  %40 = getelementptr inbounds %struct.chp_info_sccb, %struct.chp_info_sccb* %39, i32 0, i32 3
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @pr_warning(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0), i32 %42)
  %44 = load i32, i32* @EIO, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %5, align 4
  br label %71

46:                                               ; preds = %32
  %47 = load %struct.sclp_chp_info*, %struct.sclp_chp_info** %3, align 8
  %48 = getelementptr inbounds %struct.sclp_chp_info, %struct.sclp_chp_info* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.chp_info_sccb*, %struct.chp_info_sccb** %4, align 8
  %51 = getelementptr inbounds %struct.chp_info_sccb, %struct.chp_info_sccb* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* @SCLP_CHP_INFO_MASK_SIZE, align 4
  %54 = call i32 @memcpy(i32 %49, i32 %52, i32 %53)
  %55 = load %struct.sclp_chp_info*, %struct.sclp_chp_info** %3, align 8
  %56 = getelementptr inbounds %struct.sclp_chp_info, %struct.sclp_chp_info* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.chp_info_sccb*, %struct.chp_info_sccb** %4, align 8
  %59 = getelementptr inbounds %struct.chp_info_sccb, %struct.chp_info_sccb* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* @SCLP_CHP_INFO_MASK_SIZE, align 4
  %62 = call i32 @memcpy(i32 %57, i32 %60, i32 %61)
  %63 = load %struct.sclp_chp_info*, %struct.sclp_chp_info** %3, align 8
  %64 = getelementptr inbounds %struct.sclp_chp_info, %struct.sclp_chp_info* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.chp_info_sccb*, %struct.chp_info_sccb** %4, align 8
  %67 = getelementptr inbounds %struct.chp_info_sccb, %struct.chp_info_sccb* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* @SCLP_CHP_INFO_MASK_SIZE, align 4
  %70 = call i32 @memcpy(i32 %65, i32 %68, i32 %69)
  br label %71

71:                                               ; preds = %46, %38, %31
  %72 = load %struct.chp_info_sccb*, %struct.chp_info_sccb** %4, align 8
  %73 = ptrtoint %struct.chp_info_sccb* %72 to i64
  %74 = call i32 @free_page(i64 %73)
  %75 = load i32, i32* %5, align 4
  store i32 %75, i32* %2, align 4
  br label %76

76:                                               ; preds = %71, %19, %8
  %77 = load i32, i32* %2, align 4
  ret i32 %77
}

declare dso_local i64 @get_zeroed_page(i32) #1

declare dso_local i32 @do_sync_request(i32, %struct.chp_info_sccb*) #1

declare dso_local i32 @pr_warning(i8*, i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @free_page(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
