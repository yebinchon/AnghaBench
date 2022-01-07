; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/netxen/extr_netxen_nic_init.c_nx_get_fw_version.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/netxen/extr_netxen_nic_init.c_nx_get_fw_version.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.netxen_adapter = type { i64, %struct.firmware* }
%struct.firmware = type { i32* }
%struct.uni_data_desc = type { i32, i32 }

@NX_UNIFIED_ROMIMAGE = common dso_local global i64 0, align 8
@NX_UNI_DIR_SECT_FW = common dso_local global i32 0, align 4
@NX_UNI_FIRMWARE_IDX_OFF = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"REV=\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"%u.%u.%u \00", align 1
@NX_FW_VERSION_OFFSET = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.netxen_adapter*)* @nx_get_fw_version to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nx_get_fw_version(%struct.netxen_adapter* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.netxen_adapter*, align 8
  %4 = alloca %struct.uni_data_desc*, align 8
  %5 = alloca %struct.firmware*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.netxen_adapter* %0, %struct.netxen_adapter** %3, align 8
  %12 = load %struct.netxen_adapter*, %struct.netxen_adapter** %3, align 8
  %13 = getelementptr inbounds %struct.netxen_adapter, %struct.netxen_adapter* %12, i32 0, i32 1
  %14 = load %struct.firmware*, %struct.firmware** %13, align 8
  store %struct.firmware* %14, %struct.firmware** %5, align 8
  store i32 0, i32* %11, align 4
  %15 = load %struct.netxen_adapter*, %struct.netxen_adapter** %3, align 8
  %16 = getelementptr inbounds %struct.netxen_adapter, %struct.netxen_adapter* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @NX_UNIFIED_ROMIMAGE, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %74

20:                                               ; preds = %1
  %21 = load %struct.netxen_adapter*, %struct.netxen_adapter** %3, align 8
  %22 = load i32, i32* @NX_UNI_DIR_SECT_FW, align 4
  %23 = load i32, i32* @NX_UNI_FIRMWARE_IDX_OFF, align 4
  %24 = call %struct.uni_data_desc* @nx_get_data_desc(%struct.netxen_adapter* %21, i32 %22, i32 %23)
  store %struct.uni_data_desc* %24, %struct.uni_data_desc** %4, align 8
  %25 = load %struct.firmware*, %struct.firmware** %5, align 8
  %26 = getelementptr inbounds %struct.firmware, %struct.firmware* %25, i32 0, i32 0
  %27 = load i32*, i32** %26, align 8
  %28 = load %struct.uni_data_desc*, %struct.uni_data_desc** %4, align 8
  %29 = getelementptr inbounds %struct.uni_data_desc, %struct.uni_data_desc* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @cpu_to_le32(i32 %30)
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i32, i32* %27, i64 %32
  %34 = load %struct.uni_data_desc*, %struct.uni_data_desc** %4, align 8
  %35 = getelementptr inbounds %struct.uni_data_desc, %struct.uni_data_desc* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @cpu_to_le32(i32 %36)
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i32, i32* %33, i64 %38
  %40 = getelementptr inbounds i32, i32* %39, i64 -17
  store i32* %40, i32** %9, align 8
  store i32 0, i32* %10, align 4
  br label %41

41:                                               ; preds = %59, %20
  %42 = load i32, i32* %10, align 4
  %43 = icmp slt i32 %42, 12
  br i1 %43, label %44, label %62

44:                                               ; preds = %41
  %45 = load i32*, i32** %9, align 8
  %46 = load i32, i32* %10, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i32, i32* %45, i64 %47
  %49 = call i32 @strncmp(i32* %48, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 4)
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %58, label %51

51:                                               ; preds = %44
  %52 = load i32*, i32** %9, align 8
  %53 = load i32, i32* %10, align 4
  %54 = add nsw i32 %53, 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i32, i32* %52, i64 %55
  %57 = call i32 @sscanf(i32* %56, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32* %6, i32* %7, i32* %8)
  store i32 %57, i32* %11, align 4
  br label %62

58:                                               ; preds = %44
  br label %59

59:                                               ; preds = %58
  %60 = load i32, i32* %10, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %10, align 4
  br label %41

62:                                               ; preds = %51, %41
  %63 = load i32, i32* %11, align 4
  %64 = icmp ne i32 %63, 3
  br i1 %64, label %65, label %66

65:                                               ; preds = %62
  store i32 0, i32* %2, align 4
  br label %82

66:                                               ; preds = %62
  %67 = load i32, i32* %6, align 4
  %68 = load i32, i32* %7, align 4
  %69 = shl i32 %68, 8
  %70 = add nsw i32 %67, %69
  %71 = load i32, i32* %8, align 4
  %72 = shl i32 %71, 16
  %73 = add nsw i32 %70, %72
  store i32 %73, i32* %2, align 4
  br label %82

74:                                               ; preds = %1
  %75 = load %struct.firmware*, %struct.firmware** %5, align 8
  %76 = getelementptr inbounds %struct.firmware, %struct.firmware* %75, i32 0, i32 0
  %77 = load i32*, i32** %76, align 8
  %78 = load i64, i64* @NX_FW_VERSION_OFFSET, align 8
  %79 = getelementptr inbounds i32, i32* %77, i64 %78
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @cpu_to_le32(i32 %80)
  store i32 %81, i32* %2, align 4
  br label %82

82:                                               ; preds = %74, %66, %65
  %83 = load i32, i32* %2, align 4
  ret i32 %83
}

declare dso_local %struct.uni_data_desc* @nx_get_data_desc(%struct.netxen_adapter*, i32, i32) #1

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i32 @strncmp(i32*, i8*, i32) #1

declare dso_local i32 @sscanf(i32*, i8*, i32*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
