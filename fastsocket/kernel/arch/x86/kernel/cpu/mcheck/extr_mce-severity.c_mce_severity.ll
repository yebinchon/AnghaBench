; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kernel/cpu/mcheck/extr_mce-severity.c_mce_severity.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kernel/cpu/mcheck/extr_mce-severity.c_mce_severity.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.severity = type { i32, i32, i32, i32, i64, i32, i8*, i32, i64 }
%struct.mce = type { i32, i32 }

@severities = common dso_local global %struct.severity* null, align 8
@SER_REQUIRED = common dso_local global i64 0, align 8
@mce_ser = common dso_local global i64 0, align 8
@NO_SER = common dso_local global i64 0, align 8
@MCE_UC_SEVERITY = common dso_local global i64 0, align 8
@IN_KERNEL = common dso_local global i32 0, align 4
@panic_on_oops = common dso_local global i64 0, align 8
@MCE_PANIC_SEVERITY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mce_severity(%struct.mce* %0, i32 %1, i8** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mce*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8**, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.severity*, align 8
  store %struct.mce* %0, %struct.mce** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8** %2, i8*** %7, align 8
  %10 = load %struct.mce*, %struct.mce** %5, align 8
  %11 = call i32 @error_context(%struct.mce* %10)
  store i32 %11, i32* %8, align 4
  %12 = load %struct.severity*, %struct.severity** @severities, align 8
  store %struct.severity* %12, %struct.severity** %9, align 8
  br label %13

13:                                               ; preds = %105, %3
  %14 = load %struct.mce*, %struct.mce** %5, align 8
  %15 = getelementptr inbounds %struct.mce, %struct.mce* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.severity*, %struct.severity** %9, align 8
  %18 = getelementptr inbounds %struct.severity, %struct.severity* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = and i32 %16, %19
  %21 = load %struct.severity*, %struct.severity** %9, align 8
  %22 = getelementptr inbounds %struct.severity, %struct.severity* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = icmp ne i32 %20, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %13
  br label %105

26:                                               ; preds = %13
  %27 = load %struct.mce*, %struct.mce** %5, align 8
  %28 = getelementptr inbounds %struct.mce, %struct.mce* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.severity*, %struct.severity** %9, align 8
  %31 = getelementptr inbounds %struct.severity, %struct.severity* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 8
  %33 = and i32 %29, %32
  %34 = load %struct.severity*, %struct.severity** %9, align 8
  %35 = getelementptr inbounds %struct.severity, %struct.severity* %34, i32 0, i32 3
  %36 = load i32, i32* %35, align 4
  %37 = icmp ne i32 %33, %36
  br i1 %37, label %38, label %39

38:                                               ; preds = %26
  br label %105

39:                                               ; preds = %26
  %40 = load %struct.severity*, %struct.severity** %9, align 8
  %41 = getelementptr inbounds %struct.severity, %struct.severity* %40, i32 0, i32 4
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @SER_REQUIRED, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %45, label %49

45:                                               ; preds = %39
  %46 = load i64, i64* @mce_ser, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %49, label %48

48:                                               ; preds = %45
  br label %105

49:                                               ; preds = %45, %39
  %50 = load %struct.severity*, %struct.severity** %9, align 8
  %51 = getelementptr inbounds %struct.severity, %struct.severity* %50, i32 0, i32 4
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @NO_SER, align 8
  %54 = icmp eq i64 %52, %53
  br i1 %54, label %55, label %59

55:                                               ; preds = %49
  %56 = load i64, i64* @mce_ser, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %55
  br label %105

59:                                               ; preds = %55, %49
  %60 = load %struct.severity*, %struct.severity** %9, align 8
  %61 = getelementptr inbounds %struct.severity, %struct.severity* %60, i32 0, i32 5
  %62 = load i32, i32* %61, align 8
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %71

64:                                               ; preds = %59
  %65 = load i32, i32* %8, align 4
  %66 = load %struct.severity*, %struct.severity** %9, align 8
  %67 = getelementptr inbounds %struct.severity, %struct.severity* %66, i32 0, i32 5
  %68 = load i32, i32* %67, align 8
  %69 = icmp ne i32 %65, %68
  br i1 %69, label %70, label %71

70:                                               ; preds = %64
  br label %105

71:                                               ; preds = %64, %59
  %72 = load i8**, i8*** %7, align 8
  %73 = icmp ne i8** %72, null
  br i1 %73, label %74, label %79

74:                                               ; preds = %71
  %75 = load %struct.severity*, %struct.severity** %9, align 8
  %76 = getelementptr inbounds %struct.severity, %struct.severity* %75, i32 0, i32 6
  %77 = load i8*, i8** %76, align 8
  %78 = load i8**, i8*** %7, align 8
  store i8* %77, i8** %78, align 8
  br label %79

79:                                               ; preds = %74, %71
  %80 = load %struct.severity*, %struct.severity** %9, align 8
  %81 = getelementptr inbounds %struct.severity, %struct.severity* %80, i32 0, i32 7
  store i32 1, i32* %81, align 8
  %82 = load %struct.severity*, %struct.severity** %9, align 8
  %83 = getelementptr inbounds %struct.severity, %struct.severity* %82, i32 0, i32 8
  %84 = load i64, i64* %83, align 8
  %85 = load i64, i64* @MCE_UC_SEVERITY, align 8
  %86 = icmp sge i64 %84, %85
  br i1 %86, label %87, label %100

87:                                               ; preds = %79
  %88 = load i32, i32* %8, align 4
  %89 = load i32, i32* @IN_KERNEL, align 4
  %90 = icmp eq i32 %88, %89
  br i1 %90, label %91, label %100

91:                                               ; preds = %87
  %92 = load i64, i64* @panic_on_oops, align 8
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %97, label %94

94:                                               ; preds = %91
  %95 = load i32, i32* %6, align 4
  %96 = icmp slt i32 %95, 1
  br i1 %96, label %97, label %99

97:                                               ; preds = %94, %91
  %98 = load i32, i32* @MCE_PANIC_SEVERITY, align 4
  store i32 %98, i32* %4, align 4
  br label %108

99:                                               ; preds = %94
  br label %100

100:                                              ; preds = %99, %87, %79
  %101 = load %struct.severity*, %struct.severity** %9, align 8
  %102 = getelementptr inbounds %struct.severity, %struct.severity* %101, i32 0, i32 8
  %103 = load i64, i64* %102, align 8
  %104 = trunc i64 %103 to i32
  store i32 %104, i32* %4, align 4
  br label %108

105:                                              ; preds = %70, %58, %48, %38, %25
  %106 = load %struct.severity*, %struct.severity** %9, align 8
  %107 = getelementptr inbounds %struct.severity, %struct.severity* %106, i32 1
  store %struct.severity* %107, %struct.severity** %9, align 8
  br label %13

108:                                              ; preds = %100, %97
  %109 = load i32, i32* %4, align 4
  ret i32 %109
}

declare dso_local i32 @error_context(%struct.mce*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
