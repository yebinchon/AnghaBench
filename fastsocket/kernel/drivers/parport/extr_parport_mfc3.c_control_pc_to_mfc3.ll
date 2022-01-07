; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/parport/extr_parport_mfc3.c_control_pc_to_mfc3.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/parport/extr_parport_mfc3.c_control_pc_to_mfc3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PARPORT_CONTROL_SELECT = common dso_local global i8 0, align 1
@PARPORT_CONTROL_INIT = common dso_local global i8 0, align 1
@PARPORT_CONTROL_AUTOFD = common dso_local global i8 0, align 1
@PARPORT_CONTROL_STROBE = common dso_local global i8 0, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8 (i8)* @control_pc_to_mfc3 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal zeroext i8 @control_pc_to_mfc3(i8 zeroext %0) #0 {
  %2 = alloca i8, align 1
  %3 = alloca i8, align 1
  store i8 %0, i8* %2, align 1
  store i8 96, i8* %3, align 1
  %4 = load i8, i8* %2, align 1
  %5 = zext i8 %4 to i32
  %6 = load i8, i8* @PARPORT_CONTROL_SELECT, align 1
  %7 = zext i8 %6 to i32
  %8 = and i32 %5, %7
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %15

10:                                               ; preds = %1
  %11 = load i8, i8* %3, align 1
  %12 = zext i8 %11 to i32
  %13 = and i32 %12, -33
  %14 = trunc i32 %13 to i8
  store i8 %14, i8* %3, align 1
  br label %15

15:                                               ; preds = %10, %1
  %16 = load i8, i8* %2, align 1
  %17 = zext i8 %16 to i32
  %18 = load i8, i8* @PARPORT_CONTROL_INIT, align 1
  %19 = zext i8 %18 to i32
  %20 = and i32 %17, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %27

22:                                               ; preds = %15
  %23 = load i8, i8* %3, align 1
  %24 = zext i8 %23 to i32
  %25 = or i32 %24, 128
  %26 = trunc i32 %25 to i8
  store i8 %26, i8* %3, align 1
  br label %27

27:                                               ; preds = %22, %15
  %28 = load i8, i8* %2, align 1
  %29 = zext i8 %28 to i32
  %30 = load i8, i8* @PARPORT_CONTROL_AUTOFD, align 1
  %31 = zext i8 %30 to i32
  %32 = and i32 %29, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %39

34:                                               ; preds = %27
  %35 = load i8, i8* %3, align 1
  %36 = zext i8 %35 to i32
  %37 = and i32 %36, -65
  %38 = trunc i32 %37 to i8
  store i8 %38, i8* %3, align 1
  br label %39

39:                                               ; preds = %34, %27
  %40 = load i8, i8* %2, align 1
  %41 = zext i8 %40 to i32
  %42 = load i8, i8* @PARPORT_CONTROL_STROBE, align 1
  %43 = zext i8 %42 to i32
  %44 = and i32 %41, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %39
  br label %47

47:                                               ; preds = %46, %39
  %48 = load i8, i8* %3, align 1
  ret i8 %48
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
