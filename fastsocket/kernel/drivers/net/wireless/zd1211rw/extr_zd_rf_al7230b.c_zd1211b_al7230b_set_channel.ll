; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/zd1211rw/extr_zd_rf_al7230b.c_zd1211b_al7230b_set_channel.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/zd1211rw/extr_zd_rf_al7230b.c_zd1211b_al7230b_set_channel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zd_rf = type { i32 }
%struct.zd_chip = type { i32 }

@chan_rv = common dso_local global i32** null, align 8
@ZD_CR240 = common dso_local global i32 0, align 4
@ZD_CR9 = common dso_local global i32 0, align 4
@ZD_CR251 = common dso_local global i32 0, align 4
@std_rv = common dso_local global i32* null, align 8
@ioreqs_sw = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.zd_rf*, i32)* @zd1211b_al7230b_set_channel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zd1211b_al7230b_set_channel(%struct.zd_rf* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.zd_rf*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca %struct.zd_chip*, align 8
  store %struct.zd_rf* %0, %struct.zd_rf** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load i32**, i32*** @chan_rv, align 8
  %10 = load i32, i32* %5, align 4
  %11 = sub nsw i32 %10, 1
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds i32*, i32** %9, i64 %12
  %14 = load i32*, i32** %13, align 8
  store i32* %14, i32** %7, align 8
  %15 = load %struct.zd_rf*, %struct.zd_rf** %4, align 8
  %16 = call %struct.zd_chip* @zd_rf_to_chip(%struct.zd_rf* %15)
  store %struct.zd_chip* %16, %struct.zd_chip** %8, align 8
  %17 = load %struct.zd_chip*, %struct.zd_chip** %8, align 8
  %18 = load i32, i32* @ZD_CR240, align 4
  %19 = call i32 @zd_iowrite16_locked(%struct.zd_chip* %17, i32 87, i32 %18)
  store i32 %19, i32* %6, align 4
  %20 = load i32, i32* %6, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %2
  %23 = load i32, i32* %6, align 4
  store i32 %23, i32* %3, align 4
  br label %100

24:                                               ; preds = %2
  %25 = load %struct.zd_chip*, %struct.zd_chip** %8, align 8
  %26 = load i32, i32* @ZD_CR9, align 4
  %27 = call i32 @zd_iowrite16_locked(%struct.zd_chip* %25, i32 228, i32 %26)
  store i32 %27, i32* %6, align 4
  %28 = load i32, i32* %6, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %24
  %31 = load i32, i32* %6, align 4
  store i32 %31, i32* %3, align 4
  br label %100

32:                                               ; preds = %24
  %33 = load %struct.zd_chip*, %struct.zd_chip** %8, align 8
  %34 = load i32, i32* @ZD_CR251, align 4
  %35 = call i32 @zd_iowrite16_locked(%struct.zd_chip* %33, i32 47, i32 %34)
  store i32 %35, i32* %6, align 4
  %36 = load i32, i32* %6, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %32
  %39 = load i32, i32* %6, align 4
  store i32 %39, i32* %3, align 4
  br label %100

40:                                               ; preds = %32
  %41 = load %struct.zd_chip*, %struct.zd_chip** %8, align 8
  %42 = load i32*, i32** @std_rv, align 8
  %43 = load i32*, i32** @std_rv, align 8
  %44 = call i32 @ARRAY_SIZE(i32* %43)
  %45 = call i32 @zd_rfwritev_cr_locked(%struct.zd_chip* %41, i32* %42, i32 %44)
  store i32 %45, i32* %6, align 4
  %46 = load i32, i32* %6, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %40
  %49 = load i32, i32* %6, align 4
  store i32 %49, i32* %3, align 4
  br label %100

50:                                               ; preds = %40
  %51 = load %struct.zd_chip*, %struct.zd_chip** %8, align 8
  %52 = call i32 @zd_rfwrite_cr_locked(%struct.zd_chip* %51, i32 3969024)
  store i32 %52, i32* %6, align 4
  %53 = load i32, i32* %6, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %50
  %56 = load i32, i32* %6, align 4
  store i32 %56, i32* %3, align 4
  br label %100

57:                                               ; preds = %50
  %58 = load %struct.zd_chip*, %struct.zd_chip** %8, align 8
  %59 = call i32 @zd_rfwrite_cr_locked(%struct.zd_chip* %58, i32 15818072)
  store i32 %59, i32* %6, align 4
  %60 = load i32, i32* %6, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %64

62:                                               ; preds = %57
  %63 = load i32, i32* %6, align 4
  store i32 %63, i32* %3, align 4
  br label %100

64:                                               ; preds = %57
  %65 = load %struct.zd_chip*, %struct.zd_chip** %8, align 8
  %66 = load i32*, i32** @ioreqs_sw, align 8
  %67 = load i32*, i32** @ioreqs_sw, align 8
  %68 = call i32 @ARRAY_SIZE(i32* %67)
  %69 = call i32 @zd_iowrite16a_locked(%struct.zd_chip* %65, i32* %66, i32 %68)
  store i32 %69, i32* %6, align 4
  %70 = load i32, i32* %6, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %74

72:                                               ; preds = %64
  %73 = load i32, i32* %6, align 4
  store i32 %73, i32* %3, align 4
  br label %100

74:                                               ; preds = %64
  %75 = load %struct.zd_chip*, %struct.zd_chip** %8, align 8
  %76 = load i32*, i32** %7, align 8
  %77 = call i32 @zd_rfwritev_cr_locked(%struct.zd_chip* %75, i32* %76, i32 2)
  store i32 %77, i32* %6, align 4
  %78 = load i32, i32* %6, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %82

80:                                               ; preds = %74
  %81 = load i32, i32* %6, align 4
  store i32 %81, i32* %3, align 4
  br label %100

82:                                               ; preds = %74
  %83 = load %struct.zd_chip*, %struct.zd_chip** %8, align 8
  %84 = call i32 @zd_rfwrite_cr_locked(%struct.zd_chip* %83, i32 3969024)
  store i32 %84, i32* %6, align 4
  %85 = load i32, i32* %6, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %89

87:                                               ; preds = %82
  %88 = load i32, i32* %6, align 4
  store i32 %88, i32* %3, align 4
  br label %100

89:                                               ; preds = %82
  %90 = load %struct.zd_chip*, %struct.zd_chip** %8, align 8
  %91 = load i32, i32* @ZD_CR251, align 4
  %92 = call i32 @zd_iowrite16_locked(%struct.zd_chip* %90, i32 127, i32 %91)
  store i32 %92, i32* %6, align 4
  %93 = load i32, i32* %6, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %97

95:                                               ; preds = %89
  %96 = load i32, i32* %6, align 4
  store i32 %96, i32* %3, align 4
  br label %100

97:                                               ; preds = %89
  %98 = load %struct.zd_chip*, %struct.zd_chip** %8, align 8
  %99 = call i32 @zd1211b_al7230b_finalize(%struct.zd_chip* %98)
  store i32 %99, i32* %3, align 4
  br label %100

100:                                              ; preds = %97, %95, %87, %80, %72, %62, %55, %48, %38, %30, %22
  %101 = load i32, i32* %3, align 4
  ret i32 %101
}

declare dso_local %struct.zd_chip* @zd_rf_to_chip(%struct.zd_rf*) #1

declare dso_local i32 @zd_iowrite16_locked(%struct.zd_chip*, i32, i32) #1

declare dso_local i32 @zd_rfwritev_cr_locked(%struct.zd_chip*, i32*, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @zd_rfwrite_cr_locked(%struct.zd_chip*, i32) #1

declare dso_local i32 @zd_iowrite16a_locked(%struct.zd_chip*, i32*, i32) #1

declare dso_local i32 @zd1211b_al7230b_finalize(%struct.zd_chip*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
