; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hisax/extr_mic.c_mic_interrupt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hisax/extr_mic.c_mic_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.IsdnCardState = type { i32, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32, i32 }

@HSCX_ISTA = common dso_local global i64 0, align 8
@ISAC_ISTA = common dso_local global i64 0, align 8
@L1_DEB_HSCX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"HSCX IntStat after IntRoutine\00", align 1
@L1_DEB_ISAC = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"ISAC IntStat after IntRoutine\00", align 1
@HSCX_MASK = common dso_local global i64 0, align 8
@ISAC_MASK = common dso_local global i64 0, align 8
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @mic_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mic_interrupt(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.IsdnCardState*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = bitcast i8* %8 to %struct.IsdnCardState*
  store %struct.IsdnCardState* %9, %struct.IsdnCardState** %5, align 8
  %10 = load %struct.IsdnCardState*, %struct.IsdnCardState** %5, align 8
  %11 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %10, i32 0, i32 1
  %12 = load i32, i32* %7, align 4
  %13 = call i32 @spin_lock_irqsave(i32* %11, i32 %12)
  %14 = load %struct.IsdnCardState*, %struct.IsdnCardState** %5, align 8
  %15 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %14, i32 0, i32 2
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.IsdnCardState*, %struct.IsdnCardState** %5, align 8
  %20 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %19, i32 0, i32 2
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i64, i64* @HSCX_ISTA, align 8
  %25 = add nsw i64 %24, 64
  %26 = call i64 @readreg(i32 %18, i32 %23, i64 %25)
  store i64 %26, i64* %6, align 8
  br label %27

27:                                               ; preds = %80, %2
  %28 = load i64, i64* %6, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %27
  %31 = load %struct.IsdnCardState*, %struct.IsdnCardState** %5, align 8
  %32 = load i64, i64* %6, align 8
  %33 = call i32 @hscx_int_main(%struct.IsdnCardState* %31, i64 %32)
  br label %34

34:                                               ; preds = %30, %27
  %35 = load %struct.IsdnCardState*, %struct.IsdnCardState** %5, align 8
  %36 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %35, i32 0, i32 2
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.IsdnCardState*, %struct.IsdnCardState** %5, align 8
  %41 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %40, i32 0, i32 2
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 4
  %45 = load i64, i64* @ISAC_ISTA, align 8
  %46 = call i64 @readreg(i32 %39, i32 %44, i64 %45)
  store i64 %46, i64* %6, align 8
  br label %47

47:                                               ; preds = %106, %34
  %48 = load i64, i64* %6, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %54

50:                                               ; preds = %47
  %51 = load %struct.IsdnCardState*, %struct.IsdnCardState** %5, align 8
  %52 = load i64, i64* %6, align 8
  %53 = call i32 @isac_interrupt(%struct.IsdnCardState* %51, i64 %52)
  br label %54

54:                                               ; preds = %50, %47
  %55 = load %struct.IsdnCardState*, %struct.IsdnCardState** %5, align 8
  %56 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %55, i32 0, i32 2
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.IsdnCardState*, %struct.IsdnCardState** %5, align 8
  %61 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %60, i32 0, i32 2
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = load i64, i64* @HSCX_ISTA, align 8
  %66 = add nsw i64 %65, 64
  %67 = call i64 @readreg(i32 %59, i32 %64, i64 %66)
  store i64 %67, i64* %6, align 8
  %68 = load i64, i64* %6, align 8
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %81

70:                                               ; preds = %54
  %71 = load %struct.IsdnCardState*, %struct.IsdnCardState** %5, align 8
  %72 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = load i32, i32* @L1_DEB_HSCX, align 4
  %75 = and i32 %73, %74
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %80

77:                                               ; preds = %70
  %78 = load %struct.IsdnCardState*, %struct.IsdnCardState** %5, align 8
  %79 = call i32 @debugl1(%struct.IsdnCardState* %78, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  br label %80

80:                                               ; preds = %77, %70
  br label %27

81:                                               ; preds = %54
  %82 = load %struct.IsdnCardState*, %struct.IsdnCardState** %5, align 8
  %83 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %82, i32 0, i32 2
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = load %struct.IsdnCardState*, %struct.IsdnCardState** %5, align 8
  %88 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %87, i32 0, i32 2
  %89 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %89, i32 0, i32 2
  %91 = load i32, i32* %90, align 4
  %92 = load i64, i64* @ISAC_ISTA, align 8
  %93 = call i64 @readreg(i32 %86, i32 %91, i64 %92)
  store i64 %93, i64* %6, align 8
  %94 = load i64, i64* %6, align 8
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %107

96:                                               ; preds = %81
  %97 = load %struct.IsdnCardState*, %struct.IsdnCardState** %5, align 8
  %98 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = load i32, i32* @L1_DEB_ISAC, align 4
  %101 = and i32 %99, %100
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %106

103:                                              ; preds = %96
  %104 = load %struct.IsdnCardState*, %struct.IsdnCardState** %5, align 8
  %105 = call i32 @debugl1(%struct.IsdnCardState* %104, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  br label %106

106:                                              ; preds = %103, %96
  br label %47

107:                                              ; preds = %81
  %108 = load %struct.IsdnCardState*, %struct.IsdnCardState** %5, align 8
  %109 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %108, i32 0, i32 2
  %110 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %109, i32 0, i32 0
  %111 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 4
  %113 = load %struct.IsdnCardState*, %struct.IsdnCardState** %5, align 8
  %114 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %113, i32 0, i32 2
  %115 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %114, i32 0, i32 0
  %116 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 4
  %118 = load i64, i64* @HSCX_MASK, align 8
  %119 = call i32 @writereg(i32 %112, i32 %117, i64 %118, i32 255)
  %120 = load %struct.IsdnCardState*, %struct.IsdnCardState** %5, align 8
  %121 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %120, i32 0, i32 2
  %122 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %121, i32 0, i32 0
  %123 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %122, i32 0, i32 1
  %124 = load i32, i32* %123, align 4
  %125 = load %struct.IsdnCardState*, %struct.IsdnCardState** %5, align 8
  %126 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %125, i32 0, i32 2
  %127 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %126, i32 0, i32 0
  %128 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 4
  %130 = load i64, i64* @HSCX_MASK, align 8
  %131 = add nsw i64 %130, 64
  %132 = call i32 @writereg(i32 %124, i32 %129, i64 %131, i32 255)
  %133 = load %struct.IsdnCardState*, %struct.IsdnCardState** %5, align 8
  %134 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %133, i32 0, i32 2
  %135 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %134, i32 0, i32 0
  %136 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %135, i32 0, i32 1
  %137 = load i32, i32* %136, align 4
  %138 = load %struct.IsdnCardState*, %struct.IsdnCardState** %5, align 8
  %139 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %138, i32 0, i32 2
  %140 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %139, i32 0, i32 0
  %141 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %140, i32 0, i32 2
  %142 = load i32, i32* %141, align 4
  %143 = load i64, i64* @ISAC_MASK, align 8
  %144 = call i32 @writereg(i32 %137, i32 %142, i64 %143, i32 255)
  %145 = load %struct.IsdnCardState*, %struct.IsdnCardState** %5, align 8
  %146 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %145, i32 0, i32 2
  %147 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %146, i32 0, i32 0
  %148 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %147, i32 0, i32 1
  %149 = load i32, i32* %148, align 4
  %150 = load %struct.IsdnCardState*, %struct.IsdnCardState** %5, align 8
  %151 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %150, i32 0, i32 2
  %152 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %151, i32 0, i32 0
  %153 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %152, i32 0, i32 2
  %154 = load i32, i32* %153, align 4
  %155 = load i64, i64* @ISAC_MASK, align 8
  %156 = call i32 @writereg(i32 %149, i32 %154, i64 %155, i32 0)
  %157 = load %struct.IsdnCardState*, %struct.IsdnCardState** %5, align 8
  %158 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %157, i32 0, i32 2
  %159 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %158, i32 0, i32 0
  %160 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %159, i32 0, i32 1
  %161 = load i32, i32* %160, align 4
  %162 = load %struct.IsdnCardState*, %struct.IsdnCardState** %5, align 8
  %163 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %162, i32 0, i32 2
  %164 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %163, i32 0, i32 0
  %165 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %164, i32 0, i32 0
  %166 = load i32, i32* %165, align 4
  %167 = load i64, i64* @HSCX_MASK, align 8
  %168 = call i32 @writereg(i32 %161, i32 %166, i64 %167, i32 0)
  %169 = load %struct.IsdnCardState*, %struct.IsdnCardState** %5, align 8
  %170 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %169, i32 0, i32 2
  %171 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %170, i32 0, i32 0
  %172 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %171, i32 0, i32 1
  %173 = load i32, i32* %172, align 4
  %174 = load %struct.IsdnCardState*, %struct.IsdnCardState** %5, align 8
  %175 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %174, i32 0, i32 2
  %176 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %175, i32 0, i32 0
  %177 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %176, i32 0, i32 0
  %178 = load i32, i32* %177, align 4
  %179 = load i64, i64* @HSCX_MASK, align 8
  %180 = add nsw i64 %179, 64
  %181 = call i32 @writereg(i32 %173, i32 %178, i64 %180, i32 0)
  %182 = load %struct.IsdnCardState*, %struct.IsdnCardState** %5, align 8
  %183 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %182, i32 0, i32 1
  %184 = load i32, i32* %7, align 4
  %185 = call i32 @spin_unlock_irqrestore(i32* %183, i32 %184)
  %186 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %186
}

declare dso_local i32 @spin_lock_irqsave(i32*, i32) #1

declare dso_local i64 @readreg(i32, i32, i64) #1

declare dso_local i32 @hscx_int_main(%struct.IsdnCardState*, i64) #1

declare dso_local i32 @isac_interrupt(%struct.IsdnCardState*, i64) #1

declare dso_local i32 @debugl1(%struct.IsdnCardState*, i8*) #1

declare dso_local i32 @writereg(i32, i32, i64, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
