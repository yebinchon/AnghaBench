; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/mn10300/boot/compressed/extr_misc.c_setup_normal_output_buffer.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/mn10300/boot/compressed/extr_misc.c_setup_normal_output_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ALT_MEM_K = common dso_local global i32 0, align 4
@EXT_MEM_K = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"Less than 2MB of memory.\0A\00", align 1
@output_data = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @setup_normal_output_buffer() #0 {
  %1 = load i32, i32* @ALT_MEM_K, align 4
  %2 = load i32, i32* @EXT_MEM_K, align 4
  %3 = icmp sgt i32 %1, %2
  br i1 %3, label %4, label %6

4:                                                ; preds = %0
  %5 = load i32, i32* @ALT_MEM_K, align 4
  br label %8

6:                                                ; preds = %0
  %7 = load i32, i32* @EXT_MEM_K, align 4
  br label %8

8:                                                ; preds = %6, %4
  %9 = phi i32 [ %5, %4 ], [ %7, %6 ]
  %10 = icmp slt i32 %9, 1024
  br i1 %10, label %11, label %13

11:                                               ; preds = %8
  %12 = call i32 @error(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  br label %13

13:                                               ; preds = %11, %8
  store i8* inttoptr (i64 1048576 to i8*), i8** @output_data, align 8
  ret void
}

declare dso_local i32 @error(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
