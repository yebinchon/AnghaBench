; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/pci/pcie/aer/extr_aerdrv_core.c_aer_process_err_devices.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/pci/pcie/aer/extr_aerdrv_core.c_aer_process_err_devices.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pcie_device = type { i32 }
%struct.aer_err_info = type { i32, i64* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pcie_device*, %struct.aer_err_info*)* @aer_process_err_devices to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @aer_process_err_devices(%struct.pcie_device* %0, %struct.aer_err_info* %1) #0 {
  %3 = alloca %struct.pcie_device*, align 8
  %4 = alloca %struct.aer_err_info*, align 8
  %5 = alloca i32, align 4
  store %struct.pcie_device* %0, %struct.pcie_device** %3, align 8
  store %struct.aer_err_info* %1, %struct.aer_err_info** %4, align 8
  store i32 0, i32* %5, align 4
  br label %6

6:                                                ; preds = %45, %2
  %7 = load i32, i32* %5, align 4
  %8 = load %struct.aer_err_info*, %struct.aer_err_info** %4, align 8
  %9 = getelementptr inbounds %struct.aer_err_info, %struct.aer_err_info* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = icmp slt i32 %7, %10
  br i1 %11, label %12, label %21

12:                                               ; preds = %6
  %13 = load %struct.aer_err_info*, %struct.aer_err_info** %4, align 8
  %14 = getelementptr inbounds %struct.aer_err_info, %struct.aer_err_info* %13, i32 0, i32 1
  %15 = load i64*, i64** %14, align 8
  %16 = load i32, i32* %5, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds i64, i64* %15, i64 %17
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br label %21

21:                                               ; preds = %12, %6
  %22 = phi i1 [ false, %6 ], [ %20, %12 ]
  br i1 %22, label %23, label %48

23:                                               ; preds = %21
  %24 = load %struct.aer_err_info*, %struct.aer_err_info** %4, align 8
  %25 = getelementptr inbounds %struct.aer_err_info, %struct.aer_err_info* %24, i32 0, i32 1
  %26 = load i64*, i64** %25, align 8
  %27 = load i32, i32* %5, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i64, i64* %26, i64 %28
  %30 = load i64, i64* %29, align 8
  %31 = load %struct.aer_err_info*, %struct.aer_err_info** %4, align 8
  %32 = call i64 @get_device_error_info(i64 %30, %struct.aer_err_info* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %44

34:                                               ; preds = %23
  %35 = load %struct.aer_err_info*, %struct.aer_err_info** %4, align 8
  %36 = getelementptr inbounds %struct.aer_err_info, %struct.aer_err_info* %35, i32 0, i32 1
  %37 = load i64*, i64** %36, align 8
  %38 = load i32, i32* %5, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i64, i64* %37, i64 %39
  %41 = load i64, i64* %40, align 8
  %42 = load %struct.aer_err_info*, %struct.aer_err_info** %4, align 8
  %43 = call i32 @aer_print_error(i64 %41, %struct.aer_err_info* %42)
  br label %44

44:                                               ; preds = %34, %23
  br label %45

45:                                               ; preds = %44
  %46 = load i32, i32* %5, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %5, align 4
  br label %6

48:                                               ; preds = %21
  store i32 0, i32* %5, align 4
  br label %49

49:                                               ; preds = %89, %48
  %50 = load i32, i32* %5, align 4
  %51 = load %struct.aer_err_info*, %struct.aer_err_info** %4, align 8
  %52 = getelementptr inbounds %struct.aer_err_info, %struct.aer_err_info* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = icmp slt i32 %50, %53
  br i1 %54, label %55, label %64

55:                                               ; preds = %49
  %56 = load %struct.aer_err_info*, %struct.aer_err_info** %4, align 8
  %57 = getelementptr inbounds %struct.aer_err_info, %struct.aer_err_info* %56, i32 0, i32 1
  %58 = load i64*, i64** %57, align 8
  %59 = load i32, i32* %5, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i64, i64* %58, i64 %60
  %62 = load i64, i64* %61, align 8
  %63 = icmp ne i64 %62, 0
  br label %64

64:                                               ; preds = %55, %49
  %65 = phi i1 [ false, %49 ], [ %63, %55 ]
  br i1 %65, label %66, label %92

66:                                               ; preds = %64
  %67 = load %struct.aer_err_info*, %struct.aer_err_info** %4, align 8
  %68 = getelementptr inbounds %struct.aer_err_info, %struct.aer_err_info* %67, i32 0, i32 1
  %69 = load i64*, i64** %68, align 8
  %70 = load i32, i32* %5, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i64, i64* %69, i64 %71
  %73 = load i64, i64* %72, align 8
  %74 = load %struct.aer_err_info*, %struct.aer_err_info** %4, align 8
  %75 = call i64 @get_device_error_info(i64 %73, %struct.aer_err_info* %74)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %88

77:                                               ; preds = %66
  %78 = load %struct.pcie_device*, %struct.pcie_device** %3, align 8
  %79 = load %struct.aer_err_info*, %struct.aer_err_info** %4, align 8
  %80 = getelementptr inbounds %struct.aer_err_info, %struct.aer_err_info* %79, i32 0, i32 1
  %81 = load i64*, i64** %80, align 8
  %82 = load i32, i32* %5, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i64, i64* %81, i64 %83
  %85 = load i64, i64* %84, align 8
  %86 = load %struct.aer_err_info*, %struct.aer_err_info** %4, align 8
  %87 = call i32 @handle_error_source(%struct.pcie_device* %78, i64 %85, %struct.aer_err_info* %86)
  br label %88

88:                                               ; preds = %77, %66
  br label %89

89:                                               ; preds = %88
  %90 = load i32, i32* %5, align 4
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* %5, align 4
  br label %49

92:                                               ; preds = %64
  ret void
}

declare dso_local i64 @get_device_error_info(i64, %struct.aer_err_info*) #1

declare dso_local i32 @aer_print_error(i64, %struct.aer_err_info*) #1

declare dso_local i32 @handle_error_source(%struct.pcie_device*, i64, %struct.aer_err_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
