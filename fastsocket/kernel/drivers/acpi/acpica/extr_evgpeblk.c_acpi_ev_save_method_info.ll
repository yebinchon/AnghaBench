; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/acpica/extr_evgpeblk.c_acpi_ev_save_method_info.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/acpica/extr_evgpeblk.c_acpi_ev_save_method_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_gpe_block_info = type { i64, i32, %struct.acpi_gpe_event_info* }
%struct.acpi_gpe_event_info = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.acpi_namespace_node* }
%struct.acpi_namespace_node = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@ACPI_NAME_SIZE = common dso_local global i32 0, align 4
@ev_save_method_info = common dso_local global i32 0, align 4
@ACPI_GPE_LEVEL_TRIGGERED = common dso_local global i32 0, align 4
@ACPI_GPE_EDGE_TRIGGERED = common dso_local global i32 0, align 4
@ACPI_DB_LOAD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [69 x i8] c"Ignoring unknown GPE method type: %s (name not of form _Lxx or _Exx)\00", align 1
@AE_OK = common dso_local global i32 0, align 4
@ACPI_UINT32_MAX = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [78 x i8] c"Could not extract GPE number from name: %s (name is not of form _Lxx or _Exx)\00", align 1
@ACPI_GPE_DISPATCH_METHOD = common dso_local global i32 0, align 4
@ACPI_GPE_TYPE_RUNTIME = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [47 x i8] c"Registered GPE method %s as GPE number 0x%.2X\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, i64, i8*, i8**)* @acpi_ev_save_method_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @acpi_ev_save_method_info(i64 %0, i64 %1, i8* %2, i8** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8**, align 8
  %10 = alloca %struct.acpi_gpe_block_info*, align 8
  %11 = alloca %struct.acpi_gpe_event_info*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store i64 %0, i64* %6, align 8
  store i64 %1, i64* %7, align 8
  store i8* %2, i8** %8, align 8
  store i8** %3, i8*** %9, align 8
  %17 = load i8*, i8** %8, align 8
  %18 = bitcast i8* %17 to %struct.acpi_gpe_block_info*
  store %struct.acpi_gpe_block_info* %18, %struct.acpi_gpe_block_info** %10, align 8
  %19 = load i32, i32* @ACPI_NAME_SIZE, align 4
  %20 = add nsw i32 %19, 1
  %21 = zext i32 %20 to i64
  %22 = call i8* @llvm.stacksave()
  store i8* %22, i8** %13, align 8
  %23 = alloca i8, i64 %21, align 16
  store i64 %21, i64* %14, align 8
  %24 = load i32, i32* @ev_save_method_info, align 4
  %25 = call i32 @ACPI_FUNCTION_TRACE(i32 %24)
  %26 = load i64, i64* %6, align 8
  %27 = inttoptr i64 %26 to %struct.acpi_namespace_node*
  %28 = getelementptr inbounds %struct.acpi_namespace_node, %struct.acpi_namespace_node* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  %30 = call i32 @ACPI_MOVE_32_TO_32(i8* %23, i32* %29)
  %31 = load i32, i32* @ACPI_NAME_SIZE, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i8, i8* %23, i64 %32
  store i8 0, i8* %33, align 1
  %34 = getelementptr inbounds i8, i8* %23, i64 1
  %35 = load i8, i8* %34, align 1
  %36 = sext i8 %35 to i32
  switch i32 %36, label %41 [
    i32 76, label %37
    i32 69, label %39
  ]

37:                                               ; preds = %4
  %38 = load i32, i32* @ACPI_GPE_LEVEL_TRIGGERED, align 4
  store i32 %38, i32* %15, align 4
  br label %47

39:                                               ; preds = %4
  %40 = load i32, i32* @ACPI_GPE_EDGE_TRIGGERED, align 4
  store i32 %40, i32* %15, align 4
  br label %47

41:                                               ; preds = %4
  %42 = load i32, i32* @ACPI_DB_LOAD, align 4
  %43 = ptrtoint i8* %23 to i32
  %44 = call i32 @ACPI_DEBUG_PRINT(i32 %43)
  %45 = load i32, i32* @AE_OK, align 4
  %46 = call i32 @return_ACPI_STATUS(i32 %45)
  br label %47

47:                                               ; preds = %41, %39, %37
  %48 = getelementptr inbounds i8, i8* %23, i64 2
  %49 = call i64 @ACPI_STRTOUL(i8* %48, i32* null, i32 16)
  store i64 %49, i64* %12, align 8
  %50 = load i64, i64* %12, align 8
  %51 = load i64, i64* @ACPI_UINT32_MAX, align 8
  %52 = icmp eq i64 %50, %51
  br i1 %52, label %53, label %59

53:                                               ; preds = %47
  %54 = load i32, i32* @ACPI_DB_LOAD, align 4
  %55 = ptrtoint i8* %23 to i32
  %56 = call i32 @ACPI_DEBUG_PRINT(i32 %55)
  %57 = load i32, i32* @AE_OK, align 4
  %58 = call i32 @return_ACPI_STATUS(i32 %57)
  br label %59

59:                                               ; preds = %53, %47
  %60 = load i64, i64* %12, align 8
  %61 = load %struct.acpi_gpe_block_info*, %struct.acpi_gpe_block_info** %10, align 8
  %62 = getelementptr inbounds %struct.acpi_gpe_block_info, %struct.acpi_gpe_block_info* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = icmp slt i64 %60, %63
  br i1 %64, label %77, label %65

65:                                               ; preds = %59
  %66 = load i64, i64* %12, align 8
  %67 = load %struct.acpi_gpe_block_info*, %struct.acpi_gpe_block_info** %10, align 8
  %68 = getelementptr inbounds %struct.acpi_gpe_block_info, %struct.acpi_gpe_block_info* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = load %struct.acpi_gpe_block_info*, %struct.acpi_gpe_block_info** %10, align 8
  %71 = getelementptr inbounds %struct.acpi_gpe_block_info, %struct.acpi_gpe_block_info* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 8
  %73 = mul nsw i32 %72, 8
  %74 = sext i32 %73 to i64
  %75 = add nsw i64 %69, %74
  %76 = icmp sge i64 %66, %75
  br i1 %76, label %77, label %80

77:                                               ; preds = %65, %59
  %78 = load i32, i32* @AE_OK, align 4
  %79 = call i32 @return_ACPI_STATUS(i32 %78)
  br label %80

80:                                               ; preds = %77, %65
  %81 = load %struct.acpi_gpe_block_info*, %struct.acpi_gpe_block_info** %10, align 8
  %82 = getelementptr inbounds %struct.acpi_gpe_block_info, %struct.acpi_gpe_block_info* %81, i32 0, i32 2
  %83 = load %struct.acpi_gpe_event_info*, %struct.acpi_gpe_event_info** %82, align 8
  %84 = load i64, i64* %12, align 8
  %85 = load %struct.acpi_gpe_block_info*, %struct.acpi_gpe_block_info** %10, align 8
  %86 = getelementptr inbounds %struct.acpi_gpe_block_info, %struct.acpi_gpe_block_info* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = sub nsw i64 %84, %87
  %89 = getelementptr inbounds %struct.acpi_gpe_event_info, %struct.acpi_gpe_event_info* %83, i64 %88
  store %struct.acpi_gpe_event_info* %89, %struct.acpi_gpe_event_info** %11, align 8
  %90 = load i32, i32* %15, align 4
  %91 = load i32, i32* @ACPI_GPE_DISPATCH_METHOD, align 4
  %92 = or i32 %90, %91
  %93 = load i32, i32* @ACPI_GPE_TYPE_RUNTIME, align 4
  %94 = or i32 %92, %93
  %95 = load %struct.acpi_gpe_event_info*, %struct.acpi_gpe_event_info** %11, align 8
  %96 = getelementptr inbounds %struct.acpi_gpe_event_info, %struct.acpi_gpe_event_info* %95, i32 0, i32 0
  store i32 %94, i32* %96, align 8
  %97 = load i64, i64* %6, align 8
  %98 = inttoptr i64 %97 to %struct.acpi_namespace_node*
  %99 = load %struct.acpi_gpe_event_info*, %struct.acpi_gpe_event_info** %11, align 8
  %100 = getelementptr inbounds %struct.acpi_gpe_event_info, %struct.acpi_gpe_event_info* %99, i32 0, i32 1
  %101 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %100, i32 0, i32 0
  store %struct.acpi_namespace_node* %98, %struct.acpi_namespace_node** %101, align 8
  %102 = load %struct.acpi_gpe_event_info*, %struct.acpi_gpe_event_info** %11, align 8
  %103 = load i32, i32* @FALSE, align 4
  %104 = call i32 @acpi_ev_enable_gpe(%struct.acpi_gpe_event_info* %102, i32 %103)
  store i32 %104, i32* %16, align 4
  %105 = load i32, i32* @ACPI_DB_LOAD, align 4
  %106 = load i64, i64* %12, align 8
  %107 = trunc i64 %106 to i32
  %108 = call i32 @ACPI_DEBUG_PRINT(i32 %107)
  %109 = load i32, i32* %16, align 4
  %110 = call i32 @return_ACPI_STATUS(i32 %109)
  %111 = load i8*, i8** %13, align 8
  call void @llvm.stackrestore(i8* %111)
  %112 = load i32, i32* %5, align 4
  ret i32 %112
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @ACPI_FUNCTION_TRACE(i32) #2

declare dso_local i32 @ACPI_MOVE_32_TO_32(i8*, i32*) #2

declare dso_local i32 @ACPI_DEBUG_PRINT(i32) #2

declare dso_local i32 @return_ACPI_STATUS(i32) #2

declare dso_local i64 @ACPI_STRTOUL(i8*, i32*, i32) #2

declare dso_local i32 @acpi_ev_enable_gpe(%struct.acpi_gpe_event_info*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
