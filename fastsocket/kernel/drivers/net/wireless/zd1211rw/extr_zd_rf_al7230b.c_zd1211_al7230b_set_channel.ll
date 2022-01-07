; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/zd1211rw/extr_zd_rf_al7230b.c_zd1211_al7230b_set_channel.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/zd1211rw/extr_zd_rf_al7230b.c_zd1211_al7230b_set_channel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zd_ioreq16 = type { i32, i32 }
%struct.zd_rf = type { i32 }
%struct.zd_chip = type { i32 }

@chan_rv = common dso_local global %struct.zd_ioreq16** null, align 8
@zd1211_al7230b_set_channel.ioreqs = internal constant [3 x %struct.zd_ioreq16] [%struct.zd_ioreq16 { i32 128, i32 63 }, %struct.zd_ioreq16 { i32 130, i32 6 }, %struct.zd_ioreq16 { i32 129, i32 8 }], align 16
@std_rv = common dso_local global %struct.zd_ioreq16* null, align 8
@ioreqs_sw = common dso_local global %struct.zd_ioreq16* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.zd_rf*, i32)* @zd1211_al7230b_set_channel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zd1211_al7230b_set_channel(%struct.zd_rf* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.zd_rf*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.zd_ioreq16*, align 8
  %8 = alloca %struct.zd_chip*, align 8
  store %struct.zd_rf* %0, %struct.zd_rf** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.zd_ioreq16**, %struct.zd_ioreq16*** @chan_rv, align 8
  %10 = load i32, i32* %5, align 4
  %11 = sub nsw i32 %10, 1
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds %struct.zd_ioreq16*, %struct.zd_ioreq16** %9, i64 %12
  %14 = load %struct.zd_ioreq16*, %struct.zd_ioreq16** %13, align 8
  store %struct.zd_ioreq16* %14, %struct.zd_ioreq16** %7, align 8
  %15 = load %struct.zd_rf*, %struct.zd_rf** %4, align 8
  %16 = call %struct.zd_chip* @zd_rf_to_chip(%struct.zd_rf* %15)
  store %struct.zd_chip* %16, %struct.zd_chip** %8, align 8
  %17 = load %struct.zd_chip*, %struct.zd_chip** %8, align 8
  %18 = call i32 @zd_iowrite16_locked(%struct.zd_chip* %17, i32 87, i32 129)
  store i32 %18, i32* %6, align 4
  %19 = load i32, i32* %6, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %2
  %22 = load i32, i32* %6, align 4
  store i32 %22, i32* %3, align 4
  br label %83

23:                                               ; preds = %2
  %24 = load %struct.zd_chip*, %struct.zd_chip** %8, align 8
  %25 = call i32 @zd_iowrite16_locked(%struct.zd_chip* %24, i32 47, i32 128)
  store i32 %25, i32* %6, align 4
  %26 = load i32, i32* %6, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %23
  %29 = load i32, i32* %6, align 4
  store i32 %29, i32* %3, align 4
  br label %83

30:                                               ; preds = %23
  %31 = load %struct.zd_chip*, %struct.zd_chip** %8, align 8
  %32 = load %struct.zd_ioreq16*, %struct.zd_ioreq16** @std_rv, align 8
  %33 = load %struct.zd_ioreq16*, %struct.zd_ioreq16** @std_rv, align 8
  %34 = call i32 @ARRAY_SIZE(%struct.zd_ioreq16* %33)
  %35 = call i32 @zd_rfwritev_cr_locked(%struct.zd_chip* %31, %struct.zd_ioreq16* %32, i32 %34)
  store i32 %35, i32* %6, align 4
  %36 = load i32, i32* %6, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %30
  %39 = load i32, i32* %6, align 4
  store i32 %39, i32* %3, align 4
  br label %83

40:                                               ; preds = %30
  %41 = load %struct.zd_chip*, %struct.zd_chip** %8, align 8
  %42 = call i32 @zd_rfwrite_cr_locked(%struct.zd_chip* %41, i32 3969024)
  store i32 %42, i32* %6, align 4
  %43 = load i32, i32* %6, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %40
  %46 = load i32, i32* %6, align 4
  store i32 %46, i32* %3, align 4
  br label %83

47:                                               ; preds = %40
  %48 = load %struct.zd_chip*, %struct.zd_chip** %8, align 8
  %49 = call i32 @zd_rfwrite_cr_locked(%struct.zd_chip* %48, i32 15818072)
  store i32 %49, i32* %6, align 4
  %50 = load i32, i32* %6, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %47
  %53 = load i32, i32* %6, align 4
  store i32 %53, i32* %3, align 4
  br label %83

54:                                               ; preds = %47
  %55 = load %struct.zd_chip*, %struct.zd_chip** %8, align 8
  %56 = load %struct.zd_ioreq16*, %struct.zd_ioreq16** @ioreqs_sw, align 8
  %57 = load %struct.zd_ioreq16*, %struct.zd_ioreq16** @ioreqs_sw, align 8
  %58 = call i32 @ARRAY_SIZE(%struct.zd_ioreq16* %57)
  %59 = call i32 @zd_iowrite16a_locked(%struct.zd_chip* %55, %struct.zd_ioreq16* %56, i32 %58)
  store i32 %59, i32* %6, align 4
  %60 = load i32, i32* %6, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %64

62:                                               ; preds = %54
  %63 = load i32, i32* %6, align 4
  store i32 %63, i32* %3, align 4
  br label %83

64:                                               ; preds = %54
  %65 = load %struct.zd_chip*, %struct.zd_chip** %8, align 8
  %66 = load %struct.zd_ioreq16*, %struct.zd_ioreq16** %7, align 8
  %67 = call i32 @zd_rfwritev_cr_locked(%struct.zd_chip* %65, %struct.zd_ioreq16* %66, i32 2)
  store i32 %67, i32* %6, align 4
  %68 = load i32, i32* %6, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %72

70:                                               ; preds = %64
  %71 = load i32, i32* %6, align 4
  store i32 %71, i32* %3, align 4
  br label %83

72:                                               ; preds = %64
  %73 = load %struct.zd_chip*, %struct.zd_chip** %8, align 8
  %74 = call i32 @zd_rfwrite_cr_locked(%struct.zd_chip* %73, i32 3969024)
  store i32 %74, i32* %6, align 4
  %75 = load i32, i32* %6, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %79

77:                                               ; preds = %72
  %78 = load i32, i32* %6, align 4
  store i32 %78, i32* %3, align 4
  br label %83

79:                                               ; preds = %72
  %80 = load %struct.zd_chip*, %struct.zd_chip** %8, align 8
  %81 = call i32 @ARRAY_SIZE(%struct.zd_ioreq16* getelementptr inbounds ([3 x %struct.zd_ioreq16], [3 x %struct.zd_ioreq16]* @zd1211_al7230b_set_channel.ioreqs, i64 0, i64 0))
  %82 = call i32 @zd_iowrite16a_locked(%struct.zd_chip* %80, %struct.zd_ioreq16* getelementptr inbounds ([3 x %struct.zd_ioreq16], [3 x %struct.zd_ioreq16]* @zd1211_al7230b_set_channel.ioreqs, i64 0, i64 0), i32 %81)
  store i32 %82, i32* %3, align 4
  br label %83

83:                                               ; preds = %79, %77, %70, %62, %52, %45, %38, %28, %21
  %84 = load i32, i32* %3, align 4
  ret i32 %84
}

declare dso_local %struct.zd_chip* @zd_rf_to_chip(%struct.zd_rf*) #1

declare dso_local i32 @zd_iowrite16_locked(%struct.zd_chip*, i32, i32) #1

declare dso_local i32 @zd_rfwritev_cr_locked(%struct.zd_chip*, %struct.zd_ioreq16*, i32) #1

declare dso_local i32 @ARRAY_SIZE(%struct.zd_ioreq16*) #1

declare dso_local i32 @zd_rfwrite_cr_locked(%struct.zd_chip*, i32) #1

declare dso_local i32 @zd_iowrite16a_locked(%struct.zd_chip*, %struct.zd_ioreq16*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
