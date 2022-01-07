; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/net/extr_lcs.c_lcs_register_debug_facility.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/net/extr_lcs.c_lcs_register_debug_facility.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [10 x i8] c"lcs_setup\00", align 1
@lcs_dbf_setup = common dso_local global i32* null, align 8
@.str.1 = private unnamed_addr constant [10 x i8] c"lcs_trace\00", align 1
@lcs_dbf_trace = common dso_local global i32* null, align 8
@.str.2 = private unnamed_addr constant [39 x i8] c"Not enough memory for debug facility.\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@debug_hex_ascii_view = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @lcs_register_debug_facility to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lcs_register_debug_facility() #0 {
  %1 = alloca i32, align 4
  %2 = call i32* @debug_register(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 2, i32 1, i32 8)
  store i32* %2, i32** @lcs_dbf_setup, align 8
  %3 = call i32* @debug_register(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 4, i32 1, i32 8)
  store i32* %3, i32** @lcs_dbf_trace, align 8
  %4 = load i32*, i32** @lcs_dbf_setup, align 8
  %5 = icmp eq i32* %4, null
  br i1 %5, label %9, label %6

6:                                                ; preds = %0
  %7 = load i32*, i32** @lcs_dbf_trace, align 8
  %8 = icmp eq i32* %7, null
  br i1 %8, label %9, label %14

9:                                                ; preds = %6, %0
  %10 = call i32 @pr_err(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0))
  %11 = call i32 (...) @lcs_unregister_debug_facility()
  %12 = load i32, i32* @ENOMEM, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %1, align 4
  br label %23

14:                                               ; preds = %6
  %15 = load i32*, i32** @lcs_dbf_setup, align 8
  %16 = call i32 @debug_register_view(i32* %15, i32* @debug_hex_ascii_view)
  %17 = load i32*, i32** @lcs_dbf_setup, align 8
  %18 = call i32 @debug_set_level(i32* %17, i32 2)
  %19 = load i32*, i32** @lcs_dbf_trace, align 8
  %20 = call i32 @debug_register_view(i32* %19, i32* @debug_hex_ascii_view)
  %21 = load i32*, i32** @lcs_dbf_trace, align 8
  %22 = call i32 @debug_set_level(i32* %21, i32 2)
  store i32 0, i32* %1, align 4
  br label %23

23:                                               ; preds = %14, %9
  %24 = load i32, i32* %1, align 4
  ret i32 %24
}

declare dso_local i32* @debug_register(i8*, i32, i32, i32) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @lcs_unregister_debug_facility(...) #1

declare dso_local i32 @debug_register_view(i32*, i32*) #1

declare dso_local i32 @debug_set_level(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
