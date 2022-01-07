; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_synclink_gt.c_rx_start.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_synclink_gt.c_rx_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.slgt_info = type { i32, i32, %struct.TYPE_4__, %struct.TYPE_3__*, i64 }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_3__ = type { i64 }

@IRQ_RXOVER = common dso_local global i16 0, align 2
@IRQ_RXDATA = common dso_local global i16 0, align 2
@SSR = common dso_local global i32 0, align 4
@RCR = common dso_local global i32 0, align 4
@BIT1 = common dso_local global i16 0, align 2
@BIT2 = common dso_local global i16 0, align 2
@SCR = common dso_local global i32 0, align 4
@BIT14 = common dso_local global i16 0, align 2
@MGSL_MODE_ASYNC = common dso_local global i64 0, align 8
@RDCSR = common dso_local global i32 0, align 4
@BIT6 = common dso_local global i64 0, align 8
@RDDAR = common dso_local global i32 0, align 4
@BIT0 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.slgt_info*)* @rx_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rx_start(%struct.slgt_info* %0) #0 {
  %2 = alloca %struct.slgt_info*, align 8
  %3 = alloca i16, align 2
  store %struct.slgt_info* %0, %struct.slgt_info** %2, align 8
  %4 = load %struct.slgt_info*, %struct.slgt_info** %2, align 8
  %5 = load i16, i16* @IRQ_RXOVER, align 2
  %6 = zext i16 %5 to i32
  %7 = load i16, i16* @IRQ_RXDATA, align 2
  %8 = zext i16 %7 to i32
  %9 = add nsw i32 %6, %8
  %10 = trunc i32 %9 to i16
  %11 = call i32 @slgt_irq_off(%struct.slgt_info* %4, i16 zeroext %10)
  %12 = load %struct.slgt_info*, %struct.slgt_info** %2, align 8
  %13 = load i32, i32* @SSR, align 4
  %14 = load i16, i16* @IRQ_RXOVER, align 2
  %15 = call i32 @wr_reg16(%struct.slgt_info* %12, i32 %13, i16 zeroext %14)
  %16 = load %struct.slgt_info*, %struct.slgt_info** %2, align 8
  %17 = load i32, i32* @RCR, align 4
  %18 = call zeroext i16 @rd_reg16(%struct.slgt_info* %16, i32 %17)
  %19 = zext i16 %18 to i32
  %20 = load i16, i16* @BIT1, align 2
  %21 = zext i16 %20 to i32
  %22 = xor i32 %21, -1
  %23 = and i32 %19, %22
  %24 = trunc i32 %23 to i16
  store i16 %24, i16* %3, align 2
  %25 = load %struct.slgt_info*, %struct.slgt_info** %2, align 8
  %26 = load i32, i32* @RCR, align 4
  %27 = load i16, i16* %3, align 2
  %28 = zext i16 %27 to i32
  %29 = load i16, i16* @BIT2, align 2
  %30 = zext i16 %29 to i32
  %31 = or i32 %28, %30
  %32 = trunc i32 %31 to i16
  %33 = call i32 @wr_reg16(%struct.slgt_info* %25, i32 %26, i16 zeroext %32)
  %34 = load %struct.slgt_info*, %struct.slgt_info** %2, align 8
  %35 = load i32, i32* @RCR, align 4
  %36 = load i16, i16* %3, align 2
  %37 = call i32 @wr_reg16(%struct.slgt_info* %34, i32 %35, i16 zeroext %36)
  %38 = load %struct.slgt_info*, %struct.slgt_info** %2, align 8
  %39 = call i32 @rdma_reset(%struct.slgt_info* %38)
  %40 = load %struct.slgt_info*, %struct.slgt_info** %2, align 8
  %41 = call i32 @reset_rbufs(%struct.slgt_info* %40)
  %42 = load %struct.slgt_info*, %struct.slgt_info** %2, align 8
  %43 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %42, i32 0, i32 4
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %74

46:                                               ; preds = %1
  %47 = load %struct.slgt_info*, %struct.slgt_info** %2, align 8
  %48 = load i32, i32* @SCR, align 4
  %49 = load %struct.slgt_info*, %struct.slgt_info** %2, align 8
  %50 = load i32, i32* @SCR, align 4
  %51 = call zeroext i16 @rd_reg16(%struct.slgt_info* %49, i32 %50)
  %52 = zext i16 %51 to i32
  %53 = load i16, i16* @BIT14, align 2
  %54 = zext i16 %53 to i32
  %55 = xor i32 %54, -1
  %56 = and i32 %52, %55
  %57 = trunc i32 %56 to i16
  %58 = call i32 @wr_reg16(%struct.slgt_info* %47, i32 %48, i16 zeroext %57)
  %59 = load %struct.slgt_info*, %struct.slgt_info** %2, align 8
  %60 = load i16, i16* @IRQ_RXDATA, align 2
  %61 = call i32 @slgt_irq_on(%struct.slgt_info* %59, i16 zeroext %60)
  %62 = load %struct.slgt_info*, %struct.slgt_info** %2, align 8
  %63 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %62, i32 0, i32 2
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = load i64, i64* @MGSL_MODE_ASYNC, align 8
  %67 = icmp eq i64 %65, %66
  br i1 %67, label %68, label %73

68:                                               ; preds = %46
  %69 = load %struct.slgt_info*, %struct.slgt_info** %2, align 8
  %70 = load i32, i32* @RDCSR, align 4
  %71 = load i64, i64* @BIT6, align 8
  %72 = call i32 @wr_reg32(%struct.slgt_info* %69, i32 %70, i64 %71)
  br label %73

73:                                               ; preds = %68, %46
  br label %120

74:                                               ; preds = %1
  %75 = load %struct.slgt_info*, %struct.slgt_info** %2, align 8
  %76 = load i32, i32* @SCR, align 4
  %77 = load %struct.slgt_info*, %struct.slgt_info** %2, align 8
  %78 = load i32, i32* @SCR, align 4
  %79 = call zeroext i16 @rd_reg16(%struct.slgt_info* %77, i32 %78)
  %80 = zext i16 %79 to i32
  %81 = load i16, i16* @BIT14, align 2
  %82 = zext i16 %81 to i32
  %83 = or i32 %80, %82
  %84 = trunc i32 %83 to i16
  %85 = call i32 @wr_reg16(%struct.slgt_info* %75, i32 %76, i16 zeroext %84)
  %86 = load %struct.slgt_info*, %struct.slgt_info** %2, align 8
  %87 = load i32, i32* @RDDAR, align 4
  %88 = load %struct.slgt_info*, %struct.slgt_info** %2, align 8
  %89 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %88, i32 0, i32 3
  %90 = load %struct.TYPE_3__*, %struct.TYPE_3__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %90, i64 0
  %92 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = call i32 @wr_reg32(%struct.slgt_info* %86, i32 %87, i64 %93)
  %95 = load %struct.slgt_info*, %struct.slgt_info** %2, align 8
  %96 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %95, i32 0, i32 2
  %97 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = load i64, i64* @MGSL_MODE_ASYNC, align 8
  %100 = icmp ne i64 %98, %99
  br i1 %100, label %101, label %109

101:                                              ; preds = %74
  %102 = load %struct.slgt_info*, %struct.slgt_info** %2, align 8
  %103 = load i32, i32* @RDCSR, align 4
  %104 = load i16, i16* @BIT2, align 2
  %105 = zext i16 %104 to i64
  %106 = load i64, i64* @BIT0, align 8
  %107 = add nsw i64 %105, %106
  %108 = call i32 @wr_reg32(%struct.slgt_info* %102, i32 %103, i64 %107)
  br label %119

109:                                              ; preds = %74
  %110 = load %struct.slgt_info*, %struct.slgt_info** %2, align 8
  %111 = load i32, i32* @RDCSR, align 4
  %112 = load i64, i64* @BIT6, align 8
  %113 = load i16, i16* @BIT2, align 2
  %114 = zext i16 %113 to i64
  %115 = add nsw i64 %112, %114
  %116 = load i64, i64* @BIT0, align 8
  %117 = add nsw i64 %115, %116
  %118 = call i32 @wr_reg32(%struct.slgt_info* %110, i32 %111, i64 %117)
  br label %119

119:                                              ; preds = %109, %101
  br label %120

120:                                              ; preds = %119, %73
  %121 = load %struct.slgt_info*, %struct.slgt_info** %2, align 8
  %122 = load i16, i16* @IRQ_RXOVER, align 2
  %123 = call i32 @slgt_irq_on(%struct.slgt_info* %121, i16 zeroext %122)
  %124 = load %struct.slgt_info*, %struct.slgt_info** %2, align 8
  %125 = load i32, i32* @RCR, align 4
  %126 = load %struct.slgt_info*, %struct.slgt_info** %2, align 8
  %127 = load i32, i32* @RCR, align 4
  %128 = call zeroext i16 @rd_reg16(%struct.slgt_info* %126, i32 %127)
  %129 = zext i16 %128 to i32
  %130 = load i16, i16* @BIT1, align 2
  %131 = zext i16 %130 to i32
  %132 = or i32 %129, %131
  %133 = trunc i32 %132 to i16
  %134 = call i32 @wr_reg16(%struct.slgt_info* %124, i32 %125, i16 zeroext %133)
  %135 = load %struct.slgt_info*, %struct.slgt_info** %2, align 8
  %136 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %135, i32 0, i32 0
  store i32 0, i32* %136, align 8
  %137 = load %struct.slgt_info*, %struct.slgt_info** %2, align 8
  %138 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %137, i32 0, i32 1
  store i32 1, i32* %138, align 4
  ret void
}

declare dso_local i32 @slgt_irq_off(%struct.slgt_info*, i16 zeroext) #1

declare dso_local i32 @wr_reg16(%struct.slgt_info*, i32, i16 zeroext) #1

declare dso_local zeroext i16 @rd_reg16(%struct.slgt_info*, i32) #1

declare dso_local i32 @rdma_reset(%struct.slgt_info*) #1

declare dso_local i32 @reset_rbufs(%struct.slgt_info*) #1

declare dso_local i32 @slgt_irq_on(%struct.slgt_info*, i16 zeroext) #1

declare dso_local i32 @wr_reg32(%struct.slgt_info*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
