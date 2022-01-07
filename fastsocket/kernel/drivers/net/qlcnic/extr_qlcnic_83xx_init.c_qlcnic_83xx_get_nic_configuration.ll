; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/qlcnic/extr_qlcnic_83xx_init.c_qlcnic_83xx_get_nic_configuration.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/qlcnic/extr_qlcnic_83xx_init.c_qlcnic_83xx_get_nic_configuration.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qlcnic_adapter = type { i32, %struct.qlcnic_hardware_context* }
%struct.qlcnic_hardware_context = type { i32, i32, i32, i32, i32, i32, i32, i64, i32 }
%struct.qlcnic_info = type { i32, i32, i32, i32, i32, i32, i64 }

@EIO = common dso_local global i32 0, align 4
@__QLCNIC_SRIOV_CAPABLE = common dso_local global i32 0, align 4
@QLC_83XX_DEFAULT_MODE = common dso_local global i8* null, align 8
@BIT_23 = common dso_local global i32 0, align 4
@QLC_83XX_VIRTUAL_NIC_MODE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @qlcnic_83xx_get_nic_configuration(%struct.qlcnic_adapter* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.qlcnic_adapter*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.qlcnic_info, align 8
  %6 = alloca %struct.qlcnic_hardware_context*, align 8
  store %struct.qlcnic_adapter* %0, %struct.qlcnic_adapter** %3, align 8
  %7 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %8 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %7, i32 0, i32 1
  %9 = load %struct.qlcnic_hardware_context*, %struct.qlcnic_hardware_context** %8, align 8
  store %struct.qlcnic_hardware_context* %9, %struct.qlcnic_hardware_context** %6, align 8
  %10 = call i32 @memset(%struct.qlcnic_info* %5, i32 0, i32 32)
  %11 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %12 = load %struct.qlcnic_hardware_context*, %struct.qlcnic_hardware_context** %6, align 8
  %13 = getelementptr inbounds %struct.qlcnic_hardware_context, %struct.qlcnic_hardware_context* %12, i32 0, i32 8
  %14 = load i32, i32* %13, align 8
  %15 = call i32 @qlcnic_get_nic_info(%struct.qlcnic_adapter* %11, %struct.qlcnic_info* %5, i32 %14)
  store i32 %15, i32* %4, align 4
  %16 = load i32, i32* %4, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %1
  %19 = load i32, i32* @EIO, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %2, align 4
  br label %83

21:                                               ; preds = %1
  %22 = getelementptr inbounds %struct.qlcnic_info, %struct.qlcnic_info* %5, i32 0, i32 6
  %23 = load i64, i64* %22, align 8
  %24 = load %struct.qlcnic_hardware_context*, %struct.qlcnic_hardware_context** %6, align 8
  %25 = getelementptr inbounds %struct.qlcnic_hardware_context, %struct.qlcnic_hardware_context* %24, i32 0, i32 7
  store i64 %23, i64* %25, align 8
  %26 = getelementptr inbounds %struct.qlcnic_info, %struct.qlcnic_info* %5, i32 0, i32 5
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.qlcnic_hardware_context*, %struct.qlcnic_hardware_context** %6, align 8
  %29 = getelementptr inbounds %struct.qlcnic_hardware_context, %struct.qlcnic_hardware_context* %28, i32 0, i32 6
  store i32 %27, i32* %29, align 8
  %30 = getelementptr inbounds %struct.qlcnic_info, %struct.qlcnic_info* %5, i32 0, i32 4
  %31 = load i32, i32* %30, align 8
  %32 = load %struct.qlcnic_hardware_context*, %struct.qlcnic_hardware_context** %6, align 8
  %33 = getelementptr inbounds %struct.qlcnic_hardware_context, %struct.qlcnic_hardware_context* %32, i32 0, i32 5
  store i32 %31, i32* %33, align 4
  %34 = getelementptr inbounds %struct.qlcnic_info, %struct.qlcnic_info* %5, i32 0, i32 3
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.qlcnic_hardware_context*, %struct.qlcnic_hardware_context** %6, align 8
  %37 = getelementptr inbounds %struct.qlcnic_hardware_context, %struct.qlcnic_hardware_context* %36, i32 0, i32 4
  store i32 %35, i32* %37, align 8
  %38 = getelementptr inbounds %struct.qlcnic_info, %struct.qlcnic_info* %5, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = load %struct.qlcnic_hardware_context*, %struct.qlcnic_hardware_context** %6, align 8
  %41 = getelementptr inbounds %struct.qlcnic_hardware_context, %struct.qlcnic_hardware_context* %40, i32 0, i32 0
  store i32 %39, i32* %41, align 8
  %42 = getelementptr inbounds %struct.qlcnic_info, %struct.qlcnic_info* %5, i32 0, i32 2
  %43 = load i32, i32* %42, align 8
  %44 = load %struct.qlcnic_hardware_context*, %struct.qlcnic_hardware_context** %6, align 8
  %45 = getelementptr inbounds %struct.qlcnic_hardware_context, %struct.qlcnic_hardware_context* %44, i32 0, i32 3
  store i32 %43, i32* %45, align 4
  %46 = getelementptr inbounds %struct.qlcnic_info, %struct.qlcnic_info* %5, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.qlcnic_hardware_context*, %struct.qlcnic_hardware_context** %6, align 8
  %49 = getelementptr inbounds %struct.qlcnic_hardware_context, %struct.qlcnic_hardware_context* %48, i32 0, i32 2
  store i32 %47, i32* %49, align 8
  %50 = load i32, i32* @__QLCNIC_SRIOV_CAPABLE, align 4
  %51 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %52 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %51, i32 0, i32 0
  %53 = call i64 @test_bit(i32 %50, i32* %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %63

55:                                               ; preds = %21
  %56 = load i8*, i8** @QLC_83XX_DEFAULT_MODE, align 8
  %57 = ptrtoint i8* %56 to i32
  %58 = load %struct.qlcnic_hardware_context*, %struct.qlcnic_hardware_context** %6, align 8
  %59 = getelementptr inbounds %struct.qlcnic_hardware_context, %struct.qlcnic_hardware_context* %58, i32 0, i32 1
  store i32 %57, i32* %59, align 4
  %60 = load %struct.qlcnic_hardware_context*, %struct.qlcnic_hardware_context** %6, align 8
  %61 = getelementptr inbounds %struct.qlcnic_hardware_context, %struct.qlcnic_hardware_context* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  store i32 %62, i32* %2, align 4
  br label %83

63:                                               ; preds = %21
  %64 = load %struct.qlcnic_hardware_context*, %struct.qlcnic_hardware_context** %6, align 8
  %65 = getelementptr inbounds %struct.qlcnic_hardware_context, %struct.qlcnic_hardware_context* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = load i32, i32* @BIT_23, align 4
  %68 = and i32 %66, %67
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %74

70:                                               ; preds = %63
  %71 = load i32, i32* @QLC_83XX_VIRTUAL_NIC_MODE, align 4
  %72 = load %struct.qlcnic_hardware_context*, %struct.qlcnic_hardware_context** %6, align 8
  %73 = getelementptr inbounds %struct.qlcnic_hardware_context, %struct.qlcnic_hardware_context* %72, i32 0, i32 1
  store i32 %71, i32* %73, align 4
  br label %79

74:                                               ; preds = %63
  %75 = load i8*, i8** @QLC_83XX_DEFAULT_MODE, align 8
  %76 = ptrtoint i8* %75 to i32
  %77 = load %struct.qlcnic_hardware_context*, %struct.qlcnic_hardware_context** %6, align 8
  %78 = getelementptr inbounds %struct.qlcnic_hardware_context, %struct.qlcnic_hardware_context* %77, i32 0, i32 1
  store i32 %76, i32* %78, align 4
  br label %79

79:                                               ; preds = %74, %70
  %80 = load %struct.qlcnic_hardware_context*, %struct.qlcnic_hardware_context** %6, align 8
  %81 = getelementptr inbounds %struct.qlcnic_hardware_context, %struct.qlcnic_hardware_context* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  store i32 %82, i32* %2, align 4
  br label %83

83:                                               ; preds = %79, %55, %18
  %84 = load i32, i32* %2, align 4
  ret i32 %84
}

declare dso_local i32 @memset(%struct.qlcnic_info*, i32, i32) #1

declare dso_local i32 @qlcnic_get_nic_info(%struct.qlcnic_adapter*, %struct.qlcnic_info*, i32) #1

declare dso_local i64 @test_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
