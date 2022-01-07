; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/platforms/iseries/extr_pci.c_check_return_code.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/platforms/iseries/extr_pci.c_check_return_code.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device_node = type { i32 }
%struct.pci_dn = type { i32, i32 }

@.str = private unnamed_addr constant [53 x i8] c"PCI: %s: Device 0x%04X:%02X  I/O Error(%2d): 0x%04X\0A\00", align 1
@PCI_RETRY_MAX = common dso_local global i32 0, align 4
@limit_pci_retries = common dso_local global i64 0, align 8
@panic_timeout = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [67 x i8] c"PCI: Hardware I/O Error, SRC B6000103, Automatic Reboot Disabled.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.device_node*, i32*, i64)* @check_return_code to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_return_code(i8* %0, %struct.device_node* %1, i32* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.device_node*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.pci_dn*, align 8
  store i8* %0, i8** %6, align 8
  store %struct.device_node* %1, %struct.device_node** %7, align 8
  store i32* %2, i32** %8, align 8
  store i64 %3, i64* %9, align 8
  %11 = load i64, i64* %9, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %42

13:                                               ; preds = %4
  %14 = load %struct.device_node*, %struct.device_node** %7, align 8
  %15 = call %struct.pci_dn* @PCI_DN(%struct.device_node* %14)
  store %struct.pci_dn* %15, %struct.pci_dn** %10, align 8
  %16 = load i32*, i32** %8, align 8
  %17 = load i32, i32* %16, align 4
  %18 = add nsw i32 %17, 1
  store i32 %18, i32* %16, align 4
  %19 = load i8*, i8** %6, align 8
  %20 = load %struct.pci_dn*, %struct.pci_dn** %10, align 8
  %21 = getelementptr inbounds %struct.pci_dn, %struct.pci_dn* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.pci_dn*, %struct.pci_dn** %10, align 8
  %24 = getelementptr inbounds %struct.pci_dn, %struct.pci_dn* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32*, i32** %8, align 8
  %27 = load i32, i32* %26, align 4
  %28 = load i64, i64* %9, align 8
  %29 = trunc i64 %28 to i32
  %30 = call i32 @printk(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0), i8* %19, i32 %22, i32 %25, i32 %27, i32 %29)
  %31 = load i32*, i32** %8, align 8
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @PCI_RETRY_MAX, align 4
  %34 = icmp sgt i32 %32, %33
  br i1 %34, label %35, label %41

35:                                               ; preds = %13
  %36 = load i64, i64* @limit_pci_retries, align 8
  %37 = icmp sgt i64 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %35
  %39 = call i32 @mf_display_src(i32 -1241513725)
  store i64 0, i64* @panic_timeout, align 8
  %40 = call i32 @panic(i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.1, i64 0, i64 0))
  br label %41

41:                                               ; preds = %38, %35, %13
  store i32 -1, i32* %5, align 4
  br label %43

42:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %43

43:                                               ; preds = %42, %41
  %44 = load i32, i32* %5, align 4
  ret i32 %44
}

declare dso_local %struct.pci_dn* @PCI_DN(%struct.device_node*) #1

declare dso_local i32 @printk(i8*, i8*, i32, i32, i32, i32) #1

declare dso_local i32 @mf_display_src(i32) #1

declare dso_local i32 @panic(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
