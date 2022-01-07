; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kernel/extr_cpuid.c_print_cpu_modalias.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kernel/extr_cpuid.c_print_cpu_modalias.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32 }
%struct.device = type { i32 }
%struct.device_attribute = type { i32 }

@PAGE_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [51 x i8] c"x86cpu:vendor:%04X:family:%04X:model:%04X:feature:\00", align 1
@boot_cpu_data = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@NCAPINTS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c",%04X\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"x86 features overflow page\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*)* @print_cpu_modalias to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @print_cpu_modalias(%struct.device* %0, %struct.device_attribute* %1, i8* %2) #0 {
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.device_attribute*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %5, align 8
  store i8* %2, i8** %6, align 8
  %11 = load i32, i32* @PAGE_SIZE, align 4
  store i32 %11, i32* %7, align 4
  %12 = load i8*, i8** %6, align 8
  store i8* %12, i8** %10, align 8
  %13 = load i8*, i8** %10, align 8
  %14 = load i32, i32* %7, align 4
  %15 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @boot_cpu_data, i32 0, i32 0), align 4
  %16 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @boot_cpu_data, i32 0, i32 1), align 4
  %17 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @boot_cpu_data, i32 0, i32 2), align 4
  %18 = call i32 (i8*, i32, i8*, i32, ...) @snprintf(i8* %13, i32 %14, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0), i32 %15, i32 %16, i32 %17)
  store i32 %18, i32* %9, align 4
  %19 = load i32, i32* %9, align 4
  %20 = load i32, i32* %7, align 4
  %21 = sub nsw i32 %20, %19
  store i32 %21, i32* %7, align 4
  %22 = load i32, i32* %9, align 4
  %23 = load i8*, i8** %10, align 8
  %24 = sext i32 %22 to i64
  %25 = getelementptr inbounds i8, i8* %23, i64 %24
  store i8* %25, i8** %10, align 8
  %26 = load i32, i32* %7, align 4
  %27 = sub nsw i32 %26, 2
  store i32 %27, i32* %7, align 4
  store i32 0, i32* %8, align 4
  br label %28

28:                                               ; preds = %55, %3
  %29 = load i32, i32* %8, align 4
  %30 = load i32, i32* @NCAPINTS, align 4
  %31 = mul nsw i32 %30, 32
  %32 = icmp slt i32 %29, %31
  br i1 %32, label %33, label %58

33:                                               ; preds = %28
  %34 = load i32, i32* %8, align 4
  %35 = call i64 @boot_cpu_has(i32 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %54

37:                                               ; preds = %33
  %38 = load i8*, i8** %10, align 8
  %39 = load i32, i32* %7, align 4
  %40 = load i32, i32* %8, align 4
  %41 = call i32 (i8*, i32, i8*, i32, ...) @snprintf(i8* %38, i32 %39, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 %40)
  store i32 %41, i32* %9, align 4
  %42 = load i32, i32* %9, align 4
  %43 = icmp slt i32 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %37
  %45 = call i32 @WARN(i32 1, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0))
  br label %58

46:                                               ; preds = %37
  %47 = load i32, i32* %9, align 4
  %48 = load i32, i32* %7, align 4
  %49 = sub nsw i32 %48, %47
  store i32 %49, i32* %7, align 4
  %50 = load i32, i32* %9, align 4
  %51 = load i8*, i8** %10, align 8
  %52 = sext i32 %50 to i64
  %53 = getelementptr inbounds i8, i8* %51, i64 %52
  store i8* %53, i8** %10, align 8
  br label %54

54:                                               ; preds = %46, %33
  br label %55

55:                                               ; preds = %54
  %56 = load i32, i32* %8, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %8, align 4
  br label %28

58:                                               ; preds = %44, %28
  %59 = load i8*, i8** %10, align 8
  %60 = getelementptr inbounds i8, i8* %59, i32 1
  store i8* %60, i8** %10, align 8
  store i8 44, i8* %59, align 1
  %61 = load i8*, i8** %10, align 8
  %62 = getelementptr inbounds i8, i8* %61, i32 1
  store i8* %62, i8** %10, align 8
  store i8 10, i8* %61, align 1
  %63 = load i8*, i8** %10, align 8
  %64 = load i8*, i8** %6, align 8
  %65 = ptrtoint i8* %63 to i64
  %66 = ptrtoint i8* %64 to i64
  %67 = sub i64 %65, %66
  %68 = trunc i64 %67 to i32
  ret i32 %68
}

declare dso_local i32 @snprintf(i8*, i32, i8*, i32, ...) #1

declare dso_local i64 @boot_cpu_has(i32) #1

declare dso_local i32 @WARN(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
