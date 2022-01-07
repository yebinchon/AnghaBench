; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/edac/extr_e7xxx_edac.c_e7xxx_get_error_info.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/edac/extr_e7xxx_edac.c_e7xxx_get_error_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mem_ctl_info = type { i64 }
%struct.e7xxx_error_info = type { i32, i32, i32, i32, i32 }
%struct.e7xxx_pvt = type { i32 }

@E7XXX_DRAM_FERR = common dso_local global i32 0, align 4
@E7XXX_DRAM_NERR = common dso_local global i32 0, align 4
@E7XXX_DRAM_CELOG_ADD = common dso_local global i32 0, align 4
@E7XXX_DRAM_CELOG_SYNDROME = common dso_local global i32 0, align 4
@E7XXX_DRAM_UELOG_ADD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mem_ctl_info*, %struct.e7xxx_error_info*)* @e7xxx_get_error_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @e7xxx_get_error_info(%struct.mem_ctl_info* %0, %struct.e7xxx_error_info* %1) #0 {
  %3 = alloca %struct.mem_ctl_info*, align 8
  %4 = alloca %struct.e7xxx_error_info*, align 8
  %5 = alloca %struct.e7xxx_pvt*, align 8
  store %struct.mem_ctl_info* %0, %struct.mem_ctl_info** %3, align 8
  store %struct.e7xxx_error_info* %1, %struct.e7xxx_error_info** %4, align 8
  %6 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %3, align 8
  %7 = getelementptr inbounds %struct.mem_ctl_info, %struct.mem_ctl_info* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = inttoptr i64 %8 to %struct.e7xxx_pvt*
  store %struct.e7xxx_pvt* %9, %struct.e7xxx_pvt** %5, align 8
  %10 = load %struct.e7xxx_pvt*, %struct.e7xxx_pvt** %5, align 8
  %11 = getelementptr inbounds %struct.e7xxx_pvt, %struct.e7xxx_pvt* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @E7XXX_DRAM_FERR, align 4
  %14 = load %struct.e7xxx_error_info*, %struct.e7xxx_error_info** %4, align 8
  %15 = getelementptr inbounds %struct.e7xxx_error_info, %struct.e7xxx_error_info* %14, i32 0, i32 0
  %16 = call i32 @pci_read_config_byte(i32 %12, i32 %13, i32* %15)
  %17 = load %struct.e7xxx_pvt*, %struct.e7xxx_pvt** %5, align 8
  %18 = getelementptr inbounds %struct.e7xxx_pvt, %struct.e7xxx_pvt* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @E7XXX_DRAM_NERR, align 4
  %21 = load %struct.e7xxx_error_info*, %struct.e7xxx_error_info** %4, align 8
  %22 = getelementptr inbounds %struct.e7xxx_error_info, %struct.e7xxx_error_info* %21, i32 0, i32 1
  %23 = call i32 @pci_read_config_byte(i32 %19, i32 %20, i32* %22)
  %24 = load %struct.e7xxx_error_info*, %struct.e7xxx_error_info** %4, align 8
  %25 = getelementptr inbounds %struct.e7xxx_error_info, %struct.e7xxx_error_info* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = and i32 %26, 1
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %35, label %29

29:                                               ; preds = %2
  %30 = load %struct.e7xxx_error_info*, %struct.e7xxx_error_info** %4, align 8
  %31 = getelementptr inbounds %struct.e7xxx_error_info, %struct.e7xxx_error_info* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = and i32 %32, 1
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %50

35:                                               ; preds = %29, %2
  %36 = load %struct.e7xxx_pvt*, %struct.e7xxx_pvt** %5, align 8
  %37 = getelementptr inbounds %struct.e7xxx_pvt, %struct.e7xxx_pvt* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @E7XXX_DRAM_CELOG_ADD, align 4
  %40 = load %struct.e7xxx_error_info*, %struct.e7xxx_error_info** %4, align 8
  %41 = getelementptr inbounds %struct.e7xxx_error_info, %struct.e7xxx_error_info* %40, i32 0, i32 4
  %42 = call i32 @pci_read_config_dword(i32 %38, i32 %39, i32* %41)
  %43 = load %struct.e7xxx_pvt*, %struct.e7xxx_pvt** %5, align 8
  %44 = getelementptr inbounds %struct.e7xxx_pvt, %struct.e7xxx_pvt* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* @E7XXX_DRAM_CELOG_SYNDROME, align 4
  %47 = load %struct.e7xxx_error_info*, %struct.e7xxx_error_info** %4, align 8
  %48 = getelementptr inbounds %struct.e7xxx_error_info, %struct.e7xxx_error_info* %47, i32 0, i32 3
  %49 = call i32 @pci_read_config_word(i32 %45, i32 %46, i32* %48)
  br label %50

50:                                               ; preds = %35, %29
  %51 = load %struct.e7xxx_error_info*, %struct.e7xxx_error_info** %4, align 8
  %52 = getelementptr inbounds %struct.e7xxx_error_info, %struct.e7xxx_error_info* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = and i32 %53, 2
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %62, label %56

56:                                               ; preds = %50
  %57 = load %struct.e7xxx_error_info*, %struct.e7xxx_error_info** %4, align 8
  %58 = getelementptr inbounds %struct.e7xxx_error_info, %struct.e7xxx_error_info* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = and i32 %59, 2
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %70

62:                                               ; preds = %56, %50
  %63 = load %struct.e7xxx_pvt*, %struct.e7xxx_pvt** %5, align 8
  %64 = getelementptr inbounds %struct.e7xxx_pvt, %struct.e7xxx_pvt* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* @E7XXX_DRAM_UELOG_ADD, align 4
  %67 = load %struct.e7xxx_error_info*, %struct.e7xxx_error_info** %4, align 8
  %68 = getelementptr inbounds %struct.e7xxx_error_info, %struct.e7xxx_error_info* %67, i32 0, i32 2
  %69 = call i32 @pci_read_config_dword(i32 %65, i32 %66, i32* %68)
  br label %70

70:                                               ; preds = %62, %56
  %71 = load %struct.e7xxx_error_info*, %struct.e7xxx_error_info** %4, align 8
  %72 = getelementptr inbounds %struct.e7xxx_error_info, %struct.e7xxx_error_info* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = and i32 %73, 3
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %82

76:                                               ; preds = %70
  %77 = load %struct.e7xxx_pvt*, %struct.e7xxx_pvt** %5, align 8
  %78 = getelementptr inbounds %struct.e7xxx_pvt, %struct.e7xxx_pvt* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = load i32, i32* @E7XXX_DRAM_FERR, align 4
  %81 = call i32 @pci_write_bits8(i32 %79, i32 %80, i32 3, i32 3)
  br label %82

82:                                               ; preds = %76, %70
  %83 = load %struct.e7xxx_error_info*, %struct.e7xxx_error_info** %4, align 8
  %84 = getelementptr inbounds %struct.e7xxx_error_info, %struct.e7xxx_error_info* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = and i32 %85, 3
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %94

88:                                               ; preds = %82
  %89 = load %struct.e7xxx_pvt*, %struct.e7xxx_pvt** %5, align 8
  %90 = getelementptr inbounds %struct.e7xxx_pvt, %struct.e7xxx_pvt* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = load i32, i32* @E7XXX_DRAM_NERR, align 4
  %93 = call i32 @pci_write_bits8(i32 %91, i32 %92, i32 3, i32 3)
  br label %94

94:                                               ; preds = %88, %82
  ret void
}

declare dso_local i32 @pci_read_config_byte(i32, i32, i32*) #1

declare dso_local i32 @pci_read_config_dword(i32, i32, i32*) #1

declare dso_local i32 @pci_read_config_word(i32, i32, i32*) #1

declare dso_local i32 @pci_write_bits8(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
