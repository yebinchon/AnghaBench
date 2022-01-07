; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kernel/cpu/cpufreq/extr_pcc-cpufreq.c_pcc_get_offset.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kernel/cpu/cpufreq/extr_pcc-cpufreq.c_pcc_get_offset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_buffer = type { %union.acpi_object*, i32*, i32 }
%union.acpi_object = type { i64 }
%struct.pcc_cpu = type { i64, i64 }
%struct.acpi_processor = type { i32 }
%struct.TYPE_3__ = type { %union.acpi_object* }
%struct.TYPE_4__ = type { i64 }

@ACPI_ALLOCATE_BUFFER = common dso_local global i32 0, align 4
@processors = common dso_local global i32 0, align 4
@pcc_cpu_info = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"PCCP\00", align 1
@ACPI_TYPE_PACKAGE = common dso_local global i64 0, align 8
@ACPI_TYPE_INTEGER = common dso_local global i64 0, align 8
@pcch_virt_addr = common dso_local global i64 0, align 8
@BUF_SZ = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [95 x i8] c"pcc_get_offset: for CPU %d: pcc_cpu_data input_offset: 0x%x, pcc_cpu_data output_offset: 0x%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @pcc_get_offset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pcc_get_offset(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.acpi_buffer, align 8
  %6 = alloca %union.acpi_object*, align 8
  %7 = alloca %union.acpi_object*, align 8
  %8 = alloca %struct.pcc_cpu*, align 8
  %9 = alloca %struct.acpi_processor*, align 8
  %10 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %11 = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %5, i32 0, i32 0
  %12 = load i32, i32* @ACPI_ALLOCATE_BUFFER, align 4
  %13 = sext i32 %12 to i64
  %14 = inttoptr i64 %13 to %union.acpi_object*
  store %union.acpi_object* %14, %union.acpi_object** %11, align 8
  %15 = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %5, i32 0, i32 1
  store i32* null, i32** %15, align 8
  %16 = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %5, i32 0, i32 2
  store i32 0, i32* %16, align 8
  store i32 0, i32* %10, align 4
  %17 = load i32, i32* @processors, align 4
  %18 = load i32, i32* %3, align 4
  %19 = call %struct.acpi_processor* @per_cpu(i32 %17, i32 %18)
  store %struct.acpi_processor* %19, %struct.acpi_processor** %9, align 8
  %20 = load i32, i32* @pcc_cpu_info, align 4
  %21 = load i32, i32* %3, align 4
  %22 = call %struct.pcc_cpu* @per_cpu_ptr(i32 %20, i32 %21)
  store %struct.pcc_cpu* %22, %struct.pcc_cpu** %8, align 8
  %23 = load %struct.acpi_processor*, %struct.acpi_processor** %9, align 8
  %24 = icmp ne %struct.acpi_processor* %23, null
  br i1 %24, label %28, label %25

25:                                               ; preds = %1
  %26 = load i32, i32* @ENODEV, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %2, align 4
  br label %127

28:                                               ; preds = %1
  %29 = load %struct.acpi_processor*, %struct.acpi_processor** %9, align 8
  %30 = getelementptr inbounds %struct.acpi_processor, %struct.acpi_processor* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @acpi_evaluate_object(i32 %31, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32* null, %struct.acpi_buffer* %5)
  store i32 %32, i32* %4, align 4
  %33 = load i32, i32* %4, align 4
  %34 = call i64 @ACPI_FAILURE(i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %28
  %37 = load i32, i32* @ENODEV, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %2, align 4
  br label %127

39:                                               ; preds = %28
  %40 = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %5, i32 0, i32 0
  %41 = load %union.acpi_object*, %union.acpi_object** %40, align 8
  store %union.acpi_object* %41, %union.acpi_object** %6, align 8
  %42 = load %union.acpi_object*, %union.acpi_object** %6, align 8
  %43 = icmp ne %union.acpi_object* %42, null
  br i1 %43, label %44, label %50

44:                                               ; preds = %39
  %45 = load %union.acpi_object*, %union.acpi_object** %6, align 8
  %46 = bitcast %union.acpi_object* %45 to i64*
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @ACPI_TYPE_PACKAGE, align 8
  %49 = icmp ne i64 %47, %48
  br i1 %49, label %50, label %53

50:                                               ; preds = %44, %39
  %51 = load i32, i32* @ENODEV, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %10, align 4
  br label %122

53:                                               ; preds = %44
  %54 = load %union.acpi_object*, %union.acpi_object** %6, align 8
  %55 = bitcast %union.acpi_object* %54 to %struct.TYPE_3__*
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 0
  %57 = load %union.acpi_object*, %union.acpi_object** %56, align 8
  %58 = getelementptr inbounds %union.acpi_object, %union.acpi_object* %57, i64 0
  store %union.acpi_object* %58, %union.acpi_object** %7, align 8
  %59 = load %union.acpi_object*, %union.acpi_object** %7, align 8
  %60 = icmp ne %union.acpi_object* %59, null
  br i1 %60, label %61, label %67

61:                                               ; preds = %53
  %62 = load %union.acpi_object*, %union.acpi_object** %7, align 8
  %63 = bitcast %union.acpi_object* %62 to i64*
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* @ACPI_TYPE_INTEGER, align 8
  %66 = icmp ne i64 %64, %65
  br i1 %66, label %67, label %70

67:                                               ; preds = %61, %53
  %68 = load i32, i32* @ENODEV, align 4
  %69 = sub nsw i32 0, %68
  store i32 %69, i32* %10, align 4
  br label %122

70:                                               ; preds = %61
  %71 = load %union.acpi_object*, %union.acpi_object** %7, align 8
  %72 = bitcast %union.acpi_object* %71 to %struct.TYPE_4__*
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = load %struct.pcc_cpu*, %struct.pcc_cpu** %8, align 8
  %76 = getelementptr inbounds %struct.pcc_cpu, %struct.pcc_cpu* %75, i32 0, i32 1
  store i64 %74, i64* %76, align 8
  %77 = load %union.acpi_object*, %union.acpi_object** %6, align 8
  %78 = bitcast %union.acpi_object* %77 to %struct.TYPE_3__*
  %79 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %78, i32 0, i32 0
  %80 = load %union.acpi_object*, %union.acpi_object** %79, align 8
  %81 = getelementptr inbounds %union.acpi_object, %union.acpi_object* %80, i64 1
  store %union.acpi_object* %81, %union.acpi_object** %7, align 8
  %82 = load %union.acpi_object*, %union.acpi_object** %7, align 8
  %83 = icmp ne %union.acpi_object* %82, null
  br i1 %83, label %84, label %90

84:                                               ; preds = %70
  %85 = load %union.acpi_object*, %union.acpi_object** %7, align 8
  %86 = bitcast %union.acpi_object* %85 to i64*
  %87 = load i64, i64* %86, align 8
  %88 = load i64, i64* @ACPI_TYPE_INTEGER, align 8
  %89 = icmp ne i64 %87, %88
  br i1 %89, label %90, label %93

90:                                               ; preds = %84, %70
  %91 = load i32, i32* @ENODEV, align 4
  %92 = sub nsw i32 0, %91
  store i32 %92, i32* %10, align 4
  br label %122

93:                                               ; preds = %84
  %94 = load %union.acpi_object*, %union.acpi_object** %7, align 8
  %95 = bitcast %union.acpi_object* %94 to %struct.TYPE_4__*
  %96 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = load %struct.pcc_cpu*, %struct.pcc_cpu** %8, align 8
  %99 = getelementptr inbounds %struct.pcc_cpu, %struct.pcc_cpu* %98, i32 0, i32 0
  store i64 %97, i64* %99, align 8
  %100 = load i64, i64* @pcch_virt_addr, align 8
  %101 = load %struct.pcc_cpu*, %struct.pcc_cpu** %8, align 8
  %102 = getelementptr inbounds %struct.pcc_cpu, %struct.pcc_cpu* %101, i32 0, i32 1
  %103 = load i64, i64* %102, align 8
  %104 = add nsw i64 %100, %103
  %105 = load i32, i32* @BUF_SZ, align 4
  %106 = call i32 @memset_io(i64 %104, i32 0, i32 %105)
  %107 = load i64, i64* @pcch_virt_addr, align 8
  %108 = load %struct.pcc_cpu*, %struct.pcc_cpu** %8, align 8
  %109 = getelementptr inbounds %struct.pcc_cpu, %struct.pcc_cpu* %108, i32 0, i32 0
  %110 = load i64, i64* %109, align 8
  %111 = add nsw i64 %107, %110
  %112 = load i32, i32* @BUF_SZ, align 4
  %113 = call i32 @memset_io(i64 %111, i32 0, i32 %112)
  %114 = load i32, i32* %3, align 4
  %115 = load %struct.pcc_cpu*, %struct.pcc_cpu** %8, align 8
  %116 = getelementptr inbounds %struct.pcc_cpu, %struct.pcc_cpu* %115, i32 0, i32 1
  %117 = load i64, i64* %116, align 8
  %118 = load %struct.pcc_cpu*, %struct.pcc_cpu** %8, align 8
  %119 = getelementptr inbounds %struct.pcc_cpu, %struct.pcc_cpu* %118, i32 0, i32 0
  %120 = load i64, i64* %119, align 8
  %121 = call i32 @dprintk(i8* getelementptr inbounds ([95 x i8], [95 x i8]* @.str.1, i64 0, i64 0), i32 %114, i64 %117, i64 %120)
  br label %122

122:                                              ; preds = %93, %90, %67, %50
  %123 = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %5, i32 0, i32 0
  %124 = load %union.acpi_object*, %union.acpi_object** %123, align 8
  %125 = call i32 @kfree(%union.acpi_object* %124)
  %126 = load i32, i32* %10, align 4
  store i32 %126, i32* %2, align 4
  br label %127

127:                                              ; preds = %122, %36, %25
  %128 = load i32, i32* %2, align 4
  ret i32 %128
}

declare dso_local %struct.acpi_processor* @per_cpu(i32, i32) #1

declare dso_local %struct.pcc_cpu* @per_cpu_ptr(i32, i32) #1

declare dso_local i32 @acpi_evaluate_object(i32, i8*, i32*, %struct.acpi_buffer*) #1

declare dso_local i64 @ACPI_FAILURE(i32) #1

declare dso_local i32 @memset_io(i64, i32, i32) #1

declare dso_local i32 @dprintk(i8*, i32, i64, i64) #1

declare dso_local i32 @kfree(%union.acpi_object*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
