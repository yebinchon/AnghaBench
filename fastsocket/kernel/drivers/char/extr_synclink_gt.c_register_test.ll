; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_synclink_gt.c_register_test.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_synclink_gt.c_register_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.slgt_info = type { i32, i32 }

@register_test.patterns = internal global [6 x i16] [i16 0, i16 -1, i16 -21846, i16 21845, i16 26985, i16 -26986], align 2
@register_test.count = internal global i32 6, align 4
@TIR = common dso_local global i32 0, align 4
@BDR = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@JCR = common dso_local global i32 0, align 4
@BIT5 = common dso_local global i32 0, align 4
@DiagStatus_AddressFailure = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.slgt_info*)* @register_test to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @register_test(%struct.slgt_info* %0) #0 {
  %2 = alloca %struct.slgt_info*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.slgt_info* %0, %struct.slgt_info** %2, align 8
  store i32 0, i32* %4, align 4
  store i32 0, i32* %3, align 4
  br label %5

5:                                                ; preds = %55, %1
  %6 = load i32, i32* %3, align 4
  %7 = load i32, i32* @register_test.count, align 4
  %8 = icmp ult i32 %6, %7
  br i1 %8, label %9, label %58

9:                                                ; preds = %5
  %10 = load %struct.slgt_info*, %struct.slgt_info** %2, align 8
  %11 = load i32, i32* @TIR, align 4
  %12 = load i32, i32* %3, align 4
  %13 = zext i32 %12 to i64
  %14 = getelementptr inbounds [6 x i16], [6 x i16]* @register_test.patterns, i64 0, i64 %13
  %15 = load i16, i16* %14, align 2
  %16 = call i32 @wr_reg16(%struct.slgt_info* %10, i32 %11, i16 zeroext %15)
  %17 = load %struct.slgt_info*, %struct.slgt_info** %2, align 8
  %18 = load i32, i32* @BDR, align 4
  %19 = load i32, i32* %3, align 4
  %20 = add i32 %19, 1
  %21 = load i32, i32* @register_test.count, align 4
  %22 = urem i32 %20, %21
  %23 = zext i32 %22 to i64
  %24 = getelementptr inbounds [6 x i16], [6 x i16]* @register_test.patterns, i64 0, i64 %23
  %25 = load i16, i16* %24, align 2
  %26 = call i32 @wr_reg16(%struct.slgt_info* %17, i32 %18, i16 zeroext %25)
  %27 = load %struct.slgt_info*, %struct.slgt_info** %2, align 8
  %28 = load i32, i32* @TIR, align 4
  %29 = call zeroext i16 @rd_reg16(%struct.slgt_info* %27, i32 %28)
  %30 = zext i16 %29 to i32
  %31 = load i32, i32* %3, align 4
  %32 = zext i32 %31 to i64
  %33 = getelementptr inbounds [6 x i16], [6 x i16]* @register_test.patterns, i64 0, i64 %32
  %34 = load i16, i16* %33, align 2
  %35 = zext i16 %34 to i32
  %36 = icmp ne i32 %30, %35
  br i1 %36, label %51, label %37

37:                                               ; preds = %9
  %38 = load %struct.slgt_info*, %struct.slgt_info** %2, align 8
  %39 = load i32, i32* @BDR, align 4
  %40 = call zeroext i16 @rd_reg16(%struct.slgt_info* %38, i32 %39)
  %41 = zext i16 %40 to i32
  %42 = load i32, i32* %3, align 4
  %43 = add i32 %42, 1
  %44 = load i32, i32* @register_test.count, align 4
  %45 = urem i32 %43, %44
  %46 = zext i32 %45 to i64
  %47 = getelementptr inbounds [6 x i16], [6 x i16]* @register_test.patterns, i64 0, i64 %46
  %48 = load i16, i16* %47, align 2
  %49 = zext i16 %48 to i32
  %50 = icmp ne i32 %41, %49
  br i1 %50, label %51, label %54

51:                                               ; preds = %37, %9
  %52 = load i32, i32* @ENODEV, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %4, align 4
  br label %58

54:                                               ; preds = %37
  br label %55

55:                                               ; preds = %54
  %56 = load i32, i32* %3, align 4
  %57 = add i32 %56, 1
  store i32 %57, i32* %3, align 4
  br label %5

58:                                               ; preds = %51, %5
  %59 = load %struct.slgt_info*, %struct.slgt_info** %2, align 8
  %60 = load i32, i32* @JCR, align 4
  %61 = call i32 @rd_reg32(%struct.slgt_info* %59, i32 %60)
  %62 = load i32, i32* @BIT5, align 4
  %63 = and i32 %61, %62
  %64 = icmp ne i32 %63, 0
  %65 = zext i1 %64 to i64
  %66 = select i1 %64, i32 1, i32 0
  %67 = load %struct.slgt_info*, %struct.slgt_info** %2, align 8
  %68 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %67, i32 0, i32 0
  store i32 %66, i32* %68, align 4
  %69 = load i32, i32* %4, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %72

71:                                               ; preds = %58
  br label %74

72:                                               ; preds = %58
  %73 = load i32, i32* @DiagStatus_AddressFailure, align 4
  br label %74

74:                                               ; preds = %72, %71
  %75 = phi i32 [ 0, %71 ], [ %73, %72 ]
  %76 = load %struct.slgt_info*, %struct.slgt_info** %2, align 8
  %77 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %76, i32 0, i32 1
  store i32 %75, i32* %77, align 4
  %78 = load i32, i32* %4, align 4
  ret i32 %78
}

declare dso_local i32 @wr_reg16(%struct.slgt_info*, i32, i16 zeroext) #1

declare dso_local zeroext i16 @rd_reg16(%struct.slgt_info*, i32) #1

declare dso_local i32 @rd_reg32(%struct.slgt_info*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
