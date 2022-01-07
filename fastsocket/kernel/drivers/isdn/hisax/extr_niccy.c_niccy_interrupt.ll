; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hisax/extr_niccy.c_niccy_interrupt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hisax/extr_niccy.c_niccy_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.IsdnCardState = type { i64, i32, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32, i32, i32, i64 }

@NICCY_PCI = common dso_local global i64 0, align 8
@PCI_IRQ_CTRL_REG = common dso_local global i64 0, align 8
@PCI_IRQ_ASSERT = common dso_local global i32 0, align 4
@IRQ_NONE = common dso_local global i32 0, align 4
@HSCX_ISTA = common dso_local global i64 0, align 8
@ISAC_ISTA = common dso_local global i64 0, align 8
@L1_DEB_HSCX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"HSCX IntStat after IntRoutine\00", align 1
@L1_DEB_ISAC = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"ISAC IntStat after IntRoutine\00", align 1
@HSCX_MASK = common dso_local global i64 0, align 8
@ISAC_MASK = common dso_local global i64 0, align 8
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @niccy_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @niccy_interrupt(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.IsdnCardState*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %10 = load i8*, i8** %5, align 8
  %11 = bitcast i8* %10 to %struct.IsdnCardState*
  store %struct.IsdnCardState* %11, %struct.IsdnCardState** %6, align 8
  %12 = load %struct.IsdnCardState*, %struct.IsdnCardState** %6, align 8
  %13 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %12, i32 0, i32 2
  %14 = load i32, i32* %8, align 4
  %15 = call i32 @spin_lock_irqsave(i32* %13, i32 %14)
  %16 = load %struct.IsdnCardState*, %struct.IsdnCardState** %6, align 8
  %17 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @NICCY_PCI, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %50

21:                                               ; preds = %2
  %22 = load %struct.IsdnCardState*, %struct.IsdnCardState** %6, align 8
  %23 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %22, i32 0, i32 3
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 4
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @PCI_IRQ_CTRL_REG, align 8
  %28 = add nsw i64 %26, %27
  %29 = call i32 @inl(i64 %28)
  store i32 %29, i32* %9, align 4
  %30 = load i32, i32* %9, align 4
  %31 = load i32, i32* @PCI_IRQ_ASSERT, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %40, label %34

34:                                               ; preds = %21
  %35 = load %struct.IsdnCardState*, %struct.IsdnCardState** %6, align 8
  %36 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %35, i32 0, i32 2
  %37 = load i32, i32* %8, align 4
  %38 = call i32 @spin_unlock_irqrestore(i32* %36, i32 %37)
  %39 = load i32, i32* @IRQ_NONE, align 4
  store i32 %39, i32* %3, align 4
  br label %224

40:                                               ; preds = %21
  %41 = load i32, i32* %9, align 4
  %42 = load %struct.IsdnCardState*, %struct.IsdnCardState** %6, align 8
  %43 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %42, i32 0, i32 3
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 4
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @PCI_IRQ_CTRL_REG, align 8
  %48 = add nsw i64 %46, %47
  %49 = call i32 @outl(i32 %41, i64 %48)
  br label %50

50:                                               ; preds = %40, %2
  %51 = load %struct.IsdnCardState*, %struct.IsdnCardState** %6, align 8
  %52 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %51, i32 0, i32 3
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.IsdnCardState*, %struct.IsdnCardState** %6, align 8
  %57 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %56, i32 0, i32 3
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = load i64, i64* @HSCX_ISTA, align 8
  %62 = add nsw i64 %61, 64
  %63 = call i64 @readreg(i32 %55, i32 %60, i64 %62)
  store i64 %63, i64* %7, align 8
  br label %64

64:                                               ; preds = %117, %50
  %65 = load i64, i64* %7, align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %71

67:                                               ; preds = %64
  %68 = load %struct.IsdnCardState*, %struct.IsdnCardState** %6, align 8
  %69 = load i64, i64* %7, align 8
  %70 = call i32 @hscx_int_main(%struct.IsdnCardState* %68, i64 %69)
  br label %71

71:                                               ; preds = %67, %64
  %72 = load %struct.IsdnCardState*, %struct.IsdnCardState** %6, align 8
  %73 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %72, i32 0, i32 3
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %74, i32 0, i32 3
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.IsdnCardState*, %struct.IsdnCardState** %6, align 8
  %78 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %77, i32 0, i32 3
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %79, i32 0, i32 2
  %81 = load i32, i32* %80, align 8
  %82 = load i64, i64* @ISAC_ISTA, align 8
  %83 = call i64 @readreg(i32 %76, i32 %81, i64 %82)
  store i64 %83, i64* %7, align 8
  br label %84

84:                                               ; preds = %143, %71
  %85 = load i64, i64* %7, align 8
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %91

87:                                               ; preds = %84
  %88 = load %struct.IsdnCardState*, %struct.IsdnCardState** %6, align 8
  %89 = load i64, i64* %7, align 8
  %90 = call i32 @isac_interrupt(%struct.IsdnCardState* %88, i64 %89)
  br label %91

91:                                               ; preds = %87, %84
  %92 = load %struct.IsdnCardState*, %struct.IsdnCardState** %6, align 8
  %93 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %92, i32 0, i32 3
  %94 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  %97 = load %struct.IsdnCardState*, %struct.IsdnCardState** %6, align 8
  %98 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %97, i32 0, i32 3
  %99 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = load i64, i64* @HSCX_ISTA, align 8
  %103 = add nsw i64 %102, 64
  %104 = call i64 @readreg(i32 %96, i32 %101, i64 %103)
  store i64 %104, i64* %7, align 8
  %105 = load i64, i64* %7, align 8
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %118

107:                                              ; preds = %91
  %108 = load %struct.IsdnCardState*, %struct.IsdnCardState** %6, align 8
  %109 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 8
  %111 = load i32, i32* @L1_DEB_HSCX, align 4
  %112 = and i32 %110, %111
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %117

114:                                              ; preds = %107
  %115 = load %struct.IsdnCardState*, %struct.IsdnCardState** %6, align 8
  %116 = call i32 @debugl1(%struct.IsdnCardState* %115, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  br label %117

117:                                              ; preds = %114, %107
  br label %64

118:                                              ; preds = %91
  %119 = load %struct.IsdnCardState*, %struct.IsdnCardState** %6, align 8
  %120 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %119, i32 0, i32 3
  %121 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %120, i32 0, i32 0
  %122 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %121, i32 0, i32 3
  %123 = load i32, i32* %122, align 4
  %124 = load %struct.IsdnCardState*, %struct.IsdnCardState** %6, align 8
  %125 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %124, i32 0, i32 3
  %126 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %125, i32 0, i32 0
  %127 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %126, i32 0, i32 2
  %128 = load i32, i32* %127, align 8
  %129 = load i64, i64* @ISAC_ISTA, align 8
  %130 = call i64 @readreg(i32 %123, i32 %128, i64 %129)
  store i64 %130, i64* %7, align 8
  %131 = load i64, i64* %7, align 8
  %132 = icmp ne i64 %131, 0
  br i1 %132, label %133, label %144

133:                                              ; preds = %118
  %134 = load %struct.IsdnCardState*, %struct.IsdnCardState** %6, align 8
  %135 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %134, i32 0, i32 1
  %136 = load i32, i32* %135, align 8
  %137 = load i32, i32* @L1_DEB_ISAC, align 4
  %138 = and i32 %136, %137
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %140, label %143

140:                                              ; preds = %133
  %141 = load %struct.IsdnCardState*, %struct.IsdnCardState** %6, align 8
  %142 = call i32 @debugl1(%struct.IsdnCardState* %141, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  br label %143

143:                                              ; preds = %140, %133
  br label %84

144:                                              ; preds = %118
  %145 = load %struct.IsdnCardState*, %struct.IsdnCardState** %6, align 8
  %146 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %145, i32 0, i32 3
  %147 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %146, i32 0, i32 0
  %148 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %147, i32 0, i32 1
  %149 = load i32, i32* %148, align 4
  %150 = load %struct.IsdnCardState*, %struct.IsdnCardState** %6, align 8
  %151 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %150, i32 0, i32 3
  %152 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %151, i32 0, i32 0
  %153 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 8
  %155 = load i64, i64* @HSCX_MASK, align 8
  %156 = call i32 @writereg(i32 %149, i32 %154, i64 %155, i32 255)
  %157 = load %struct.IsdnCardState*, %struct.IsdnCardState** %6, align 8
  %158 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %157, i32 0, i32 3
  %159 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %158, i32 0, i32 0
  %160 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %159, i32 0, i32 1
  %161 = load i32, i32* %160, align 4
  %162 = load %struct.IsdnCardState*, %struct.IsdnCardState** %6, align 8
  %163 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %162, i32 0, i32 3
  %164 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %163, i32 0, i32 0
  %165 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %164, i32 0, i32 0
  %166 = load i32, i32* %165, align 8
  %167 = load i64, i64* @HSCX_MASK, align 8
  %168 = add nsw i64 %167, 64
  %169 = call i32 @writereg(i32 %161, i32 %166, i64 %168, i32 255)
  %170 = load %struct.IsdnCardState*, %struct.IsdnCardState** %6, align 8
  %171 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %170, i32 0, i32 3
  %172 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %171, i32 0, i32 0
  %173 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %172, i32 0, i32 3
  %174 = load i32, i32* %173, align 4
  %175 = load %struct.IsdnCardState*, %struct.IsdnCardState** %6, align 8
  %176 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %175, i32 0, i32 3
  %177 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %176, i32 0, i32 0
  %178 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %177, i32 0, i32 2
  %179 = load i32, i32* %178, align 8
  %180 = load i64, i64* @ISAC_MASK, align 8
  %181 = call i32 @writereg(i32 %174, i32 %179, i64 %180, i32 255)
  %182 = load %struct.IsdnCardState*, %struct.IsdnCardState** %6, align 8
  %183 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %182, i32 0, i32 3
  %184 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %183, i32 0, i32 0
  %185 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %184, i32 0, i32 3
  %186 = load i32, i32* %185, align 4
  %187 = load %struct.IsdnCardState*, %struct.IsdnCardState** %6, align 8
  %188 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %187, i32 0, i32 3
  %189 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %188, i32 0, i32 0
  %190 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %189, i32 0, i32 2
  %191 = load i32, i32* %190, align 8
  %192 = load i64, i64* @ISAC_MASK, align 8
  %193 = call i32 @writereg(i32 %186, i32 %191, i64 %192, i32 0)
  %194 = load %struct.IsdnCardState*, %struct.IsdnCardState** %6, align 8
  %195 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %194, i32 0, i32 3
  %196 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %195, i32 0, i32 0
  %197 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %196, i32 0, i32 1
  %198 = load i32, i32* %197, align 4
  %199 = load %struct.IsdnCardState*, %struct.IsdnCardState** %6, align 8
  %200 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %199, i32 0, i32 3
  %201 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %200, i32 0, i32 0
  %202 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %201, i32 0, i32 0
  %203 = load i32, i32* %202, align 8
  %204 = load i64, i64* @HSCX_MASK, align 8
  %205 = call i32 @writereg(i32 %198, i32 %203, i64 %204, i32 0)
  %206 = load %struct.IsdnCardState*, %struct.IsdnCardState** %6, align 8
  %207 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %206, i32 0, i32 3
  %208 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %207, i32 0, i32 0
  %209 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %208, i32 0, i32 1
  %210 = load i32, i32* %209, align 4
  %211 = load %struct.IsdnCardState*, %struct.IsdnCardState** %6, align 8
  %212 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %211, i32 0, i32 3
  %213 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %212, i32 0, i32 0
  %214 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %213, i32 0, i32 0
  %215 = load i32, i32* %214, align 8
  %216 = load i64, i64* @HSCX_MASK, align 8
  %217 = add nsw i64 %216, 64
  %218 = call i32 @writereg(i32 %210, i32 %215, i64 %217, i32 0)
  %219 = load %struct.IsdnCardState*, %struct.IsdnCardState** %6, align 8
  %220 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %219, i32 0, i32 2
  %221 = load i32, i32* %8, align 4
  %222 = call i32 @spin_unlock_irqrestore(i32* %220, i32 %221)
  %223 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %223, i32* %3, align 4
  br label %224

224:                                              ; preds = %144, %34
  %225 = load i32, i32* %3, align 4
  ret i32 %225
}

declare dso_local i32 @spin_lock_irqsave(i32*, i32) #1

declare dso_local i32 @inl(i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i32) #1

declare dso_local i32 @outl(i32, i64) #1

declare dso_local i64 @readreg(i32, i32, i64) #1

declare dso_local i32 @hscx_int_main(%struct.IsdnCardState*, i64) #1

declare dso_local i32 @isac_interrupt(%struct.IsdnCardState*, i64) #1

declare dso_local i32 @debugl1(%struct.IsdnCardState*, i8*) #1

declare dso_local i32 @writereg(i32, i32, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
