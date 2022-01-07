; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_tg3.c_tg3_phy_write_and_check_testpat.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_tg3.c_tg3_phy_write_and_check_testpat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tg3 = type { i32 }

@tg3_phy_write_and_check_testpat.test_pat = internal constant [4 x [6 x i32]] [[6 x i32] [i32 21845, i32 5, i32 10922, i32 10, i32 13398, i32 3], [6 x i32] [i32 10922, i32 10, i32 13107, i32 3, i32 30874, i32 5], [6 x i32] [i32 23130, i32 5, i32 10858, i32 10, i32 7117, i32 3], [6 x i32] [i32 10842, i32 10, i32 13251, i32 3, i32 12017, i32 5]], align 16
@MII_TG3_DSP_ADDRESS = common dso_local global i32 0, align 4
@MII_TG3_DSP_CONTROL = common dso_local global i32 0, align 4
@MII_TG3_DSP_RW_PORT = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tg3*, i32*)* @tg3_phy_write_and_check_testpat to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tg3_phy_write_and_check_testpat(%struct.tg3* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.tg3*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.tg3* %0, %struct.tg3** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 0, i32* %6, align 4
  br label %10

10:                                               ; preds = %143, %2
  %11 = load i32, i32* %6, align 4
  %12 = icmp slt i32 %11, 4
  br i1 %12, label %13, label %146

13:                                               ; preds = %10
  %14 = load %struct.tg3*, %struct.tg3** %4, align 8
  %15 = load i32, i32* @MII_TG3_DSP_ADDRESS, align 4
  %16 = load i32, i32* %6, align 4
  %17 = mul nsw i32 %16, 8192
  %18 = or i32 %17, 512
  %19 = call i32 @tg3_writephy(%struct.tg3* %14, i32 %15, i32 %18)
  %20 = load %struct.tg3*, %struct.tg3** %4, align 8
  %21 = load i32, i32* @MII_TG3_DSP_CONTROL, align 4
  %22 = call i32 @tg3_writephy(%struct.tg3* %20, i32 %21, i32 2)
  store i32 0, i32* %7, align 4
  br label %23

23:                                               ; preds = %37, %13
  %24 = load i32, i32* %7, align 4
  %25 = icmp slt i32 %24, 6
  br i1 %25, label %26, label %40

26:                                               ; preds = %23
  %27 = load %struct.tg3*, %struct.tg3** %4, align 8
  %28 = load i32, i32* @MII_TG3_DSP_RW_PORT, align 4
  %29 = load i32, i32* %6, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds [4 x [6 x i32]], [4 x [6 x i32]]* @tg3_phy_write_and_check_testpat.test_pat, i64 0, i64 %30
  %32 = load i32, i32* %7, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds [6 x i32], [6 x i32]* %31, i64 0, i64 %33
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @tg3_writephy(%struct.tg3* %27, i32 %28, i32 %35)
  br label %37

37:                                               ; preds = %26
  %38 = load i32, i32* %7, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %7, align 4
  br label %23

40:                                               ; preds = %23
  %41 = load %struct.tg3*, %struct.tg3** %4, align 8
  %42 = load i32, i32* @MII_TG3_DSP_CONTROL, align 4
  %43 = call i32 @tg3_writephy(%struct.tg3* %41, i32 %42, i32 514)
  %44 = load %struct.tg3*, %struct.tg3** %4, align 8
  %45 = call i64 @tg3_wait_macro_done(%struct.tg3* %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %51

47:                                               ; preds = %40
  %48 = load i32*, i32** %5, align 8
  store i32 1, i32* %48, align 4
  %49 = load i32, i32* @EBUSY, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %3, align 4
  br label %147

51:                                               ; preds = %40
  %52 = load %struct.tg3*, %struct.tg3** %4, align 8
  %53 = load i32, i32* @MII_TG3_DSP_ADDRESS, align 4
  %54 = load i32, i32* %6, align 4
  %55 = mul nsw i32 %54, 8192
  %56 = or i32 %55, 512
  %57 = call i32 @tg3_writephy(%struct.tg3* %52, i32 %53, i32 %56)
  %58 = load %struct.tg3*, %struct.tg3** %4, align 8
  %59 = load i32, i32* @MII_TG3_DSP_CONTROL, align 4
  %60 = call i32 @tg3_writephy(%struct.tg3* %58, i32 %59, i32 130)
  %61 = load %struct.tg3*, %struct.tg3** %4, align 8
  %62 = call i64 @tg3_wait_macro_done(%struct.tg3* %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %68

64:                                               ; preds = %51
  %65 = load i32*, i32** %5, align 8
  store i32 1, i32* %65, align 4
  %66 = load i32, i32* @EBUSY, align 4
  %67 = sub nsw i32 0, %66
  store i32 %67, i32* %3, align 4
  br label %147

68:                                               ; preds = %51
  %69 = load %struct.tg3*, %struct.tg3** %4, align 8
  %70 = load i32, i32* @MII_TG3_DSP_CONTROL, align 4
  %71 = call i32 @tg3_writephy(%struct.tg3* %69, i32 %70, i32 2050)
  %72 = load %struct.tg3*, %struct.tg3** %4, align 8
  %73 = call i64 @tg3_wait_macro_done(%struct.tg3* %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %79

75:                                               ; preds = %68
  %76 = load i32*, i32** %5, align 8
  store i32 1, i32* %76, align 4
  %77 = load i32, i32* @EBUSY, align 4
  %78 = sub nsw i32 0, %77
  store i32 %78, i32* %3, align 4
  br label %147

79:                                               ; preds = %68
  store i32 0, i32* %7, align 4
  br label %80

80:                                               ; preds = %139, %79
  %81 = load i32, i32* %7, align 4
  %82 = icmp slt i32 %81, 6
  br i1 %82, label %83, label %142

83:                                               ; preds = %80
  %84 = load %struct.tg3*, %struct.tg3** %4, align 8
  %85 = load i32, i32* @MII_TG3_DSP_RW_PORT, align 4
  %86 = call i64 @tg3_readphy(%struct.tg3* %84, i32 %85, i32* %8)
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %97, label %88

88:                                               ; preds = %83
  %89 = load %struct.tg3*, %struct.tg3** %4, align 8
  %90 = load i32, i32* @MII_TG3_DSP_RW_PORT, align 4
  %91 = call i64 @tg3_readphy(%struct.tg3* %89, i32 %90, i32* %9)
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %97, label %93

93:                                               ; preds = %88
  %94 = load %struct.tg3*, %struct.tg3** %4, align 8
  %95 = call i64 @tg3_wait_macro_done(%struct.tg3* %94)
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %101

97:                                               ; preds = %93, %88, %83
  %98 = load i32*, i32** %5, align 8
  store i32 1, i32* %98, align 4
  %99 = load i32, i32* @EBUSY, align 4
  %100 = sub nsw i32 0, %99
  store i32 %100, i32* %3, align 4
  br label %147

101:                                              ; preds = %93
  %102 = load i32, i32* %8, align 4
  %103 = and i32 %102, 32767
  store i32 %103, i32* %8, align 4
  %104 = load i32, i32* %9, align 4
  %105 = and i32 %104, 15
  store i32 %105, i32* %9, align 4
  %106 = load i32, i32* %8, align 4
  %107 = load i32, i32* %6, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds [4 x [6 x i32]], [4 x [6 x i32]]* @tg3_phy_write_and_check_testpat.test_pat, i64 0, i64 %108
  %110 = load i32, i32* %7, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds [6 x i32], [6 x i32]* %109, i64 0, i64 %111
  %113 = load i32, i32* %112, align 4
  %114 = icmp ne i32 %106, %113
  br i1 %114, label %126, label %115

115:                                              ; preds = %101
  %116 = load i32, i32* %9, align 4
  %117 = load i32, i32* %6, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds [4 x [6 x i32]], [4 x [6 x i32]]* @tg3_phy_write_and_check_testpat.test_pat, i64 0, i64 %118
  %120 = load i32, i32* %7, align 4
  %121 = add nsw i32 %120, 1
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds [6 x i32], [6 x i32]* %119, i64 0, i64 %122
  %124 = load i32, i32* %123, align 4
  %125 = icmp ne i32 %116, %124
  br i1 %125, label %126, label %138

126:                                              ; preds = %115, %101
  %127 = load %struct.tg3*, %struct.tg3** %4, align 8
  %128 = load i32, i32* @MII_TG3_DSP_ADDRESS, align 4
  %129 = call i32 @tg3_writephy(%struct.tg3* %127, i32 %128, i32 11)
  %130 = load %struct.tg3*, %struct.tg3** %4, align 8
  %131 = load i32, i32* @MII_TG3_DSP_RW_PORT, align 4
  %132 = call i32 @tg3_writephy(%struct.tg3* %130, i32 %131, i32 16385)
  %133 = load %struct.tg3*, %struct.tg3** %4, align 8
  %134 = load i32, i32* @MII_TG3_DSP_RW_PORT, align 4
  %135 = call i32 @tg3_writephy(%struct.tg3* %133, i32 %134, i32 16389)
  %136 = load i32, i32* @EBUSY, align 4
  %137 = sub nsw i32 0, %136
  store i32 %137, i32* %3, align 4
  br label %147

138:                                              ; preds = %115
  br label %139

139:                                              ; preds = %138
  %140 = load i32, i32* %7, align 4
  %141 = add nsw i32 %140, 2
  store i32 %141, i32* %7, align 4
  br label %80

142:                                              ; preds = %80
  br label %143

143:                                              ; preds = %142
  %144 = load i32, i32* %6, align 4
  %145 = add nsw i32 %144, 1
  store i32 %145, i32* %6, align 4
  br label %10

146:                                              ; preds = %10
  store i32 0, i32* %3, align 4
  br label %147

147:                                              ; preds = %146, %126, %97, %75, %64, %47
  %148 = load i32, i32* %3, align 4
  ret i32 %148
}

declare dso_local i32 @tg3_writephy(%struct.tg3*, i32, i32) #1

declare dso_local i64 @tg3_wait_macro_done(%struct.tg3*) #1

declare dso_local i64 @tg3_readphy(%struct.tg3*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
