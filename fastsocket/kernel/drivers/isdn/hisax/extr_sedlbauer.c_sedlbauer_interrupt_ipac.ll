; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hisax/extr_sedlbauer.c_sedlbauer_interrupt_ipac.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hisax/extr_sedlbauer.c_sedlbauer_interrupt_ipac.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.IsdnCardState = type { i32, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32, i32 }

@IPAC_ISTA = common dso_local global i32 0, align 4
@L1_DEB_IPAC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"IPAC ISTA %02X\00", align 1
@HSCX_ISTA = common dso_local global i32 0, align 4
@ISAC_ISTA = common dso_local global i32 0, align 4
@L1_DEB_ISAC = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [19 x i8] c"Sedlbauer IRQ LOOP\00", align 1
@IPAC_MASK = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @sedlbauer_interrupt_ipac to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sedlbauer_interrupt_ipac(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.IsdnCardState*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %10 = load i8*, i8** %4, align 8
  %11 = bitcast i8* %10 to %struct.IsdnCardState*
  store %struct.IsdnCardState* %11, %struct.IsdnCardState** %5, align 8
  store i32 5, i32* %8, align 4
  %12 = load %struct.IsdnCardState*, %struct.IsdnCardState** %5, align 8
  %13 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %12, i32 0, i32 1
  %14 = load i32, i32* %9, align 4
  %15 = call i32 @spin_lock_irqsave(i32* %13, i32 %14)
  %16 = load %struct.IsdnCardState*, %struct.IsdnCardState** %5, align 8
  %17 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %16, i32 0, i32 2
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.IsdnCardState*, %struct.IsdnCardState** %5, align 8
  %22 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %21, i32 0, i32 2
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @IPAC_ISTA, align 4
  %27 = call i32 @readreg(i32 %20, i32 %25, i32 %26)
  store i32 %27, i32* %6, align 4
  br label %28

28:                                               ; preds = %138, %2
  %29 = load %struct.IsdnCardState*, %struct.IsdnCardState** %5, align 8
  %30 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @L1_DEB_IPAC, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %39

35:                                               ; preds = %28
  %36 = load %struct.IsdnCardState*, %struct.IsdnCardState** %5, align 8
  %37 = load i32, i32* %6, align 4
  %38 = call i32 (%struct.IsdnCardState*, i8*, ...) @debugl1(%struct.IsdnCardState* %36, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 %37)
  br label %39

39:                                               ; preds = %35, %28
  %40 = load i32, i32* %6, align 4
  %41 = and i32 %40, 15
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %85

43:                                               ; preds = %39
  %44 = load %struct.IsdnCardState*, %struct.IsdnCardState** %5, align 8
  %45 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %44, i32 0, i32 2
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.IsdnCardState*, %struct.IsdnCardState** %5, align 8
  %50 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %49, i32 0, i32 2
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* @HSCX_ISTA, align 4
  %55 = add nsw i32 %54, 64
  %56 = call i32 @readreg(i32 %48, i32 %53, i32 %55)
  store i32 %56, i32* %7, align 4
  %57 = load i32, i32* %6, align 4
  %58 = and i32 %57, 1
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %63

60:                                               ; preds = %43
  %61 = load i32, i32* %7, align 4
  %62 = or i32 %61, 1
  store i32 %62, i32* %7, align 4
  br label %63

63:                                               ; preds = %60, %43
  %64 = load i32, i32* %6, align 4
  %65 = and i32 %64, 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %70

67:                                               ; preds = %63
  %68 = load i32, i32* %7, align 4
  %69 = or i32 %68, 2
  store i32 %69, i32* %7, align 4
  br label %70

70:                                               ; preds = %67, %63
  %71 = load i32, i32* %6, align 4
  %72 = and i32 %71, 8
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %77

74:                                               ; preds = %70
  %75 = load i32, i32* %7, align 4
  %76 = or i32 %75, 4
  store i32 %76, i32* %7, align 4
  br label %77

77:                                               ; preds = %74, %70
  %78 = load i32, i32* %7, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %84

80:                                               ; preds = %77
  %81 = load %struct.IsdnCardState*, %struct.IsdnCardState** %5, align 8
  %82 = load i32, i32* %7, align 4
  %83 = call i32 @hscx_int_main(%struct.IsdnCardState* %81, i32 %82)
  br label %84

84:                                               ; preds = %80, %77
  br label %85

85:                                               ; preds = %84, %39
  %86 = load i32, i32* %6, align 4
  %87 = and i32 %86, 32
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %111

89:                                               ; preds = %85
  %90 = load %struct.IsdnCardState*, %struct.IsdnCardState** %5, align 8
  %91 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %90, i32 0, i32 2
  %92 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = load %struct.IsdnCardState*, %struct.IsdnCardState** %5, align 8
  %96 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %95, i32 0, i32 2
  %97 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = load i32, i32* @ISAC_ISTA, align 4
  %101 = or i32 %100, 128
  %102 = call i32 @readreg(i32 %94, i32 %99, i32 %101)
  %103 = and i32 254, %102
  store i32 %103, i32* %7, align 4
  %104 = load i32, i32* %7, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %110

106:                                              ; preds = %89
  %107 = load %struct.IsdnCardState*, %struct.IsdnCardState** %5, align 8
  %108 = load i32, i32* %7, align 4
  %109 = call i32 @isac_interrupt(%struct.IsdnCardState* %107, i32 %108)
  br label %110

110:                                              ; preds = %106, %89
  br label %111

111:                                              ; preds = %110, %85
  %112 = load i32, i32* %6, align 4
  %113 = and i32 %112, 16
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %119

115:                                              ; preds = %111
  store i32 1, i32* %7, align 4
  %116 = load %struct.IsdnCardState*, %struct.IsdnCardState** %5, align 8
  %117 = load i32, i32* %7, align 4
  %118 = call i32 @isac_interrupt(%struct.IsdnCardState* %116, i32 %117)
  br label %119

119:                                              ; preds = %115, %111
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
  %130 = load i32, i32* @IPAC_ISTA, align 4
  %131 = call i32 @readreg(i32 %124, i32 %129, i32 %130)
  store i32 %131, i32* %6, align 4
  %132 = load i32, i32* %6, align 4
  %133 = and i32 %132, 63
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %141

135:                                              ; preds = %119
  %136 = load i32, i32* %8, align 4
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %141

138:                                              ; preds = %135
  %139 = load i32, i32* %8, align 4
  %140 = add nsw i32 %139, -1
  store i32 %140, i32* %8, align 4
  br label %28

141:                                              ; preds = %135, %119
  %142 = load i32, i32* %8, align 4
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %155, label %144

144:                                              ; preds = %141
  %145 = load %struct.IsdnCardState*, %struct.IsdnCardState** %5, align 8
  %146 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 4
  %148 = load i32, i32* @L1_DEB_ISAC, align 4
  %149 = and i32 %147, %148
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %151, label %154

151:                                              ; preds = %144
  %152 = load %struct.IsdnCardState*, %struct.IsdnCardState** %5, align 8
  %153 = call i32 (%struct.IsdnCardState*, i8*, ...) @debugl1(%struct.IsdnCardState* %152, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  br label %154

154:                                              ; preds = %151, %144
  br label %155

155:                                              ; preds = %154, %141
  %156 = load %struct.IsdnCardState*, %struct.IsdnCardState** %5, align 8
  %157 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %156, i32 0, i32 2
  %158 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %157, i32 0, i32 0
  %159 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %158, i32 0, i32 1
  %160 = load i32, i32* %159, align 4
  %161 = load %struct.IsdnCardState*, %struct.IsdnCardState** %5, align 8
  %162 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %161, i32 0, i32 2
  %163 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %162, i32 0, i32 0
  %164 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %163, i32 0, i32 0
  %165 = load i32, i32* %164, align 4
  %166 = load i32, i32* @IPAC_MASK, align 4
  %167 = call i32 @writereg(i32 %160, i32 %165, i32 %166, i32 255)
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
  %178 = load i32, i32* @IPAC_MASK, align 4
  %179 = call i32 @writereg(i32 %172, i32 %177, i32 %178, i32 192)
  %180 = load %struct.IsdnCardState*, %struct.IsdnCardState** %5, align 8
  %181 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %180, i32 0, i32 1
  %182 = load i32, i32* %9, align 4
  %183 = call i32 @spin_unlock_irqrestore(i32* %181, i32 %182)
  %184 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %184
}

declare dso_local i32 @spin_lock_irqsave(i32*, i32) #1

declare dso_local i32 @readreg(i32, i32, i32) #1

declare dso_local i32 @debugl1(%struct.IsdnCardState*, i8*, ...) #1

declare dso_local i32 @hscx_int_main(%struct.IsdnCardState*, i32) #1

declare dso_local i32 @isac_interrupt(%struct.IsdnCardState*, i32) #1

declare dso_local i32 @writereg(i32, i32, i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
