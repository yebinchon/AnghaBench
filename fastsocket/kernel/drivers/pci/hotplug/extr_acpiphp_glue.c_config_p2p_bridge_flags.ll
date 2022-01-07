; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/pci/hotplug/extr_acpiphp_glue.c_config_p2p_bridge_flags.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/pci/hotplug/extr_acpiphp_glue.c_config_p2p_bridge_flags.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpiphp_bridge = type { i32, %struct.acpiphp_func*, i32 }
%struct.acpiphp_func = type { %struct.acpiphp_bridge* }

@.str = private unnamed_addr constant [5 x i8] c"_STA\00", align 1
@BRIDGE_HAS_STA = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"_EJ0\00", align 1
@BRIDGE_HAS_EJ0 = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [5 x i8] c"_PS0\00", align 1
@BRIDGE_HAS_PS0 = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [5 x i8] c"_PS3\00", align 1
@BRIDGE_HAS_PS3 = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [28 x i8] c"found ejectable p2p bridge\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.acpiphp_bridge*)* @config_p2p_bridge_flags to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @config_p2p_bridge_flags(%struct.acpiphp_bridge* %0) #0 {
  %2 = alloca %struct.acpiphp_bridge*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.acpiphp_func*, align 8
  store %struct.acpiphp_bridge* %0, %struct.acpiphp_bridge** %2, align 8
  %5 = load %struct.acpiphp_bridge*, %struct.acpiphp_bridge** %2, align 8
  %6 = getelementptr inbounds %struct.acpiphp_bridge, %struct.acpiphp_bridge* %5, i32 0, i32 2
  %7 = load i32, i32* %6, align 8
  %8 = call i32 @acpi_get_handle(i32 %7, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32* %3)
  %9 = call i64 @ACPI_SUCCESS(i32 %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %17

11:                                               ; preds = %1
  %12 = load i32, i32* @BRIDGE_HAS_STA, align 4
  %13 = load %struct.acpiphp_bridge*, %struct.acpiphp_bridge** %2, align 8
  %14 = getelementptr inbounds %struct.acpiphp_bridge, %struct.acpiphp_bridge* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = or i32 %15, %12
  store i32 %16, i32* %14, align 8
  br label %17

17:                                               ; preds = %11, %1
  %18 = load %struct.acpiphp_bridge*, %struct.acpiphp_bridge** %2, align 8
  %19 = getelementptr inbounds %struct.acpiphp_bridge, %struct.acpiphp_bridge* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 8
  %21 = call i32 @acpi_get_handle(i32 %20, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32* %3)
  %22 = call i64 @ACPI_SUCCESS(i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %30

24:                                               ; preds = %17
  %25 = load i32, i32* @BRIDGE_HAS_EJ0, align 4
  %26 = load %struct.acpiphp_bridge*, %struct.acpiphp_bridge** %2, align 8
  %27 = getelementptr inbounds %struct.acpiphp_bridge, %struct.acpiphp_bridge* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = or i32 %28, %25
  store i32 %29, i32* %27, align 8
  br label %30

30:                                               ; preds = %24, %17
  %31 = load %struct.acpiphp_bridge*, %struct.acpiphp_bridge** %2, align 8
  %32 = getelementptr inbounds %struct.acpiphp_bridge, %struct.acpiphp_bridge* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 8
  %34 = call i32 @acpi_get_handle(i32 %33, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32* %3)
  %35 = call i64 @ACPI_SUCCESS(i32 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %43

37:                                               ; preds = %30
  %38 = load i32, i32* @BRIDGE_HAS_PS0, align 4
  %39 = load %struct.acpiphp_bridge*, %struct.acpiphp_bridge** %2, align 8
  %40 = getelementptr inbounds %struct.acpiphp_bridge, %struct.acpiphp_bridge* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = or i32 %41, %38
  store i32 %42, i32* %40, align 8
  br label %43

43:                                               ; preds = %37, %30
  %44 = load %struct.acpiphp_bridge*, %struct.acpiphp_bridge** %2, align 8
  %45 = getelementptr inbounds %struct.acpiphp_bridge, %struct.acpiphp_bridge* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 8
  %47 = call i32 @acpi_get_handle(i32 %46, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i32* %3)
  %48 = call i64 @ACPI_SUCCESS(i32 %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %56

50:                                               ; preds = %43
  %51 = load i32, i32* @BRIDGE_HAS_PS3, align 4
  %52 = load %struct.acpiphp_bridge*, %struct.acpiphp_bridge** %2, align 8
  %53 = getelementptr inbounds %struct.acpiphp_bridge, %struct.acpiphp_bridge* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = or i32 %54, %51
  store i32 %55, i32* %53, align 8
  br label %56

56:                                               ; preds = %50, %43
  %57 = load %struct.acpiphp_bridge*, %struct.acpiphp_bridge** %2, align 8
  %58 = getelementptr inbounds %struct.acpiphp_bridge, %struct.acpiphp_bridge* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = load i32, i32* @BRIDGE_HAS_EJ0, align 4
  %61 = and i32 %59, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %79

63:                                               ; preds = %56
  %64 = call i32 @dbg(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0))
  %65 = load %struct.acpiphp_bridge*, %struct.acpiphp_bridge** %2, align 8
  %66 = getelementptr inbounds %struct.acpiphp_bridge, %struct.acpiphp_bridge* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 8
  %68 = call %struct.acpiphp_func* @acpiphp_bridge_handle_to_function(i32 %67)
  store %struct.acpiphp_func* %68, %struct.acpiphp_func** %4, align 8
  %69 = load %struct.acpiphp_func*, %struct.acpiphp_func** %4, align 8
  %70 = icmp ne %struct.acpiphp_func* %69, null
  br i1 %70, label %72, label %71

71:                                               ; preds = %63
  br label %79

72:                                               ; preds = %63
  %73 = load %struct.acpiphp_func*, %struct.acpiphp_func** %4, align 8
  %74 = load %struct.acpiphp_bridge*, %struct.acpiphp_bridge** %2, align 8
  %75 = getelementptr inbounds %struct.acpiphp_bridge, %struct.acpiphp_bridge* %74, i32 0, i32 1
  store %struct.acpiphp_func* %73, %struct.acpiphp_func** %75, align 8
  %76 = load %struct.acpiphp_bridge*, %struct.acpiphp_bridge** %2, align 8
  %77 = load %struct.acpiphp_func*, %struct.acpiphp_func** %4, align 8
  %78 = getelementptr inbounds %struct.acpiphp_func, %struct.acpiphp_func* %77, i32 0, i32 0
  store %struct.acpiphp_bridge* %76, %struct.acpiphp_bridge** %78, align 8
  br label %79

79:                                               ; preds = %71, %72, %56
  ret void
}

declare dso_local i64 @ACPI_SUCCESS(i32) #1

declare dso_local i32 @acpi_get_handle(i32, i8*, i32*) #1

declare dso_local i32 @dbg(i8*) #1

declare dso_local %struct.acpiphp_func* @acpiphp_bridge_handle_to_function(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
