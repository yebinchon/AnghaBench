; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/zd1211rw/extr_zd_rf_al7230b.c_zd1211b_al7230b_init_hw.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/zd1211rw/extr_zd_rf_al7230b.c_zd1211b_al7230b_init_hw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zd_ioreq16 = type { i32, i32 }
%struct.zd_rf = type { i32 }
%struct.zd_chip = type { i64 }

@zd1211b_al7230b_init_hw.ioreqs_1 = internal constant [45 x %struct.zd_ioreq16] [%struct.zd_ioreq16 { i32 163, i32 87 }, %struct.zd_ioreq16 { i32 133, i32 9 }, %struct.zd_ioreq16 zeroinitializer, %struct.zd_ioreq16 { i32 203, i32 139 }, %struct.zd_ioreq16 { i32 169, i32 32 }, %struct.zd_ioreq16 { i32 167, i32 43 }, %struct.zd_ioreq16 { i32 166, i32 16 }, %struct.zd_ioreq16 { i32 165, i32 64 }, %struct.zd_ioreq16 { i32 164, i32 32 }, %struct.zd_ioreq16 { i32 159, i32 147 }, %struct.zd_ioreq16 { i32 158, i32 62 }, %struct.zd_ioreq16 { i32 157, i32 0 }, %struct.zd_ioreq16 { i32 156, i32 40 }, %struct.zd_ioreq16 { i32 155, i32 48 }, %struct.zd_ioreq16 { i32 154, i32 62 }, %struct.zd_ioreq16 { i32 152, i32 36 }, %struct.zd_ioreq16 { i32 151, i32 50 }, %struct.zd_ioreq16 { i32 150, i32 153 }, %struct.zd_ioreq16 { i32 149, i32 30 }, %struct.zd_ioreq16 { i32 148, i32 0 }, %struct.zd_ioreq16 { i32 147, i32 0 }, %struct.zd_ioreq16 { i32 146, i32 1 }, %struct.zd_ioreq16 { i32 145, i32 128 }, %struct.zd_ioreq16 { i32 144, i32 126 }, %struct.zd_ioreq16 { i32 143, i32 0 }, %struct.zd_ioreq16 { i32 142, i32 0 }, %struct.zd_ioreq16 { i32 141, i32 0 }, %struct.zd_ioreq16 { i32 140, i32 0 }, %struct.zd_ioreq16 { i32 139, i32 40 }, %struct.zd_ioreq16 { i32 138, i32 88 }, %struct.zd_ioreq16 { i32 137, i32 48 }, %struct.zd_ioreq16 { i32 136, i32 48 }, %struct.zd_ioreq16 { i32 135, i32 10 }, %struct.zd_ioreq16 { i32 134, i32 4 }, %struct.zd_ioreq16 { i32 132, i32 88 }, %struct.zd_ioreq16 { i32 131, i32 0 }, %struct.zd_ioreq16 { i32 130, i32 10 }, %struct.zd_ioreq16 { i32 129, i32 141 }, %struct.zd_ioreq16 { i32 128, i32 0 }, %struct.zd_ioreq16 { i32 202, i32 2 }, %struct.zd_ioreq16 { i32 201, i32 19 }, %struct.zd_ioreq16 { i32 200, i32 39 }, %struct.zd_ioreq16 { i32 199, i32 32 }, %struct.zd_ioreq16 { i32 197, i32 19 }, %struct.zd_ioreq16 { i32 194, i32 31 }], align 16
@zd1211b_al7230b_init_hw.ioreqs_new_phy = internal constant [7 x %struct.zd_ioreq16] [%struct.zd_ioreq16 { i32 198, i32 40 }, %struct.zd_ioreq16 { i32 196, i32 31 }, %struct.zd_ioreq16 { i32 195, i32 31 }, %struct.zd_ioreq16 { i32 190, i32 42 }, %struct.zd_ioreq16 { i32 188, i32 250 }, %struct.zd_ioreq16 { i32 187, i32 18 }, %struct.zd_ioreq16 { i32 185, i32 108 }], align 16
@zd1211b_al7230b_init_hw.ioreqs_old_phy = internal constant [7 x %struct.zd_ioreq16] [%struct.zd_ioreq16 { i32 198, i32 36 }, %struct.zd_ioreq16 { i32 196, i32 19 }, %struct.zd_ioreq16 { i32 195, i32 19 }, %struct.zd_ioreq16 { i32 190, i32 36 }, %struct.zd_ioreq16 { i32 188, i32 252 }, %struct.zd_ioreq16 { i32 187, i32 17 }, %struct.zd_ioreq16 { i32 185, i32 106 }], align 16
@zd1211b_al7230b_init_hw.ioreqs_2 = internal constant [21 x %struct.zd_ioreq16] [%struct.zd_ioreq16 { i32 193, i32 39 }, %struct.zd_ioreq16 { i32 192, i32 39 }, %struct.zd_ioreq16 { i32 191, i32 36 }, %struct.zd_ioreq16 { i32 189, i32 250 }, %struct.zd_ioreq16 { i32 186, i32 79 }, %struct.zd_ioreq16 { i32 184, i32 252 }, %struct.zd_ioreq16 { i32 183, i32 87 }, %struct.zd_ioreq16 { i32 182, i32 173 }, %struct.zd_ioreq16 { i32 181, i32 108 }, %struct.zd_ioreq16 { i32 180, i32 3 }, %struct.zd_ioreq16 { i32 177, i32 16 }, %struct.zd_ioreq16 { i32 176, i32 0 }, %struct.zd_ioreq16 { i32 174, i32 80 }, %struct.zd_ioreq16 { i32 173, i32 168 }, %struct.zd_ioreq16 { i32 172, i32 172 }, %struct.zd_ioreq16 { i32 171, i32 64 }, %struct.zd_ioreq16 { i32 170, i32 64 }, %struct.zd_ioreq16 { i32 168, i32 26 }, %struct.zd_ioreq16 { i32 161, i32 52 }, %struct.zd_ioreq16 { i32 160, i32 52 }, %struct.zd_ioreq16 { i32 162, i32 47 }], align 16
@zd1211b_al7230b_init_hw.ioreqs_3 = internal constant [6 x %struct.zd_ioreq16] [%struct.zd_ioreq16 { i32 162, i32 127 }, %struct.zd_ioreq16 { i32 179, i32 20 }, %struct.zd_ioreq16 { i32 178, i32 18 }, %struct.zd_ioreq16 { i32 177, i32 16 }, %struct.zd_ioreq16 { i32 153, i32 56 }, %struct.zd_ioreq16 { i32 175, i32 223 }], align 16
@chan_rv = common dso_local global %struct.zd_ioreq16** null, align 8
@std_rv = common dso_local global %struct.zd_ioreq16* null, align 8
@rv_init1 = common dso_local global %struct.zd_ioreq16* null, align 8
@rv_init2 = common dso_local global %struct.zd_ioreq16* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.zd_rf*)* @zd1211b_al7230b_init_hw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zd1211b_al7230b_init_hw(%struct.zd_rf* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.zd_rf*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.zd_chip*, align 8
  store %struct.zd_rf* %0, %struct.zd_rf** %3, align 8
  %6 = load %struct.zd_rf*, %struct.zd_rf** %3, align 8
  %7 = call %struct.zd_chip* @zd_rf_to_chip(%struct.zd_rf* %6)
  store %struct.zd_chip* %7, %struct.zd_chip** %5, align 8
  %8 = load %struct.zd_chip*, %struct.zd_chip** %5, align 8
  %9 = call i32 @ARRAY_SIZE(%struct.zd_ioreq16* getelementptr inbounds ([45 x %struct.zd_ioreq16], [45 x %struct.zd_ioreq16]* @zd1211b_al7230b_init_hw.ioreqs_1, i64 0, i64 0))
  %10 = call i32 @zd_iowrite16a_locked(%struct.zd_chip* %8, %struct.zd_ioreq16* getelementptr inbounds ([45 x %struct.zd_ioreq16], [45 x %struct.zd_ioreq16]* @zd1211b_al7230b_init_hw.ioreqs_1, i64 0, i64 0), i32 %9)
  store i32 %10, i32* %4, align 4
  %11 = load i32, i32* %4, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %1
  %14 = load i32, i32* %4, align 4
  store i32 %14, i32* %2, align 4
  br label %96

15:                                               ; preds = %1
  %16 = load %struct.zd_chip*, %struct.zd_chip** %5, align 8
  %17 = getelementptr inbounds %struct.zd_chip, %struct.zd_chip* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %15
  %21 = load %struct.zd_chip*, %struct.zd_chip** %5, align 8
  %22 = call i32 @ARRAY_SIZE(%struct.zd_ioreq16* getelementptr inbounds ([7 x %struct.zd_ioreq16], [7 x %struct.zd_ioreq16]* @zd1211b_al7230b_init_hw.ioreqs_new_phy, i64 0, i64 0))
  %23 = call i32 @zd_iowrite16a_locked(%struct.zd_chip* %21, %struct.zd_ioreq16* getelementptr inbounds ([7 x %struct.zd_ioreq16], [7 x %struct.zd_ioreq16]* @zd1211b_al7230b_init_hw.ioreqs_new_phy, i64 0, i64 0), i32 %22)
  store i32 %23, i32* %4, align 4
  br label %28

24:                                               ; preds = %15
  %25 = load %struct.zd_chip*, %struct.zd_chip** %5, align 8
  %26 = call i32 @ARRAY_SIZE(%struct.zd_ioreq16* getelementptr inbounds ([7 x %struct.zd_ioreq16], [7 x %struct.zd_ioreq16]* @zd1211b_al7230b_init_hw.ioreqs_old_phy, i64 0, i64 0))
  %27 = call i32 @zd_iowrite16a_locked(%struct.zd_chip* %25, %struct.zd_ioreq16* getelementptr inbounds ([7 x %struct.zd_ioreq16], [7 x %struct.zd_ioreq16]* @zd1211b_al7230b_init_hw.ioreqs_old_phy, i64 0, i64 0), i32 %26)
  store i32 %27, i32* %4, align 4
  br label %28

28:                                               ; preds = %24, %20
  %29 = load i32, i32* %4, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %28
  %32 = load i32, i32* %4, align 4
  store i32 %32, i32* %2, align 4
  br label %96

33:                                               ; preds = %28
  %34 = load %struct.zd_chip*, %struct.zd_chip** %5, align 8
  %35 = call i32 @ARRAY_SIZE(%struct.zd_ioreq16* getelementptr inbounds ([21 x %struct.zd_ioreq16], [21 x %struct.zd_ioreq16]* @zd1211b_al7230b_init_hw.ioreqs_2, i64 0, i64 0))
  %36 = call i32 @zd_iowrite16a_locked(%struct.zd_chip* %34, %struct.zd_ioreq16* getelementptr inbounds ([21 x %struct.zd_ioreq16], [21 x %struct.zd_ioreq16]* @zd1211b_al7230b_init_hw.ioreqs_2, i64 0, i64 0), i32 %35)
  store i32 %36, i32* %4, align 4
  %37 = load i32, i32* %4, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %33
  %40 = load i32, i32* %4, align 4
  store i32 %40, i32* %2, align 4
  br label %96

41:                                               ; preds = %33
  %42 = load %struct.zd_chip*, %struct.zd_chip** %5, align 8
  %43 = load %struct.zd_ioreq16**, %struct.zd_ioreq16*** @chan_rv, align 8
  %44 = getelementptr inbounds %struct.zd_ioreq16*, %struct.zd_ioreq16** %43, i64 0
  %45 = load %struct.zd_ioreq16*, %struct.zd_ioreq16** %44, align 8
  %46 = load %struct.zd_ioreq16**, %struct.zd_ioreq16*** @chan_rv, align 8
  %47 = getelementptr inbounds %struct.zd_ioreq16*, %struct.zd_ioreq16** %46, i64 0
  %48 = load %struct.zd_ioreq16*, %struct.zd_ioreq16** %47, align 8
  %49 = call i32 @ARRAY_SIZE(%struct.zd_ioreq16* %48)
  %50 = call i32 @zd_rfwritev_cr_locked(%struct.zd_chip* %42, %struct.zd_ioreq16* %45, i32 %49)
  store i32 %50, i32* %4, align 4
  %51 = load i32, i32* %4, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %41
  %54 = load i32, i32* %4, align 4
  store i32 %54, i32* %2, align 4
  br label %96

55:                                               ; preds = %41
  %56 = load %struct.zd_chip*, %struct.zd_chip** %5, align 8
  %57 = load %struct.zd_ioreq16*, %struct.zd_ioreq16** @std_rv, align 8
  %58 = load %struct.zd_ioreq16*, %struct.zd_ioreq16** @std_rv, align 8
  %59 = call i32 @ARRAY_SIZE(%struct.zd_ioreq16* %58)
  %60 = call i32 @zd_rfwritev_cr_locked(%struct.zd_chip* %56, %struct.zd_ioreq16* %57, i32 %59)
  store i32 %60, i32* %4, align 4
  %61 = load i32, i32* %4, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %65

63:                                               ; preds = %55
  %64 = load i32, i32* %4, align 4
  store i32 %64, i32* %2, align 4
  br label %96

65:                                               ; preds = %55
  %66 = load %struct.zd_chip*, %struct.zd_chip** %5, align 8
  %67 = load %struct.zd_ioreq16*, %struct.zd_ioreq16** @rv_init1, align 8
  %68 = load %struct.zd_ioreq16*, %struct.zd_ioreq16** @rv_init1, align 8
  %69 = call i32 @ARRAY_SIZE(%struct.zd_ioreq16* %68)
  %70 = call i32 @zd_rfwritev_cr_locked(%struct.zd_chip* %66, %struct.zd_ioreq16* %67, i32 %69)
  store i32 %70, i32* %4, align 4
  %71 = load i32, i32* %4, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %75

73:                                               ; preds = %65
  %74 = load i32, i32* %4, align 4
  store i32 %74, i32* %2, align 4
  br label %96

75:                                               ; preds = %65
  %76 = load %struct.zd_chip*, %struct.zd_chip** %5, align 8
  %77 = call i32 @ARRAY_SIZE(%struct.zd_ioreq16* getelementptr inbounds ([6 x %struct.zd_ioreq16], [6 x %struct.zd_ioreq16]* @zd1211b_al7230b_init_hw.ioreqs_3, i64 0, i64 0))
  %78 = call i32 @zd_iowrite16a_locked(%struct.zd_chip* %76, %struct.zd_ioreq16* getelementptr inbounds ([6 x %struct.zd_ioreq16], [6 x %struct.zd_ioreq16]* @zd1211b_al7230b_init_hw.ioreqs_3, i64 0, i64 0), i32 %77)
  store i32 %78, i32* %4, align 4
  %79 = load i32, i32* %4, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %83

81:                                               ; preds = %75
  %82 = load i32, i32* %4, align 4
  store i32 %82, i32* %2, align 4
  br label %96

83:                                               ; preds = %75
  %84 = load %struct.zd_chip*, %struct.zd_chip** %5, align 8
  %85 = load %struct.zd_ioreq16*, %struct.zd_ioreq16** @rv_init2, align 8
  %86 = load %struct.zd_ioreq16*, %struct.zd_ioreq16** @rv_init2, align 8
  %87 = call i32 @ARRAY_SIZE(%struct.zd_ioreq16* %86)
  %88 = call i32 @zd_rfwritev_cr_locked(%struct.zd_chip* %84, %struct.zd_ioreq16* %85, i32 %87)
  store i32 %88, i32* %4, align 4
  %89 = load i32, i32* %4, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %93

91:                                               ; preds = %83
  %92 = load i32, i32* %4, align 4
  store i32 %92, i32* %2, align 4
  br label %96

93:                                               ; preds = %83
  %94 = load %struct.zd_chip*, %struct.zd_chip** %5, align 8
  %95 = call i32 @zd1211b_al7230b_finalize(%struct.zd_chip* %94)
  store i32 %95, i32* %2, align 4
  br label %96

96:                                               ; preds = %93, %91, %81, %73, %63, %53, %39, %31, %13
  %97 = load i32, i32* %2, align 4
  ret i32 %97
}

declare dso_local %struct.zd_chip* @zd_rf_to_chip(%struct.zd_rf*) #1

declare dso_local i32 @zd_iowrite16a_locked(%struct.zd_chip*, %struct.zd_ioreq16*, i32) #1

declare dso_local i32 @ARRAY_SIZE(%struct.zd_ioreq16*) #1

declare dso_local i32 @zd_rfwritev_cr_locked(%struct.zd_chip*, %struct.zd_ioreq16*, i32) #1

declare dso_local i32 @zd1211b_al7230b_finalize(%struct.zd_chip*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
