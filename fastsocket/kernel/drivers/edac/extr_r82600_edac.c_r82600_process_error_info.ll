; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/edac/extr_r82600_edac.c_r82600_process_error_info.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/edac/extr_r82600_edac.c_r82600_process_error_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mem_ctl_info = type { i32 }
%struct.r82600_error_info = type { i32 }

@PAGE_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mem_ctl_info*, %struct.r82600_error_info*, i32)* @r82600_process_error_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @r82600_process_error_info(%struct.mem_ctl_info* %0, %struct.r82600_error_info* %1, i32 %2) #0 {
  %4 = alloca %struct.mem_ctl_info*, align 8
  %5 = alloca %struct.r82600_error_info*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.mem_ctl_info* %0, %struct.mem_ctl_info** %4, align 8
  store %struct.r82600_error_info* %1, %struct.r82600_error_info** %5, align 8
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %11 = load %struct.r82600_error_info*, %struct.r82600_error_info** %5, align 8
  %12 = getelementptr inbounds %struct.r82600_error_info, %struct.r82600_error_info* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = ashr i32 %13, 12
  %15 = and i32 %14, 32767
  %16 = shl i32 %15, 13
  store i32 %16, i32* %8, align 4
  %17 = load %struct.r82600_error_info*, %struct.r82600_error_info** %5, align 8
  %18 = getelementptr inbounds %struct.r82600_error_info, %struct.r82600_error_info* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = ashr i32 %19, 4
  %21 = and i32 %20, 255
  store i32 %21, i32* %10, align 4
  %22 = load i32, i32* %8, align 4
  %23 = load i32, i32* @PAGE_SHIFT, align 4
  %24 = ashr i32 %22, %23
  store i32 %24, i32* %9, align 4
  %25 = load %struct.r82600_error_info*, %struct.r82600_error_info** %5, align 8
  %26 = getelementptr inbounds %struct.r82600_error_info, %struct.r82600_error_info* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @BIT(i32 0)
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %46

31:                                               ; preds = %3
  store i32 1, i32* %7, align 4
  %32 = load i32, i32* %6, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %45

34:                                               ; preds = %31
  %35 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %4, align 8
  %36 = load i32, i32* %9, align 4
  %37 = load i32, i32* %10, align 4
  %38 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %4, align 8
  %39 = load i32, i32* %9, align 4
  %40 = call i32 @edac_mc_find_csrow_by_page(%struct.mem_ctl_info* %38, i32 %39)
  %41 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %4, align 8
  %42 = getelementptr inbounds %struct.mem_ctl_info, %struct.mem_ctl_info* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @edac_mc_handle_ce(%struct.mem_ctl_info* %35, i32 %36, i32 0, i32 %37, i32 %40, i32 0, i32 %43)
  br label %45

45:                                               ; preds = %34, %31
  br label %46

46:                                               ; preds = %45, %3
  %47 = load %struct.r82600_error_info*, %struct.r82600_error_info** %5, align 8
  %48 = getelementptr inbounds %struct.r82600_error_info, %struct.r82600_error_info* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @BIT(i32 1)
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %67

53:                                               ; preds = %46
  store i32 1, i32* %7, align 4
  %54 = load i32, i32* %6, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %66

56:                                               ; preds = %53
  %57 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %4, align 8
  %58 = load i32, i32* %9, align 4
  %59 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %4, align 8
  %60 = load i32, i32* %9, align 4
  %61 = call i32 @edac_mc_find_csrow_by_page(%struct.mem_ctl_info* %59, i32 %60)
  %62 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %4, align 8
  %63 = getelementptr inbounds %struct.mem_ctl_info, %struct.mem_ctl_info* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @edac_mc_handle_ue(%struct.mem_ctl_info* %57, i32 %58, i32 0, i32 %61, i32 %64)
  br label %66

66:                                               ; preds = %56, %53
  br label %67

67:                                               ; preds = %66, %46
  %68 = load i32, i32* %7, align 4
  ret i32 %68
}

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @edac_mc_handle_ce(%struct.mem_ctl_info*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @edac_mc_find_csrow_by_page(%struct.mem_ctl_info*, i32) #1

declare dso_local i32 @edac_mc_handle_ue(%struct.mem_ctl_info*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
