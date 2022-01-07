; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/firewire/extr_core-iso.c_fw_iso_resource_manage.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/firewire/extr_core-iso.c_fw_iso_resource_manage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fw_card = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@CSR_REGISTER_BASE = common dso_local global i64 0, align 8
@CSR_CHANNELS_AVAILABLE_HI = common dso_local global i64 0, align 8
@CSR_CHANNELS_AVAILABLE_LO = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fw_iso_resource_manage(%struct.fw_card* %0, i32 %1, i32 %2, i32* %3, i32* %4, i32 %5, i32* %6) #0 {
  %8 = alloca %struct.fw_card*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.fw_card* %0, %struct.fw_card** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32* %3, i32** %11, align 8
  store i32* %4, i32** %12, align 8
  store i32 %5, i32* %13, align 4
  store i32* %6, i32** %14, align 8
  %20 = load i32, i32* %10, align 4
  store i32 %20, i32* %15, align 4
  %21 = load i32, i32* %10, align 4
  %22 = ashr i32 %21, 32
  store i32 %22, i32* %16, align 4
  %23 = load i32, i32* @EINVAL, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %19, align 4
  %25 = load %struct.fw_card*, %struct.fw_card** %8, align 8
  %26 = getelementptr inbounds %struct.fw_card, %struct.fw_card* %25, i32 0, i32 0
  %27 = call i32 @spin_lock_irq(i32* %26)
  %28 = load %struct.fw_card*, %struct.fw_card** %8, align 8
  %29 = getelementptr inbounds %struct.fw_card, %struct.fw_card* %28, i32 0, i32 1
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  store i32 %32, i32* %17, align 4
  %33 = load %struct.fw_card*, %struct.fw_card** %8, align 8
  %34 = getelementptr inbounds %struct.fw_card, %struct.fw_card* %33, i32 0, i32 0
  %35 = call i32 @spin_unlock_irq(i32* %34)
  %36 = load i32, i32* %15, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %49

38:                                               ; preds = %7
  %39 = load %struct.fw_card*, %struct.fw_card** %8, align 8
  %40 = load i32, i32* %17, align 4
  %41 = load i32, i32* %9, align 4
  %42 = load i32, i32* %15, align 4
  %43 = load i64, i64* @CSR_REGISTER_BASE, align 8
  %44 = load i64, i64* @CSR_CHANNELS_AVAILABLE_HI, align 8
  %45 = add nsw i64 %43, %44
  %46 = load i32, i32* %13, align 4
  %47 = load i32*, i32** %14, align 8
  %48 = call i32 @manage_channel(%struct.fw_card* %39, i32 %40, i32 %41, i32 %42, i64 %45, i32 %46, i32* %47)
  store i32 %48, i32* %19, align 4
  br label %49

49:                                               ; preds = %38, %7
  %50 = load i32, i32* %16, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %72

52:                                               ; preds = %49
  %53 = load i32, i32* %19, align 4
  %54 = icmp slt i32 %53, 0
  br i1 %54, label %55, label %72

55:                                               ; preds = %52
  %56 = load %struct.fw_card*, %struct.fw_card** %8, align 8
  %57 = load i32, i32* %17, align 4
  %58 = load i32, i32* %9, align 4
  %59 = load i32, i32* %16, align 4
  %60 = load i64, i64* @CSR_REGISTER_BASE, align 8
  %61 = load i64, i64* @CSR_CHANNELS_AVAILABLE_LO, align 8
  %62 = add nsw i64 %60, %61
  %63 = load i32, i32* %13, align 4
  %64 = load i32*, i32** %14, align 8
  %65 = call i32 @manage_channel(%struct.fw_card* %56, i32 %57, i32 %58, i32 %59, i64 %62, i32 %63, i32* %64)
  store i32 %65, i32* %19, align 4
  %66 = load i32, i32* %19, align 4
  %67 = icmp sge i32 %66, 0
  br i1 %67, label %68, label %71

68:                                               ; preds = %55
  %69 = load i32, i32* %19, align 4
  %70 = add nsw i32 %69, 32
  store i32 %70, i32* %19, align 4
  br label %71

71:                                               ; preds = %68, %55
  br label %72

72:                                               ; preds = %71, %52, %49
  %73 = load i32, i32* %19, align 4
  %74 = load i32*, i32** %11, align 8
  store i32 %73, i32* %74, align 4
  %75 = load i32, i32* %13, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %85

77:                                               ; preds = %72
  %78 = load i32, i32* %10, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %85

80:                                               ; preds = %77
  %81 = load i32, i32* %19, align 4
  %82 = icmp slt i32 %81, 0
  br i1 %82, label %83, label %85

83:                                               ; preds = %80
  %84 = load i32*, i32** %12, align 8
  store i32 0, i32* %84, align 4
  br label %85

85:                                               ; preds = %83, %80, %77, %72
  %86 = load i32*, i32** %12, align 8
  %87 = load i32, i32* %86, align 4
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %89, label %90

89:                                               ; preds = %85
  br label %121

90:                                               ; preds = %85
  %91 = load %struct.fw_card*, %struct.fw_card** %8, align 8
  %92 = load i32, i32* %17, align 4
  %93 = load i32, i32* %9, align 4
  %94 = load i32*, i32** %12, align 8
  %95 = load i32, i32* %94, align 4
  %96 = load i32, i32* %13, align 4
  %97 = load i32*, i32** %14, align 8
  %98 = call i32 @manage_bandwidth(%struct.fw_card* %91, i32 %92, i32 %93, i32 %95, i32 %96, i32* %97)
  store i32 %98, i32* %18, align 4
  %99 = load i32, i32* %18, align 4
  %100 = icmp slt i32 %99, 0
  br i1 %100, label %101, label %103

101:                                              ; preds = %90
  %102 = load i32*, i32** %12, align 8
  store i32 0, i32* %102, align 4
  br label %103

103:                                              ; preds = %101, %90
  %104 = load i32, i32* %13, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %121

106:                                              ; preds = %103
  %107 = load i32, i32* %18, align 4
  %108 = icmp slt i32 %107, 0
  br i1 %108, label %109, label %121

109:                                              ; preds = %106
  %110 = load i32, i32* %19, align 4
  %111 = icmp sge i32 %110, 0
  br i1 %111, label %112, label %121

112:                                              ; preds = %109
  %113 = load %struct.fw_card*, %struct.fw_card** %8, align 8
  %114 = load i32, i32* %17, align 4
  %115 = load i32, i32* %9, align 4
  %116 = load i32, i32* %19, align 4
  %117 = load i32*, i32** %14, align 8
  %118 = call i32 @deallocate_channel(%struct.fw_card* %113, i32 %114, i32 %115, i32 %116, i32* %117)
  %119 = load i32, i32* %18, align 4
  %120 = load i32*, i32** %11, align 8
  store i32 %119, i32* %120, align 4
  br label %121

121:                                              ; preds = %89, %112, %109, %106, %103
  ret void
}

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @manage_channel(%struct.fw_card*, i32, i32, i32, i64, i32, i32*) #1

declare dso_local i32 @manage_bandwidth(%struct.fw_card*, i32, i32, i32, i32, i32*) #1

declare dso_local i32 @deallocate_channel(%struct.fw_card*, i32, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
