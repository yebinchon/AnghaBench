; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/edac/extr_amd64_edac.c_f1x_map_sysaddr_to_csrow.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/edac/extr_amd64_edac.c_f1x_map_sysaddr_to_csrow.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mem_ctl_info = type { %struct.TYPE_2__*, %struct.amd64_pvt* }
%struct.TYPE_2__ = type { i32 }
%struct.amd64_pvt = type { i32 }

@EDAC_MOD_STR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mem_ctl_info*, i32, i32)* @f1x_map_sysaddr_to_csrow to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @f1x_map_sysaddr_to_csrow(%struct.mem_ctl_info* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.mem_ctl_info*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.amd64_pvt*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.mem_ctl_info* %0, %struct.mem_ctl_info** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %13 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %4, align 8
  %14 = getelementptr inbounds %struct.mem_ctl_info, %struct.mem_ctl_info* %13, i32 0, i32 1
  %15 = load %struct.amd64_pvt*, %struct.amd64_pvt** %14, align 8
  store %struct.amd64_pvt* %15, %struct.amd64_pvt** %7, align 8
  store i32 0, i32* %12, align 4
  %16 = load %struct.amd64_pvt*, %struct.amd64_pvt** %7, align 8
  %17 = load i32, i32* %5, align 4
  %18 = call i32 @f1x_translate_sysaddr_to_cs(%struct.amd64_pvt* %16, i32 %17, i32* %10, i32* %12)
  store i32 %18, i32* %11, align 4
  %19 = load i32, i32* %11, align 4
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %3
  %22 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %4, align 8
  %23 = load i32, i32* @EDAC_MOD_STR, align 4
  %24 = call i32 @edac_mc_handle_ce_no_info(%struct.mem_ctl_info* %22, i32 %23)
  br label %72

25:                                               ; preds = %3
  %26 = load i32, i32* %5, align 4
  %27 = call i32 @error_address_to_page_and_offset(i32 %26, i32* %8, i32* %9)
  %28 = load %struct.amd64_pvt*, %struct.amd64_pvt** %7, align 8
  %29 = call i64 @dct_ganging_enabled(%struct.amd64_pvt* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %25
  %32 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %4, align 8
  %33 = load i32, i32* %6, align 4
  %34 = call i32 @get_channel_from_ecc_syndrome(%struct.mem_ctl_info* %32, i32 %33)
  store i32 %34, i32* %12, align 4
  br label %35

35:                                               ; preds = %31, %25
  %36 = load i32, i32* %12, align 4
  %37 = icmp sge i32 %36, 0
  br i1 %37, label %38, label %47

38:                                               ; preds = %35
  %39 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %4, align 8
  %40 = load i32, i32* %8, align 4
  %41 = load i32, i32* %9, align 4
  %42 = load i32, i32* %6, align 4
  %43 = load i32, i32* %11, align 4
  %44 = load i32, i32* %12, align 4
  %45 = load i32, i32* @EDAC_MOD_STR, align 4
  %46 = call i32 @edac_mc_handle_ce(%struct.mem_ctl_info* %39, i32 %40, i32 %41, i32 %42, i32 %43, i32 %44, i32 %45)
  br label %72

47:                                               ; preds = %35
  store i32 0, i32* %12, align 4
  br label %48

48:                                               ; preds = %68, %47
  %49 = load i32, i32* %12, align 4
  %50 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %4, align 8
  %51 = getelementptr inbounds %struct.mem_ctl_info, %struct.mem_ctl_info* %50, i32 0, i32 0
  %52 = load %struct.TYPE_2__*, %struct.TYPE_2__** %51, align 8
  %53 = load i32, i32* %11, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i64 %54
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = icmp slt i32 %49, %57
  br i1 %58, label %59, label %71

59:                                               ; preds = %48
  %60 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %4, align 8
  %61 = load i32, i32* %8, align 4
  %62 = load i32, i32* %9, align 4
  %63 = load i32, i32* %6, align 4
  %64 = load i32, i32* %11, align 4
  %65 = load i32, i32* %12, align 4
  %66 = load i32, i32* @EDAC_MOD_STR, align 4
  %67 = call i32 @edac_mc_handle_ce(%struct.mem_ctl_info* %60, i32 %61, i32 %62, i32 %63, i32 %64, i32 %65, i32 %66)
  br label %68

68:                                               ; preds = %59
  %69 = load i32, i32* %12, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %12, align 4
  br label %48

71:                                               ; preds = %48
  br label %72

72:                                               ; preds = %21, %71, %38
  ret void
}

declare dso_local i32 @f1x_translate_sysaddr_to_cs(%struct.amd64_pvt*, i32, i32*, i32*) #1

declare dso_local i32 @edac_mc_handle_ce_no_info(%struct.mem_ctl_info*, i32) #1

declare dso_local i32 @error_address_to_page_and_offset(i32, i32*, i32*) #1

declare dso_local i64 @dct_ganging_enabled(%struct.amd64_pvt*) #1

declare dso_local i32 @get_channel_from_ecc_syndrome(%struct.mem_ctl_info*, i32) #1

declare dso_local i32 @edac_mc_handle_ce(%struct.mem_ctl_info*, i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
