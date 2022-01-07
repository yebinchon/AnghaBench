; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/irda/extr_via-ircc.h_Rd_Indx.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/irda/extr_via-ircc.h_Rd_Indx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@Rd_Valid = common dso_local global i32 0, align 4
@RxBit = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32)* @Rd_Indx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @Rd_Indx(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %11 = load i32, i32* %5, align 4
  %12 = load i32, i32* %6, align 4
  %13 = shl i32 %12, 1
  %14 = or i32 %11, %13
  store i32 %14, i32* %8, align 4
  %15 = load i32, i32* %4, align 4
  %16 = call i32 @ClkTx(i32 %15, i32 0, i32 0)
  %17 = call i32 @Tdelay(i32 2)
  %18 = load i32, i32* %4, align 4
  %19 = call i32 @ActClk(i32 %18, i32 1)
  %20 = call i32 @udelay(i32 1)
  %21 = load i32, i32* %4, align 4
  %22 = load i32, i32* %8, align 4
  %23 = call i32 @Wr_Byte(i32 %21, i32 %22)
  %24 = call i32 @Sdelay(i32 1)
  %25 = load i32, i32* %4, align 4
  %26 = call i32 @ClkTx(i32 %25, i32 0, i32 0)
  %27 = call i32 @Tdelay(i32 2)
  store i32 0, i32* %10, align 4
  br label %28

28:                                               ; preds = %49, %3
  %29 = load i32, i32* %10, align 4
  %30 = icmp slt i32 %29, 10
  br i1 %30, label %31, label %52

31:                                               ; preds = %28
  %32 = load i32, i32* %4, align 4
  %33 = call i32 @ActClk(i32 %32, i32 1)
  %34 = call i32 @Tdelay(i32 1)
  %35 = load i32, i32* %4, align 4
  %36 = call i32 @ActClk(i32 %35, i32 0)
  %37 = call i32 @Tdelay(i32 1)
  %38 = load i32, i32* %4, align 4
  %39 = call i32 @ClkTx(i32 %38, i32 0, i32 1)
  %40 = call i32 @Tdelay(i32 1)
  %41 = load i32, i32* %4, align 4
  %42 = call i32 @ReadReg(i32 %41, i32 52)
  store i32 %42, i32* %8, align 4
  %43 = load i32, i32* %8, align 4
  %44 = load i32, i32* @Rd_Valid, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %48, label %47

47:                                               ; preds = %31
  br label %52

48:                                               ; preds = %31
  br label %49

49:                                               ; preds = %48
  %50 = load i32, i32* %10, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %10, align 4
  br label %28

52:                                               ; preds = %47, %28
  %53 = load i32, i32* %8, align 4
  %54 = load i32, i32* @Rd_Valid, align 4
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %90, label %57

57:                                               ; preds = %52
  store i32 0, i32* %10, align 4
  br label %58

58:                                               ; preds = %86, %57
  %59 = load i32, i32* %10, align 4
  %60 = icmp slt i32 %59, 8
  br i1 %60, label %61, label %89

61:                                               ; preds = %58
  %62 = load i32, i32* %4, align 4
  %63 = call i32 @ActClk(i32 %62, i32 1)
  %64 = call i32 @Tdelay(i32 1)
  %65 = load i32, i32* %4, align 4
  %66 = call i32 @ActClk(i32 %65, i32 0)
  %67 = load i32, i32* %4, align 4
  %68 = call i32 @ReadReg(i32 %67, i32 52)
  store i32 %68, i32* %8, align 4
  %69 = load i32, i32* %10, align 4
  %70 = shl i32 1, %69
  store i32 %70, i32* %9, align 4
  %71 = load i32, i32* %8, align 4
  %72 = load i32, i32* @RxBit, align 4
  %73 = and i32 %71, %72
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %79

75:                                               ; preds = %61
  %76 = load i32, i32* %9, align 4
  %77 = load i32, i32* %7, align 4
  %78 = or i32 %77, %76
  store i32 %78, i32* %7, align 4
  br label %84

79:                                               ; preds = %61
  %80 = load i32, i32* %9, align 4
  %81 = xor i32 %80, -1
  %82 = load i32, i32* %7, align 4
  %83 = and i32 %82, %81
  store i32 %83, i32* %7, align 4
  br label %84

84:                                               ; preds = %79, %75
  %85 = call i32 @Tdelay(i32 2)
  br label %86

86:                                               ; preds = %84
  %87 = load i32, i32* %10, align 4
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %10, align 4
  br label %58

89:                                               ; preds = %58
  br label %107

90:                                               ; preds = %52
  store i32 0, i32* %10, align 4
  br label %91

91:                                               ; preds = %101, %90
  %92 = load i32, i32* %10, align 4
  %93 = icmp slt i32 %92, 2
  br i1 %93, label %94, label %104

94:                                               ; preds = %91
  %95 = load i32, i32* %4, align 4
  %96 = call i32 @ActClk(i32 %95, i32 1)
  %97 = call i32 @Tdelay(i32 1)
  %98 = load i32, i32* %4, align 4
  %99 = call i32 @ActClk(i32 %98, i32 0)
  %100 = call i32 @Tdelay(i32 2)
  br label %101

101:                                              ; preds = %94
  %102 = load i32, i32* %10, align 4
  %103 = add nsw i32 %102, 1
  store i32 %103, i32* %10, align 4
  br label %91

104:                                              ; preds = %91
  %105 = load i32, i32* %4, align 4
  %106 = call i32 @ReadReg(i32 %105, i32 52)
  store i32 %106, i32* %8, align 4
  br label %107

107:                                              ; preds = %104, %89
  store i32 0, i32* %10, align 4
  br label %108

108:                                              ; preds = %118, %107
  %109 = load i32, i32* %10, align 4
  %110 = icmp slt i32 %109, 1
  br i1 %110, label %111, label %121

111:                                              ; preds = %108
  %112 = load i32, i32* %4, align 4
  %113 = call i32 @ActClk(i32 %112, i32 1)
  %114 = call i32 @Tdelay(i32 1)
  %115 = load i32, i32* %4, align 4
  %116 = call i32 @ActClk(i32 %115, i32 0)
  %117 = call i32 @Tdelay(i32 2)
  br label %118

118:                                              ; preds = %111
  %119 = load i32, i32* %10, align 4
  %120 = add nsw i32 %119, 1
  store i32 %120, i32* %10, align 4
  br label %108

121:                                              ; preds = %108
  %122 = load i32, i32* %4, align 4
  %123 = call i32 @ClkTx(i32 %122, i32 0, i32 0)
  %124 = call i32 @Tdelay(i32 1)
  store i32 0, i32* %10, align 4
  br label %125

125:                                              ; preds = %135, %121
  %126 = load i32, i32* %10, align 4
  %127 = icmp slt i32 %126, 3
  br i1 %127, label %128, label %138

128:                                              ; preds = %125
  %129 = load i32, i32* %4, align 4
  %130 = call i32 @ActClk(i32 %129, i32 1)
  %131 = call i32 @Tdelay(i32 1)
  %132 = load i32, i32* %4, align 4
  %133 = call i32 @ActClk(i32 %132, i32 0)
  %134 = call i32 @Tdelay(i32 2)
  br label %135

135:                                              ; preds = %128
  %136 = load i32, i32* %10, align 4
  %137 = add nsw i32 %136, 1
  store i32 %137, i32* %10, align 4
  br label %125

138:                                              ; preds = %125
  %139 = load i32, i32* %7, align 4
  ret i32 %139
}

declare dso_local i32 @ClkTx(i32, i32, i32) #1

declare dso_local i32 @Tdelay(i32) #1

declare dso_local i32 @ActClk(i32, i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @Wr_Byte(i32, i32) #1

declare dso_local i32 @Sdelay(i32) #1

declare dso_local i32 @ReadReg(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
