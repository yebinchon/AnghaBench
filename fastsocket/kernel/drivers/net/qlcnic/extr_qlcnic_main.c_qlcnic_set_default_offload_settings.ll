; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/qlcnic/extr_qlcnic_main.c_qlcnic_set_default_offload_settings.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/qlcnic/extr_qlcnic_main.c_qlcnic_set_default_offload_settings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qlcnic_adapter = type { %struct.qlcnic_npar_info*, %struct.TYPE_2__*, i64 }
%struct.qlcnic_npar_info = type { i32, i8*, i32, i32, i8*, i32, i32 }
%struct.TYPE_2__ = type { i64 }
%struct.qlcnic_esw_func_cfg = type { i32, i8*, i32, i32, i8*, i32, i32 }

@BIT_0 = common dso_local global i8* null, align 8
@BIT_1 = common dso_local global i32 0, align 4
@BIT_2 = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @qlcnic_set_default_offload_settings(%struct.qlcnic_adapter* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.qlcnic_adapter*, align 8
  %4 = alloca %struct.qlcnic_esw_func_cfg, align 8
  %5 = alloca %struct.qlcnic_npar_info*, align 8
  %6 = alloca i64, align 8
  store %struct.qlcnic_adapter* %0, %struct.qlcnic_adapter** %3, align 8
  %7 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %8 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %7, i32 0, i32 2
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %94

12:                                               ; preds = %1
  store i64 0, i64* %6, align 8
  br label %13

13:                                               ; preds = %90, %12
  %14 = load i64, i64* %6, align 8
  %15 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %16 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %15, i32 0, i32 1
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp ult i64 %14, %19
  br i1 %20, label %21, label %93

21:                                               ; preds = %13
  %22 = call i32 @memset(%struct.qlcnic_esw_func_cfg* %4, i32 0, i32 40)
  %23 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %24 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %23, i32 0, i32 0
  %25 = load %struct.qlcnic_npar_info*, %struct.qlcnic_npar_info** %24, align 8
  %26 = load i64, i64* %6, align 8
  %27 = getelementptr inbounds %struct.qlcnic_npar_info, %struct.qlcnic_npar_info* %25, i64 %26
  %28 = getelementptr inbounds %struct.qlcnic_npar_info, %struct.qlcnic_npar_info* %27, i32 0, i32 6
  %29 = load i32, i32* %28, align 4
  %30 = getelementptr inbounds %struct.qlcnic_esw_func_cfg, %struct.qlcnic_esw_func_cfg* %4, i32 0, i32 6
  store i32 %29, i32* %30, align 4
  %31 = load i8*, i8** @BIT_0, align 8
  %32 = getelementptr inbounds %struct.qlcnic_esw_func_cfg, %struct.qlcnic_esw_func_cfg* %4, i32 0, i32 4
  store i8* %31, i8** %32, align 8
  %33 = load i8*, i8** @BIT_0, align 8
  %34 = getelementptr inbounds %struct.qlcnic_esw_func_cfg, %struct.qlcnic_esw_func_cfg* %4, i32 0, i32 1
  store i8* %33, i8** %34, align 8
  %35 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %36 = call i64 @qlcnic_82xx_check(%struct.qlcnic_adapter* %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %53

38:                                               ; preds = %21
  %39 = load i8*, i8** @BIT_0, align 8
  %40 = ptrtoint i8* %39 to i32
  %41 = getelementptr inbounds %struct.qlcnic_esw_func_cfg, %struct.qlcnic_esw_func_cfg* %4, i32 0, i32 0
  store i32 %40, i32* %41, align 8
  %42 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %43 = call i64 @QLCNIC_IS_TSO_CAPABLE(%struct.qlcnic_adapter* %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %52

45:                                               ; preds = %38
  %46 = load i32, i32* @BIT_1, align 4
  %47 = load i32, i32* @BIT_2, align 4
  %48 = or i32 %46, %47
  %49 = getelementptr inbounds %struct.qlcnic_esw_func_cfg, %struct.qlcnic_esw_func_cfg* %4, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = or i32 %50, %48
  store i32 %51, i32* %49, align 8
  br label %52

52:                                               ; preds = %45, %38
  br label %53

53:                                               ; preds = %52, %21
  %54 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %55 = call i64 @qlcnic_config_switch_port(%struct.qlcnic_adapter* %54, %struct.qlcnic_esw_func_cfg* %4)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %60

57:                                               ; preds = %53
  %58 = load i32, i32* @EIO, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %2, align 4
  br label %94

60:                                               ; preds = %53
  %61 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %62 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %61, i32 0, i32 0
  %63 = load %struct.qlcnic_npar_info*, %struct.qlcnic_npar_info** %62, align 8
  %64 = load i64, i64* %6, align 8
  %65 = getelementptr inbounds %struct.qlcnic_npar_info, %struct.qlcnic_npar_info* %63, i64 %64
  store %struct.qlcnic_npar_info* %65, %struct.qlcnic_npar_info** %5, align 8
  %66 = getelementptr inbounds %struct.qlcnic_esw_func_cfg, %struct.qlcnic_esw_func_cfg* %4, i32 0, i32 5
  %67 = load i32, i32* %66, align 8
  %68 = load %struct.qlcnic_npar_info*, %struct.qlcnic_npar_info** %5, align 8
  %69 = getelementptr inbounds %struct.qlcnic_npar_info, %struct.qlcnic_npar_info* %68, i32 0, i32 5
  store i32 %67, i32* %69, align 8
  %70 = getelementptr inbounds %struct.qlcnic_esw_func_cfg, %struct.qlcnic_esw_func_cfg* %4, i32 0, i32 4
  %71 = load i8*, i8** %70, align 8
  %72 = load %struct.qlcnic_npar_info*, %struct.qlcnic_npar_info** %5, align 8
  %73 = getelementptr inbounds %struct.qlcnic_npar_info, %struct.qlcnic_npar_info* %72, i32 0, i32 4
  store i8* %71, i8** %73, align 8
  %74 = getelementptr inbounds %struct.qlcnic_esw_func_cfg, %struct.qlcnic_esw_func_cfg* %4, i32 0, i32 3
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.qlcnic_npar_info*, %struct.qlcnic_npar_info** %5, align 8
  %77 = getelementptr inbounds %struct.qlcnic_npar_info, %struct.qlcnic_npar_info* %76, i32 0, i32 3
  store i32 %75, i32* %77, align 4
  %78 = getelementptr inbounds %struct.qlcnic_esw_func_cfg, %struct.qlcnic_esw_func_cfg* %4, i32 0, i32 2
  %79 = load i32, i32* %78, align 8
  %80 = load %struct.qlcnic_npar_info*, %struct.qlcnic_npar_info** %5, align 8
  %81 = getelementptr inbounds %struct.qlcnic_npar_info, %struct.qlcnic_npar_info* %80, i32 0, i32 2
  store i32 %79, i32* %81, align 8
  %82 = getelementptr inbounds %struct.qlcnic_esw_func_cfg, %struct.qlcnic_esw_func_cfg* %4, i32 0, i32 1
  %83 = load i8*, i8** %82, align 8
  %84 = load %struct.qlcnic_npar_info*, %struct.qlcnic_npar_info** %5, align 8
  %85 = getelementptr inbounds %struct.qlcnic_npar_info, %struct.qlcnic_npar_info* %84, i32 0, i32 1
  store i8* %83, i8** %85, align 8
  %86 = getelementptr inbounds %struct.qlcnic_esw_func_cfg, %struct.qlcnic_esw_func_cfg* %4, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = load %struct.qlcnic_npar_info*, %struct.qlcnic_npar_info** %5, align 8
  %89 = getelementptr inbounds %struct.qlcnic_npar_info, %struct.qlcnic_npar_info* %88, i32 0, i32 0
  store i32 %87, i32* %89, align 8
  br label %90

90:                                               ; preds = %60
  %91 = load i64, i64* %6, align 8
  %92 = add i64 %91, 1
  store i64 %92, i64* %6, align 8
  br label %13

93:                                               ; preds = %13
  store i32 0, i32* %2, align 4
  br label %94

94:                                               ; preds = %93, %57, %11
  %95 = load i32, i32* %2, align 4
  ret i32 %95
}

declare dso_local i32 @memset(%struct.qlcnic_esw_func_cfg*, i32, i32) #1

declare dso_local i64 @qlcnic_82xx_check(%struct.qlcnic_adapter*) #1

declare dso_local i64 @QLCNIC_IS_TSO_CAPABLE(%struct.qlcnic_adapter*) #1

declare dso_local i64 @qlcnic_config_switch_port(%struct.qlcnic_adapter*, %struct.qlcnic_esw_func_cfg*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
