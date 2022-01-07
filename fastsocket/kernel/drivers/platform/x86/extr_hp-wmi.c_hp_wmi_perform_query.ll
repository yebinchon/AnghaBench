; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/platform/x86/extr_hp-wmi.c_hp_wmi_perform_query.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/platform/x86/extr_hp-wmi.c_hp_wmi_perform_query.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bios_return = type { i32, i32 }
%union.acpi_object = type { i64 }
%struct.bios_args = type { i32, i32, i32, i32, i32 }
%struct.acpi_buffer = type { i32, %union.acpi_object*, %struct.bios_args* }
%struct.TYPE_2__ = type { i64 }

@ACPI_ALLOCATE_BUFFER = common dso_local global i32 0, align 4
@HPWMI_BIOS_GUID = common dso_local global i32 0, align 4
@ACPI_TYPE_BUFFER = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32)* @hp_wmi_perform_query to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hp_wmi_perform_query(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.bios_return, align 4
  %9 = alloca i32, align 4
  %10 = alloca %union.acpi_object*, align 8
  %11 = alloca %struct.bios_args, align 4
  %12 = alloca %struct.acpi_buffer, align 8
  %13 = alloca %struct.acpi_buffer, align 8
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %14 = getelementptr inbounds %struct.bios_args, %struct.bios_args* %11, i32 0, i32 0
  store i32 1430472019, i32* %14, align 4
  %15 = getelementptr inbounds %struct.bios_args, %struct.bios_args* %11, i32 0, i32 1
  %16 = load i32, i32* %6, align 4
  %17 = icmp ne i32 %16, 0
  %18 = zext i1 %17 to i64
  %19 = select i1 %17, i32 2, i32 1
  store i32 %19, i32* %15, align 4
  %20 = getelementptr inbounds %struct.bios_args, %struct.bios_args* %11, i32 0, i32 2
  %21 = load i32, i32* %5, align 4
  store i32 %21, i32* %20, align 4
  %22 = getelementptr inbounds %struct.bios_args, %struct.bios_args* %11, i32 0, i32 3
  %23 = load i32, i32* %6, align 4
  %24 = icmp ne i32 %23, 0
  %25 = zext i1 %24 to i64
  %26 = select i1 %24, i32 4, i32 0
  store i32 %26, i32* %22, align 4
  %27 = getelementptr inbounds %struct.bios_args, %struct.bios_args* %11, i32 0, i32 4
  %28 = load i32, i32* %7, align 4
  store i32 %28, i32* %27, align 4
  %29 = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %12, i32 0, i32 0
  store i32 20, i32* %29, align 8
  %30 = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %12, i32 0, i32 1
  %31 = bitcast %struct.bios_args* %11 to %union.acpi_object*
  store %union.acpi_object* %31, %union.acpi_object** %30, align 8
  %32 = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %12, i32 0, i32 2
  store %struct.bios_args* null, %struct.bios_args** %32, align 8
  %33 = bitcast %struct.acpi_buffer* %13 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %33, i8 0, i64 24, i1 false)
  %34 = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %13, i32 0, i32 0
  %35 = load i32, i32* @ACPI_ALLOCATE_BUFFER, align 4
  store i32 %35, i32* %34, align 8
  %36 = load i32, i32* @HPWMI_BIOS_GUID, align 4
  %37 = call i32 @wmi_evaluate_method(i32 %36, i32 0, i32 3, %struct.acpi_buffer* %12, %struct.acpi_buffer* %13)
  store i32 %37, i32* %9, align 4
  %38 = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %13, i32 0, i32 1
  %39 = load %union.acpi_object*, %union.acpi_object** %38, align 8
  store %union.acpi_object* %39, %union.acpi_object** %10, align 8
  %40 = load %union.acpi_object*, %union.acpi_object** %10, align 8
  %41 = icmp ne %union.acpi_object* %40, null
  br i1 %41, label %42, label %48

42:                                               ; preds = %3
  %43 = load %union.acpi_object*, %union.acpi_object** %10, align 8
  %44 = bitcast %union.acpi_object* %43 to i64*
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @ACPI_TYPE_BUFFER, align 8
  %47 = icmp ne i64 %45, %46
  br i1 %47, label %48, label %51

48:                                               ; preds = %42, %3
  %49 = load i32, i32* @EINVAL, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %4, align 4
  br label %69

51:                                               ; preds = %42
  %52 = load %union.acpi_object*, %union.acpi_object** %10, align 8
  %53 = bitcast %union.acpi_object* %52 to %struct.TYPE_2__*
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = inttoptr i64 %55 to %struct.bios_return*
  %57 = bitcast %struct.bios_return* %8 to i8*
  %58 = bitcast %struct.bios_return* %56 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %57, i8* align 4 %58, i64 8, i1 false)
  %59 = getelementptr inbounds %struct.bios_return, %struct.bios_return* %8, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = icmp sgt i32 %60, 0
  br i1 %61, label %62, label %66

62:                                               ; preds = %51
  %63 = getelementptr inbounds %struct.bios_return, %struct.bios_return* %8, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = mul nsw i32 %64, -1
  store i32 %65, i32* %4, align 4
  br label %69

66:                                               ; preds = %51
  %67 = getelementptr inbounds %struct.bios_return, %struct.bios_return* %8, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  store i32 %68, i32* %4, align 4
  br label %69

69:                                               ; preds = %66, %62, %48
  %70 = load i32, i32* %4, align 4
  ret i32 %70
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @wmi_evaluate_method(i32, i32, i32, %struct.acpi_buffer*, %struct.acpi_buffer*) #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
