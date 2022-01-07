; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/ata/extr_libata-acpi.c_ata_acpi_dissociate.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/ata/extr_libata-acpi.c_ata_acpi_dissociate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ata_host = type { i32, %struct.ata_port** }
%struct.ata_port = type { i64 }
%struct.ata_acpi_gtm = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ata_acpi_dissociate(%struct.ata_host* %0) #0 {
  %2 = alloca %struct.ata_host*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.ata_port*, align 8
  %5 = alloca %struct.ata_acpi_gtm*, align 8
  store %struct.ata_host* %0, %struct.ata_host** %2, align 8
  store i32 0, i32* %3, align 4
  br label %6

6:                                                ; preds = %34, %1
  %7 = load i32, i32* %3, align 4
  %8 = load %struct.ata_host*, %struct.ata_host** %2, align 8
  %9 = getelementptr inbounds %struct.ata_host, %struct.ata_host* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = icmp slt i32 %7, %10
  br i1 %11, label %12, label %37

12:                                               ; preds = %6
  %13 = load %struct.ata_host*, %struct.ata_host** %2, align 8
  %14 = getelementptr inbounds %struct.ata_host, %struct.ata_host* %13, i32 0, i32 1
  %15 = load %struct.ata_port**, %struct.ata_port*** %14, align 8
  %16 = load i32, i32* %3, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds %struct.ata_port*, %struct.ata_port** %15, i64 %17
  %19 = load %struct.ata_port*, %struct.ata_port** %18, align 8
  store %struct.ata_port* %19, %struct.ata_port** %4, align 8
  %20 = load %struct.ata_port*, %struct.ata_port** %4, align 8
  %21 = call %struct.ata_acpi_gtm* @ata_acpi_init_gtm(%struct.ata_port* %20)
  store %struct.ata_acpi_gtm* %21, %struct.ata_acpi_gtm** %5, align 8
  %22 = load %struct.ata_port*, %struct.ata_port** %4, align 8
  %23 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %33

26:                                               ; preds = %12
  %27 = load %struct.ata_acpi_gtm*, %struct.ata_acpi_gtm** %5, align 8
  %28 = icmp ne %struct.ata_acpi_gtm* %27, null
  br i1 %28, label %29, label %33

29:                                               ; preds = %26
  %30 = load %struct.ata_port*, %struct.ata_port** %4, align 8
  %31 = load %struct.ata_acpi_gtm*, %struct.ata_acpi_gtm** %5, align 8
  %32 = call i32 @ata_acpi_stm(%struct.ata_port* %30, %struct.ata_acpi_gtm* %31)
  br label %33

33:                                               ; preds = %29, %26, %12
  br label %34

34:                                               ; preds = %33
  %35 = load i32, i32* %3, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %3, align 4
  br label %6

37:                                               ; preds = %6
  ret void
}

declare dso_local %struct.ata_acpi_gtm* @ata_acpi_init_gtm(%struct.ata_port*) #1

declare dso_local i32 @ata_acpi_stm(%struct.ata_port*, %struct.ata_acpi_gtm*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
