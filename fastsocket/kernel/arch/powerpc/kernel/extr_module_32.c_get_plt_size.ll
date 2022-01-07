; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/kernel/extr_module_32.c_get_plt_size.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/kernel/extr_module_32.c_get_plt_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32, i64, i32, i32 }

@.str = private unnamed_addr constant [6 x i8] c".init\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c".debug\00", align 1
@SHT_RELA = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [33 x i8] c"Found relocations in section %u\0A\00", align 1
@.str.3 = private unnamed_addr constant [22 x i8] c"Ptr: %p.  Number: %u\0A\00", align 1
@relacmp = common dso_local global i32 0, align 4
@relaswap = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_6__*, %struct.TYPE_5__*, i8*, i32)* @get_plt_size to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @get_plt_size(%struct.TYPE_6__* %0, %struct.TYPE_5__* %1, i8* %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca %struct.TYPE_5__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %5, align 8
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %6, align 8
  store i8* %2, i8** %7, align 8
  store i32 %3, i32* %8, align 4
  store i64 0, i64* %9, align 8
  store i32 1, i32* %10, align 4
  br label %11

11:                                               ; preds = %126, %4
  %12 = load i32, i32* %10, align 4
  %13 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = icmp ult i32 %12, %15
  br i1 %16, label %17, label %129

17:                                               ; preds = %11
  %18 = load i8*, i8** %7, align 8
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %20 = load i32, i32* %10, align 4
  %21 = zext i32 %20 to i64
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i64 %21
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i8, i8* %18, i64 %25
  %27 = call i64 @strstr(i8* %26, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %28 = icmp ne i64 %27, 0
  %29 = zext i1 %28 to i32
  %30 = load i32, i32* %8, align 4
  %31 = icmp ne i32 %29, %30
  br i1 %31, label %32, label %33

32:                                               ; preds = %17
  br label %126

33:                                               ; preds = %17
  %34 = load i8*, i8** %7, align 8
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %36 = load i32, i32* %10, align 4
  %37 = zext i32 %36 to i64
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i64 %37
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i8, i8* %34, i64 %41
  %43 = call i64 @strstr(i8* %42, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %33
  br label %126

46:                                               ; preds = %33
  %47 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %48 = load i32, i32* %10, align 4
  %49 = zext i32 %48 to i64
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i64 %49
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @SHT_RELA, align 8
  %54 = icmp eq i64 %52, %53
  br i1 %54, label %55, label %125

55:                                               ; preds = %46
  %56 = load i32, i32* %10, align 4
  %57 = zext i32 %56 to i64
  %58 = inttoptr i64 %57 to i8*
  %59 = call i32 (i8*, i8*, ...) @DEBUGP(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0), i8* %58)
  %60 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %61 = bitcast %struct.TYPE_6__* %60 to i8*
  %62 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %63 = load i32, i32* %10, align 4
  %64 = zext i32 %63 to i64
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %62, i64 %64
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 8
  %68 = sext i32 %67 to i64
  %69 = getelementptr i8, i8* %61, i64 %68
  %70 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %71 = load i32, i32* %10, align 4
  %72 = zext i32 %71 to i64
  %73 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %70, i64 %72
  %74 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %73, i32 0, i32 3
  %75 = load i32, i32* %74, align 4
  %76 = sext i32 %75 to i64
  %77 = udiv i64 %76, 4
  %78 = call i32 (i8*, i8*, ...) @DEBUGP(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0), i8* %69, i64 %77)
  %79 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %80 = bitcast %struct.TYPE_6__* %79 to i8*
  %81 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %82 = load i32, i32* %10, align 4
  %83 = zext i32 %82 to i64
  %84 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %81, i64 %83
  %85 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %84, i32 0, i32 2
  %86 = load i32, i32* %85, align 8
  %87 = sext i32 %86 to i64
  %88 = getelementptr i8, i8* %80, i64 %87
  %89 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %90 = load i32, i32* %10, align 4
  %91 = zext i32 %90 to i64
  %92 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %89, i64 %91
  %93 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %92, i32 0, i32 3
  %94 = load i32, i32* %93, align 4
  %95 = sext i32 %94 to i64
  %96 = udiv i64 %95, 4
  %97 = trunc i64 %96 to i32
  %98 = load i32, i32* @relacmp, align 4
  %99 = load i32, i32* @relaswap, align 4
  %100 = call i32 @sort(i8* %88, i32 %97, i32 4, i32 %98, i32 %99)
  %101 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %102 = bitcast %struct.TYPE_6__* %101 to i8*
  %103 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %104 = load i32, i32* %10, align 4
  %105 = zext i32 %104 to i64
  %106 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %103, i64 %105
  %107 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %106, i32 0, i32 2
  %108 = load i32, i32* %107, align 8
  %109 = sext i32 %108 to i64
  %110 = getelementptr i8, i8* %102, i64 %109
  %111 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %112 = load i32, i32* %10, align 4
  %113 = zext i32 %112 to i64
  %114 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %111, i64 %113
  %115 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %114, i32 0, i32 3
  %116 = load i32, i32* %115, align 4
  %117 = sext i32 %116 to i64
  %118 = udiv i64 %117, 4
  %119 = trunc i64 %118 to i32
  %120 = call i32 @count_relocs(i8* %110, i32 %119)
  %121 = sext i32 %120 to i64
  %122 = mul i64 %121, 4
  %123 = load i64, i64* %9, align 8
  %124 = add i64 %123, %122
  store i64 %124, i64* %9, align 8
  br label %125

125:                                              ; preds = %55, %46
  br label %126

126:                                              ; preds = %125, %45, %32
  %127 = load i32, i32* %10, align 4
  %128 = add i32 %127, 1
  store i32 %128, i32* %10, align 4
  br label %11

129:                                              ; preds = %11
  %130 = load i64, i64* %9, align 8
  ret i64 %130
}

declare dso_local i64 @strstr(i8*, i8*) #1

declare dso_local i32 @DEBUGP(i8*, i8*, ...) #1

declare dso_local i32 @sort(i8*, i32, i32, i32, i32) #1

declare dso_local i32 @count_relocs(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
