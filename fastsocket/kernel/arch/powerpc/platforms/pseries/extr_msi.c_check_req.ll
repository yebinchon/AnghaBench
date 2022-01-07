; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/platforms/pseries/extr_msi.c_check_req.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/platforms/pseries/extr_msi.c_check_req.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }
%struct.device_node = type { i32 }
%struct.pci_dn = type { %struct.device_node* }

@ENODEV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"rtas_msi: No %s on %s\0A\00", align 1
@ENOENT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"rtas_msi: %s requests < %d MSIs\0A\00", align 1
@ENOSPC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_dev*, i32, i8*)* @check_req to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_req(%struct.pci_dev* %0, i32 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.pci_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca %struct.device_node*, align 8
  %9 = alloca %struct.pci_dn*, align 8
  %10 = alloca i32*, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  %11 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %12 = call %struct.pci_dn* @get_pdn(%struct.pci_dev* %11)
  store %struct.pci_dn* %12, %struct.pci_dn** %9, align 8
  %13 = load %struct.pci_dn*, %struct.pci_dn** %9, align 8
  %14 = icmp ne %struct.pci_dn* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %3
  %16 = load i32, i32* @ENODEV, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %4, align 4
  br label %54

18:                                               ; preds = %3
  %19 = load %struct.pci_dn*, %struct.pci_dn** %9, align 8
  %20 = getelementptr inbounds %struct.pci_dn, %struct.pci_dn* %19, i32 0, i32 0
  %21 = load %struct.device_node*, %struct.device_node** %20, align 8
  store %struct.device_node* %21, %struct.device_node** %8, align 8
  %22 = load %struct.device_node*, %struct.device_node** %8, align 8
  %23 = load i8*, i8** %7, align 8
  %24 = call i32* @of_get_property(%struct.device_node* %22, i8* %23, i32* null)
  store i32* %24, i32** %10, align 8
  %25 = load i32*, i32** %10, align 8
  %26 = icmp ne i32* %25, null
  br i1 %26, label %35, label %27

27:                                               ; preds = %18
  %28 = load i8*, i8** %7, align 8
  %29 = load %struct.device_node*, %struct.device_node** %8, align 8
  %30 = getelementptr inbounds %struct.device_node, %struct.device_node* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @pr_debug(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i8* %28, i32 %31)
  %33 = load i32, i32* @ENOENT, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %4, align 4
  br label %54

35:                                               ; preds = %18
  %36 = load i32*, i32** %10, align 8
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* %6, align 4
  %39 = icmp slt i32 %37, %38
  br i1 %39, label %40, label %53

40:                                               ; preds = %35
  %41 = load i8*, i8** %7, align 8
  %42 = load i32, i32* %6, align 4
  %43 = call i32 @pr_debug(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i8* %41, i32 %42)
  %44 = load i32*, i32** %10, align 8
  %45 = load i32, i32* %44, align 4
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %40
  %48 = load i32, i32* @ENOSPC, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %4, align 4
  br label %54

50:                                               ; preds = %40
  %51 = load i32*, i32** %10, align 8
  %52 = load i32, i32* %51, align 4
  store i32 %52, i32* %4, align 4
  br label %54

53:                                               ; preds = %35
  store i32 0, i32* %4, align 4
  br label %54

54:                                               ; preds = %53, %50, %47, %27, %15
  %55 = load i32, i32* %4, align 4
  ret i32 %55
}

declare dso_local %struct.pci_dn* @get_pdn(%struct.pci_dev*) #1

declare dso_local i32* @of_get_property(%struct.device_node*, i8*, i32*) #1

declare dso_local i32 @pr_debug(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
