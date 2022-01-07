; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/ia64/kernel/extr_unaligned.c_setreg.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/ia64/kernel/extr_unaligned.c_setreg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pt_regs = type { i32 }
%struct.switch_stack = type { i64, i64 }

@IA64_FIRST_STACKED_GR = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [40 x i8] c"tmp_base=%lx switch_stack=%s offset=%d\0A\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"yes\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"no\00", align 1
@.str.3 = private unnamed_addr constant [39 x i8] c"*0x%lx=0x%lx NaT=%d prev_unat @%p=%lx\0A\00", align 1
@.str.4 = private unnamed_addr constant [38 x i8] c"*0x%lx=0x%lx NaT=%d new unat: %p=%lx\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64, i64, i32, %struct.pt_regs*)* @setreg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @setreg(i64 %0, i64 %1, i32 %2, %struct.pt_regs* %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.pt_regs*, align 8
  %9 = alloca %struct.switch_stack*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64*, align 8
  store i64 %0, i64* %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  store %struct.pt_regs* %3, %struct.pt_regs** %8, align 8
  %13 = load %struct.pt_regs*, %struct.pt_regs** %8, align 8
  %14 = bitcast %struct.pt_regs* %13 to %struct.switch_stack*
  %15 = getelementptr inbounds %struct.switch_stack, %struct.switch_stack* %14, i64 -1
  store %struct.switch_stack* %15, %struct.switch_stack** %9, align 8
  %16 = load i64, i64* %5, align 8
  %17 = load i64, i64* @IA64_FIRST_STACKED_GR, align 8
  %18 = icmp uge i64 %16, %17
  br i1 %18, label %19, label %25

19:                                               ; preds = %4
  %20 = load %struct.pt_regs*, %struct.pt_regs** %8, align 8
  %21 = load i64, i64* %5, align 8
  %22 = load i64, i64* %6, align 8
  %23 = load i32, i32* %7, align 4
  %24 = call i32 @set_rse_reg(%struct.pt_regs* %20, i64 %21, i64 %22, i32 %23)
  br label %91

25:                                               ; preds = %4
  %26 = load i64, i64* %5, align 8
  %27 = call i64 @GR_IN_SW(i64 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %34

29:                                               ; preds = %25
  %30 = load %struct.switch_stack*, %struct.switch_stack** %9, align 8
  %31 = ptrtoint %struct.switch_stack* %30 to i64
  store i64 %31, i64* %10, align 8
  %32 = load %struct.switch_stack*, %struct.switch_stack** %9, align 8
  %33 = getelementptr inbounds %struct.switch_stack, %struct.switch_stack* %32, i32 0, i32 0
  store i64* %33, i64** %12, align 8
  br label %39

34:                                               ; preds = %25
  %35 = load %struct.pt_regs*, %struct.pt_regs** %8, align 8
  %36 = ptrtoint %struct.pt_regs* %35 to i64
  store i64 %36, i64* %10, align 8
  %37 = load %struct.switch_stack*, %struct.switch_stack** %9, align 8
  %38 = getelementptr inbounds %struct.switch_stack, %struct.switch_stack* %37, i32 0, i32 1
  store i64* %38, i64** %12, align 8
  br label %39

39:                                               ; preds = %34, %29
  %40 = load i64, i64* %10, align 8
  %41 = load i64*, i64** %12, align 8
  %42 = load %struct.switch_stack*, %struct.switch_stack** %9, align 8
  %43 = getelementptr inbounds %struct.switch_stack, %struct.switch_stack* %42, i32 0, i32 0
  %44 = icmp eq i64* %41, %43
  %45 = zext i1 %44 to i64
  %46 = select i1 %44, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0)
  %47 = load i64, i64* %5, align 8
  %48 = call i64 @GR_OFFS(i64 %47)
  %49 = call i32 (i8*, i64, ...) @DPRINT(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i64 %40, i8* %46, i64 %48)
  %50 = load i64, i64* %5, align 8
  %51 = call i64 @GR_OFFS(i64 %50)
  %52 = load i64, i64* %10, align 8
  %53 = add i64 %52, %51
  store i64 %53, i64* %10, align 8
  %54 = load i64, i64* %6, align 8
  %55 = load i64, i64* %10, align 8
  %56 = inttoptr i64 %55 to i64*
  store i64 %54, i64* %56, align 8
  %57 = load i64, i64* %10, align 8
  %58 = lshr i64 %57, 3
  %59 = and i64 %58, 63
  %60 = shl i64 1, %59
  store i64 %60, i64* %11, align 8
  %61 = load i64, i64* %10, align 8
  %62 = load i64, i64* %6, align 8
  %63 = load i32, i32* %7, align 4
  %64 = load i64*, i64** %12, align 8
  %65 = bitcast i64* %64 to i8*
  %66 = load i64*, i64** %12, align 8
  %67 = load i64, i64* %66, align 8
  %68 = call i32 (i8*, i64, ...) @DPRINT(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.3, i64 0, i64 0), i64 %61, i64 %62, i32 %63, i8* %65, i64 %67)
  %69 = load i32, i32* %7, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %76

71:                                               ; preds = %39
  %72 = load i64, i64* %11, align 8
  %73 = load i64*, i64** %12, align 8
  %74 = load i64, i64* %73, align 8
  %75 = or i64 %74, %72
  store i64 %75, i64* %73, align 8
  br label %82

76:                                               ; preds = %39
  %77 = load i64, i64* %11, align 8
  %78 = xor i64 %77, -1
  %79 = load i64*, i64** %12, align 8
  %80 = load i64, i64* %79, align 8
  %81 = and i64 %80, %78
  store i64 %81, i64* %79, align 8
  br label %82

82:                                               ; preds = %76, %71
  %83 = load i64, i64* %10, align 8
  %84 = load i64, i64* %6, align 8
  %85 = load i32, i32* %7, align 4
  %86 = load i64*, i64** %12, align 8
  %87 = bitcast i64* %86 to i8*
  %88 = load i64*, i64** %12, align 8
  %89 = load i64, i64* %88, align 8
  %90 = call i32 (i8*, i64, ...) @DPRINT(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.4, i64 0, i64 0), i64 %83, i64 %84, i32 %85, i8* %87, i64 %89)
  br label %91

91:                                               ; preds = %82, %19
  ret void
}

declare dso_local i32 @set_rse_reg(%struct.pt_regs*, i64, i64, i32) #1

declare dso_local i64 @GR_IN_SW(i64) #1

declare dso_local i32 @DPRINT(i8*, i64, ...) #1

declare dso_local i64 @GR_OFFS(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
