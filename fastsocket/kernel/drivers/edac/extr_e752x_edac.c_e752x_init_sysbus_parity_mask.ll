; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/edac/extr_e752x_edac.c_e752x_init_sysbus_parity_mask.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/edac/extr_e752x_edac.c_e752x_init_sysbus_parity_mask.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e752x_pvt = type { %struct.pci_dev* }
%struct.pci_dev = type { i32 }
%struct.TYPE_2__ = type { i8* }

@sysbus_parity = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"Pentium\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c" M \00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"Celeron\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"Core\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"Duo\00", align 1
@KERN_INFO = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [51 x i8] c"System Bus Parity not supported by CPU, disabling\0A\00", align 1
@E752X_SYSBUS_ERRMASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.e752x_pvt*)* @e752x_init_sysbus_parity_mask to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @e752x_init_sysbus_parity_mask(%struct.e752x_pvt* %0) #0 {
  %2 = alloca %struct.e752x_pvt*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca %struct.TYPE_2__, align 8
  %5 = alloca %struct.pci_dev*, align 8
  %6 = alloca i32, align 4
  store %struct.e752x_pvt* %0, %struct.e752x_pvt** %2, align 8
  %7 = call i8* @cpu_data(i32 0)
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %4, i32 0, i32 0
  store i8* %7, i8** %8, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %4, i32 0, i32 0
  %10 = load i8*, i8** %9, align 8
  store i8* %10, i8** %3, align 8
  %11 = load %struct.e752x_pvt*, %struct.e752x_pvt** %2, align 8
  %12 = getelementptr inbounds %struct.e752x_pvt, %struct.e752x_pvt* %11, i32 0, i32 0
  %13 = load %struct.pci_dev*, %struct.pci_dev** %12, align 8
  store %struct.pci_dev* %13, %struct.pci_dev** %5, align 8
  store i32 1, i32* %6, align 4
  %14 = load i32, i32* @sysbus_parity, align 4
  %15 = icmp ne i32 %14, -1
  br i1 %15, label %16, label %18

16:                                               ; preds = %1
  %17 = load i32, i32* @sysbus_parity, align 4
  store i32 %17, i32* %6, align 4
  br label %52

18:                                               ; preds = %1
  %19 = load i8*, i8** %3, align 8
  %20 = getelementptr inbounds i8, i8* %19, i64 0
  %21 = load i8, i8* %20, align 1
  %22 = sext i8 %21 to i32
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %51

24:                                               ; preds = %18
  %25 = load i8*, i8** %3, align 8
  %26 = call i64 @strstr(i8* %25, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %24
  %29 = load i8*, i8** %3, align 8
  %30 = call i64 @strstr(i8* %29, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %48, label %32

32:                                               ; preds = %28, %24
  %33 = load i8*, i8** %3, align 8
  %34 = call i64 @strstr(i8* %33, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0))
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %40

36:                                               ; preds = %32
  %37 = load i8*, i8** %3, align 8
  %38 = call i64 @strstr(i8* %37, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %48, label %40

40:                                               ; preds = %36, %32
  %41 = load i8*, i8** %3, align 8
  %42 = call i64 @strstr(i8* %41, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %51

44:                                               ; preds = %40
  %45 = load i8*, i8** %3, align 8
  %46 = call i64 @strstr(i8* %45, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0))
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %44, %36, %28
  %49 = load i32, i32* @KERN_INFO, align 4
  %50 = call i32 @e752x_printk(i32 %49, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.5, i64 0, i64 0))
  store i32 0, i32* %6, align 4
  br label %51

51:                                               ; preds = %48, %44, %40, %18
  br label %52

52:                                               ; preds = %51, %16
  %53 = load i32, i32* %6, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %59

55:                                               ; preds = %52
  %56 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %57 = load i32, i32* @E752X_SYSBUS_ERRMASK, align 4
  %58 = call i32 @pci_write_config_word(%struct.pci_dev* %56, i32 %57, i32 0)
  br label %63

59:                                               ; preds = %52
  %60 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %61 = load i32, i32* @E752X_SYSBUS_ERRMASK, align 4
  %62 = call i32 @pci_write_config_word(%struct.pci_dev* %60, i32 %61, i32 777)
  br label %63

63:                                               ; preds = %59, %55
  ret void
}

declare dso_local i8* @cpu_data(i32) #1

declare dso_local i64 @strstr(i8*, i8*) #1

declare dso_local i32 @e752x_printk(i32, i8*) #1

declare dso_local i32 @pci_write_config_word(%struct.pci_dev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
