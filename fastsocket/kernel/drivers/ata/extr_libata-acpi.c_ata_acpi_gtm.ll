; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/ata/extr_libata-acpi.c_ata_acpi_gtm.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/ata/extr_libata-acpi.c_ata_acpi_gtm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ata_port = type { i32 }
%struct.ata_acpi_gtm = type { i32 }
%struct.acpi_buffer = type { %union.acpi_object*, i32 }
%union.acpi_object = type { i64 }
%struct.TYPE_2__ = type { i32, i32 }

@ACPI_ALLOCATE_BUFFER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"_GTM\00", align 1
@ENOENT = common dso_local global i32 0, align 4
@AE_NOT_FOUND = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@KERN_ERR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [39 x i8] c"ACPI get timing mode failed (AE 0x%x)\0A\00", align 1
@ACPI_TYPE_BUFFER = common dso_local global i64 0, align 8
@KERN_WARNING = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [43 x i8] c"_GTM returned unexpected object type 0x%x\0A\00", align 1
@.str.3 = private unnamed_addr constant [33 x i8] c"_GTM returned invalid length %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ata_acpi_gtm(%struct.ata_port* %0, %struct.ata_acpi_gtm* %1) #0 {
  %3 = alloca %struct.ata_port*, align 8
  %4 = alloca %struct.ata_acpi_gtm*, align 8
  %5 = alloca %struct.acpi_buffer, align 8
  %6 = alloca %union.acpi_object*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.ata_port* %0, %struct.ata_port** %3, align 8
  store %struct.ata_acpi_gtm* %1, %struct.ata_acpi_gtm** %4, align 8
  %9 = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %5, i32 0, i32 0
  store %union.acpi_object* null, %union.acpi_object** %9, align 8
  %10 = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %5, i32 0, i32 1
  %11 = load i32, i32* @ACPI_ALLOCATE_BUFFER, align 4
  store i32 %11, i32* %10, align 8
  store i32 0, i32* %8, align 4
  %12 = load %struct.ata_port*, %struct.ata_port** %3, align 8
  %13 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i64 @acpi_evaluate_object(i32 %14, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32* null, %struct.acpi_buffer* %5)
  store i64 %15, i64* %7, align 8
  %16 = load i32, i32* @ENOENT, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %8, align 4
  %18 = load i64, i64* %7, align 8
  %19 = load i64, i64* @AE_NOT_FOUND, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %2
  br label %71

22:                                               ; preds = %2
  %23 = load i32, i32* @EINVAL, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %8, align 4
  %25 = load i64, i64* %7, align 8
  %26 = call i64 @ACPI_FAILURE(i64 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %33

28:                                               ; preds = %22
  %29 = load %struct.ata_port*, %struct.ata_port** %3, align 8
  %30 = load i32, i32* @KERN_ERR, align 4
  %31 = load i64, i64* %7, align 8
  %32 = call i32 @ata_port_printk(%struct.ata_port* %29, i32 %30, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i64 %31)
  br label %71

33:                                               ; preds = %22
  %34 = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %5, i32 0, i32 0
  %35 = load %union.acpi_object*, %union.acpi_object** %34, align 8
  store %union.acpi_object* %35, %union.acpi_object** %6, align 8
  %36 = load %union.acpi_object*, %union.acpi_object** %6, align 8
  %37 = bitcast %union.acpi_object* %36 to i64*
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @ACPI_TYPE_BUFFER, align 8
  %40 = icmp ne i64 %38, %39
  br i1 %40, label %41, label %48

41:                                               ; preds = %33
  %42 = load %struct.ata_port*, %struct.ata_port** %3, align 8
  %43 = load i32, i32* @KERN_WARNING, align 4
  %44 = load %union.acpi_object*, %union.acpi_object** %6, align 8
  %45 = bitcast %union.acpi_object* %44 to i64*
  %46 = load i64, i64* %45, align 8
  %47 = call i32 @ata_port_printk(%struct.ata_port* %42, i32 %43, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.2, i64 0, i64 0), i64 %46)
  br label %71

48:                                               ; preds = %33
  %49 = load %union.acpi_object*, %union.acpi_object** %6, align 8
  %50 = bitcast %union.acpi_object* %49 to %struct.TYPE_2__*
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = sext i32 %52 to i64
  %54 = icmp ne i64 %53, 4
  br i1 %54, label %55, label %64

55:                                               ; preds = %48
  %56 = load %struct.ata_port*, %struct.ata_port** %3, align 8
  %57 = load i32, i32* @KERN_ERR, align 4
  %58 = load %union.acpi_object*, %union.acpi_object** %6, align 8
  %59 = bitcast %union.acpi_object* %58 to %struct.TYPE_2__*
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = sext i32 %61 to i64
  %63 = call i32 @ata_port_printk(%struct.ata_port* %56, i32 %57, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0), i64 %62)
  br label %71

64:                                               ; preds = %48
  %65 = load %struct.ata_acpi_gtm*, %struct.ata_acpi_gtm** %4, align 8
  %66 = load %union.acpi_object*, %union.acpi_object** %6, align 8
  %67 = bitcast %union.acpi_object* %66 to %struct.TYPE_2__*
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @memcpy(%struct.ata_acpi_gtm* %65, i32 %69, i32 4)
  store i32 0, i32* %8, align 4
  br label %71

71:                                               ; preds = %64, %55, %41, %28, %21
  %72 = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %5, i32 0, i32 0
  %73 = load %union.acpi_object*, %union.acpi_object** %72, align 8
  %74 = call i32 @kfree(%union.acpi_object* %73)
  %75 = load i32, i32* %8, align 4
  ret i32 %75
}

declare dso_local i64 @acpi_evaluate_object(i32, i8*, i32*, %struct.acpi_buffer*) #1

declare dso_local i64 @ACPI_FAILURE(i64) #1

declare dso_local i32 @ata_port_printk(%struct.ata_port*, i32, i8*, i64) #1

declare dso_local i32 @memcpy(%struct.ata_acpi_gtm*, i32, i32) #1

declare dso_local i32 @kfree(%union.acpi_object*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
