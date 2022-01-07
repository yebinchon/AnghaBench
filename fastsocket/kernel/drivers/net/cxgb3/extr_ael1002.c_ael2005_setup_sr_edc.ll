; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/cxgb3/extr_ael1002.c_ael2005_setup_sr_edc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/cxgb3/extr_ael1002.c_ael2005_setup_sr_edc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.reg_val = type { i32, i32, i32, i32 }
%struct.cphy = type { i64, i32* }

@ael2005_setup_sr_edc.regs = internal constant [4 x %struct.reg_val] [%struct.reg_val { i32 128, i32 49155, i32 65535, i32 385 }, %struct.reg_val { i32 128, i32 49168, i32 65535, i32 17546 }, %struct.reg_val { i32 128, i32 49226, i32 65535, i32 20992 }, %struct.reg_val zeroinitializer], align 16
@edc_sr = common dso_local global i64 0, align 8
@EDC_OPT_AEL2005 = common dso_local global i32 0, align 4
@EDC_OPT_AEL2005_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cphy*)* @ael2005_setup_sr_edc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ael2005_setup_sr_edc(%struct.cphy* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.cphy*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.cphy* %0, %struct.cphy** %3, align 8
  %6 = load %struct.cphy*, %struct.cphy** %3, align 8
  %7 = call i32 @set_phy_regs(%struct.cphy* %6, %struct.reg_val* getelementptr inbounds ([4 x %struct.reg_val], [4 x %struct.reg_val]* @ael2005_setup_sr_edc.regs, i64 0, i64 0))
  store i32 %7, i32* %5, align 4
  %8 = load i32, i32* %5, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %1
  %11 = load i32, i32* %5, align 4
  store i32 %11, i32* %2, align 4
  br label %73

12:                                               ; preds = %1
  %13 = call i32 @msleep(i32 50)
  %14 = load %struct.cphy*, %struct.cphy** %3, align 8
  %15 = getelementptr inbounds %struct.cphy, %struct.cphy* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @edc_sr, align 8
  %18 = icmp ne i64 %16, %17
  br i1 %18, label %19, label %24

19:                                               ; preds = %12
  %20 = load %struct.cphy*, %struct.cphy** %3, align 8
  %21 = load i32, i32* @EDC_OPT_AEL2005, align 4
  %22 = load i32, i32* @EDC_OPT_AEL2005_SIZE, align 4
  %23 = call i32 @t3_get_edc_fw(%struct.cphy* %20, i32 %21, i32 %22)
  store i32 %23, i32* %5, align 4
  br label %24

24:                                               ; preds = %19, %12
  %25 = load i32, i32* %5, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %24
  %28 = load i32, i32* %5, align 4
  store i32 %28, i32* %2, align 4
  br label %73

29:                                               ; preds = %24
  store i32 0, i32* %4, align 4
  br label %30

30:                                               ; preds = %61, %29
  %31 = load i32, i32* %4, align 4
  %32 = sext i32 %31 to i64
  %33 = load i32, i32* @EDC_OPT_AEL2005_SIZE, align 4
  %34 = sext i32 %33 to i64
  %35 = udiv i64 %34, 4
  %36 = icmp ult i64 %32, %35
  br i1 %36, label %37, label %41

37:                                               ; preds = %30
  %38 = load i32, i32* %5, align 4
  %39 = icmp ne i32 %38, 0
  %40 = xor i1 %39, true
  br label %41

41:                                               ; preds = %37, %30
  %42 = phi i1 [ false, %30 ], [ %40, %37 ]
  br i1 %42, label %43, label %64

43:                                               ; preds = %41
  %44 = load %struct.cphy*, %struct.cphy** %3, align 8
  %45 = load %struct.cphy*, %struct.cphy** %3, align 8
  %46 = getelementptr inbounds %struct.cphy, %struct.cphy* %45, i32 0, i32 1
  %47 = load i32*, i32** %46, align 8
  %48 = load i32, i32* %4, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i32, i32* %47, i64 %49
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.cphy*, %struct.cphy** %3, align 8
  %53 = getelementptr inbounds %struct.cphy, %struct.cphy* %52, i32 0, i32 1
  %54 = load i32*, i32** %53, align 8
  %55 = load i32, i32* %4, align 4
  %56 = add nsw i32 %55, 1
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i32, i32* %54, i64 %57
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @t3_mdio_write(%struct.cphy* %44, i32 128, i32 %51, i32 %59)
  store i32 %60, i32* %5, align 4
  br label %61

61:                                               ; preds = %43
  %62 = load i32, i32* %4, align 4
  %63 = add nsw i32 %62, 2
  store i32 %63, i32* %4, align 4
  br label %30

64:                                               ; preds = %41
  %65 = load i32, i32* %5, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %71, label %67

67:                                               ; preds = %64
  %68 = load i64, i64* @edc_sr, align 8
  %69 = load %struct.cphy*, %struct.cphy** %3, align 8
  %70 = getelementptr inbounds %struct.cphy, %struct.cphy* %69, i32 0, i32 0
  store i64 %68, i64* %70, align 8
  br label %71

71:                                               ; preds = %67, %64
  %72 = load i32, i32* %5, align 4
  store i32 %72, i32* %2, align 4
  br label %73

73:                                               ; preds = %71, %27, %10
  %74 = load i32, i32* %2, align 4
  ret i32 %74
}

declare dso_local i32 @set_phy_regs(%struct.cphy*, %struct.reg_val*) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @t3_get_edc_fw(%struct.cphy*, i32, i32) #1

declare dso_local i32 @t3_mdio_write(%struct.cphy*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
