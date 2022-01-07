; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/zoran/extr_zoran_device.c_count_reset_interrupt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/zoran/extr_zoran_device.c_count_reset_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zoran = type { i32, i32, i32, i32 }

@ZR36057_ISR = common dso_local global i32 0, align 4
@ZR36057_ISR_GIRQ1 = common dso_local global i32 0, align 4
@ZR36057_ISR_GIRQ0 = common dso_local global i32 0, align 4
@ZR36057_ISR_CodRepIRQ = common dso_local global i32 0, align 4
@ZR36057_ISR_JPEGRepIRQ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.zoran*)* @count_reset_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @count_reset_interrupt(%struct.zoran* %0) #0 {
  %2 = alloca %struct.zoran*, align 8
  %3 = alloca i32, align 4
  store %struct.zoran* %0, %struct.zoran** %2, align 8
  %4 = load i32, i32* @ZR36057_ISR, align 4
  %5 = call i32 @btread(i32 %4)
  %6 = and i32 %5, 2013265920
  store i32 %6, i32* %3, align 4
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %8, label %61

8:                                                ; preds = %1
  %9 = load i32, i32* %3, align 4
  %10 = load i32, i32* @ZR36057_ISR_GIRQ1, align 4
  %11 = and i32 %9, %10
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %21

13:                                               ; preds = %8
  %14 = load i32, i32* @ZR36057_ISR_GIRQ1, align 4
  %15 = load i32, i32* @ZR36057_ISR, align 4
  %16 = call i32 @btwrite(i32 %14, i32 %15)
  %17 = load %struct.zoran*, %struct.zoran** %2, align 8
  %18 = getelementptr inbounds %struct.zoran, %struct.zoran* %17, i32 0, i32 3
  %19 = load i32, i32* %18, align 4
  %20 = add nsw i32 %19, 1
  store i32 %20, i32* %18, align 4
  br label %21

21:                                               ; preds = %13, %8
  %22 = load i32, i32* %3, align 4
  %23 = load i32, i32* @ZR36057_ISR_GIRQ0, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %34

26:                                               ; preds = %21
  %27 = load i32, i32* @ZR36057_ISR_GIRQ0, align 4
  %28 = load i32, i32* @ZR36057_ISR, align 4
  %29 = call i32 @btwrite(i32 %27, i32 %28)
  %30 = load %struct.zoran*, %struct.zoran** %2, align 8
  %31 = getelementptr inbounds %struct.zoran, %struct.zoran* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %31, align 4
  br label %34

34:                                               ; preds = %26, %21
  %35 = load i32, i32* %3, align 4
  %36 = load i32, i32* @ZR36057_ISR_CodRepIRQ, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %47

39:                                               ; preds = %34
  %40 = load i32, i32* @ZR36057_ISR_CodRepIRQ, align 4
  %41 = load i32, i32* @ZR36057_ISR, align 4
  %42 = call i32 @btwrite(i32 %40, i32 %41)
  %43 = load %struct.zoran*, %struct.zoran** %2, align 8
  %44 = getelementptr inbounds %struct.zoran, %struct.zoran* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %44, align 4
  br label %47

47:                                               ; preds = %39, %34
  %48 = load i32, i32* %3, align 4
  %49 = load i32, i32* @ZR36057_ISR_JPEGRepIRQ, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %60

52:                                               ; preds = %47
  %53 = load i32, i32* @ZR36057_ISR_JPEGRepIRQ, align 4
  %54 = load i32, i32* @ZR36057_ISR, align 4
  %55 = call i32 @btwrite(i32 %53, i32 %54)
  %56 = load %struct.zoran*, %struct.zoran** %2, align 8
  %57 = getelementptr inbounds %struct.zoran, %struct.zoran* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %57, align 4
  br label %60

60:                                               ; preds = %52, %47
  br label %61

61:                                               ; preds = %60, %1
  %62 = load i32, i32* %3, align 4
  ret i32 %62
}

declare dso_local i32 @btread(i32) #1

declare dso_local i32 @btwrite(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
