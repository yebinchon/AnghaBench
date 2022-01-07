; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/mips/lasat/extr_picvue.c_pvc_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/mips/lasat/extr_picvue.c_pvc_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@EIGHT_BYTE = common dso_local global i32 0, align 4
@PVC_NLINES = common dso_local global i32 0, align 4
@SMALL_FONT = common dso_local global i32 0, align 4
@TWO_LINES = common dso_local global i32 0, align 4
@LARGE_FONT = common dso_local global i32 0, align 4
@ONE_LINE = common dso_local global i32 0, align 4
@DISP_ON = common dso_local global i32 0, align 4
@AUTO_INC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"Display\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"Initialized\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pvc_init() #0 {
  %1 = alloca i32, align 4
  %2 = load i32, i32* @EIGHT_BYTE, align 4
  store i32 %2, i32* %1, align 4
  %3 = load i32, i32* @PVC_NLINES, align 4
  %4 = icmp eq i32 %3, 2
  br i1 %4, label %5, label %11

5:                                                ; preds = %0
  %6 = load i32, i32* @SMALL_FONT, align 4
  %7 = load i32, i32* @TWO_LINES, align 4
  %8 = or i32 %6, %7
  %9 = load i32, i32* %1, align 4
  %10 = or i32 %9, %8
  store i32 %10, i32* %1, align 4
  br label %17

11:                                               ; preds = %0
  %12 = load i32, i32* @LARGE_FONT, align 4
  %13 = load i32, i32* @ONE_LINE, align 4
  %14 = or i32 %12, %13
  %15 = load i32, i32* %1, align 4
  %16 = or i32 %15, %14
  store i32 %16, i32* %1, align 4
  br label %17

17:                                               ; preds = %11, %5
  %18 = load i32, i32* %1, align 4
  %19 = call i32 @pvc_funcset(i32 %18)
  %20 = load i32, i32* @DISP_ON, align 4
  %21 = call i32 @pvc_dispcnt(i32 %20)
  %22 = load i32, i32* @AUTO_INC, align 4
  %23 = call i32 @pvc_entrymode(i32 %22)
  %24 = call i32 (...) @pvc_clear()
  %25 = call i32 @pvc_write_string_centered(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 0)
  %26 = call i32 @pvc_write_string_centered(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i32 1)
  ret i32 0
}

declare dso_local i32 @pvc_funcset(i32) #1

declare dso_local i32 @pvc_dispcnt(i32) #1

declare dso_local i32 @pvc_entrymode(i32) #1

declare dso_local i32 @pvc_clear(...) #1

declare dso_local i32 @pvc_write_string_centered(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
