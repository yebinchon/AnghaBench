; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/extr_scan.c_acpi_device_get_busid.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/extr_scan.c_acpi_device_get_busid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_device = type { i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.acpi_buffer = type { i32, i8* }

@__const.acpi_device_get_busid.bus_id = private unnamed_addr constant [5 x i8] c"?\00\00\00\00", align 1
@.str = private unnamed_addr constant [5 x i8] c"ACPI\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"PWRF\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"SLPF\00", align 1
@ACPI_SINGLE_NAME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.acpi_device*)* @acpi_device_get_busid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @acpi_device_get_busid(%struct.acpi_device* %0) #0 {
  %2 = alloca %struct.acpi_device*, align 8
  %3 = alloca [5 x i8], align 1
  %4 = alloca %struct.acpi_buffer, align 8
  %5 = alloca i32, align 4
  store %struct.acpi_device* %0, %struct.acpi_device** %2, align 8
  %6 = bitcast [5 x i8]* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %6, i8* align 1 getelementptr inbounds ([5 x i8], [5 x i8]* @__const.acpi_device_get_busid.bus_id, i32 0, i32 0), i64 5, i1 false)
  %7 = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %4, i32 0, i32 0
  store i32 5, i32* %7, align 8
  %8 = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %4, i32 0, i32 1
  %9 = getelementptr inbounds [5 x i8], [5 x i8]* %3, i64 0, i64 0
  store i8* %9, i8** %8, align 8
  store i32 0, i32* %5, align 4
  %10 = load %struct.acpi_device*, %struct.acpi_device** %2, align 8
  %11 = call i64 @ACPI_IS_ROOT_DEVICE(%struct.acpi_device* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %19

13:                                               ; preds = %1
  %14 = load %struct.acpi_device*, %struct.acpi_device** %2, align 8
  %15 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @strcpy(i32 %17, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  br label %67

19:                                               ; preds = %1
  %20 = load %struct.acpi_device*, %struct.acpi_device** %2, align 8
  %21 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  switch i32 %22, label %35 [
    i32 129, label %23
    i32 128, label %29
  ]

23:                                               ; preds = %19
  %24 = load %struct.acpi_device*, %struct.acpi_device** %2, align 8
  %25 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @strcpy(i32 %27, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  br label %67

29:                                               ; preds = %19
  %30 = load %struct.acpi_device*, %struct.acpi_device** %2, align 8
  %31 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @strcpy(i32 %33, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  br label %67

35:                                               ; preds = %19
  %36 = load %struct.acpi_device*, %struct.acpi_device** %2, align 8
  %37 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @ACPI_SINGLE_NAME, align 4
  %40 = call i32 @acpi_get_name(i32 %38, i32 %39, %struct.acpi_buffer* %4)
  store i32 3, i32* %5, align 4
  br label %41

41:                                               ; preds = %57, %35
  %42 = load i32, i32* %5, align 4
  %43 = icmp sgt i32 %42, 1
  br i1 %43, label %44, label %60

44:                                               ; preds = %41
  %45 = load i32, i32* %5, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds [5 x i8], [5 x i8]* %3, i64 0, i64 %46
  %48 = load i8, i8* %47, align 1
  %49 = sext i8 %48 to i32
  %50 = icmp eq i32 %49, 95
  br i1 %50, label %51, label %55

51:                                               ; preds = %44
  %52 = load i32, i32* %5, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds [5 x i8], [5 x i8]* %3, i64 0, i64 %53
  store i8 0, i8* %54, align 1
  br label %56

55:                                               ; preds = %44
  br label %60

56:                                               ; preds = %51
  br label %57

57:                                               ; preds = %56
  %58 = load i32, i32* %5, align 4
  %59 = add nsw i32 %58, -1
  store i32 %59, i32* %5, align 4
  br label %41

60:                                               ; preds = %55, %41
  %61 = load %struct.acpi_device*, %struct.acpi_device** %2, align 8
  %62 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %61, i32 0, i32 1
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = getelementptr inbounds [5 x i8], [5 x i8]* %3, i64 0, i64 0
  %66 = call i32 @strcpy(i32 %64, i8* %65)
  br label %67

67:                                               ; preds = %13, %60, %29, %23
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i64 @ACPI_IS_ROOT_DEVICE(%struct.acpi_device*) #2

declare dso_local i32 @strcpy(i32, i8*) #2

declare dso_local i32 @acpi_get_name(i32, i32, %struct.acpi_buffer*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
