; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/ia64/kernel/extr_palinfo.c_frequency_info.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/ia64/kernel/extr_palinfo.c_frequency_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pal_freq_ratio = type { i32, i32 }

@.str = private unnamed_addr constant [43 x i8] c"Output clock            : not implemented\0A\00", align 1
@.str.1 = private unnamed_addr constant [39 x i8] c"Output clock            : %ld ticks/s\0A\00", align 1
@.str.2 = private unnamed_addr constant [97 x i8] c"Processor/Clock ratio   : %d/%d\0ABus/Clock ratio         : %d/%d\0AITC/Clock ratio         : %d/%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @frequency_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @frequency_info(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.pal_freq_ratio, align 4
  %6 = alloca %struct.pal_freq_ratio, align 4
  %7 = alloca %struct.pal_freq_ratio, align 4
  %8 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  %9 = load i8*, i8** %3, align 8
  store i8* %9, i8** %4, align 8
  %10 = call i32 @ia64_pal_freq_base(i64* %8)
  %11 = icmp eq i32 %10, -1
  br i1 %11, label %12, label %18

12:                                               ; preds = %1
  %13 = load i8*, i8** %4, align 8
  %14 = call i32 (i8*, i8*, ...) @sprintf(i8* %13, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0))
  %15 = load i8*, i8** %4, align 8
  %16 = sext i32 %14 to i64
  %17 = getelementptr inbounds i8, i8* %15, i64 %16
  store i8* %17, i8** %4, align 8
  br label %25

18:                                               ; preds = %1
  %19 = load i8*, i8** %4, align 8
  %20 = load i64, i64* %8, align 8
  %21 = call i32 (i8*, i8*, ...) @sprintf(i8* %19, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i64 %20)
  %22 = load i8*, i8** %4, align 8
  %23 = sext i32 %21 to i64
  %24 = getelementptr inbounds i8, i8* %22, i64 %23
  store i8* %24, i8** %4, align 8
  br label %25

25:                                               ; preds = %18, %12
  %26 = call i64 @ia64_pal_freq_ratios(%struct.pal_freq_ratio* %5, %struct.pal_freq_ratio* %7, %struct.pal_freq_ratio* %6)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %25
  store i32 0, i32* %2, align 4
  br label %53

29:                                               ; preds = %25
  %30 = load i8*, i8** %4, align 8
  %31 = getelementptr inbounds %struct.pal_freq_ratio, %struct.pal_freq_ratio* %5, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = getelementptr inbounds %struct.pal_freq_ratio, %struct.pal_freq_ratio* %5, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = getelementptr inbounds %struct.pal_freq_ratio, %struct.pal_freq_ratio* %7, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = getelementptr inbounds %struct.pal_freq_ratio, %struct.pal_freq_ratio* %7, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = getelementptr inbounds %struct.pal_freq_ratio, %struct.pal_freq_ratio* %6, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = getelementptr inbounds %struct.pal_freq_ratio, %struct.pal_freq_ratio* %6, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = call i32 (i8*, i8*, ...) @sprintf(i8* %30, i8* getelementptr inbounds ([97 x i8], [97 x i8]* @.str.2, i64 0, i64 0), i32 %32, i32 %34, i32 %36, i32 %38, i32 %40, i32 %42)
  %44 = load i8*, i8** %4, align 8
  %45 = sext i32 %43 to i64
  %46 = getelementptr inbounds i8, i8* %44, i64 %45
  store i8* %46, i8** %4, align 8
  %47 = load i8*, i8** %4, align 8
  %48 = load i8*, i8** %3, align 8
  %49 = ptrtoint i8* %47 to i64
  %50 = ptrtoint i8* %48 to i64
  %51 = sub i64 %49, %50
  %52 = trunc i64 %51 to i32
  store i32 %52, i32* %2, align 4
  br label %53

53:                                               ; preds = %29, %28
  %54 = load i32, i32* %2, align 4
  ret i32 %54
}

declare dso_local i32 @ia64_pal_freq_base(i64*) #1

declare dso_local i32 @sprintf(i8*, i8*, ...) #1

declare dso_local i64 @ia64_pal_freq_ratios(%struct.pal_freq_ratio*, %struct.pal_freq_ratio*, %struct.pal_freq_ratio*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
