; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/qla2xxx/extr_qla_nx.c_qla82xx_set_product_offset.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/qla2xxx/extr_qla_nx.c_qla82xx_set_product_offset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qla_hw_data = type { i64, i64, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64* }
%struct.qla82xx_uri_table_desc = type { i32, i32, i32 }

@QLA82XX_URI_DIR_SECT_PRODUCT_TBL = common dso_local global i32 0, align 4
@QLA82XX_URI_FLAGS_OFF = common dso_local global i32 0, align 4
@QLA82XX_URI_CHIP_REV_OFF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qla_hw_data*)* @qla82xx_set_product_offset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qla82xx_set_product_offset(%struct.qla_hw_data* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.qla_hw_data*, align 8
  %4 = alloca %struct.qla82xx_uri_table_desc*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  store %struct.qla_hw_data* %0, %struct.qla_hw_data** %3, align 8
  store %struct.qla82xx_uri_table_desc* null, %struct.qla82xx_uri_table_desc** %4, align 8
  %14 = load %struct.qla_hw_data*, %struct.qla_hw_data** %3, align 8
  %15 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %14, i32 0, i32 2
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load i64*, i64** %19, align 8
  store i64* %20, i64** %5, align 8
  %21 = load %struct.qla_hw_data*, %struct.qla_hw_data** %3, align 8
  %22 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  store i64 %23, i64* %11, align 8
  store i32 0, i32* %12, align 4
  %24 = load i64*, i64** %5, align 8
  %25 = load i32, i32* @QLA82XX_URI_DIR_SECT_PRODUCT_TBL, align 4
  %26 = call %struct.qla82xx_uri_table_desc* @qla82xx_get_table_desc(i64* %24, i32 %25)
  store %struct.qla82xx_uri_table_desc* %26, %struct.qla82xx_uri_table_desc** %4, align 8
  %27 = load %struct.qla82xx_uri_table_desc*, %struct.qla82xx_uri_table_desc** %4, align 8
  %28 = icmp ne %struct.qla82xx_uri_table_desc* %27, null
  br i1 %28, label %30, label %29

29:                                               ; preds = %1
  store i32 -1, i32* %2, align 4
  br label %92

30:                                               ; preds = %1
  %31 = load %struct.qla82xx_uri_table_desc*, %struct.qla82xx_uri_table_desc** %4, align 8
  %32 = getelementptr inbounds %struct.qla82xx_uri_table_desc, %struct.qla82xx_uri_table_desc* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i64 @cpu_to_le32(i32 %33)
  store i64 %34, i64* %7, align 8
  store i64 0, i64* %6, align 8
  br label %35

35:                                               ; preds = %88, %30
  %36 = load i64, i64* %6, align 8
  %37 = load i64, i64* %7, align 8
  %38 = icmp ult i64 %36, %37
  br i1 %38, label %39, label %91

39:                                               ; preds = %35
  %40 = load %struct.qla82xx_uri_table_desc*, %struct.qla82xx_uri_table_desc** %4, align 8
  %41 = getelementptr inbounds %struct.qla82xx_uri_table_desc, %struct.qla82xx_uri_table_desc* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = call i64 @cpu_to_le32(i32 %42)
  %44 = load i64, i64* %6, align 8
  %45 = load %struct.qla82xx_uri_table_desc*, %struct.qla82xx_uri_table_desc** %4, align 8
  %46 = getelementptr inbounds %struct.qla82xx_uri_table_desc, %struct.qla82xx_uri_table_desc* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 4
  %48 = call i64 @cpu_to_le32(i32 %47)
  %49 = mul i64 %44, %48
  %50 = add i64 %43, %49
  store i64 %50, i64* %10, align 8
  %51 = load i64*, i64** %5, align 8
  %52 = load i64, i64* %10, align 8
  %53 = getelementptr inbounds i64, i64* %51, i64 %52
  %54 = bitcast i64* %53 to i32*
  %55 = load i32, i32* @QLA82XX_URI_FLAGS_OFF, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i32, i32* %54, i64 %56
  %58 = load i32, i32* %57, align 4
  %59 = call i64 @cpu_to_le32(i32 %58)
  store i64 %59, i64* %8, align 8
  %60 = load i64*, i64** %5, align 8
  %61 = load i64, i64* %10, align 8
  %62 = getelementptr inbounds i64, i64* %60, i64 %61
  %63 = bitcast i64* %62 to i32*
  %64 = load i32, i32* @QLA82XX_URI_CHIP_REV_OFF, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i32, i32* %63, i64 %65
  %67 = load i32, i32* %66, align 4
  %68 = call i64 @cpu_to_le32(i32 %67)
  store i64 %68, i64* %9, align 8
  %69 = load i32, i32* %12, align 4
  %70 = icmp ne i32 %69, 0
  %71 = zext i1 %70 to i64
  %72 = select i1 %70, i32 1, i32 2
  %73 = sext i32 %72 to i64
  store i64 %73, i64* %13, align 8
  %74 = load i64, i64* %11, align 8
  %75 = load i64, i64* %9, align 8
  %76 = icmp eq i64 %74, %75
  br i1 %76, label %77, label %87

77:                                               ; preds = %39
  %78 = load i64, i64* %13, align 8
  %79 = shl i64 1, %78
  %80 = load i64, i64* %8, align 8
  %81 = and i64 %79, %80
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %87

83:                                               ; preds = %77
  %84 = load i64, i64* %10, align 8
  %85 = load %struct.qla_hw_data*, %struct.qla_hw_data** %3, align 8
  %86 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %85, i32 0, i32 1
  store i64 %84, i64* %86, align 8
  store i32 0, i32* %2, align 4
  br label %92

87:                                               ; preds = %77, %39
  br label %88

88:                                               ; preds = %87
  %89 = load i64, i64* %6, align 8
  %90 = add i64 %89, 1
  store i64 %90, i64* %6, align 8
  br label %35

91:                                               ; preds = %35
  store i32 -1, i32* %2, align 4
  br label %92

92:                                               ; preds = %91, %83, %29
  %93 = load i32, i32* %2, align 4
  ret i32 %93
}

declare dso_local %struct.qla82xx_uri_table_desc* @qla82xx_get_table_desc(i64*, i32) #1

declare dso_local i64 @cpu_to_le32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
