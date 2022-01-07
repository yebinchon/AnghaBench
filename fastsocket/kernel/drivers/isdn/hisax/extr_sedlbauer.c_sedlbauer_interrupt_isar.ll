; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hisax/extr_sedlbauer.c_sedlbauer_interrupt_isar.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hisax/extr_sedlbauer.c_sedlbauer_interrupt_isar.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.IsdnCardState = type { i32, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32, i32 }

@ISAR_IRQBIT = common dso_local global i32 0, align 4
@ISAR_IRQSTA = common dso_local global i32 0, align 4
@ISAC_ISTA = common dso_local global i32 0, align 4
@L1_DEB_HSCX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"ISAR IntStat after IntRoutine\00", align 1
@L1_DEB_ISAC = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"ISAC IntStat after IntRoutine\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"Sedlbauer IRQ LOOP\00", align 1
@ISAC_MASK = common dso_local global i32 0, align 4
@ISAR_IRQMSK = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @sedlbauer_interrupt_isar to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sedlbauer_interrupt_isar(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.IsdnCardState*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = bitcast i8* %9 to %struct.IsdnCardState*
  store %struct.IsdnCardState* %10, %struct.IsdnCardState** %5, align 8
  store i32 5, i32* %7, align 4
  %11 = load %struct.IsdnCardState*, %struct.IsdnCardState** %5, align 8
  %12 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %11, i32 0, i32 1
  %13 = load i32, i32* %8, align 4
  %14 = call i32 @spin_lock_irqsave(i32* %12, i32 %13)
  %15 = load %struct.IsdnCardState*, %struct.IsdnCardState** %5, align 8
  %16 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %15, i32 0, i32 2
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.IsdnCardState*, %struct.IsdnCardState** %5, align 8
  %21 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %20, i32 0, i32 2
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @ISAR_IRQBIT, align 4
  %26 = call i32 @readreg(i32 %19, i32 %24, i32 %25)
  store i32 %26, i32* %6, align 4
  br label %27

27:                                               ; preds = %86, %2
  %28 = load i32, i32* %6, align 4
  %29 = load i32, i32* @ISAR_IRQSTA, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %27
  %33 = load %struct.IsdnCardState*, %struct.IsdnCardState** %5, align 8
  %34 = call i32 @isar_int_main(%struct.IsdnCardState* %33)
  br label %35

35:                                               ; preds = %32, %27
  %36 = load %struct.IsdnCardState*, %struct.IsdnCardState** %5, align 8
  %37 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %36, i32 0, i32 2
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.IsdnCardState*, %struct.IsdnCardState** %5, align 8
  %42 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %41, i32 0, i32 2
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* @ISAC_ISTA, align 4
  %47 = call i32 @readreg(i32 %40, i32 %45, i32 %46)
  store i32 %47, i32* %6, align 4
  br label %48

48:                                               ; preds = %116, %35
  %49 = load i32, i32* %6, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %55

51:                                               ; preds = %48
  %52 = load %struct.IsdnCardState*, %struct.IsdnCardState** %5, align 8
  %53 = load i32, i32* %6, align 4
  %54 = call i32 @isac_interrupt(%struct.IsdnCardState* %52, i32 %53)
  br label %55

55:                                               ; preds = %51, %48
  %56 = load %struct.IsdnCardState*, %struct.IsdnCardState** %5, align 8
  %57 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %56, i32 0, i32 2
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.IsdnCardState*, %struct.IsdnCardState** %5, align 8
  %62 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %61, i32 0, i32 2
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* @ISAR_IRQBIT, align 4
  %67 = call i32 @readreg(i32 %60, i32 %65, i32 %66)
  store i32 %67, i32* %6, align 4
  %68 = load i32, i32* %6, align 4
  %69 = load i32, i32* @ISAR_IRQSTA, align 4
  %70 = and i32 %68, %69
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %87

72:                                               ; preds = %55
  %73 = load i32, i32* %7, align 4
  %74 = add nsw i32 %73, -1
  store i32 %74, i32* %7, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %87

76:                                               ; preds = %72
  %77 = load %struct.IsdnCardState*, %struct.IsdnCardState** %5, align 8
  %78 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = load i32, i32* @L1_DEB_HSCX, align 4
  %81 = and i32 %79, %80
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %86

83:                                               ; preds = %76
  %84 = load %struct.IsdnCardState*, %struct.IsdnCardState** %5, align 8
  %85 = call i32 @debugl1(%struct.IsdnCardState* %84, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  br label %86

86:                                               ; preds = %83, %76
  br label %27

87:                                               ; preds = %72, %55
  %88 = load %struct.IsdnCardState*, %struct.IsdnCardState** %5, align 8
  %89 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %88, i32 0, i32 2
  %90 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = load %struct.IsdnCardState*, %struct.IsdnCardState** %5, align 8
  %94 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %93, i32 0, i32 2
  %95 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %95, i32 0, i32 2
  %97 = load i32, i32* %96, align 4
  %98 = load i32, i32* @ISAC_ISTA, align 4
  %99 = call i32 @readreg(i32 %92, i32 %97, i32 %98)
  store i32 %99, i32* %6, align 4
  %100 = load i32, i32* %6, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %117

102:                                              ; preds = %87
  %103 = load i32, i32* %7, align 4
  %104 = add nsw i32 %103, -1
  store i32 %104, i32* %7, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %117

106:                                              ; preds = %102
  %107 = load %struct.IsdnCardState*, %struct.IsdnCardState** %5, align 8
  %108 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  %110 = load i32, i32* @L1_DEB_ISAC, align 4
  %111 = and i32 %109, %110
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %116

113:                                              ; preds = %106
  %114 = load %struct.IsdnCardState*, %struct.IsdnCardState** %5, align 8
  %115 = call i32 @debugl1(%struct.IsdnCardState* %114, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  br label %116

116:                                              ; preds = %113, %106
  br label %48

117:                                              ; preds = %102, %87
  %118 = load i32, i32* %7, align 4
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %131, label %120

120:                                              ; preds = %117
  %121 = load %struct.IsdnCardState*, %struct.IsdnCardState** %5, align 8
  %122 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 4
  %124 = load i32, i32* @L1_DEB_ISAC, align 4
  %125 = and i32 %123, %124
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %130

127:                                              ; preds = %120
  %128 = load %struct.IsdnCardState*, %struct.IsdnCardState** %5, align 8
  %129 = call i32 @debugl1(%struct.IsdnCardState* %128, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0))
  br label %130

130:                                              ; preds = %127, %120
  br label %131

131:                                              ; preds = %130, %117
  %132 = load %struct.IsdnCardState*, %struct.IsdnCardState** %5, align 8
  %133 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %132, i32 0, i32 2
  %134 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %133, i32 0, i32 0
  %135 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %134, i32 0, i32 1
  %136 = load i32, i32* %135, align 4
  %137 = load %struct.IsdnCardState*, %struct.IsdnCardState** %5, align 8
  %138 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %137, i32 0, i32 2
  %139 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %138, i32 0, i32 0
  %140 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 4
  %142 = load i32, i32* @ISAR_IRQBIT, align 4
  %143 = call i32 @writereg(i32 %136, i32 %141, i32 %142, i32 0)
  %144 = load %struct.IsdnCardState*, %struct.IsdnCardState** %5, align 8
  %145 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %144, i32 0, i32 2
  %146 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %145, i32 0, i32 0
  %147 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %146, i32 0, i32 1
  %148 = load i32, i32* %147, align 4
  %149 = load %struct.IsdnCardState*, %struct.IsdnCardState** %5, align 8
  %150 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %149, i32 0, i32 2
  %151 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %150, i32 0, i32 0
  %152 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %151, i32 0, i32 2
  %153 = load i32, i32* %152, align 4
  %154 = load i32, i32* @ISAC_MASK, align 4
  %155 = call i32 @writereg(i32 %148, i32 %153, i32 %154, i32 255)
  %156 = load %struct.IsdnCardState*, %struct.IsdnCardState** %5, align 8
  %157 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %156, i32 0, i32 2
  %158 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %157, i32 0, i32 0
  %159 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %158, i32 0, i32 1
  %160 = load i32, i32* %159, align 4
  %161 = load %struct.IsdnCardState*, %struct.IsdnCardState** %5, align 8
  %162 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %161, i32 0, i32 2
  %163 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %162, i32 0, i32 0
  %164 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %163, i32 0, i32 2
  %165 = load i32, i32* %164, align 4
  %166 = load i32, i32* @ISAC_MASK, align 4
  %167 = call i32 @writereg(i32 %160, i32 %165, i32 %166, i32 0)
  %168 = load %struct.IsdnCardState*, %struct.IsdnCardState** %5, align 8
  %169 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %168, i32 0, i32 2
  %170 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %169, i32 0, i32 0
  %171 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %170, i32 0, i32 1
  %172 = load i32, i32* %171, align 4
  %173 = load %struct.IsdnCardState*, %struct.IsdnCardState** %5, align 8
  %174 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %173, i32 0, i32 2
  %175 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %174, i32 0, i32 0
  %176 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %175, i32 0, i32 0
  %177 = load i32, i32* %176, align 4
  %178 = load i32, i32* @ISAR_IRQBIT, align 4
  %179 = load i32, i32* @ISAR_IRQMSK, align 4
  %180 = call i32 @writereg(i32 %172, i32 %177, i32 %178, i32 %179)
  %181 = load %struct.IsdnCardState*, %struct.IsdnCardState** %5, align 8
  %182 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %181, i32 0, i32 1
  %183 = load i32, i32* %8, align 4
  %184 = call i32 @spin_unlock_irqrestore(i32* %182, i32 %183)
  %185 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %185
}

declare dso_local i32 @spin_lock_irqsave(i32*, i32) #1

declare dso_local i32 @readreg(i32, i32, i32) #1

declare dso_local i32 @isar_int_main(%struct.IsdnCardState*) #1

declare dso_local i32 @isac_interrupt(%struct.IsdnCardState*, i32) #1

declare dso_local i32 @debugl1(%struct.IsdnCardState*, i8*) #1

declare dso_local i32 @writereg(i32, i32, i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
