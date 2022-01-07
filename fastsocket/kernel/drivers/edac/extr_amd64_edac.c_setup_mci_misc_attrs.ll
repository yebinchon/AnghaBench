; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/edac/extr_amd64_edac.c_setup_mci_misc_attrs.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/edac/extr_amd64_edac.c_setup_mci_misc_attrs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mem_ctl_info = type { i32, i32, i32, i32*, i32, i32, i32, i32, i32, i32, %struct.amd64_pvt* }
%struct.amd64_pvt = type { i32, i32 }
%struct.amd64_family_type = type { i32 }

@MEM_FLAG_DDR2 = common dso_local global i32 0, align 4
@MEM_FLAG_RDDR2 = common dso_local global i32 0, align 4
@EDAC_FLAG_NONE = common dso_local global i32 0, align 4
@NBCAP_SECDED = common dso_local global i32 0, align 4
@EDAC_FLAG_SECDED = common dso_local global i32 0, align 4
@NBCAP_CHIPKILL = common dso_local global i32 0, align 4
@EDAC_FLAG_S4ECD4ED = common dso_local global i32 0, align 4
@EDAC_MOD_STR = common dso_local global i32 0, align 4
@EDAC_AMD64_VERSION = common dso_local global i32 0, align 4
@amd64_set_scrub_rate = common dso_local global i32 0, align 4
@amd64_get_scrub_rate = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mem_ctl_info*, %struct.amd64_family_type*)* @setup_mci_misc_attrs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @setup_mci_misc_attrs(%struct.mem_ctl_info* %0, %struct.amd64_family_type* %1) #0 {
  %3 = alloca %struct.mem_ctl_info*, align 8
  %4 = alloca %struct.amd64_family_type*, align 8
  %5 = alloca %struct.amd64_pvt*, align 8
  store %struct.mem_ctl_info* %0, %struct.mem_ctl_info** %3, align 8
  store %struct.amd64_family_type* %1, %struct.amd64_family_type** %4, align 8
  %6 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %3, align 8
  %7 = getelementptr inbounds %struct.mem_ctl_info, %struct.mem_ctl_info* %6, i32 0, i32 10
  %8 = load %struct.amd64_pvt*, %struct.amd64_pvt** %7, align 8
  store %struct.amd64_pvt* %8, %struct.amd64_pvt** %5, align 8
  %9 = load i32, i32* @MEM_FLAG_DDR2, align 4
  %10 = load i32, i32* @MEM_FLAG_RDDR2, align 4
  %11 = or i32 %9, %10
  %12 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %3, align 8
  %13 = getelementptr inbounds %struct.mem_ctl_info, %struct.mem_ctl_info* %12, i32 0, i32 0
  store i32 %11, i32* %13, align 8
  %14 = load i32, i32* @EDAC_FLAG_NONE, align 4
  %15 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %3, align 8
  %16 = getelementptr inbounds %struct.mem_ctl_info, %struct.mem_ctl_info* %15, i32 0, i32 9
  store i32 %14, i32* %16, align 4
  %17 = load %struct.amd64_pvt*, %struct.amd64_pvt** %5, align 8
  %18 = getelementptr inbounds %struct.amd64_pvt, %struct.amd64_pvt* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @NBCAP_SECDED, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %29

23:                                               ; preds = %2
  %24 = load i32, i32* @EDAC_FLAG_SECDED, align 4
  %25 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %3, align 8
  %26 = getelementptr inbounds %struct.mem_ctl_info, %struct.mem_ctl_info* %25, i32 0, i32 9
  %27 = load i32, i32* %26, align 4
  %28 = or i32 %27, %24
  store i32 %28, i32* %26, align 4
  br label %29

29:                                               ; preds = %23, %2
  %30 = load %struct.amd64_pvt*, %struct.amd64_pvt** %5, align 8
  %31 = getelementptr inbounds %struct.amd64_pvt, %struct.amd64_pvt* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @NBCAP_CHIPKILL, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %42

36:                                               ; preds = %29
  %37 = load i32, i32* @EDAC_FLAG_S4ECD4ED, align 4
  %38 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %3, align 8
  %39 = getelementptr inbounds %struct.mem_ctl_info, %struct.mem_ctl_info* %38, i32 0, i32 9
  %40 = load i32, i32* %39, align 4
  %41 = or i32 %40, %37
  store i32 %41, i32* %39, align 4
  br label %42

42:                                               ; preds = %36, %29
  %43 = load %struct.amd64_pvt*, %struct.amd64_pvt** %5, align 8
  %44 = call i32 @amd64_determine_edac_cap(%struct.amd64_pvt* %43)
  %45 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %3, align 8
  %46 = getelementptr inbounds %struct.mem_ctl_info, %struct.mem_ctl_info* %45, i32 0, i32 8
  store i32 %44, i32* %46, align 8
  %47 = load i32, i32* @EDAC_MOD_STR, align 4
  %48 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %3, align 8
  %49 = getelementptr inbounds %struct.mem_ctl_info, %struct.mem_ctl_info* %48, i32 0, i32 7
  store i32 %47, i32* %49, align 4
  %50 = load i32, i32* @EDAC_AMD64_VERSION, align 4
  %51 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %3, align 8
  %52 = getelementptr inbounds %struct.mem_ctl_info, %struct.mem_ctl_info* %51, i32 0, i32 6
  store i32 %50, i32* %52, align 8
  %53 = load %struct.amd64_family_type*, %struct.amd64_family_type** %4, align 8
  %54 = getelementptr inbounds %struct.amd64_family_type, %struct.amd64_family_type* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %3, align 8
  %57 = getelementptr inbounds %struct.mem_ctl_info, %struct.mem_ctl_info* %56, i32 0, i32 5
  store i32 %55, i32* %57, align 4
  %58 = load %struct.amd64_pvt*, %struct.amd64_pvt** %5, align 8
  %59 = getelementptr inbounds %struct.amd64_pvt, %struct.amd64_pvt* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @pci_name(i32 %60)
  %62 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %3, align 8
  %63 = getelementptr inbounds %struct.mem_ctl_info, %struct.mem_ctl_info* %62, i32 0, i32 4
  store i32 %61, i32* %63, align 8
  %64 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %3, align 8
  %65 = getelementptr inbounds %struct.mem_ctl_info, %struct.mem_ctl_info* %64, i32 0, i32 3
  store i32* null, i32** %65, align 8
  %66 = load i32, i32* @amd64_set_scrub_rate, align 4
  %67 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %3, align 8
  %68 = getelementptr inbounds %struct.mem_ctl_info, %struct.mem_ctl_info* %67, i32 0, i32 2
  store i32 %66, i32* %68, align 8
  %69 = load i32, i32* @amd64_get_scrub_rate, align 4
  %70 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %3, align 8
  %71 = getelementptr inbounds %struct.mem_ctl_info, %struct.mem_ctl_info* %70, i32 0, i32 1
  store i32 %69, i32* %71, align 4
  ret void
}

declare dso_local i32 @amd64_determine_edac_cap(%struct.amd64_pvt*) #1

declare dso_local i32 @pci_name(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
