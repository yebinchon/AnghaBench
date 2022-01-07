; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/extr_power.c_acpi_power_transition.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/extr_power.c_acpi_power_transition.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_device = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.acpi_handle_list }
%struct.acpi_handle_list = type { i32, i32* }

@ACPI_STATE_D0 = common dso_local global i32 0, align 4
@ACPI_STATE_D3 = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@ACPI_STATE_UNKNOWN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @acpi_power_transition(%struct.acpi_device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.acpi_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.acpi_handle_list*, align 8
  %8 = alloca %struct.acpi_handle_list*, align 8
  %9 = alloca i32, align 4
  store %struct.acpi_device* %0, %struct.acpi_device** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %6, align 4
  store %struct.acpi_handle_list* null, %struct.acpi_handle_list** %7, align 8
  store %struct.acpi_handle_list* null, %struct.acpi_handle_list** %8, align 8
  store i32 0, i32* %9, align 4
  %10 = load %struct.acpi_device*, %struct.acpi_device** %4, align 8
  %11 = icmp ne %struct.acpi_device* %10, null
  br i1 %11, label %12, label %20

12:                                               ; preds = %2
  %13 = load i32, i32* %5, align 4
  %14 = load i32, i32* @ACPI_STATE_D0, align 4
  %15 = icmp slt i32 %13, %14
  br i1 %15, label %20, label %16

16:                                               ; preds = %12
  %17 = load i32, i32* %5, align 4
  %18 = load i32, i32* @ACPI_STATE_D3, align 4
  %19 = icmp sgt i32 %17, %18
  br i1 %19, label %20, label %23

20:                                               ; preds = %16, %12, %2
  %21 = load i32, i32* @EINVAL, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %3, align 4
  br label %131

23:                                               ; preds = %16
  %24 = load %struct.acpi_device*, %struct.acpi_device** %4, align 8
  %25 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* @ACPI_STATE_D0, align 4
  %29 = icmp slt i32 %27, %28
  br i1 %29, label %37, label %30

30:                                               ; preds = %23
  %31 = load %struct.acpi_device*, %struct.acpi_device** %4, align 8
  %32 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = load i32, i32* @ACPI_STATE_D3, align 4
  %36 = icmp sgt i32 %34, %35
  br i1 %36, label %37, label %40

37:                                               ; preds = %30, %23
  %38 = load i32, i32* @ENODEV, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %3, align 4
  br label %131

40:                                               ; preds = %30
  %41 = load %struct.acpi_device*, %struct.acpi_device** %4, align 8
  %42 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 1
  %44 = load %struct.TYPE_3__*, %struct.TYPE_3__** %43, align 8
  %45 = load %struct.acpi_device*, %struct.acpi_device** %4, align 8
  %46 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i64 %49
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 0
  store %struct.acpi_handle_list* %51, %struct.acpi_handle_list** %7, align 8
  %52 = load %struct.acpi_device*, %struct.acpi_device** %4, align 8
  %53 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 1
  %55 = load %struct.TYPE_3__*, %struct.TYPE_3__** %54, align 8
  %56 = load i32, i32* %5, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i64 %57
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 0
  store %struct.acpi_handle_list* %59, %struct.acpi_handle_list** %8, align 8
  store i32 0, i32* %9, align 4
  br label %60

60:                                               ; preds = %80, %40
  %61 = load i32, i32* %9, align 4
  %62 = load %struct.acpi_handle_list*, %struct.acpi_handle_list** %8, align 8
  %63 = getelementptr inbounds %struct.acpi_handle_list, %struct.acpi_handle_list* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = icmp slt i32 %61, %64
  br i1 %65, label %66, label %83

66:                                               ; preds = %60
  %67 = load %struct.acpi_handle_list*, %struct.acpi_handle_list** %8, align 8
  %68 = getelementptr inbounds %struct.acpi_handle_list, %struct.acpi_handle_list* %67, i32 0, i32 1
  %69 = load i32*, i32** %68, align 8
  %70 = load i32, i32* %9, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i32, i32* %69, i64 %71
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.acpi_device*, %struct.acpi_device** %4, align 8
  %75 = call i32 @acpi_power_on(i32 %73, %struct.acpi_device* %74)
  store i32 %75, i32* %6, align 4
  %76 = load i32, i32* %6, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %79

78:                                               ; preds = %66
  br label %116

79:                                               ; preds = %66
  br label %80

80:                                               ; preds = %79
  %81 = load i32, i32* %9, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %9, align 4
  br label %60

83:                                               ; preds = %60
  %84 = load %struct.acpi_device*, %struct.acpi_device** %4, align 8
  %85 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = load i32, i32* %5, align 4
  %89 = icmp eq i32 %87, %88
  br i1 %89, label %90, label %91

90:                                               ; preds = %83
  br label %116

91:                                               ; preds = %83
  store i32 0, i32* %9, align 4
  br label %92

92:                                               ; preds = %112, %91
  %93 = load i32, i32* %9, align 4
  %94 = load %struct.acpi_handle_list*, %struct.acpi_handle_list** %7, align 8
  %95 = getelementptr inbounds %struct.acpi_handle_list, %struct.acpi_handle_list* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = icmp slt i32 %93, %96
  br i1 %97, label %98, label %115

98:                                               ; preds = %92
  %99 = load %struct.acpi_handle_list*, %struct.acpi_handle_list** %7, align 8
  %100 = getelementptr inbounds %struct.acpi_handle_list, %struct.acpi_handle_list* %99, i32 0, i32 1
  %101 = load i32*, i32** %100, align 8
  %102 = load i32, i32* %9, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds i32, i32* %101, i64 %103
  %105 = load i32, i32* %104, align 4
  %106 = load %struct.acpi_device*, %struct.acpi_device** %4, align 8
  %107 = call i32 @acpi_power_off_device(i32 %105, %struct.acpi_device* %106)
  store i32 %107, i32* %6, align 4
  %108 = load i32, i32* %6, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %111

110:                                              ; preds = %98
  br label %116

111:                                              ; preds = %98
  br label %112

112:                                              ; preds = %111
  %113 = load i32, i32* %9, align 4
  %114 = add nsw i32 %113, 1
  store i32 %114, i32* %9, align 4
  br label %92

115:                                              ; preds = %92
  br label %116

116:                                              ; preds = %115, %110, %90, %78
  %117 = load i32, i32* %6, align 4
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %124

119:                                              ; preds = %116
  %120 = load i32, i32* @ACPI_STATE_UNKNOWN, align 4
  %121 = load %struct.acpi_device*, %struct.acpi_device** %4, align 8
  %122 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %121, i32 0, i32 0
  %123 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %122, i32 0, i32 0
  store i32 %120, i32* %123, align 8
  br label %129

124:                                              ; preds = %116
  %125 = load i32, i32* %5, align 4
  %126 = load %struct.acpi_device*, %struct.acpi_device** %4, align 8
  %127 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %126, i32 0, i32 0
  %128 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %127, i32 0, i32 0
  store i32 %125, i32* %128, align 8
  br label %129

129:                                              ; preds = %124, %119
  %130 = load i32, i32* %6, align 4
  store i32 %130, i32* %3, align 4
  br label %131

131:                                              ; preds = %129, %37, %20
  %132 = load i32, i32* %3, align 4
  ret i32 %132
}

declare dso_local i32 @acpi_power_on(i32, %struct.acpi_device*) #1

declare dso_local i32 @acpi_power_off_device(i32, %struct.acpi_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
