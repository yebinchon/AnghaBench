; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/gigaset/extr_usb-gigaset.c_gigaset_set_line_ctrl.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/gigaset/extr_usb-gigaset.c_gigaset_set_line_ctrl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cardstate = type { i32 }

@PARENB = common dso_local global i32 0, align 4
@PARODD = common dso_local global i32 0, align 4
@CSIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"CSIZE was not CS5-CS8, using default of 8\0A\00", align 1
@CSTOPB = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cardstate*, i32)* @gigaset_set_line_ctrl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gigaset_set_line_ctrl(%struct.cardstate* %0, i32 %1) #0 {
  %3 = alloca %struct.cardstate*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.cardstate* %0, %struct.cardstate** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %6 = load i32, i32* %4, align 4
  %7 = load i32, i32* @PARENB, align 4
  %8 = and i32 %6, %7
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %19

10:                                               ; preds = %2
  %11 = load i32, i32* %4, align 4
  %12 = load i32, i32* @PARODD, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  %15 = zext i1 %14 to i64
  %16 = select i1 %14, i32 16, i32 32
  %17 = load i32, i32* %5, align 4
  %18 = or i32 %17, %16
  store i32 %18, i32* %5, align 4
  br label %19

19:                                               ; preds = %10, %2
  %20 = load i32, i32* %4, align 4
  %21 = load i32, i32* @CSIZE, align 4
  %22 = and i32 %20, %21
  switch i32 %22, label %35 [
    i32 131, label %23
    i32 130, label %26
    i32 129, label %29
    i32 128, label %32
  ]

23:                                               ; preds = %19
  %24 = load i32, i32* %5, align 4
  %25 = or i32 %24, 1280
  store i32 %25, i32* %5, align 4
  br label %42

26:                                               ; preds = %19
  %27 = load i32, i32* %5, align 4
  %28 = or i32 %27, 1536
  store i32 %28, i32* %5, align 4
  br label %42

29:                                               ; preds = %19
  %30 = load i32, i32* %5, align 4
  %31 = or i32 %30, 1792
  store i32 %31, i32* %5, align 4
  br label %42

32:                                               ; preds = %19
  %33 = load i32, i32* %5, align 4
  %34 = or i32 %33, 2048
  store i32 %34, i32* %5, align 4
  br label %42

35:                                               ; preds = %19
  %36 = load %struct.cardstate*, %struct.cardstate** %3, align 8
  %37 = getelementptr inbounds %struct.cardstate, %struct.cardstate* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @dev_err(i32 %38, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0))
  %40 = load i32, i32* %5, align 4
  %41 = or i32 %40, 2048
  store i32 %41, i32* %5, align 4
  br label %42

42:                                               ; preds = %35, %32, %29, %26, %23
  %43 = load i32, i32* %4, align 4
  %44 = load i32, i32* @CSTOPB, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %59

47:                                               ; preds = %42
  %48 = load i32, i32* %4, align 4
  %49 = load i32, i32* @CSIZE, align 4
  %50 = and i32 %48, %49
  %51 = icmp eq i32 %50, 131
  br i1 %51, label %52, label %55

52:                                               ; preds = %47
  %53 = load i32, i32* %5, align 4
  %54 = or i32 %53, 1
  store i32 %54, i32* %5, align 4
  br label %58

55:                                               ; preds = %47
  %56 = load i32, i32* %5, align 4
  %57 = or i32 %56, 2
  store i32 %57, i32* %5, align 4
  br label %58

58:                                               ; preds = %55, %52
  br label %59

59:                                               ; preds = %58, %42
  %60 = load %struct.cardstate*, %struct.cardstate** %3, align 8
  %61 = load i32, i32* %5, align 4
  %62 = call i32 @set_value(%struct.cardstate* %60, i32 3, i32 %61)
  ret i32 %62
}

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @set_value(%struct.cardstate*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
