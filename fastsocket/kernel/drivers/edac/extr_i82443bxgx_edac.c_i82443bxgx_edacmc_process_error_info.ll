; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/edac/extr_i82443bxgx_edac.c_i82443bxgx_edacmc_process_error_info.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/edac/extr_i82443bxgx_edac.c_i82443bxgx_edacmc_process_error_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mem_ctl_info = type { i32 }
%struct.i82443bxgx_edacmc_error_info = type { i32 }

@PAGE_SHIFT = common dso_local global i32 0, align 4
@I82443BXGX_EAP_OFFSET_SBE = common dso_local global i32 0, align 4
@I82443BXGX_EAP_OFFSET_MBE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mem_ctl_info*, %struct.i82443bxgx_edacmc_error_info*, i32)* @i82443bxgx_edacmc_process_error_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i82443bxgx_edacmc_process_error_info(%struct.mem_ctl_info* %0, %struct.i82443bxgx_edacmc_error_info* %1, i32 %2) #0 {
  %4 = alloca %struct.mem_ctl_info*, align 8
  %5 = alloca %struct.i82443bxgx_edacmc_error_info*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.mem_ctl_info* %0, %struct.mem_ctl_info** %4, align 8
  store %struct.i82443bxgx_edacmc_error_info* %1, %struct.i82443bxgx_edacmc_error_info** %5, align 8
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %11 = load %struct.i82443bxgx_edacmc_error_info*, %struct.i82443bxgx_edacmc_error_info** %5, align 8
  %12 = getelementptr inbounds %struct.i82443bxgx_edacmc_error_info, %struct.i82443bxgx_edacmc_error_info* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = and i32 %13, -4096
  store i32 %14, i32* %8, align 4
  %15 = load i32, i32* %8, align 4
  %16 = load i32, i32* @PAGE_SHIFT, align 4
  %17 = ashr i32 %15, %16
  store i32 %17, i32* %9, align 4
  %18 = load i32, i32* %8, align 4
  %19 = load i32, i32* %9, align 4
  %20 = load i32, i32* @PAGE_SHIFT, align 4
  %21 = shl i32 %19, %20
  %22 = sub nsw i32 %18, %21
  store i32 %22, i32* %10, align 4
  %23 = load %struct.i82443bxgx_edacmc_error_info*, %struct.i82443bxgx_edacmc_error_info** %5, align 8
  %24 = getelementptr inbounds %struct.i82443bxgx_edacmc_error_info, %struct.i82443bxgx_edacmc_error_info* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @I82443BXGX_EAP_OFFSET_SBE, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %44

29:                                               ; preds = %3
  store i32 1, i32* %7, align 4
  %30 = load i32, i32* %6, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %43

32:                                               ; preds = %29
  %33 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %4, align 8
  %34 = load i32, i32* %9, align 4
  %35 = load i32, i32* %10, align 4
  %36 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %4, align 8
  %37 = load i32, i32* %9, align 4
  %38 = call i32 @edac_mc_find_csrow_by_page(%struct.mem_ctl_info* %36, i32 %37)
  %39 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %4, align 8
  %40 = getelementptr inbounds %struct.mem_ctl_info, %struct.mem_ctl_info* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @edac_mc_handle_ce(%struct.mem_ctl_info* %33, i32 %34, i32 %35, i32 0, i32 %38, i32 0, i32 %41)
  br label %43

43:                                               ; preds = %32, %29
  br label %44

44:                                               ; preds = %43, %3
  %45 = load %struct.i82443bxgx_edacmc_error_info*, %struct.i82443bxgx_edacmc_error_info** %5, align 8
  %46 = getelementptr inbounds %struct.i82443bxgx_edacmc_error_info, %struct.i82443bxgx_edacmc_error_info* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @I82443BXGX_EAP_OFFSET_MBE, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %66

51:                                               ; preds = %44
  store i32 1, i32* %7, align 4
  %52 = load i32, i32* %6, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %65

54:                                               ; preds = %51
  %55 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %4, align 8
  %56 = load i32, i32* %9, align 4
  %57 = load i32, i32* %10, align 4
  %58 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %4, align 8
  %59 = load i32, i32* %9, align 4
  %60 = call i32 @edac_mc_find_csrow_by_page(%struct.mem_ctl_info* %58, i32 %59)
  %61 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %4, align 8
  %62 = getelementptr inbounds %struct.mem_ctl_info, %struct.mem_ctl_info* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @edac_mc_handle_ue(%struct.mem_ctl_info* %55, i32 %56, i32 %57, i32 %60, i32 %63)
  br label %65

65:                                               ; preds = %54, %51
  br label %66

66:                                               ; preds = %65, %44
  %67 = load i32, i32* %7, align 4
  ret i32 %67
}

declare dso_local i32 @edac_mc_handle_ce(%struct.mem_ctl_info*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @edac_mc_find_csrow_by_page(%struct.mem_ctl_info*, i32) #1

declare dso_local i32 @edac_mc_handle_ue(%struct.mem_ctl_info*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
