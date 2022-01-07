; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/qlcnic/extr_qlcnic_sriov_pf.c_qlcnic_sriov_pf_cal_res_limit.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/qlcnic/extr_qlcnic_sriov_pf.c_qlcnic_sriov_pf_cal_res_limit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qlcnic_adapter = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64, %struct.qlcnic_sriov* }
%struct.qlcnic_sriov = type { i32, %struct.TYPE_4__*, %struct.qlcnic_resources }
%struct.TYPE_4__ = type { %struct.qlcnic_vport* }
%struct.qlcnic_vport = type { i32, i32 }
%struct.qlcnic_resources = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.qlcnic_info = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@EIO = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@QLCNIC_SRIOV_VF_MAX_MAC = common dso_local global i32 0, align 4
@MAX_BW = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qlcnic_adapter*, %struct.qlcnic_info*, i64)* @qlcnic_sriov_pf_cal_res_limit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qlcnic_sriov_pf_cal_res_limit(%struct.qlcnic_adapter* %0, %struct.qlcnic_info* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.qlcnic_adapter*, align 8
  %6 = alloca %struct.qlcnic_info*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.qlcnic_sriov*, align 8
  %9 = alloca %struct.qlcnic_resources*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.qlcnic_vport*, align 8
  store %struct.qlcnic_adapter* %0, %struct.qlcnic_adapter** %5, align 8
  store %struct.qlcnic_info* %1, %struct.qlcnic_info** %6, align 8
  store i64 %2, i64* %7, align 8
  %18 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %5, align 8
  %19 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %18, i32 0, i32 0
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 1
  %22 = load %struct.qlcnic_sriov*, %struct.qlcnic_sriov** %21, align 8
  store %struct.qlcnic_sriov* %22, %struct.qlcnic_sriov** %8, align 8
  %23 = load %struct.qlcnic_sriov*, %struct.qlcnic_sriov** %8, align 8
  %24 = getelementptr inbounds %struct.qlcnic_sriov, %struct.qlcnic_sriov* %23, i32 0, i32 2
  store %struct.qlcnic_resources* %24, %struct.qlcnic_resources** %9, align 8
  %25 = load i32, i32* @EIO, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %14, align 4
  %27 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %5, align 8
  %28 = load i64, i64* %7, align 8
  %29 = call i32 @qlcnic_sriov_pf_get_vport_handle(%struct.qlcnic_adapter* %27, i64 %28)
  store i32 %29, i32* %15, align 4
  %30 = load i32, i32* %15, align 4
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %3
  %33 = load i32, i32* @EINVAL, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %4, align 4
  br label %182

35:                                               ; preds = %3
  %36 = load %struct.qlcnic_sriov*, %struct.qlcnic_sriov** %8, align 8
  %37 = getelementptr inbounds %struct.qlcnic_sriov, %struct.qlcnic_sriov* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  store i32 %38, i32* %12, align 4
  %39 = load i32, i32* %12, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %13, align 4
  %41 = load %struct.qlcnic_info*, %struct.qlcnic_info** %6, align 8
  %42 = getelementptr inbounds %struct.qlcnic_info, %struct.qlcnic_info* %41, i32 0, i32 0
  store i32 65535, i32* %42, align 4
  %43 = load %struct.qlcnic_resources*, %struct.qlcnic_resources** %9, align 8
  %44 = getelementptr inbounds %struct.qlcnic_resources, %struct.qlcnic_resources* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* %13, align 4
  %47 = sdiv i32 %45, %46
  %48 = load %struct.qlcnic_info*, %struct.qlcnic_info** %6, align 8
  %49 = getelementptr inbounds %struct.qlcnic_info, %struct.qlcnic_info* %48, i32 0, i32 1
  store i32 %47, i32* %49, align 4
  %50 = load %struct.qlcnic_resources*, %struct.qlcnic_resources** %9, align 8
  %51 = getelementptr inbounds %struct.qlcnic_resources, %struct.qlcnic_resources* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.qlcnic_info*, %struct.qlcnic_info** %6, align 8
  %54 = getelementptr inbounds %struct.qlcnic_info, %struct.qlcnic_info* %53, i32 0, i32 2
  store i32 %52, i32* %54, align 4
  %55 = load i32, i32* @QLCNIC_SRIOV_VF_MAX_MAC, align 4
  store i32 %55, i32* %11, align 4
  %56 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %5, align 8
  %57 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %56, i32 0, i32 0
  %58 = load %struct.TYPE_3__*, %struct.TYPE_3__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* %7, align 8
  %62 = icmp eq i64 %60, %61
  br i1 %62, label %63, label %89

63:                                               ; preds = %35
  %64 = load %struct.qlcnic_resources*, %struct.qlcnic_resources** %9, align 8
  %65 = getelementptr inbounds %struct.qlcnic_resources, %struct.qlcnic_resources* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* %12, align 4
  %68 = load i32, i32* %11, align 4
  %69 = mul nsw i32 %67, %68
  %70 = sub nsw i32 %66, %69
  store i32 %70, i32* %10, align 4
  %71 = load i32, i32* %10, align 4
  %72 = load %struct.qlcnic_info*, %struct.qlcnic_info** %6, align 8
  %73 = getelementptr inbounds %struct.qlcnic_info, %struct.qlcnic_info* %72, i32 0, i32 3
  store i32 %71, i32* %73, align 4
  %74 = load %struct.qlcnic_resources*, %struct.qlcnic_resources** %9, align 8
  %75 = getelementptr inbounds %struct.qlcnic_resources, %struct.qlcnic_resources* %74, i32 0, i32 2
  %76 = load i32, i32* %75, align 4
  %77 = load i32, i32* %12, align 4
  %78 = load i32, i32* %11, align 4
  %79 = mul nsw i32 %77, %78
  %80 = sub nsw i32 %76, %79
  store i32 %80, i32* %10, align 4
  %81 = load i32, i32* %10, align 4
  %82 = load %struct.qlcnic_info*, %struct.qlcnic_info** %6, align 8
  %83 = getelementptr inbounds %struct.qlcnic_info, %struct.qlcnic_info* %82, i32 0, i32 4
  store i32 %81, i32* %83, align 4
  %84 = load %struct.qlcnic_info*, %struct.qlcnic_info** %6, align 8
  %85 = getelementptr inbounds %struct.qlcnic_info, %struct.qlcnic_info* %84, i32 0, i32 14
  store i32 0, i32* %85, align 4
  %86 = load i32, i32* @MAX_BW, align 4
  %87 = load %struct.qlcnic_info*, %struct.qlcnic_info** %6, align 8
  %88 = getelementptr inbounds %struct.qlcnic_info, %struct.qlcnic_info* %87, i32 0, i32 13
  store i32 %86, i32* %88, align 4
  br label %122

89:                                               ; preds = %35
  %90 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %5, align 8
  %91 = load i64, i64* %7, align 8
  %92 = call i32 @qlcnic_sriov_func_to_index(%struct.qlcnic_adapter* %90, i64 %91)
  store i32 %92, i32* %16, align 4
  %93 = load i32, i32* %16, align 4
  %94 = icmp slt i32 %93, 0
  br i1 %94, label %95, label %97

95:                                               ; preds = %89
  %96 = load i32, i32* %16, align 4
  store i32 %96, i32* %4, align 4
  br label %182

97:                                               ; preds = %89
  %98 = load %struct.qlcnic_sriov*, %struct.qlcnic_sriov** %8, align 8
  %99 = getelementptr inbounds %struct.qlcnic_sriov, %struct.qlcnic_sriov* %98, i32 0, i32 1
  %100 = load %struct.TYPE_4__*, %struct.TYPE_4__** %99, align 8
  %101 = load i32, i32* %16, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %100, i64 %102
  %104 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %103, i32 0, i32 0
  %105 = load %struct.qlcnic_vport*, %struct.qlcnic_vport** %104, align 8
  store %struct.qlcnic_vport* %105, %struct.qlcnic_vport** %17, align 8
  %106 = load %struct.qlcnic_vport*, %struct.qlcnic_vport** %17, align 8
  %107 = getelementptr inbounds %struct.qlcnic_vport, %struct.qlcnic_vport* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 4
  %109 = load %struct.qlcnic_info*, %struct.qlcnic_info** %6, align 8
  %110 = getelementptr inbounds %struct.qlcnic_info, %struct.qlcnic_info* %109, i32 0, i32 14
  store i32 %108, i32* %110, align 4
  %111 = load %struct.qlcnic_vport*, %struct.qlcnic_vport** %17, align 8
  %112 = getelementptr inbounds %struct.qlcnic_vport, %struct.qlcnic_vport* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = load %struct.qlcnic_info*, %struct.qlcnic_info** %6, align 8
  %115 = getelementptr inbounds %struct.qlcnic_info, %struct.qlcnic_info* %114, i32 0, i32 13
  store i32 %113, i32* %115, align 4
  %116 = load i32, i32* %11, align 4
  %117 = load %struct.qlcnic_info*, %struct.qlcnic_info** %6, align 8
  %118 = getelementptr inbounds %struct.qlcnic_info, %struct.qlcnic_info* %117, i32 0, i32 3
  store i32 %116, i32* %118, align 4
  %119 = load i32, i32* %11, align 4
  %120 = load %struct.qlcnic_info*, %struct.qlcnic_info** %6, align 8
  %121 = getelementptr inbounds %struct.qlcnic_info, %struct.qlcnic_info* %120, i32 0, i32 4
  store i32 %119, i32* %121, align 4
  br label %122

122:                                              ; preds = %97, %63
  %123 = load %struct.qlcnic_resources*, %struct.qlcnic_resources** %9, align 8
  %124 = getelementptr inbounds %struct.qlcnic_resources, %struct.qlcnic_resources* %123, i32 0, i32 3
  %125 = load i32, i32* %124, align 4
  %126 = load i32, i32* %13, align 4
  %127 = sdiv i32 %125, %126
  %128 = load %struct.qlcnic_info*, %struct.qlcnic_info** %6, align 8
  %129 = getelementptr inbounds %struct.qlcnic_info, %struct.qlcnic_info* %128, i32 0, i32 5
  store i32 %127, i32* %129, align 4
  %130 = load %struct.qlcnic_resources*, %struct.qlcnic_resources** %9, align 8
  %131 = getelementptr inbounds %struct.qlcnic_resources, %struct.qlcnic_resources* %130, i32 0, i32 4
  %132 = load i32, i32* %131, align 4
  %133 = load i32, i32* %13, align 4
  %134 = sdiv i32 %132, %133
  %135 = load %struct.qlcnic_info*, %struct.qlcnic_info** %6, align 8
  %136 = getelementptr inbounds %struct.qlcnic_info, %struct.qlcnic_info* %135, i32 0, i32 6
  store i32 %134, i32* %136, align 4
  %137 = load %struct.qlcnic_resources*, %struct.qlcnic_resources** %9, align 8
  %138 = getelementptr inbounds %struct.qlcnic_resources, %struct.qlcnic_resources* %137, i32 0, i32 5
  %139 = load i32, i32* %138, align 4
  %140 = load i32, i32* %13, align 4
  %141 = sdiv i32 %139, %140
  %142 = load %struct.qlcnic_info*, %struct.qlcnic_info** %6, align 8
  %143 = getelementptr inbounds %struct.qlcnic_info, %struct.qlcnic_info* %142, i32 0, i32 7
  store i32 %141, i32* %143, align 4
  %144 = load %struct.qlcnic_resources*, %struct.qlcnic_resources** %9, align 8
  %145 = getelementptr inbounds %struct.qlcnic_resources, %struct.qlcnic_resources* %144, i32 0, i32 6
  %146 = load i32, i32* %145, align 4
  %147 = load i32, i32* %13, align 4
  %148 = sdiv i32 %146, %147
  %149 = load %struct.qlcnic_info*, %struct.qlcnic_info** %6, align 8
  %150 = getelementptr inbounds %struct.qlcnic_info, %struct.qlcnic_info* %149, i32 0, i32 8
  store i32 %148, i32* %150, align 4
  %151 = load %struct.qlcnic_resources*, %struct.qlcnic_resources** %9, align 8
  %152 = getelementptr inbounds %struct.qlcnic_resources, %struct.qlcnic_resources* %151, i32 0, i32 7
  %153 = load i32, i32* %152, align 4
  %154 = load i32, i32* %13, align 4
  %155 = sdiv i32 %153, %154
  %156 = load %struct.qlcnic_info*, %struct.qlcnic_info** %6, align 8
  %157 = getelementptr inbounds %struct.qlcnic_info, %struct.qlcnic_info* %156, i32 0, i32 9
  store i32 %155, i32* %157, align 4
  %158 = load %struct.qlcnic_resources*, %struct.qlcnic_resources** %9, align 8
  %159 = getelementptr inbounds %struct.qlcnic_resources, %struct.qlcnic_resources* %158, i32 0, i32 10
  %160 = load i32, i32* %159, align 4
  %161 = load %struct.qlcnic_info*, %struct.qlcnic_info** %6, align 8
  %162 = getelementptr inbounds %struct.qlcnic_info, %struct.qlcnic_info* %161, i32 0, i32 12
  store i32 %160, i32* %162, align 4
  %163 = load %struct.qlcnic_resources*, %struct.qlcnic_resources** %9, align 8
  %164 = getelementptr inbounds %struct.qlcnic_resources, %struct.qlcnic_resources* %163, i32 0, i32 9
  %165 = load i32, i32* %164, align 4
  %166 = load %struct.qlcnic_info*, %struct.qlcnic_info** %6, align 8
  %167 = getelementptr inbounds %struct.qlcnic_info, %struct.qlcnic_info* %166, i32 0, i32 11
  store i32 %165, i32* %167, align 4
  %168 = load %struct.qlcnic_resources*, %struct.qlcnic_resources** %9, align 8
  %169 = getelementptr inbounds %struct.qlcnic_resources, %struct.qlcnic_resources* %168, i32 0, i32 8
  %170 = load i32, i32* %169, align 4
  %171 = load %struct.qlcnic_info*, %struct.qlcnic_info** %6, align 8
  %172 = getelementptr inbounds %struct.qlcnic_info, %struct.qlcnic_info* %171, i32 0, i32 10
  store i32 %170, i32* %172, align 4
  %173 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %5, align 8
  %174 = load %struct.qlcnic_info*, %struct.qlcnic_info** %6, align 8
  %175 = load i32, i32* %15, align 4
  %176 = call i32 @qlcnic_sriov_pf_set_vport_info(%struct.qlcnic_adapter* %173, %struct.qlcnic_info* %174, i32 %175)
  store i32 %176, i32* %14, align 4
  %177 = load i32, i32* %14, align 4
  %178 = icmp ne i32 %177, 0
  br i1 %178, label %179, label %181

179:                                              ; preds = %122
  %180 = load i32, i32* %14, align 4
  store i32 %180, i32* %4, align 4
  br label %182

181:                                              ; preds = %122
  store i32 0, i32* %4, align 4
  br label %182

182:                                              ; preds = %181, %179, %95, %32
  %183 = load i32, i32* %4, align 4
  ret i32 %183
}

declare dso_local i32 @qlcnic_sriov_pf_get_vport_handle(%struct.qlcnic_adapter*, i64) #1

declare dso_local i32 @qlcnic_sriov_func_to_index(%struct.qlcnic_adapter*, i64) #1

declare dso_local i32 @qlcnic_sriov_pf_set_vport_info(%struct.qlcnic_adapter*, %struct.qlcnic_info*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
