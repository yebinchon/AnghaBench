; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_ipr.c_ipr_modify_ioafp_mode_page_28.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_ipr.c_ipr_modify_ioafp_mode_page_28.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipr_ioa_cfg = type { %struct.ipr_bus_attributes*, %struct.TYPE_3__* }
%struct.ipr_bus_attributes = type { i64, i32, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.ipr_mode_pages = type { i32 }
%struct.ipr_dev_bus_entry = type { i32, i32, i32, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }
%struct.ipr_mode_page28 = type { i32, i32, %struct.ipr_dev_bus_entry* }

@IPR_MAX_NUM_BUSES = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [43 x i8] c"Invalid resource address reported: 0x%08X\0A\00", align 1
@IPR_EXTENDED_RESET_DELAY = common dso_local global i32 0, align 4
@IPR_SCSI_ATTR_QAS_MASK = common dso_local global i32 0, align 4
@IPR_SCSI_ATTR_ENABLE_QAS = common dso_local global i32 0, align 4
@IPR_SCSI_ATTR_DISABLE_QAS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ipr_ioa_cfg*, %struct.ipr_mode_pages*)* @ipr_modify_ioafp_mode_page_28 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ipr_modify_ioafp_mode_page_28(%struct.ipr_ioa_cfg* %0, %struct.ipr_mode_pages* %1) #0 {
  %3 = alloca %struct.ipr_ioa_cfg*, align 8
  %4 = alloca %struct.ipr_mode_pages*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.ipr_dev_bus_entry*, align 8
  %8 = alloca %struct.ipr_bus_attributes*, align 8
  %9 = alloca %struct.ipr_mode_page28*, align 8
  store %struct.ipr_ioa_cfg* %0, %struct.ipr_ioa_cfg** %3, align 8
  store %struct.ipr_mode_pages* %1, %struct.ipr_mode_pages** %4, align 8
  %10 = load %struct.ipr_mode_pages*, %struct.ipr_mode_pages** %4, align 8
  %11 = call %struct.ipr_mode_page28* @ipr_get_mode_page(%struct.ipr_mode_pages* %10, i32 40, i32 16)
  store %struct.ipr_mode_page28* %11, %struct.ipr_mode_page28** %9, align 8
  %12 = load %struct.ipr_mode_page28*, %struct.ipr_mode_page28** %9, align 8
  %13 = getelementptr inbounds %struct.ipr_mode_page28, %struct.ipr_mode_page28* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  store i32 %14, i32* %6, align 4
  store i32 0, i32* %5, align 4
  %15 = load %struct.ipr_mode_page28*, %struct.ipr_mode_page28** %9, align 8
  %16 = getelementptr inbounds %struct.ipr_mode_page28, %struct.ipr_mode_page28* %15, i32 0, i32 2
  %17 = load %struct.ipr_dev_bus_entry*, %struct.ipr_dev_bus_entry** %16, align 8
  store %struct.ipr_dev_bus_entry* %17, %struct.ipr_dev_bus_entry** %7, align 8
  br label %18

18:                                               ; preds = %86, %2
  %19 = load i32, i32* %5, align 4
  %20 = load %struct.ipr_mode_page28*, %struct.ipr_mode_page28** %9, align 8
  %21 = getelementptr inbounds %struct.ipr_mode_page28, %struct.ipr_mode_page28* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = icmp slt i32 %19, %22
  br i1 %23, label %24, label %95

24:                                               ; preds = %18
  %25 = load %struct.ipr_dev_bus_entry*, %struct.ipr_dev_bus_entry** %7, align 8
  %26 = getelementptr inbounds %struct.ipr_dev_bus_entry, %struct.ipr_dev_bus_entry* %25, i32 0, i32 4
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @IPR_MAX_NUM_BUSES, align 8
  %30 = icmp sgt i64 %28, %29
  br i1 %30, label %31, label %42

31:                                               ; preds = %24
  %32 = load %struct.ipr_ioa_cfg*, %struct.ipr_ioa_cfg** %3, align 8
  %33 = getelementptr inbounds %struct.ipr_ioa_cfg, %struct.ipr_ioa_cfg* %32, i32 0, i32 1
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 0
  %36 = load %struct.ipr_dev_bus_entry*, %struct.ipr_dev_bus_entry** %7, align 8
  %37 = getelementptr inbounds %struct.ipr_dev_bus_entry, %struct.ipr_dev_bus_entry* %36, i32 0, i32 4
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = call i32 @IPR_GET_PHYS_LOC(i64 %39)
  %41 = call i32 @dev_err(i32* %35, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32 %40)
  br label %86

42:                                               ; preds = %24
  %43 = load %struct.ipr_ioa_cfg*, %struct.ipr_ioa_cfg** %3, align 8
  %44 = getelementptr inbounds %struct.ipr_ioa_cfg, %struct.ipr_ioa_cfg* %43, i32 0, i32 0
  %45 = load %struct.ipr_bus_attributes*, %struct.ipr_bus_attributes** %44, align 8
  %46 = load i32, i32* %5, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.ipr_bus_attributes, %struct.ipr_bus_attributes* %45, i64 %47
  store %struct.ipr_bus_attributes* %48, %struct.ipr_bus_attributes** %8, align 8
  %49 = load i32, i32* @IPR_EXTENDED_RESET_DELAY, align 4
  %50 = load %struct.ipr_dev_bus_entry*, %struct.ipr_dev_bus_entry** %7, align 8
  %51 = getelementptr inbounds %struct.ipr_dev_bus_entry, %struct.ipr_dev_bus_entry* %50, i32 0, i32 3
  store i32 %49, i32* %51, align 4
  %52 = load %struct.ipr_bus_attributes*, %struct.ipr_bus_attributes** %8, align 8
  %53 = getelementptr inbounds %struct.ipr_bus_attributes, %struct.ipr_bus_attributes* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.ipr_dev_bus_entry*, %struct.ipr_dev_bus_entry** %7, align 8
  %56 = getelementptr inbounds %struct.ipr_dev_bus_entry, %struct.ipr_dev_bus_entry* %55, i32 0, i32 2
  store i32 %54, i32* %56, align 8
  %57 = load %struct.ipr_bus_attributes*, %struct.ipr_bus_attributes** %8, align 8
  %58 = getelementptr inbounds %struct.ipr_bus_attributes, %struct.ipr_bus_attributes* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 8
  %60 = call i32 @cpu_to_be32(i32 %59)
  %61 = load %struct.ipr_dev_bus_entry*, %struct.ipr_dev_bus_entry** %7, align 8
  %62 = getelementptr inbounds %struct.ipr_dev_bus_entry, %struct.ipr_dev_bus_entry* %61, i32 0, i32 1
  store i32 %60, i32* %62, align 4
  %63 = load i32, i32* @IPR_SCSI_ATTR_QAS_MASK, align 4
  %64 = xor i32 %63, -1
  %65 = load %struct.ipr_dev_bus_entry*, %struct.ipr_dev_bus_entry** %7, align 8
  %66 = getelementptr inbounds %struct.ipr_dev_bus_entry, %struct.ipr_dev_bus_entry* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = and i32 %67, %64
  store i32 %68, i32* %66, align 8
  %69 = load %struct.ipr_bus_attributes*, %struct.ipr_bus_attributes** %8, align 8
  %70 = getelementptr inbounds %struct.ipr_bus_attributes, %struct.ipr_bus_attributes* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %79

73:                                               ; preds = %42
  %74 = load i32, i32* @IPR_SCSI_ATTR_ENABLE_QAS, align 4
  %75 = load %struct.ipr_dev_bus_entry*, %struct.ipr_dev_bus_entry** %7, align 8
  %76 = getelementptr inbounds %struct.ipr_dev_bus_entry, %struct.ipr_dev_bus_entry* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = or i32 %77, %74
  store i32 %78, i32* %76, align 8
  br label %85

79:                                               ; preds = %42
  %80 = load i32, i32* @IPR_SCSI_ATTR_DISABLE_QAS, align 4
  %81 = load %struct.ipr_dev_bus_entry*, %struct.ipr_dev_bus_entry** %7, align 8
  %82 = getelementptr inbounds %struct.ipr_dev_bus_entry, %struct.ipr_dev_bus_entry* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = or i32 %83, %80
  store i32 %84, i32* %82, align 8
  br label %85

85:                                               ; preds = %79, %73
  br label %86

86:                                               ; preds = %85, %31
  %87 = load i32, i32* %5, align 4
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %5, align 4
  %89 = load %struct.ipr_dev_bus_entry*, %struct.ipr_dev_bus_entry** %7, align 8
  %90 = bitcast %struct.ipr_dev_bus_entry* %89 to i32*
  %91 = load i32, i32* %6, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds i32, i32* %90, i64 %92
  %94 = bitcast i32* %93 to %struct.ipr_dev_bus_entry*
  store %struct.ipr_dev_bus_entry* %94, %struct.ipr_dev_bus_entry** %7, align 8
  br label %18

95:                                               ; preds = %18
  ret void
}

declare dso_local %struct.ipr_mode_page28* @ipr_get_mode_page(%struct.ipr_mode_pages*, i32, i32) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local i32 @IPR_GET_PHYS_LOC(i64) #1

declare dso_local i32 @cpu_to_be32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
