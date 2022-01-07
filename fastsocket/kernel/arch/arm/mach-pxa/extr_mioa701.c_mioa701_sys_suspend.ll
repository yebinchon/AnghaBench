; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-pxa/extr_mioa701.c_mioa701_sys_suspend.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-pxa/extr_mioa701.c_mioa701_sys_suspend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sys_device = type { i32 }

@RESUME_VECTOR_ADDR = common dso_local global i32 0, align 4
@RESUME_ENABLE_ADDR = common dso_local global i32 0, align 4
@RESUME_BT_ADDR = common dso_local global i32 0, align 4
@RESUME_UNKNOWN_ADDR = common dso_local global i32 0, align 4
@GPIO83_BT_ON = common dso_local global i32 0, align 4
@MFP_LPM_DRIVE_HIGH = common dso_local global i32 0, align 4
@MFP_LPM_DRIVE_LOW = common dso_local global i32 0, align 4
@BOOTSTRAP_WORDS = common dso_local global i32 0, align 4
@save_buffer = common dso_local global i32* null, align 8
@RESUME_ENABLE_VAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sys_device*, i32)* @mioa701_sys_suspend to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mioa701_sys_suspend(%struct.sys_device* %0, i32 %1) #0 {
  %3 = alloca %struct.sys_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  store %struct.sys_device* %0, %struct.sys_device** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %11 = load i32, i32* @RESUME_VECTOR_ADDR, align 4
  %12 = call i32* @phys_to_virt(i32 %11)
  store i32* %12, i32** %7, align 8
  %13 = load i32, i32* @RESUME_ENABLE_ADDR, align 4
  %14 = call i32* @phys_to_virt(i32 %13)
  store i32* %14, i32** %8, align 8
  %15 = load i32, i32* @RESUME_BT_ADDR, align 4
  %16 = call i32* @phys_to_virt(i32 %15)
  store i32* %16, i32** %9, align 8
  %17 = load i32, i32* @RESUME_UNKNOWN_ADDR, align 4
  %18 = call i32* @phys_to_virt(i32 %17)
  store i32* %18, i32** %10, align 8
  %19 = load i32, i32* @GPIO83_BT_ON, align 4
  %20 = call i32 @gpio_get_value(i32 %19)
  %21 = icmp ne i32 %20, 0
  %22 = xor i1 %21, true
  %23 = xor i1 %22, true
  %24 = zext i1 %23 to i32
  store i32 %24, i32* %6, align 4
  %25 = load i32, i32* @GPIO83_BT_ON, align 4
  %26 = load i32, i32* %6, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %2
  %29 = load i32, i32* @MFP_LPM_DRIVE_HIGH, align 4
  br label %32

30:                                               ; preds = %2
  %31 = load i32, i32* @MFP_LPM_DRIVE_LOW, align 4
  br label %32

32:                                               ; preds = %30, %28
  %33 = phi i32 [ %29, %28 ], [ %31, %30 ]
  %34 = call i32 @pxa2xx_mfp_set_lpm(i32 %25, i32 %33)
  store i32 0, i32* %5, align 4
  br label %35

35:                                               ; preds = %49, %32
  %36 = load i32, i32* %5, align 4
  %37 = load i32, i32* @BOOTSTRAP_WORDS, align 4
  %38 = icmp slt i32 %36, %37
  br i1 %38, label %39, label %52

39:                                               ; preds = %35
  %40 = load i32*, i32** %7, align 8
  %41 = load i32, i32* %5, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i32, i32* %40, i64 %42
  %44 = load i32, i32* %43, align 4
  %45 = load i32*, i32** @save_buffer, align 8
  %46 = load i32, i32* %5, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i32, i32* %45, i64 %47
  store i32 %44, i32* %48, align 4
  br label %49

49:                                               ; preds = %39
  %50 = load i32, i32* %5, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %5, align 4
  br label %35

52:                                               ; preds = %35
  %53 = load i32*, i32** %8, align 8
  %54 = load i32, i32* %53, align 4
  %55 = load i32*, i32** @save_buffer, align 8
  %56 = load i32, i32* %5, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %5, align 4
  %58 = sext i32 %56 to i64
  %59 = getelementptr inbounds i32, i32* %55, i64 %58
  store i32 %54, i32* %59, align 4
  %60 = load i32*, i32** %9, align 8
  %61 = load i32, i32* %60, align 4
  %62 = load i32*, i32** @save_buffer, align 8
  %63 = load i32, i32* %5, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %5, align 4
  %65 = sext i32 %63 to i64
  %66 = getelementptr inbounds i32, i32* %62, i64 %65
  store i32 %61, i32* %66, align 4
  %67 = load i32*, i32** %10, align 8
  %68 = load i32, i32* %67, align 4
  %69 = load i32*, i32** @save_buffer, align 8
  %70 = load i32, i32* %5, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %5, align 4
  %72 = sext i32 %70 to i64
  %73 = getelementptr inbounds i32, i32* %69, i64 %72
  store i32 %68, i32* %73, align 4
  %74 = load i32, i32* @RESUME_ENABLE_VAL, align 4
  %75 = load i32*, i32** %8, align 8
  store i32 %74, i32* %75, align 4
  %76 = load i32, i32* %6, align 4
  %77 = load i32*, i32** %9, align 8
  store i32 %76, i32* %77, align 4
  %78 = call i32 (...) @install_bootstrap()
  ret i32 0
}

declare dso_local i32* @phys_to_virt(i32) #1

declare dso_local i32 @gpio_get_value(i32) #1

declare dso_local i32 @pxa2xx_mfp_set_lpm(i32, i32) #1

declare dso_local i32 @install_bootstrap(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
