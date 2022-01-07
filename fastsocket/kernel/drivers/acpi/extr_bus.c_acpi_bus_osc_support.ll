; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/extr_bus.c_acpi_bus_osc_support.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/extr_bus.c_acpi_bus_osc_support.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_osc_context = type { i32, %struct.TYPE_4__, %struct.TYPE_3__, i32 }
%struct.TYPE_4__ = type { i32*, i64 }
%struct.TYPE_3__ = type { i32, i32* }

@sb_uuid_str = common dso_local global i32 0, align 4
@OSC_QUERY_ENABLE = common dso_local global i32 0, align 4
@OSC_QUERY_TYPE = common dso_local global i64 0, align 8
@OSC_SB_PR3_SUPPORT = common dso_local global i32 0, align 4
@OSC_SUPPORT_TYPE = common dso_local global i64 0, align 8
@ghes_disable = common dso_local global i32 0, align 4
@OSC_SB_APEI_SUPPORT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"\\_SB\00", align 1
@osc_sb_apei_support_acked = common dso_local global i32 0, align 4
@OSC_SB_HOTPLUG_OST_SUPPORT = common dso_local global i32 0, align 4
@OSC_SB_PAD_SUPPORT = common dso_local global i32 0, align 4
@OSC_SB_PPC_OST_SUPPORT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @acpi_bus_osc_support to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @acpi_bus_osc_support() #0 {
  %1 = alloca [2 x i32], align 4
  %2 = alloca %struct.acpi_osc_context, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = getelementptr inbounds %struct.acpi_osc_context, %struct.acpi_osc_context* %2, i32 0, i32 0
  store i32 1, i32* %5, align 8
  %6 = getelementptr inbounds %struct.acpi_osc_context, %struct.acpi_osc_context* %2, i32 0, i32 1
  %7 = bitcast %struct.TYPE_4__* %6 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %7, i8 0, i64 16, i1 false)
  %8 = getelementptr inbounds %struct.acpi_osc_context, %struct.acpi_osc_context* %2, i32 0, i32 2
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  store i32 8, i32* %9, align 8
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 1
  %11 = getelementptr inbounds [2 x i32], [2 x i32]* %1, i64 0, i64 0
  store i32* %11, i32** %10, align 8
  %12 = getelementptr inbounds %struct.acpi_osc_context, %struct.acpi_osc_context* %2, i32 0, i32 3
  %13 = load i32, i32* @sb_uuid_str, align 4
  store i32 %13, i32* %12, align 8
  %14 = load i32, i32* @OSC_QUERY_ENABLE, align 4
  %15 = load i64, i64* @OSC_QUERY_TYPE, align 8
  %16 = getelementptr inbounds [2 x i32], [2 x i32]* %1, i64 0, i64 %15
  store i32 %14, i32* %16, align 4
  %17 = load i32, i32* @OSC_SB_PR3_SUPPORT, align 4
  %18 = load i64, i64* @OSC_SUPPORT_TYPE, align 8
  %19 = getelementptr inbounds [2 x i32], [2 x i32]* %1, i64 0, i64 %18
  store i32 %17, i32* %19, align 4
  %20 = load i32, i32* @ghes_disable, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %28, label %22

22:                                               ; preds = %0
  %23 = load i32, i32* @OSC_SB_APEI_SUPPORT, align 4
  %24 = load i64, i64* @OSC_SUPPORT_TYPE, align 8
  %25 = getelementptr inbounds [2 x i32], [2 x i32]* %1, i64 0, i64 %24
  %26 = load i32, i32* %25, align 4
  %27 = or i32 %26, %23
  store i32 %27, i32* %25, align 4
  br label %28

28:                                               ; preds = %22, %0
  %29 = call i32 @acpi_get_handle(i32* null, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32* %3)
  %30 = call i64 @ACPI_FAILURE(i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %28
  br label %66

33:                                               ; preds = %28
  %34 = call i64 (...) @is_uv_system()
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %40

36:                                               ; preds = %33
  %37 = call i64 (...) @is_kdump_kernel()
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %36
  br label %66

40:                                               ; preds = %36, %33
  %41 = load i32, i32* %3, align 4
  %42 = call i32 @acpi_run_osc(i32 %41, %struct.acpi_osc_context* %2)
  %43 = call i64 @ACPI_SUCCESS(i32 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %66

45:                                               ; preds = %40
  %46 = getelementptr inbounds %struct.acpi_osc_context, %struct.acpi_osc_context* %2, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 0
  %48 = load i32*, i32** %47, align 8
  store i32* %48, i32** %4, align 8
  %49 = getelementptr inbounds %struct.acpi_osc_context, %struct.acpi_osc_context* %2, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @OSC_SUPPORT_TYPE, align 8
  %53 = icmp ugt i64 %51, %52
  br i1 %53, label %54, label %61

54:                                               ; preds = %45
  %55 = load i32*, i32** %4, align 8
  %56 = load i64, i64* @OSC_SUPPORT_TYPE, align 8
  %57 = getelementptr inbounds i32, i32* %55, i64 %56
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* @OSC_SB_APEI_SUPPORT, align 4
  %60 = and i32 %58, %59
  store i32 %60, i32* @osc_sb_apei_support_acked, align 4
  br label %61

61:                                               ; preds = %54, %45
  %62 = getelementptr inbounds %struct.acpi_osc_context, %struct.acpi_osc_context* %2, i32 0, i32 1
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 0
  %64 = load i32*, i32** %63, align 8
  %65 = call i32 @kfree(i32* %64)
  br label %66

66:                                               ; preds = %32, %39, %61, %40
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i64 @ACPI_FAILURE(i32) #2

declare dso_local i32 @acpi_get_handle(i32*, i8*, i32*) #2

declare dso_local i64 @is_uv_system(...) #2

declare dso_local i64 @is_kdump_kernel(...) #2

declare dso_local i64 @ACPI_SUCCESS(i32) #2

declare dso_local i32 @acpi_run_osc(i32, %struct.acpi_osc_context*) #2

declare dso_local i32 @kfree(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
