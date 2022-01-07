; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/edac/extr_amd64_edac.c_amd64_handle_ue.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/edac/extr_amd64_edac.c_amd64_handle_ue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mem_ctl_info = type { i32 }
%struct.mce = type { i32 }

@MCI_STATUS_ADDRV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"HW has no ERROR_ADDRESS available\0A\00", align 1
@EDAC_MOD_STR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [42 x i8] c"ERROR ADDRESS (0x%lx) NOT mapped to a MC\0A\00", align 1
@.str.2 = private unnamed_addr constant [40 x i8] c"ERROR_ADDRESS (0x%lx) NOT mapped to CS\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mem_ctl_info*, %struct.mce*)* @amd64_handle_ue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @amd64_handle_ue(%struct.mem_ctl_info* %0, %struct.mce* %1) #0 {
  %3 = alloca %struct.mem_ctl_info*, align 8
  %4 = alloca %struct.mce*, align 8
  %5 = alloca %struct.mem_ctl_info*, align 8
  %6 = alloca %struct.mem_ctl_info*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.mem_ctl_info* %0, %struct.mem_ctl_info** %3, align 8
  store %struct.mce* %1, %struct.mce** %4, align 8
  store %struct.mem_ctl_info* null, %struct.mem_ctl_info** %6, align 8
  %11 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %3, align 8
  store %struct.mem_ctl_info* %11, %struct.mem_ctl_info** %5, align 8
  %12 = load %struct.mce*, %struct.mce** %4, align 8
  %13 = getelementptr inbounds %struct.mce, %struct.mce* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @MCI_STATUS_ADDRV, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %24, label %18

18:                                               ; preds = %2
  %19 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %3, align 8
  %20 = call i32 (%struct.mem_ctl_info*, i8*, ...) @amd64_mc_err(%struct.mem_ctl_info* %19, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  %21 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %5, align 8
  %22 = load i32, i32* @EDAC_MOD_STR, align 4
  %23 = call i32 @edac_mc_handle_ue_no_info(%struct.mem_ctl_info* %21, i32 %22)
  br label %62

24:                                               ; preds = %2
  %25 = load %struct.mce*, %struct.mce** %4, align 8
  %26 = call i64 @get_error_address(%struct.mce* %25)
  store i64 %26, i64* %8, align 8
  %27 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %3, align 8
  %28 = load i64, i64* %8, align 8
  %29 = call %struct.mem_ctl_info* @find_mc_by_sys_addr(%struct.mem_ctl_info* %27, i64 %28)
  store %struct.mem_ctl_info* %29, %struct.mem_ctl_info** %6, align 8
  %30 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %6, align 8
  %31 = icmp ne %struct.mem_ctl_info* %30, null
  br i1 %31, label %39, label %32

32:                                               ; preds = %24
  %33 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %3, align 8
  %34 = load i64, i64* %8, align 8
  %35 = call i32 (%struct.mem_ctl_info*, i8*, ...) @amd64_mc_err(%struct.mem_ctl_info* %33, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0), i64 %34)
  %36 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %5, align 8
  %37 = load i32, i32* @EDAC_MOD_STR, align 4
  %38 = call i32 @edac_mc_handle_ue_no_info(%struct.mem_ctl_info* %36, i32 %37)
  br label %62

39:                                               ; preds = %24
  %40 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %6, align 8
  store %struct.mem_ctl_info* %40, %struct.mem_ctl_info** %5, align 8
  %41 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %5, align 8
  %42 = load i64, i64* %8, align 8
  %43 = call i32 @sys_addr_to_csrow(%struct.mem_ctl_info* %41, i64 %42)
  store i32 %43, i32* %7, align 4
  %44 = load i32, i32* %7, align 4
  %45 = icmp slt i32 %44, 0
  br i1 %45, label %46, label %53

46:                                               ; preds = %39
  %47 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %3, align 8
  %48 = load i64, i64* %8, align 8
  %49 = call i32 (%struct.mem_ctl_info*, i8*, ...) @amd64_mc_err(%struct.mem_ctl_info* %47, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0), i64 %48)
  %50 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %5, align 8
  %51 = load i32, i32* @EDAC_MOD_STR, align 4
  %52 = call i32 @edac_mc_handle_ue_no_info(%struct.mem_ctl_info* %50, i32 %51)
  br label %62

53:                                               ; preds = %39
  %54 = load i64, i64* %8, align 8
  %55 = call i32 @error_address_to_page_and_offset(i64 %54, i32* %9, i32* %10)
  %56 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %5, align 8
  %57 = load i32, i32* %9, align 4
  %58 = load i32, i32* %10, align 4
  %59 = load i32, i32* %7, align 4
  %60 = load i32, i32* @EDAC_MOD_STR, align 4
  %61 = call i32 @edac_mc_handle_ue(%struct.mem_ctl_info* %56, i32 %57, i32 %58, i32 %59, i32 %60)
  br label %62

62:                                               ; preds = %18, %32, %53, %46
  ret void
}

declare dso_local i32 @amd64_mc_err(%struct.mem_ctl_info*, i8*, ...) #1

declare dso_local i32 @edac_mc_handle_ue_no_info(%struct.mem_ctl_info*, i32) #1

declare dso_local i64 @get_error_address(%struct.mce*) #1

declare dso_local %struct.mem_ctl_info* @find_mc_by_sys_addr(%struct.mem_ctl_info*, i64) #1

declare dso_local i32 @sys_addr_to_csrow(%struct.mem_ctl_info*, i64) #1

declare dso_local i32 @error_address_to_page_and_offset(i64, i32*, i32*) #1

declare dso_local i32 @edac_mc_handle_ue(%struct.mem_ctl_info*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
