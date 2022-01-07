; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/platform/x86/extr_asus_acpi.c_asus_hotk_remove_fs.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/platform/x86/extr_asus_acpi.c_asus_hotk_remove_fs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.acpi_device = type { i32 }

@PROC_INFO = common dso_local global i32 0, align 4
@hotk = common dso_local global %struct.TYPE_4__* null, align 8
@PROC_WLED = common dso_local global i32 0, align 4
@PROC_MLED = common dso_local global i32 0, align 4
@PROC_TLED = common dso_local global i32 0, align 4
@PROC_LEDD = common dso_local global i32 0, align 4
@PROC_BT = common dso_local global i32 0, align 4
@PROC_LCD = common dso_local global i32 0, align 4
@PROC_BRN = common dso_local global i32 0, align 4
@PROC_DISP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.acpi_device*)* @asus_hotk_remove_fs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @asus_hotk_remove_fs(%struct.acpi_device* %0) #0 {
  %2 = alloca %struct.acpi_device*, align 8
  store %struct.acpi_device* %0, %struct.acpi_device** %2, align 8
  %3 = load %struct.acpi_device*, %struct.acpi_device** %2, align 8
  %4 = call i64 @acpi_device_dir(%struct.acpi_device* %3)
  %5 = icmp ne i64 %4, 0
  br i1 %5, label %6, label %135

6:                                                ; preds = %1
  %7 = load i32, i32* @PROC_INFO, align 4
  %8 = load %struct.acpi_device*, %struct.acpi_device** %2, align 8
  %9 = call i64 @acpi_device_dir(%struct.acpi_device* %8)
  %10 = call i32 @remove_proc_entry(i32 %7, i64 %9)
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** @hotk, align 8
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 11
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %22

17:                                               ; preds = %6
  %18 = load i32, i32* @PROC_WLED, align 4
  %19 = load %struct.acpi_device*, %struct.acpi_device** %2, align 8
  %20 = call i64 @acpi_device_dir(%struct.acpi_device* %19)
  %21 = call i32 @remove_proc_entry(i32 %18, i64 %20)
  br label %22

22:                                               ; preds = %17, %6
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** @hotk, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 10
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %34

29:                                               ; preds = %22
  %30 = load i32, i32* @PROC_MLED, align 4
  %31 = load %struct.acpi_device*, %struct.acpi_device** %2, align 8
  %32 = call i64 @acpi_device_dir(%struct.acpi_device* %31)
  %33 = call i32 @remove_proc_entry(i32 %30, i64 %32)
  br label %34

34:                                               ; preds = %29, %22
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** @hotk, align 8
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 9
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %46

41:                                               ; preds = %34
  %42 = load i32, i32* @PROC_TLED, align 4
  %43 = load %struct.acpi_device*, %struct.acpi_device** %2, align 8
  %44 = call i64 @acpi_device_dir(%struct.acpi_device* %43)
  %45 = call i32 @remove_proc_entry(i32 %42, i64 %44)
  br label %46

46:                                               ; preds = %41, %34
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** @hotk, align 8
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 0
  %49 = load %struct.TYPE_3__*, %struct.TYPE_3__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 8
  %51 = load i64, i64* %50, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %58

53:                                               ; preds = %46
  %54 = load i32, i32* @PROC_LEDD, align 4
  %55 = load %struct.acpi_device*, %struct.acpi_device** %2, align 8
  %56 = call i64 @acpi_device_dir(%struct.acpi_device* %55)
  %57 = call i32 @remove_proc_entry(i32 %54, i64 %56)
  br label %58

58:                                               ; preds = %53, %46
  %59 = load %struct.TYPE_4__*, %struct.TYPE_4__** @hotk, align 8
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 0
  %61 = load %struct.TYPE_3__*, %struct.TYPE_3__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i32 0, i32 7
  %63 = load i64, i64* %62, align 8
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %70

65:                                               ; preds = %58
  %66 = load i32, i32* @PROC_BT, align 4
  %67 = load %struct.acpi_device*, %struct.acpi_device** %2, align 8
  %68 = call i64 @acpi_device_dir(%struct.acpi_device* %67)
  %69 = call i32 @remove_proc_entry(i32 %66, i64 %68)
  br label %70

70:                                               ; preds = %65, %58
  %71 = load %struct.TYPE_4__*, %struct.TYPE_4__** @hotk, align 8
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 0
  %73 = load %struct.TYPE_3__*, %struct.TYPE_3__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %73, i32 0, i32 6
  %75 = load i64, i64* %74, align 8
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %89

77:                                               ; preds = %70
  %78 = load %struct.TYPE_4__*, %struct.TYPE_4__** @hotk, align 8
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 0
  %80 = load %struct.TYPE_3__*, %struct.TYPE_3__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %80, i32 0, i32 5
  %82 = load i64, i64* %81, align 8
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %89

84:                                               ; preds = %77
  %85 = load i32, i32* @PROC_LCD, align 4
  %86 = load %struct.acpi_device*, %struct.acpi_device** %2, align 8
  %87 = call i64 @acpi_device_dir(%struct.acpi_device* %86)
  %88 = call i32 @remove_proc_entry(i32 %85, i64 %87)
  br label %89

89:                                               ; preds = %84, %77, %70
  %90 = load %struct.TYPE_4__*, %struct.TYPE_4__** @hotk, align 8
  %91 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %90, i32 0, i32 0
  %92 = load %struct.TYPE_3__*, %struct.TYPE_3__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %92, i32 0, i32 4
  %94 = load i64, i64* %93, align 8
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %103

96:                                               ; preds = %89
  %97 = load %struct.TYPE_4__*, %struct.TYPE_4__** @hotk, align 8
  %98 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %97, i32 0, i32 0
  %99 = load %struct.TYPE_3__*, %struct.TYPE_3__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %99, i32 0, i32 3
  %101 = load i64, i64* %100, align 8
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %117, label %103

103:                                              ; preds = %96, %89
  %104 = load %struct.TYPE_4__*, %struct.TYPE_4__** @hotk, align 8
  %105 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %104, i32 0, i32 0
  %106 = load %struct.TYPE_3__*, %struct.TYPE_3__** %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %106, i32 0, i32 2
  %108 = load i64, i64* %107, align 8
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %122

110:                                              ; preds = %103
  %111 = load %struct.TYPE_4__*, %struct.TYPE_4__** @hotk, align 8
  %112 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %111, i32 0, i32 0
  %113 = load %struct.TYPE_3__*, %struct.TYPE_3__** %112, align 8
  %114 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %113, i32 0, i32 1
  %115 = load i64, i64* %114, align 8
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %122

117:                                              ; preds = %110, %96
  %118 = load i32, i32* @PROC_BRN, align 4
  %119 = load %struct.acpi_device*, %struct.acpi_device** %2, align 8
  %120 = call i64 @acpi_device_dir(%struct.acpi_device* %119)
  %121 = call i32 @remove_proc_entry(i32 %118, i64 %120)
  br label %122

122:                                              ; preds = %117, %110, %103
  %123 = load %struct.TYPE_4__*, %struct.TYPE_4__** @hotk, align 8
  %124 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %123, i32 0, i32 0
  %125 = load %struct.TYPE_3__*, %struct.TYPE_3__** %124, align 8
  %126 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %125, i32 0, i32 0
  %127 = load i64, i64* %126, align 8
  %128 = icmp ne i64 %127, 0
  br i1 %128, label %129, label %134

129:                                              ; preds = %122
  %130 = load i32, i32* @PROC_DISP, align 4
  %131 = load %struct.acpi_device*, %struct.acpi_device** %2, align 8
  %132 = call i64 @acpi_device_dir(%struct.acpi_device* %131)
  %133 = call i32 @remove_proc_entry(i32 %130, i64 %132)
  br label %134

134:                                              ; preds = %129, %122
  br label %135

135:                                              ; preds = %134, %1
  ret i32 0
}

declare dso_local i64 @acpi_device_dir(%struct.acpi_device*) #1

declare dso_local i32 @remove_proc_entry(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
