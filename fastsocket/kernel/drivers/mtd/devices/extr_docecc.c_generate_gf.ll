; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/devices/extr_docecc.c_generate_gf.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/devices/extr_docecc.c_generate_gf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@NN = common dso_local global i32 0, align 4
@MM = common dso_local global i64 0, align 8
@Pp = common dso_local global i64* null, align 8
@A0 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64*, i64*)* @generate_gf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @generate_gf(i64* %0, i64* %1) #0 {
  %3 = alloca i64*, align 8
  %4 = alloca i64*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i64* %0, i64** %3, align 8
  store i64* %1, i64** %4, align 8
  %7 = load i32, i32* @NN, align 4
  %8 = add nsw i32 %7, 1
  %9 = zext i32 %8 to i64
  %10 = load i32, i32* @NN, align 4
  %11 = add nsw i32 %10, 1
  %12 = zext i32 %11 to i64
  store i32 1, i32* %6, align 4
  %13 = load i64*, i64** %3, align 8
  %14 = load i64, i64* @MM, align 8
  %15 = getelementptr inbounds i64, i64* %13, i64 %14
  store i64 0, i64* %15, align 8
  store i32 0, i32* %5, align 4
  br label %16

16:                                               ; preds = %54, %2
  %17 = load i32, i32* %5, align 4
  %18 = sext i32 %17 to i64
  %19 = load i64, i64* @MM, align 8
  %20 = icmp ult i64 %18, %19
  br i1 %20, label %21, label %57

21:                                               ; preds = %16
  %22 = load i32, i32* %6, align 4
  %23 = sext i32 %22 to i64
  %24 = load i64*, i64** %3, align 8
  %25 = load i32, i32* %5, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i64, i64* %24, i64 %26
  store i64 %23, i64* %27, align 8
  %28 = load i32, i32* %5, align 4
  %29 = sext i32 %28 to i64
  %30 = load i64*, i64** %4, align 8
  %31 = load i64*, i64** %3, align 8
  %32 = load i32, i32* %5, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i64, i64* %31, i64 %33
  %35 = load i64, i64* %34, align 8
  %36 = getelementptr inbounds i64, i64* %30, i64 %35
  store i64 %29, i64* %36, align 8
  %37 = load i64*, i64** @Pp, align 8
  %38 = load i32, i32* %5, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i64, i64* %37, i64 %39
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %51

43:                                               ; preds = %21
  %44 = load i32, i32* %6, align 4
  %45 = sext i32 %44 to i64
  %46 = load i64*, i64** %3, align 8
  %47 = load i64, i64* @MM, align 8
  %48 = getelementptr inbounds i64, i64* %46, i64 %47
  %49 = load i64, i64* %48, align 8
  %50 = xor i64 %49, %45
  store i64 %50, i64* %48, align 8
  br label %51

51:                                               ; preds = %43, %21
  %52 = load i32, i32* %6, align 4
  %53 = shl i32 %52, 1
  store i32 %53, i32* %6, align 4
  br label %54

54:                                               ; preds = %51
  %55 = load i32, i32* %5, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %5, align 4
  br label %16

57:                                               ; preds = %16
  %58 = load i64, i64* @MM, align 8
  %59 = load i64*, i64** %4, align 8
  %60 = load i64*, i64** %3, align 8
  %61 = load i64, i64* @MM, align 8
  %62 = getelementptr inbounds i64, i64* %60, i64 %61
  %63 = load i64, i64* %62, align 8
  %64 = getelementptr inbounds i64, i64* %59, i64 %63
  store i64 %58, i64* %64, align 8
  %65 = load i32, i32* %6, align 4
  %66 = ashr i32 %65, 1
  store i32 %66, i32* %6, align 4
  %67 = load i64, i64* @MM, align 8
  %68 = add i64 %67, 1
  %69 = trunc i64 %68 to i32
  store i32 %69, i32* %5, align 4
  br label %70

70:                                               ; preds = %126, %57
  %71 = load i32, i32* %5, align 4
  %72 = load i32, i32* @NN, align 4
  %73 = icmp slt i32 %71, %72
  br i1 %73, label %74, label %129

74:                                               ; preds = %70
  %75 = load i64*, i64** %3, align 8
  %76 = load i32, i32* %5, align 4
  %77 = sub nsw i32 %76, 1
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i64, i64* %75, i64 %78
  %80 = load i64, i64* %79, align 8
  %81 = load i32, i32* %6, align 4
  %82 = sext i32 %81 to i64
  %83 = icmp uge i64 %80, %82
  br i1 %83, label %84, label %104

84:                                               ; preds = %74
  %85 = load i64*, i64** %3, align 8
  %86 = load i64, i64* @MM, align 8
  %87 = getelementptr inbounds i64, i64* %85, i64 %86
  %88 = load i64, i64* %87, align 8
  %89 = load i64*, i64** %3, align 8
  %90 = load i32, i32* %5, align 4
  %91 = sub nsw i32 %90, 1
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds i64, i64* %89, i64 %92
  %94 = load i64, i64* %93, align 8
  %95 = load i32, i32* %6, align 4
  %96 = sext i32 %95 to i64
  %97 = xor i64 %94, %96
  %98 = shl i64 %97, 1
  %99 = xor i64 %88, %98
  %100 = load i64*, i64** %3, align 8
  %101 = load i32, i32* %5, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds i64, i64* %100, i64 %102
  store i64 %99, i64* %103, align 8
  br label %116

104:                                              ; preds = %74
  %105 = load i64*, i64** %3, align 8
  %106 = load i32, i32* %5, align 4
  %107 = sub nsw i32 %106, 1
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds i64, i64* %105, i64 %108
  %110 = load i64, i64* %109, align 8
  %111 = shl i64 %110, 1
  %112 = load i64*, i64** %3, align 8
  %113 = load i32, i32* %5, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds i64, i64* %112, i64 %114
  store i64 %111, i64* %115, align 8
  br label %116

116:                                              ; preds = %104, %84
  %117 = load i32, i32* %5, align 4
  %118 = sext i32 %117 to i64
  %119 = load i64*, i64** %4, align 8
  %120 = load i64*, i64** %3, align 8
  %121 = load i32, i32* %5, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds i64, i64* %120, i64 %122
  %124 = load i64, i64* %123, align 8
  %125 = getelementptr inbounds i64, i64* %119, i64 %124
  store i64 %118, i64* %125, align 8
  br label %126

126:                                              ; preds = %116
  %127 = load i32, i32* %5, align 4
  %128 = add nsw i32 %127, 1
  store i32 %128, i32* %5, align 4
  br label %70

129:                                              ; preds = %70
  %130 = load i64, i64* @A0, align 8
  %131 = load i64*, i64** %4, align 8
  %132 = getelementptr inbounds i64, i64* %131, i64 0
  store i64 %130, i64* %132, align 8
  %133 = load i64*, i64** %3, align 8
  %134 = load i32, i32* @NN, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds i64, i64* %133, i64 %135
  store i64 0, i64* %136, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
