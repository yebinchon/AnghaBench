; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/platform/x86/extr_eeepc-laptop.c_eeepc_hotk_notify.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/platform/x86/extr_eeepc-laptop.c_eeepc_hotk_notify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.key_entry = type { i32, i32 }
%struct.TYPE_5__ = type { i64, %struct.TYPE_6__*, i32* }
%struct.TYPE_6__ = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.acpi_device = type { i32 }

@eeepc_hotk_notify.key = internal global %struct.key_entry* null, align 8
@ENODEV = common dso_local global i32 0, align 4
@ehotk = common dso_local global %struct.TYPE_5__* null, align 8
@ACPI_MAX_SYS_NOTIFY = common dso_local global i32 0, align 4
@NOTIFY_BRN_MIN = common dso_local global i32 0, align 4
@NOTIFY_BRN_MAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.acpi_device*, i32)* @eeepc_hotk_notify to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @eeepc_hotk_notify(%struct.acpi_device* %0, i32 %1) #0 {
  %3 = alloca %struct.acpi_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.acpi_device* %0, %struct.acpi_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load i32, i32* @ENODEV, align 4
  %8 = sub nsw i32 0, %7
  store i32 %8, i32* %6, align 4
  %9 = load %struct.TYPE_5__*, %struct.TYPE_5__** @ehotk, align 8
  %10 = icmp ne %struct.TYPE_5__* %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %2
  br label %128

12:                                               ; preds = %2
  %13 = load i32, i32* %4, align 4
  %14 = load i32, i32* @ACPI_MAX_SYS_NOTIFY, align 4
  %15 = icmp sgt i32 %13, %14
  br i1 %15, label %16, label %17

16:                                               ; preds = %12
  br label %128

17:                                               ; preds = %12
  %18 = load i32, i32* %4, align 4
  %19 = load i32, i32* @NOTIFY_BRN_MIN, align 4
  %20 = icmp sge i32 %18, %19
  br i1 %20, label %21, label %27

21:                                               ; preds = %17
  %22 = load i32, i32* %4, align 4
  %23 = load i32, i32* @NOTIFY_BRN_MAX, align 4
  %24 = icmp sle i32 %22, %23
  br i1 %24, label %25, label %27

25:                                               ; preds = %21
  %26 = call i32 (...) @notify_brn()
  store i32 %26, i32* %6, align 4
  br label %27

27:                                               ; preds = %25, %21, %17
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** @ehotk, align 8
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 2
  %30 = load i32*, i32** %29, align 8
  %31 = load i32, i32* %4, align 4
  %32 = srem i32 %31, 128
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i32, i32* %30, i64 %33
  %35 = load i32, i32* %34, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %34, align 4
  %37 = sext i32 %35 to i64
  store i64 %37, i64* %5, align 8
  %38 = load %struct.TYPE_5__*, %struct.TYPE_5__** @ehotk, align 8
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 1
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** %39, align 8
  %41 = load i32, i32* %4, align 4
  %42 = load i64, i64* %5, align 8
  %43 = call i32 @acpi_bus_generate_proc_event(%struct.TYPE_6__* %40, i32 %41, i64 %42)
  %44 = load %struct.TYPE_5__*, %struct.TYPE_5__** @ehotk, align 8
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 1
  %46 = load %struct.TYPE_6__*, %struct.TYPE_6__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.TYPE_5__*, %struct.TYPE_5__** @ehotk, align 8
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 1
  %52 = load %struct.TYPE_6__*, %struct.TYPE_6__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 0
  %54 = call i32 @dev_name(i32* %53)
  %55 = load i32, i32* %4, align 4
  %56 = load i64, i64* %5, align 8
  %57 = call i32 @acpi_bus_generate_netlink_event(i32 %49, i32 %54, i32 %55, i64 %56)
  %58 = load %struct.TYPE_5__*, %struct.TYPE_5__** @ehotk, align 8
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %128

62:                                               ; preds = %27
  %63 = load i32, i32* %6, align 4
  %64 = load i32, i32* @ENODEV, align 4
  %65 = sub nsw i32 0, %64
  %66 = icmp ne i32 %63, %65
  br i1 %66, label %67, label %94

67:                                               ; preds = %62
  %68 = load i32, i32* %6, align 4
  %69 = icmp slt i32 %68, 0
  br i1 %69, label %70, label %72

70:                                               ; preds = %67
  %71 = load i32, i32* %4, align 4
  store i32 %71, i32* %6, align 4
  br label %76

72:                                               ; preds = %67
  %73 = load i32, i32* @NOTIFY_BRN_MIN, align 4
  %74 = load i32, i32* %6, align 4
  %75 = add nsw i32 %74, %73
  store i32 %75, i32* %6, align 4
  br label %76

76:                                               ; preds = %72, %70
  %77 = load i32, i32* %4, align 4
  %78 = load i32, i32* %6, align 4
  %79 = icmp slt i32 %77, %78
  br i1 %79, label %80, label %82

80:                                               ; preds = %76
  %81 = load i32, i32* @NOTIFY_BRN_MIN, align 4
  store i32 %81, i32* %4, align 4
  br label %93

82:                                               ; preds = %76
  %83 = load i32, i32* %4, align 4
  %84 = load i32, i32* %6, align 4
  %85 = icmp sgt i32 %83, %84
  br i1 %85, label %86, label %89

86:                                               ; preds = %82
  %87 = load i32, i32* @NOTIFY_BRN_MIN, align 4
  %88 = add nsw i32 %87, 2
  store i32 %88, i32* %4, align 4
  br label %92

89:                                               ; preds = %82
  %90 = load i32, i32* @NOTIFY_BRN_MIN, align 4
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* %4, align 4
  br label %92

92:                                               ; preds = %89, %86
  br label %93

93:                                               ; preds = %92, %80
  br label %94

94:                                               ; preds = %93, %62
  %95 = load i32, i32* %4, align 4
  %96 = call %struct.key_entry* @eepc_get_entry_by_scancode(i32 %95)
  store %struct.key_entry* %96, %struct.key_entry** @eeepc_hotk_notify.key, align 8
  %97 = load %struct.key_entry*, %struct.key_entry** @eeepc_hotk_notify.key, align 8
  %98 = icmp ne %struct.key_entry* %97, null
  br i1 %98, label %99, label %127

99:                                               ; preds = %94
  %100 = load %struct.key_entry*, %struct.key_entry** @eeepc_hotk_notify.key, align 8
  %101 = getelementptr inbounds %struct.key_entry, %struct.key_entry* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  switch i32 %102, label %126 [
    i32 128, label %103
  ]

103:                                              ; preds = %99
  %104 = load %struct.TYPE_5__*, %struct.TYPE_5__** @ehotk, align 8
  %105 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %104, i32 0, i32 0
  %106 = load i64, i64* %105, align 8
  %107 = load %struct.key_entry*, %struct.key_entry** @eeepc_hotk_notify.key, align 8
  %108 = getelementptr inbounds %struct.key_entry, %struct.key_entry* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 4
  %110 = call i32 @input_report_key(i64 %106, i32 %109, i32 1)
  %111 = load %struct.TYPE_5__*, %struct.TYPE_5__** @ehotk, align 8
  %112 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %111, i32 0, i32 0
  %113 = load i64, i64* %112, align 8
  %114 = call i32 @input_sync(i64 %113)
  %115 = load %struct.TYPE_5__*, %struct.TYPE_5__** @ehotk, align 8
  %116 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %115, i32 0, i32 0
  %117 = load i64, i64* %116, align 8
  %118 = load %struct.key_entry*, %struct.key_entry** @eeepc_hotk_notify.key, align 8
  %119 = getelementptr inbounds %struct.key_entry, %struct.key_entry* %118, i32 0, i32 1
  %120 = load i32, i32* %119, align 4
  %121 = call i32 @input_report_key(i64 %117, i32 %120, i32 0)
  %122 = load %struct.TYPE_5__*, %struct.TYPE_5__** @ehotk, align 8
  %123 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %122, i32 0, i32 0
  %124 = load i64, i64* %123, align 8
  %125 = call i32 @input_sync(i64 %124)
  br label %126

126:                                              ; preds = %99, %103
  br label %127

127:                                              ; preds = %126, %94
  br label %128

128:                                              ; preds = %11, %16, %127, %27
  ret void
}

declare dso_local i32 @notify_brn(...) #1

declare dso_local i32 @acpi_bus_generate_proc_event(%struct.TYPE_6__*, i32, i64) #1

declare dso_local i32 @acpi_bus_generate_netlink_event(i32, i32, i32, i64) #1

declare dso_local i32 @dev_name(i32*) #1

declare dso_local %struct.key_entry* @eepc_get_entry_by_scancode(i32) #1

declare dso_local i32 @input_report_key(i64, i32, i32) #1

declare dso_local i32 @input_sync(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
