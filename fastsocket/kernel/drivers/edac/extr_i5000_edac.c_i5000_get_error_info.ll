; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/edac/extr_i5000_edac.c_i5000_get_error_info.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/edac/extr_i5000_edac.c_i5000_get_error_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mem_ctl_info = type { %struct.i5000_pvt* }
%struct.i5000_pvt = type { i32 }
%struct.i5000_error_info = type { i32, i32, i32, i32, i32, i32, i64, i64, i64 }

@FERR_FAT_FBD = common dso_local global i32 0, align 4
@FERR_FAT_FBDCHAN = common dso_local global i32 0, align 4
@FERR_FAT_MASK = common dso_local global i32 0, align 4
@NERR_FAT_FBD = common dso_local global i32 0, align 4
@NRECMEMA = common dso_local global i32 0, align 4
@NRECMEMB = common dso_local global i32 0, align 4
@FERR_NF_FBD = common dso_local global i32 0, align 4
@FERR_NF_MASK = common dso_local global i32 0, align 4
@NERR_NF_FBD = common dso_local global i32 0, align 4
@RECMEMA = common dso_local global i32 0, align 4
@RECMEMB = common dso_local global i32 0, align 4
@REDMEMB = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mem_ctl_info*, %struct.i5000_error_info*)* @i5000_get_error_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @i5000_get_error_info(%struct.mem_ctl_info* %0, %struct.i5000_error_info* %1) #0 {
  %3 = alloca %struct.mem_ctl_info*, align 8
  %4 = alloca %struct.i5000_error_info*, align 8
  %5 = alloca %struct.i5000_pvt*, align 8
  %6 = alloca i32, align 4
  store %struct.mem_ctl_info* %0, %struct.mem_ctl_info** %3, align 8
  store %struct.i5000_error_info* %1, %struct.i5000_error_info** %4, align 8
  %7 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %3, align 8
  %8 = getelementptr inbounds %struct.mem_ctl_info, %struct.mem_ctl_info* %7, i32 0, i32 0
  %9 = load %struct.i5000_pvt*, %struct.i5000_pvt** %8, align 8
  store %struct.i5000_pvt* %9, %struct.i5000_pvt** %5, align 8
  %10 = load %struct.i5000_pvt*, %struct.i5000_pvt** %5, align 8
  %11 = getelementptr inbounds %struct.i5000_pvt, %struct.i5000_pvt* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @FERR_FAT_FBD, align 4
  %14 = call i32 @pci_read_config_dword(i32 %12, i32 %13, i32* %6)
  %15 = load i32, i32* @FERR_FAT_FBDCHAN, align 4
  %16 = load i32, i32* @FERR_FAT_MASK, align 4
  %17 = or i32 %15, %16
  %18 = load i32, i32* %6, align 4
  %19 = and i32 %18, %17
  store i32 %19, i32* %6, align 4
  %20 = load i32, i32* %6, align 4
  %21 = load i32, i32* @FERR_FAT_MASK, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %55

24:                                               ; preds = %2
  %25 = load i32, i32* %6, align 4
  %26 = load %struct.i5000_error_info*, %struct.i5000_error_info** %4, align 8
  %27 = getelementptr inbounds %struct.i5000_error_info, %struct.i5000_error_info* %26, i32 0, i32 0
  store i32 %25, i32* %27, align 8
  %28 = load %struct.i5000_pvt*, %struct.i5000_pvt** %5, align 8
  %29 = getelementptr inbounds %struct.i5000_pvt, %struct.i5000_pvt* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @NERR_FAT_FBD, align 4
  %32 = load %struct.i5000_error_info*, %struct.i5000_error_info** %4, align 8
  %33 = getelementptr inbounds %struct.i5000_error_info, %struct.i5000_error_info* %32, i32 0, i32 1
  %34 = call i32 @pci_read_config_dword(i32 %30, i32 %31, i32* %33)
  %35 = load %struct.i5000_pvt*, %struct.i5000_pvt** %5, align 8
  %36 = getelementptr inbounds %struct.i5000_pvt, %struct.i5000_pvt* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @NRECMEMA, align 4
  %39 = load %struct.i5000_error_info*, %struct.i5000_error_info** %4, align 8
  %40 = getelementptr inbounds %struct.i5000_error_info, %struct.i5000_error_info* %39, i32 0, i32 8
  %41 = call i32 @pci_read_config_word(i32 %37, i32 %38, i64* %40)
  %42 = load %struct.i5000_pvt*, %struct.i5000_pvt** %5, align 8
  %43 = getelementptr inbounds %struct.i5000_pvt, %struct.i5000_pvt* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* @NRECMEMB, align 4
  %46 = load %struct.i5000_error_info*, %struct.i5000_error_info** %4, align 8
  %47 = getelementptr inbounds %struct.i5000_error_info, %struct.i5000_error_info* %46, i32 0, i32 7
  %48 = call i32 @pci_read_config_word(i32 %44, i32 %45, i64* %47)
  %49 = load %struct.i5000_pvt*, %struct.i5000_pvt** %5, align 8
  %50 = getelementptr inbounds %struct.i5000_pvt, %struct.i5000_pvt* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* @FERR_FAT_FBD, align 4
  %53 = load i32, i32* %6, align 4
  %54 = call i32 @pci_write_config_dword(i32 %51, i32 %52, i32 %53)
  br label %64

55:                                               ; preds = %2
  %56 = load %struct.i5000_error_info*, %struct.i5000_error_info** %4, align 8
  %57 = getelementptr inbounds %struct.i5000_error_info, %struct.i5000_error_info* %56, i32 0, i32 0
  store i32 0, i32* %57, align 8
  %58 = load %struct.i5000_error_info*, %struct.i5000_error_info** %4, align 8
  %59 = getelementptr inbounds %struct.i5000_error_info, %struct.i5000_error_info* %58, i32 0, i32 1
  store i32 0, i32* %59, align 4
  %60 = load %struct.i5000_error_info*, %struct.i5000_error_info** %4, align 8
  %61 = getelementptr inbounds %struct.i5000_error_info, %struct.i5000_error_info* %60, i32 0, i32 8
  store i64 0, i64* %61, align 8
  %62 = load %struct.i5000_error_info*, %struct.i5000_error_info** %4, align 8
  %63 = getelementptr inbounds %struct.i5000_error_info, %struct.i5000_error_info* %62, i32 0, i32 7
  store i64 0, i64* %63, align 8
  br label %64

64:                                               ; preds = %55, %24
  %65 = load %struct.i5000_pvt*, %struct.i5000_pvt** %5, align 8
  %66 = getelementptr inbounds %struct.i5000_pvt, %struct.i5000_pvt* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* @FERR_NF_FBD, align 4
  %69 = call i32 @pci_read_config_dword(i32 %67, i32 %68, i32* %6)
  %70 = load i32, i32* %6, align 4
  %71 = load i32, i32* @FERR_NF_MASK, align 4
  %72 = and i32 %70, %71
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %112

74:                                               ; preds = %64
  %75 = load i32, i32* %6, align 4
  %76 = load %struct.i5000_error_info*, %struct.i5000_error_info** %4, align 8
  %77 = getelementptr inbounds %struct.i5000_error_info, %struct.i5000_error_info* %76, i32 0, i32 2
  store i32 %75, i32* %77, align 8
  %78 = load %struct.i5000_pvt*, %struct.i5000_pvt** %5, align 8
  %79 = getelementptr inbounds %struct.i5000_pvt, %struct.i5000_pvt* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = load i32, i32* @NERR_NF_FBD, align 4
  %82 = load %struct.i5000_error_info*, %struct.i5000_error_info** %4, align 8
  %83 = getelementptr inbounds %struct.i5000_error_info, %struct.i5000_error_info* %82, i32 0, i32 3
  %84 = call i32 @pci_read_config_dword(i32 %80, i32 %81, i32* %83)
  %85 = load %struct.i5000_pvt*, %struct.i5000_pvt** %5, align 8
  %86 = getelementptr inbounds %struct.i5000_pvt, %struct.i5000_pvt* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = load i32, i32* @RECMEMA, align 4
  %89 = load %struct.i5000_error_info*, %struct.i5000_error_info** %4, align 8
  %90 = getelementptr inbounds %struct.i5000_error_info, %struct.i5000_error_info* %89, i32 0, i32 6
  %91 = call i32 @pci_read_config_word(i32 %87, i32 %88, i64* %90)
  %92 = load %struct.i5000_pvt*, %struct.i5000_pvt** %5, align 8
  %93 = getelementptr inbounds %struct.i5000_pvt, %struct.i5000_pvt* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = load i32, i32* @RECMEMB, align 4
  %96 = load %struct.i5000_error_info*, %struct.i5000_error_info** %4, align 8
  %97 = getelementptr inbounds %struct.i5000_error_info, %struct.i5000_error_info* %96, i32 0, i32 4
  %98 = call i32 @pci_read_config_dword(i32 %94, i32 %95, i32* %97)
  %99 = load %struct.i5000_pvt*, %struct.i5000_pvt** %5, align 8
  %100 = getelementptr inbounds %struct.i5000_pvt, %struct.i5000_pvt* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = load i32, i32* @REDMEMB, align 4
  %103 = load %struct.i5000_error_info*, %struct.i5000_error_info** %4, align 8
  %104 = getelementptr inbounds %struct.i5000_error_info, %struct.i5000_error_info* %103, i32 0, i32 5
  %105 = call i32 @pci_read_config_dword(i32 %101, i32 %102, i32* %104)
  %106 = load %struct.i5000_pvt*, %struct.i5000_pvt** %5, align 8
  %107 = getelementptr inbounds %struct.i5000_pvt, %struct.i5000_pvt* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = load i32, i32* @FERR_NF_FBD, align 4
  %110 = load i32, i32* %6, align 4
  %111 = call i32 @pci_write_config_dword(i32 %108, i32 %109, i32 %110)
  br label %123

112:                                              ; preds = %64
  %113 = load %struct.i5000_error_info*, %struct.i5000_error_info** %4, align 8
  %114 = getelementptr inbounds %struct.i5000_error_info, %struct.i5000_error_info* %113, i32 0, i32 2
  store i32 0, i32* %114, align 8
  %115 = load %struct.i5000_error_info*, %struct.i5000_error_info** %4, align 8
  %116 = getelementptr inbounds %struct.i5000_error_info, %struct.i5000_error_info* %115, i32 0, i32 3
  store i32 0, i32* %116, align 4
  %117 = load %struct.i5000_error_info*, %struct.i5000_error_info** %4, align 8
  %118 = getelementptr inbounds %struct.i5000_error_info, %struct.i5000_error_info* %117, i32 0, i32 6
  store i64 0, i64* %118, align 8
  %119 = load %struct.i5000_error_info*, %struct.i5000_error_info** %4, align 8
  %120 = getelementptr inbounds %struct.i5000_error_info, %struct.i5000_error_info* %119, i32 0, i32 4
  store i32 0, i32* %120, align 8
  %121 = load %struct.i5000_error_info*, %struct.i5000_error_info** %4, align 8
  %122 = getelementptr inbounds %struct.i5000_error_info, %struct.i5000_error_info* %121, i32 0, i32 5
  store i32 0, i32* %122, align 4
  br label %123

123:                                              ; preds = %112, %74
  ret void
}

declare dso_local i32 @pci_read_config_dword(i32, i32, i32*) #1

declare dso_local i32 @pci_read_config_word(i32, i32, i64*) #1

declare dso_local i32 @pci_write_config_dword(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
