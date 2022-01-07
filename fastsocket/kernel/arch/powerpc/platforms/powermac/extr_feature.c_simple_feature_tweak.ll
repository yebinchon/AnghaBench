; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/platforms/powermac/extr_feature.c_simple_feature_tweak.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/platforms/powermac/extr_feature.c_simple_feature_tweak.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device_node = type { i32 }
%struct.macio_chip = type { i32 }

@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device_node*, i32, i32, i32, i32)* @simple_feature_tweak to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @simple_feature_tweak(%struct.device_node* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.device_node*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.macio_chip*, align 8
  %13 = alloca i64, align 8
  store %struct.device_node* %0, %struct.device_node** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %14 = load %struct.device_node*, %struct.device_node** %7, align 8
  %15 = load i32, i32* %8, align 4
  %16 = call %struct.macio_chip* @macio_find(%struct.device_node* %14, i32 %15)
  store %struct.macio_chip* %16, %struct.macio_chip** %12, align 8
  %17 = load %struct.macio_chip*, %struct.macio_chip** %12, align 8
  %18 = icmp ne %struct.macio_chip* %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %5
  %20 = load i32, i32* @ENODEV, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %6, align 4
  br label %40

22:                                               ; preds = %5
  %23 = load i64, i64* %13, align 8
  %24 = call i32 @LOCK(i64 %23)
  %25 = load i32, i32* %11, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %22
  %28 = load i32, i32* %9, align 4
  %29 = load i32, i32* %10, align 4
  %30 = call i32 @MACIO_BIS(i32 %28, i32 %29)
  br label %35

31:                                               ; preds = %22
  %32 = load i32, i32* %9, align 4
  %33 = load i32, i32* %10, align 4
  %34 = call i32 @MACIO_BIC(i32 %32, i32 %33)
  br label %35

35:                                               ; preds = %31, %27
  %36 = load i32, i32* %9, align 4
  %37 = call i32 @MACIO_IN32(i32 %36)
  %38 = load i64, i64* %13, align 8
  %39 = call i32 @UNLOCK(i64 %38)
  store i32 0, i32* %6, align 4
  br label %40

40:                                               ; preds = %35, %19
  %41 = load i32, i32* %6, align 4
  ret i32 %41
}

declare dso_local %struct.macio_chip* @macio_find(%struct.device_node*, i32) #1

declare dso_local i32 @LOCK(i64) #1

declare dso_local i32 @MACIO_BIS(i32, i32) #1

declare dso_local i32 @MACIO_BIC(i32, i32) #1

declare dso_local i32 @MACIO_IN32(i32) #1

declare dso_local i32 @UNLOCK(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
