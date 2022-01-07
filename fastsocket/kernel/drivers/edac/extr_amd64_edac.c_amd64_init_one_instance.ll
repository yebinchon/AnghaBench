; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/edac/extr_amd64_edac.c_amd64_init_one_instance.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/edac/extr_amd64_edac.c_amd64_init_one_instance.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mem_ctl_info = type { i32, i32*, %struct.amd64_pvt* }
%struct.amd64_pvt = type { i64, i64, %struct.pci_dev*, %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.pci_dev = type { i32 }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i64 (%struct.amd64_pvt*)* }
%struct.amd64_family_type = type { i32, i32 }

@ENOMEM = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@EDAC_FLAG_NONE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"failed edac_mc_add_mc()\0A\00", align 1
@report_gart_errors = common dso_local global i64 0, align 8
@amd64_decode_bus_error = common dso_local global i32 0, align 4
@mcis = common dso_local global %struct.mem_ctl_info** null, align 8
@drv_instances = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_dev*)* @amd64_init_one_instance to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @amd64_init_one_instance(%struct.pci_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pci_dev*, align 8
  %4 = alloca %struct.amd64_pvt*, align 8
  %5 = alloca %struct.amd64_family_type*, align 8
  %6 = alloca %struct.mem_ctl_info*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %3, align 8
  store %struct.amd64_pvt* null, %struct.amd64_pvt** %4, align 8
  store %struct.amd64_family_type* null, %struct.amd64_family_type** %5, align 8
  store %struct.mem_ctl_info* null, %struct.mem_ctl_info** %6, align 8
  store i32 0, i32* %7, align 4
  %10 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %11 = call i64 @get_node_id(%struct.pci_dev* %10)
  store i64 %11, i64* %9, align 8
  %12 = load i32, i32* @ENOMEM, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %8, align 4
  %14 = load i32, i32* @GFP_KERNEL, align 4
  %15 = call %struct.amd64_pvt* @kzalloc(i32 40, i32 %14)
  store %struct.amd64_pvt* %15, %struct.amd64_pvt** %4, align 8
  %16 = load %struct.amd64_pvt*, %struct.amd64_pvt** %4, align 8
  %17 = icmp ne %struct.amd64_pvt* %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %1
  br label %135

19:                                               ; preds = %1
  %20 = load i64, i64* %9, align 8
  %21 = load %struct.amd64_pvt*, %struct.amd64_pvt** %4, align 8
  %22 = getelementptr inbounds %struct.amd64_pvt, %struct.amd64_pvt* %21, i32 0, i32 0
  store i64 %20, i64* %22, align 8
  %23 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %24 = load %struct.amd64_pvt*, %struct.amd64_pvt** %4, align 8
  %25 = getelementptr inbounds %struct.amd64_pvt, %struct.amd64_pvt* %24, i32 0, i32 2
  store %struct.pci_dev* %23, %struct.pci_dev** %25, align 8
  %26 = load i32, i32* @EINVAL, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %8, align 4
  %28 = load %struct.amd64_pvt*, %struct.amd64_pvt** %4, align 8
  %29 = call %struct.amd64_family_type* @amd64_per_family_init(%struct.amd64_pvt* %28)
  store %struct.amd64_family_type* %29, %struct.amd64_family_type** %5, align 8
  %30 = load %struct.amd64_family_type*, %struct.amd64_family_type** %5, align 8
  %31 = icmp ne %struct.amd64_family_type* %30, null
  br i1 %31, label %33, label %32

32:                                               ; preds = %19
  br label %132

33:                                               ; preds = %19
  %34 = load i32, i32* @ENODEV, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %8, align 4
  %36 = load %struct.amd64_pvt*, %struct.amd64_pvt** %4, align 8
  %37 = load %struct.amd64_family_type*, %struct.amd64_family_type** %5, align 8
  %38 = getelementptr inbounds %struct.amd64_family_type, %struct.amd64_family_type* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.amd64_family_type*, %struct.amd64_family_type** %5, align 8
  %41 = getelementptr inbounds %struct.amd64_family_type, %struct.amd64_family_type* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @reserve_mc_sibling_devs(%struct.amd64_pvt* %36, i32 %39, i32 %42)
  store i32 %43, i32* %7, align 4
  %44 = load i32, i32* %7, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %33
  br label %132

47:                                               ; preds = %33
  %48 = load %struct.amd64_pvt*, %struct.amd64_pvt** %4, align 8
  %49 = call i32 @read_mc_regs(%struct.amd64_pvt* %48)
  %50 = load i32, i32* @EINVAL, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %8, align 4
  %52 = load %struct.amd64_pvt*, %struct.amd64_pvt** %4, align 8
  %53 = getelementptr inbounds %struct.amd64_pvt, %struct.amd64_pvt* %52, i32 0, i32 4
  %54 = load %struct.TYPE_3__*, %struct.TYPE_3__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 0
  %56 = load i64 (%struct.amd64_pvt*)*, i64 (%struct.amd64_pvt*)** %55, align 8
  %57 = load %struct.amd64_pvt*, %struct.amd64_pvt** %4, align 8
  %58 = call i64 %56(%struct.amd64_pvt* %57)
  %59 = load %struct.amd64_pvt*, %struct.amd64_pvt** %4, align 8
  %60 = getelementptr inbounds %struct.amd64_pvt, %struct.amd64_pvt* %59, i32 0, i32 1
  store i64 %58, i64* %60, align 8
  %61 = load %struct.amd64_pvt*, %struct.amd64_pvt** %4, align 8
  %62 = getelementptr inbounds %struct.amd64_pvt, %struct.amd64_pvt* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = icmp slt i64 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %47
  br label %129

66:                                               ; preds = %47
  %67 = load i32, i32* @ENOMEM, align 4
  %68 = sub nsw i32 0, %67
  store i32 %68, i32* %8, align 4
  %69 = load %struct.amd64_pvt*, %struct.amd64_pvt** %4, align 8
  %70 = getelementptr inbounds %struct.amd64_pvt, %struct.amd64_pvt* %69, i32 0, i32 3
  %71 = load %struct.TYPE_4__*, %struct.TYPE_4__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i64 0
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.amd64_pvt*, %struct.amd64_pvt** %4, align 8
  %76 = getelementptr inbounds %struct.amd64_pvt, %struct.amd64_pvt* %75, i32 0, i32 1
  %77 = load i64, i64* %76, align 8
  %78 = load i64, i64* %9, align 8
  %79 = call %struct.mem_ctl_info* @edac_mc_alloc(i32 0, i32 %74, i64 %77, i64 %78)
  store %struct.mem_ctl_info* %79, %struct.mem_ctl_info** %6, align 8
  %80 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %6, align 8
  %81 = icmp ne %struct.mem_ctl_info* %80, null
  br i1 %81, label %83, label %82

82:                                               ; preds = %66
  br label %129

83:                                               ; preds = %66
  %84 = load %struct.amd64_pvt*, %struct.amd64_pvt** %4, align 8
  %85 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %6, align 8
  %86 = getelementptr inbounds %struct.mem_ctl_info, %struct.mem_ctl_info* %85, i32 0, i32 2
  store %struct.amd64_pvt* %84, %struct.amd64_pvt** %86, align 8
  %87 = load %struct.amd64_pvt*, %struct.amd64_pvt** %4, align 8
  %88 = getelementptr inbounds %struct.amd64_pvt, %struct.amd64_pvt* %87, i32 0, i32 2
  %89 = load %struct.pci_dev*, %struct.pci_dev** %88, align 8
  %90 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %89, i32 0, i32 0
  %91 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %6, align 8
  %92 = getelementptr inbounds %struct.mem_ctl_info, %struct.mem_ctl_info* %91, i32 0, i32 1
  store i32* %90, i32** %92, align 8
  %93 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %6, align 8
  %94 = load %struct.amd64_family_type*, %struct.amd64_family_type** %5, align 8
  %95 = call i32 @setup_mci_misc_attrs(%struct.mem_ctl_info* %93, %struct.amd64_family_type* %94)
  %96 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %6, align 8
  %97 = call i64 @init_csrows(%struct.mem_ctl_info* %96)
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %103

99:                                               ; preds = %83
  %100 = load i32, i32* @EDAC_FLAG_NONE, align 4
  %101 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %6, align 8
  %102 = getelementptr inbounds %struct.mem_ctl_info, %struct.mem_ctl_info* %101, i32 0, i32 0
  store i32 %100, i32* %102, align 8
  br label %103

103:                                              ; preds = %99, %83
  %104 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %6, align 8
  %105 = call i32 @set_mc_sysfs_attrs(%struct.mem_ctl_info* %104)
  %106 = load i32, i32* @ENODEV, align 4
  %107 = sub nsw i32 0, %106
  store i32 %107, i32* %8, align 4
  %108 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %6, align 8
  %109 = call i64 @edac_mc_add_mc(%struct.mem_ctl_info* %108)
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %113

111:                                              ; preds = %103
  %112 = call i32 @debugf1(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  br label %126

113:                                              ; preds = %103
  %114 = load i64, i64* @report_gart_errors, align 8
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %118

116:                                              ; preds = %113
  %117 = call i32 @amd_report_gart_errors(i32 1)
  br label %118

118:                                              ; preds = %116, %113
  %119 = load i32, i32* @amd64_decode_bus_error, align 4
  %120 = call i32 @amd_register_ecc_decoder(i32 %119)
  %121 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %6, align 8
  %122 = load %struct.mem_ctl_info**, %struct.mem_ctl_info*** @mcis, align 8
  %123 = load i64, i64* %9, align 8
  %124 = getelementptr inbounds %struct.mem_ctl_info*, %struct.mem_ctl_info** %122, i64 %123
  store %struct.mem_ctl_info* %121, %struct.mem_ctl_info** %124, align 8
  %125 = call i32 @atomic_inc(i32* @drv_instances)
  store i32 0, i32* %2, align 4
  br label %137

126:                                              ; preds = %111
  %127 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %6, align 8
  %128 = call i32 @edac_mc_free(%struct.mem_ctl_info* %127)
  br label %129

129:                                              ; preds = %126, %82, %65
  %130 = load %struct.amd64_pvt*, %struct.amd64_pvt** %4, align 8
  %131 = call i32 @free_mc_sibling_devs(%struct.amd64_pvt* %130)
  br label %132

132:                                              ; preds = %129, %46, %32
  %133 = load %struct.amd64_pvt*, %struct.amd64_pvt** %4, align 8
  %134 = call i32 @kfree(%struct.amd64_pvt* %133)
  br label %135

135:                                              ; preds = %132, %18
  %136 = load i32, i32* %8, align 4
  store i32 %136, i32* %2, align 4
  br label %137

137:                                              ; preds = %135, %118
  %138 = load i32, i32* %2, align 4
  ret i32 %138
}

declare dso_local i64 @get_node_id(%struct.pci_dev*) #1

declare dso_local %struct.amd64_pvt* @kzalloc(i32, i32) #1

declare dso_local %struct.amd64_family_type* @amd64_per_family_init(%struct.amd64_pvt*) #1

declare dso_local i32 @reserve_mc_sibling_devs(%struct.amd64_pvt*, i32, i32) #1

declare dso_local i32 @read_mc_regs(%struct.amd64_pvt*) #1

declare dso_local %struct.mem_ctl_info* @edac_mc_alloc(i32, i32, i64, i64) #1

declare dso_local i32 @setup_mci_misc_attrs(%struct.mem_ctl_info*, %struct.amd64_family_type*) #1

declare dso_local i64 @init_csrows(%struct.mem_ctl_info*) #1

declare dso_local i32 @set_mc_sysfs_attrs(%struct.mem_ctl_info*) #1

declare dso_local i64 @edac_mc_add_mc(%struct.mem_ctl_info*) #1

declare dso_local i32 @debugf1(i8*) #1

declare dso_local i32 @amd_report_gart_errors(i32) #1

declare dso_local i32 @amd_register_ecc_decoder(i32) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @edac_mc_free(%struct.mem_ctl_info*) #1

declare dso_local i32 @free_mc_sibling_devs(%struct.amd64_pvt*) #1

declare dso_local i32 @kfree(%struct.amd64_pvt*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
