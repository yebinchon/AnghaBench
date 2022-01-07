; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/qib/extr_qib_mad.c_cc_set_congestion_control_table.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/qib/extr_qib_mad.c_cc_set_congestion_control_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_cc_mad = type { i32, i64 }
%struct.ib_device = type { i32 }
%struct.ib_cc_table_attr = type { %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.qib_ibport = type { i32 }
%struct.qib_pportdata = type { i32, i32, i32, i32, %struct.ib_cc_table_entry_shadow*, %struct.TYPE_6__*, i32, %struct.ib_cc_table_entry_shadow*, %struct.TYPE_5__* }
%struct.TYPE_6__ = type { i32, i32, i32 }
%struct.ib_cc_table_entry_shadow = type { i32 }
%struct.TYPE_5__ = type { i32, i32 }
%struct.ib_smp = type { i32 }

@IB_CC_TABLE_CAP_DEFAULT = common dso_local global i32 0, align 4
@IB_CCT_ENTRIES = common dso_local global i32 0, align 4
@IB_CC_CCS_PC_SL_BASED = common dso_local global i32 0, align 4
@IB_CC_CCS_ENTRIES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ib_cc_mad*, %struct.ib_device*, i32)* @cc_set_congestion_control_table to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cc_set_congestion_control_table(%struct.ib_cc_mad* %0, %struct.ib_device* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ib_cc_mad*, align 8
  %6 = alloca %struct.ib_device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.ib_cc_table_attr*, align 8
  %9 = alloca %struct.qib_ibport*, align 8
  %10 = alloca %struct.qib_pportdata*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.ib_cc_table_entry_shadow*, align 8
  %14 = alloca i32, align 4
  store %struct.ib_cc_mad* %0, %struct.ib_cc_mad** %5, align 8
  store %struct.ib_device* %1, %struct.ib_device** %6, align 8
  store i32 %2, i32* %7, align 4
  %15 = load %struct.ib_cc_mad*, %struct.ib_cc_mad** %5, align 8
  %16 = getelementptr inbounds %struct.ib_cc_mad, %struct.ib_cc_mad* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = inttoptr i64 %17 to %struct.ib_cc_table_attr*
  store %struct.ib_cc_table_attr* %18, %struct.ib_cc_table_attr** %8, align 8
  %19 = load %struct.ib_device*, %struct.ib_device** %6, align 8
  %20 = load i32, i32* %7, align 4
  %21 = call %struct.qib_ibport* @to_iport(%struct.ib_device* %19, i32 %20)
  store %struct.qib_ibport* %21, %struct.qib_ibport** %9, align 8
  %22 = load %struct.qib_ibport*, %struct.qib_ibport** %9, align 8
  %23 = call %struct.qib_pportdata* @ppd_from_ibp(%struct.qib_ibport* %22)
  store %struct.qib_pportdata* %23, %struct.qib_pportdata** %10, align 8
  %24 = load %struct.ib_cc_mad*, %struct.ib_cc_mad** %5, align 8
  %25 = getelementptr inbounds %struct.ib_cc_mad, %struct.ib_cc_mad* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = call i32 @be32_to_cpu(i32 %26)
  store i32 %27, i32* %11, align 4
  %28 = load i32, i32* %11, align 4
  %29 = load i32, i32* @IB_CC_TABLE_CAP_DEFAULT, align 4
  %30 = sub nsw i32 %29, 1
  %31 = icmp sgt i32 %28, %30
  br i1 %31, label %32, label %33

32:                                               ; preds = %3
  br label %159

33:                                               ; preds = %3
  %34 = load %struct.ib_cc_table_attr*, %struct.ib_cc_table_attr** %8, align 8
  %35 = getelementptr inbounds %struct.ib_cc_table_attr, %struct.ib_cc_table_attr* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  %37 = call i32 @be16_to_cpu(i32 %36)
  %38 = load i32, i32* @IB_CCT_ENTRIES, align 4
  %39 = icmp slt i32 %37, %38
  br i1 %39, label %40, label %43

40:                                               ; preds = %33
  %41 = load %struct.qib_pportdata*, %struct.qib_pportdata** %10, align 8
  %42 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %41, i32 0, i32 0
  store i32 0, i32* %42, align 8
  br label %43

43:                                               ; preds = %40, %33
  %44 = load %struct.ib_cc_table_attr*, %struct.ib_cc_table_attr** %8, align 8
  %45 = getelementptr inbounds %struct.ib_cc_table_attr, %struct.ib_cc_table_attr* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 8
  %47 = call i32 @be16_to_cpu(i32 %46)
  %48 = load i32, i32* @IB_CCT_ENTRIES, align 4
  %49 = srem i32 %47, %48
  store i32 %49, i32* %12, align 4
  %50 = load i32, i32* %12, align 4
  %51 = add nsw i32 %50, 1
  %52 = load %struct.qib_pportdata*, %struct.qib_pportdata** %10, align 8
  %53 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = add nsw i32 %54, %51
  store i32 %55, i32* %53, align 8
  %56 = load %struct.qib_pportdata*, %struct.qib_pportdata** %10, align 8
  %57 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = load %struct.qib_pportdata*, %struct.qib_pportdata** %10, align 8
  %60 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = icmp sgt i32 %58, %61
  br i1 %62, label %63, label %64

63:                                               ; preds = %43
  br label %159

64:                                               ; preds = %43
  %65 = load %struct.ib_cc_table_attr*, %struct.ib_cc_table_attr** %8, align 8
  %66 = getelementptr inbounds %struct.ib_cc_table_attr, %struct.ib_cc_table_attr* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 8
  %68 = call i32 @be16_to_cpu(i32 %67)
  %69 = load %struct.qib_pportdata*, %struct.qib_pportdata** %10, align 8
  %70 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %69, i32 0, i32 2
  store i32 %68, i32* %70, align 8
  %71 = load %struct.qib_pportdata*, %struct.qib_pportdata** %10, align 8
  %72 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %71, i32 0, i32 7
  %73 = load %struct.ib_cc_table_entry_shadow*, %struct.ib_cc_table_entry_shadow** %72, align 8
  %74 = load i32, i32* @IB_CCT_ENTRIES, align 4
  %75 = load i32, i32* %11, align 4
  %76 = mul nsw i32 %74, %75
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds %struct.ib_cc_table_entry_shadow, %struct.ib_cc_table_entry_shadow* %73, i64 %77
  store %struct.ib_cc_table_entry_shadow* %78, %struct.ib_cc_table_entry_shadow** %13, align 8
  store i32 0, i32* %14, align 4
  br label %79

79:                                               ; preds = %98, %64
  %80 = load i32, i32* %14, align 4
  %81 = load i32, i32* %12, align 4
  %82 = icmp sle i32 %80, %81
  br i1 %82, label %83, label %101

83:                                               ; preds = %79
  %84 = load %struct.ib_cc_table_attr*, %struct.ib_cc_table_attr** %8, align 8
  %85 = getelementptr inbounds %struct.ib_cc_table_attr, %struct.ib_cc_table_attr* %84, i32 0, i32 0
  %86 = load %struct.TYPE_4__*, %struct.TYPE_4__** %85, align 8
  %87 = load i32, i32* %14, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %86, i64 %88
  %90 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = call i32 @be16_to_cpu(i32 %91)
  %93 = load %struct.ib_cc_table_entry_shadow*, %struct.ib_cc_table_entry_shadow** %13, align 8
  %94 = load i32, i32* %14, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds %struct.ib_cc_table_entry_shadow, %struct.ib_cc_table_entry_shadow* %93, i64 %95
  %97 = getelementptr inbounds %struct.ib_cc_table_entry_shadow, %struct.ib_cc_table_entry_shadow* %96, i32 0, i32 0
  store i32 %92, i32* %97, align 4
  br label %98

98:                                               ; preds = %83
  %99 = load i32, i32* %14, align 4
  %100 = add nsw i32 %99, 1
  store i32 %100, i32* %14, align 4
  br label %79

101:                                              ; preds = %79
  %102 = load %struct.qib_pportdata*, %struct.qib_pportdata** %10, align 8
  %103 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %102, i32 0, i32 3
  %104 = call i32 @spin_lock(i32* %103)
  %105 = load %struct.qib_pportdata*, %struct.qib_pportdata** %10, align 8
  %106 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 8
  %108 = sub nsw i32 %107, 1
  %109 = load %struct.qib_pportdata*, %struct.qib_pportdata** %10, align 8
  %110 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %109, i32 0, i32 8
  %111 = load %struct.TYPE_5__*, %struct.TYPE_5__** %110, align 8
  %112 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %111, i32 0, i32 0
  store i32 %108, i32* %112, align 4
  %113 = load %struct.qib_pportdata*, %struct.qib_pportdata** %10, align 8
  %114 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %113, i32 0, i32 8
  %115 = load %struct.TYPE_5__*, %struct.TYPE_5__** %114, align 8
  %116 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 4
  %118 = load %struct.qib_pportdata*, %struct.qib_pportdata** %10, align 8
  %119 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %118, i32 0, i32 7
  %120 = load %struct.ib_cc_table_entry_shadow*, %struct.ib_cc_table_entry_shadow** %119, align 8
  %121 = load %struct.qib_pportdata*, %struct.qib_pportdata** %10, align 8
  %122 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 8
  %124 = sext i32 %123 to i64
  %125 = mul i64 %124, 4
  %126 = trunc i64 %125 to i32
  %127 = call i32 @memcpy(i32 %117, %struct.ib_cc_table_entry_shadow* %120, i32 %126)
  %128 = load i32, i32* @IB_CC_CCS_PC_SL_BASED, align 4
  %129 = load %struct.qib_pportdata*, %struct.qib_pportdata** %10, align 8
  %130 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %129, i32 0, i32 5
  %131 = load %struct.TYPE_6__*, %struct.TYPE_6__** %130, align 8
  %132 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %131, i32 0, i32 2
  store i32 %128, i32* %132, align 4
  %133 = load %struct.qib_pportdata*, %struct.qib_pportdata** %10, align 8
  %134 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %133, i32 0, i32 6
  %135 = load i32, i32* %134, align 8
  %136 = load %struct.qib_pportdata*, %struct.qib_pportdata** %10, align 8
  %137 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %136, i32 0, i32 5
  %138 = load %struct.TYPE_6__*, %struct.TYPE_6__** %137, align 8
  %139 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %138, i32 0, i32 1
  store i32 %135, i32* %139, align 4
  %140 = load %struct.qib_pportdata*, %struct.qib_pportdata** %10, align 8
  %141 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %140, i32 0, i32 5
  %142 = load %struct.TYPE_6__*, %struct.TYPE_6__** %141, align 8
  %143 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 4
  %145 = load %struct.qib_pportdata*, %struct.qib_pportdata** %10, align 8
  %146 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %145, i32 0, i32 4
  %147 = load %struct.ib_cc_table_entry_shadow*, %struct.ib_cc_table_entry_shadow** %146, align 8
  %148 = load i32, i32* @IB_CC_CCS_ENTRIES, align 4
  %149 = sext i32 %148 to i64
  %150 = mul i64 %149, 4
  %151 = trunc i64 %150 to i32
  %152 = call i32 @memcpy(i32 %144, %struct.ib_cc_table_entry_shadow* %147, i32 %151)
  %153 = load %struct.qib_pportdata*, %struct.qib_pportdata** %10, align 8
  %154 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %153, i32 0, i32 3
  %155 = call i32 @spin_unlock(i32* %154)
  %156 = load %struct.ib_cc_mad*, %struct.ib_cc_mad** %5, align 8
  %157 = bitcast %struct.ib_cc_mad* %156 to %struct.ib_smp*
  %158 = call i32 @reply(%struct.ib_smp* %157)
  store i32 %158, i32* %4, align 4
  br label %163

159:                                              ; preds = %63, %32
  %160 = load %struct.ib_cc_mad*, %struct.ib_cc_mad** %5, align 8
  %161 = bitcast %struct.ib_cc_mad* %160 to %struct.ib_smp*
  %162 = call i32 @reply_failure(%struct.ib_smp* %161)
  store i32 %162, i32* %4, align 4
  br label %163

163:                                              ; preds = %159, %101
  %164 = load i32, i32* %4, align 4
  ret i32 %164
}

declare dso_local %struct.qib_ibport* @to_iport(%struct.ib_device*, i32) #1

declare dso_local %struct.qib_pportdata* @ppd_from_ibp(%struct.qib_ibport*) #1

declare dso_local i32 @be32_to_cpu(i32) #1

declare dso_local i32 @be16_to_cpu(i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @memcpy(i32, %struct.ib_cc_table_entry_shadow*, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @reply(%struct.ib_smp*) #1

declare dso_local i32 @reply_failure(%struct.ib_smp*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
