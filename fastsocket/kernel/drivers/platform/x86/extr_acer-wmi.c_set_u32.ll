; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/platform/x86/extr_acer-wmi.c_set_u32.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/platform/x86/extr_acer-wmi.c_set_u32.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32 }

@interface = common dso_local global %struct.TYPE_4__* null, align 8
@ACER_CAP_MAILLED = common dso_local global i32 0, align 4
@ACER_CAP_WIRELESS = common dso_local global i32 0, align 4
@ACER_CAP_BLUETOOTH = common dso_local global i32 0, align 4
@AE_BAD_PARAMETER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @set_u32 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_u32(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %7 = load %struct.TYPE_4__*, %struct.TYPE_4__** @interface, align 8
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* %5, align 4
  %11 = and i32 %9, %10
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %62

13:                                               ; preds = %2
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** @interface, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  switch i32 %16, label %60 [
    i32 130, label %17
    i32 129, label %22
    i32 128, label %55
  ]

17:                                               ; preds = %13
  %18 = load i32, i32* %4, align 4
  %19 = load i32, i32* %5, align 4
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** @interface, align 8
  %21 = call i32 @AMW0_set_u32(i32 %18, i32 %19, %struct.TYPE_4__* %20)
  store i32 %21, i32* %3, align 4
  br label %64

22:                                               ; preds = %13
  %23 = load i32, i32* %5, align 4
  %24 = load i32, i32* @ACER_CAP_MAILLED, align 4
  %25 = icmp eq i32 %23, %24
  br i1 %25, label %26, label %31

26:                                               ; preds = %22
  %27 = load i32, i32* %4, align 4
  %28 = load i32, i32* %5, align 4
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** @interface, align 8
  %30 = call i32 @AMW0_set_u32(i32 %27, i32 %28, %struct.TYPE_4__* %29)
  store i32 %30, i32* %3, align 4
  br label %64

31:                                               ; preds = %22
  %32 = load i32, i32* %5, align 4
  %33 = load i32, i32* @ACER_CAP_WIRELESS, align 4
  %34 = icmp eq i32 %32, %33
  br i1 %34, label %39, label %35

35:                                               ; preds = %31
  %36 = load i32, i32* %5, align 4
  %37 = load i32, i32* @ACER_CAP_BLUETOOTH, align 4
  %38 = icmp eq i32 %36, %37
  br i1 %38, label %39, label %54

39:                                               ; preds = %35, %31
  %40 = load i32, i32* %4, align 4
  %41 = load i32, i32* %5, align 4
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** @interface, align 8
  %43 = call i32 @WMID_set_u32(i32 %40, i32 %41, %struct.TYPE_4__* %42)
  store i32 %43, i32* %6, align 4
  %44 = load i32, i32* %6, align 4
  %45 = call i32 @ACPI_FAILURE(i32 %44)
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %39
  %48 = load i32, i32* %6, align 4
  store i32 %48, i32* %3, align 4
  br label %64

49:                                               ; preds = %39
  %50 = load i32, i32* %4, align 4
  %51 = load i32, i32* %5, align 4
  %52 = load %struct.TYPE_4__*, %struct.TYPE_4__** @interface, align 8
  %53 = call i32 @AMW0_set_u32(i32 %50, i32 %51, %struct.TYPE_4__* %52)
  store i32 %53, i32* %3, align 4
  br label %64

54:                                               ; preds = %35
  br label %55

55:                                               ; preds = %13, %54
  %56 = load i32, i32* %4, align 4
  %57 = load i32, i32* %5, align 4
  %58 = load %struct.TYPE_4__*, %struct.TYPE_4__** @interface, align 8
  %59 = call i32 @WMID_set_u32(i32 %56, i32 %57, %struct.TYPE_4__* %58)
  store i32 %59, i32* %3, align 4
  br label %64

60:                                               ; preds = %13
  %61 = load i32, i32* @AE_BAD_PARAMETER, align 4
  store i32 %61, i32* %3, align 4
  br label %64

62:                                               ; preds = %2
  %63 = load i32, i32* @AE_BAD_PARAMETER, align 4
  store i32 %63, i32* %3, align 4
  br label %64

64:                                               ; preds = %62, %60, %55, %49, %47, %26, %17
  %65 = load i32, i32* %3, align 4
  ret i32 %65
}

declare dso_local i32 @AMW0_set_u32(i32, i32, %struct.TYPE_4__*) #1

declare dso_local i32 @WMID_set_u32(i32, i32, %struct.TYPE_4__*) #1

declare dso_local i32 @ACPI_FAILURE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
