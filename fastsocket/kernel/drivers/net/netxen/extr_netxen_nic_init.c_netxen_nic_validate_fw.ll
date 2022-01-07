; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/netxen/extr_netxen_nic_init.c_netxen_nic_validate_fw.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/netxen/extr_netxen_nic_init.c_netxen_nic_validate_fw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.netxen_adapter = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64, i32* }
%struct.uni_table_desc = type { i32, i32 }
%struct.uni_data_desc = type { i32, i32 }

@NX_UNI_FIRMWARE_IDX_OFF = common dso_local global i32 0, align 4
@NX_UNI_DIR_SECT_FW = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.netxen_adapter*)* @netxen_nic_validate_fw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @netxen_nic_validate_fw(%struct.netxen_adapter* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.netxen_adapter*, align 8
  %4 = alloca %struct.uni_table_desc*, align 8
  %5 = alloca %struct.uni_data_desc*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store %struct.netxen_adapter* %0, %struct.netxen_adapter** %3, align 8
  %11 = load %struct.netxen_adapter*, %struct.netxen_adapter** %3, align 8
  %12 = getelementptr inbounds %struct.netxen_adapter, %struct.netxen_adapter* %11, i32 0, i32 1
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 1
  %15 = load i32*, i32** %14, align 8
  store i32* %15, i32** %6, align 8
  %16 = load i32*, i32** %6, align 8
  %17 = load %struct.netxen_adapter*, %struct.netxen_adapter** %3, align 8
  %18 = getelementptr inbounds %struct.netxen_adapter, %struct.netxen_adapter* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = getelementptr inbounds i32, i32* %16, i64 %19
  %21 = load i32, i32* @NX_UNI_FIRMWARE_IDX_OFF, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i32, i32* %20, i64 %22
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @cpu_to_le32(i32 %24)
  store i32 %25, i32* %7, align 4
  %26 = load i32*, i32** %6, align 8
  %27 = load i32, i32* @NX_UNI_DIR_SECT_FW, align 4
  %28 = call %struct.uni_table_desc* @nx_get_table_desc(i32* %26, i32 %27)
  store %struct.uni_table_desc* %28, %struct.uni_table_desc** %4, align 8
  %29 = load %struct.uni_table_desc*, %struct.uni_table_desc** %4, align 8
  %30 = icmp ne %struct.uni_table_desc* %29, null
  br i1 %30, label %34, label %31

31:                                               ; preds = %1
  %32 = load i32, i32* @EINVAL, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %2, align 4
  br label %96

34:                                               ; preds = %1
  %35 = load %struct.uni_table_desc*, %struct.uni_table_desc** %4, align 8
  %36 = getelementptr inbounds %struct.uni_table_desc, %struct.uni_table_desc* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @cpu_to_le32(i32 %37)
  %39 = load %struct.uni_table_desc*, %struct.uni_table_desc** %4, align 8
  %40 = getelementptr inbounds %struct.uni_table_desc, %struct.uni_table_desc* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @cpu_to_le32(i32 %41)
  %43 = load i32, i32* %7, align 4
  %44 = add nsw i32 %43, 1
  %45 = mul nsw i32 %42, %44
  %46 = add nsw i32 %38, %45
  %47 = sext i32 %46 to i64
  store i64 %47, i64* %9, align 8
  %48 = load %struct.netxen_adapter*, %struct.netxen_adapter** %3, align 8
  %49 = getelementptr inbounds %struct.netxen_adapter, %struct.netxen_adapter* %48, i32 0, i32 1
  %50 = load %struct.TYPE_2__*, %struct.TYPE_2__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* %9, align 8
  %54 = icmp ult i64 %52, %53
  br i1 %54, label %55, label %58

55:                                               ; preds = %34
  %56 = load i32, i32* @EINVAL, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %2, align 4
  br label %96

58:                                               ; preds = %34
  %59 = load %struct.uni_table_desc*, %struct.uni_table_desc** %4, align 8
  %60 = getelementptr inbounds %struct.uni_table_desc, %struct.uni_table_desc* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @cpu_to_le32(i32 %61)
  %63 = load %struct.uni_table_desc*, %struct.uni_table_desc** %4, align 8
  %64 = getelementptr inbounds %struct.uni_table_desc, %struct.uni_table_desc* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @cpu_to_le32(i32 %65)
  %67 = load i32, i32* %7, align 4
  %68 = mul nsw i32 %66, %67
  %69 = add nsw i32 %62, %68
  %70 = sext i32 %69 to i64
  store i64 %70, i64* %8, align 8
  %71 = load i32*, i32** %6, align 8
  %72 = load i64, i64* %8, align 8
  %73 = getelementptr inbounds i32, i32* %71, i64 %72
  %74 = bitcast i32* %73 to %struct.uni_data_desc*
  store %struct.uni_data_desc* %74, %struct.uni_data_desc** %5, align 8
  %75 = load %struct.uni_data_desc*, %struct.uni_data_desc** %5, align 8
  %76 = getelementptr inbounds %struct.uni_data_desc, %struct.uni_data_desc* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @cpu_to_le32(i32 %77)
  %79 = load %struct.uni_data_desc*, %struct.uni_data_desc** %5, align 8
  %80 = getelementptr inbounds %struct.uni_data_desc, %struct.uni_data_desc* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = call i32 @cpu_to_le32(i32 %81)
  %83 = add nsw i32 %78, %82
  %84 = sext i32 %83 to i64
  store i64 %84, i64* %10, align 8
  %85 = load %struct.netxen_adapter*, %struct.netxen_adapter** %3, align 8
  %86 = getelementptr inbounds %struct.netxen_adapter, %struct.netxen_adapter* %85, i32 0, i32 1
  %87 = load %struct.TYPE_2__*, %struct.TYPE_2__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = load i64, i64* %10, align 8
  %91 = icmp ult i64 %89, %90
  br i1 %91, label %92, label %95

92:                                               ; preds = %58
  %93 = load i32, i32* @EINVAL, align 4
  %94 = sub nsw i32 0, %93
  store i32 %94, i32* %2, align 4
  br label %96

95:                                               ; preds = %58
  store i32 0, i32* %2, align 4
  br label %96

96:                                               ; preds = %95, %92, %55, %31
  %97 = load i32, i32* %2, align 4
  ret i32 %97
}

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local %struct.uni_table_desc* @nx_get_table_desc(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
