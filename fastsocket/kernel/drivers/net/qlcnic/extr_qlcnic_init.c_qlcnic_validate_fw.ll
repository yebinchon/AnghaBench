; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/qlcnic/extr_qlcnic_init.c_qlcnic_validate_fw.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/qlcnic/extr_qlcnic_init.c_qlcnic_validate_fw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qlcnic_adapter = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32* }
%struct.uni_table_desc = type { i32, i32 }
%struct.uni_data_desc = type { i32, i32 }

@QLCNIC_UNI_FIRMWARE_IDX_OFF = common dso_local global i32 0, align 4
@QLCNIC_UNI_DIR_SECT_FW = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qlcnic_adapter*)* @qlcnic_validate_fw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qlcnic_validate_fw(%struct.qlcnic_adapter* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.qlcnic_adapter*, align 8
  %4 = alloca %struct.uni_table_desc*, align 8
  %5 = alloca %struct.uni_data_desc*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.qlcnic_adapter* %0, %struct.qlcnic_adapter** %3, align 8
  %12 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %13 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %12, i32 0, i32 1
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 1
  %16 = load i32*, i32** %15, align 8
  store i32* %16, i32** %6, align 8
  %17 = load i32*, i32** %6, align 8
  %18 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %19 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = getelementptr inbounds i32, i32* %17, i64 %20
  %22 = load i32, i32* @QLCNIC_UNI_FIRMWARE_IDX_OFF, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i32, i32* %21, i64 %23
  %25 = load i32, i32* %24, align 4
  store i32 %25, i32* %11, align 4
  %26 = load i32, i32* %11, align 4
  %27 = call i32 @le32_to_cpu(i32 %26)
  store i32 %27, i32* %10, align 4
  %28 = load i32*, i32** %6, align 8
  %29 = load i32, i32* @QLCNIC_UNI_DIR_SECT_FW, align 4
  %30 = call %struct.uni_table_desc* @qlcnic_get_table_desc(i32* %28, i32 %29)
  store %struct.uni_table_desc* %30, %struct.uni_table_desc** %4, align 8
  %31 = load %struct.uni_table_desc*, %struct.uni_table_desc** %4, align 8
  %32 = icmp ne %struct.uni_table_desc* %31, null
  br i1 %32, label %36, label %33

33:                                               ; preds = %1
  %34 = load i32, i32* @EINVAL, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %2, align 4
  br label %96

36:                                               ; preds = %1
  %37 = load %struct.uni_table_desc*, %struct.uni_table_desc** %4, align 8
  %38 = getelementptr inbounds %struct.uni_table_desc, %struct.uni_table_desc* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @le32_to_cpu(i32 %39)
  %41 = load %struct.uni_table_desc*, %struct.uni_table_desc** %4, align 8
  %42 = getelementptr inbounds %struct.uni_table_desc, %struct.uni_table_desc* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @le32_to_cpu(i32 %43)
  %45 = load i32, i32* %10, align 4
  %46 = add nsw i32 %45, 1
  %47 = mul nsw i32 %44, %46
  %48 = add nsw i32 %40, %47
  store i32 %48, i32* %8, align 4
  %49 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %50 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %49, i32 0, i32 1
  %51 = load %struct.TYPE_2__*, %struct.TYPE_2__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = load i32, i32* %8, align 4
  %55 = icmp slt i32 %53, %54
  br i1 %55, label %56, label %59

56:                                               ; preds = %36
  %57 = load i32, i32* @EINVAL, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %2, align 4
  br label %96

59:                                               ; preds = %36
  %60 = load %struct.uni_table_desc*, %struct.uni_table_desc** %4, align 8
  %61 = getelementptr inbounds %struct.uni_table_desc, %struct.uni_table_desc* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @le32_to_cpu(i32 %62)
  %64 = load %struct.uni_table_desc*, %struct.uni_table_desc** %4, align 8
  %65 = getelementptr inbounds %struct.uni_table_desc, %struct.uni_table_desc* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @le32_to_cpu(i32 %66)
  %68 = load i32, i32* %10, align 4
  %69 = mul nsw i32 %67, %68
  %70 = add nsw i32 %63, %69
  store i32 %70, i32* %7, align 4
  %71 = load i32*, i32** %6, align 8
  %72 = load i32, i32* %7, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i32, i32* %71, i64 %73
  %75 = bitcast i32* %74 to %struct.uni_data_desc*
  store %struct.uni_data_desc* %75, %struct.uni_data_desc** %5, align 8
  %76 = load %struct.uni_data_desc*, %struct.uni_data_desc** %5, align 8
  %77 = getelementptr inbounds %struct.uni_data_desc, %struct.uni_data_desc* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @le32_to_cpu(i32 %78)
  %80 = load %struct.uni_data_desc*, %struct.uni_data_desc** %5, align 8
  %81 = getelementptr inbounds %struct.uni_data_desc, %struct.uni_data_desc* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = call i32 @le32_to_cpu(i32 %82)
  %84 = add nsw i32 %79, %83
  store i32 %84, i32* %9, align 4
  %85 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %86 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %85, i32 0, i32 1
  %87 = load %struct.TYPE_2__*, %struct.TYPE_2__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = load i32, i32* %9, align 4
  %91 = icmp slt i32 %89, %90
  br i1 %91, label %92, label %95

92:                                               ; preds = %59
  %93 = load i32, i32* @EINVAL, align 4
  %94 = sub nsw i32 0, %93
  store i32 %94, i32* %2, align 4
  br label %96

95:                                               ; preds = %59
  store i32 0, i32* %2, align 4
  br label %96

96:                                               ; preds = %95, %92, %56, %33
  %97 = load i32, i32* %2, align 4
  ret i32 %97
}

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local %struct.uni_table_desc* @qlcnic_get_table_desc(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
