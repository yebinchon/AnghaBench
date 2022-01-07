; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/cio/extr_ccwgroup.c___get_next_bus_id.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/cio/extr_ccwgroup.c___get_next_bus_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CCW_BUS_ID_SIZE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8**, i8*)* @__get_next_bus_id to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__get_next_bus_id(i8** %0, i8* %1) #0 {
  %3 = alloca i8**, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  store i8** %0, i8*** %3, align 8
  store i8* %1, i8** %4, align 8
  %9 = load i8**, i8*** %3, align 8
  %10 = load i8*, i8** %9, align 8
  store i8* %10, i8** %7, align 8
  %11 = load i8*, i8** %7, align 8
  %12 = call i8* @strchr(i8* %11, i8 signext 44)
  store i8* %12, i8** %8, align 8
  %13 = load i8*, i8** %8, align 8
  %14 = icmp ne i8* %13, null
  br i1 %14, label %26, label %15

15:                                               ; preds = %2
  %16 = load i8*, i8** %7, align 8
  %17 = call i8* @strchr(i8* %16, i8 signext 10)
  store i8* %17, i8** %8, align 8
  %18 = load i8*, i8** %8, align 8
  %19 = icmp ne i8* %18, null
  br i1 %19, label %20, label %22

20:                                               ; preds = %15
  %21 = load i8*, i8** %8, align 8
  store i8 0, i8* %21, align 1
  br label %22

22:                                               ; preds = %20, %15
  %23 = load i8*, i8** %7, align 8
  %24 = call i32 @strlen(i8* %23)
  %25 = add nsw i32 %24, 1
  store i32 %25, i32* %6, align 4
  br label %36

26:                                               ; preds = %2
  %27 = load i8*, i8** %8, align 8
  %28 = load i8*, i8** %7, align 8
  %29 = ptrtoint i8* %27 to i64
  %30 = ptrtoint i8* %28 to i64
  %31 = sub i64 %29, %30
  %32 = add nsw i64 %31, 1
  %33 = trunc i64 %32 to i32
  store i32 %33, i32* %6, align 4
  %34 = load i8*, i8** %8, align 8
  %35 = getelementptr inbounds i8, i8* %34, i32 1
  store i8* %35, i8** %8, align 8
  br label %36

36:                                               ; preds = %26, %22
  %37 = load i32, i32* %6, align 4
  %38 = load i32, i32* @CCW_BUS_ID_SIZE, align 4
  %39 = icmp slt i32 %37, %38
  br i1 %39, label %40, label %45

40:                                               ; preds = %36
  %41 = load i8*, i8** %4, align 8
  %42 = load i8*, i8** %7, align 8
  %43 = load i32, i32* %6, align 4
  %44 = call i32 @strlcpy(i8* %41, i8* %42, i32 %43)
  store i32 0, i32* %5, align 4
  br label %48

45:                                               ; preds = %36
  %46 = load i32, i32* @EINVAL, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %5, align 4
  br label %48

48:                                               ; preds = %45, %40
  %49 = load i8*, i8** %8, align 8
  %50 = load i8**, i8*** %3, align 8
  store i8* %49, i8** %50, align 8
  %51 = load i32, i32* %5, align 4
  ret i32 %51
}

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @strlcpy(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
