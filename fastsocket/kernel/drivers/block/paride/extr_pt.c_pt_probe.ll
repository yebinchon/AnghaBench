; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/block/paride/extr_pt.c_pt_probe.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/block/paride/extr_pt.c_pt_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pt_unit = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pt_unit*)* @pt_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pt_probe(%struct.pt_unit* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pt_unit*, align 8
  store %struct.pt_unit* %0, %struct.pt_unit** %3, align 8
  %4 = load %struct.pt_unit*, %struct.pt_unit** %3, align 8
  %5 = getelementptr inbounds %struct.pt_unit, %struct.pt_unit* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  %7 = icmp eq i32 %6, -1
  br i1 %7, label %8, label %30

8:                                                ; preds = %1
  %9 = load %struct.pt_unit*, %struct.pt_unit** %3, align 8
  %10 = getelementptr inbounds %struct.pt_unit, %struct.pt_unit* %9, i32 0, i32 0
  store i32 0, i32* %10, align 4
  br label %11

11:                                               ; preds = %24, %8
  %12 = load %struct.pt_unit*, %struct.pt_unit** %3, align 8
  %13 = getelementptr inbounds %struct.pt_unit, %struct.pt_unit* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = icmp sle i32 %14, 1
  br i1 %15, label %16, label %29

16:                                               ; preds = %11
  %17 = load %struct.pt_unit*, %struct.pt_unit** %3, align 8
  %18 = call i32 @pt_reset(%struct.pt_unit* %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %23, label %20

20:                                               ; preds = %16
  %21 = load %struct.pt_unit*, %struct.pt_unit** %3, align 8
  %22 = call i32 @pt_identify(%struct.pt_unit* %21)
  store i32 %22, i32* %2, align 4
  br label %39

23:                                               ; preds = %16
  br label %24

24:                                               ; preds = %23
  %25 = load %struct.pt_unit*, %struct.pt_unit** %3, align 8
  %26 = getelementptr inbounds %struct.pt_unit, %struct.pt_unit* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %26, align 4
  br label %11

29:                                               ; preds = %11
  br label %38

30:                                               ; preds = %1
  %31 = load %struct.pt_unit*, %struct.pt_unit** %3, align 8
  %32 = call i32 @pt_reset(%struct.pt_unit* %31)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %37, label %34

34:                                               ; preds = %30
  %35 = load %struct.pt_unit*, %struct.pt_unit** %3, align 8
  %36 = call i32 @pt_identify(%struct.pt_unit* %35)
  store i32 %36, i32* %2, align 4
  br label %39

37:                                               ; preds = %30
  br label %38

38:                                               ; preds = %37, %29
  store i32 -1, i32* %2, align 4
  br label %39

39:                                               ; preds = %38, %34, %20
  %40 = load i32, i32* %2, align 4
  ret i32 %40
}

declare dso_local i32 @pt_reset(%struct.pt_unit*) #1

declare dso_local i32 @pt_identify(%struct.pt_unit*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
