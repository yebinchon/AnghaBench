; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/sparc/kernel/extr_pci_msi.c_msi_table_alloc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/sparc/kernel/extr_pci_msi.c_msi_table_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_pbm_info = type { i32, i32, %struct.sparc64_msiq_cookie*, i8*, i64 }
%struct.sparc64_msiq_cookie = type { i64, %struct.pci_pbm_info* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_pbm_info*)* @msi_table_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @msi_table_alloc(%struct.pci_pbm_info* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pci_pbm_info*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.sparc64_msiq_cookie*, align 8
  store %struct.pci_pbm_info* %0, %struct.pci_pbm_info** %3, align 8
  %7 = load %struct.pci_pbm_info*, %struct.pci_pbm_info** %3, align 8
  %8 = getelementptr inbounds %struct.pci_pbm_info, %struct.pci_pbm_info* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = sext i32 %9 to i64
  %11 = mul i64 %10, 16
  %12 = trunc i64 %11 to i32
  store i32 %12, i32* %4, align 4
  %13 = load i32, i32* %4, align 4
  %14 = load i32, i32* @GFP_KERNEL, align 4
  %15 = call i8* @kzalloc(i32 %13, i32 %14)
  %16 = bitcast i8* %15 to %struct.sparc64_msiq_cookie*
  %17 = load %struct.pci_pbm_info*, %struct.pci_pbm_info** %3, align 8
  %18 = getelementptr inbounds %struct.pci_pbm_info, %struct.pci_pbm_info* %17, i32 0, i32 2
  store %struct.sparc64_msiq_cookie* %16, %struct.sparc64_msiq_cookie** %18, align 8
  %19 = load %struct.pci_pbm_info*, %struct.pci_pbm_info** %3, align 8
  %20 = getelementptr inbounds %struct.pci_pbm_info, %struct.pci_pbm_info* %19, i32 0, i32 2
  %21 = load %struct.sparc64_msiq_cookie*, %struct.sparc64_msiq_cookie** %20, align 8
  %22 = icmp ne %struct.sparc64_msiq_cookie* %21, null
  br i1 %22, label %26, label %23

23:                                               ; preds = %1
  %24 = load i32, i32* @ENOMEM, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %2, align 4
  br label %80

26:                                               ; preds = %1
  store i32 0, i32* %5, align 4
  br label %27

27:                                               ; preds = %51, %26
  %28 = load i32, i32* %5, align 4
  %29 = load %struct.pci_pbm_info*, %struct.pci_pbm_info** %3, align 8
  %30 = getelementptr inbounds %struct.pci_pbm_info, %struct.pci_pbm_info* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = icmp slt i32 %28, %31
  br i1 %32, label %33, label %54

33:                                               ; preds = %27
  %34 = load %struct.pci_pbm_info*, %struct.pci_pbm_info** %3, align 8
  %35 = getelementptr inbounds %struct.pci_pbm_info, %struct.pci_pbm_info* %34, i32 0, i32 2
  %36 = load %struct.sparc64_msiq_cookie*, %struct.sparc64_msiq_cookie** %35, align 8
  %37 = load i32, i32* %5, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.sparc64_msiq_cookie, %struct.sparc64_msiq_cookie* %36, i64 %38
  store %struct.sparc64_msiq_cookie* %39, %struct.sparc64_msiq_cookie** %6, align 8
  %40 = load %struct.pci_pbm_info*, %struct.pci_pbm_info** %3, align 8
  %41 = load %struct.sparc64_msiq_cookie*, %struct.sparc64_msiq_cookie** %6, align 8
  %42 = getelementptr inbounds %struct.sparc64_msiq_cookie, %struct.sparc64_msiq_cookie* %41, i32 0, i32 1
  store %struct.pci_pbm_info* %40, %struct.pci_pbm_info** %42, align 8
  %43 = load %struct.pci_pbm_info*, %struct.pci_pbm_info** %3, align 8
  %44 = getelementptr inbounds %struct.pci_pbm_info, %struct.pci_pbm_info* %43, i32 0, i32 4
  %45 = load i64, i64* %44, align 8
  %46 = load i32, i32* %5, align 4
  %47 = sext i32 %46 to i64
  %48 = add nsw i64 %45, %47
  %49 = load %struct.sparc64_msiq_cookie*, %struct.sparc64_msiq_cookie** %6, align 8
  %50 = getelementptr inbounds %struct.sparc64_msiq_cookie, %struct.sparc64_msiq_cookie* %49, i32 0, i32 0
  store i64 %48, i64* %50, align 8
  br label %51

51:                                               ; preds = %33
  %52 = load i32, i32* %5, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %5, align 4
  br label %27

54:                                               ; preds = %27
  %55 = load %struct.pci_pbm_info*, %struct.pci_pbm_info** %3, align 8
  %56 = getelementptr inbounds %struct.pci_pbm_info, %struct.pci_pbm_info* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = sext i32 %57 to i64
  %59 = mul i64 %58, 4
  %60 = trunc i64 %59 to i32
  store i32 %60, i32* %4, align 4
  %61 = load i32, i32* %4, align 4
  %62 = load i32, i32* @GFP_KERNEL, align 4
  %63 = call i8* @kzalloc(i32 %61, i32 %62)
  %64 = load %struct.pci_pbm_info*, %struct.pci_pbm_info** %3, align 8
  %65 = getelementptr inbounds %struct.pci_pbm_info, %struct.pci_pbm_info* %64, i32 0, i32 3
  store i8* %63, i8** %65, align 8
  %66 = load %struct.pci_pbm_info*, %struct.pci_pbm_info** %3, align 8
  %67 = getelementptr inbounds %struct.pci_pbm_info, %struct.pci_pbm_info* %66, i32 0, i32 3
  %68 = load i8*, i8** %67, align 8
  %69 = icmp ne i8* %68, null
  br i1 %69, label %79, label %70

70:                                               ; preds = %54
  %71 = load %struct.pci_pbm_info*, %struct.pci_pbm_info** %3, align 8
  %72 = getelementptr inbounds %struct.pci_pbm_info, %struct.pci_pbm_info* %71, i32 0, i32 2
  %73 = load %struct.sparc64_msiq_cookie*, %struct.sparc64_msiq_cookie** %72, align 8
  %74 = call i32 @kfree(%struct.sparc64_msiq_cookie* %73)
  %75 = load %struct.pci_pbm_info*, %struct.pci_pbm_info** %3, align 8
  %76 = getelementptr inbounds %struct.pci_pbm_info, %struct.pci_pbm_info* %75, i32 0, i32 2
  store %struct.sparc64_msiq_cookie* null, %struct.sparc64_msiq_cookie** %76, align 8
  %77 = load i32, i32* @ENOMEM, align 4
  %78 = sub nsw i32 0, %77
  store i32 %78, i32* %2, align 4
  br label %80

79:                                               ; preds = %54
  store i32 0, i32* %2, align 4
  br label %80

80:                                               ; preds = %79, %70, %23
  %81 = load i32, i32* %2, align 4
  ret i32 %81
}

declare dso_local i8* @kzalloc(i32, i32) #1

declare dso_local i32 @kfree(%struct.sparc64_msiq_cookie*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
