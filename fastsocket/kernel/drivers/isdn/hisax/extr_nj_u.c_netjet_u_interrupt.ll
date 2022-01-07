; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hisax/extr_nj_u.c_netjet_u_interrupt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hisax/extr_nj_u.c_netjet_u_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.IsdnCardState = type { i32, i32, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32, i64 }

@NETJET_IRQSTAT1 = common dso_local global i64 0, align 8
@NETJET_ISACIRQ = common dso_local global i32 0, align 4
@ICC_ISTA = common dso_local global i32 0, align 4
@L1_DEB_ISAC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"tiger: i1 %x %x\00", align 1
@ICC_MASK = common dso_local global i32 0, align 4
@NETJET_DMA_WRITE_ADR = common dso_local global i64 0, align 8
@NETJET_DMA_WRITE_IRQ = common dso_local global i64 0, align 8
@NETJET_DMA_READ_ADR = common dso_local global i64 0, align 8
@NETJET_DMA_READ_IRQ = common dso_local global i64 0, align 8
@FLG_LOCK_ATOMIC = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@NETJET_IRQM0_READ = common dso_local global i32 0, align 4
@NETJET_IRQM0_WRITE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @netjet_u_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @netjet_u_interrupt(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.IsdnCardState*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %10 = load i8*, i8** %5, align 8
  %11 = bitcast i8* %10 to %struct.IsdnCardState*
  store %struct.IsdnCardState* %11, %struct.IsdnCardState** %6, align 8
  %12 = load %struct.IsdnCardState*, %struct.IsdnCardState** %6, align 8
  %13 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %12, i32 0, i32 1
  %14 = load i32, i32* %9, align 4
  %15 = call i32 @spin_lock_irqsave(i32* %13, i32 %14)
  %16 = load %struct.IsdnCardState*, %struct.IsdnCardState** %6, align 8
  %17 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %16, i32 0, i32 3
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 2
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @NETJET_IRQSTAT1, align 8
  %22 = add nsw i64 %20, %21
  %23 = call i32 @bytein(i64 %22)
  store i32 %23, i32* %8, align 4
  %24 = load i32, i32* @NETJET_ISACIRQ, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %56, label %27

27:                                               ; preds = %2
  %28 = load %struct.IsdnCardState*, %struct.IsdnCardState** %6, align 8
  %29 = load i32, i32* @ICC_ISTA, align 4
  %30 = call i32 @NETjet_ReadIC(%struct.IsdnCardState* %28, i32 %29)
  store i32 %30, i32* %7, align 4
  %31 = load %struct.IsdnCardState*, %struct.IsdnCardState** %6, align 8
  %32 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = load i32, i32* @L1_DEB_ISAC, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %42

37:                                               ; preds = %27
  %38 = load %struct.IsdnCardState*, %struct.IsdnCardState** %6, align 8
  %39 = load i32, i32* %8, align 4
  %40 = load i32, i32* %7, align 4
  %41 = call i32 @debugl1(%struct.IsdnCardState* %38, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 %39, i32 %40)
  br label %42

42:                                               ; preds = %37, %27
  %43 = load i32, i32* %7, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %55

45:                                               ; preds = %42
  %46 = load %struct.IsdnCardState*, %struct.IsdnCardState** %6, align 8
  %47 = load i32, i32* %7, align 4
  %48 = call i32 @icc_interrupt(%struct.IsdnCardState* %46, i32 %47)
  %49 = load %struct.IsdnCardState*, %struct.IsdnCardState** %6, align 8
  %50 = load i32, i32* @ICC_MASK, align 4
  %51 = call i32 @NETjet_WriteIC(%struct.IsdnCardState* %49, i32 %50, i32 255)
  %52 = load %struct.IsdnCardState*, %struct.IsdnCardState** %6, align 8
  %53 = load i32, i32* @ICC_MASK, align 4
  %54 = call i32 @NETjet_WriteIC(%struct.IsdnCardState* %52, i32 %53, i32 0)
  br label %55

55:                                               ; preds = %45, %42
  br label %56

56:                                               ; preds = %55, %2
  %57 = load %struct.IsdnCardState*, %struct.IsdnCardState** %6, align 8
  %58 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %57, i32 0, i32 3
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 2
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* @NETJET_DMA_WRITE_ADR, align 8
  %63 = add nsw i64 %61, %62
  %64 = call i64 @inl(i64 %63)
  %65 = load %struct.IsdnCardState*, %struct.IsdnCardState** %6, align 8
  %66 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %65, i32 0, i32 3
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i32 0, i32 2
  %69 = load i64, i64* %68, align 8
  %70 = load i64, i64* @NETJET_DMA_WRITE_IRQ, align 8
  %71 = add nsw i64 %69, %70
  %72 = call i64 @inl(i64 %71)
  %73 = icmp slt i64 %64, %72
  br i1 %73, label %74, label %75

74:                                               ; preds = %56
  store i32 8, i32* %8, align 4
  br label %76

75:                                               ; preds = %56
  store i32 4, i32* %8, align 4
  br label %76

76:                                               ; preds = %75, %74
  %77 = load %struct.IsdnCardState*, %struct.IsdnCardState** %6, align 8
  %78 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %77, i32 0, i32 3
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %79, i32 0, i32 2
  %81 = load i64, i64* %80, align 8
  %82 = load i64, i64* @NETJET_DMA_READ_ADR, align 8
  %83 = add nsw i64 %81, %82
  %84 = call i64 @inl(i64 %83)
  %85 = load %struct.IsdnCardState*, %struct.IsdnCardState** %6, align 8
  %86 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %85, i32 0, i32 3
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %87, i32 0, i32 2
  %89 = load i64, i64* %88, align 8
  %90 = load i64, i64* @NETJET_DMA_READ_IRQ, align 8
  %91 = add nsw i64 %89, %90
  %92 = call i64 @inl(i64 %91)
  %93 = icmp slt i64 %84, %92
  br i1 %93, label %94, label %97

94:                                               ; preds = %76
  %95 = load i32, i32* %8, align 4
  %96 = or i32 %95, 2
  store i32 %96, i32* %8, align 4
  br label %100

97:                                               ; preds = %76
  %98 = load i32, i32* %8, align 4
  %99 = or i32 %98, 1
  store i32 %99, i32* %8, align 4
  br label %100

100:                                              ; preds = %97, %94
  %101 = load i32, i32* %8, align 4
  %102 = load %struct.IsdnCardState*, %struct.IsdnCardState** %6, align 8
  %103 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %102, i32 0, i32 3
  %104 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = icmp ne i32 %101, %106
  br i1 %107, label %108, label %168

108:                                              ; preds = %100
  %109 = load i32, i32* @FLG_LOCK_ATOMIC, align 4
  %110 = load %struct.IsdnCardState*, %struct.IsdnCardState** %6, align 8
  %111 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %110, i32 0, i32 2
  %112 = call i64 @test_and_set_bit(i32 %109, i32* %111)
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %120

114:                                              ; preds = %108
  %115 = load %struct.IsdnCardState*, %struct.IsdnCardState** %6, align 8
  %116 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %115, i32 0, i32 1
  %117 = load i32, i32* %9, align 4
  %118 = call i32 @spin_unlock_irqrestore(i32* %116, i32 %117)
  %119 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %119, i32* %3, align 4
  br label %174

120:                                              ; preds = %108
  %121 = load i32, i32* %8, align 4
  %122 = load %struct.IsdnCardState*, %struct.IsdnCardState** %6, align 8
  %123 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %122, i32 0, i32 3
  %124 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %123, i32 0, i32 0
  %125 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %124, i32 0, i32 1
  store i32 %121, i32* %125, align 4
  %126 = load %struct.IsdnCardState*, %struct.IsdnCardState** %6, align 8
  %127 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %126, i32 0, i32 3
  %128 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %127, i32 0, i32 0
  %129 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %128, i32 0, i32 1
  %130 = load i32, i32* %129, align 4
  %131 = load i32, i32* @NETJET_IRQM0_READ, align 4
  %132 = and i32 %130, %131
  %133 = load %struct.IsdnCardState*, %struct.IsdnCardState** %6, align 8
  %134 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %133, i32 0, i32 3
  %135 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %134, i32 0, i32 0
  %136 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 8
  %138 = load i32, i32* @NETJET_IRQM0_READ, align 4
  %139 = and i32 %137, %138
  %140 = icmp ne i32 %132, %139
  br i1 %140, label %141, label %144

141:                                              ; preds = %120
  %142 = load %struct.IsdnCardState*, %struct.IsdnCardState** %6, align 8
  %143 = call i32 @read_tiger(%struct.IsdnCardState* %142)
  br label %144

144:                                              ; preds = %141, %120
  %145 = load %struct.IsdnCardState*, %struct.IsdnCardState** %6, align 8
  %146 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %145, i32 0, i32 3
  %147 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %146, i32 0, i32 0
  %148 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %147, i32 0, i32 1
  %149 = load i32, i32* %148, align 4
  %150 = load i32, i32* @NETJET_IRQM0_WRITE, align 4
  %151 = and i32 %149, %150
  %152 = load %struct.IsdnCardState*, %struct.IsdnCardState** %6, align 8
  %153 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %152, i32 0, i32 3
  %154 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %153, i32 0, i32 0
  %155 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 8
  %157 = load i32, i32* @NETJET_IRQM0_WRITE, align 4
  %158 = and i32 %156, %157
  %159 = icmp ne i32 %151, %158
  br i1 %159, label %160, label %163

160:                                              ; preds = %144
  %161 = load %struct.IsdnCardState*, %struct.IsdnCardState** %6, align 8
  %162 = call i32 @write_tiger(%struct.IsdnCardState* %161)
  br label %163

163:                                              ; preds = %160, %144
  %164 = load i32, i32* @FLG_LOCK_ATOMIC, align 4
  %165 = load %struct.IsdnCardState*, %struct.IsdnCardState** %6, align 8
  %166 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %165, i32 0, i32 2
  %167 = call i32 @test_and_clear_bit(i32 %164, i32* %166)
  br label %168

168:                                              ; preds = %163, %100
  %169 = load %struct.IsdnCardState*, %struct.IsdnCardState** %6, align 8
  %170 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %169, i32 0, i32 1
  %171 = load i32, i32* %9, align 4
  %172 = call i32 @spin_unlock_irqrestore(i32* %170, i32 %171)
  %173 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %173, i32* %3, align 4
  br label %174

174:                                              ; preds = %168, %114
  %175 = load i32, i32* %3, align 4
  ret i32 %175
}

declare dso_local i32 @spin_lock_irqsave(i32*, i32) #1

declare dso_local i32 @bytein(i64) #1

declare dso_local i32 @NETjet_ReadIC(%struct.IsdnCardState*, i32) #1

declare dso_local i32 @debugl1(%struct.IsdnCardState*, i8*, i32, i32) #1

declare dso_local i32 @icc_interrupt(%struct.IsdnCardState*, i32) #1

declare dso_local i32 @NETjet_WriteIC(%struct.IsdnCardState*, i32, i32) #1

declare dso_local i64 @inl(i64) #1

declare dso_local i64 @test_and_set_bit(i32, i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i32) #1

declare dso_local i32 @read_tiger(%struct.IsdnCardState*) #1

declare dso_local i32 @write_tiger(%struct.IsdnCardState*) #1

declare dso_local i32 @test_and_clear_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
