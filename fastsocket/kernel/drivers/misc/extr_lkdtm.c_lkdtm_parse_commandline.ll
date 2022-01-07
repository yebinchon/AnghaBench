; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/misc/extr_lkdtm.c_lkdtm_parse_commandline.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/misc/extr_lkdtm.c_lkdtm_parse_commandline.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@cpoint_count = common dso_local global i32 0, align 4
@recur_count = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@count_lock = common dso_local global i32 0, align 4
@count = common dso_local global i32 0, align 4
@cpoint_type = common dso_local global i32 0, align 4
@cpoint_name = common dso_local global i32 0, align 4
@cptype = common dso_local global i64 0, align 8
@CT_NONE = common dso_local global i64 0, align 8
@cp_name = common dso_local global i32* null, align 8
@cpoint = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @lkdtm_parse_commandline to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lkdtm_parse_commandline() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = load i32, i32* @cpoint_count, align 4
  %5 = icmp slt i32 %4, 1
  br i1 %5, label %9, label %6

6:                                                ; preds = %0
  %7 = load i32, i32* @recur_count, align 4
  %8 = icmp slt i32 %7, 1
  br i1 %8, label %9, label %12

9:                                                ; preds = %6, %0
  %10 = load i32, i32* @EINVAL, align 4
  %11 = sub nsw i32 0, %10
  store i32 %11, i32* %1, align 4
  br label %69

12:                                               ; preds = %6
  %13 = load i64, i64* %3, align 8
  %14 = call i32 @spin_lock_irqsave(i32* @count_lock, i64 %13)
  %15 = load i32, i32* @cpoint_count, align 4
  store i32 %15, i32* @count, align 4
  %16 = load i64, i64* %3, align 8
  %17 = call i32 @spin_unlock_irqrestore(i32* @count_lock, i64 %16)
  %18 = load i32, i32* @cpoint_type, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %24, label %20

20:                                               ; preds = %12
  %21 = load i32, i32* @cpoint_name, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %20
  store i32 0, i32* %1, align 4
  br label %69

24:                                               ; preds = %20, %12
  %25 = load i32, i32* @cpoint_type, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %24
  %28 = load i32, i32* @cpoint_name, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %33, label %30

30:                                               ; preds = %27, %24
  %31 = load i32, i32* @EINVAL, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %1, align 4
  br label %69

33:                                               ; preds = %27
  %34 = load i32, i32* @cpoint_type, align 4
  %35 = load i32, i32* @cpoint_type, align 4
  %36 = call i32 @strlen(i32 %35)
  %37 = call i64 @parse_cp_type(i32 %34, i32 %36)
  store i64 %37, i64* @cptype, align 8
  %38 = load i64, i64* @cptype, align 8
  %39 = load i64, i64* @CT_NONE, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %44

41:                                               ; preds = %33
  %42 = load i32, i32* @EINVAL, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %1, align 4
  br label %69

44:                                               ; preds = %33
  store i32 0, i32* %2, align 4
  br label %45

45:                                               ; preds = %63, %44
  %46 = load i32, i32* %2, align 4
  %47 = load i32*, i32** @cp_name, align 8
  %48 = call i32 @ARRAY_SIZE(i32* %47)
  %49 = icmp slt i32 %46, %48
  br i1 %49, label %50, label %66

50:                                               ; preds = %45
  %51 = load i32, i32* @cpoint_name, align 4
  %52 = load i32*, i32** @cp_name, align 8
  %53 = load i32, i32* %2, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i32, i32* %52, i64 %54
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @strcmp(i32 %51, i32 %56)
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %62, label %59

59:                                               ; preds = %50
  %60 = load i32, i32* %2, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* @cpoint, align 4
  store i32 0, i32* %1, align 4
  br label %69

62:                                               ; preds = %50
  br label %63

63:                                               ; preds = %62
  %64 = load i32, i32* %2, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %2, align 4
  br label %45

66:                                               ; preds = %45
  %67 = load i32, i32* @EINVAL, align 4
  %68 = sub nsw i32 0, %67
  store i32 %68, i32* %1, align 4
  br label %69

69:                                               ; preds = %66, %59, %41, %30, %23, %9
  %70 = load i32, i32* %1, align 4
  ret i32 %70
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i64 @parse_cp_type(i32, i32) #1

declare dso_local i32 @strlen(i32) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @strcmp(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
