; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-integrator/extr_integrator_cp.c_cp_clcd_enable.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-integrator/extr_integrator_cp.c_cp_clcd_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clcd_fb = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@CM_CTRL_LCDMUXSEL_VGA_8421BPP = common dso_local global i32 0, align 4
@CM_CTRL_LCDMUXSEL_VGA_16BPP = common dso_local global i32 0, align 4
@CM_CTRL_LCDEN0 = common dso_local global i32 0, align 4
@CM_CTRL_LCDEN1 = common dso_local global i32 0, align 4
@CM_CTRL_STATIC1 = common dso_local global i32 0, align 4
@CM_CTRL_STATIC2 = common dso_local global i32 0, align 4
@CM_CTRL_LCDMUXSEL_MASK = common dso_local global i32 0, align 4
@CM_CTRL_STATIC = common dso_local global i32 0, align 4
@CM_CTRL_n24BITEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.clcd_fb*)* @cp_clcd_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cp_clcd_enable(%struct.clcd_fb* %0) #0 {
  %2 = alloca %struct.clcd_fb*, align 8
  %3 = alloca i32, align 4
  store %struct.clcd_fb* %0, %struct.clcd_fb** %2, align 8
  %4 = load %struct.clcd_fb*, %struct.clcd_fb** %2, align 8
  %5 = getelementptr inbounds %struct.clcd_fb, %struct.clcd_fb* %4, i32 0, i32 0
  %6 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = icmp sle i32 %8, 8
  br i1 %9, label %10, label %12

10:                                               ; preds = %1
  %11 = load i32, i32* @CM_CTRL_LCDMUXSEL_VGA_8421BPP, align 4
  store i32 %11, i32* %3, align 4
  br label %31

12:                                               ; preds = %1
  %13 = load %struct.clcd_fb*, %struct.clcd_fb** %2, align 8
  %14 = getelementptr inbounds %struct.clcd_fb, %struct.clcd_fb* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = icmp sle i32 %17, 16
  br i1 %18, label %19, label %29

19:                                               ; preds = %12
  %20 = load i32, i32* @CM_CTRL_LCDMUXSEL_VGA_16BPP, align 4
  %21 = load i32, i32* @CM_CTRL_LCDEN0, align 4
  %22 = or i32 %20, %21
  %23 = load i32, i32* @CM_CTRL_LCDEN1, align 4
  %24 = or i32 %22, %23
  %25 = load i32, i32* @CM_CTRL_STATIC1, align 4
  %26 = or i32 %24, %25
  %27 = load i32, i32* @CM_CTRL_STATIC2, align 4
  %28 = or i32 %26, %27
  store i32 %28, i32* %3, align 4
  br label %30

29:                                               ; preds = %12
  store i32 0, i32* %3, align 4
  br label %30

30:                                               ; preds = %29, %19
  br label %31

31:                                               ; preds = %30, %10
  %32 = load i32, i32* @CM_CTRL_LCDMUXSEL_MASK, align 4
  %33 = load i32, i32* @CM_CTRL_LCDEN0, align 4
  %34 = or i32 %32, %33
  %35 = load i32, i32* @CM_CTRL_LCDEN1, align 4
  %36 = or i32 %34, %35
  %37 = load i32, i32* @CM_CTRL_STATIC1, align 4
  %38 = or i32 %36, %37
  %39 = load i32, i32* @CM_CTRL_STATIC2, align 4
  %40 = or i32 %38, %39
  %41 = load i32, i32* @CM_CTRL_STATIC, align 4
  %42 = or i32 %40, %41
  %43 = load i32, i32* @CM_CTRL_n24BITEN, align 4
  %44 = or i32 %42, %43
  %45 = load i32, i32* %3, align 4
  %46 = call i32 @cm_control(i32 %44, i32 %45)
  ret void
}

declare dso_local i32 @cm_control(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
