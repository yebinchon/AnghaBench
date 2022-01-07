; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/nand/extr_alauda.c_alauda_bounce_read.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/nand/extr_alauda.c_alauda_bounce_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtd_info = type { i64, %struct.alauda* }
%struct.alauda = type { i64 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@EUCLEAN = common dso_local global i32 0, align 4
@EBADMSG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mtd_info*, i64, i64, i64*, i32*)* @alauda_bounce_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @alauda_bounce_read(%struct.mtd_info* %0, i64 %1, i64 %2, i64* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.mtd_info*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.alauda*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca [16 x i32], align 16
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  store %struct.mtd_info* %0, %struct.mtd_info** %7, align 8
  store i64 %1, i64* %8, align 8
  store i64 %2, i64* %9, align 8
  store i64* %3, i64** %10, align 8
  store i32* %4, i32** %11, align 8
  %20 = load %struct.mtd_info*, %struct.mtd_info** %7, align 8
  %21 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %20, i32 0, i32 1
  %22 = load %struct.alauda*, %struct.alauda** %21, align 8
  store %struct.alauda* %22, %struct.alauda** %12, align 8
  store i32 0, i32* %15, align 4
  store i32 0, i32* %16, align 4
  %23 = load %struct.mtd_info*, %struct.mtd_info** %7, align 8
  %24 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i32, i32* @GFP_KERNEL, align 4
  %27 = call i8* @kmalloc(i64 %25, i32 %26)
  store i8* %27, i8** %13, align 8
  %28 = load i8*, i8** %13, align 8
  %29 = icmp ne i8* %28, null
  br i1 %29, label %33, label %30

30:                                               ; preds = %5
  %31 = load i32, i32* @ENOMEM, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %6, align 4
  br label %93

33:                                               ; preds = %5
  %34 = load i64, i64* %9, align 8
  %35 = load i64*, i64** %10, align 8
  store i64 %34, i64* %35, align 8
  br label %36

36:                                               ; preds = %60, %33
  %37 = load i64, i64* %9, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %76

39:                                               ; preds = %36
  %40 = load i64, i64* %8, align 8
  %41 = load %struct.alauda*, %struct.alauda** %12, align 8
  %42 = getelementptr inbounds %struct.alauda, %struct.alauda* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = and i64 %40, %43
  store i64 %44, i64* %18, align 8
  %45 = load i64, i64* %9, align 8
  %46 = load %struct.mtd_info*, %struct.mtd_info** %7, align 8
  %47 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* %18, align 8
  %50 = sub i64 %48, %49
  %51 = call i64 @min(i64 %45, i64 %50)
  store i64 %51, i64* %19, align 8
  %52 = load %struct.mtd_info*, %struct.mtd_info** %7, align 8
  %53 = load i64, i64* %8, align 8
  %54 = load i8*, i8** %13, align 8
  %55 = getelementptr inbounds [16 x i32], [16 x i32]* %17, i64 0, i64 0
  %56 = call i32 @alauda_read_page(%struct.mtd_info* %52, i64 %53, i8* %54, i32* %55, i32* %15, i32* %16)
  store i32 %56, i32* %14, align 4
  %57 = load i32, i32* %14, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %39
  br label %89

60:                                               ; preds = %39
  %61 = load i32*, i32** %11, align 8
  %62 = load i8*, i8** %13, align 8
  %63 = load i64, i64* %18, align 8
  %64 = getelementptr i8, i8* %62, i64 %63
  %65 = load i64, i64* %19, align 8
  %66 = call i32 @memcpy(i32* %61, i8* %64, i64 %65)
  %67 = load i64, i64* %19, align 8
  %68 = load i32*, i32** %11, align 8
  %69 = getelementptr inbounds i32, i32* %68, i64 %67
  store i32* %69, i32** %11, align 8
  %70 = load i64, i64* %19, align 8
  %71 = load i64, i64* %8, align 8
  %72 = add i64 %71, %70
  store i64 %72, i64* %8, align 8
  %73 = load i64, i64* %19, align 8
  %74 = load i64, i64* %9, align 8
  %75 = sub i64 %74, %73
  store i64 %75, i64* %9, align 8
  br label %36

76:                                               ; preds = %36
  store i32 0, i32* %14, align 4
  %77 = load i32, i32* %15, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %82

79:                                               ; preds = %76
  %80 = load i32, i32* @EUCLEAN, align 4
  %81 = sub nsw i32 0, %80
  store i32 %81, i32* %14, align 4
  br label %82

82:                                               ; preds = %79, %76
  %83 = load i32, i32* %16, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %88

85:                                               ; preds = %82
  %86 = load i32, i32* @EBADMSG, align 4
  %87 = sub nsw i32 0, %86
  store i32 %87, i32* %14, align 4
  br label %88

88:                                               ; preds = %85, %82
  br label %89

89:                                               ; preds = %88, %59
  %90 = load i8*, i8** %13, align 8
  %91 = call i32 @kfree(i8* %90)
  %92 = load i32, i32* %14, align 4
  store i32 %92, i32* %6, align 4
  br label %93

93:                                               ; preds = %89, %30
  %94 = load i32, i32* %6, align 4
  ret i32 %94
}

declare dso_local i8* @kmalloc(i64, i32) #1

declare dso_local i64 @min(i64, i64) #1

declare dso_local i32 @alauda_read_page(%struct.mtd_info*, i64, i8*, i32*, i32*, i32*) #1

declare dso_local i32 @memcpy(i32*, i8*, i64) #1

declare dso_local i32 @kfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
