; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/power/extr_hibernate_64.c_swsusp_arch_resume.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/power/extr_hibernate_64.c_swsusp_arch_resume.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@GFP_ATOMIC = common dso_local global i32 0, align 4
@relocated_restore_code = common dso_local global i8* null, align 8
@ENOMEM = common dso_local global i32 0, align 4
@core_restore_code = common dso_local global i32 0, align 4
@restore_registers = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @swsusp_arch_resume() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = call i32 (...) @set_up_temporary_mappings()
  store i32 %3, i32* %2, align 4
  %4 = icmp ne i32 %3, 0
  br i1 %4, label %5, label %7

5:                                                ; preds = %0
  %6 = load i32, i32* %2, align 4
  store i32 %6, i32* %1, align 4
  br label %20

7:                                                ; preds = %0
  %8 = load i32, i32* @GFP_ATOMIC, align 4
  %9 = call i64 @get_safe_page(i32 %8)
  %10 = inttoptr i64 %9 to i8*
  store i8* %10, i8** @relocated_restore_code, align 8
  %11 = load i8*, i8** @relocated_restore_code, align 8
  %12 = icmp ne i8* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %7
  %14 = load i32, i32* @ENOMEM, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %1, align 4
  br label %20

16:                                               ; preds = %7
  %17 = load i8*, i8** @relocated_restore_code, align 8
  %18 = call i32 @memcpy(i8* %17, i32* @core_restore_code, i32 trunc (i64 sdiv exact (i64 sub (i64 ptrtoint (i32* @restore_registers to i64), i64 ptrtoint (i32* @core_restore_code to i64)), i64 4) to i32))
  %19 = call i32 (...) @restore_image()
  store i32 0, i32* %1, align 4
  br label %20

20:                                               ; preds = %16, %13, %5
  %21 = load i32, i32* %1, align 4
  ret i32 %21
}

declare dso_local i32 @set_up_temporary_mappings(...) #1

declare dso_local i64 @get_safe_page(i32) #1

declare dso_local i32 @memcpy(i8*, i32*, i32) #1

declare dso_local i32 @restore_image(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
