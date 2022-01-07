; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/platforms/pseries/extr_msi.c_rtas_change_msi.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/platforms/pseries/extr_msi.c_rtas_change_msi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dn = type { %struct.TYPE_2__*, i32, i32 }
%struct.TYPE_2__ = type { i64 }

@RTAS_CHANGE_MSI_FN = common dso_local global i32 0, align 4
@RTAS_CHANGE_MSIX_FN = common dso_local global i32 0, align 4
@change_token = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [58 x i8] c"rtas_msi: ibm,change_msi(func=%d,num=%d), got %d rc = %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_dn*, i32, i32)* @rtas_change_msi to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rtas_change_msi(%struct.pci_dn* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.pci_dn*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca [3 x i32], align 4
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store %struct.pci_dn* %0, %struct.pci_dn** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %12 = load %struct.pci_dn*, %struct.pci_dn** %4, align 8
  %13 = getelementptr inbounds %struct.pci_dn, %struct.pci_dn* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.pci_dn*, %struct.pci_dn** %4, align 8
  %16 = getelementptr inbounds %struct.pci_dn, %struct.pci_dn* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 8
  %18 = call i32 @rtas_config_addr(i32 %14, i32 %17, i32 0)
  store i32 %18, i32* %7, align 4
  %19 = load %struct.pci_dn*, %struct.pci_dn** %4, align 8
  %20 = getelementptr inbounds %struct.pci_dn, %struct.pci_dn* %19, i32 0, i32 0
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  store i64 %23, i64* %10, align 8
  store i32 1, i32* %8, align 4
  br label %24

24:                                               ; preds = %59, %3
  %25 = load i32, i32* %5, align 4
  %26 = load i32, i32* @RTAS_CHANGE_MSI_FN, align 4
  %27 = icmp eq i32 %25, %26
  br i1 %27, label %32, label %28

28:                                               ; preds = %24
  %29 = load i32, i32* %5, align 4
  %30 = load i32, i32* @RTAS_CHANGE_MSIX_FN, align 4
  %31 = icmp eq i32 %29, %30
  br i1 %31, label %32, label %44

32:                                               ; preds = %28, %24
  %33 = load i32, i32* @change_token, align 4
  %34 = getelementptr inbounds [3 x i32], [3 x i32]* %9, i64 0, i64 0
  %35 = load i32, i32* %7, align 4
  %36 = load i64, i64* %10, align 8
  %37 = call i32 @BUID_HI(i64 %36)
  %38 = load i64, i64* %10, align 8
  %39 = call i32 @BUID_LO(i64 %38)
  %40 = load i32, i32* %5, align 4
  %41 = load i32, i32* %6, align 4
  %42 = load i32, i32* %8, align 4
  %43 = call i32 @rtas_call(i32 %33, i32 6, i32 4, i32* %34, i32 %35, i32 %37, i32 %39, i32 %40, i32 %41, i32 %42)
  store i32 %43, i32* %11, align 4
  br label %56

44:                                               ; preds = %28
  %45 = load i32, i32* @change_token, align 4
  %46 = getelementptr inbounds [3 x i32], [3 x i32]* %9, i64 0, i64 0
  %47 = load i32, i32* %7, align 4
  %48 = load i64, i64* %10, align 8
  %49 = call i32 @BUID_HI(i64 %48)
  %50 = load i64, i64* %10, align 8
  %51 = call i32 @BUID_LO(i64 %50)
  %52 = load i32, i32* %5, align 4
  %53 = load i32, i32* %6, align 4
  %54 = load i32, i32* %8, align 4
  %55 = call i32 @rtas_call(i32 %45, i32 6, i32 3, i32* %46, i32 %47, i32 %49, i32 %51, i32 %52, i32 %53, i32 %54)
  store i32 %55, i32* %11, align 4
  br label %56

56:                                               ; preds = %44, %32
  %57 = getelementptr inbounds [3 x i32], [3 x i32]* %9, i64 0, i64 1
  %58 = load i32, i32* %57, align 4
  store i32 %58, i32* %8, align 4
  br label %59

59:                                               ; preds = %56
  %60 = load i32, i32* %11, align 4
  %61 = call i64 @rtas_busy_delay(i32 %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %24, label %63

63:                                               ; preds = %59
  %64 = load i32, i32* %11, align 4
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %66, label %69

66:                                               ; preds = %63
  %67 = getelementptr inbounds [3 x i32], [3 x i32]* %9, i64 0, i64 0
  %68 = load i32, i32* %67, align 4
  store i32 %68, i32* %11, align 4
  br label %76

69:                                               ; preds = %63
  %70 = load i32, i32* %11, align 4
  %71 = icmp sgt i32 %70, 0
  br i1 %71, label %72, label %75

72:                                               ; preds = %69
  %73 = load i32, i32* %11, align 4
  %74 = sub nsw i32 0, %73
  store i32 %74, i32* %11, align 4
  br label %75

75:                                               ; preds = %72, %69
  br label %76

76:                                               ; preds = %75, %66
  %77 = load i32, i32* %5, align 4
  %78 = load i32, i32* %6, align 4
  %79 = getelementptr inbounds [3 x i32], [3 x i32]* %9, i64 0, i64 0
  %80 = load i32, i32* %79, align 4
  %81 = load i32, i32* %11, align 4
  %82 = call i32 @pr_debug(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str, i64 0, i64 0), i32 %77, i32 %78, i32 %80, i32 %81)
  %83 = load i32, i32* %11, align 4
  ret i32 %83
}

declare dso_local i32 @rtas_config_addr(i32, i32, i32) #1

declare dso_local i32 @rtas_call(i32, i32, i32, i32*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @BUID_HI(i64) #1

declare dso_local i32 @BUID_LO(i64) #1

declare dso_local i64 @rtas_busy_delay(i32) #1

declare dso_local i32 @pr_debug(i8*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
