; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/s390/kernel/extr_ipl.c_reipl_append_ascii_scpdata.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/s390/kernel/extr_ipl.c_reipl_append_ascii_scpdata.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipl_parameter_block = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32*, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @reipl_append_ascii_scpdata(i8* %0, i64 %1, %struct.ipl_parameter_block* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.ipl_parameter_block*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i64 %1, i64* %5, align 8
  store %struct.ipl_parameter_block* %2, %struct.ipl_parameter_block** %6, align 8
  %10 = load i64, i64* %5, align 8
  %11 = sub i64 %10, 1
  %12 = load %struct.ipl_parameter_block*, %struct.ipl_parameter_block** %6, align 8
  %13 = getelementptr inbounds %struct.ipl_parameter_block, %struct.ipl_parameter_block* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load i32*, i32** %15, align 8
  %17 = load %struct.ipl_parameter_block*, %struct.ipl_parameter_block** %6, align 8
  %18 = getelementptr inbounds %struct.ipl_parameter_block, %struct.ipl_parameter_block* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 8
  %22 = call i32 @scpdata_length(i32* %16, i32 %21)
  %23 = call i64 @min(i64 %11, i32 %22)
  store i64 %23, i64* %7, align 8
  %24 = load i64, i64* %7, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %3
  br label %98

27:                                               ; preds = %3
  store i32 0, i32* %9, align 4
  store i64 0, i64* %8, align 8
  br label %28

28:                                               ; preds = %60, %27
  %29 = load i64, i64* %8, align 8
  %30 = load i64, i64* %7, align 8
  %31 = icmp ult i64 %29, %30
  br i1 %31, label %32, label %63

32:                                               ; preds = %28
  %33 = load %struct.ipl_parameter_block*, %struct.ipl_parameter_block** %6, align 8
  %34 = getelementptr inbounds %struct.ipl_parameter_block, %struct.ipl_parameter_block* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 0
  %37 = load i32*, i32** %36, align 8
  %38 = load i64, i64* %8, align 8
  %39 = getelementptr inbounds i32, i32* %37, i64 %38
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @isascii(i32 %40)
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %44, label %43

43:                                               ; preds = %32
  store i64 0, i64* %7, align 8
  br label %98

44:                                               ; preds = %32
  %45 = load i32, i32* %9, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %59, label %47

47:                                               ; preds = %44
  %48 = load %struct.ipl_parameter_block*, %struct.ipl_parameter_block** %6, align 8
  %49 = getelementptr inbounds %struct.ipl_parameter_block, %struct.ipl_parameter_block* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 0
  %52 = load i32*, i32** %51, align 8
  %53 = load i64, i64* %8, align 8
  %54 = getelementptr inbounds i32, i32* %52, i64 %53
  %55 = load i32, i32* %54, align 4
  %56 = call i64 @islower(i32 %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %47
  store i32 1, i32* %9, align 4
  br label %59

59:                                               ; preds = %58, %47, %44
  br label %60

60:                                               ; preds = %59
  %61 = load i64, i64* %8, align 8
  %62 = add i64 %61, 1
  store i64 %62, i64* %8, align 8
  br label %28

63:                                               ; preds = %28
  %64 = load i32, i32* %9, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %75

66:                                               ; preds = %63
  %67 = load i8*, i8** %4, align 8
  %68 = load %struct.ipl_parameter_block*, %struct.ipl_parameter_block** %6, align 8
  %69 = getelementptr inbounds %struct.ipl_parameter_block, %struct.ipl_parameter_block* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i32 0, i32 0
  %72 = load i32*, i32** %71, align 8
  %73 = load i64, i64* %7, align 8
  %74 = call i32 @memcpy(i8* %67, i32* %72, i64 %73)
  br label %97

75:                                               ; preds = %63
  store i64 0, i64* %8, align 8
  br label %76

76:                                               ; preds = %93, %75
  %77 = load i64, i64* %8, align 8
  %78 = load i64, i64* %7, align 8
  %79 = icmp ult i64 %77, %78
  br i1 %79, label %80, label %96

80:                                               ; preds = %76
  %81 = load %struct.ipl_parameter_block*, %struct.ipl_parameter_block** %6, align 8
  %82 = getelementptr inbounds %struct.ipl_parameter_block, %struct.ipl_parameter_block* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %83, i32 0, i32 0
  %85 = load i32*, i32** %84, align 8
  %86 = load i64, i64* %8, align 8
  %87 = getelementptr inbounds i32, i32* %85, i64 %86
  %88 = load i32, i32* %87, align 4
  %89 = call signext i8 @tolower(i32 %88)
  %90 = load i8*, i8** %4, align 8
  %91 = load i64, i64* %8, align 8
  %92 = getelementptr inbounds i8, i8* %90, i64 %91
  store i8 %89, i8* %92, align 1
  br label %93

93:                                               ; preds = %80
  %94 = load i64, i64* %8, align 8
  %95 = add i64 %94, 1
  store i64 %95, i64* %8, align 8
  br label %76

96:                                               ; preds = %76
  br label %97

97:                                               ; preds = %96, %66
  br label %98

98:                                               ; preds = %97, %43, %26
  %99 = load i8*, i8** %4, align 8
  %100 = load i64, i64* %7, align 8
  %101 = getelementptr inbounds i8, i8* %99, i64 %100
  store i8 0, i8* %101, align 1
  %102 = load i64, i64* %7, align 8
  ret i64 %102
}

declare dso_local i64 @min(i64, i32) #1

declare dso_local i32 @scpdata_length(i32*, i32) #1

declare dso_local i32 @isascii(i32) #1

declare dso_local i64 @islower(i32) #1

declare dso_local i32 @memcpy(i8*, i32*, i64) #1

declare dso_local signext i8 @tolower(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
