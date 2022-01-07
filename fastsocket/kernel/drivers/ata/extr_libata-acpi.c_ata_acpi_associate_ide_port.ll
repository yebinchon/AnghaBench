; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/ata/extr_libata-acpi.c_ata_acpi_associate_ide_port.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/ata/extr_libata-acpi.c_ata_acpi_associate_ide_port.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ata_port = type { i32, i32, i32, i32, i8*, %struct.TYPE_3__, %struct.TYPE_4__* }
%struct.TYPE_3__ = type { %struct.ata_device* }
%struct.ata_device = type { i8* }
%struct.TYPE_4__ = type { i8* }

@ATA_FLAG_SLAVE_POSS = common dso_local global i32 0, align 4
@ATA_PFLAG_INIT_GTM_VALID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ata_port*)* @ata_acpi_associate_ide_port to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ata_acpi_associate_ide_port(%struct.ata_port* %0) #0 {
  %2 = alloca %struct.ata_port*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.ata_device*, align 8
  store %struct.ata_port* %0, %struct.ata_port** %2, align 8
  %6 = load %struct.ata_port*, %struct.ata_port** %2, align 8
  %7 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %6, i32 0, i32 6
  %8 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %10 = load i8*, i8** %9, align 8
  %11 = load %struct.ata_port*, %struct.ata_port** %2, align 8
  %12 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = call i8* @acpi_get_child(i8* %10, i32 %13)
  %15 = load %struct.ata_port*, %struct.ata_port** %2, align 8
  %16 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %15, i32 0, i32 4
  store i8* %14, i8** %16, align 8
  %17 = load %struct.ata_port*, %struct.ata_port** %2, align 8
  %18 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %17, i32 0, i32 4
  %19 = load i8*, i8** %18, align 8
  %20 = icmp ne i8* %19, null
  br i1 %20, label %22, label %21

21:                                               ; preds = %1
  br label %67

22:                                               ; preds = %1
  store i32 1, i32* %3, align 4
  %23 = load %struct.ata_port*, %struct.ata_port** %2, align 8
  %24 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @ATA_FLAG_SLAVE_POSS, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %22
  %30 = load i32, i32* %3, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %3, align 4
  br label %32

32:                                               ; preds = %29, %22
  store i32 0, i32* %4, align 4
  br label %33

33:                                               ; preds = %52, %32
  %34 = load i32, i32* %4, align 4
  %35 = load i32, i32* %3, align 4
  %36 = icmp slt i32 %34, %35
  br i1 %36, label %37, label %55

37:                                               ; preds = %33
  %38 = load %struct.ata_port*, %struct.ata_port** %2, align 8
  %39 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %38, i32 0, i32 5
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 0
  %41 = load %struct.ata_device*, %struct.ata_device** %40, align 8
  %42 = load i32, i32* %4, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %41, i64 %43
  store %struct.ata_device* %44, %struct.ata_device** %5, align 8
  %45 = load %struct.ata_port*, %struct.ata_port** %2, align 8
  %46 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %45, i32 0, i32 4
  %47 = load i8*, i8** %46, align 8
  %48 = load i32, i32* %4, align 4
  %49 = call i8* @acpi_get_child(i8* %47, i32 %48)
  %50 = load %struct.ata_device*, %struct.ata_device** %5, align 8
  %51 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %50, i32 0, i32 0
  store i8* %49, i8** %51, align 8
  br label %52

52:                                               ; preds = %37
  %53 = load i32, i32* %4, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %4, align 4
  br label %33

55:                                               ; preds = %33
  %56 = load %struct.ata_port*, %struct.ata_port** %2, align 8
  %57 = load %struct.ata_port*, %struct.ata_port** %2, align 8
  %58 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %57, i32 0, i32 3
  %59 = call i64 @ata_acpi_gtm(%struct.ata_port* %56, i32* %58)
  %60 = icmp eq i64 %59, 0
  br i1 %60, label %61, label %67

61:                                               ; preds = %55
  %62 = load i32, i32* @ATA_PFLAG_INIT_GTM_VALID, align 4
  %63 = load %struct.ata_port*, %struct.ata_port** %2, align 8
  %64 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 8
  %66 = or i32 %65, %62
  store i32 %66, i32* %64, align 8
  br label %67

67:                                               ; preds = %21, %61, %55
  ret void
}

declare dso_local i8* @acpi_get_child(i8*, i32) #1

declare dso_local i64 @ata_acpi_gtm(%struct.ata_port*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
