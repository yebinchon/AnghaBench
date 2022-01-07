; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/hid/extr_hid-core.c_hid_register_report.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/hid/extr_hid-core.c_hid_register_report.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hid_report = type { i32, i32, i32, %struct.hid_device*, i64 }
%struct.hid_device = type { %struct.hid_report_enum* }
%struct.hid_report_enum = type { i32, i32, %struct.hid_report** }

@HID_MAX_IDS = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.hid_report* (%struct.hid_device*, i32, i32)* @hid_register_report to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.hid_report* @hid_register_report(%struct.hid_device* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.hid_report*, align 8
  %5 = alloca %struct.hid_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.hid_report_enum*, align 8
  %9 = alloca %struct.hid_report*, align 8
  store %struct.hid_device* %0, %struct.hid_device** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %10 = load %struct.hid_device*, %struct.hid_device** %5, align 8
  %11 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %10, i32 0, i32 0
  %12 = load %struct.hid_report_enum*, %struct.hid_report_enum** %11, align 8
  %13 = load i32, i32* %6, align 4
  %14 = zext i32 %13 to i64
  %15 = getelementptr inbounds %struct.hid_report_enum, %struct.hid_report_enum* %12, i64 %14
  store %struct.hid_report_enum* %15, %struct.hid_report_enum** %8, align 8
  %16 = load i32, i32* %7, align 4
  %17 = load i32, i32* @HID_MAX_IDS, align 4
  %18 = icmp uge i32 %16, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %3
  store %struct.hid_report* null, %struct.hid_report** %4, align 8
  br label %73

20:                                               ; preds = %3
  %21 = load %struct.hid_report_enum*, %struct.hid_report_enum** %8, align 8
  %22 = getelementptr inbounds %struct.hid_report_enum, %struct.hid_report_enum* %21, i32 0, i32 2
  %23 = load %struct.hid_report**, %struct.hid_report*** %22, align 8
  %24 = load i32, i32* %7, align 4
  %25 = zext i32 %24 to i64
  %26 = getelementptr inbounds %struct.hid_report*, %struct.hid_report** %23, i64 %25
  %27 = load %struct.hid_report*, %struct.hid_report** %26, align 8
  %28 = icmp ne %struct.hid_report* %27, null
  br i1 %28, label %29, label %37

29:                                               ; preds = %20
  %30 = load %struct.hid_report_enum*, %struct.hid_report_enum** %8, align 8
  %31 = getelementptr inbounds %struct.hid_report_enum, %struct.hid_report_enum* %30, i32 0, i32 2
  %32 = load %struct.hid_report**, %struct.hid_report*** %31, align 8
  %33 = load i32, i32* %7, align 4
  %34 = zext i32 %33 to i64
  %35 = getelementptr inbounds %struct.hid_report*, %struct.hid_report** %32, i64 %34
  %36 = load %struct.hid_report*, %struct.hid_report** %35, align 8
  store %struct.hid_report* %36, %struct.hid_report** %4, align 8
  br label %73

37:                                               ; preds = %20
  %38 = load i32, i32* @GFP_KERNEL, align 4
  %39 = call %struct.hid_report* @kzalloc(i32 32, i32 %38)
  store %struct.hid_report* %39, %struct.hid_report** %9, align 8
  %40 = icmp ne %struct.hid_report* %39, null
  br i1 %40, label %42, label %41

41:                                               ; preds = %37
  store %struct.hid_report* null, %struct.hid_report** %4, align 8
  br label %73

42:                                               ; preds = %37
  %43 = load i32, i32* %7, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %42
  %46 = load %struct.hid_report_enum*, %struct.hid_report_enum** %8, align 8
  %47 = getelementptr inbounds %struct.hid_report_enum, %struct.hid_report_enum* %46, i32 0, i32 0
  store i32 1, i32* %47, align 8
  br label %48

48:                                               ; preds = %45, %42
  %49 = load i32, i32* %7, align 4
  %50 = load %struct.hid_report*, %struct.hid_report** %9, align 8
  %51 = getelementptr inbounds %struct.hid_report, %struct.hid_report* %50, i32 0, i32 0
  store i32 %49, i32* %51, align 8
  %52 = load i32, i32* %6, align 4
  %53 = load %struct.hid_report*, %struct.hid_report** %9, align 8
  %54 = getelementptr inbounds %struct.hid_report, %struct.hid_report* %53, i32 0, i32 1
  store i32 %52, i32* %54, align 4
  %55 = load %struct.hid_report*, %struct.hid_report** %9, align 8
  %56 = getelementptr inbounds %struct.hid_report, %struct.hid_report* %55, i32 0, i32 4
  store i64 0, i64* %56, align 8
  %57 = load %struct.hid_device*, %struct.hid_device** %5, align 8
  %58 = load %struct.hid_report*, %struct.hid_report** %9, align 8
  %59 = getelementptr inbounds %struct.hid_report, %struct.hid_report* %58, i32 0, i32 3
  store %struct.hid_device* %57, %struct.hid_device** %59, align 8
  %60 = load %struct.hid_report*, %struct.hid_report** %9, align 8
  %61 = load %struct.hid_report_enum*, %struct.hid_report_enum** %8, align 8
  %62 = getelementptr inbounds %struct.hid_report_enum, %struct.hid_report_enum* %61, i32 0, i32 2
  %63 = load %struct.hid_report**, %struct.hid_report*** %62, align 8
  %64 = load i32, i32* %7, align 4
  %65 = zext i32 %64 to i64
  %66 = getelementptr inbounds %struct.hid_report*, %struct.hid_report** %63, i64 %65
  store %struct.hid_report* %60, %struct.hid_report** %66, align 8
  %67 = load %struct.hid_report*, %struct.hid_report** %9, align 8
  %68 = getelementptr inbounds %struct.hid_report, %struct.hid_report* %67, i32 0, i32 2
  %69 = load %struct.hid_report_enum*, %struct.hid_report_enum** %8, align 8
  %70 = getelementptr inbounds %struct.hid_report_enum, %struct.hid_report_enum* %69, i32 0, i32 1
  %71 = call i32 @list_add_tail(i32* %68, i32* %70)
  %72 = load %struct.hid_report*, %struct.hid_report** %9, align 8
  store %struct.hid_report* %72, %struct.hid_report** %4, align 8
  br label %73

73:                                               ; preds = %48, %41, %29, %19
  %74 = load %struct.hid_report*, %struct.hid_report** %4, align 8
  ret %struct.hid_report* %74
}

declare dso_local %struct.hid_report* @kzalloc(i32, i32) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
