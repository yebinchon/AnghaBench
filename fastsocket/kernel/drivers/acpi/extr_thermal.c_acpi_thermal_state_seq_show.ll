; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/extr_thermal.c_acpi_thermal_state_seq_show.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/extr_thermal.c_acpi_thermal_state_seq_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_file = type { %struct.acpi_thermal* }
%struct.acpi_thermal = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i64, i64, i64, i64 }

@.str = private unnamed_addr constant [26 x i8] c"state:                   \00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"ok\0A\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"critical \00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"hot \00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"passive \00", align 1
@.str.5 = private unnamed_addr constant [11 x i8] c"active[%d]\00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.seq_file*, i8*)* @acpi_thermal_state_seq_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @acpi_thermal_state_seq_show(%struct.seq_file* %0, i8* %1) #0 {
  %3 = alloca %struct.seq_file*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.acpi_thermal*, align 8
  store %struct.seq_file* %0, %struct.seq_file** %3, align 8
  store i8* %1, i8** %4, align 8
  %6 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %7 = getelementptr inbounds %struct.seq_file, %struct.seq_file* %6, i32 0, i32 0
  %8 = load %struct.acpi_thermal*, %struct.acpi_thermal** %7, align 8
  store %struct.acpi_thermal* %8, %struct.acpi_thermal** %5, align 8
  %9 = load %struct.acpi_thermal*, %struct.acpi_thermal** %5, align 8
  %10 = icmp ne %struct.acpi_thermal* %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %2
  br label %85

12:                                               ; preds = %2
  %13 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %14 = call i32 @seq_puts(%struct.seq_file* %13, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %15 = load %struct.acpi_thermal*, %struct.acpi_thermal** %5, align 8
  %16 = getelementptr inbounds %struct.acpi_thermal, %struct.acpi_thermal* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 4
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %41, label %20

20:                                               ; preds = %12
  %21 = load %struct.acpi_thermal*, %struct.acpi_thermal** %5, align 8
  %22 = getelementptr inbounds %struct.acpi_thermal, %struct.acpi_thermal* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 3
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %41, label %26

26:                                               ; preds = %20
  %27 = load %struct.acpi_thermal*, %struct.acpi_thermal** %5, align 8
  %28 = getelementptr inbounds %struct.acpi_thermal, %struct.acpi_thermal* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 2
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %41, label %32

32:                                               ; preds = %26
  %33 = load %struct.acpi_thermal*, %struct.acpi_thermal** %5, align 8
  %34 = getelementptr inbounds %struct.acpi_thermal, %struct.acpi_thermal* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %41, label %38

38:                                               ; preds = %32
  %39 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %40 = call i32 @seq_puts(%struct.seq_file* %39, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  br label %84

41:                                               ; preds = %32, %26, %20, %12
  %42 = load %struct.acpi_thermal*, %struct.acpi_thermal** %5, align 8
  %43 = getelementptr inbounds %struct.acpi_thermal, %struct.acpi_thermal* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 4
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %41
  %48 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %49 = call i32 @seq_puts(%struct.seq_file* %48, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0))
  br label %50

50:                                               ; preds = %47, %41
  %51 = load %struct.acpi_thermal*, %struct.acpi_thermal** %5, align 8
  %52 = getelementptr inbounds %struct.acpi_thermal, %struct.acpi_thermal* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 3
  %54 = load i64, i64* %53, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %59

56:                                               ; preds = %50
  %57 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %58 = call i32 @seq_puts(%struct.seq_file* %57, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  br label %59

59:                                               ; preds = %56, %50
  %60 = load %struct.acpi_thermal*, %struct.acpi_thermal** %5, align 8
  %61 = getelementptr inbounds %struct.acpi_thermal, %struct.acpi_thermal* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 2
  %63 = load i64, i64* %62, align 8
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %68

65:                                               ; preds = %59
  %66 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %67 = call i32 @seq_puts(%struct.seq_file* %66, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0))
  br label %68

68:                                               ; preds = %65, %59
  %69 = load %struct.acpi_thermal*, %struct.acpi_thermal** %5, align 8
  %70 = getelementptr inbounds %struct.acpi_thermal, %struct.acpi_thermal* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 1
  %72 = load i64, i64* %71, align 8
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %81

74:                                               ; preds = %68
  %75 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %76 = load %struct.acpi_thermal*, %struct.acpi_thermal** %5, align 8
  %77 = getelementptr inbounds %struct.acpi_thermal, %struct.acpi_thermal* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = call i32 @seq_printf(%struct.seq_file* %75, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0), i32 %79)
  br label %81

81:                                               ; preds = %74, %68
  %82 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %83 = call i32 @seq_puts(%struct.seq_file* %82, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0))
  br label %84

84:                                               ; preds = %81, %38
  br label %85

85:                                               ; preds = %84, %11
  ret i32 0
}

declare dso_local i32 @seq_puts(%struct.seq_file*, i8*) #1

declare dso_local i32 @seq_printf(%struct.seq_file*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
