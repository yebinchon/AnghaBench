; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/block/rsxx/extr_core.c_rsxx_isr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/block/rsxx/extr_core.c_rsxx_isr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rsxx_cardinfo = type { i32, i32, i32, i32, i32, i32, %struct.TYPE_4__, %struct.TYPE_3__*, i64, i32 }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_3__ = type { i32, i32 }

@ISR = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [34 x i8] c"ISR = 0xFFFFFFFF, retrying later\0A\00", align 1
@CR_INTR_CREG = common dso_local global i32 0, align 4
@CR_INTR_EVENT = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@IRQ_NONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @rsxx_isr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rsxx_isr(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.rsxx_cardinfo*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %10 = load i8*, i8** %4, align 8
  %11 = bitcast i8* %10 to %struct.rsxx_cardinfo*
  store %struct.rsxx_cardinfo* %11, %struct.rsxx_cardinfo** %5, align 8
  store i32 0, i32* %7, align 4
  %12 = load %struct.rsxx_cardinfo*, %struct.rsxx_cardinfo** %5, align 8
  %13 = getelementptr inbounds %struct.rsxx_cardinfo, %struct.rsxx_cardinfo* %12, i32 0, i32 3
  %14 = call i32 @spin_lock(i32* %13)
  br label %15

15:                                               ; preds = %127, %2
  store i32 0, i32* %8, align 4
  %16 = load %struct.rsxx_cardinfo*, %struct.rsxx_cardinfo** %5, align 8
  %17 = getelementptr inbounds %struct.rsxx_cardinfo, %struct.rsxx_cardinfo* %16, i32 0, i32 9
  %18 = load i32, i32* %17, align 8
  %19 = call i64 @unlikely(i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %15
  br label %130

22:                                               ; preds = %15
  %23 = load %struct.rsxx_cardinfo*, %struct.rsxx_cardinfo** %5, align 8
  %24 = getelementptr inbounds %struct.rsxx_cardinfo, %struct.rsxx_cardinfo* %23, i32 0, i32 8
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @ISR, align 8
  %27 = add nsw i64 %25, %26
  %28 = call i32 @ioread32(i64 %27)
  store i32 %28, i32* %6, align 4
  %29 = load i32, i32* %6, align 4
  %30 = icmp eq i32 %29, -1
  br i1 %30, label %31, label %35

31:                                               ; preds = %22
  %32 = load %struct.rsxx_cardinfo*, %struct.rsxx_cardinfo** %5, align 8
  %33 = call i32 @CARD_TO_DEV(%struct.rsxx_cardinfo* %32)
  %34 = call i32 @dev_info(i32 %33, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  br label %130

35:                                               ; preds = %22
  %36 = load %struct.rsxx_cardinfo*, %struct.rsxx_cardinfo** %5, align 8
  %37 = getelementptr inbounds %struct.rsxx_cardinfo, %struct.rsxx_cardinfo* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = load i32, i32* %6, align 4
  %40 = and i32 %39, %38
  store i32 %40, i32* %6, align 4
  %41 = load i32, i32* %6, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %44, label %43

43:                                               ; preds = %35
  br label %130

44:                                               ; preds = %35
  store i32 0, i32* %9, align 4
  br label %45

45:                                               ; preds = %90, %44
  %46 = load i32, i32* %9, align 4
  %47 = load %struct.rsxx_cardinfo*, %struct.rsxx_cardinfo** %5, align 8
  %48 = getelementptr inbounds %struct.rsxx_cardinfo, %struct.rsxx_cardinfo* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = icmp slt i32 %46, %49
  br i1 %50, label %51, label %93

51:                                               ; preds = %45
  %52 = load i32, i32* %6, align 4
  %53 = load i32, i32* %9, align 4
  %54 = call i32 @CR_INTR_DMA(i32 %53)
  %55 = and i32 %52, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %89

57:                                               ; preds = %51
  %58 = load %struct.rsxx_cardinfo*, %struct.rsxx_cardinfo** %5, align 8
  %59 = getelementptr inbounds %struct.rsxx_cardinfo, %struct.rsxx_cardinfo* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 8
  %61 = load i32, i32* %9, align 4
  %62 = call i32 @CR_INTR_DMA(i32 %61)
  %63 = and i32 %60, %62
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %70

65:                                               ; preds = %57
  %66 = load %struct.rsxx_cardinfo*, %struct.rsxx_cardinfo** %5, align 8
  %67 = load i32, i32* %9, align 4
  %68 = call i32 @CR_INTR_DMA(i32 %67)
  %69 = call i32 @rsxx_disable_ier(%struct.rsxx_cardinfo* %66, i32 %68)
  store i32 1, i32* %8, align 4
  br label %70

70:                                               ; preds = %65, %57
  %71 = load %struct.rsxx_cardinfo*, %struct.rsxx_cardinfo** %5, align 8
  %72 = getelementptr inbounds %struct.rsxx_cardinfo, %struct.rsxx_cardinfo* %71, i32 0, i32 7
  %73 = load %struct.TYPE_3__*, %struct.TYPE_3__** %72, align 8
  %74 = load i32, i32* %9, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %73, i64 %75
  %77 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.rsxx_cardinfo*, %struct.rsxx_cardinfo** %5, align 8
  %80 = getelementptr inbounds %struct.rsxx_cardinfo, %struct.rsxx_cardinfo* %79, i32 0, i32 7
  %81 = load %struct.TYPE_3__*, %struct.TYPE_3__** %80, align 8
  %82 = load i32, i32* %9, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %81, i64 %83
  %85 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %84, i32 0, i32 0
  %86 = call i32 @queue_work(i32 %78, i32* %85)
  %87 = load i32, i32* %7, align 4
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %7, align 4
  br label %89

89:                                               ; preds = %70, %51
  br label %90

90:                                               ; preds = %89
  %91 = load i32, i32* %9, align 4
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %9, align 4
  br label %45

93:                                               ; preds = %45
  %94 = load i32, i32* %6, align 4
  %95 = load i32, i32* @CR_INTR_CREG, align 4
  %96 = and i32 %94, %95
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %109

98:                                               ; preds = %93
  %99 = load %struct.rsxx_cardinfo*, %struct.rsxx_cardinfo** %5, align 8
  %100 = getelementptr inbounds %struct.rsxx_cardinfo, %struct.rsxx_cardinfo* %99, i32 0, i32 6
  %101 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  %103 = load %struct.rsxx_cardinfo*, %struct.rsxx_cardinfo** %5, align 8
  %104 = getelementptr inbounds %struct.rsxx_cardinfo, %struct.rsxx_cardinfo* %103, i32 0, i32 6
  %105 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %104, i32 0, i32 0
  %106 = call i32 @queue_work(i32 %102, i32* %105)
  %107 = load i32, i32* %7, align 4
  %108 = add nsw i32 %107, 1
  store i32 %108, i32* %7, align 4
  br label %109

109:                                              ; preds = %98, %93
  %110 = load i32, i32* %6, align 4
  %111 = load i32, i32* @CR_INTR_EVENT, align 4
  %112 = and i32 %110, %111
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %126

114:                                              ; preds = %109
  %115 = load %struct.rsxx_cardinfo*, %struct.rsxx_cardinfo** %5, align 8
  %116 = getelementptr inbounds %struct.rsxx_cardinfo, %struct.rsxx_cardinfo* %115, i32 0, i32 5
  %117 = load i32, i32* %116, align 4
  %118 = load %struct.rsxx_cardinfo*, %struct.rsxx_cardinfo** %5, align 8
  %119 = getelementptr inbounds %struct.rsxx_cardinfo, %struct.rsxx_cardinfo* %118, i32 0, i32 4
  %120 = call i32 @queue_work(i32 %117, i32* %119)
  %121 = load %struct.rsxx_cardinfo*, %struct.rsxx_cardinfo** %5, align 8
  %122 = load i32, i32* @CR_INTR_EVENT, align 4
  %123 = call i32 @rsxx_disable_ier_and_isr(%struct.rsxx_cardinfo* %121, i32 %122)
  %124 = load i32, i32* %7, align 4
  %125 = add nsw i32 %124, 1
  store i32 %125, i32* %7, align 4
  br label %126

126:                                              ; preds = %114, %109
  br label %127

127:                                              ; preds = %126
  %128 = load i32, i32* %8, align 4
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %15, label %130

130:                                              ; preds = %127, %43, %31, %21
  %131 = load %struct.rsxx_cardinfo*, %struct.rsxx_cardinfo** %5, align 8
  %132 = getelementptr inbounds %struct.rsxx_cardinfo, %struct.rsxx_cardinfo* %131, i32 0, i32 3
  %133 = call i32 @spin_unlock(i32* %132)
  %134 = load i32, i32* %7, align 4
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %138

136:                                              ; preds = %130
  %137 = load i32, i32* @IRQ_HANDLED, align 4
  br label %140

138:                                              ; preds = %130
  %139 = load i32, i32* @IRQ_NONE, align 4
  br label %140

140:                                              ; preds = %138, %136
  %141 = phi i32 [ %137, %136 ], [ %139, %138 ]
  ret i32 %141
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @ioread32(i64) #1

declare dso_local i32 @dev_info(i32, i8*) #1

declare dso_local i32 @CARD_TO_DEV(%struct.rsxx_cardinfo*) #1

declare dso_local i32 @CR_INTR_DMA(i32) #1

declare dso_local i32 @rsxx_disable_ier(%struct.rsxx_cardinfo*, i32) #1

declare dso_local i32 @queue_work(i32, i32*) #1

declare dso_local i32 @rsxx_disable_ier_and_isr(%struct.rsxx_cardinfo*, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
