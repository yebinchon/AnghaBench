; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/boot/extr_main.c_main.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/boot/extr_main.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [64 x i8] c"Unable to boot - please use a kernel appropriate for your CPU.\0A\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"quiet\00", align 1
@QUIET_FLAG = common dso_local global i32 0, align 4
@boot_params = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @main() #0 {
  %1 = call i32 (...) @copy_boot_params()
  %2 = call i32 (...) @init_heap()
  %3 = call i64 (...) @validate_cpu()
  %4 = icmp ne i64 %3, 0
  br i1 %4, label %5, label %8

5:                                                ; preds = %0
  %6 = call i32 @puts(i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str, i64 0, i64 0))
  %7 = call i32 (...) @die()
  br label %8

8:                                                ; preds = %5, %0
  %9 = call i32 (...) @set_bios_mode()
  %10 = call i32 (...) @detect_memory()
  %11 = call i32 (...) @keyboard_set_repeat()
  %12 = call i32 (...) @query_mca()
  %13 = call i32 (...) @query_ist()
  %14 = call i32 (...) @set_video()
  %15 = call i64 @cmdline_find_option_bool(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %8
  %18 = load i32, i32* @QUIET_FLAG, align 4
  %19 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @boot_params, i32 0, i32 0, i32 0), align 4
  %20 = or i32 %19, %18
  store i32 %20, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @boot_params, i32 0, i32 0, i32 0), align 4
  br label %21

21:                                               ; preds = %17, %8
  %22 = call i32 (...) @go_to_protected_mode()
  ret void
}

declare dso_local i32 @copy_boot_params(...) #1

declare dso_local i32 @init_heap(...) #1

declare dso_local i64 @validate_cpu(...) #1

declare dso_local i32 @puts(i8*) #1

declare dso_local i32 @die(...) #1

declare dso_local i32 @set_bios_mode(...) #1

declare dso_local i32 @detect_memory(...) #1

declare dso_local i32 @keyboard_set_repeat(...) #1

declare dso_local i32 @query_mca(...) #1

declare dso_local i32 @query_ist(...) #1

declare dso_local i32 @set_video(...) #1

declare dso_local i64 @cmdline_find_option_bool(i8*) #1

declare dso_local i32 @go_to_protected_mode(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
