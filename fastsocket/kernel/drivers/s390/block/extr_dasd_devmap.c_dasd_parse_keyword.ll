; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/block/extr_dasd_devmap.c_dasd_parse_keyword.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/block/extr_dasd_devmap.c_dasd_parse_keyword.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [11 x i8] c"autodetect\00", align 1
@dasd_autodetect = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [43 x i8] c"The autodetection mode has been activated\0A\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"probeonly\00", align 1
@dasd_probeonly = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [39 x i8] c"The probeonly mode has been activated\0A\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"nopav\00", align 1
@MACHINE_IS_VM = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [34 x i8] c"'nopav' is not supported on z/VM\0A\00", align 1
@dasd_nopav = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [32 x i8] c"PAV support has be deactivated\0A\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"nofcx\00", align 1
@dasd_nofcx = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [53 x i8] c"High Performance FICON support has been deactivated\0A\00", align 1
@.str.9 = private unnamed_addr constant [13 x i8] c"fixedbuffers\00", align 1
@dasd_page_cache = common dso_local global i64 0, align 8
@.str.10 = private unnamed_addr constant [16 x i8] c"dasd_page_cache\00", align 1
@PAGE_SIZE = common dso_local global i32 0, align 4
@SLAB_CACHE_DMA = common dso_local global i32 0, align 4
@DBF_WARNING = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.12 = private unnamed_addr constant [51 x i8] c"Failed to create slab, fixed buffer mode disabled.\00", align 1
@DBF_INFO = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [29 x i8] c"turning on fixed buffer mode\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*)* @dasd_parse_keyword to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @dasd_parse_keyword(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %7 = load i8*, i8** %3, align 8
  %8 = call i8* @strchr(i8* %7, i8 signext 44)
  store i8* %8, i8** %4, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = icmp ne i8* %9, null
  br i1 %10, label %11, label %20

11:                                               ; preds = %1
  %12 = load i8*, i8** %4, align 8
  %13 = load i8*, i8** %3, align 8
  %14 = ptrtoint i8* %12 to i64
  %15 = ptrtoint i8* %13 to i64
  %16 = sub i64 %14, %15
  %17 = trunc i64 %16 to i32
  store i32 %17, i32* %6, align 4
  %18 = load i8*, i8** %4, align 8
  %19 = getelementptr inbounds i8, i8* %18, i64 1
  store i8* %19, i8** %5, align 8
  br label %27

20:                                               ; preds = %1
  %21 = load i8*, i8** %3, align 8
  %22 = call i32 @strlen(i8* %21)
  store i32 %22, i32* %6, align 4
  %23 = load i8*, i8** %3, align 8
  %24 = load i32, i32* %6, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i8, i8* %23, i64 %25
  store i8* %26, i8** %5, align 8
  br label %27

27:                                               ; preds = %20, %11
  %28 = load i8*, i8** %3, align 8
  %29 = load i32, i32* %6, align 4
  %30 = call i64 @strncmp(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i8* %28, i32 %29)
  %31 = icmp eq i64 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %27
  store i32 1, i32* @dasd_autodetect, align 4
  %33 = call i32 @pr_info(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0))
  %34 = load i8*, i8** %5, align 8
  store i8* %34, i8** %2, align 8
  br label %94

35:                                               ; preds = %27
  %36 = load i8*, i8** %3, align 8
  %37 = load i32, i32* %6, align 4
  %38 = call i64 @strncmp(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i8* %36, i32 %37)
  %39 = icmp eq i64 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %35
  store i32 1, i32* @dasd_probeonly, align 4
  %41 = call i32 @pr_info(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.3, i64 0, i64 0))
  %42 = load i8*, i8** %5, align 8
  store i8* %42, i8** %2, align 8
  br label %94

43:                                               ; preds = %35
  %44 = load i8*, i8** %3, align 8
  %45 = load i32, i32* %6, align 4
  %46 = call i64 @strncmp(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i8* %44, i32 %45)
  %47 = icmp eq i64 %46, 0
  br i1 %47, label %48, label %57

48:                                               ; preds = %43
  %49 = load i64, i64* @MACHINE_IS_VM, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %48
  %52 = call i32 @pr_info(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.5, i64 0, i64 0))
  br label %55

53:                                               ; preds = %48
  store i32 1, i32* @dasd_nopav, align 4
  %54 = call i32 @pr_info(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.6, i64 0, i64 0))
  br label %55

55:                                               ; preds = %53, %51
  %56 = load i8*, i8** %5, align 8
  store i8* %56, i8** %2, align 8
  br label %94

57:                                               ; preds = %43
  %58 = load i8*, i8** %3, align 8
  %59 = load i32, i32* %6, align 4
  %60 = call i64 @strncmp(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0), i8* %58, i32 %59)
  %61 = icmp eq i64 %60, 0
  br i1 %61, label %62, label %65

62:                                               ; preds = %57
  store i32 1, i32* @dasd_nofcx, align 4
  %63 = call i32 @pr_info(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.8, i64 0, i64 0))
  %64 = load i8*, i8** %5, align 8
  store i8* %64, i8** %2, align 8
  br label %94

65:                                               ; preds = %57
  %66 = load i8*, i8** %3, align 8
  %67 = load i32, i32* %6, align 4
  %68 = call i64 @strncmp(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.9, i64 0, i64 0), i8* %66, i32 %67)
  %69 = icmp eq i64 %68, 0
  br i1 %69, label %70, label %90

70:                                               ; preds = %65
  %71 = load i64, i64* @dasd_page_cache, align 8
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %75

73:                                               ; preds = %70
  %74 = load i8*, i8** %5, align 8
  store i8* %74, i8** %2, align 8
  br label %94

75:                                               ; preds = %70
  %76 = load i32, i32* @PAGE_SIZE, align 4
  %77 = load i32, i32* @PAGE_SIZE, align 4
  %78 = load i32, i32* @SLAB_CACHE_DMA, align 4
  %79 = call i64 @kmem_cache_create(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.10, i64 0, i64 0), i32 %76, i32 %77, i32 %78, i32* null)
  store i64 %79, i64* @dasd_page_cache, align 8
  %80 = load i64, i64* @dasd_page_cache, align 8
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %85, label %82

82:                                               ; preds = %75
  %83 = load i32, i32* @DBF_WARNING, align 4
  %84 = call i32 @DBF_EVENT(i32 %83, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.11, i64 0, i64 0), i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.12, i64 0, i64 0))
  br label %88

85:                                               ; preds = %75
  %86 = load i32, i32* @DBF_INFO, align 4
  %87 = call i32 @DBF_EVENT(i32 %86, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.11, i64 0, i64 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.13, i64 0, i64 0))
  br label %88

88:                                               ; preds = %85, %82
  %89 = load i8*, i8** %5, align 8
  store i8* %89, i8** %2, align 8
  br label %94

90:                                               ; preds = %65
  %91 = load i32, i32* @EINVAL, align 4
  %92 = sub nsw i32 0, %91
  %93 = call i8* @ERR_PTR(i32 %92)
  store i8* %93, i8** %2, align 8
  br label %94

94:                                               ; preds = %90, %88, %73, %62, %55, %40, %32
  %95 = load i8*, i8** %2, align 8
  ret i8* %95
}

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i64 @strncmp(i8*, i8*, i32) #1

declare dso_local i32 @pr_info(i8*) #1

declare dso_local i64 @kmem_cache_create(i8*, i32, i32, i32, i32*) #1

declare dso_local i32 @DBF_EVENT(i32, i8*, i8*) #1

declare dso_local i8* @ERR_PTR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
