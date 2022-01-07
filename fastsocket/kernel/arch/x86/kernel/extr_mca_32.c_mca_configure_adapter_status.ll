; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kernel/extr_mca_32.c_mca_configure_adapter_status.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kernel/extr_mca_32.c_mca_configure_adapter_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mca_device = type { i32, i32*, i64, i8* }

@MCA_ADAPTER_NONE = common dso_local global i8* null, align 8
@MCA_MAX_SLOT_NR = common dso_local global i64 0, align 8
@MCA_ADAPTER_ERROR = common dso_local global i8* null, align 8
@MCA_ADAPTER_NORMAL = common dso_local global i8* null, align 8
@MCA_ENABLED = common dso_local global i32 0, align 4
@MCA_ADAPTER_DISABLED = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mca_device*)* @mca_configure_adapter_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mca_configure_adapter_status(%struct.mca_device* %0) #0 {
  %2 = alloca %struct.mca_device*, align 8
  %3 = alloca i32, align 4
  store %struct.mca_device* %0, %struct.mca_device** %2, align 8
  %4 = load i8*, i8** @MCA_ADAPTER_NONE, align 8
  %5 = load %struct.mca_device*, %struct.mca_device** %2, align 8
  %6 = getelementptr inbounds %struct.mca_device, %struct.mca_device* %5, i32 0, i32 3
  store i8* %4, i8** %6, align 8
  %7 = load %struct.mca_device*, %struct.mca_device** %2, align 8
  %8 = getelementptr inbounds %struct.mca_device, %struct.mca_device* %7, i32 0, i32 1
  %9 = load i32*, i32** %8, align 8
  %10 = getelementptr inbounds i32, i32* %9, i64 0
  %11 = load i32, i32* %10, align 4
  %12 = load %struct.mca_device*, %struct.mca_device** %2, align 8
  %13 = getelementptr inbounds %struct.mca_device, %struct.mca_device* %12, i32 0, i32 1
  %14 = load i32*, i32** %13, align 8
  %15 = getelementptr inbounds i32, i32* %14, i64 1
  %16 = load i32, i32* %15, align 4
  %17 = shl i32 %16, 8
  %18 = add nsw i32 %11, %17
  %19 = load %struct.mca_device*, %struct.mca_device** %2, align 8
  %20 = getelementptr inbounds %struct.mca_device, %struct.mca_device* %19, i32 0, i32 0
  store i32 %18, i32* %20, align 8
  %21 = load %struct.mca_device*, %struct.mca_device** %2, align 8
  %22 = getelementptr inbounds %struct.mca_device, %struct.mca_device* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %35, label %25

25:                                               ; preds = %1
  %26 = load %struct.mca_device*, %struct.mca_device** %2, align 8
  %27 = getelementptr inbounds %struct.mca_device, %struct.mca_device* %26, i32 0, i32 2
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @MCA_MAX_SLOT_NR, align 8
  %30 = icmp slt i64 %28, %29
  br i1 %30, label %31, label %35

31:                                               ; preds = %25
  %32 = load i8*, i8** @MCA_ADAPTER_ERROR, align 8
  %33 = load %struct.mca_device*, %struct.mca_device** %2, align 8
  %34 = getelementptr inbounds %struct.mca_device, %struct.mca_device* %33, i32 0, i32 3
  store i8* %32, i8** %34, align 8
  br label %96

35:                                               ; preds = %25, %1
  %36 = load %struct.mca_device*, %struct.mca_device** %2, align 8
  %37 = getelementptr inbounds %struct.mca_device, %struct.mca_device* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = icmp ne i32 %38, 65535
  br i1 %39, label %40, label %44

40:                                               ; preds = %35
  %41 = load i8*, i8** @MCA_ADAPTER_NORMAL, align 8
  %42 = load %struct.mca_device*, %struct.mca_device** %2, align 8
  %43 = getelementptr inbounds %struct.mca_device, %struct.mca_device* %42, i32 0, i32 3
  store i8* %41, i8** %43, align 8
  br label %44

44:                                               ; preds = %40, %35
  br label %45

45:                                               ; preds = %44
  %46 = load %struct.mca_device*, %struct.mca_device** %2, align 8
  %47 = getelementptr inbounds %struct.mca_device, %struct.mca_device* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = icmp eq i32 %48, 65535
  br i1 %49, label %55, label %50

50:                                               ; preds = %45
  %51 = load %struct.mca_device*, %struct.mca_device** %2, align 8
  %52 = getelementptr inbounds %struct.mca_device, %struct.mca_device* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %55, label %83

55:                                               ; preds = %50, %45
  %56 = load %struct.mca_device*, %struct.mca_device** %2, align 8
  %57 = getelementptr inbounds %struct.mca_device, %struct.mca_device* %56, i32 0, i32 2
  %58 = load i64, i64* %57, align 8
  %59 = load i64, i64* @MCA_MAX_SLOT_NR, align 8
  %60 = icmp sge i64 %58, %59
  br i1 %60, label %61, label %83

61:                                               ; preds = %55
  store i32 2, i32* %3, align 4
  br label %62

62:                                               ; preds = %79, %61
  %63 = load i32, i32* %3, align 4
  %64 = icmp slt i32 %63, 8
  br i1 %64, label %65, label %82

65:                                               ; preds = %62
  %66 = load %struct.mca_device*, %struct.mca_device** %2, align 8
  %67 = getelementptr inbounds %struct.mca_device, %struct.mca_device* %66, i32 0, i32 1
  %68 = load i32*, i32** %67, align 8
  %69 = load i32, i32* %3, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i32, i32* %68, i64 %70
  %72 = load i32, i32* %71, align 4
  %73 = icmp ne i32 %72, 255
  br i1 %73, label %74, label %78

74:                                               ; preds = %65
  %75 = load i8*, i8** @MCA_ADAPTER_NORMAL, align 8
  %76 = load %struct.mca_device*, %struct.mca_device** %2, align 8
  %77 = getelementptr inbounds %struct.mca_device, %struct.mca_device* %76, i32 0, i32 3
  store i8* %75, i8** %77, align 8
  br label %82

78:                                               ; preds = %65
  br label %79

79:                                               ; preds = %78
  %80 = load i32, i32* %3, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %3, align 4
  br label %62

82:                                               ; preds = %74, %62
  br label %83

83:                                               ; preds = %82, %55, %50
  %84 = load %struct.mca_device*, %struct.mca_device** %2, align 8
  %85 = getelementptr inbounds %struct.mca_device, %struct.mca_device* %84, i32 0, i32 1
  %86 = load i32*, i32** %85, align 8
  %87 = getelementptr inbounds i32, i32* %86, i64 2
  %88 = load i32, i32* %87, align 4
  %89 = load i32, i32* @MCA_ENABLED, align 4
  %90 = and i32 %88, %89
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %96, label %92

92:                                               ; preds = %83
  %93 = load i8*, i8** @MCA_ADAPTER_DISABLED, align 8
  %94 = load %struct.mca_device*, %struct.mca_device** %2, align 8
  %95 = getelementptr inbounds %struct.mca_device, %struct.mca_device* %94, i32 0, i32 3
  store i8* %93, i8** %95, align 8
  br label %96

96:                                               ; preds = %31, %92, %83
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
