; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/s390/kernel/extr_debug.c_debug_areas_alloc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/s390/kernel/extr_debug.c_debug_areas_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@GFP_KERNEL = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32*************************** (i32, i32)* @debug_areas_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32*************************** @debug_areas_alloc(i32 %0, i32 %1) #0 {
  %3 = alloca i32***************************, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32***************************, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %9 = load i32, i32* %5, align 4
  %10 = sext i32 %9 to i64
  %11 = mul i64 %10, 8
  %12 = trunc i64 %11 to i32
  %13 = load i32, i32* @GFP_KERNEL, align 4
  %14 = call i8* @kmalloc(i32 %12, i32 %13)
  %15 = bitcast i8* %14 to i32***************************
  store i32*************************** %15, i32**************************** %6, align 8
  %16 = load i32***************************, i32**************************** %6, align 8
  %17 = icmp ne i32*************************** %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %2
  br label %150

19:                                               ; preds = %2
  store i32 0, i32* %7, align 4
  br label %20

20:                                               ; preds = %105, %19
  %21 = load i32, i32* %7, align 4
  %22 = load i32, i32* %5, align 4
  %23 = icmp slt i32 %21, %22
  br i1 %23, label %24, label %108

24:                                               ; preds = %20
  %25 = load i32, i32* %4, align 4
  %26 = sext i32 %25 to i64
  %27 = mul i64 %26, 8
  %28 = trunc i64 %27 to i32
  %29 = load i32, i32* @GFP_KERNEL, align 4
  %30 = call i8* @kmalloc(i32 %28, i32 %29)
  %31 = bitcast i8* %30 to i32**************************
  %32 = load i32***************************, i32**************************** %6, align 8
  %33 = load i32, i32* %7, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i32**************************, i32*************************** %32, i64 %34
  store i32************************** %31, i32*************************** %35, align 8
  %36 = load i32***************************, i32**************************** %6, align 8
  %37 = load i32, i32* %7, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i32**************************, i32*************************** %36, i64 %38
  %40 = load i32**************************, i32*************************** %39, align 8
  %41 = icmp ne i32************************** %40, null
  br i1 %41, label %43, label %42

42:                                               ; preds = %24
  br label %110

43:                                               ; preds = %24
  store i32 0, i32* %8, align 4
  br label %44

44:                                               ; preds = %101, %43
  %45 = load i32, i32* %8, align 4
  %46 = load i32, i32* %4, align 4
  %47 = icmp slt i32 %45, %46
  br i1 %47, label %48, label %104

48:                                               ; preds = %44
  %49 = load i32, i32* @PAGE_SIZE, align 4
  %50 = load i32, i32* @GFP_KERNEL, align 4
  %51 = call i32************************************* @kzalloc(i32 %49, i32 %50)
  %52 = bitcast i32************************************* %51 to i32*************************
  %53 = load i32***************************, i32**************************** %6, align 8
  %54 = load i32, i32* %7, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i32**************************, i32*************************** %53, i64 %55
  %57 = load i32**************************, i32*************************** %56, align 8
  %58 = load i32, i32* %8, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i32*************************, i32************************** %57, i64 %59
  store i32************************* %52, i32************************** %60, align 8
  %61 = load i32***************************, i32**************************** %6, align 8
  %62 = load i32, i32* %7, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i32**************************, i32*************************** %61, i64 %63
  %65 = load i32**************************, i32*************************** %64, align 8
  %66 = load i32, i32* %8, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i32*************************, i32************************** %65, i64 %67
  %69 = load i32*************************, i32************************** %68, align 8
  %70 = icmp ne i32************************* %69, null
  br i1 %70, label %100, label %71

71:                                               ; preds = %48
  %72 = load i32, i32* %8, align 4
  %73 = add nsw i32 %72, -1
  store i32 %73, i32* %8, align 4
  br label %74

74:                                               ; preds = %89, %71
  %75 = load i32, i32* %8, align 4
  %76 = icmp sge i32 %75, 0
  br i1 %76, label %77, label %92

77:                                               ; preds = %74
  %78 = load i32***************************, i32**************************** %6, align 8
  %79 = load i32, i32* %7, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i32**************************, i32*************************** %78, i64 %80
  %82 = load i32**************************, i32*************************** %81, align 8
  %83 = load i32, i32* %8, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i32*************************, i32************************** %82, i64 %84
  %86 = load i32*************************, i32************************** %85, align 8
  %87 = bitcast i32************************* %86 to i32***************************
  %88 = call i32 @kfree(i32*************************** %87)
  br label %89

89:                                               ; preds = %77
  %90 = load i32, i32* %8, align 4
  %91 = add nsw i32 %90, -1
  store i32 %91, i32* %8, align 4
  br label %74

92:                                               ; preds = %74
  %93 = load i32***************************, i32**************************** %6, align 8
  %94 = load i32, i32* %7, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds i32**************************, i32*************************** %93, i64 %95
  %97 = load i32**************************, i32*************************** %96, align 8
  %98 = bitcast i32************************** %97 to i32***************************
  %99 = call i32 @kfree(i32*************************** %98)
  br label %110

100:                                              ; preds = %48
  br label %101

101:                                              ; preds = %100
  %102 = load i32, i32* %8, align 4
  %103 = add nsw i32 %102, 1
  store i32 %103, i32* %8, align 4
  br label %44

104:                                              ; preds = %44
  br label %105

105:                                              ; preds = %104
  %106 = load i32, i32* %7, align 4
  %107 = add nsw i32 %106, 1
  store i32 %107, i32* %7, align 4
  br label %20

108:                                              ; preds = %20
  %109 = load i32***************************, i32**************************** %6, align 8
  store i32*************************** %109, i32**************************** %3, align 8
  br label %151

110:                                              ; preds = %92, %42
  %111 = load i32, i32* %7, align 4
  %112 = add nsw i32 %111, -1
  store i32 %112, i32* %7, align 4
  br label %113

113:                                              ; preds = %144, %110
  %114 = load i32, i32* %7, align 4
  %115 = icmp sge i32 %114, 0
  br i1 %115, label %116, label %147

116:                                              ; preds = %113
  store i32 0, i32* %8, align 4
  br label %117

117:                                              ; preds = %133, %116
  %118 = load i32, i32* %8, align 4
  %119 = load i32, i32* %4, align 4
  %120 = icmp slt i32 %118, %119
  br i1 %120, label %121, label %136

121:                                              ; preds = %117
  %122 = load i32***************************, i32**************************** %6, align 8
  %123 = load i32, i32* %7, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds i32**************************, i32*************************** %122, i64 %124
  %126 = load i32**************************, i32*************************** %125, align 8
  %127 = load i32, i32* %8, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds i32*************************, i32************************** %126, i64 %128
  %130 = load i32*************************, i32************************** %129, align 8
  %131 = bitcast i32************************* %130 to i32***************************
  %132 = call i32 @kfree(i32*************************** %131)
  br label %133

133:                                              ; preds = %121
  %134 = load i32, i32* %8, align 4
  %135 = add nsw i32 %134, 1
  store i32 %135, i32* %8, align 4
  br label %117

136:                                              ; preds = %117
  %137 = load i32***************************, i32**************************** %6, align 8
  %138 = load i32, i32* %7, align 4
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds i32**************************, i32*************************** %137, i64 %139
  %141 = load i32**************************, i32*************************** %140, align 8
  %142 = bitcast i32************************** %141 to i32***************************
  %143 = call i32 @kfree(i32*************************** %142)
  br label %144

144:                                              ; preds = %136
  %145 = load i32, i32* %7, align 4
  %146 = add nsw i32 %145, -1
  store i32 %146, i32* %7, align 4
  br label %113

147:                                              ; preds = %113
  %148 = load i32***************************, i32**************************** %6, align 8
  %149 = call i32 @kfree(i32*************************** %148)
  br label %150

150:                                              ; preds = %147, %18
  store i32*************************** null, i32**************************** %3, align 8
  br label %151

151:                                              ; preds = %150, %108
  %152 = load i32***************************, i32**************************** %3, align 8
  ret i32*************************** %152
}

declare dso_local i8* @kmalloc(i32, i32) #1

declare dso_local i32************************************* @kzalloc(i32, i32) #1

declare dso_local i32 @kfree(i32***************************) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
