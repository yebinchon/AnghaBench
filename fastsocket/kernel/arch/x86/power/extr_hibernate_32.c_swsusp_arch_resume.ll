; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/power/extr_hibernate_32.c_swsusp_arch_resume.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/power/extr_hibernate_32.c_swsusp_arch_resume.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@GFP_ATOMIC = common dso_local global i32 0, align 4
@resume_pg_dir = common dso_local global i32* null, align 8
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @swsusp_arch_resume() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = load i32, i32* @GFP_ATOMIC, align 4
  %4 = call i64 @get_safe_page(i32 %3)
  %5 = inttoptr i64 %4 to i32*
  store i32* %5, i32** @resume_pg_dir, align 8
  %6 = load i32*, i32** @resume_pg_dir, align 8
  %7 = icmp ne i32* %6, null
  br i1 %7, label %11, label %8

8:                                                ; preds = %0
  %9 = load i32, i32* @ENOMEM, align 4
  %10 = sub nsw i32 0, %9
  store i32 %10, i32* %1, align 4
  br label %22

11:                                               ; preds = %0
  %12 = load i32*, i32** @resume_pg_dir, align 8
  %13 = call i32 @resume_init_first_level_page_table(i32* %12)
  %14 = load i32*, i32** @resume_pg_dir, align 8
  %15 = call i32 @resume_physical_mapping_init(i32* %14)
  store i32 %15, i32* %2, align 4
  %16 = load i32, i32* %2, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %11
  %19 = load i32, i32* %2, align 4
  store i32 %19, i32* %1, align 4
  br label %22

20:                                               ; preds = %11
  %21 = call i32 (...) @restore_image()
  store i32 0, i32* %1, align 4
  br label %22

22:                                               ; preds = %20, %18, %8
  %23 = load i32, i32* %1, align 4
  ret i32 %23
}

declare dso_local i64 @get_safe_page(i32) #1

declare dso_local i32 @resume_init_first_level_page_table(i32*) #1

declare dso_local i32 @resume_physical_mapping_init(i32*) #1

declare dso_local i32 @restore_image(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
