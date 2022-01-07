; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/lpfc/extr_lpfc_init.c_lpfc_sha_iterate.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/lpfc/extr_lpfc_init.c_lpfc_sha_iterate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*)* @lpfc_sha_iterate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lpfc_sha_iterate(i32* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32* %1, i32** %4, align 8
  store i32 16, i32* %5, align 4
  br label %12

12:                                               ; preds = %45, %2
  %13 = load i32*, i32** %4, align 8
  %14 = load i32, i32* %5, align 4
  %15 = sub nsw i32 %14, 3
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds i32, i32* %13, i64 %16
  %18 = load i32, i32* %17, align 4
  %19 = load i32*, i32** %4, align 8
  %20 = load i32, i32* %5, align 4
  %21 = sub nsw i32 %20, 8
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i32, i32* %19, i64 %22
  %24 = load i32, i32* %23, align 4
  %25 = xor i32 %18, %24
  %26 = load i32*, i32** %4, align 8
  %27 = load i32, i32* %5, align 4
  %28 = sub nsw i32 %27, 14
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i32, i32* %26, i64 %29
  %31 = load i32, i32* %30, align 4
  %32 = xor i32 %25, %31
  %33 = load i32*, i32** %4, align 8
  %34 = load i32, i32* %5, align 4
  %35 = sub nsw i32 %34, 16
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i32, i32* %33, i64 %36
  %38 = load i32, i32* %37, align 4
  %39 = xor i32 %32, %38
  %40 = call i32 @S(i32 1, i32 %39)
  %41 = load i32*, i32** %4, align 8
  %42 = load i32, i32* %5, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i32, i32* %41, i64 %43
  store i32 %40, i32* %44, align 4
  br label %45

45:                                               ; preds = %12
  %46 = load i32, i32* %5, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %5, align 4
  %48 = icmp sle i32 %47, 79
  br i1 %48, label %12, label %49

49:                                               ; preds = %45
  store i32 0, i32* %5, align 4
  %50 = load i32*, i32** %3, align 8
  %51 = getelementptr inbounds i32, i32* %50, i64 0
  %52 = load i32, i32* %51, align 4
  store i32 %52, i32* %7, align 4
  %53 = load i32*, i32** %3, align 8
  %54 = getelementptr inbounds i32, i32* %53, i64 1
  %55 = load i32, i32* %54, align 4
  store i32 %55, i32* %8, align 4
  %56 = load i32*, i32** %3, align 8
  %57 = getelementptr inbounds i32, i32* %56, i64 2
  %58 = load i32, i32* %57, align 4
  store i32 %58, i32* %9, align 4
  %59 = load i32*, i32** %3, align 8
  %60 = getelementptr inbounds i32, i32* %59, i64 3
  %61 = load i32, i32* %60, align 4
  store i32 %61, i32* %10, align 4
  %62 = load i32*, i32** %3, align 8
  %63 = getelementptr inbounds i32, i32* %62, i64 4
  %64 = load i32, i32* %63, align 4
  store i32 %64, i32* %11, align 4
  br label %65

65:                                               ; preds = %132, %49
  %66 = load i32, i32* %5, align 4
  %67 = icmp slt i32 %66, 20
  br i1 %67, label %68, label %78

68:                                               ; preds = %65
  %69 = load i32, i32* %8, align 4
  %70 = load i32, i32* %9, align 4
  %71 = and i32 %69, %70
  %72 = load i32, i32* %8, align 4
  %73 = xor i32 %72, -1
  %74 = load i32, i32* %10, align 4
  %75 = and i32 %73, %74
  %76 = or i32 %71, %75
  %77 = add nsw i32 %76, 1518500249
  store i32 %77, i32* %6, align 4
  br label %113

78:                                               ; preds = %65
  %79 = load i32, i32* %5, align 4
  %80 = icmp slt i32 %79, 40
  br i1 %80, label %81, label %88

81:                                               ; preds = %78
  %82 = load i32, i32* %8, align 4
  %83 = load i32, i32* %9, align 4
  %84 = xor i32 %82, %83
  %85 = load i32, i32* %10, align 4
  %86 = xor i32 %84, %85
  %87 = add nsw i32 %86, 1859775393
  store i32 %87, i32* %6, align 4
  br label %112

88:                                               ; preds = %78
  %89 = load i32, i32* %5, align 4
  %90 = icmp slt i32 %89, 60
  br i1 %90, label %91, label %104

91:                                               ; preds = %88
  %92 = load i32, i32* %8, align 4
  %93 = load i32, i32* %9, align 4
  %94 = and i32 %92, %93
  %95 = load i32, i32* %8, align 4
  %96 = load i32, i32* %10, align 4
  %97 = and i32 %95, %96
  %98 = or i32 %94, %97
  %99 = load i32, i32* %9, align 4
  %100 = load i32, i32* %10, align 4
  %101 = and i32 %99, %100
  %102 = or i32 %98, %101
  %103 = add i32 %102, -1894007588
  store i32 %103, i32* %6, align 4
  br label %111

104:                                              ; preds = %88
  %105 = load i32, i32* %8, align 4
  %106 = load i32, i32* %9, align 4
  %107 = xor i32 %105, %106
  %108 = load i32, i32* %10, align 4
  %109 = xor i32 %107, %108
  %110 = add i32 %109, -899497514
  store i32 %110, i32* %6, align 4
  br label %111

111:                                              ; preds = %104, %91
  br label %112

112:                                              ; preds = %111, %81
  br label %113

113:                                              ; preds = %112, %68
  %114 = load i32, i32* %7, align 4
  %115 = call i32 @S(i32 5, i32 %114)
  %116 = load i32, i32* %11, align 4
  %117 = add nsw i32 %115, %116
  %118 = load i32*, i32** %4, align 8
  %119 = load i32, i32* %5, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds i32, i32* %118, i64 %120
  %122 = load i32, i32* %121, align 4
  %123 = add nsw i32 %117, %122
  %124 = load i32, i32* %6, align 4
  %125 = add nsw i32 %124, %123
  store i32 %125, i32* %6, align 4
  %126 = load i32, i32* %10, align 4
  store i32 %126, i32* %11, align 4
  %127 = load i32, i32* %9, align 4
  store i32 %127, i32* %10, align 4
  %128 = load i32, i32* %8, align 4
  %129 = call i32 @S(i32 30, i32 %128)
  store i32 %129, i32* %9, align 4
  %130 = load i32, i32* %7, align 4
  store i32 %130, i32* %8, align 4
  %131 = load i32, i32* %6, align 4
  store i32 %131, i32* %7, align 4
  br label %132

132:                                              ; preds = %113
  %133 = load i32, i32* %5, align 4
  %134 = add nsw i32 %133, 1
  store i32 %134, i32* %5, align 4
  %135 = icmp sle i32 %134, 79
  br i1 %135, label %65, label %136

136:                                              ; preds = %132
  %137 = load i32, i32* %7, align 4
  %138 = load i32*, i32** %3, align 8
  %139 = getelementptr inbounds i32, i32* %138, i64 0
  %140 = load i32, i32* %139, align 4
  %141 = add nsw i32 %140, %137
  store i32 %141, i32* %139, align 4
  %142 = load i32, i32* %8, align 4
  %143 = load i32*, i32** %3, align 8
  %144 = getelementptr inbounds i32, i32* %143, i64 1
  %145 = load i32, i32* %144, align 4
  %146 = add nsw i32 %145, %142
  store i32 %146, i32* %144, align 4
  %147 = load i32, i32* %9, align 4
  %148 = load i32*, i32** %3, align 8
  %149 = getelementptr inbounds i32, i32* %148, i64 2
  %150 = load i32, i32* %149, align 4
  %151 = add nsw i32 %150, %147
  store i32 %151, i32* %149, align 4
  %152 = load i32, i32* %10, align 4
  %153 = load i32*, i32** %3, align 8
  %154 = getelementptr inbounds i32, i32* %153, i64 3
  %155 = load i32, i32* %154, align 4
  %156 = add nsw i32 %155, %152
  store i32 %156, i32* %154, align 4
  %157 = load i32, i32* %11, align 4
  %158 = load i32*, i32** %3, align 8
  %159 = getelementptr inbounds i32, i32* %158, i64 4
  %160 = load i32, i32* %159, align 4
  %161 = add nsw i32 %160, %157
  store i32 %161, i32* %159, align 4
  ret void
}

declare dso_local i32 @S(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
