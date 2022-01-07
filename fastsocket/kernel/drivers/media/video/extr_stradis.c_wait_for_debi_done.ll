; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_stradis.c_wait_for_debi_done.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_stradis.c_wait_for_debi_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.saa7146 = type { i32 }

@SAA7146_MC2 = common dso_local global i32 0, align 4
@SAA7146_MC2_UPLD_DEBI = common dso_local global i32 0, align 4
@SAA7146_PSR = common dso_local global i32 0, align 4
@SAA7146_PSR_DEBI_S = common dso_local global i32 0, align 4
@debiwait_maxwait = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"wait-for-debi-done maxwait: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.saa7146*)* @wait_for_debi_done to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wait_for_debi_done(%struct.saa7146* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.saa7146*, align 8
  %4 = alloca i32, align 4
  store %struct.saa7146* %0, %struct.saa7146** %3, align 8
  store i32 0, i32* %4, align 4
  br label %5

5:                                                ; preds = %20, %1
  %6 = load i32, i32* %4, align 4
  %7 = icmp slt i32 %6, 100000
  br i1 %7, label %8, label %15

8:                                                ; preds = %5
  %9 = load i32, i32* @SAA7146_MC2, align 4
  %10 = call i32 @saaread(i32 %9)
  %11 = load i32, i32* @SAA7146_MC2_UPLD_DEBI, align 4
  %12 = and i32 %10, %11
  %13 = icmp ne i32 %12, 0
  %14 = xor i1 %13, true
  br label %15

15:                                               ; preds = %8, %5
  %16 = phi i1 [ false, %5 ], [ %14, %8 ]
  br i1 %16, label %17, label %23

17:                                               ; preds = %15
  %18 = load i32, i32* @SAA7146_MC2, align 4
  %19 = call i32 @saaread(i32 %18)
  br label %20

20:                                               ; preds = %17
  %21 = load i32, i32* %4, align 4
  %22 = add nsw i32 %21, 1
  store i32 %22, i32* %4, align 4
  br label %5

23:                                               ; preds = %15
  store i32 0, i32* %4, align 4
  br label %24

24:                                               ; preds = %38, %23
  %25 = load i32, i32* %4, align 4
  %26 = icmp slt i32 %25, 500000
  br i1 %26, label %27, label %33

27:                                               ; preds = %24
  %28 = load i32, i32* @SAA7146_PSR, align 4
  %29 = call i32 @saaread(i32 %28)
  %30 = load i32, i32* @SAA7146_PSR_DEBI_S, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br label %33

33:                                               ; preds = %27, %24
  %34 = phi i1 [ false, %24 ], [ %32, %27 ]
  br i1 %34, label %35, label %41

35:                                               ; preds = %33
  %36 = load i32, i32* @SAA7146_MC2, align 4
  %37 = call i32 @saaread(i32 %36)
  br label %38

38:                                               ; preds = %35
  %39 = load i32, i32* %4, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %4, align 4
  br label %24

41:                                               ; preds = %33
  %42 = load i32, i32* %4, align 4
  %43 = load i32, i32* @debiwait_maxwait, align 4
  %44 = icmp sgt i32 %42, %43
  br i1 %44, label %45, label %48

45:                                               ; preds = %41
  %46 = load i32, i32* %4, align 4
  store i32 %46, i32* @debiwait_maxwait, align 4
  %47 = call i32 @printk(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %46)
  br label %48

48:                                               ; preds = %45, %41
  %49 = load i32, i32* %4, align 4
  %50 = icmp eq i32 %49, 500000
  br i1 %50, label %51, label %52

51:                                               ; preds = %48
  store i32 -1, i32* %2, align 4
  br label %53

52:                                               ; preds = %48
  store i32 0, i32* %2, align 4
  br label %53

53:                                               ; preds = %52, %51
  %54 = load i32, i32* %2, align 4
  ret i32 %54
}

declare dso_local i32 @saaread(i32) #1

declare dso_local i32 @printk(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
