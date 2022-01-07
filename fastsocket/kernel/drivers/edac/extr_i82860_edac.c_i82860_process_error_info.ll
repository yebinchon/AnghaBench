; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/edac/extr_i82860_edac.c_i82860_process_error_info.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/edac/extr_i82860_edac.c_i82860_process_error_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mem_ctl_info = type { i32 }
%struct.i82860_error_info = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [16 x i8] c"UE overwrote CE\00", align 1
@PAGE_SHIFT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [10 x i8] c"i82860 UE\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mem_ctl_info*, %struct.i82860_error_info*, i32)* @i82860_process_error_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i82860_process_error_info(%struct.mem_ctl_info* %0, %struct.i82860_error_info* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mem_ctl_info*, align 8
  %6 = alloca %struct.i82860_error_info*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.mem_ctl_info* %0, %struct.mem_ctl_info** %5, align 8
  store %struct.i82860_error_info* %1, %struct.i82860_error_info** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load %struct.i82860_error_info*, %struct.i82860_error_info** %6, align 8
  %10 = getelementptr inbounds %struct.i82860_error_info, %struct.i82860_error_info* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = and i32 %11, 3
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %71

15:                                               ; preds = %3
  %16 = load i32, i32* %7, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %15
  store i32 1, i32* %4, align 4
  br label %71

19:                                               ; preds = %15
  %20 = load %struct.i82860_error_info*, %struct.i82860_error_info** %6, align 8
  %21 = getelementptr inbounds %struct.i82860_error_info, %struct.i82860_error_info* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.i82860_error_info*, %struct.i82860_error_info** %6, align 8
  %24 = getelementptr inbounds %struct.i82860_error_info, %struct.i82860_error_info* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = xor i32 %22, %25
  %27 = and i32 %26, 3
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %37

29:                                               ; preds = %19
  %30 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %5, align 8
  %31 = call i32 @edac_mc_handle_ce_no_info(%struct.mem_ctl_info* %30, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %32 = load %struct.i82860_error_info*, %struct.i82860_error_info** %6, align 8
  %33 = getelementptr inbounds %struct.i82860_error_info, %struct.i82860_error_info* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.i82860_error_info*, %struct.i82860_error_info** %6, align 8
  %36 = getelementptr inbounds %struct.i82860_error_info, %struct.i82860_error_info* %35, i32 0, i32 1
  store i32 %34, i32* %36, align 4
  br label %37

37:                                               ; preds = %29, %19
  %38 = load i32, i32* @PAGE_SHIFT, align 4
  %39 = load %struct.i82860_error_info*, %struct.i82860_error_info** %6, align 8
  %40 = getelementptr inbounds %struct.i82860_error_info, %struct.i82860_error_info* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 4
  %42 = ashr i32 %41, %38
  store i32 %42, i32* %40, align 4
  %43 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %5, align 8
  %44 = load %struct.i82860_error_info*, %struct.i82860_error_info** %6, align 8
  %45 = getelementptr inbounds %struct.i82860_error_info, %struct.i82860_error_info* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @edac_mc_find_csrow_by_page(%struct.mem_ctl_info* %43, i32 %46)
  store i32 %47, i32* %8, align 4
  %48 = load %struct.i82860_error_info*, %struct.i82860_error_info** %6, align 8
  %49 = getelementptr inbounds %struct.i82860_error_info, %struct.i82860_error_info* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = and i32 %50, 2
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %60

53:                                               ; preds = %37
  %54 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %5, align 8
  %55 = load %struct.i82860_error_info*, %struct.i82860_error_info** %6, align 8
  %56 = getelementptr inbounds %struct.i82860_error_info, %struct.i82860_error_info* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* %8, align 4
  %59 = call i32 @edac_mc_handle_ue(%struct.mem_ctl_info* %54, i32 %57, i32 0, i32 %58, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  br label %70

60:                                               ; preds = %37
  %61 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %5, align 8
  %62 = load %struct.i82860_error_info*, %struct.i82860_error_info** %6, align 8
  %63 = getelementptr inbounds %struct.i82860_error_info, %struct.i82860_error_info* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.i82860_error_info*, %struct.i82860_error_info** %6, align 8
  %66 = getelementptr inbounds %struct.i82860_error_info, %struct.i82860_error_info* %65, i32 0, i32 3
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* %8, align 4
  %69 = call i32 @edac_mc_handle_ce(%struct.mem_ctl_info* %61, i32 %64, i32 0, i32 %67, i32 %68, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  br label %70

70:                                               ; preds = %60, %53
  store i32 1, i32* %4, align 4
  br label %71

71:                                               ; preds = %70, %18, %14
  %72 = load i32, i32* %4, align 4
  ret i32 %72
}

declare dso_local i32 @edac_mc_handle_ce_no_info(%struct.mem_ctl_info*, i8*) #1

declare dso_local i32 @edac_mc_find_csrow_by_page(%struct.mem_ctl_info*, i32) #1

declare dso_local i32 @edac_mc_handle_ue(%struct.mem_ctl_info*, i32, i32, i32, i8*) #1

declare dso_local i32 @edac_mc_handle_ce(%struct.mem_ctl_info*, i32, i32, i32, i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
