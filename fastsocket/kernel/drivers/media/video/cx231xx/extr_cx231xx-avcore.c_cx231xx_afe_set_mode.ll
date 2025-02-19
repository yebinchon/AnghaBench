; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/cx231xx/extr_cx231xx-avcore.c_cx231xx_afe_set_mode.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/cx231xx/extr_cx231xx-avcore.c_cx231xx_afe_set_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cx231xx = type { i32, i64 }

@CX231XX_VMUX_TELEVISION = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cx231xx_afe_set_mode(%struct.cx231xx* %0, i32 %1) #0 {
  %3 = alloca %struct.cx231xx*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.cx231xx* %0, %struct.cx231xx** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %6 = load i32, i32* %4, align 4
  switch i32 %6, label %16 [
    i32 129, label %7
    i32 132, label %10
    i32 131, label %13
    i32 128, label %14
    i32 130, label %15
  ]

7:                                                ; preds = %2
  %8 = load %struct.cx231xx*, %struct.cx231xx** %3, align 8
  %9 = call i32 @cx231xx_Setup_AFE_for_LowIF(%struct.cx231xx* %8)
  br label %16

10:                                               ; preds = %2
  %11 = load %struct.cx231xx*, %struct.cx231xx** %3, align 8
  %12 = call i32 @cx231xx_afe_setup_AFE_for_baseband(%struct.cx231xx* %11)
  store i32 %12, i32* %5, align 4
  br label %16

13:                                               ; preds = %2
  br label %16

14:                                               ; preds = %2
  br label %16

15:                                               ; preds = %2
  br label %16

16:                                               ; preds = %2, %15, %14, %13, %10, %7
  %17 = load i32, i32* %4, align 4
  %18 = load %struct.cx231xx*, %struct.cx231xx** %3, align 8
  %19 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = icmp ne i32 %17, %20
  br i1 %21, label %22, label %32

22:                                               ; preds = %16
  %23 = load %struct.cx231xx*, %struct.cx231xx** %3, align 8
  %24 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @CX231XX_VMUX_TELEVISION, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %32

28:                                               ; preds = %22
  %29 = load %struct.cx231xx*, %struct.cx231xx** %3, align 8
  %30 = load i64, i64* @CX231XX_VMUX_TELEVISION, align 8
  %31 = call i32 @cx231xx_afe_adjust_ref_count(%struct.cx231xx* %29, i64 %30)
  store i32 %31, i32* %5, align 4
  br label %32

32:                                               ; preds = %28, %22, %16
  %33 = load i32, i32* %4, align 4
  %34 = load %struct.cx231xx*, %struct.cx231xx** %3, align 8
  %35 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %34, i32 0, i32 0
  store i32 %33, i32* %35, align 8
  %36 = load i32, i32* %5, align 4
  ret i32 %36
}

declare dso_local i32 @cx231xx_Setup_AFE_for_LowIF(%struct.cx231xx*) #1

declare dso_local i32 @cx231xx_afe_setup_AFE_for_baseband(%struct.cx231xx*) #1

declare dso_local i32 @cx231xx_afe_adjust_ref_count(%struct.cx231xx*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
