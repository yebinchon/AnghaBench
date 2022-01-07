; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/m32r/kernel/extr_align.c_emu_st.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/m32r/kernel/extr_align.c_emu_st.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pt_regs = type { i32 }

@ISA_STH2 = common dso_local global i16 0, align 2
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, %struct.pt_regs*)* @emu_st to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @emu_st(i64 %0, %struct.pt_regs* %1) #0 {
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
  br label %85

25:                                               ; preds = %2
  %26 = load i16, i16* %8, align 2
  %27 = zext i16 %26 to i32
  %28 = and i32 %27, 64
  %29 = icmp ne i32 %28, 0
  %30 = zext i1 %29 to i64
  %31 = select i1 %29, i32 4, i32 2
  store i32 %31, i32* %9, align 4
  %32 = load %struct.pt_regs*, %struct.pt_regs** %5, align 8
  %33 = load i16, i16* %8, align 2
  %34 = call i32 @REG1(i16 zeroext %33)
  %35 = call i64 @get_reg(%struct.pt_regs* %32, i32 %34)
  store i64 %35, i64* %7, align 8
  %36 = load i32, i32* %9, align 4
  %37 = icmp eq i32 %36, 2
  br i1 %37, label %38, label %41

38:                                               ; preds = %25
  %39 = load i64, i64* %7, align 8
  %40 = shl i64 %39, 16
  store i64 %40, i64* %7, align 8
  br label %41

41:                                               ; preds = %38, %25
  %42 = load i16, i16* %8, align 2
  %43 = zext i16 %42 to i32
  %44 = and i32 %43, 61664
  %45 = icmp eq i32 %44, 8288
  br i1 %45, label %46, label %63

46:                                               ; preds = %41
  %47 = load i16, i16* %8, align 2
  %48 = zext i16 %47 to i32
  %49 = and i32 %48, 16
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %46
  %52 = load i8*, i8** %6, align 8
  %53 = getelementptr inbounds i8, i8* %52, i64 -4
  store i8* %53, i8** %6, align 8
  br label %57

54:                                               ; preds = %46
  %55 = load i8*, i8** %6, align 8
  %56 = getelementptr inbounds i8, i8* %55, i64 4
  store i8* %56, i8** %6, align 8
  br label %57

57:                                               ; preds = %54, %51
  %58 = load %struct.pt_regs*, %struct.pt_regs** %5, align 8
  %59 = load i32, i32* %10, align 4
  %60 = load i8*, i8** %6, align 8
  %61 = ptrtoint i8* %60 to i64
  %62 = call i32 @set_reg(%struct.pt_regs* %58, i32 %59, i64 %61)
  br label %63

63:                                               ; preds = %57, %41
  %64 = load i8*, i8** %6, align 8
  %65 = load i32, i32* %9, align 4
  %66 = call i64 @copy_to_user(i8* %64, i64* %7, i32 %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %63
  store i32 -1, i32* %3, align 4
  br label %85

69:                                               ; preds = %63
  %70 = load i16, i16* %8, align 2
  %71 = zext i16 %70 to i32
  %72 = and i32 %71, 61680
  %73 = load i16, i16* @ISA_STH2, align 2
  %74 = zext i16 %73 to i32
  %75 = icmp eq i32 %72, %74
  br i1 %75, label %76, label %84

76:                                               ; preds = %69
  %77 = load i8*, i8** %6, align 8
  %78 = getelementptr inbounds i8, i8* %77, i64 2
  store i8* %78, i8** %6, align 8
  %79 = load %struct.pt_regs*, %struct.pt_regs** %5, align 8
  %80 = load i32, i32* %10, align 4
  %81 = load i8*, i8** %6, align 8
  %82 = ptrtoint i8* %81 to i64
  %83 = call i32 @set_reg(%struct.pt_regs* %79, i32 %80, i64 %82)
  br label %84

84:                                               ; preds = %76, %69
  store i32 0, i32* %3, align 4
  br label %85

85:                                               ; preds = %84, %68, %24
  %86 = load i32, i32* %3, align 4
  ret i32 %86
}

declare dso_local i32 @REG2(i16 zeroext) #1

declare dso_local i64 @get_reg(%struct.pt_regs*, i32) #1

declare dso_local i64 @insn_check(i64, %struct.pt_regs*, i8**) #1

declare dso_local i32 @REG1(i16 zeroext) #1

declare dso_local i32 @set_reg(%struct.pt_regs*, i32, i64) #1

declare dso_local i64 @copy_to_user(i8*, i64*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
