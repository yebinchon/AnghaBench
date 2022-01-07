; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/sfc/extr_ethtool.c_efx_fill_test.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/sfc/extr_ethtool.c_efx_fill_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ethtool_string = type { i8* }

@.str = private unnamed_addr constant [11 x i8] c"%-6s %-24s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.ethtool_string*, i32*, i32*, i8*, i32, i8*, i8*)* @efx_fill_test to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @efx_fill_test(i32 %0, %struct.ethtool_string* %1, i32* %2, i32* %3, i8* %4, i32 %5, i8* %6, i8* %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca %struct.ethtool_string*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca %struct.ethtool_string, align 8
  %18 = alloca %struct.ethtool_string, align 8
  store i32 %0, i32* %9, align 4
  store %struct.ethtool_string* %1, %struct.ethtool_string** %10, align 8
  store i32* %2, i32** %11, align 8
  store i32* %3, i32** %12, align 8
  store i8* %4, i8** %13, align 8
  store i32 %5, i32* %14, align 4
  store i8* %6, i8** %15, align 8
  store i8* %7, i8** %16, align 8
  %19 = load i32*, i32** %11, align 8
  %20 = icmp ne i32* %19, null
  br i1 %20, label %21, label %28

21:                                               ; preds = %8
  %22 = load i32*, i32** %12, align 8
  %23 = load i32, i32* %22, align 4
  %24 = load i32*, i32** %11, align 8
  %25 = load i32, i32* %9, align 4
  %26 = zext i32 %25 to i64
  %27 = getelementptr inbounds i32, i32* %24, i64 %26
  store i32 %23, i32* %27, align 4
  br label %28

28:                                               ; preds = %21, %8
  %29 = load %struct.ethtool_string*, %struct.ethtool_string** %10, align 8
  %30 = icmp ne %struct.ethtool_string* %29, null
  br i1 %30, label %31, label %63

31:                                               ; preds = %28
  %32 = load i8*, i8** %13, align 8
  %33 = call i64 @strchr(i8* %32, i8 signext 37)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %41

35:                                               ; preds = %31
  %36 = getelementptr inbounds %struct.ethtool_string, %struct.ethtool_string* %17, i32 0, i32 0
  %37 = load i8*, i8** %36, align 8
  %38 = load i8*, i8** %13, align 8
  %39 = load i32, i32* %14, align 4
  %40 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %37, i32 8, i8* %38, i32 %39)
  br label %46

41:                                               ; preds = %31
  %42 = getelementptr inbounds %struct.ethtool_string, %struct.ethtool_string* %17, i32 0, i32 0
  %43 = load i8*, i8** %42, align 8
  %44 = load i8*, i8** %13, align 8
  %45 = call i32 @strcpy(i8* %43, i8* %44)
  br label %46

46:                                               ; preds = %41, %35
  %47 = getelementptr inbounds %struct.ethtool_string, %struct.ethtool_string* %18, i32 0, i32 0
  %48 = load i8*, i8** %47, align 8
  %49 = load i8*, i8** %15, align 8
  %50 = load i8*, i8** %16, align 8
  %51 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %48, i32 8, i8* %49, i8* %50)
  %52 = load %struct.ethtool_string*, %struct.ethtool_string** %10, align 8
  %53 = load i32, i32* %9, align 4
  %54 = zext i32 %53 to i64
  %55 = getelementptr inbounds %struct.ethtool_string, %struct.ethtool_string* %52, i64 %54
  %56 = getelementptr inbounds %struct.ethtool_string, %struct.ethtool_string* %55, i32 0, i32 0
  %57 = load i8*, i8** %56, align 8
  %58 = getelementptr inbounds %struct.ethtool_string, %struct.ethtool_string* %17, i32 0, i32 0
  %59 = load i8*, i8** %58, align 8
  %60 = getelementptr inbounds %struct.ethtool_string, %struct.ethtool_string* %18, i32 0, i32 0
  %61 = load i8*, i8** %60, align 8
  %62 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %57, i32 8, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i8* %59, i8* %61)
  br label %63

63:                                               ; preds = %46, %28
  ret void
}

declare dso_local i64 @strchr(i8*, i8 signext) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, ...) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
