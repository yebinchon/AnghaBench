; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/platforms/pseries/extr_dlpar.c_dlpar_release_drc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/platforms/pseries/extr_dlpar.c_dlpar_release_drc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [17 x i8] c"get-sensor-state\00", align 1
@DR_ENTITY_SENSE = common dso_local global i32 0, align 4
@DR_ENTITY_PRESENT = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@ISOLATION_STATE = common dso_local global i32 0, align 4
@ISOLATE = common dso_local global i32 0, align 4
@ALLOCATION_STATE = common dso_local global i32 0, align 4
@ALLOC_UNUSABLE = common dso_local global i32 0, align 4
@UNISOLATE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dlpar_release_drc(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %6 = call i32 @rtas_token(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %7 = load i32, i32* @DR_ENTITY_SENSE, align 4
  %8 = load i32, i32* %3, align 4
  %9 = call i32 @rtas_call(i32 %6, i32 2, i32 2, i32* %4, i32 %7, i32 %8)
  store i32 %9, i32* %5, align 4
  %10 = load i32, i32* %5, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %16, label %12

12:                                               ; preds = %1
  %13 = load i32, i32* %4, align 4
  %14 = load i32, i32* @DR_ENTITY_PRESENT, align 4
  %15 = icmp ne i32 %13, %14
  br i1 %15, label %16, label %26

16:                                               ; preds = %12, %1
  %17 = load i32, i32* %5, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %16
  %20 = load i32, i32* %5, align 4
  br label %24

21:                                               ; preds = %16
  %22 = load i32, i32* @EIO, align 4
  %23 = sub nsw i32 0, %22
  br label %24

24:                                               ; preds = %21, %19
  %25 = phi i32 [ %20, %19 ], [ %23, %21 ]
  store i32 %25, i32* %2, align 4
  br label %49

26:                                               ; preds = %12
  %27 = load i32, i32* @ISOLATION_STATE, align 4
  %28 = load i32, i32* %3, align 4
  %29 = load i32, i32* @ISOLATE, align 4
  %30 = call i32 @rtas_set_indicator(i32 %27, i32 %28, i32 %29)
  store i32 %30, i32* %5, align 4
  %31 = load i32, i32* %5, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %26
  %34 = load i32, i32* %5, align 4
  store i32 %34, i32* %2, align 4
  br label %49

35:                                               ; preds = %26
  %36 = load i32, i32* @ALLOCATION_STATE, align 4
  %37 = load i32, i32* %3, align 4
  %38 = load i32, i32* @ALLOC_UNUSABLE, align 4
  %39 = call i32 @rtas_set_indicator(i32 %36, i32 %37, i32 %38)
  store i32 %39, i32* %5, align 4
  %40 = load i32, i32* %5, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %48

42:                                               ; preds = %35
  %43 = load i32, i32* @ISOLATION_STATE, align 4
  %44 = load i32, i32* %3, align 4
  %45 = load i32, i32* @UNISOLATE, align 4
  %46 = call i32 @rtas_set_indicator(i32 %43, i32 %44, i32 %45)
  %47 = load i32, i32* %5, align 4
  store i32 %47, i32* %2, align 4
  br label %49

48:                                               ; preds = %35
  store i32 0, i32* %2, align 4
  br label %49

49:                                               ; preds = %48, %42, %33, %24
  %50 = load i32, i32* %2, align 4
  ret i32 %50
}

declare dso_local i32 @rtas_call(i32, i32, i32, i32*, i32, i32) #1

declare dso_local i32 @rtas_token(i8*) #1

declare dso_local i32 @rtas_set_indicator(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
