; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hardware/eicon/extr_debug.c_diva_mnt_cmp_nmbr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hardware/eicon/extr_debug.c_diva_mnt_cmp_nmbr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TraceFilter = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [7 x i8] c"single\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @diva_mnt_cmp_nmbr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @diva_mnt_cmp_nmbr(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %7 = load i8*, i8** @TraceFilter, align 8
  %8 = getelementptr inbounds i8, i8* %7, i64 0
  store i8* %8, i8** %4, align 8
  %9 = load i8*, i8** @TraceFilter, align 8
  %10 = getelementptr inbounds i8, i8* %9, i64 0
  %11 = call i32 @strlen(i8* %10)
  store i32 %11, i32* %5, align 4
  %12 = load i8*, i8** %3, align 8
  %13 = call i32 @strlen(i8* %12)
  store i32 %13, i32* %6, align 4
  %14 = load i8*, i8** %4, align 8
  %15 = getelementptr inbounds i8, i8* %14, i64 0
  %16 = load i8, i8* %15, align 1
  %17 = sext i8 %16 to i32
  %18 = icmp eq i32 %17, 67
  br i1 %18, label %19, label %26

19:                                               ; preds = %1
  %20 = load i8*, i8** %4, align 8
  %21 = getelementptr inbounds i8, i8* %20, i64 1
  %22 = call i64 @diva_dbg_cmp_key(i8* %21, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %19
  store i32 0, i32* %2, align 4
  br label %62

25:                                               ; preds = %19
  store i32 -1, i32* %2, align 4
  br label %62

26:                                               ; preds = %1
  %27 = load i32, i32* %5, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %26
  %30 = load i32, i32* %5, align 4
  %31 = load i32, i32* %6, align 4
  %32 = icmp sgt i32 %30, %31
  br i1 %32, label %33, label %34

33:                                               ; preds = %29, %26
  store i32 -1, i32* %2, align 4
  br label %62

34:                                               ; preds = %29
  %35 = load i8*, i8** %3, align 8
  %36 = load i32, i32* %6, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i8, i8* %35, i64 %37
  %39 = getelementptr inbounds i8, i8* %38, i64 -1
  store i8* %39, i8** %3, align 8
  %40 = load i8*, i8** %4, align 8
  %41 = load i32, i32* %5, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i8, i8* %40, i64 %42
  %44 = getelementptr inbounds i8, i8* %43, i64 -1
  store i8* %44, i8** %4, align 8
  br label %45

45:                                               ; preds = %60, %34
  %46 = load i32, i32* %5, align 4
  %47 = add nsw i32 %46, -1
  store i32 %47, i32* %5, align 4
  %48 = icmp ne i32 %46, 0
  br i1 %48, label %49, label %61

49:                                               ; preds = %45
  %50 = load i8*, i8** %3, align 8
  %51 = getelementptr inbounds i8, i8* %50, i32 -1
  store i8* %51, i8** %3, align 8
  %52 = load i8, i8* %50, align 1
  %53 = sext i8 %52 to i32
  %54 = load i8*, i8** %4, align 8
  %55 = getelementptr inbounds i8, i8* %54, i32 -1
  store i8* %55, i8** %4, align 8
  %56 = load i8, i8* %54, align 1
  %57 = sext i8 %56 to i32
  %58 = icmp ne i32 %53, %57
  br i1 %58, label %59, label %60

59:                                               ; preds = %49
  store i32 -1, i32* %2, align 4
  br label %62

60:                                               ; preds = %49
  br label %45

61:                                               ; preds = %45
  store i32 0, i32* %2, align 4
  br label %62

62:                                               ; preds = %61, %59, %33, %25, %24
  %63 = load i32, i32* %2, align 4
  ret i32 %63
}

declare dso_local i32 @strlen(i8*) #1

declare dso_local i64 @diva_dbg_cmp_key(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
