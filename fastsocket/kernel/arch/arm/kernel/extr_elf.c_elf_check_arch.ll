; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/kernel/extr_elf.c_elf_check_arch.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/kernel/extr_elf.c_elf_check_arch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.elf32_hdr = type { i64, i32, i32 }

@EM_ARM = common dso_local global i64 0, align 8
@elf_hwcap = common dso_local global i32 0, align 4
@HWCAP_THUMB = common dso_local global i32 0, align 4
@EF_ARM_EABI_MASK = common dso_local global i32 0, align 4
@EF_ARM_EABI_UNKNOWN = common dso_local global i32 0, align 4
@EF_ARM_APCS_26 = common dso_local global i32 0, align 4
@HWCAP_26BIT = common dso_local global i32 0, align 4
@EF_ARM_VFP_FLOAT = common dso_local global i32 0, align 4
@EF_ARM_SOFT_FLOAT = common dso_local global i32 0, align 4
@HWCAP_VFP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @elf_check_arch(%struct.elf32_hdr* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.elf32_hdr*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.elf32_hdr* %0, %struct.elf32_hdr** %3, align 8
  %6 = load %struct.elf32_hdr*, %struct.elf32_hdr** %3, align 8
  %7 = getelementptr inbounds %struct.elf32_hdr, %struct.elf32_hdr* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @EM_ARM, align 8
  %10 = icmp ne i64 %8, %9
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %70

12:                                               ; preds = %1
  %13 = load %struct.elf32_hdr*, %struct.elf32_hdr** %3, align 8
  %14 = getelementptr inbounds %struct.elf32_hdr, %struct.elf32_hdr* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 8
  %16 = and i32 %15, 1
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %25

18:                                               ; preds = %12
  %19 = load i32, i32* @elf_hwcap, align 4
  %20 = load i32, i32* @HWCAP_THUMB, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %18
  store i32 0, i32* %2, align 4
  br label %70

24:                                               ; preds = %18
  br label %33

25:                                               ; preds = %12
  %26 = load %struct.elf32_hdr*, %struct.elf32_hdr** %3, align 8
  %27 = getelementptr inbounds %struct.elf32_hdr, %struct.elf32_hdr* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = and i32 %28, 3
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %25
  store i32 0, i32* %2, align 4
  br label %70

32:                                               ; preds = %25
  br label %33

33:                                               ; preds = %32, %24
  %34 = load %struct.elf32_hdr*, %struct.elf32_hdr** %3, align 8
  %35 = getelementptr inbounds %struct.elf32_hdr, %struct.elf32_hdr* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 4
  store i32 %36, i32* %4, align 4
  %37 = load i32, i32* %4, align 4
  %38 = load i32, i32* @EF_ARM_EABI_MASK, align 4
  %39 = and i32 %37, %38
  %40 = load i32, i32* @EF_ARM_EABI_UNKNOWN, align 4
  %41 = icmp eq i32 %39, %40
  br i1 %41, label %42, label %69

42:                                               ; preds = %33
  %43 = load i32, i32* %4, align 4
  %44 = load i32, i32* @EF_ARM_APCS_26, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %53

47:                                               ; preds = %42
  %48 = load i32, i32* @elf_hwcap, align 4
  %49 = load i32, i32* @HWCAP_26BIT, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %53, label %52

52:                                               ; preds = %47
  store i32 0, i32* %2, align 4
  br label %70

53:                                               ; preds = %47, %42
  %54 = load i32, i32* %4, align 4
  %55 = load i32, i32* @EF_ARM_VFP_FLOAT, align 4
  %56 = load i32, i32* @EF_ARM_SOFT_FLOAT, align 4
  %57 = or i32 %55, %56
  %58 = and i32 %54, %57
  store i32 %58, i32* %5, align 4
  %59 = load i32, i32* %5, align 4
  %60 = load i32, i32* @EF_ARM_VFP_FLOAT, align 4
  %61 = icmp eq i32 %59, %60
  br i1 %61, label %62, label %68

62:                                               ; preds = %53
  %63 = load i32, i32* @elf_hwcap, align 4
  %64 = load i32, i32* @HWCAP_VFP, align 4
  %65 = and i32 %63, %64
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %68, label %67

67:                                               ; preds = %62
  store i32 0, i32* %2, align 4
  br label %70

68:                                               ; preds = %62, %53
  br label %69

69:                                               ; preds = %68, %33
  store i32 1, i32* %2, align 4
  br label %70

70:                                               ; preds = %69, %67, %52, %31, %23, %11
  %71 = load i32, i32* %2, align 4
  ret i32 %71
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
