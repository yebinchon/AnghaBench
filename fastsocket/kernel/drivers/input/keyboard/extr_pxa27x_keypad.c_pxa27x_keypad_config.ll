; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/input/keyboard/extr_pxa27x_keypad.c_pxa27x_keypad_config.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/input/keyboard/extr_pxa27x_keypad.c_pxa27x_keypad_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pxa27x_keypad = type { i32, %struct.pxa27x_keypad_platform_data* }
%struct.pxa27x_keypad_platform_data = type { i32, i64, i64, i64, i64, i64 }

@KPC_ASACT = common dso_local global i64 0, align 8
@KPC_MIE = common dso_local global i64 0, align 8
@KPC_ME = common dso_local global i64 0, align 8
@KPC_MS_ALL = common dso_local global i64 0, align 8
@KPC_REE0 = common dso_local global i64 0, align 8
@KPC_REE1 = common dso_local global i64 0, align 8
@KPC_DE = common dso_local global i64 0, align 8
@KPC_DIE = common dso_local global i64 0, align 8
@KPC = common dso_local global i32 0, align 4
@KPC_RE_ZERO_DEB = common dso_local global i64 0, align 8
@KPREC = common dso_local global i32 0, align 4
@DEFAULT_KPREC = common dso_local global i64 0, align 8
@KPKDI = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pxa27x_keypad*)* @pxa27x_keypad_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pxa27x_keypad_config(%struct.pxa27x_keypad* %0) #0 {
  %2 = alloca %struct.pxa27x_keypad*, align 8
  %3 = alloca %struct.pxa27x_keypad_platform_data*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  store %struct.pxa27x_keypad* %0, %struct.pxa27x_keypad** %2, align 8
  %7 = load %struct.pxa27x_keypad*, %struct.pxa27x_keypad** %2, align 8
  %8 = getelementptr inbounds %struct.pxa27x_keypad, %struct.pxa27x_keypad* %7, i32 0, i32 1
  %9 = load %struct.pxa27x_keypad_platform_data*, %struct.pxa27x_keypad_platform_data** %8, align 8
  store %struct.pxa27x_keypad_platform_data* %9, %struct.pxa27x_keypad_platform_data** %3, align 8
  store i32 0, i32* %4, align 4
  store i32 0, i32* %5, align 4
  store i64 0, i64* %6, align 8
  %10 = load %struct.pxa27x_keypad_platform_data*, %struct.pxa27x_keypad_platform_data** %3, align 8
  %11 = getelementptr inbounds %struct.pxa27x_keypad_platform_data, %struct.pxa27x_keypad_platform_data* %10, i32 0, i32 5
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %40

14:                                               ; preds = %1
  %15 = load %struct.pxa27x_keypad_platform_data*, %struct.pxa27x_keypad_platform_data** %3, align 8
  %16 = getelementptr inbounds %struct.pxa27x_keypad_platform_data, %struct.pxa27x_keypad_platform_data* %15, i32 0, i32 4
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %40

19:                                               ; preds = %14
  %20 = load i64, i64* @KPC_ASACT, align 8
  %21 = load i64, i64* @KPC_MIE, align 8
  %22 = or i64 %20, %21
  %23 = load i64, i64* @KPC_ME, align 8
  %24 = or i64 %22, %23
  %25 = load i64, i64* @KPC_MS_ALL, align 8
  %26 = or i64 %24, %25
  %27 = load i64, i64* %6, align 8
  %28 = or i64 %27, %26
  store i64 %28, i64* %6, align 8
  %29 = load %struct.pxa27x_keypad_platform_data*, %struct.pxa27x_keypad_platform_data** %3, align 8
  %30 = getelementptr inbounds %struct.pxa27x_keypad_platform_data, %struct.pxa27x_keypad_platform_data* %29, i32 0, i32 5
  %31 = load i64, i64* %30, align 8
  %32 = call i64 @KPC_MKRN(i64 %31)
  %33 = load %struct.pxa27x_keypad_platform_data*, %struct.pxa27x_keypad_platform_data** %3, align 8
  %34 = getelementptr inbounds %struct.pxa27x_keypad_platform_data, %struct.pxa27x_keypad_platform_data* %33, i32 0, i32 4
  %35 = load i64, i64* %34, align 8
  %36 = call i64 @KPC_MKCN(i64 %35)
  %37 = or i64 %32, %36
  %38 = load i64, i64* %6, align 8
  %39 = or i64 %38, %37
  store i64 %39, i64* %6, align 8
  br label %40

40:                                               ; preds = %19, %14, %1
  %41 = load %struct.pxa27x_keypad_platform_data*, %struct.pxa27x_keypad_platform_data** %3, align 8
  %42 = getelementptr inbounds %struct.pxa27x_keypad_platform_data, %struct.pxa27x_keypad_platform_data* %41, i32 0, i32 3
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %51

45:                                               ; preds = %40
  %46 = load i32, i32* %4, align 4
  %47 = or i32 %46, 3
  store i32 %47, i32* %4, align 4
  store i32 2, i32* %5, align 4
  %48 = load i64, i64* @KPC_REE0, align 8
  %49 = load i64, i64* %6, align 8
  %50 = or i64 %49, %48
  store i64 %50, i64* %6, align 8
  br label %51

51:                                               ; preds = %45, %40
  %52 = load %struct.pxa27x_keypad_platform_data*, %struct.pxa27x_keypad_platform_data** %3, align 8
  %53 = getelementptr inbounds %struct.pxa27x_keypad_platform_data, %struct.pxa27x_keypad_platform_data* %52, i32 0, i32 2
  %54 = load i64, i64* %53, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %62

56:                                               ; preds = %51
  %57 = load i32, i32* %4, align 4
  %58 = or i32 %57, 12
  store i32 %58, i32* %4, align 4
  store i32 4, i32* %5, align 4
  %59 = load i64, i64* @KPC_REE1, align 8
  %60 = load i64, i64* %6, align 8
  %61 = or i64 %60, %59
  store i64 %61, i64* %6, align 8
  br label %62

62:                                               ; preds = %56, %51
  %63 = load %struct.pxa27x_keypad_platform_data*, %struct.pxa27x_keypad_platform_data** %3, align 8
  %64 = getelementptr inbounds %struct.pxa27x_keypad_platform_data, %struct.pxa27x_keypad_platform_data* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = load i32, i32* %5, align 4
  %67 = icmp ugt i32 %65, %66
  br i1 %67, label %68, label %72

68:                                               ; preds = %62
  %69 = load %struct.pxa27x_keypad_platform_data*, %struct.pxa27x_keypad_platform_data** %3, align 8
  %70 = getelementptr inbounds %struct.pxa27x_keypad_platform_data, %struct.pxa27x_keypad_platform_data* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  store i32 %71, i32* %5, align 4
  br label %72

72:                                               ; preds = %68, %62
  %73 = load i32, i32* %5, align 4
  %74 = shl i32 2, %73
  %75 = sub nsw i32 %74, 1
  %76 = load i32, i32* %4, align 4
  %77 = xor i32 %76, -1
  %78 = and i32 %75, %77
  %79 = load %struct.pxa27x_keypad*, %struct.pxa27x_keypad** %2, align 8
  %80 = getelementptr inbounds %struct.pxa27x_keypad, %struct.pxa27x_keypad* %79, i32 0, i32 0
  store i32 %78, i32* %80, align 8
  %81 = load i32, i32* %5, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %92

83:                                               ; preds = %72
  %84 = load i64, i64* @KPC_DE, align 8
  %85 = load i64, i64* @KPC_DIE, align 8
  %86 = or i64 %84, %85
  %87 = load i32, i32* %5, align 4
  %88 = call i64 @KPC_DKN(i32 %87)
  %89 = or i64 %86, %88
  %90 = load i64, i64* %6, align 8
  %91 = or i64 %90, %89
  store i64 %91, i64* %6, align 8
  br label %92

92:                                               ; preds = %83, %72
  %93 = load i32, i32* @KPC, align 4
  %94 = load i64, i64* %6, align 8
  %95 = load i64, i64* @KPC_RE_ZERO_DEB, align 8
  %96 = or i64 %94, %95
  %97 = call i32 @keypad_writel(i32 %93, i64 %96)
  %98 = load i32, i32* @KPREC, align 4
  %99 = load i64, i64* @DEFAULT_KPREC, align 8
  %100 = call i32 @keypad_writel(i32 %98, i64 %99)
  %101 = load i32, i32* @KPKDI, align 4
  %102 = load %struct.pxa27x_keypad_platform_data*, %struct.pxa27x_keypad_platform_data** %3, align 8
  %103 = getelementptr inbounds %struct.pxa27x_keypad_platform_data, %struct.pxa27x_keypad_platform_data* %102, i32 0, i32 1
  %104 = load i64, i64* %103, align 8
  %105 = call i32 @keypad_writel(i32 %101, i64 %104)
  ret void
}

declare dso_local i64 @KPC_MKRN(i64) #1

declare dso_local i64 @KPC_MKCN(i64) #1

declare dso_local i64 @KPC_DKN(i32) #1

declare dso_local i32 @keypad_writel(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
