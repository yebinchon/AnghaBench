; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/kernel/extr_elf.c_elf_set_personality.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/kernel/extr_elf.c_elf_set_personality.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.elf32_hdr = type { i32 }

@PER_LINUX_32BIT = common dso_local global i32 0, align 4
@EF_ARM_EABI_MASK = common dso_local global i32 0, align 4
@EF_ARM_EABI_UNKNOWN = common dso_local global i32 0, align 4
@EF_ARM_APCS_26 = common dso_local global i32 0, align 4
@PER_LINUX = common dso_local global i32 0, align 4
@elf_hwcap = common dso_local global i32 0, align 4
@HWCAP_IWMMXT = common dso_local global i32 0, align 4
@EF_ARM_SOFT_FLOAT = common dso_local global i32 0, align 4
@TIF_USING_IWMMXT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @elf_set_personality(%struct.elf32_hdr* %0) #0 {
  %2 = alloca %struct.elf32_hdr*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.elf32_hdr* %0, %struct.elf32_hdr** %2, align 8
  %5 = load %struct.elf32_hdr*, %struct.elf32_hdr** %2, align 8
  %6 = getelementptr inbounds %struct.elf32_hdr, %struct.elf32_hdr* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  store i32 %7, i32* %3, align 4
  %8 = load i32, i32* @PER_LINUX_32BIT, align 4
  store i32 %8, i32* %4, align 4
  %9 = load i32, i32* %3, align 4
  %10 = load i32, i32* @EF_ARM_EABI_MASK, align 4
  %11 = and i32 %9, %10
  %12 = load i32, i32* @EF_ARM_EABI_UNKNOWN, align 4
  %13 = icmp eq i32 %11, %12
  br i1 %13, label %14, label %22

14:                                               ; preds = %1
  %15 = load i32, i32* %3, align 4
  %16 = load i32, i32* @EF_ARM_APCS_26, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %14
  %20 = load i32, i32* @PER_LINUX, align 4
  store i32 %20, i32* %4, align 4
  br label %21

21:                                               ; preds = %19, %14
  br label %22

22:                                               ; preds = %21, %1
  %23 = load i32, i32* %4, align 4
  %24 = call i32 @set_personality(i32 %23)
  %25 = load i32, i32* @elf_hwcap, align 4
  %26 = load i32, i32* @HWCAP_IWMMXT, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %39

29:                                               ; preds = %22
  %30 = load i32, i32* %3, align 4
  %31 = load i32, i32* @EF_ARM_EABI_MASK, align 4
  %32 = load i32, i32* @EF_ARM_SOFT_FLOAT, align 4
  %33 = or i32 %31, %32
  %34 = and i32 %30, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %29
  %37 = load i32, i32* @TIF_USING_IWMMXT, align 4
  %38 = call i32 @set_thread_flag(i32 %37)
  br label %42

39:                                               ; preds = %29, %22
  %40 = load i32, i32* @TIF_USING_IWMMXT, align 4
  %41 = call i32 @clear_thread_flag(i32 %40)
  br label %42

42:                                               ; preds = %39, %36
  ret void
}

declare dso_local i32 @set_personality(i32) #1

declare dso_local i32 @set_thread_flag(i32) #1

declare dso_local i32 @clear_thread_flag(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
