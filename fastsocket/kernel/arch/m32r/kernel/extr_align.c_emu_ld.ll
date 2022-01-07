; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/m32r/kernel/extr_align.c_emu_ld.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/m32r/kernel/extr_align.c_emu_ld.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pt_regs = type { i32 }

@ISA_LD2 = common dso_local global i16 0, align 2
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, %struct.pt_regs*)* @emu_ld to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @emu_ld(i64 %0, %struct.pt_regs* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca %struct.pt_regs*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i16, align 2
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i64 %0, i64* %4, align 8
  store %struct.pt_regs* %1, %struct.pt_regs** %5, align 8
  %11 = load i64, i64* %4, align 8
  %12 = lshr i64 %11, 16
  %13 = trunc i64 %12 to i16
  store i16 %13, i16* %8, align 2
  %14 = load i16, i16* %8, align 2
  %15 = call i32 @REG2(i16 zeroext %14)
  store i32 %15, i32* %10, align 4
  %16 = load %struct.pt_regs*, %struct.pt_regs** %5, align 8
  %17 = load i32, i32* %10, align 4
  %18 = call i64 @get_reg(%struct.pt_regs* %16, i32 %17)
  %19 = inttoptr i64 %18 to i8*
  store i8* %19, i8** %6, align 8
  %20 = load i64, i64* %4, align 8
  %21 = load %struct.pt_regs*, %struct.pt_regs** %5, align 8
  %22 = call i64 @insn_check(i64 %20, %struct.pt_regs* %21, i8** %6)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %75

25:                                               ; preds = %2
  %26 = load i16, i16* %8, align 2
  %27 = zext i16 %26 to i32
  %28 = and i32 %27, 64
  %29 = icmp ne i32 %28, 0
  %30 = zext i1 %29 to i64
  %31 = select i1 %29, i32 4, i32 2
  store i32 %31, i32* %9, align 4
  %32 = load i8*, i8** %6, align 8
  %33 = load i32, i32* %9, align 4
  %34 = call i64 @copy_from_user(i64* %7, i8* %32, i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %25
  store i32 -1, i32* %3, align 4
  br label %75

37:                                               ; preds = %25
  %38 = load i32, i32* %9, align 4
  %39 = icmp eq i32 %38, 2
  br i1 %39, label %40, label %43

40:                                               ; preds = %37
  %41 = load i64, i64* %7, align 8
  %42 = lshr i64 %41, 16
  store i64 %42, i64* %7, align 8
  br label %43

43:                                               ; preds = %40, %37
  %44 = load i16, i16* %8, align 2
  %45 = zext i16 %44 to i32
  %46 = and i32 %45, 240
  %47 = icmp eq i32 %46, 160
  br i1 %47, label %48, label %55

48:                                               ; preds = %43
  %49 = load i64, i64* %7, align 8
  %50 = and i64 %49, 32768
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %55

52:                                               ; preds = %48
  %53 = load i64, i64* %7, align 8
  %54 = or i64 %53, 4294901760
  store i64 %54, i64* %7, align 8
  br label %55

55:                                               ; preds = %52, %48, %43
  %56 = load %struct.pt_regs*, %struct.pt_regs** %5, align 8
  %57 = load i16, i16* %8, align 2
  %58 = call i32 @REG1(i16 zeroext %57)
  %59 = load i64, i64* %7, align 8
  %60 = call i32 @set_reg(%struct.pt_regs* %56, i32 %58, i64 %59)
  %61 = load i16, i16* %8, align 2
  %62 = zext i16 %61 to i32
  %63 = and i32 %62, 61680
  %64 = load i16, i16* @ISA_LD2, align 2
  %65 = zext i16 %64 to i32
  %66 = icmp eq i32 %63, %65
  br i1 %66, label %67, label %74

67:                                               ; preds = %55
  %68 = load %struct.pt_regs*, %struct.pt_regs** %5, align 8
  %69 = load i32, i32* %10, align 4
  %70 = load i8*, i8** %6, align 8
  %71 = getelementptr inbounds i8, i8* %70, i64 4
  %72 = ptrtoint i8* %71 to i64
  %73 = call i32 @set_reg(%struct.pt_regs* %68, i32 %69, i64 %72)
  br label %74

74:                                               ; preds = %67, %55
  store i32 0, i32* %3, align 4
  br label %75

75:                                               ; preds = %74, %36, %24
  %76 = load i32, i32* %3, align 4
  ret i32 %76
}

declare dso_local i32 @REG2(i16 zeroext) #1

declare dso_local i64 @get_reg(%struct.pt_regs*, i32) #1

declare dso_local i64 @insn_check(i64, %struct.pt_regs*, i8**) #1

declare dso_local i64 @copy_from_user(i64*, i8*, i32) #1

declare dso_local i32 @set_reg(%struct.pt_regs*, i32, i64) #1

declare dso_local i32 @REG1(i16 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
