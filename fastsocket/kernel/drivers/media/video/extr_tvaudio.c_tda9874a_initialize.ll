; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_tvaudio.c_tda9874a_initialize.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_tvaudio.c_tda9874a_initialize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.CHIPSTATE = type { i32 }

@tda9874a_SIF = common dso_local global i32 0, align 4
@tda9874a_STD = common dso_local global i32 0, align 4
@tda9874a_modelist = common dso_local global i32 0, align 4
@tda9874a_AMSEL = common dso_local global i32 0, align 4
@tda9874a_GCONR = common dso_local global i32 0, align 4
@tda9874a_ESP = common dso_local global i32 0, align 4
@tda9874a_mode = common dso_local global i32 0, align 4
@tda9874a_NCONR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.CHIPSTATE*)* @tda9874a_initialize to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tda9874a_initialize(%struct.CHIPSTATE* %0) #0 {
  %2 = alloca %struct.CHIPSTATE*, align 8
  store %struct.CHIPSTATE* %0, %struct.CHIPSTATE** %2, align 8
  %3 = load i32, i32* @tda9874a_SIF, align 4
  %4 = icmp sgt i32 %3, 2
  br i1 %4, label %5, label %6

5:                                                ; preds = %1
  store i32 1, i32* @tda9874a_SIF, align 4
  br label %6

6:                                                ; preds = %5, %1
  %7 = load i32, i32* @tda9874a_STD, align 4
  %8 = load i32, i32* @tda9874a_modelist, align 4
  %9 = call i32 @ARRAY_SIZE(i32 %8)
  %10 = icmp sge i32 %7, %9
  br i1 %10, label %11, label %12

11:                                               ; preds = %6
  store i32 0, i32* @tda9874a_STD, align 4
  br label %12

12:                                               ; preds = %11, %6
  %13 = load i32, i32* @tda9874a_AMSEL, align 4
  %14 = icmp sgt i32 %13, 1
  br i1 %14, label %15, label %16

15:                                               ; preds = %12
  store i32 0, i32* @tda9874a_AMSEL, align 4
  br label %16

16:                                               ; preds = %15, %12
  %17 = load i32, i32* @tda9874a_SIF, align 4
  %18 = icmp eq i32 %17, 1
  br i1 %18, label %19, label %20

19:                                               ; preds = %16
  store i32 192, i32* @tda9874a_GCONR, align 4
  br label %21

20:                                               ; preds = %16
  store i32 193, i32* @tda9874a_GCONR, align 4
  br label %21

21:                                               ; preds = %20, %19
  %22 = load i32, i32* @tda9874a_STD, align 4
  store i32 %22, i32* @tda9874a_ESP, align 4
  %23 = load i32, i32* @tda9874a_STD, align 4
  %24 = icmp slt i32 %23, 5
  %25 = zext i1 %24 to i64
  %26 = select i1 %24, i32 0, i32 1
  store i32 %26, i32* @tda9874a_mode, align 4
  %27 = load i32, i32* @tda9874a_AMSEL, align 4
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %21
  store i32 1, i32* @tda9874a_NCONR, align 4
  br label %31

30:                                               ; preds = %21
  store i32 5, i32* @tda9874a_NCONR, align 4
  br label %31

31:                                               ; preds = %30, %29
  %32 = load %struct.CHIPSTATE*, %struct.CHIPSTATE** %2, align 8
  %33 = call i32 @tda9874a_setup(%struct.CHIPSTATE* %32)
  ret i32 0
}

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i32 @tda9874a_setup(%struct.CHIPSTATE*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
