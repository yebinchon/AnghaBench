; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/qlcnic/extr_qlcnic_main.c_qlcnic_reset_npar_config.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/qlcnic/extr_qlcnic_main.c_qlcnic_reset_npar_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qlcnic_adapter = type { %struct.qlcnic_npar_info*, %struct.TYPE_2__*, i32 }
%struct.qlcnic_npar_info = type { i32, i64, i32, i32, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.qlcnic_info = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @qlcnic_reset_npar_config(%struct.qlcnic_adapter* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.qlcnic_adapter*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.qlcnic_npar_info*, align 8
  %7 = alloca %struct.qlcnic_info, align 4
  %8 = alloca i32, align 4
  store %struct.qlcnic_adapter* %0, %struct.qlcnic_adapter** %3, align 8
  %9 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %10 = call i64 @qlcnic_82xx_check(%struct.qlcnic_adapter* %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %19

12:                                               ; preds = %1
  %13 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %14 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 8
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %12
  store i32 0, i32* %2, align 4
  br label %92

18:                                               ; preds = %12
  br label %19

19:                                               ; preds = %18, %1
  store i32 0, i32* %4, align 4
  br label %20

20:                                               ; preds = %88, %19
  %21 = load i32, i32* %4, align 4
  %22 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %23 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %22, i32 0, i32 1
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = icmp slt i32 %21, %26
  br i1 %27, label %28, label %91

28:                                               ; preds = %20
  %29 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %30 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %29, i32 0, i32 0
  %31 = load %struct.qlcnic_npar_info*, %struct.qlcnic_npar_info** %30, align 8
  %32 = load i32, i32* %4, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.qlcnic_npar_info, %struct.qlcnic_npar_info* %31, i64 %33
  store %struct.qlcnic_npar_info* %34, %struct.qlcnic_npar_info** %6, align 8
  %35 = load %struct.qlcnic_npar_info*, %struct.qlcnic_npar_info** %6, align 8
  %36 = getelementptr inbounds %struct.qlcnic_npar_info, %struct.qlcnic_npar_info* %35, i32 0, i32 4
  %37 = load i32, i32* %36, align 8
  store i32 %37, i32* %8, align 4
  %38 = call i32 @memset(%struct.qlcnic_info* %7, i32 0, i32 8)
  %39 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %40 = load i32, i32* %8, align 4
  %41 = call i32 @qlcnic_get_nic_info(%struct.qlcnic_adapter* %39, %struct.qlcnic_info* %7, i32 %40)
  store i32 %41, i32* %5, align 4
  %42 = load i32, i32* %5, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %28
  %45 = load i32, i32* %5, align 4
  store i32 %45, i32* %2, align 4
  br label %92

46:                                               ; preds = %28
  %47 = load %struct.qlcnic_npar_info*, %struct.qlcnic_npar_info** %6, align 8
  %48 = getelementptr inbounds %struct.qlcnic_npar_info, %struct.qlcnic_npar_info* %47, i32 0, i32 3
  %49 = load i32, i32* %48, align 4
  %50 = getelementptr inbounds %struct.qlcnic_info, %struct.qlcnic_info* %7, i32 0, i32 1
  store i32 %49, i32* %50, align 4
  %51 = load %struct.qlcnic_npar_info*, %struct.qlcnic_npar_info** %6, align 8
  %52 = getelementptr inbounds %struct.qlcnic_npar_info, %struct.qlcnic_npar_info* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 8
  %54 = getelementptr inbounds %struct.qlcnic_info, %struct.qlcnic_info* %7, i32 0, i32 0
  store i32 %53, i32* %54, align 4
  %55 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %56 = call i32 @qlcnic_set_nic_info(%struct.qlcnic_adapter* %55, %struct.qlcnic_info* %7)
  store i32 %56, i32* %5, align 4
  %57 = load i32, i32* %5, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %61

59:                                               ; preds = %46
  %60 = load i32, i32* %5, align 4
  store i32 %60, i32* %2, align 4
  br label %92

61:                                               ; preds = %46
  %62 = load %struct.qlcnic_npar_info*, %struct.qlcnic_npar_info** %6, align 8
  %63 = getelementptr inbounds %struct.qlcnic_npar_info, %struct.qlcnic_npar_info* %62, i32 0, i32 1
  %64 = load i64, i64* %63, align 8
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %78

66:                                               ; preds = %61
  %67 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %68 = load %struct.qlcnic_npar_info*, %struct.qlcnic_npar_info** %6, align 8
  %69 = getelementptr inbounds %struct.qlcnic_npar_info, %struct.qlcnic_npar_info* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = load i32, i32* %8, align 4
  %72 = call i32 @qlcnic_config_port_mirroring(%struct.qlcnic_adapter* %67, i32 %70, i32 1, i32 %71)
  store i32 %72, i32* %5, align 4
  %73 = load i32, i32* %5, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %77

75:                                               ; preds = %66
  %76 = load i32, i32* %5, align 4
  store i32 %76, i32* %2, align 4
  br label %92

77:                                               ; preds = %66
  br label %78

78:                                               ; preds = %77, %61
  %79 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %80 = load %struct.qlcnic_npar_info*, %struct.qlcnic_npar_info** %6, align 8
  %81 = load i32, i32* %8, align 4
  %82 = call i32 @qlcnic_reset_eswitch_config(%struct.qlcnic_adapter* %79, %struct.qlcnic_npar_info* %80, i32 %81)
  store i32 %82, i32* %5, align 4
  %83 = load i32, i32* %5, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %87

85:                                               ; preds = %78
  %86 = load i32, i32* %5, align 4
  store i32 %86, i32* %2, align 4
  br label %92

87:                                               ; preds = %78
  br label %88

88:                                               ; preds = %87
  %89 = load i32, i32* %4, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %4, align 4
  br label %20

91:                                               ; preds = %20
  store i32 0, i32* %2, align 4
  br label %92

92:                                               ; preds = %91, %85, %75, %59, %44, %17
  %93 = load i32, i32* %2, align 4
  ret i32 %93
}

declare dso_local i64 @qlcnic_82xx_check(%struct.qlcnic_adapter*) #1

declare dso_local i32 @memset(%struct.qlcnic_info*, i32, i32) #1

declare dso_local i32 @qlcnic_get_nic_info(%struct.qlcnic_adapter*, %struct.qlcnic_info*, i32) #1

declare dso_local i32 @qlcnic_set_nic_info(%struct.qlcnic_adapter*, %struct.qlcnic_info*) #1

declare dso_local i32 @qlcnic_config_port_mirroring(%struct.qlcnic_adapter*, i32, i32, i32) #1

declare dso_local i32 @qlcnic_reset_eswitch_config(%struct.qlcnic_adapter*, %struct.qlcnic_npar_info*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
