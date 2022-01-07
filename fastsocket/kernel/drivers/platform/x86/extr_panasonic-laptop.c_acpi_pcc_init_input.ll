; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/platform/x86/extr_panasonic-laptop.c_acpi_pcc_init_input.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/platform/x86/extr_panasonic-laptop.c_acpi_pcc_init_input.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pcc_acpi = type { %struct.TYPE_7__*, i32* }
%struct.TYPE_7__ = type { i32, i32, i32, %struct.TYPE_6__, i32, i32, i32* }
%struct.TYPE_6__ = type { i32, i32, i32, i32 }

@ACPI_DB_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"Couldn't allocate input device for hotkey\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@EV_KEY = common dso_local global i32 0, align 4
@ACPI_PCC_DRIVER_NAME = common dso_local global i32 0, align 4
@ACPI_PCC_INPUT_PHYS = common dso_local global i32 0, align 4
@BUS_HOST = common dso_local global i32 0, align 4
@pcc_getkeycode = common dso_local global i32 0, align 4
@pcc_setkeycode = common dso_local global i32 0, align 4
@initial_keymap = common dso_local global i32 0, align 4
@KEY_RESERVED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pcc_acpi*)* @acpi_pcc_init_input to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @acpi_pcc_init_input(%struct.pcc_acpi* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pcc_acpi*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.pcc_acpi* %0, %struct.pcc_acpi** %3, align 8
  %6 = call %struct.TYPE_7__* (...) @input_allocate_device()
  %7 = load %struct.pcc_acpi*, %struct.pcc_acpi** %3, align 8
  %8 = getelementptr inbounds %struct.pcc_acpi, %struct.pcc_acpi* %7, i32 0, i32 0
  store %struct.TYPE_7__* %6, %struct.TYPE_7__** %8, align 8
  %9 = load %struct.pcc_acpi*, %struct.pcc_acpi** %3, align 8
  %10 = getelementptr inbounds %struct.pcc_acpi, %struct.pcc_acpi* %9, i32 0, i32 0
  %11 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %12 = icmp ne %struct.TYPE_7__* %11, null
  br i1 %12, label %18, label %13

13:                                               ; preds = %1
  %14 = load i32, i32* @ACPI_DB_ERROR, align 4
  %15 = call i32 @ACPI_DEBUG_PRINT(i32 ptrtoint ([42 x i8]* @.str to i32))
  %16 = load i32, i32* @ENOMEM, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %2, align 4
  br label %123

18:                                               ; preds = %1
  %19 = load i32, i32* @EV_KEY, align 4
  %20 = call i32 @BIT(i32 %19)
  %21 = load %struct.pcc_acpi*, %struct.pcc_acpi** %3, align 8
  %22 = getelementptr inbounds %struct.pcc_acpi, %struct.pcc_acpi* %21, i32 0, i32 0
  %23 = load %struct.TYPE_7__*, %struct.TYPE_7__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 6
  %25 = load i32*, i32** %24, align 8
  %26 = getelementptr inbounds i32, i32* %25, i64 0
  store i32 %20, i32* %26, align 4
  %27 = load i32, i32* @ACPI_PCC_DRIVER_NAME, align 4
  %28 = load %struct.pcc_acpi*, %struct.pcc_acpi** %3, align 8
  %29 = getelementptr inbounds %struct.pcc_acpi, %struct.pcc_acpi* %28, i32 0, i32 0
  %30 = load %struct.TYPE_7__*, %struct.TYPE_7__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i32 0, i32 5
  store i32 %27, i32* %31, align 8
  %32 = load i32, i32* @ACPI_PCC_INPUT_PHYS, align 4
  %33 = load %struct.pcc_acpi*, %struct.pcc_acpi** %3, align 8
  %34 = getelementptr inbounds %struct.pcc_acpi, %struct.pcc_acpi* %33, i32 0, i32 0
  %35 = load %struct.TYPE_7__*, %struct.TYPE_7__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i32 0, i32 4
  store i32 %32, i32* %36, align 4
  %37 = load i32, i32* @BUS_HOST, align 4
  %38 = load %struct.pcc_acpi*, %struct.pcc_acpi** %3, align 8
  %39 = getelementptr inbounds %struct.pcc_acpi, %struct.pcc_acpi* %38, i32 0, i32 0
  %40 = load %struct.TYPE_7__*, %struct.TYPE_7__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %40, i32 0, i32 3
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 3
  store i32 %37, i32* %42, align 4
  %43 = load %struct.pcc_acpi*, %struct.pcc_acpi** %3, align 8
  %44 = getelementptr inbounds %struct.pcc_acpi, %struct.pcc_acpi* %43, i32 0, i32 0
  %45 = load %struct.TYPE_7__*, %struct.TYPE_7__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %45, i32 0, i32 3
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 0
  store i32 1, i32* %47, align 4
  %48 = load %struct.pcc_acpi*, %struct.pcc_acpi** %3, align 8
  %49 = getelementptr inbounds %struct.pcc_acpi, %struct.pcc_acpi* %48, i32 0, i32 0
  %50 = load %struct.TYPE_7__*, %struct.TYPE_7__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %50, i32 0, i32 3
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 1
  store i32 1, i32* %52, align 4
  %53 = load %struct.pcc_acpi*, %struct.pcc_acpi** %3, align 8
  %54 = getelementptr inbounds %struct.pcc_acpi, %struct.pcc_acpi* %53, i32 0, i32 0
  %55 = load %struct.TYPE_7__*, %struct.TYPE_7__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %55, i32 0, i32 3
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 2
  store i32 256, i32* %57, align 4
  %58 = load i32, i32* @pcc_getkeycode, align 4
  %59 = load %struct.pcc_acpi*, %struct.pcc_acpi** %3, align 8
  %60 = getelementptr inbounds %struct.pcc_acpi, %struct.pcc_acpi* %59, i32 0, i32 0
  %61 = load %struct.TYPE_7__*, %struct.TYPE_7__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %61, i32 0, i32 2
  store i32 %58, i32* %62, align 8
  %63 = load i32, i32* @pcc_setkeycode, align 4
  %64 = load %struct.pcc_acpi*, %struct.pcc_acpi** %3, align 8
  %65 = getelementptr inbounds %struct.pcc_acpi, %struct.pcc_acpi* %64, i32 0, i32 0
  %66 = load %struct.TYPE_7__*, %struct.TYPE_7__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %66, i32 0, i32 1
  store i32 %63, i32* %67, align 4
  %68 = load %struct.pcc_acpi*, %struct.pcc_acpi** %3, align 8
  %69 = getelementptr inbounds %struct.pcc_acpi, %struct.pcc_acpi* %68, i32 0, i32 1
  %70 = load i32*, i32** %69, align 8
  %71 = load i32, i32* @initial_keymap, align 4
  %72 = call i32 @memcpy(i32* %70, i32 %71, i32 8)
  store i32 0, i32* %4, align 4
  br label %73

73:                                               ; preds = %94, %18
  %74 = load i32, i32* %4, align 4
  %75 = load %struct.pcc_acpi*, %struct.pcc_acpi** %3, align 8
  %76 = getelementptr inbounds %struct.pcc_acpi, %struct.pcc_acpi* %75, i32 0, i32 1
  %77 = load i32*, i32** %76, align 8
  %78 = call i32 @ARRAY_SIZE(i32* %77)
  %79 = icmp slt i32 %74, %78
  br i1 %79, label %80, label %97

80:                                               ; preds = %73
  %81 = load %struct.pcc_acpi*, %struct.pcc_acpi** %3, align 8
  %82 = getelementptr inbounds %struct.pcc_acpi, %struct.pcc_acpi* %81, i32 0, i32 1
  %83 = load i32*, i32** %82, align 8
  %84 = load i32, i32* %4, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds i32, i32* %83, i64 %85
  %87 = load i32, i32* %86, align 4
  %88 = load %struct.pcc_acpi*, %struct.pcc_acpi** %3, align 8
  %89 = getelementptr inbounds %struct.pcc_acpi, %struct.pcc_acpi* %88, i32 0, i32 0
  %90 = load %struct.TYPE_7__*, %struct.TYPE_7__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = call i32 @__set_bit(i32 %87, i32 %92)
  br label %94

94:                                               ; preds = %80
  %95 = load i32, i32* %4, align 4
  %96 = add nsw i32 %95, 1
  store i32 %96, i32* %4, align 4
  br label %73

97:                                               ; preds = %73
  %98 = load i32, i32* @KEY_RESERVED, align 4
  %99 = load %struct.pcc_acpi*, %struct.pcc_acpi** %3, align 8
  %100 = getelementptr inbounds %struct.pcc_acpi, %struct.pcc_acpi* %99, i32 0, i32 0
  %101 = load %struct.TYPE_7__*, %struct.TYPE_7__** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = call i32 @__clear_bit(i32 %98, i32 %103)
  %105 = load %struct.pcc_acpi*, %struct.pcc_acpi** %3, align 8
  %106 = getelementptr inbounds %struct.pcc_acpi, %struct.pcc_acpi* %105, i32 0, i32 0
  %107 = load %struct.TYPE_7__*, %struct.TYPE_7__** %106, align 8
  %108 = load %struct.pcc_acpi*, %struct.pcc_acpi** %3, align 8
  %109 = call i32 @input_set_drvdata(%struct.TYPE_7__* %107, %struct.pcc_acpi* %108)
  %110 = load %struct.pcc_acpi*, %struct.pcc_acpi** %3, align 8
  %111 = getelementptr inbounds %struct.pcc_acpi, %struct.pcc_acpi* %110, i32 0, i32 0
  %112 = load %struct.TYPE_7__*, %struct.TYPE_7__** %111, align 8
  %113 = call i32 @input_register_device(%struct.TYPE_7__* %112)
  store i32 %113, i32* %5, align 4
  %114 = load i32, i32* %5, align 4
  %115 = icmp slt i32 %114, 0
  br i1 %115, label %116, label %121

116:                                              ; preds = %97
  %117 = load %struct.pcc_acpi*, %struct.pcc_acpi** %3, align 8
  %118 = getelementptr inbounds %struct.pcc_acpi, %struct.pcc_acpi* %117, i32 0, i32 0
  %119 = load %struct.TYPE_7__*, %struct.TYPE_7__** %118, align 8
  %120 = call i32 @input_free_device(%struct.TYPE_7__* %119)
  br label %121

121:                                              ; preds = %116, %97
  %122 = load i32, i32* %5, align 4
  store i32 %122, i32* %2, align 4
  br label %123

123:                                              ; preds = %121, %13
  %124 = load i32, i32* %2, align 4
  ret i32 %124
}

declare dso_local %struct.TYPE_7__* @input_allocate_device(...) #1

declare dso_local i32 @ACPI_DEBUG_PRINT(i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @memcpy(i32*, i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @__set_bit(i32, i32) #1

declare dso_local i32 @__clear_bit(i32, i32) #1

declare dso_local i32 @input_set_drvdata(%struct.TYPE_7__*, %struct.pcc_acpi*) #1

declare dso_local i32 @input_register_device(%struct.TYPE_7__*) #1

declare dso_local i32 @input_free_device(%struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
