; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/crypto/extr_cast6.c_W.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/crypto/extr_cast6.c_W.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@Tr = common dso_local global i32** null, align 8
@Tm = common dso_local global i32** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32)* @W to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @W(i32* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32*, i32** %3, align 8
  %7 = getelementptr inbounds i32, i32* %6, i64 7
  %8 = load i32, i32* %7, align 4
  %9 = load i32**, i32*** @Tr, align 8
  %10 = load i32, i32* %4, align 4
  %11 = urem i32 %10, 4
  %12 = zext i32 %11 to i64
  %13 = getelementptr inbounds i32*, i32** %9, i64 %12
  %14 = load i32*, i32** %13, align 8
  %15 = getelementptr inbounds i32, i32* %14, i64 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32**, i32*** @Tm, align 8
  %18 = load i32, i32* %4, align 4
  %19 = zext i32 %18 to i64
  %20 = getelementptr inbounds i32*, i32** %17, i64 %19
  %21 = load i32*, i32** %20, align 8
  %22 = getelementptr inbounds i32, i32* %21, i64 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @F1(i32 %8, i32 %16, i32 %23)
  %25 = load i32*, i32** %3, align 8
  %26 = getelementptr inbounds i32, i32* %25, i64 6
  %27 = load i32, i32* %26, align 4
  %28 = xor i32 %27, %24
  store i32 %28, i32* %26, align 4
  %29 = load i32*, i32** %3, align 8
  %30 = getelementptr inbounds i32, i32* %29, i64 6
  %31 = load i32, i32* %30, align 4
  %32 = load i32**, i32*** @Tr, align 8
  %33 = load i32, i32* %4, align 4
  %34 = urem i32 %33, 4
  %35 = zext i32 %34 to i64
  %36 = getelementptr inbounds i32*, i32** %32, i64 %35
  %37 = load i32*, i32** %36, align 8
  %38 = getelementptr inbounds i32, i32* %37, i64 1
  %39 = load i32, i32* %38, align 4
  %40 = load i32**, i32*** @Tm, align 8
  %41 = load i32, i32* %4, align 4
  %42 = zext i32 %41 to i64
  %43 = getelementptr inbounds i32*, i32** %40, i64 %42
  %44 = load i32*, i32** %43, align 8
  %45 = getelementptr inbounds i32, i32* %44, i64 1
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @F2(i32 %31, i32 %39, i32 %46)
  %48 = load i32*, i32** %3, align 8
  %49 = getelementptr inbounds i32, i32* %48, i64 5
  %50 = load i32, i32* %49, align 4
  %51 = xor i32 %50, %47
  store i32 %51, i32* %49, align 4
  %52 = load i32*, i32** %3, align 8
  %53 = getelementptr inbounds i32, i32* %52, i64 5
  %54 = load i32, i32* %53, align 4
  %55 = load i32**, i32*** @Tr, align 8
  %56 = load i32, i32* %4, align 4
  %57 = urem i32 %56, 4
  %58 = zext i32 %57 to i64
  %59 = getelementptr inbounds i32*, i32** %55, i64 %58
  %60 = load i32*, i32** %59, align 8
  %61 = getelementptr inbounds i32, i32* %60, i64 2
  %62 = load i32, i32* %61, align 4
  %63 = load i32**, i32*** @Tm, align 8
  %64 = load i32, i32* %4, align 4
  %65 = zext i32 %64 to i64
  %66 = getelementptr inbounds i32*, i32** %63, i64 %65
  %67 = load i32*, i32** %66, align 8
  %68 = getelementptr inbounds i32, i32* %67, i64 2
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @F3(i32 %54, i32 %62, i32 %69)
  %71 = load i32*, i32** %3, align 8
  %72 = getelementptr inbounds i32, i32* %71, i64 4
  %73 = load i32, i32* %72, align 4
  %74 = xor i32 %73, %70
  store i32 %74, i32* %72, align 4
  %75 = load i32*, i32** %3, align 8
  %76 = getelementptr inbounds i32, i32* %75, i64 4
  %77 = load i32, i32* %76, align 4
  %78 = load i32**, i32*** @Tr, align 8
  %79 = load i32, i32* %4, align 4
  %80 = urem i32 %79, 4
  %81 = zext i32 %80 to i64
  %82 = getelementptr inbounds i32*, i32** %78, i64 %81
  %83 = load i32*, i32** %82, align 8
  %84 = getelementptr inbounds i32, i32* %83, i64 3
  %85 = load i32, i32* %84, align 4
  %86 = load i32**, i32*** @Tm, align 8
  %87 = load i32, i32* %4, align 4
  %88 = zext i32 %87 to i64
  %89 = getelementptr inbounds i32*, i32** %86, i64 %88
  %90 = load i32*, i32** %89, align 8
  %91 = getelementptr inbounds i32, i32* %90, i64 3
  %92 = load i32, i32* %91, align 4
  %93 = call i32 @F1(i32 %77, i32 %85, i32 %92)
  %94 = load i32*, i32** %3, align 8
  %95 = getelementptr inbounds i32, i32* %94, i64 3
  %96 = load i32, i32* %95, align 4
  %97 = xor i32 %96, %93
  store i32 %97, i32* %95, align 4
  %98 = load i32*, i32** %3, align 8
  %99 = getelementptr inbounds i32, i32* %98, i64 3
  %100 = load i32, i32* %99, align 4
  %101 = load i32**, i32*** @Tr, align 8
  %102 = load i32, i32* %4, align 4
  %103 = urem i32 %102, 4
  %104 = zext i32 %103 to i64
  %105 = getelementptr inbounds i32*, i32** %101, i64 %104
  %106 = load i32*, i32** %105, align 8
  %107 = getelementptr inbounds i32, i32* %106, i64 4
  %108 = load i32, i32* %107, align 4
  %109 = load i32**, i32*** @Tm, align 8
  %110 = load i32, i32* %4, align 4
  %111 = zext i32 %110 to i64
  %112 = getelementptr inbounds i32*, i32** %109, i64 %111
  %113 = load i32*, i32** %112, align 8
  %114 = getelementptr inbounds i32, i32* %113, i64 4
  %115 = load i32, i32* %114, align 4
  %116 = call i32 @F2(i32 %100, i32 %108, i32 %115)
  %117 = load i32*, i32** %3, align 8
  %118 = getelementptr inbounds i32, i32* %117, i64 2
  %119 = load i32, i32* %118, align 4
  %120 = xor i32 %119, %116
  store i32 %120, i32* %118, align 4
  %121 = load i32*, i32** %3, align 8
  %122 = getelementptr inbounds i32, i32* %121, i64 2
  %123 = load i32, i32* %122, align 4
  %124 = load i32**, i32*** @Tr, align 8
  %125 = load i32, i32* %4, align 4
  %126 = urem i32 %125, 4
  %127 = zext i32 %126 to i64
  %128 = getelementptr inbounds i32*, i32** %124, i64 %127
  %129 = load i32*, i32** %128, align 8
  %130 = getelementptr inbounds i32, i32* %129, i64 5
  %131 = load i32, i32* %130, align 4
  %132 = load i32**, i32*** @Tm, align 8
  %133 = load i32, i32* %4, align 4
  %134 = zext i32 %133 to i64
  %135 = getelementptr inbounds i32*, i32** %132, i64 %134
  %136 = load i32*, i32** %135, align 8
  %137 = getelementptr inbounds i32, i32* %136, i64 5
  %138 = load i32, i32* %137, align 4
  %139 = call i32 @F3(i32 %123, i32 %131, i32 %138)
  %140 = load i32*, i32** %3, align 8
  %141 = getelementptr inbounds i32, i32* %140, i64 1
  %142 = load i32, i32* %141, align 4
  %143 = xor i32 %142, %139
  store i32 %143, i32* %141, align 4
  %144 = load i32*, i32** %3, align 8
  %145 = getelementptr inbounds i32, i32* %144, i64 1
  %146 = load i32, i32* %145, align 4
  %147 = load i32**, i32*** @Tr, align 8
  %148 = load i32, i32* %4, align 4
  %149 = urem i32 %148, 4
  %150 = zext i32 %149 to i64
  %151 = getelementptr inbounds i32*, i32** %147, i64 %150
  %152 = load i32*, i32** %151, align 8
  %153 = getelementptr inbounds i32, i32* %152, i64 6
  %154 = load i32, i32* %153, align 4
  %155 = load i32**, i32*** @Tm, align 8
  %156 = load i32, i32* %4, align 4
  %157 = zext i32 %156 to i64
  %158 = getelementptr inbounds i32*, i32** %155, i64 %157
  %159 = load i32*, i32** %158, align 8
  %160 = getelementptr inbounds i32, i32* %159, i64 6
  %161 = load i32, i32* %160, align 4
  %162 = call i32 @F1(i32 %146, i32 %154, i32 %161)
  %163 = load i32*, i32** %3, align 8
  %164 = getelementptr inbounds i32, i32* %163, i64 0
  %165 = load i32, i32* %164, align 4
  %166 = xor i32 %165, %162
  store i32 %166, i32* %164, align 4
  %167 = load i32*, i32** %3, align 8
  %168 = getelementptr inbounds i32, i32* %167, i64 0
  %169 = load i32, i32* %168, align 4
  %170 = load i32**, i32*** @Tr, align 8
  %171 = load i32, i32* %4, align 4
  %172 = urem i32 %171, 4
  %173 = zext i32 %172 to i64
  %174 = getelementptr inbounds i32*, i32** %170, i64 %173
  %175 = load i32*, i32** %174, align 8
  %176 = getelementptr inbounds i32, i32* %175, i64 7
  %177 = load i32, i32* %176, align 4
  %178 = load i32**, i32*** @Tm, align 8
  %179 = load i32, i32* %4, align 4
  %180 = zext i32 %179 to i64
  %181 = getelementptr inbounds i32*, i32** %178, i64 %180
  %182 = load i32*, i32** %181, align 8
  %183 = getelementptr inbounds i32, i32* %182, i64 7
  %184 = load i32, i32* %183, align 4
  %185 = call i32 @F2(i32 %169, i32 %177, i32 %184)
  %186 = load i32*, i32** %3, align 8
  %187 = getelementptr inbounds i32, i32* %186, i64 7
  %188 = load i32, i32* %187, align 4
  %189 = xor i32 %188, %185
  store i32 %189, i32* %187, align 4
  ret void
}

declare dso_local i32 @F1(i32, i32, i32) #1

declare dso_local i32 @F2(i32, i32, i32) #1

declare dso_local i32 @F3(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
