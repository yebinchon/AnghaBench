; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/mn10300/mm/extr_misalignment.c_misalignment_reg.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/mn10300/mm/extr_misalignment.c_misalignment_reg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@Dreg_index = common dso_local global i64* null, align 8
@Areg_index = common dso_local global i64* null, align 8
@Rreg_index = common dso_local global i64* null, align 8
@REG_SP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64*, i32, i32, i64, i64**)* @misalignment_reg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @misalignment_reg(i64* %0, i32 %1, i32 %2, i64 %3, i64** %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i64*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64**, align 8
  store i64* %0, i64** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i64 %3, i64* %10, align 8
  store i64** %4, i64*** %11, align 8
  %12 = load i32, i32* %8, align 4
  %13 = and i32 %12, 2147483647
  store i32 %13, i32* %8, align 4
  %14 = load i32, i32* %8, align 4
  %15 = and i32 %14, -256
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %5
  store i32 0, i32* %6, align 4
  br label %168

18:                                               ; preds = %5
  %19 = load i32, i32* %8, align 4
  %20 = and i32 %19, 255
  switch i32 %20, label %165 [
    i32 138, label %21
    i32 137, label %31
    i32 136, label %42
    i32 141, label %53
    i32 140, label %63
    i32 139, label %74
    i32 133, label %85
    i32 132, label %95
    i32 131, label %106
    i32 130, label %117
    i32 129, label %128
    i32 135, label %139
    i32 134, label %148
    i32 128, label %158
  ]

21:                                               ; preds = %18
  %22 = load i64*, i64** %7, align 8
  %23 = load i64*, i64** @Dreg_index, align 8
  %24 = load i32, i32* %9, align 4
  %25 = and i32 %24, 3
  %26 = zext i32 %25 to i64
  %27 = getelementptr inbounds i64, i64* %23, i64 %26
  %28 = load i64, i64* %27, align 8
  %29 = getelementptr inbounds i64, i64* %22, i64 %28
  %30 = load i64**, i64*** %11, align 8
  store i64* %29, i64** %30, align 8
  br label %167

31:                                               ; preds = %18
  %32 = load i64*, i64** %7, align 8
  %33 = load i64*, i64** @Dreg_index, align 8
  %34 = load i32, i32* %9, align 4
  %35 = lshr i32 %34, 2
  %36 = and i32 %35, 3
  %37 = zext i32 %36 to i64
  %38 = getelementptr inbounds i64, i64* %33, i64 %37
  %39 = load i64, i64* %38, align 8
  %40 = getelementptr inbounds i64, i64* %32, i64 %39
  %41 = load i64**, i64*** %11, align 8
  store i64* %40, i64** %41, align 8
  br label %167

42:                                               ; preds = %18
  %43 = load i64*, i64** %7, align 8
  %44 = load i64*, i64** @Dreg_index, align 8
  %45 = load i32, i32* %9, align 4
  %46 = lshr i32 %45, 4
  %47 = and i32 %46, 3
  %48 = zext i32 %47 to i64
  %49 = getelementptr inbounds i64, i64* %44, i64 %48
  %50 = load i64, i64* %49, align 8
  %51 = getelementptr inbounds i64, i64* %43, i64 %50
  %52 = load i64**, i64*** %11, align 8
  store i64* %51, i64** %52, align 8
  br label %167

53:                                               ; preds = %18
  %54 = load i64*, i64** %7, align 8
  %55 = load i64*, i64** @Areg_index, align 8
  %56 = load i32, i32* %9, align 4
  %57 = and i32 %56, 3
  %58 = zext i32 %57 to i64
  %59 = getelementptr inbounds i64, i64* %55, i64 %58
  %60 = load i64, i64* %59, align 8
  %61 = getelementptr inbounds i64, i64* %54, i64 %60
  %62 = load i64**, i64*** %11, align 8
  store i64* %61, i64** %62, align 8
  br label %167

63:                                               ; preds = %18
  %64 = load i64*, i64** %7, align 8
  %65 = load i64*, i64** @Areg_index, align 8
  %66 = load i32, i32* %9, align 4
  %67 = lshr i32 %66, 2
  %68 = and i32 %67, 3
  %69 = zext i32 %68 to i64
  %70 = getelementptr inbounds i64, i64* %65, i64 %69
  %71 = load i64, i64* %70, align 8
  %72 = getelementptr inbounds i64, i64* %64, i64 %71
  %73 = load i64**, i64*** %11, align 8
  store i64* %72, i64** %73, align 8
  br label %167

74:                                               ; preds = %18
  %75 = load i64*, i64** %7, align 8
  %76 = load i64*, i64** @Areg_index, align 8
  %77 = load i32, i32* %9, align 4
  %78 = lshr i32 %77, 4
  %79 = and i32 %78, 3
  %80 = zext i32 %79 to i64
  %81 = getelementptr inbounds i64, i64* %76, i64 %80
  %82 = load i64, i64* %81, align 8
  %83 = getelementptr inbounds i64, i64* %75, i64 %82
  %84 = load i64**, i64*** %11, align 8
  store i64* %83, i64** %84, align 8
  br label %167

85:                                               ; preds = %18
  %86 = load i64*, i64** %7, align 8
  %87 = load i64*, i64** @Rreg_index, align 8
  %88 = load i32, i32* %9, align 4
  %89 = and i32 %88, 15
  %90 = zext i32 %89 to i64
  %91 = getelementptr inbounds i64, i64* %87, i64 %90
  %92 = load i64, i64* %91, align 8
  %93 = getelementptr inbounds i64, i64* %86, i64 %92
  %94 = load i64**, i64*** %11, align 8
  store i64* %93, i64** %94, align 8
  br label %167

95:                                               ; preds = %18
  %96 = load i64*, i64** %7, align 8
  %97 = load i64*, i64** @Rreg_index, align 8
  %98 = load i32, i32* %9, align 4
  %99 = lshr i32 %98, 2
  %100 = and i32 %99, 15
  %101 = zext i32 %100 to i64
  %102 = getelementptr inbounds i64, i64* %97, i64 %101
  %103 = load i64, i64* %102, align 8
  %104 = getelementptr inbounds i64, i64* %96, i64 %103
  %105 = load i64**, i64*** %11, align 8
  store i64* %104, i64** %105, align 8
  br label %167

106:                                              ; preds = %18
  %107 = load i64*, i64** %7, align 8
  %108 = load i64*, i64** @Rreg_index, align 8
  %109 = load i32, i32* %9, align 4
  %110 = lshr i32 %109, 4
  %111 = and i32 %110, 15
  %112 = zext i32 %111 to i64
  %113 = getelementptr inbounds i64, i64* %108, i64 %112
  %114 = load i64, i64* %113, align 8
  %115 = getelementptr inbounds i64, i64* %107, i64 %114
  %116 = load i64**, i64*** %11, align 8
  store i64* %115, i64** %116, align 8
  br label %167

117:                                              ; preds = %18
  %118 = load i64*, i64** %7, align 8
  %119 = load i64*, i64** @Rreg_index, align 8
  %120 = load i32, i32* %9, align 4
  %121 = lshr i32 %120, 8
  %122 = and i32 %121, 15
  %123 = zext i32 %122 to i64
  %124 = getelementptr inbounds i64, i64* %119, i64 %123
  %125 = load i64, i64* %124, align 8
  %126 = getelementptr inbounds i64, i64* %118, i64 %125
  %127 = load i64**, i64*** %11, align 8
  store i64* %126, i64** %127, align 8
  br label %167

128:                                              ; preds = %18
  %129 = load i64*, i64** %7, align 8
  %130 = load i64*, i64** @Rreg_index, align 8
  %131 = load i32, i32* %9, align 4
  %132 = lshr i32 %131, 12
  %133 = and i32 %132, 15
  %134 = zext i32 %133 to i64
  %135 = getelementptr inbounds i64, i64* %130, i64 %134
  %136 = load i64, i64* %135, align 8
  %137 = getelementptr inbounds i64, i64* %129, i64 %136
  %138 = load i64**, i64*** %11, align 8
  store i64* %137, i64** %138, align 8
  br label %167

139:                                              ; preds = %18
  %140 = load i64*, i64** %7, align 8
  %141 = load i64*, i64** @Rreg_index, align 8
  %142 = load i64, i64* %10, align 8
  %143 = and i64 %142, 15
  %144 = getelementptr inbounds i64, i64* %141, i64 %143
  %145 = load i64, i64* %144, align 8
  %146 = getelementptr inbounds i64, i64* %140, i64 %145
  %147 = load i64**, i64*** %11, align 8
  store i64* %146, i64** %147, align 8
  br label %167

148:                                              ; preds = %18
  %149 = load i64*, i64** %7, align 8
  %150 = load i64*, i64** @Rreg_index, align 8
  %151 = load i64, i64* %10, align 8
  %152 = lshr i64 %151, 4
  %153 = and i64 %152, 15
  %154 = getelementptr inbounds i64, i64* %150, i64 %153
  %155 = load i64, i64* %154, align 8
  %156 = getelementptr inbounds i64, i64* %149, i64 %155
  %157 = load i64**, i64*** %11, align 8
  store i64* %156, i64** %157, align 8
  br label %167

158:                                              ; preds = %18
  %159 = load i64*, i64** %7, align 8
  %160 = load i32, i32* @REG_SP, align 4
  %161 = ashr i32 %160, 2
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds i64, i64* %159, i64 %162
  %164 = load i64**, i64*** %11, align 8
  store i64* %163, i64** %164, align 8
  br label %167

165:                                              ; preds = %18
  %166 = call i32 (...) @BUG()
  store i32 0, i32* %6, align 4
  br label %168

167:                                              ; preds = %158, %148, %139, %128, %117, %106, %95, %85, %74, %63, %53, %42, %31, %21
  store i32 1, i32* %6, align 4
  br label %168

168:                                              ; preds = %167, %165, %17
  %169 = load i32, i32* %6, align 4
  ret i32 %169
}

declare dso_local i32 @BUG(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
