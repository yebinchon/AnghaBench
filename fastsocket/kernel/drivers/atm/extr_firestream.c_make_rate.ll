; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/atm/extr_firestream.c_make_rate.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/atm/extr_firestream.c_make_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FS_DEBUG_QOS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"make_rate %u\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"rate: man=%u, exp=%hu\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i8*, i32*)* @make_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @make_rate(i32 %0, i32 %1, i8* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i8, align 1
  %11 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i32* %3, i32** %9, align 8
  store i8 -1, i8* %10, align 1
  store i32 -1, i32* %11, align 4
  %12 = load i32, i32* @FS_DEBUG_QOS, align 4
  %13 = load i32, i32* %6, align 4
  %14 = call i32 (i32, i8*, i32, ...) @fs_dprintk(i32 %12, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 %13)
  %15 = load i32, i32* %6, align 4
  %16 = icmp ugt i32 %15, -4194304
  br i1 %16, label %17, label %25

17:                                               ; preds = %4
  %18 = load i32, i32* %7, align 4
  %19 = icmp eq i32 %18, 128
  br i1 %19, label %20, label %23

20:                                               ; preds = %17
  %21 = load i32, i32* @EINVAL, align 4
  %22 = sub i32 0, %21
  store i32 %22, i32* %5, align 4
  br label %153

23:                                               ; preds = %17
  store i8 31, i8* %10, align 1
  store i32 511, i32* %11, align 4
  br label %24

24:                                               ; preds = %23
  br label %100

25:                                               ; preds = %4
  %26 = load i32, i32* %6, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %91

28:                                               ; preds = %25
  store i8 31, i8* %10, align 1
  %29 = load i32, i32* %6, align 4
  store i32 %29, i32* %11, align 4
  br label %30

30:                                               ; preds = %35, %28
  %31 = load i32, i32* %11, align 4
  %32 = and i32 %31, -2147483648
  %33 = icmp ne i32 %32, 0
  %34 = xor i1 %33, true
  br i1 %34, label %35, label %42

35:                                               ; preds = %30
  %36 = load i8, i8* %10, align 1
  %37 = zext i8 %36 to i32
  %38 = sub nsw i32 %37, 1
  %39 = trunc i32 %38 to i8
  store i8 %39, i8* %10, align 1
  %40 = load i32, i32* %11, align 4
  %41 = shl i32 %40, 1
  store i32 %41, i32* %11, align 4
  br label %30

42:                                               ; preds = %30
  %43 = load i32, i32* %11, align 4
  %44 = shl i32 %43, 1
  store i32 %44, i32* %11, align 4
  %45 = load i32, i32* %11, align 4
  store i32 %45, i32* %11, align 4
  %46 = load i32, i32* %7, align 4
  switch i32 %46, label %90 [
    i32 130, label %47
    i32 128, label %50
    i32 129, label %70
  ]

47:                                               ; preds = %42
  %48 = load i32, i32* %11, align 4
  %49 = lshr i32 %48, 23
  store i32 %49, i32* %11, align 4
  br label %90

50:                                               ; preds = %42
  %51 = load i32, i32* %11, align 4
  %52 = and i32 %51, 8388607
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %66

54:                                               ; preds = %50
  %55 = load i32, i32* %11, align 4
  %56 = lshr i32 %55, 23
  %57 = add i32 %56, 1
  store i32 %57, i32* %11, align 4
  %58 = load i32, i32* %11, align 4
  %59 = icmp eq i32 %58, 512
  br i1 %59, label %60, label %65

60:                                               ; preds = %54
  store i32 0, i32* %11, align 4
  %61 = load i8, i8* %10, align 1
  %62 = zext i8 %61 to i32
  %63 = add nsw i32 %62, 1
  %64 = trunc i32 %63 to i8
  store i8 %64, i8* %10, align 1
  br label %65

65:                                               ; preds = %60, %54
  br label %69

66:                                               ; preds = %50
  %67 = load i32, i32* %11, align 4
  %68 = lshr i32 %67, 23
  store i32 %68, i32* %11, align 4
  br label %69

69:                                               ; preds = %66, %65
  br label %90

70:                                               ; preds = %42
  %71 = load i32, i32* %11, align 4
  %72 = and i32 %71, 4194304
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %86

74:                                               ; preds = %70
  %75 = load i32, i32* %11, align 4
  %76 = lshr i32 %75, 23
  %77 = add i32 %76, 1
  store i32 %77, i32* %11, align 4
  %78 = load i32, i32* %11, align 4
  %79 = icmp eq i32 %78, 512
  br i1 %79, label %80, label %85

80:                                               ; preds = %74
  store i32 0, i32* %11, align 4
  %81 = load i8, i8* %10, align 1
  %82 = zext i8 %81 to i32
  %83 = add nsw i32 %82, 1
  %84 = trunc i32 %83 to i8
  store i8 %84, i8* %10, align 1
  br label %85

85:                                               ; preds = %80, %74
  br label %89

86:                                               ; preds = %70
  %87 = load i32, i32* %11, align 4
  %88 = lshr i32 %87, 23
  store i32 %88, i32* %11, align 4
  br label %89

89:                                               ; preds = %86, %85
  br label %90

90:                                               ; preds = %42, %89, %69, %47
  br label %99

91:                                               ; preds = %25
  %92 = load i32, i32* %7, align 4
  %93 = icmp eq i32 %92, 130
  br i1 %93, label %94, label %97

94:                                               ; preds = %91
  %95 = load i32, i32* @EINVAL, align 4
  %96 = sub i32 0, %95
  store i32 %96, i32* %5, align 4
  br label %153

97:                                               ; preds = %91
  store i8 0, i8* %10, align 1
  store i32 0, i32* %11, align 4
  br label %98

98:                                               ; preds = %97
  br label %99

99:                                               ; preds = %98, %90
  br label %100

100:                                              ; preds = %99, %24
  %101 = load i32, i32* @FS_DEBUG_QOS, align 4
  %102 = load i32, i32* %11, align 4
  %103 = load i8, i8* %10, align 1
  %104 = zext i8 %103 to i32
  %105 = call i32 (i32, i8*, i32, ...) @fs_dprintk(i32 %101, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 %102, i32 %104)
  %106 = load i8*, i8** %8, align 8
  %107 = icmp ne i8* %106, null
  br i1 %107, label %108, label %116

108:                                              ; preds = %100
  %109 = load i8, i8* %10, align 1
  %110 = zext i8 %109 to i32
  %111 = shl i32 %110, 9
  %112 = load i32, i32* %11, align 4
  %113 = or i32 %111, %112
  %114 = trunc i32 %113 to i8
  %115 = load i8*, i8** %8, align 8
  store i8 %114, i8* %115, align 1
  br label %116

116:                                              ; preds = %108, %100
  %117 = load i32*, i32** %9, align 8
  %118 = icmp ne i32* %117, null
  br i1 %118, label %119, label %152

119:                                              ; preds = %116
  %120 = load i8, i8* %10, align 1
  %121 = zext i8 %120 to i32
  %122 = icmp sge i32 %121, 9
  br i1 %122, label %123, label %133

123:                                              ; preds = %119
  %124 = load i8, i8* %10, align 1
  %125 = zext i8 %124 to i32
  %126 = shl i32 1, %125
  %127 = load i32, i32* %11, align 4
  %128 = load i8, i8* %10, align 1
  %129 = zext i8 %128 to i32
  %130 = sub nsw i32 %129, 9
  %131 = shl i32 %127, %130
  %132 = add i32 %126, %131
  br label %149

133:                                              ; preds = %119
  %134 = load i8, i8* %10, align 1
  %135 = zext i8 %134 to i32
  %136 = shl i32 1, %135
  %137 = load i32, i32* %11, align 4
  %138 = load i8, i8* %10, align 1
  %139 = zext i8 %138 to i32
  %140 = sub nsw i32 9, %139
  %141 = sub nsw i32 %140, 1
  %142 = shl i32 1, %141
  %143 = add i32 %137, %142
  %144 = load i8, i8* %10, align 1
  %145 = zext i8 %144 to i32
  %146 = sub nsw i32 9, %145
  %147 = lshr i32 %143, %146
  %148 = add i32 %136, %147
  br label %149

149:                                              ; preds = %133, %123
  %150 = phi i32 [ %132, %123 ], [ %148, %133 ]
  %151 = load i32*, i32** %9, align 8
  store i32 %150, i32* %151, align 4
  br label %152

152:                                              ; preds = %149, %116
  store i32 0, i32* %5, align 4
  br label %153

153:                                              ; preds = %152, %94, %20
  %154 = load i32, i32* %5, align 4
  ret i32 %154
}

declare dso_local i32 @fs_dprintk(i32, i8*, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
