; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/extr_video.c_acpi_video_bus_find_cap.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/extr_video.c_acpi_video_bus_find_cap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_video_bus = type { %struct.TYPE_4__, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32, i32, i32, i32, i32, i32 }
%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [5 x i8] c"_DOS\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"_DOD\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"_ROM\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"_GPD\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"_SPD\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"_VPO\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.acpi_video_bus*)* @acpi_video_bus_find_cap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @acpi_video_bus_find_cap(%struct.acpi_video_bus* %0) #0 {
  %2 = alloca %struct.acpi_video_bus*, align 8
  %3 = alloca i32, align 4
  store %struct.acpi_video_bus* %0, %struct.acpi_video_bus** %2, align 8
  %4 = load %struct.acpi_video_bus*, %struct.acpi_video_bus** %2, align 8
  %5 = getelementptr inbounds %struct.acpi_video_bus, %struct.acpi_video_bus* %4, i32 0, i32 1
  %6 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %7 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = call i32 @acpi_get_handle(i32 %8, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32* %3)
  %10 = call i64 @ACPI_SUCCESS(i32 %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %16

12:                                               ; preds = %1
  %13 = load %struct.acpi_video_bus*, %struct.acpi_video_bus** %2, align 8
  %14 = getelementptr inbounds %struct.acpi_video_bus, %struct.acpi_video_bus* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  store i32 1, i32* %15, align 8
  br label %16

16:                                               ; preds = %12, %1
  %17 = load %struct.acpi_video_bus*, %struct.acpi_video_bus** %2, align 8
  %18 = getelementptr inbounds %struct.acpi_video_bus, %struct.acpi_video_bus* %17, i32 0, i32 1
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @acpi_get_handle(i32 %21, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32* %3)
  %23 = call i64 @ACPI_SUCCESS(i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %16
  %26 = load %struct.acpi_video_bus*, %struct.acpi_video_bus** %2, align 8
  %27 = getelementptr inbounds %struct.acpi_video_bus, %struct.acpi_video_bus* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 1
  store i32 1, i32* %28, align 4
  br label %29

29:                                               ; preds = %25, %16
  %30 = load %struct.acpi_video_bus*, %struct.acpi_video_bus** %2, align 8
  %31 = getelementptr inbounds %struct.acpi_video_bus, %struct.acpi_video_bus* %30, i32 0, i32 1
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @acpi_get_handle(i32 %34, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32* %3)
  %36 = call i64 @ACPI_SUCCESS(i32 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %42

38:                                               ; preds = %29
  %39 = load %struct.acpi_video_bus*, %struct.acpi_video_bus** %2, align 8
  %40 = getelementptr inbounds %struct.acpi_video_bus, %struct.acpi_video_bus* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 2
  store i32 1, i32* %41, align 8
  br label %42

42:                                               ; preds = %38, %29
  %43 = load %struct.acpi_video_bus*, %struct.acpi_video_bus** %2, align 8
  %44 = getelementptr inbounds %struct.acpi_video_bus, %struct.acpi_video_bus* %43, i32 0, i32 1
  %45 = load %struct.TYPE_3__*, %struct.TYPE_3__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @acpi_get_handle(i32 %47, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i32* %3)
  %49 = call i64 @ACPI_SUCCESS(i32 %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %55

51:                                               ; preds = %42
  %52 = load %struct.acpi_video_bus*, %struct.acpi_video_bus** %2, align 8
  %53 = getelementptr inbounds %struct.acpi_video_bus, %struct.acpi_video_bus* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 3
  store i32 1, i32* %54, align 4
  br label %55

55:                                               ; preds = %51, %42
  %56 = load %struct.acpi_video_bus*, %struct.acpi_video_bus** %2, align 8
  %57 = getelementptr inbounds %struct.acpi_video_bus, %struct.acpi_video_bus* %56, i32 0, i32 1
  %58 = load %struct.TYPE_3__*, %struct.TYPE_3__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @acpi_get_handle(i32 %60, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i32* %3)
  %62 = call i64 @ACPI_SUCCESS(i32 %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %68

64:                                               ; preds = %55
  %65 = load %struct.acpi_video_bus*, %struct.acpi_video_bus** %2, align 8
  %66 = getelementptr inbounds %struct.acpi_video_bus, %struct.acpi_video_bus* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 4
  store i32 1, i32* %67, align 8
  br label %68

68:                                               ; preds = %64, %55
  %69 = load %struct.acpi_video_bus*, %struct.acpi_video_bus** %2, align 8
  %70 = getelementptr inbounds %struct.acpi_video_bus, %struct.acpi_video_bus* %69, i32 0, i32 1
  %71 = load %struct.TYPE_3__*, %struct.TYPE_3__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @acpi_get_handle(i32 %73, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i32* %3)
  %75 = call i64 @ACPI_SUCCESS(i32 %74)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %81

77:                                               ; preds = %68
  %78 = load %struct.acpi_video_bus*, %struct.acpi_video_bus** %2, align 8
  %79 = getelementptr inbounds %struct.acpi_video_bus, %struct.acpi_video_bus* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 5
  store i32 1, i32* %80, align 4
  br label %81

81:                                               ; preds = %77, %68
  ret void
}

declare dso_local i64 @ACPI_SUCCESS(i32) #1

declare dso_local i32 @acpi_get_handle(i32, i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
