; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/boot/extr_pm.c_go_to_protected_mode.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/boot/extr_pm.c_go_to_protected_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [44 x i8] c"A20 gate not responding, unable to boot...\0A\00", align 1
@boot_params = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @go_to_protected_mode() #0 {
  %1 = call i32 (...) @realmode_switch_hook()
  %2 = call i64 (...) @enable_a20()
  %3 = icmp ne i64 %2, 0
  br i1 %3, label %4, label %7

4:                                                ; preds = %0
  %5 = call i32 @puts(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0))
  %6 = call i32 (...) @die()
  br label %7

7:                                                ; preds = %4, %0
  %8 = call i32 (...) @reset_coprocessor()
  %9 = call i32 (...) @mask_all_interrupts()
  %10 = call i32 (...) @setup_idt()
  %11 = call i32 (...) @setup_gdt()
  %12 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @boot_params, i32 0, i32 0, i32 0), align 4
  %13 = call i32 (...) @ds()
  %14 = shl i32 %13, 4
  %15 = sext i32 %14 to i64
  %16 = add nsw i64 ptrtoint (%struct.TYPE_4__* @boot_params to i64), %15
  %17 = call i32 @protected_mode_jump(i32 %12, i64 %16)
  ret void
}

declare dso_local i32 @realmode_switch_hook(...) #1

declare dso_local i64 @enable_a20(...) #1

declare dso_local i32 @puts(i8*) #1

declare dso_local i32 @die(...) #1

declare dso_local i32 @reset_coprocessor(...) #1

declare dso_local i32 @mask_all_interrupts(...) #1

declare dso_local i32 @setup_idt(...) #1

declare dso_local i32 @setup_gdt(...) #1

declare dso_local i32 @protected_mode_jump(i32, i64) #1

declare dso_local i32 @ds(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
