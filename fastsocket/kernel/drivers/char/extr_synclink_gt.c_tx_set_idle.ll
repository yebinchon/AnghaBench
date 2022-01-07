; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_synclink_gt.c_tx_set_idle.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_synclink_gt.c_tx_set_idle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.slgt_info = type { i32 }

@TCR = common dso_local global i32 0, align 4
@HDLC_TXIDLE_CUSTOM_16 = common dso_local global i32 0, align 4
@BIT6 = common dso_local global i16 0, align 2
@BIT5 = common dso_local global i16 0, align 2
@BIT4 = common dso_local global i16 0, align 2
@TPR = common dso_local global i32 0, align 4
@HDLC_TXIDLE_CUSTOM_8 = common dso_local global i32 0, align 4
@TIR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.slgt_info*)* @tx_set_idle to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tx_set_idle(%struct.slgt_info* %0) #0 {
  %2 = alloca %struct.slgt_info*, align 8
  %3 = alloca i8, align 1
  %4 = alloca i16, align 2
  store %struct.slgt_info* %0, %struct.slgt_info** %2, align 8
  %5 = load %struct.slgt_info*, %struct.slgt_info** %2, align 8
  %6 = load i32, i32* @TCR, align 4
  %7 = call zeroext i16 @rd_reg16(%struct.slgt_info* %5, i32 %6)
  store i16 %7, i16* %4, align 2
  %8 = load %struct.slgt_info*, %struct.slgt_info** %2, align 8
  %9 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* @HDLC_TXIDLE_CUSTOM_16, align 4
  %12 = and i32 %10, %11
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %37

14:                                               ; preds = %1
  %15 = load i16, i16* %4, align 2
  %16 = zext i16 %15 to i32
  %17 = load i16, i16* @BIT6, align 2
  %18 = zext i16 %17 to i32
  %19 = load i16, i16* @BIT5, align 2
  %20 = zext i16 %19 to i32
  %21 = add nsw i32 %18, %20
  %22 = xor i32 %21, -1
  %23 = and i32 %16, %22
  %24 = load i16, i16* @BIT4, align 2
  %25 = zext i16 %24 to i32
  %26 = or i32 %23, %25
  %27 = trunc i32 %26 to i16
  store i16 %27, i16* %4, align 2
  %28 = load %struct.slgt_info*, %struct.slgt_info** %2, align 8
  %29 = load i32, i32* @TPR, align 4
  %30 = load %struct.slgt_info*, %struct.slgt_info** %2, align 8
  %31 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = ashr i32 %32, 8
  %34 = and i32 %33, 255
  %35 = trunc i32 %34 to i8
  %36 = call i32 @wr_reg8(%struct.slgt_info* %28, i32 %29, i8 zeroext %35)
  br label %56

37:                                               ; preds = %1
  %38 = load i16, i16* %4, align 2
  %39 = zext i16 %38 to i32
  %40 = load i16, i16* @BIT6, align 2
  %41 = zext i16 %40 to i32
  %42 = and i32 %39, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %55, label %44

44:                                               ; preds = %37
  %45 = load i16, i16* @BIT5, align 2
  %46 = zext i16 %45 to i32
  %47 = load i16, i16* @BIT4, align 2
  %48 = zext i16 %47 to i32
  %49 = add nsw i32 %46, %48
  %50 = xor i32 %49, -1
  %51 = load i16, i16* %4, align 2
  %52 = zext i16 %51 to i32
  %53 = and i32 %52, %50
  %54 = trunc i32 %53 to i16
  store i16 %54, i16* %4, align 2
  br label %55

55:                                               ; preds = %44, %37
  br label %56

56:                                               ; preds = %55, %14
  %57 = load %struct.slgt_info*, %struct.slgt_info** %2, align 8
  %58 = load i32, i32* @TCR, align 4
  %59 = load i16, i16* %4, align 2
  %60 = call i32 @wr_reg16(%struct.slgt_info* %57, i32 %58, i16 zeroext %59)
  %61 = load %struct.slgt_info*, %struct.slgt_info** %2, align 8
  %62 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* @HDLC_TXIDLE_CUSTOM_8, align 4
  %65 = load i32, i32* @HDLC_TXIDLE_CUSTOM_16, align 4
  %66 = or i32 %64, %65
  %67 = and i32 %63, %66
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %75

69:                                               ; preds = %56
  %70 = load %struct.slgt_info*, %struct.slgt_info** %2, align 8
  %71 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = and i32 %72, 255
  %74 = trunc i32 %73 to i8
  store i8 %74, i8* %3, align 1
  br label %84

75:                                               ; preds = %56
  %76 = load %struct.slgt_info*, %struct.slgt_info** %2, align 8
  %77 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  switch i32 %78, label %82 [
    i32 130, label %79
    i32 131, label %80
    i32 132, label %80
    i32 128, label %81
    i32 129, label %81
  ]

79:                                               ; preds = %75
  store i8 126, i8* %3, align 1
  br label %83

80:                                               ; preds = %75, %75
  store i8 -86, i8* %3, align 1
  br label %83

81:                                               ; preds = %75, %75
  store i8 0, i8* %3, align 1
  br label %83

82:                                               ; preds = %75
  store i8 -1, i8* %3, align 1
  br label %83

83:                                               ; preds = %82, %81, %80, %79
  br label %84

84:                                               ; preds = %83, %69
  %85 = load %struct.slgt_info*, %struct.slgt_info** %2, align 8
  %86 = load i32, i32* @TIR, align 4
  %87 = load i8, i8* %3, align 1
  %88 = call i32 @wr_reg8(%struct.slgt_info* %85, i32 %86, i8 zeroext %87)
  ret void
}

declare dso_local zeroext i16 @rd_reg16(%struct.slgt_info*, i32) #1

declare dso_local i32 @wr_reg8(%struct.slgt_info*, i32, i8 zeroext) #1

declare dso_local i32 @wr_reg16(%struct.slgt_info*, i32, i16 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
