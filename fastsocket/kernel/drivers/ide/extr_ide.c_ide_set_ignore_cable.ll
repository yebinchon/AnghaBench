; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/ide/extr_ide.c_ide_set_ignore_cable.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/ide/extr_ide.c_ide_set_ignore_cable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kernel_param = type { i32 }

@.str = private unnamed_addr constant [6 x i8] c"%d:%d\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@MAX_HWIFS = common dso_local global i32 0, align 4
@ide_ignore_cable = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.kernel_param*)* @ide_set_ignore_cable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ide_set_ignore_cable(i8* %0, %struct.kernel_param* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.kernel_param*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store %struct.kernel_param* %1, %struct.kernel_param** %5, align 8
  store i32 1, i32* %7, align 4
  %8 = load i8*, i8** %4, align 8
  %9 = call i32 (i8*, i8*, i32*, ...) @sscanf(i8* %8, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32* %6, i32* %7)
  %10 = icmp ne i32 %9, 2
  br i1 %10, label %11, label %18

11:                                               ; preds = %2
  %12 = load i8*, i8** %4, align 8
  %13 = call i32 (i8*, i8*, i32*, ...) @sscanf(i8* %12, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32* %6)
  %14 = icmp ne i32 %13, 1
  br i1 %14, label %15, label %18

15:                                               ; preds = %11
  %16 = load i32, i32* @EINVAL, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %3, align 4
  br label %46

18:                                               ; preds = %11, %2
  %19 = load i32, i32* %6, align 4
  %20 = load i32, i32* @MAX_HWIFS, align 4
  %21 = icmp sge i32 %19, %20
  br i1 %21, label %28, label %22

22:                                               ; preds = %18
  %23 = load i32, i32* %7, align 4
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %28, label %25

25:                                               ; preds = %22
  %26 = load i32, i32* %7, align 4
  %27 = icmp sgt i32 %26, 1
  br i1 %27, label %28, label %31

28:                                               ; preds = %25, %22, %18
  %29 = load i32, i32* @EINVAL, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %3, align 4
  br label %46

31:                                               ; preds = %25
  %32 = load i32, i32* %7, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %39

34:                                               ; preds = %31
  %35 = load i32, i32* %6, align 4
  %36 = shl i32 1, %35
  %37 = load i32, i32* @ide_ignore_cable, align 4
  %38 = or i32 %37, %36
  store i32 %38, i32* @ide_ignore_cable, align 4
  br label %45

39:                                               ; preds = %31
  %40 = load i32, i32* %6, align 4
  %41 = shl i32 1, %40
  %42 = xor i32 %41, -1
  %43 = load i32, i32* @ide_ignore_cable, align 4
  %44 = and i32 %43, %42
  store i32 %44, i32* @ide_ignore_cable, align 4
  br label %45

45:                                               ; preds = %39, %34
  store i32 0, i32* %3, align 4
  br label %46

46:                                               ; preds = %45, %28, %15
  %47 = load i32, i32* %3, align 4
  ret i32 %47
}

declare dso_local i32 @sscanf(i8*, i8*, i32*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
