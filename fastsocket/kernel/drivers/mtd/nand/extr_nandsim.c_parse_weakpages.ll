; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/nand/extr_nandsim.c_parse_weakpages.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/nand/extr_nandsim.c_parse_weakpages.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.weak_page = type { i32, i32, i32 }

@weakpages = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [21 x i8] c"invalid weakpagess.\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"unable to allocate memory.\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@weak_pages = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @parse_weakpages to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_weakpages() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.weak_page*, align 8
  %7 = load i8*, i8** @weakpages, align 8
  %8 = icmp ne i8* %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %0
  store i32 0, i32* %1, align 4
  br label %72

10:                                               ; preds = %0
  %11 = load i8*, i8** @weakpages, align 8
  store i8* %11, i8** %2, align 8
  br label %12

12:                                               ; preds = %67, %10
  %13 = load i8*, i8** %2, align 8
  %14 = load i8, i8* %13, align 1
  %15 = sext i8 %14 to i32
  %16 = icmp eq i32 %15, 48
  %17 = zext i1 %16 to i64
  %18 = select i1 %16, i32 1, i32 0
  store i32 %18, i32* %3, align 4
  %19 = load i8*, i8** %2, align 8
  %20 = call i32 @simple_strtoul(i8* %19, i8** %2, i32 0)
  store i32 %20, i32* %4, align 4
  %21 = load i32, i32* %3, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %30, label %23

23:                                               ; preds = %12
  %24 = load i32, i32* %4, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %30, label %26

26:                                               ; preds = %23
  %27 = call i32 @NS_ERR(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %28 = load i32, i32* @EINVAL, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %1, align 4
  br label %72

30:                                               ; preds = %23, %12
  store i32 3, i32* %5, align 4
  %31 = load i8*, i8** %2, align 8
  %32 = load i8, i8* %31, align 1
  %33 = sext i8 %32 to i32
  %34 = icmp eq i32 %33, 58
  br i1 %34, label %35, label %40

35:                                               ; preds = %30
  %36 = load i8*, i8** %2, align 8
  %37 = getelementptr inbounds i8, i8* %36, i64 1
  store i8* %37, i8** %2, align 8
  %38 = load i8*, i8** %2, align 8
  %39 = call i32 @simple_strtoul(i8* %38, i8** %2, i32 0)
  store i32 %39, i32* %5, align 4
  br label %40

40:                                               ; preds = %35, %30
  %41 = load i8*, i8** %2, align 8
  %42 = load i8, i8* %41, align 1
  %43 = sext i8 %42 to i32
  %44 = icmp eq i32 %43, 44
  br i1 %44, label %45, label %48

45:                                               ; preds = %40
  %46 = load i8*, i8** %2, align 8
  %47 = getelementptr inbounds i8, i8* %46, i64 1
  store i8* %47, i8** %2, align 8
  br label %48

48:                                               ; preds = %45, %40
  %49 = load i32, i32* @GFP_KERNEL, align 4
  %50 = call %struct.weak_page* @kzalloc(i32 12, i32 %49)
  store %struct.weak_page* %50, %struct.weak_page** %6, align 8
  %51 = load %struct.weak_page*, %struct.weak_page** %6, align 8
  %52 = icmp ne %struct.weak_page* %51, null
  br i1 %52, label %57, label %53

53:                                               ; preds = %48
  %54 = call i32 @NS_ERR(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  %55 = load i32, i32* @ENOMEM, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %1, align 4
  br label %72

57:                                               ; preds = %48
  %58 = load i32, i32* %4, align 4
  %59 = load %struct.weak_page*, %struct.weak_page** %6, align 8
  %60 = getelementptr inbounds %struct.weak_page, %struct.weak_page* %59, i32 0, i32 0
  store i32 %58, i32* %60, align 4
  %61 = load i32, i32* %5, align 4
  %62 = load %struct.weak_page*, %struct.weak_page** %6, align 8
  %63 = getelementptr inbounds %struct.weak_page, %struct.weak_page* %62, i32 0, i32 1
  store i32 %61, i32* %63, align 4
  %64 = load %struct.weak_page*, %struct.weak_page** %6, align 8
  %65 = getelementptr inbounds %struct.weak_page, %struct.weak_page* %64, i32 0, i32 2
  %66 = call i32 @list_add(i32* %65, i32* @weak_pages)
  br label %67

67:                                               ; preds = %57
  %68 = load i8*, i8** %2, align 8
  %69 = load i8, i8* %68, align 1
  %70 = icmp ne i8 %69, 0
  br i1 %70, label %12, label %71

71:                                               ; preds = %67
  store i32 0, i32* %1, align 4
  br label %72

72:                                               ; preds = %71, %53, %26, %9
  %73 = load i32, i32* %1, align 4
  ret i32 %73
}

declare dso_local i32 @simple_strtoul(i8*, i8**, i32) #1

declare dso_local i32 @NS_ERR(i8*) #1

declare dso_local %struct.weak_page* @kzalloc(i32, i32) #1

declare dso_local i32 @list_add(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
