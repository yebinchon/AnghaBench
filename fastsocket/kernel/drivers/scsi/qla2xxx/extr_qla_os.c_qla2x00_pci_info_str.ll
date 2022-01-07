; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/qla2xxx/extr_qla_os.c_qla2x00_pci_info_str.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/qla2xxx/extr_qla_os.c_qla2x00_pci_info_str.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_qla_host = type { %struct.qla_hw_data* }
%struct.qla_hw_data = type { i32 }

@qla2x00_pci_info_str.pci_bus_modes = internal global [4 x i8*] [i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i32 0, i32 0)], align 16
@.str = private unnamed_addr constant [3 x i8] c"33\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"66\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"100\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"133\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"PCI\00", align 1
@BIT_9 = common dso_local global i32 0, align 4
@BIT_10 = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [5 x i8] c"-X (\00", align 1
@BIT_8 = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [3 x i8] c" (\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c" MHz)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.scsi_qla_host*, i8*)* @qla2x00_pci_info_str to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @qla2x00_pci_info_str(%struct.scsi_qla_host* %0, i8* %1) #0 {
  %3 = alloca %struct.scsi_qla_host*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.qla_hw_data*, align 8
  %6 = alloca i32, align 4
  store %struct.scsi_qla_host* %0, %struct.scsi_qla_host** %3, align 8
  store i8* %1, i8** %4, align 8
  %7 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %3, align 8
  %8 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %7, i32 0, i32 0
  %9 = load %struct.qla_hw_data*, %struct.qla_hw_data** %8, align 8
  store %struct.qla_hw_data* %9, %struct.qla_hw_data** %5, align 8
  %10 = load i8*, i8** %4, align 8
  %11 = call i32 @strcpy(i8* %10, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0))
  %12 = load %struct.qla_hw_data*, %struct.qla_hw_data** %5, align 8
  %13 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @BIT_9, align 4
  %16 = load i32, i32* @BIT_10, align 4
  %17 = or i32 %15, %16
  %18 = and i32 %14, %17
  %19 = ashr i32 %18, 9
  store i32 %19, i32* %6, align 4
  %20 = load i32, i32* %6, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %31

22:                                               ; preds = %2
  %23 = load i8*, i8** %4, align 8
  %24 = call i32 @strcat(i8* %23, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0))
  %25 = load i8*, i8** %4, align 8
  %26 = load i32, i32* %6, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds [4 x i8*], [4 x i8*]* @qla2x00_pci_info_str.pci_bus_modes, i64 0, i64 %27
  %29 = load i8*, i8** %28, align 8
  %30 = call i32 @strcat(i8* %25, i8* %29)
  br label %46

31:                                               ; preds = %2
  %32 = load %struct.qla_hw_data*, %struct.qla_hw_data** %5, align 8
  %33 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @BIT_8, align 4
  %36 = and i32 %34, %35
  %37 = ashr i32 %36, 8
  store i32 %37, i32* %6, align 4
  %38 = load i8*, i8** %4, align 8
  %39 = call i32 @strcat(i8* %38, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0))
  %40 = load i8*, i8** %4, align 8
  %41 = load i32, i32* %6, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds [4 x i8*], [4 x i8*]* @qla2x00_pci_info_str.pci_bus_modes, i64 0, i64 %42
  %44 = load i8*, i8** %43, align 8
  %45 = call i32 @strcat(i8* %40, i8* %44)
  br label %46

46:                                               ; preds = %31, %22
  %47 = load i8*, i8** %4, align 8
  %48 = call i32 @strcat(i8* %47, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0))
  %49 = load i8*, i8** %4, align 8
  ret i8* %49
}

declare dso_local i32 @strcpy(i8*, i8*) #1

declare dso_local i32 @strcat(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
