; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/s390/kernel/extr_ipl.c_reipl_generic_loadparm_store.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/s390/kernel/extr_ipl.c_reipl_generic_loadparm_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipl_parameter_block = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@LOADPARM_LEN = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.ipl_parameter_block*, i8*, i64)* @reipl_generic_loadparm_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @reipl_generic_loadparm_store(%struct.ipl_parameter_block* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.ipl_parameter_block*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.ipl_parameter_block* %0, %struct.ipl_parameter_block** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %10 = load i64, i64* %7, align 8
  %11 = trunc i64 %10 to i32
  store i32 %11, i32* %9, align 4
  %12 = load i64, i64* %7, align 8
  %13 = icmp ugt i64 %12, 0
  br i1 %13, label %14, label %25

14:                                               ; preds = %3
  %15 = load i8*, i8** %6, align 8
  %16 = load i64, i64* %7, align 8
  %17 = sub i64 %16, 1
  %18 = getelementptr inbounds i8, i8* %15, i64 %17
  %19 = load i8, i8* %18, align 1
  %20 = sext i8 %19 to i32
  %21 = icmp eq i32 %20, 10
  br i1 %21, label %22, label %25

22:                                               ; preds = %14
  %23 = load i32, i32* %9, align 4
  %24 = add nsw i32 %23, -1
  store i32 %24, i32* %9, align 4
  br label %25

25:                                               ; preds = %22, %14, %3
  %26 = load i32, i32* %9, align 4
  %27 = load i32, i32* @LOADPARM_LEN, align 4
  %28 = icmp sgt i32 %26, %27
  br i1 %28, label %38, label %29

29:                                               ; preds = %25
  %30 = load i32, i32* %9, align 4
  %31 = icmp sgt i32 %30, 0
  br i1 %31, label %32, label %41

32:                                               ; preds = %29
  %33 = load i8*, i8** %6, align 8
  %34 = getelementptr inbounds i8, i8* %33, i64 0
  %35 = load i8, i8* %34, align 1
  %36 = sext i8 %35 to i32
  %37 = icmp eq i32 %36, 32
  br i1 %37, label %38, label %41

38:                                               ; preds = %32, %25
  %39 = load i64, i64* @EINVAL, align 8
  %40 = sub i64 0, %39
  store i64 %40, i64* %4, align 8
  br label %109

41:                                               ; preds = %32, %29
  store i32 0, i32* %8, align 4
  br label %42

42:                                               ; preds = %82, %41
  %43 = load i32, i32* %8, align 4
  %44 = load i32, i32* %9, align 4
  %45 = icmp slt i32 %43, %44
  br i1 %45, label %46, label %85

46:                                               ; preds = %42
  %47 = load i8*, i8** %6, align 8
  %48 = load i32, i32* %8, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i8, i8* %47, i64 %49
  %51 = load i8, i8* %50, align 1
  %52 = call i64 @isalpha(i8 signext %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %78, label %54

54:                                               ; preds = %46
  %55 = load i8*, i8** %6, align 8
  %56 = load i32, i32* %8, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i8, i8* %55, i64 %57
  %59 = load i8, i8* %58, align 1
  %60 = call i64 @isdigit(i8 signext %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %78, label %62

62:                                               ; preds = %54
  %63 = load i8*, i8** %6, align 8
  %64 = load i32, i32* %8, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i8, i8* %63, i64 %65
  %67 = load i8, i8* %66, align 1
  %68 = sext i8 %67 to i32
  %69 = icmp eq i32 %68, 32
  br i1 %69, label %78, label %70

70:                                               ; preds = %62
  %71 = load i8*, i8** %6, align 8
  %72 = load i32, i32* %8, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i8, i8* %71, i64 %73
  %75 = load i8, i8* %74, align 1
  %76 = sext i8 %75 to i32
  %77 = icmp eq i32 %76, 46
  br i1 %77, label %78, label %79

78:                                               ; preds = %70, %62, %54, %46
  br label %82

79:                                               ; preds = %70
  %80 = load i64, i64* @EINVAL, align 8
  %81 = sub i64 0, %80
  store i64 %81, i64* %4, align 8
  br label %109

82:                                               ; preds = %78
  %83 = load i32, i32* %8, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %8, align 4
  br label %42

85:                                               ; preds = %42
  %86 = load %struct.ipl_parameter_block*, %struct.ipl_parameter_block** %5, align 8
  %87 = getelementptr inbounds %struct.ipl_parameter_block, %struct.ipl_parameter_block* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = load i32, i32* @LOADPARM_LEN, align 4
  %92 = call i32 @memset(i32 %90, i8 signext 32, i32 %91)
  %93 = load %struct.ipl_parameter_block*, %struct.ipl_parameter_block** %5, align 8
  %94 = getelementptr inbounds %struct.ipl_parameter_block, %struct.ipl_parameter_block* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = load i8*, i8** %6, align 8
  %99 = load i32, i32* %9, align 4
  %100 = call i32 @memcpy(i32 %97, i8* %98, i32 %99)
  %101 = load %struct.ipl_parameter_block*, %struct.ipl_parameter_block** %5, align 8
  %102 = getelementptr inbounds %struct.ipl_parameter_block, %struct.ipl_parameter_block* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = load i32, i32* @LOADPARM_LEN, align 4
  %107 = call i32 @ASCEBC(i32 %105, i32 %106)
  %108 = load i64, i64* %7, align 8
  store i64 %108, i64* %4, align 8
  br label %109

109:                                              ; preds = %85, %79, %38
  %110 = load i64, i64* %4, align 8
  ret i64 %110
}

declare dso_local i64 @isalpha(i8 signext) #1

declare dso_local i64 @isdigit(i8 signext) #1

declare dso_local i32 @memset(i32, i8 signext, i32) #1

declare dso_local i32 @memcpy(i32, i8*, i32) #1

declare dso_local i32 @ASCEBC(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
