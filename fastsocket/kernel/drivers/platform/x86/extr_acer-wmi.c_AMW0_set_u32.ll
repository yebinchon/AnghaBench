; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/platform/x86/extr_acer-wmi.c_AMW0_set_u32.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/platform/x86/extr_acer-wmi.c_AMW0_set_u32.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.wmi_interface = type { i32 }
%struct.wmab_args = type { i32, i64, i64, i32 }

@ACER_AMW0_WRITE = common dso_local global i32 0, align 4
@AE_BAD_PARAMETER = common dso_local global i32 0, align 4
@ACER_AMW0_MAILLED_MASK = common dso_local global i32 0, align 4
@ACER_AMW0_WIRELESS_MASK = common dso_local global i32 0, align 4
@ACER_AMW0_BLUETOOTH_MASK = common dso_local global i32 0, align 4
@max_brightness = common dso_local global i32 0, align 4
@quirks = common dso_local global %struct.TYPE_2__* null, align 8
@AE_ERROR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, %struct.wmi_interface*)* @AMW0_set_u32 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @AMW0_set_u32(i32 %0, i32 %1, %struct.wmi_interface* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.wmi_interface*, align 8
  %8 = alloca %struct.wmab_args, align 8
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store %struct.wmi_interface* %2, %struct.wmi_interface** %7, align 8
  %9 = load i32, i32* @ACER_AMW0_WRITE, align 4
  %10 = getelementptr inbounds %struct.wmab_args, %struct.wmab_args* %8, i32 0, i32 3
  store i32 %9, i32* %10, align 8
  %11 = load i32, i32* %5, align 4
  %12 = icmp ne i32 %11, 0
  %13 = zext i1 %12 to i64
  %14 = select i1 %12, i32 256, i32 0
  %15 = getelementptr inbounds %struct.wmab_args, %struct.wmab_args* %8, i32 0, i32 0
  store i32 %14, i32* %15, align 8
  %16 = getelementptr inbounds %struct.wmab_args, %struct.wmab_args* %8, i32 0, i32 1
  store i64 0, i64* %16, align 8
  %17 = getelementptr inbounds %struct.wmab_args, %struct.wmab_args* %8, i32 0, i32 2
  store i64 0, i64* %17, align 8
  %18 = load i32, i32* %6, align 4
  switch i32 %18, label %62 [
    i32 129, label %19
    i32 128, label %29
    i32 131, label %39
    i32 130, label %49
  ]

19:                                               ; preds = %3
  %20 = load i32, i32* %5, align 4
  %21 = icmp sgt i32 %20, 1
  br i1 %21, label %22, label %24

22:                                               ; preds = %19
  %23 = load i32, i32* @AE_BAD_PARAMETER, align 4
  store i32 %23, i32* %4, align 4
  br label %66

24:                                               ; preds = %19
  %25 = load i32, i32* @ACER_AMW0_MAILLED_MASK, align 4
  %26 = getelementptr inbounds %struct.wmab_args, %struct.wmab_args* %8, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = or i32 %27, %25
  store i32 %28, i32* %26, align 8
  br label %64

29:                                               ; preds = %3
  %30 = load i32, i32* %5, align 4
  %31 = icmp sgt i32 %30, 1
  br i1 %31, label %32, label %34

32:                                               ; preds = %29
  %33 = load i32, i32* @AE_BAD_PARAMETER, align 4
  store i32 %33, i32* %4, align 4
  br label %66

34:                                               ; preds = %29
  %35 = load i32, i32* @ACER_AMW0_WIRELESS_MASK, align 4
  %36 = getelementptr inbounds %struct.wmab_args, %struct.wmab_args* %8, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = or i32 %37, %35
  store i32 %38, i32* %36, align 8
  br label %64

39:                                               ; preds = %3
  %40 = load i32, i32* %5, align 4
  %41 = icmp sgt i32 %40, 1
  br i1 %41, label %42, label %44

42:                                               ; preds = %39
  %43 = load i32, i32* @AE_BAD_PARAMETER, align 4
  store i32 %43, i32* %4, align 4
  br label %66

44:                                               ; preds = %39
  %45 = load i32, i32* @ACER_AMW0_BLUETOOTH_MASK, align 4
  %46 = getelementptr inbounds %struct.wmab_args, %struct.wmab_args* %8, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = or i32 %47, %45
  store i32 %48, i32* %46, align 8
  br label %64

49:                                               ; preds = %3
  %50 = load i32, i32* %5, align 4
  %51 = load i32, i32* @max_brightness, align 4
  %52 = icmp sgt i32 %50, %51
  br i1 %52, label %53, label %55

53:                                               ; preds = %49
  %54 = load i32, i32* @AE_BAD_PARAMETER, align 4
  store i32 %54, i32* %4, align 4
  br label %66

55:                                               ; preds = %49
  %56 = load %struct.TYPE_2__*, %struct.TYPE_2__** @quirks, align 8
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  switch i32 %58, label %59 [
  ]

59:                                               ; preds = %55
  %60 = load i32, i32* %5, align 4
  %61 = call i32 @ec_write(i32 131, i32 %60)
  store i32 %61, i32* %4, align 4
  br label %66

62:                                               ; preds = %3
  %63 = load i32, i32* @AE_ERROR, align 4
  store i32 %63, i32* %4, align 4
  br label %66

64:                                               ; preds = %44, %34, %24
  %65 = call i32 @wmab_execute(%struct.wmab_args* %8, i32* null)
  store i32 %65, i32* %4, align 4
  br label %66

66:                                               ; preds = %64, %62, %59, %53, %42, %32, %22
  %67 = load i32, i32* %4, align 4
  ret i32 %67
}

declare dso_local i32 @ec_write(i32, i32) #1

declare dso_local i32 @wmab_execute(%struct.wmab_args*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
