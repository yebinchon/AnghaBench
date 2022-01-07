; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/clocksource/extr_sh_cmt.c_sh_cmt_clock_event_program_verify.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/clocksource/extr_sh_cmt.c_sh_cmt_clock_event_program_verify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sh_cmt_priv = type { i64, i64, i64, i32 }

@FLAG_REPROGRAM = common dso_local global i32 0, align 4
@FLAG_SKIPEVENT = common dso_local global i32 0, align 4
@CMCOR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"sh_cmt: too long delay\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sh_cmt_priv*, i32)* @sh_cmt_clock_event_program_verify to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sh_cmt_clock_event_program_verify(%struct.sh_cmt_priv* %0, i32 %1) #0 {
  %3 = alloca %struct.sh_cmt_priv*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.sh_cmt_priv* %0, %struct.sh_cmt_priv** %3, align 8
  store i32 %1, i32* %4, align 4
  %10 = load %struct.sh_cmt_priv*, %struct.sh_cmt_priv** %3, align 8
  %11 = getelementptr inbounds %struct.sh_cmt_priv, %struct.sh_cmt_priv* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  store i64 %12, i64* %6, align 8
  store i64 0, i64* %7, align 8
  store i64 0, i64* %8, align 8
  %13 = load %struct.sh_cmt_priv*, %struct.sh_cmt_priv** %3, align 8
  %14 = call i64 @sh_cmt_get_counter(%struct.sh_cmt_priv* %13, i32* %9)
  store i64 %14, i64* %8, align 8
  %15 = load i32, i32* @FLAG_REPROGRAM, align 4
  %16 = load %struct.sh_cmt_priv*, %struct.sh_cmt_priv** %3, align 8
  %17 = getelementptr inbounds %struct.sh_cmt_priv, %struct.sh_cmt_priv* %16, i32 0, i32 3
  %18 = load i32, i32* %17, align 8
  %19 = or i32 %18, %15
  store i32 %19, i32* %17, align 8
  %20 = load i32, i32* %9, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %28

22:                                               ; preds = %2
  %23 = load i32, i32* @FLAG_SKIPEVENT, align 4
  %24 = load %struct.sh_cmt_priv*, %struct.sh_cmt_priv** %3, align 8
  %25 = getelementptr inbounds %struct.sh_cmt_priv, %struct.sh_cmt_priv* %24, i32 0, i32 3
  %26 = load i32, i32* %25, align 8
  %27 = or i32 %26, %23
  store i32 %27, i32* %25, align 8
  br label %100

28:                                               ; preds = %2
  %29 = load i32, i32* %4, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %28
  store i64 0, i64* %8, align 8
  br label %32

32:                                               ; preds = %31, %28
  br label %33

33:                                               ; preds = %97, %32
  %34 = load i64, i64* %8, align 8
  %35 = load i64, i64* %6, align 8
  %36 = add i64 %34, %35
  %37 = load i64, i64* %7, align 8
  %38 = add i64 %36, %37
  store i64 %38, i64* %5, align 8
  %39 = load i64, i64* %5, align 8
  %40 = load %struct.sh_cmt_priv*, %struct.sh_cmt_priv** %3, align 8
  %41 = getelementptr inbounds %struct.sh_cmt_priv, %struct.sh_cmt_priv* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = icmp ugt i64 %39, %42
  br i1 %43, label %44, label %48

44:                                               ; preds = %33
  %45 = load %struct.sh_cmt_priv*, %struct.sh_cmt_priv** %3, align 8
  %46 = getelementptr inbounds %struct.sh_cmt_priv, %struct.sh_cmt_priv* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  store i64 %47, i64* %5, align 8
  br label %48

48:                                               ; preds = %44, %33
  %49 = load %struct.sh_cmt_priv*, %struct.sh_cmt_priv** %3, align 8
  %50 = load i32, i32* @CMCOR, align 4
  %51 = load i64, i64* %5, align 8
  %52 = call i32 @sh_cmt_write(%struct.sh_cmt_priv* %49, i32 %50, i64 %51)
  %53 = load %struct.sh_cmt_priv*, %struct.sh_cmt_priv** %3, align 8
  %54 = call i64 @sh_cmt_get_counter(%struct.sh_cmt_priv* %53, i32* %9)
  store i64 %54, i64* %8, align 8
  %55 = load i32, i32* %9, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %69

57:                                               ; preds = %48
  %58 = load i64, i64* %5, align 8
  %59 = load %struct.sh_cmt_priv*, %struct.sh_cmt_priv** %3, align 8
  %60 = getelementptr inbounds %struct.sh_cmt_priv, %struct.sh_cmt_priv* %59, i32 0, i32 2
  %61 = load i64, i64* %60, align 8
  %62 = icmp ugt i64 %58, %61
  br i1 %62, label %63, label %69

63:                                               ; preds = %57
  %64 = load i32, i32* @FLAG_SKIPEVENT, align 4
  %65 = load %struct.sh_cmt_priv*, %struct.sh_cmt_priv** %3, align 8
  %66 = getelementptr inbounds %struct.sh_cmt_priv, %struct.sh_cmt_priv* %65, i32 0, i32 3
  %67 = load i32, i32* %66, align 8
  %68 = or i32 %67, %64
  store i32 %68, i32* %66, align 8
  br label %100

69:                                               ; preds = %57, %48
  %70 = load i32, i32* %9, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %76

72:                                               ; preds = %69
  %73 = load i64, i64* %5, align 8
  %74 = load %struct.sh_cmt_priv*, %struct.sh_cmt_priv** %3, align 8
  %75 = getelementptr inbounds %struct.sh_cmt_priv, %struct.sh_cmt_priv* %74, i32 0, i32 2
  store i64 %73, i64* %75, align 8
  br label %100

76:                                               ; preds = %69
  %77 = load i64, i64* %8, align 8
  %78 = load i64, i64* %5, align 8
  %79 = icmp ult i64 %77, %78
  br i1 %79, label %80, label %84

80:                                               ; preds = %76
  %81 = load i64, i64* %5, align 8
  %82 = load %struct.sh_cmt_priv*, %struct.sh_cmt_priv** %3, align 8
  %83 = getelementptr inbounds %struct.sh_cmt_priv, %struct.sh_cmt_priv* %82, i32 0, i32 2
  store i64 %81, i64* %83, align 8
  br label %100

84:                                               ; preds = %76
  %85 = load i64, i64* %7, align 8
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %90

87:                                               ; preds = %84
  %88 = load i64, i64* %7, align 8
  %89 = shl i64 %88, 1
  store i64 %89, i64* %7, align 8
  br label %91

90:                                               ; preds = %84
  store i64 1, i64* %7, align 8
  br label %91

91:                                               ; preds = %90, %87
  %92 = load i64, i64* %7, align 8
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %96, label %94

94:                                               ; preds = %91
  %95 = call i32 @pr_warning(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  br label %96

96:                                               ; preds = %94, %91
  br label %97

97:                                               ; preds = %96
  %98 = load i64, i64* %7, align 8
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %33, label %100

100:                                              ; preds = %22, %97, %80, %72, %63
  ret void
}

declare dso_local i64 @sh_cmt_get_counter(%struct.sh_cmt_priv*, i32*) #1

declare dso_local i32 @sh_cmt_write(%struct.sh_cmt_priv*, i32, i64) #1

declare dso_local i32 @pr_warning(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
