; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/ia64/kvm/extr_......libvsprintf.c_string.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/ia64/kvm/extr_......libvsprintf.c_string.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.printf_spec = type { i32, i32, i32 }

@PAGE_SIZE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [7 x i8] c"(null)\00", align 1
@LEFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*, i8*, i8*, i64, i32)* @string to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @string(i8* %0, i8* %1, i8* %2, i64 %3, i32 %4) #0 {
  %6 = alloca %struct.printf_spec, align 4
  %7 = alloca { i64, i32 }, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %7, i32 0, i32 0
  store i64 %3, i64* %13, align 4
  %14 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %7, i32 0, i32 1
  store i32 %4, i32* %14, align 4
  %15 = bitcast %struct.printf_spec* %6 to i8*
  %16 = bitcast { i64, i32 }* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %15, i8* align 4 %16, i64 12, i1 false)
  store i8* %0, i8** %8, align 8
  store i8* %1, i8** %9, align 8
  store i8* %2, i8** %10, align 8
  %17 = load i8*, i8** %10, align 8
  %18 = ptrtoint i8* %17 to i64
  %19 = load i64, i64* @PAGE_SIZE, align 8
  %20 = icmp ult i64 %18, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %5
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8** %10, align 8
  br label %22

22:                                               ; preds = %21, %5
  %23 = load i8*, i8** %10, align 8
  %24 = getelementptr inbounds %struct.printf_spec, %struct.printf_spec* %6, i32 0, i32 2
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @strnlen(i8* %23, i32 %25)
  store i32 %26, i32* %11, align 4
  %27 = getelementptr inbounds %struct.printf_spec, %struct.printf_spec* %6, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @LEFT, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %49, label %32

32:                                               ; preds = %22
  br label %33

33:                                               ; preds = %45, %32
  %34 = load i32, i32* %11, align 4
  %35 = getelementptr inbounds %struct.printf_spec, %struct.printf_spec* %6, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = add nsw i32 %36, -1
  store i32 %37, i32* %35, align 4
  %38 = icmp slt i32 %34, %36
  br i1 %38, label %39, label %48

39:                                               ; preds = %33
  %40 = load i8*, i8** %8, align 8
  %41 = load i8*, i8** %9, align 8
  %42 = icmp ult i8* %40, %41
  br i1 %42, label %43, label %45

43:                                               ; preds = %39
  %44 = load i8*, i8** %8, align 8
  store i8 32, i8* %44, align 1
  br label %45

45:                                               ; preds = %43, %39
  %46 = load i8*, i8** %8, align 8
  %47 = getelementptr inbounds i8, i8* %46, i32 1
  store i8* %47, i8** %8, align 8
  br label %33

48:                                               ; preds = %33
  br label %49

49:                                               ; preds = %48, %22
  store i32 0, i32* %12, align 4
  br label %50

50:                                               ; preds = %67, %49
  %51 = load i32, i32* %12, align 4
  %52 = load i32, i32* %11, align 4
  %53 = icmp slt i32 %51, %52
  br i1 %53, label %54, label %70

54:                                               ; preds = %50
  %55 = load i8*, i8** %8, align 8
  %56 = load i8*, i8** %9, align 8
  %57 = icmp ult i8* %55, %56
  br i1 %57, label %58, label %62

58:                                               ; preds = %54
  %59 = load i8*, i8** %10, align 8
  %60 = load i8, i8* %59, align 1
  %61 = load i8*, i8** %8, align 8
  store i8 %60, i8* %61, align 1
  br label %62

62:                                               ; preds = %58, %54
  %63 = load i8*, i8** %8, align 8
  %64 = getelementptr inbounds i8, i8* %63, i32 1
  store i8* %64, i8** %8, align 8
  %65 = load i8*, i8** %10, align 8
  %66 = getelementptr inbounds i8, i8* %65, i32 1
  store i8* %66, i8** %10, align 8
  br label %67

67:                                               ; preds = %62
  %68 = load i32, i32* %12, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %12, align 4
  br label %50

70:                                               ; preds = %50
  br label %71

71:                                               ; preds = %83, %70
  %72 = load i32, i32* %11, align 4
  %73 = getelementptr inbounds %struct.printf_spec, %struct.printf_spec* %6, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = add nsw i32 %74, -1
  store i32 %75, i32* %73, align 4
  %76 = icmp slt i32 %72, %74
  br i1 %76, label %77, label %86

77:                                               ; preds = %71
  %78 = load i8*, i8** %8, align 8
  %79 = load i8*, i8** %9, align 8
  %80 = icmp ult i8* %78, %79
  br i1 %80, label %81, label %83

81:                                               ; preds = %77
  %82 = load i8*, i8** %8, align 8
  store i8 32, i8* %82, align 1
  br label %83

83:                                               ; preds = %81, %77
  %84 = load i8*, i8** %8, align 8
  %85 = getelementptr inbounds i8, i8* %84, i32 1
  store i8* %85, i8** %8, align 8
  br label %71

86:                                               ; preds = %71
  %87 = load i8*, i8** %8, align 8
  ret i8* %87
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @strnlen(i8*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
