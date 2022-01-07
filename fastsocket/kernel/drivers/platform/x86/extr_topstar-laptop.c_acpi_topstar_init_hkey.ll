; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/platform/x86/extr_topstar-laptop.c_acpi_topstar_init_hkey.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/platform/x86/extr_topstar-laptop.c_acpi_topstar_init_hkey.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tps_key_entry = type { i32, i64 }
%struct.topstar_hkey = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i8*, i8*, i32, i32, i32, i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }

@.str = private unnamed_addr constant [33 x i8] c"Unable to allocate input device\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"Topstar Laptop extra buttons\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"topstar/input0\00", align 1
@BUS_HOST = common dso_local global i32 0, align 4
@topstar_getkeycode = common dso_local global i32 0, align 4
@topstar_setkeycode = common dso_local global i32 0, align 4
@topstar_keymap = common dso_local global %struct.tps_key_entry* null, align 8
@EV_KEY = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [33 x i8] c"Unable to register input device\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.topstar_hkey*)* @acpi_topstar_init_hkey to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @acpi_topstar_init_hkey(%struct.topstar_hkey* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.topstar_hkey*, align 8
  %4 = alloca %struct.tps_key_entry*, align 8
  store %struct.topstar_hkey* %0, %struct.topstar_hkey** %3, align 8
  %5 = call %struct.TYPE_6__* (...) @input_allocate_device()
  %6 = load %struct.topstar_hkey*, %struct.topstar_hkey** %3, align 8
  %7 = getelementptr inbounds %struct.topstar_hkey, %struct.topstar_hkey* %6, i32 0, i32 0
  store %struct.TYPE_6__* %5, %struct.TYPE_6__** %7, align 8
  %8 = load %struct.topstar_hkey*, %struct.topstar_hkey** %3, align 8
  %9 = getelementptr inbounds %struct.topstar_hkey, %struct.topstar_hkey* %8, i32 0, i32 0
  %10 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %11 = icmp ne %struct.TYPE_6__* %10, null
  br i1 %11, label %16, label %12

12:                                               ; preds = %1
  %13 = call i32 @pr_err(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %14 = load i32, i32* @ENODEV, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %2, align 4
  br label %82

16:                                               ; preds = %1
  %17 = load %struct.topstar_hkey*, %struct.topstar_hkey** %3, align 8
  %18 = getelementptr inbounds %struct.topstar_hkey, %struct.topstar_hkey* %17, i32 0, i32 0
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 0
  store i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i8** %20, align 8
  %21 = load %struct.topstar_hkey*, %struct.topstar_hkey** %3, align 8
  %22 = getelementptr inbounds %struct.topstar_hkey, %struct.topstar_hkey* %21, i32 0, i32 0
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 1
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i8** %24, align 8
  %25 = load i32, i32* @BUS_HOST, align 4
  %26 = load %struct.topstar_hkey*, %struct.topstar_hkey** %3, align 8
  %27 = getelementptr inbounds %struct.topstar_hkey, %struct.topstar_hkey* %26, i32 0, i32 0
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 6
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 0
  store i32 %25, i32* %30, align 8
  %31 = load i32, i32* @topstar_getkeycode, align 4
  %32 = load %struct.topstar_hkey*, %struct.topstar_hkey** %3, align 8
  %33 = getelementptr inbounds %struct.topstar_hkey, %struct.topstar_hkey* %32, i32 0, i32 0
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 5
  store i32 %31, i32* %35, align 4
  %36 = load i32, i32* @topstar_setkeycode, align 4
  %37 = load %struct.topstar_hkey*, %struct.topstar_hkey** %3, align 8
  %38 = getelementptr inbounds %struct.topstar_hkey, %struct.topstar_hkey* %37, i32 0, i32 0
  %39 = load %struct.TYPE_6__*, %struct.TYPE_6__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 4
  store i32 %36, i32* %40, align 8
  %41 = load %struct.tps_key_entry*, %struct.tps_key_entry** @topstar_keymap, align 8
  store %struct.tps_key_entry* %41, %struct.tps_key_entry** %4, align 8
  br label %42

42:                                               ; preds = %64, %16
  %43 = load %struct.tps_key_entry*, %struct.tps_key_entry** %4, align 8
  %44 = getelementptr inbounds %struct.tps_key_entry, %struct.tps_key_entry* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %67

47:                                               ; preds = %42
  %48 = load i32, i32* @EV_KEY, align 4
  %49 = load %struct.topstar_hkey*, %struct.topstar_hkey** %3, align 8
  %50 = getelementptr inbounds %struct.topstar_hkey, %struct.topstar_hkey* %49, i32 0, i32 0
  %51 = load %struct.TYPE_6__*, %struct.TYPE_6__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 3
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @set_bit(i32 %48, i32 %53)
  %55 = load %struct.tps_key_entry*, %struct.tps_key_entry** %4, align 8
  %56 = getelementptr inbounds %struct.tps_key_entry, %struct.tps_key_entry* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = load %struct.topstar_hkey*, %struct.topstar_hkey** %3, align 8
  %59 = getelementptr inbounds %struct.topstar_hkey, %struct.topstar_hkey* %58, i32 0, i32 0
  %60 = load %struct.TYPE_6__*, %struct.TYPE_6__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 8
  %63 = call i32 @set_bit(i32 %57, i32 %62)
  br label %64

64:                                               ; preds = %47
  %65 = load %struct.tps_key_entry*, %struct.tps_key_entry** %4, align 8
  %66 = getelementptr inbounds %struct.tps_key_entry, %struct.tps_key_entry* %65, i32 1
  store %struct.tps_key_entry* %66, %struct.tps_key_entry** %4, align 8
  br label %42

67:                                               ; preds = %42
  %68 = load %struct.topstar_hkey*, %struct.topstar_hkey** %3, align 8
  %69 = getelementptr inbounds %struct.topstar_hkey, %struct.topstar_hkey* %68, i32 0, i32 0
  %70 = load %struct.TYPE_6__*, %struct.TYPE_6__** %69, align 8
  %71 = call i64 @input_register_device(%struct.TYPE_6__* %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %81

73:                                               ; preds = %67
  %74 = call i32 @pr_err(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0))
  %75 = load %struct.topstar_hkey*, %struct.topstar_hkey** %3, align 8
  %76 = getelementptr inbounds %struct.topstar_hkey, %struct.topstar_hkey* %75, i32 0, i32 0
  %77 = load %struct.TYPE_6__*, %struct.TYPE_6__** %76, align 8
  %78 = call i32 @input_free_device(%struct.TYPE_6__* %77)
  %79 = load i32, i32* @ENODEV, align 4
  %80 = sub nsw i32 0, %79
  store i32 %80, i32* %2, align 4
  br label %82

81:                                               ; preds = %67
  store i32 0, i32* %2, align 4
  br label %82

82:                                               ; preds = %81, %73, %12
  %83 = load i32, i32* %2, align 4
  ret i32 %83
}

declare dso_local %struct.TYPE_6__* @input_allocate_device(...) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @set_bit(i32, i32) #1

declare dso_local i64 @input_register_device(%struct.TYPE_6__*) #1

declare dso_local i32 @input_free_device(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
