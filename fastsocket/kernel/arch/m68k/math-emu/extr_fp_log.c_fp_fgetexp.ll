; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/m68k/math-emu/extr_fp_log.c_fp_fgetexp.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/m68k/math-emu/extr_fp_log.c_fp_fgetexp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fp_ext = type { i64 }

@PINSTR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"fgetexp\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.fp_ext* @fp_fgetexp(%struct.fp_ext* %0, %struct.fp_ext* %1) #0 {
  %3 = alloca %struct.fp_ext*, align 8
  %4 = alloca %struct.fp_ext*, align 8
  %5 = alloca %struct.fp_ext*, align 8
  store %struct.fp_ext* %0, %struct.fp_ext** %4, align 8
  store %struct.fp_ext* %1, %struct.fp_ext** %5, align 8
  %6 = load i32, i32* @PINSTR, align 4
  %7 = call i32 @dprint(i32 %6, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %8 = load %struct.fp_ext*, %struct.fp_ext** %4, align 8
  %9 = load %struct.fp_ext*, %struct.fp_ext** %5, align 8
  %10 = call i32 @fp_monadic_check(%struct.fp_ext* %8, %struct.fp_ext* %9)
  %11 = load %struct.fp_ext*, %struct.fp_ext** %4, align 8
  %12 = call i64 @IS_INF(%struct.fp_ext* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %18

14:                                               ; preds = %2
  %15 = load %struct.fp_ext*, %struct.fp_ext** %4, align 8
  %16 = call i32 @fp_set_nan(%struct.fp_ext* %15)
  %17 = load %struct.fp_ext*, %struct.fp_ext** %4, align 8
  store %struct.fp_ext* %17, %struct.fp_ext** %3, align 8
  br label %35

18:                                               ; preds = %2
  %19 = load %struct.fp_ext*, %struct.fp_ext** %4, align 8
  %20 = call i64 @IS_ZERO(%struct.fp_ext* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %18
  %23 = load %struct.fp_ext*, %struct.fp_ext** %4, align 8
  store %struct.fp_ext* %23, %struct.fp_ext** %3, align 8
  br label %35

24:                                               ; preds = %18
  %25 = load %struct.fp_ext*, %struct.fp_ext** %4, align 8
  %26 = load %struct.fp_ext*, %struct.fp_ext** %4, align 8
  %27 = getelementptr inbounds %struct.fp_ext, %struct.fp_ext* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = trunc i64 %28 to i32
  %30 = sub nsw i32 %29, 16383
  %31 = call i32 @fp_conv_long2ext(%struct.fp_ext* %25, i32 %30)
  %32 = load %struct.fp_ext*, %struct.fp_ext** %4, align 8
  %33 = call i32 @fp_normalize_ext(%struct.fp_ext* %32)
  %34 = load %struct.fp_ext*, %struct.fp_ext** %4, align 8
  store %struct.fp_ext* %34, %struct.fp_ext** %3, align 8
  br label %35

35:                                               ; preds = %24, %22, %14
  %36 = load %struct.fp_ext*, %struct.fp_ext** %3, align 8
  ret %struct.fp_ext* %36
}

declare dso_local i32 @dprint(i32, i8*) #1

declare dso_local i32 @fp_monadic_check(%struct.fp_ext*, %struct.fp_ext*) #1

declare dso_local i64 @IS_INF(%struct.fp_ext*) #1

declare dso_local i32 @fp_set_nan(%struct.fp_ext*) #1

declare dso_local i64 @IS_ZERO(%struct.fp_ext*) #1

declare dso_local i32 @fp_conv_long2ext(%struct.fp_ext*, i32) #1

declare dso_local i32 @fp_normalize_ext(%struct.fp_ext*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
