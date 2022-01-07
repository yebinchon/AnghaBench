; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/zd1211rw/extr_zd_rf_al7230b.c_zd1211_al7230b_init_hw.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/zd1211rw/extr_zd_rf_al7230b.c_zd1211_al7230b_init_hw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zd_ioreq16 = type { i32, i32 }
%struct.zd_rf = type { i32 }
%struct.zd_chip = type { i32 }

@zd1211_al7230b_init_hw.ioreqs_1 = internal constant [56 x %struct.zd_ioreq16] [%struct.zd_ioreq16 { i32 148, i32 87 }, %struct.zd_ioreq16 zeroinitializer, %struct.zd_ioreq16 { i32 152, i32 32 }, %struct.zd_ioreq16 { i32 150, i32 64 }, %struct.zd_ioreq16 { i32 149, i32 32 }, %struct.zd_ioreq16 { i32 144, i32 17 }, %struct.zd_ioreq16 { i32 143, i32 62 }, %struct.zd_ioreq16 { i32 142, i32 0 }, %struct.zd_ioreq16 { i32 137, i32 51 }, %struct.zd_ioreq16 { i32 174, i32 34 }, %struct.zd_ioreq16 { i32 173, i32 26 }, %struct.zd_ioreq16 { i32 172, i32 9 }, %struct.zd_ioreq16 { i32 171, i32 39 }, %struct.zd_ioreq16 { i32 170, i32 43 }, %struct.zd_ioreq16 { i32 169, i32 43 }, %struct.zd_ioreq16 { i32 162, i32 10 }, %struct.zd_ioreq16 { i32 159, i32 252 }, %struct.zd_ioreq16 { i32 178, i32 137 }, %struct.zd_ioreq16 { i32 151, i32 40 }, %struct.zd_ioreq16 { i32 144, i32 147 }, %struct.zd_ioreq16 { i32 141, i32 48 }, %struct.zd_ioreq16 { i32 140, i32 62 }, %struct.zd_ioreq16 { i32 138, i32 36 }, %struct.zd_ioreq16 { i32 137, i32 50 }, %struct.zd_ioreq16 { i32 136, i32 150 }, %struct.zd_ioreq16 { i32 135, i32 30 }, %struct.zd_ioreq16 { i32 134, i32 88 }, %struct.zd_ioreq16 { i32 133, i32 48 }, %struct.zd_ioreq16 { i32 132, i32 48 }, %struct.zd_ioreq16 { i32 131, i32 10 }, %struct.zd_ioreq16 { i32 130, i32 4 }, %struct.zd_ioreq16 { i32 129, i32 10 }, %struct.zd_ioreq16 { i32 128, i32 40 }, %struct.zd_ioreq16 { i32 177, i32 2 }, %struct.zd_ioreq16 { i32 176, i32 19 }, %struct.zd_ioreq16 { i32 175, i32 39 }, %struct.zd_ioreq16 { i32 174, i32 34 }, %struct.zd_ioreq16 { i32 173, i32 63 }, %struct.zd_ioreq16 { i32 172, i32 9 }, %struct.zd_ioreq16 { i32 171, i32 31 }, %struct.zd_ioreq16 { i32 170, i32 31 }, %struct.zd_ioreq16 { i32 169, i32 31 }, %struct.zd_ioreq16 { i32 168, i32 39 }, %struct.zd_ioreq16 { i32 167, i32 39 }, %struct.zd_ioreq16 { i32 166, i32 36 }, %struct.zd_ioreq16 { i32 165, i32 63 }, %struct.zd_ioreq16 { i32 164, i32 250 }, %struct.zd_ioreq16 { i32 163, i32 252 }, %struct.zd_ioreq16 { i32 162, i32 16 }, %struct.zd_ioreq16 { i32 161, i32 79 }, %struct.zd_ioreq16 { i32 160, i32 119 }, %struct.zd_ioreq16 { i32 154, i32 136 }, %struct.zd_ioreq16 { i32 153, i32 168 }, %struct.zd_ioreq16 { i32 146, i32 52 }, %struct.zd_ioreq16 { i32 145, i32 52 }, %struct.zd_ioreq16 { i32 147, i32 47 }], align 16
@zd1211_al7230b_init_hw.ioreqs_2 = internal constant [6 x %struct.zd_ioreq16] [%struct.zd_ioreq16 { i32 147, i32 63 }, %struct.zd_ioreq16 { i32 158, i32 20 }, %struct.zd_ioreq16 { i32 157, i32 18 }, %struct.zd_ioreq16 { i32 156, i32 16 }, %struct.zd_ioreq16 { i32 139, i32 56 }, %struct.zd_ioreq16 { i32 155, i32 223 }], align 16
@chan_rv = common dso_local global %struct.zd_ioreq16** null, align 8
@std_rv = common dso_local global %struct.zd_ioreq16* null, align 8
@rv_init1 = common dso_local global %struct.zd_ioreq16* null, align 8
@rv_init2 = common dso_local global %struct.zd_ioreq16* null, align 8
@ZD_CR203 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.zd_rf*)* @zd1211_al7230b_init_hw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zd1211_al7230b_init_hw(%struct.zd_rf* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.zd_rf*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.zd_chip*, align 8
  store %struct.zd_rf* %0, %struct.zd_rf** %3, align 8
  %6 = load %struct.zd_rf*, %struct.zd_rf** %3, align 8
  %7 = call %struct.zd_chip* @zd_rf_to_chip(%struct.zd_rf* %6)
  store %struct.zd_chip* %7, %struct.zd_chip** %5, align 8
  %8 = load %struct.zd_chip*, %struct.zd_chip** %5, align 8
  %9 = call i32 @ARRAY_SIZE(%struct.zd_ioreq16* getelementptr inbounds ([56 x %struct.zd_ioreq16], [56 x %struct.zd_ioreq16]* @zd1211_al7230b_init_hw.ioreqs_1, i64 0, i64 0))
  %10 = call i32 @zd_iowrite16a_locked(%struct.zd_chip* %8, %struct.zd_ioreq16* getelementptr inbounds ([56 x %struct.zd_ioreq16], [56 x %struct.zd_ioreq16]* @zd1211_al7230b_init_hw.ioreqs_1, i64 0, i64 0), i32 %9)
  store i32 %10, i32* %4, align 4
  %11 = load i32, i32* %4, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %1
  %14 = load i32, i32* %4, align 4
  store i32 %14, i32* %2, align 4
  br label %83

15:                                               ; preds = %1
  %16 = load %struct.zd_chip*, %struct.zd_chip** %5, align 8
  %17 = load %struct.zd_ioreq16**, %struct.zd_ioreq16*** @chan_rv, align 8
  %18 = getelementptr inbounds %struct.zd_ioreq16*, %struct.zd_ioreq16** %17, i64 0
  %19 = load %struct.zd_ioreq16*, %struct.zd_ioreq16** %18, align 8
  %20 = load %struct.zd_ioreq16**, %struct.zd_ioreq16*** @chan_rv, align 8
  %21 = getelementptr inbounds %struct.zd_ioreq16*, %struct.zd_ioreq16** %20, i64 0
  %22 = load %struct.zd_ioreq16*, %struct.zd_ioreq16** %21, align 8
  %23 = call i32 @ARRAY_SIZE(%struct.zd_ioreq16* %22)
  %24 = call i32 @zd_rfwritev_cr_locked(%struct.zd_chip* %16, %struct.zd_ioreq16* %19, i32 %23)
  store i32 %24, i32* %4, align 4
  %25 = load i32, i32* %4, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %15
  %28 = load i32, i32* %4, align 4
  store i32 %28, i32* %2, align 4
  br label %83

29:                                               ; preds = %15
  %30 = load %struct.zd_chip*, %struct.zd_chip** %5, align 8
  %31 = load %struct.zd_ioreq16*, %struct.zd_ioreq16** @std_rv, align 8
  %32 = load %struct.zd_ioreq16*, %struct.zd_ioreq16** @std_rv, align 8
  %33 = call i32 @ARRAY_SIZE(%struct.zd_ioreq16* %32)
  %34 = call i32 @zd_rfwritev_cr_locked(%struct.zd_chip* %30, %struct.zd_ioreq16* %31, i32 %33)
  store i32 %34, i32* %4, align 4
  %35 = load i32, i32* %4, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %29
  %38 = load i32, i32* %4, align 4
  store i32 %38, i32* %2, align 4
  br label %83

39:                                               ; preds = %29
  %40 = load %struct.zd_chip*, %struct.zd_chip** %5, align 8
  %41 = load %struct.zd_ioreq16*, %struct.zd_ioreq16** @rv_init1, align 8
  %42 = load %struct.zd_ioreq16*, %struct.zd_ioreq16** @rv_init1, align 8
  %43 = call i32 @ARRAY_SIZE(%struct.zd_ioreq16* %42)
  %44 = call i32 @zd_rfwritev_cr_locked(%struct.zd_chip* %40, %struct.zd_ioreq16* %41, i32 %43)
  store i32 %44, i32* %4, align 4
  %45 = load i32, i32* %4, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %39
  %48 = load i32, i32* %4, align 4
  store i32 %48, i32* %2, align 4
  br label %83

49:                                               ; preds = %39
  %50 = load %struct.zd_chip*, %struct.zd_chip** %5, align 8
  %51 = call i32 @ARRAY_SIZE(%struct.zd_ioreq16* getelementptr inbounds ([6 x %struct.zd_ioreq16], [6 x %struct.zd_ioreq16]* @zd1211_al7230b_init_hw.ioreqs_2, i64 0, i64 0))
  %52 = call i32 @zd_iowrite16a_locked(%struct.zd_chip* %50, %struct.zd_ioreq16* getelementptr inbounds ([6 x %struct.zd_ioreq16], [6 x %struct.zd_ioreq16]* @zd1211_al7230b_init_hw.ioreqs_2, i64 0, i64 0), i32 %51)
  store i32 %52, i32* %4, align 4
  %53 = load i32, i32* %4, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %49
  %56 = load i32, i32* %4, align 4
  store i32 %56, i32* %2, align 4
  br label %83

57:                                               ; preds = %49
  %58 = load %struct.zd_chip*, %struct.zd_chip** %5, align 8
  %59 = load %struct.zd_ioreq16*, %struct.zd_ioreq16** @rv_init2, align 8
  %60 = load %struct.zd_ioreq16*, %struct.zd_ioreq16** @rv_init2, align 8
  %61 = call i32 @ARRAY_SIZE(%struct.zd_ioreq16* %60)
  %62 = call i32 @zd_rfwritev_cr_locked(%struct.zd_chip* %58, %struct.zd_ioreq16* %59, i32 %61)
  store i32 %62, i32* %4, align 4
  %63 = load i32, i32* %4, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %67

65:                                               ; preds = %57
  %66 = load i32, i32* %4, align 4
  store i32 %66, i32* %2, align 4
  br label %83

67:                                               ; preds = %57
  %68 = load %struct.zd_chip*, %struct.zd_chip** %5, align 8
  %69 = load i32, i32* @ZD_CR203, align 4
  %70 = call i32 @zd_iowrite16_locked(%struct.zd_chip* %68, i32 6, i32 %69)
  store i32 %70, i32* %4, align 4
  %71 = load i32, i32* %4, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %75

73:                                               ; preds = %67
  %74 = load i32, i32* %4, align 4
  store i32 %74, i32* %2, align 4
  br label %83

75:                                               ; preds = %67
  %76 = load %struct.zd_chip*, %struct.zd_chip** %5, align 8
  %77 = call i32 @zd_iowrite16_locked(%struct.zd_chip* %76, i32 128, i32 148)
  store i32 %77, i32* %4, align 4
  %78 = load i32, i32* %4, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %82

80:                                               ; preds = %75
  %81 = load i32, i32* %4, align 4
  store i32 %81, i32* %2, align 4
  br label %83

82:                                               ; preds = %75
  store i32 0, i32* %2, align 4
  br label %83

83:                                               ; preds = %82, %80, %73, %65, %55, %47, %37, %27, %13
  %84 = load i32, i32* %2, align 4
  ret i32 %84
}

declare dso_local %struct.zd_chip* @zd_rf_to_chip(%struct.zd_rf*) #1

declare dso_local i32 @zd_iowrite16a_locked(%struct.zd_chip*, %struct.zd_ioreq16*, i32) #1

declare dso_local i32 @ARRAY_SIZE(%struct.zd_ioreq16*) #1

declare dso_local i32 @zd_rfwritev_cr_locked(%struct.zd_chip*, %struct.zd_ioreq16*, i32) #1

declare dso_local i32 @zd_iowrite16_locked(%struct.zd_chip*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
