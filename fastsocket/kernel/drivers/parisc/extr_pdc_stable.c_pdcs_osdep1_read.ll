; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/parisc/extr_pdc_stable.c_pdcs_osdep1_read.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/parisc/extr_pdc_stable.c_pdcs_osdep1_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kobject = type { i32 }
%struct.kobj_attribute = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@PDCS_ADDR_OSD1 = common dso_local global i32 0, align 4
@PDC_OK = common dso_local global i64 0, align 8
@EIO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"0x%.8x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kobject*, %struct.kobj_attribute*, i8*)* @pdcs_osdep1_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pdcs_osdep1_read(%struct.kobject* %0, %struct.kobj_attribute* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.kobject*, align 8
  %6 = alloca %struct.kobj_attribute*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca [4 x i32], align 16
  store %struct.kobject* %0, %struct.kobject** %5, align 8
  store %struct.kobj_attribute* %1, %struct.kobj_attribute** %6, align 8
  store i8* %2, i8** %7, align 8
  %10 = load i8*, i8** %7, align 8
  store i8* %10, i8** %8, align 8
  %11 = load i8*, i8** %7, align 8
  %12 = icmp ne i8* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %3
  %14 = load i32, i32* @EINVAL, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %4, align 4
  br label %60

16:                                               ; preds = %3
  %17 = load i32, i32* @PDCS_ADDR_OSD1, align 4
  %18 = bitcast [4 x i32]* %9 to i32**
  %19 = call i64 @pdc_stable_read(i32 %17, i32** %18, i32 16)
  %20 = load i64, i64* @PDC_OK, align 8
  %21 = icmp ne i64 %19, %20
  br i1 %21, label %22, label %25

22:                                               ; preds = %16
  %23 = load i32, i32* @EIO, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %4, align 4
  br label %60

25:                                               ; preds = %16
  %26 = load i8*, i8** %8, align 8
  %27 = getelementptr inbounds [4 x i32], [4 x i32]* %9, i64 0, i64 0
  %28 = load i32, i32* %27, align 16
  %29 = call i32 @sprintf(i8* %26, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 %28)
  %30 = load i8*, i8** %8, align 8
  %31 = sext i32 %29 to i64
  %32 = getelementptr inbounds i8, i8* %30, i64 %31
  store i8* %32, i8** %8, align 8
  %33 = load i8*, i8** %8, align 8
  %34 = getelementptr inbounds [4 x i32], [4 x i32]* %9, i64 0, i64 1
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @sprintf(i8* %33, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 %35)
  %37 = load i8*, i8** %8, align 8
  %38 = sext i32 %36 to i64
  %39 = getelementptr inbounds i8, i8* %37, i64 %38
  store i8* %39, i8** %8, align 8
  %40 = load i8*, i8** %8, align 8
  %41 = getelementptr inbounds [4 x i32], [4 x i32]* %9, i64 0, i64 2
  %42 = load i32, i32* %41, align 8
  %43 = call i32 @sprintf(i8* %40, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 %42)
  %44 = load i8*, i8** %8, align 8
  %45 = sext i32 %43 to i64
  %46 = getelementptr inbounds i8, i8* %44, i64 %45
  store i8* %46, i8** %8, align 8
  %47 = load i8*, i8** %8, align 8
  %48 = getelementptr inbounds [4 x i32], [4 x i32]* %9, i64 0, i64 3
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @sprintf(i8* %47, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 %49)
  %51 = load i8*, i8** %8, align 8
  %52 = sext i32 %50 to i64
  %53 = getelementptr inbounds i8, i8* %51, i64 %52
  store i8* %53, i8** %8, align 8
  %54 = load i8*, i8** %8, align 8
  %55 = load i8*, i8** %7, align 8
  %56 = ptrtoint i8* %54 to i64
  %57 = ptrtoint i8* %55 to i64
  %58 = sub i64 %56, %57
  %59 = trunc i64 %58 to i32
  store i32 %59, i32* %4, align 4
  br label %60

60:                                               ; preds = %25, %22, %13
  %61 = load i32, i32* %4, align 4
  ret i32 %61
}

declare dso_local i64 @pdc_stable_read(i32, i32**, i32) #1

declare dso_local i32 @sprintf(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
