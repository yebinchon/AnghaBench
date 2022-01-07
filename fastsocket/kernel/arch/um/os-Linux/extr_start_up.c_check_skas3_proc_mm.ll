; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/um/os-Linux/extr_start_up.c_check_skas3_proc_mm.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/um/os-Linux/extr_start_up.c_check_skas3_proc_mm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [16 x i8] c"  - /proc/mm...\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"/proc/mm\00", align 1
@W_OK = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [10 x i8] c"not found\00", align 1
@disable_proc_mm = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [36 x i8] c"found but disabled on command line\0A\00", align 1
@proc_mm = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [7 x i8] c"found\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @check_skas3_proc_mm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @check_skas3_proc_mm() #0 {
  %1 = call i32 @non_fatal(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %2 = load i32, i32* @W_OK, align 4
  %3 = call i64 @access(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32 %2)
  %4 = icmp slt i64 %3, 0
  br i1 %4, label %5, label %7

5:                                                ; preds = %0
  %6 = call i32 @perror(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0))
  br label %15

7:                                                ; preds = %0
  %8 = load i64, i64* @disable_proc_mm, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %7
  %11 = call i32 @non_fatal(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0))
  br label %14

12:                                               ; preds = %7
  store i32 1, i32* @proc_mm, align 4
  %13 = call i32 @non_fatal(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0))
  br label %14

14:                                               ; preds = %12, %10
  br label %15

15:                                               ; preds = %14, %5
  ret void
}

declare dso_local i32 @non_fatal(i8*) #1

declare dso_local i64 @access(i8*, i32) #1

declare dso_local i32 @perror(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
