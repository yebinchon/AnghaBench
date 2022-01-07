; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/apei/extr_apei-base.c_apei_osc_setup.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/apei/extr_apei-base.c_apei_osc_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_osc_context = type { i8*, i32, %struct.TYPE_3__, %struct.TYPE_4__ }
%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { i32, i32* }

@apei_osc_setup.whea_uuid_str = internal global [37 x i8] c"ed855e0c-6c90-47bf-a62a-26de0fc5ad5c\00", align 16
@OSC_QUERY_ENABLE = common dso_local global i32 0, align 4
@OSC_QUERY_TYPE = common dso_local global i64 0, align 8
@OSC_SUPPORT_TYPE = common dso_local global i64 0, align 8
@OSC_CONTROL_TYPE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [5 x i8] c"\\_SB\00", align 1
@EIO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @apei_osc_setup() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca [3 x i32], align 4
  %4 = alloca %struct.acpi_osc_context, align 8
  %5 = getelementptr inbounds %struct.acpi_osc_context, %struct.acpi_osc_context* %4, i32 0, i32 0
  store i8* getelementptr inbounds ([37 x i8], [37 x i8]* @apei_osc_setup.whea_uuid_str, i64 0, i64 0), i8** %5, align 8
  %6 = getelementptr inbounds %struct.acpi_osc_context, %struct.acpi_osc_context* %4, i32 0, i32 1
  store i32 1, i32* %6, align 8
  %7 = getelementptr inbounds %struct.acpi_osc_context, %struct.acpi_osc_context* %4, i32 0, i32 2
  %8 = bitcast %struct.TYPE_3__* %7 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %8, i8 0, i64 4, i1 false)
  %9 = getelementptr inbounds %struct.acpi_osc_context, %struct.acpi_osc_context* %4, i32 0, i32 3
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  store i32 12, i32* %10, align 8
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 1
  %12 = getelementptr inbounds [3 x i32], [3 x i32]* %3, i64 0, i64 0
  store i32* %12, i32** %11, align 8
  %13 = load i32, i32* @OSC_QUERY_ENABLE, align 4
  %14 = load i64, i64* @OSC_QUERY_TYPE, align 8
  %15 = getelementptr inbounds [3 x i32], [3 x i32]* %3, i64 0, i64 %14
  store i32 %13, i32* %15, align 4
  %16 = load i64, i64* @OSC_SUPPORT_TYPE, align 8
  %17 = getelementptr inbounds [3 x i32], [3 x i32]* %3, i64 0, i64 %16
  store i32 1, i32* %17, align 4
  %18 = load i64, i64* @OSC_CONTROL_TYPE, align 8
  %19 = getelementptr inbounds [3 x i32], [3 x i32]* %3, i64 0, i64 %18
  store i32 0, i32* %19, align 4
  %20 = call i32 @acpi_get_handle(i32* null, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32* %2)
  %21 = call i64 @ACPI_FAILURE(i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %28, label %23

23:                                               ; preds = %0
  %24 = load i32, i32* %2, align 4
  %25 = call i32 @acpi_run_osc(i32 %24, %struct.acpi_osc_context* %4)
  %26 = call i64 @ACPI_FAILURE(i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %23, %0
  %29 = load i32, i32* @EIO, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %1, align 4
  br label %36

31:                                               ; preds = %23
  %32 = getelementptr inbounds %struct.acpi_osc_context, %struct.acpi_osc_context* %4, i32 0, i32 2
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @kfree(i32 %34)
  store i32 0, i32* %1, align 4
  br label %36

36:                                               ; preds = %31, %28
  %37 = load i32, i32* %1, align 4
  ret i32 %37
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i64 @ACPI_FAILURE(i32) #2

declare dso_local i32 @acpi_get_handle(i32*, i8*, i32*) #2

declare dso_local i32 @acpi_run_osc(i32, %struct.acpi_osc_context*) #2

declare dso_local i32 @kfree(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
