; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/block/paride/extr_pcd.c_pcd_probe.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/block/paride/extr_pcd.c_pcd_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pcd_unit = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pcd_unit*, i32, i8*)* @pcd_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pcd_probe(%struct.pcd_unit* %0, i32 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.pcd_unit*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  store %struct.pcd_unit* %0, %struct.pcd_unit** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  %8 = load i32, i32* %6, align 4
  %9 = icmp eq i32 %8, -1
  br i1 %9, label %10, label %35

10:                                               ; preds = %3
  %11 = load %struct.pcd_unit*, %struct.pcd_unit** %5, align 8
  %12 = getelementptr inbounds %struct.pcd_unit, %struct.pcd_unit* %11, i32 0, i32 0
  store i32 0, i32* %12, align 4
  br label %13

13:                                               ; preds = %29, %10
  %14 = load %struct.pcd_unit*, %struct.pcd_unit** %5, align 8
  %15 = getelementptr inbounds %struct.pcd_unit, %struct.pcd_unit* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = icmp sle i32 %16, 1
  br i1 %17, label %18, label %34

18:                                               ; preds = %13
  %19 = load %struct.pcd_unit*, %struct.pcd_unit** %5, align 8
  %20 = call i32 @pcd_reset(%struct.pcd_unit* %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %28, label %22

22:                                               ; preds = %18
  %23 = load %struct.pcd_unit*, %struct.pcd_unit** %5, align 8
  %24 = load i8*, i8** %7, align 8
  %25 = call i32 @pcd_identify(%struct.pcd_unit* %23, i8* %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %28, label %27

27:                                               ; preds = %22
  store i32 0, i32* %4, align 4
  br label %50

28:                                               ; preds = %22, %18
  br label %29

29:                                               ; preds = %28
  %30 = load %struct.pcd_unit*, %struct.pcd_unit** %5, align 8
  %31 = getelementptr inbounds %struct.pcd_unit, %struct.pcd_unit* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %31, align 4
  br label %13

34:                                               ; preds = %13
  br label %49

35:                                               ; preds = %3
  %36 = load i32, i32* %6, align 4
  %37 = load %struct.pcd_unit*, %struct.pcd_unit** %5, align 8
  %38 = getelementptr inbounds %struct.pcd_unit, %struct.pcd_unit* %37, i32 0, i32 0
  store i32 %36, i32* %38, align 4
  %39 = load %struct.pcd_unit*, %struct.pcd_unit** %5, align 8
  %40 = call i32 @pcd_reset(%struct.pcd_unit* %39)
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %48, label %42

42:                                               ; preds = %35
  %43 = load %struct.pcd_unit*, %struct.pcd_unit** %5, align 8
  %44 = load i8*, i8** %7, align 8
  %45 = call i32 @pcd_identify(%struct.pcd_unit* %43, i8* %44)
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %48, label %47

47:                                               ; preds = %42
  store i32 0, i32* %4, align 4
  br label %50

48:                                               ; preds = %42, %35
  br label %49

49:                                               ; preds = %48, %34
  store i32 -1, i32* %4, align 4
  br label %50

50:                                               ; preds = %49, %47, %27
  %51 = load i32, i32* %4, align 4
  ret i32 %51
}

declare dso_local i32 @pcd_reset(%struct.pcd_unit*) #1

declare dso_local i32 @pcd_identify(%struct.pcd_unit*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
