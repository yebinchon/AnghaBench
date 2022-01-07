; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/s390/kernel/extr_setup.c_setup_addressing_mode.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/s390/kernel/extr_setup.c_setup_addressing_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@user_mode = common dso_local global i64 0, align 8
@SECONDARY_SPACE_MODE = common dso_local global i64 0, align 8
@PSW_ASC_SECONDARY = common dso_local global i32 0, align 4
@PSW32_ASC_SECONDARY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"Execute protection active, mvcos available\0A\00", align 1
@.str.1 = private unnamed_addr constant [48 x i8] c"Execute protection active, mvcos not available\0A\00", align 1
@PRIMARY_SPACE_MODE = common dso_local global i64 0, align 8
@PSW_ASC_PRIMARY = common dso_local global i32 0, align 4
@PSW32_ASC_PRIMARY = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [42 x i8] c"Address spaces switched, mvcos available\0A\00", align 1
@.str.3 = private unnamed_addr constant [46 x i8] c"Address spaces switched, mvcos not available\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @setup_addressing_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @setup_addressing_mode() #0 {
  %1 = load i64, i64* @user_mode, align 8
  %2 = load i64, i64* @SECONDARY_SPACE_MODE, align 8
  %3 = icmp eq i64 %1, %2
  br i1 %3, label %4, label %14

4:                                                ; preds = %0
  %5 = load i32, i32* @PSW_ASC_SECONDARY, align 4
  %6 = load i32, i32* @PSW32_ASC_SECONDARY, align 4
  %7 = call i64 @set_amode_and_uaccess(i32 %5, i32 %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %11

9:                                                ; preds = %4
  %10 = call i32 @pr_info(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0))
  br label %13

11:                                               ; preds = %4
  %12 = call i32 @pr_info(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0))
  br label %13

13:                                               ; preds = %11, %9
  br label %29

14:                                               ; preds = %0
  %15 = load i64, i64* @user_mode, align 8
  %16 = load i64, i64* @PRIMARY_SPACE_MODE, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %28

18:                                               ; preds = %14
  %19 = load i32, i32* @PSW_ASC_PRIMARY, align 4
  %20 = load i32, i32* @PSW32_ASC_PRIMARY, align 4
  %21 = call i64 @set_amode_and_uaccess(i32 %19, i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %18
  %24 = call i32 @pr_info(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0))
  br label %27

25:                                               ; preds = %18
  %26 = call i32 @pr_info(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.3, i64 0, i64 0))
  br label %27

27:                                               ; preds = %25, %23
  br label %28

28:                                               ; preds = %27, %14
  br label %29

29:                                               ; preds = %28, %13
  ret void
}

declare dso_local i64 @set_amode_and_uaccess(i32, i32) #1

declare dso_local i32 @pr_info(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
