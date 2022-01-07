; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/mips/kernel/extr_binfmt_elfo32.c_elf32_core_copy_regs.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/mips/kernel/extr_binfmt_elfo32.c_elf32_core_copy_regs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pt_regs = type { i64, i64, i64, i64, i64, i64, i64* }

@EF_R0 = common dso_local global i32 0, align 4
@EF_R26 = common dso_local global i64 0, align 8
@EF_R27 = common dso_local global i64 0, align 8
@EF_LO = common dso_local global i64 0, align 8
@EF_HI = common dso_local global i64 0, align 8
@EF_CP0_EPC = common dso_local global i64 0, align 8
@EF_CP0_BADVADDR = common dso_local global i64 0, align 8
@EF_CP0_STATUS = common dso_local global i64 0, align 8
@EF_CP0_CAUSE = common dso_local global i64 0, align 8
@EF_UNUSED0 = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @elf32_core_copy_regs(i64* %0, %struct.pt_regs* %1) #0 {
  %3 = alloca i64*, align 8
  %4 = alloca %struct.pt_regs*, align 8
  %5 = alloca i32, align 4
  store i64* %0, i64** %3, align 8
  store %struct.pt_regs* %1, %struct.pt_regs** %4, align 8
  store i32 0, i32* %5, align 4
  br label %6

6:                                                ; preds = %15, %2
  %7 = load i32, i32* %5, align 4
  %8 = load i32, i32* @EF_R0, align 4
  %9 = icmp slt i32 %7, %8
  br i1 %9, label %10, label %18

10:                                               ; preds = %6
  %11 = load i64*, i64** %3, align 8
  %12 = load i32, i32* %5, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds i64, i64* %11, i64 %13
  store i64 0, i64* %14, align 8
  br label %15

15:                                               ; preds = %10
  %16 = load i32, i32* %5, align 4
  %17 = add nsw i32 %16, 1
  store i32 %17, i32* %5, align 4
  br label %6

18:                                               ; preds = %6
  %19 = load i64*, i64** %3, align 8
  %20 = load i32, i32* @EF_R0, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i64, i64* %19, i64 %21
  store i64 0, i64* %22, align 8
  store i32 1, i32* %5, align 4
  br label %23

23:                                               ; preds = %40, %18
  %24 = load i32, i32* %5, align 4
  %25 = icmp sle i32 %24, 31
  br i1 %25, label %26, label %43

26:                                               ; preds = %23
  %27 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %28 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %27, i32 0, i32 6
  %29 = load i64*, i64** %28, align 8
  %30 = load i32, i32* %5, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i64, i64* %29, i64 %31
  %33 = load i64, i64* %32, align 8
  %34 = load i64*, i64** %3, align 8
  %35 = load i32, i32* @EF_R0, align 4
  %36 = load i32, i32* %5, align 4
  %37 = add nsw i32 %35, %36
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i64, i64* %34, i64 %38
  store i64 %33, i64* %39, align 8
  br label %40

40:                                               ; preds = %26
  %41 = load i32, i32* %5, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %5, align 4
  br label %23

43:                                               ; preds = %23
  %44 = load i64*, i64** %3, align 8
  %45 = load i64, i64* @EF_R26, align 8
  %46 = getelementptr inbounds i64, i64* %44, i64 %45
  store i64 0, i64* %46, align 8
  %47 = load i64*, i64** %3, align 8
  %48 = load i64, i64* @EF_R27, align 8
  %49 = getelementptr inbounds i64, i64* %47, i64 %48
  store i64 0, i64* %49, align 8
  %50 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %51 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %50, i32 0, i32 5
  %52 = load i64, i64* %51, align 8
  %53 = load i64*, i64** %3, align 8
  %54 = load i64, i64* @EF_LO, align 8
  %55 = getelementptr inbounds i64, i64* %53, i64 %54
  store i64 %52, i64* %55, align 8
  %56 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %57 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %56, i32 0, i32 4
  %58 = load i64, i64* %57, align 8
  %59 = load i64*, i64** %3, align 8
  %60 = load i64, i64* @EF_HI, align 8
  %61 = getelementptr inbounds i64, i64* %59, i64 %60
  store i64 %58, i64* %61, align 8
  %62 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %63 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %62, i32 0, i32 3
  %64 = load i64, i64* %63, align 8
  %65 = load i64*, i64** %3, align 8
  %66 = load i64, i64* @EF_CP0_EPC, align 8
  %67 = getelementptr inbounds i64, i64* %65, i64 %66
  store i64 %64, i64* %67, align 8
  %68 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %69 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %68, i32 0, i32 2
  %70 = load i64, i64* %69, align 8
  %71 = load i64*, i64** %3, align 8
  %72 = load i64, i64* @EF_CP0_BADVADDR, align 8
  %73 = getelementptr inbounds i64, i64* %71, i64 %72
  store i64 %70, i64* %73, align 8
  %74 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %75 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %74, i32 0, i32 1
  %76 = load i64, i64* %75, align 8
  %77 = load i64*, i64** %3, align 8
  %78 = load i64, i64* @EF_CP0_STATUS, align 8
  %79 = getelementptr inbounds i64, i64* %77, i64 %78
  store i64 %76, i64* %79, align 8
  %80 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %81 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = load i64*, i64** %3, align 8
  %84 = load i64, i64* @EF_CP0_CAUSE, align 8
  %85 = getelementptr inbounds i64, i64* %83, i64 %84
  store i64 %82, i64* %85, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
