; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_hpet.c_hpet_resources.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_hpet.c_hpet_resources.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_resource = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.acpi_resource_extended_irq, %struct.acpi_resource_fixed_memory32 }
%struct.acpi_resource_extended_irq = type { i32, i32, i32, i32* }
%struct.acpi_resource_fixed_memory32 = type { i32 }
%struct.hpet_data = type { i32*, i64, i8*, i32 }
%struct.acpi_resource_address64 = type { i32, i32 }

@AE_ALREADY_EXISTS = common dso_local global i32 0, align 4
@ACPI_RESOURCE_TYPE_FIXED_MEMORY32 = common dso_local global i64 0, align 8
@AE_NO_MEMORY = common dso_local global i32 0, align 4
@HPET_RANGE_SIZE = common dso_local global i32 0, align 4
@ACPI_RESOURCE_TYPE_EXTENDED_IRQ = common dso_local global i64 0, align 8
@AE_ERROR = common dso_local global i32 0, align 4
@AE_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.acpi_resource*, i8*)* @hpet_resources to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hpet_resources(%struct.acpi_resource* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.acpi_resource*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.hpet_data*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.acpi_resource_address64, align 4
  %9 = alloca %struct.acpi_resource_fixed_memory32*, align 8
  %10 = alloca %struct.acpi_resource_extended_irq*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.acpi_resource* %0, %struct.acpi_resource** %4, align 8
  store i8* %1, i8** %5, align 8
  %13 = load i8*, i8** %5, align 8
  %14 = bitcast i8* %13 to %struct.hpet_data*
  store %struct.hpet_data* %14, %struct.hpet_data** %6, align 8
  %15 = load %struct.acpi_resource*, %struct.acpi_resource** %4, align 8
  %16 = call i32 @acpi_resource_to_address64(%struct.acpi_resource* %15, %struct.acpi_resource_address64* %8)
  store i32 %16, i32* %7, align 4
  %17 = load i32, i32* %7, align 4
  %18 = call i64 @ACPI_SUCCESS(i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %42

20:                                               ; preds = %2
  %21 = getelementptr inbounds %struct.acpi_resource_address64, %struct.acpi_resource_address64* %8, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.hpet_data*, %struct.hpet_data** %6, align 8
  %24 = getelementptr inbounds %struct.hpet_data, %struct.hpet_data* %23, i32 0, i32 3
  store i32 %22, i32* %24, align 8
  %25 = getelementptr inbounds %struct.acpi_resource_address64, %struct.acpi_resource_address64* %8, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = getelementptr inbounds %struct.acpi_resource_address64, %struct.acpi_resource_address64* %8, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i8* @ioremap(i32 %26, i32 %28)
  %30 = load %struct.hpet_data*, %struct.hpet_data** %6, align 8
  %31 = getelementptr inbounds %struct.hpet_data, %struct.hpet_data* %30, i32 0, i32 2
  store i8* %29, i8** %31, align 8
  %32 = load %struct.hpet_data*, %struct.hpet_data** %6, align 8
  %33 = call i64 @hpet_is_known(%struct.hpet_data* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %41

35:                                               ; preds = %20
  %36 = load %struct.hpet_data*, %struct.hpet_data** %6, align 8
  %37 = getelementptr inbounds %struct.hpet_data, %struct.hpet_data* %36, i32 0, i32 2
  %38 = load i8*, i8** %37, align 8
  %39 = call i32 @iounmap(i8* %38)
  %40 = load i32, i32* @AE_ALREADY_EXISTS, align 4
  store i32 %40, i32* %3, align 4
  br label %135

41:                                               ; preds = %20
  br label %133

42:                                               ; preds = %2
  %43 = load %struct.acpi_resource*, %struct.acpi_resource** %4, align 8
  %44 = getelementptr inbounds %struct.acpi_resource, %struct.acpi_resource* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @ACPI_RESOURCE_TYPE_FIXED_MEMORY32, align 8
  %47 = icmp eq i64 %45, %46
  br i1 %47, label %48, label %79

48:                                               ; preds = %42
  %49 = load %struct.acpi_resource*, %struct.acpi_resource** %4, align 8
  %50 = getelementptr inbounds %struct.acpi_resource, %struct.acpi_resource* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 1
  store %struct.acpi_resource_fixed_memory32* %51, %struct.acpi_resource_fixed_memory32** %9, align 8
  %52 = load %struct.acpi_resource_fixed_memory32*, %struct.acpi_resource_fixed_memory32** %9, align 8
  %53 = icmp ne %struct.acpi_resource_fixed_memory32* %52, null
  br i1 %53, label %56, label %54

54:                                               ; preds = %48
  %55 = load i32, i32* @AE_NO_MEMORY, align 4
  store i32 %55, i32* %3, align 4
  br label %135

56:                                               ; preds = %48
  %57 = load %struct.acpi_resource_fixed_memory32*, %struct.acpi_resource_fixed_memory32** %9, align 8
  %58 = getelementptr inbounds %struct.acpi_resource_fixed_memory32, %struct.acpi_resource_fixed_memory32* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.hpet_data*, %struct.hpet_data** %6, align 8
  %61 = getelementptr inbounds %struct.hpet_data, %struct.hpet_data* %60, i32 0, i32 3
  store i32 %59, i32* %61, align 8
  %62 = load %struct.acpi_resource_fixed_memory32*, %struct.acpi_resource_fixed_memory32** %9, align 8
  %63 = getelementptr inbounds %struct.acpi_resource_fixed_memory32, %struct.acpi_resource_fixed_memory32* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* @HPET_RANGE_SIZE, align 4
  %66 = call i8* @ioremap(i32 %64, i32 %65)
  %67 = load %struct.hpet_data*, %struct.hpet_data** %6, align 8
  %68 = getelementptr inbounds %struct.hpet_data, %struct.hpet_data* %67, i32 0, i32 2
  store i8* %66, i8** %68, align 8
  %69 = load %struct.hpet_data*, %struct.hpet_data** %6, align 8
  %70 = call i64 @hpet_is_known(%struct.hpet_data* %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %78

72:                                               ; preds = %56
  %73 = load %struct.hpet_data*, %struct.hpet_data** %6, align 8
  %74 = getelementptr inbounds %struct.hpet_data, %struct.hpet_data* %73, i32 0, i32 2
  %75 = load i8*, i8** %74, align 8
  %76 = call i32 @iounmap(i8* %75)
  %77 = load i32, i32* @AE_ALREADY_EXISTS, align 4
  store i32 %77, i32* %3, align 4
  br label %135

78:                                               ; preds = %56
  br label %132

79:                                               ; preds = %42
  %80 = load %struct.acpi_resource*, %struct.acpi_resource** %4, align 8
  %81 = getelementptr inbounds %struct.acpi_resource, %struct.acpi_resource* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = load i64, i64* @ACPI_RESOURCE_TYPE_EXTENDED_IRQ, align 8
  %84 = icmp eq i64 %82, %83
  br i1 %84, label %85, label %131

85:                                               ; preds = %79
  %86 = load %struct.acpi_resource*, %struct.acpi_resource** %4, align 8
  %87 = getelementptr inbounds %struct.acpi_resource, %struct.acpi_resource* %86, i32 0, i32 1
  %88 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %87, i32 0, i32 0
  store %struct.acpi_resource_extended_irq* %88, %struct.acpi_resource_extended_irq** %10, align 8
  store i32 0, i32* %11, align 4
  br label %89

89:                                               ; preds = %127, %85
  %90 = load i32, i32* %11, align 4
  %91 = load %struct.acpi_resource_extended_irq*, %struct.acpi_resource_extended_irq** %10, align 8
  %92 = getelementptr inbounds %struct.acpi_resource_extended_irq, %struct.acpi_resource_extended_irq* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = icmp slt i32 %90, %93
  br i1 %94, label %95, label %130

95:                                               ; preds = %89
  %96 = load %struct.acpi_resource_extended_irq*, %struct.acpi_resource_extended_irq** %10, align 8
  %97 = getelementptr inbounds %struct.acpi_resource_extended_irq, %struct.acpi_resource_extended_irq* %96, i32 0, i32 3
  %98 = load i32*, i32** %97, align 8
  %99 = load i32, i32* %11, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds i32, i32* %98, i64 %100
  %102 = load i32, i32* %101, align 4
  %103 = load %struct.acpi_resource_extended_irq*, %struct.acpi_resource_extended_irq** %10, align 8
  %104 = getelementptr inbounds %struct.acpi_resource_extended_irq, %struct.acpi_resource_extended_irq* %103, i32 0, i32 2
  %105 = load i32, i32* %104, align 8
  %106 = load %struct.acpi_resource_extended_irq*, %struct.acpi_resource_extended_irq** %10, align 8
  %107 = getelementptr inbounds %struct.acpi_resource_extended_irq, %struct.acpi_resource_extended_irq* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 4
  %109 = call i32 @acpi_register_gsi(i32* null, i32 %102, i32 %105, i32 %108)
  store i32 %109, i32* %12, align 4
  %110 = load i32, i32* %12, align 4
  %111 = icmp slt i32 %110, 0
  br i1 %111, label %112, label %114

112:                                              ; preds = %95
  %113 = load i32, i32* @AE_ERROR, align 4
  store i32 %113, i32* %3, align 4
  br label %135

114:                                              ; preds = %95
  %115 = load i32, i32* %12, align 4
  %116 = load %struct.hpet_data*, %struct.hpet_data** %6, align 8
  %117 = getelementptr inbounds %struct.hpet_data, %struct.hpet_data* %116, i32 0, i32 0
  %118 = load i32*, i32** %117, align 8
  %119 = load %struct.hpet_data*, %struct.hpet_data** %6, align 8
  %120 = getelementptr inbounds %struct.hpet_data, %struct.hpet_data* %119, i32 0, i32 1
  %121 = load i64, i64* %120, align 8
  %122 = getelementptr inbounds i32, i32* %118, i64 %121
  store i32 %115, i32* %122, align 4
  %123 = load %struct.hpet_data*, %struct.hpet_data** %6, align 8
  %124 = getelementptr inbounds %struct.hpet_data, %struct.hpet_data* %123, i32 0, i32 1
  %125 = load i64, i64* %124, align 8
  %126 = add i64 %125, 1
  store i64 %126, i64* %124, align 8
  br label %127

127:                                              ; preds = %114
  %128 = load i32, i32* %11, align 4
  %129 = add nsw i32 %128, 1
  store i32 %129, i32* %11, align 4
  br label %89

130:                                              ; preds = %89
  br label %131

131:                                              ; preds = %130, %79
  br label %132

132:                                              ; preds = %131, %78
  br label %133

133:                                              ; preds = %132, %41
  %134 = load i32, i32* @AE_OK, align 4
  store i32 %134, i32* %3, align 4
  br label %135

135:                                              ; preds = %133, %112, %72, %54, %35
  %136 = load i32, i32* %3, align 4
  ret i32 %136
}

declare dso_local i32 @acpi_resource_to_address64(%struct.acpi_resource*, %struct.acpi_resource_address64*) #1

declare dso_local i64 @ACPI_SUCCESS(i32) #1

declare dso_local i8* @ioremap(i32, i32) #1

declare dso_local i64 @hpet_is_known(%struct.hpet_data*) #1

declare dso_local i32 @iounmap(i8*) #1

declare dso_local i32 @acpi_register_gsi(i32*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
