; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/qib/extr_qib_iba7220.c_qib_7220intr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/qib/extr_qib_iba7220.c_qib_7220intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.qib_devdata = type { i32, i64, i32, i32, i32* }

@QIB_PRESENT = common dso_local global i32 0, align 4
@QIB_BADINTR = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@kr_intstatus = common dso_local global i32 0, align 4
@IRQ_NONE = common dso_local global i32 0, align 4
@qib_stats = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@QLOGIC_IB_I_BITSEXTANT = common dso_local global i32 0, align 4
@QLOGIC_IB_I_GPIO = common dso_local global i32 0, align 4
@QLOGIC_IB_I_ERROR = common dso_local global i32 0, align 4
@kr_intclear = common dso_local global i32 0, align 4
@QLOGIC_IB_I_RCVAVAIL_MASK = common dso_local global i32 0, align 4
@QLOGIC_IB_I_RCVAVAIL_SHIFT = common dso_local global i32 0, align 4
@QLOGIC_IB_I_RCVURG_MASK = common dso_local global i32 0, align 4
@QLOGIC_IB_I_RCVURG_SHIFT = common dso_local global i32 0, align 4
@QLOGIC_IB_I_SDMAINT = common dso_local global i32 0, align 4
@QLOGIC_IB_I_SPIOBUFAVAIL = common dso_local global i32 0, align 4
@QIB_INITTED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @qib_7220intr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qib_7220intr(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.qib_devdata*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %11 = load i8*, i8** %4, align 8
  %12 = bitcast i8* %11 to %struct.qib_devdata*
  store %struct.qib_devdata* %12, %struct.qib_devdata** %5, align 8
  %13 = load %struct.qib_devdata*, %struct.qib_devdata** %5, align 8
  %14 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = load i32, i32* @QIB_PRESENT, align 4
  %17 = load i32, i32* @QIB_BADINTR, align 4
  %18 = or i32 %16, %17
  %19 = and i32 %15, %18
  %20 = load i32, i32* @QIB_PRESENT, align 4
  %21 = icmp ne i32 %19, %20
  br i1 %21, label %22, label %24

22:                                               ; preds = %2
  %23 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %23, i32* %6, align 4
  br label %171

24:                                               ; preds = %2
  %25 = load %struct.qib_devdata*, %struct.qib_devdata** %5, align 8
  %26 = load i32, i32* @kr_intstatus, align 4
  %27 = call i32 @qib_read_kreg64(%struct.qib_devdata* %25, i32 %26)
  store i32 %27, i32* %7, align 4
  %28 = load i32, i32* %7, align 4
  %29 = icmp ne i32 %28, 0
  %30 = xor i1 %29, true
  %31 = zext i1 %30 to i32
  %32 = call i64 @unlikely(i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %24
  %35 = load i32, i32* @IRQ_NONE, align 4
  store i32 %35, i32* %6, align 4
  br label %171

36:                                               ; preds = %24
  %37 = load i32, i32* %7, align 4
  %38 = icmp eq i32 %37, -1
  %39 = zext i1 %38 to i32
  %40 = call i64 @unlikely(i32 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %46

42:                                               ; preds = %36
  %43 = load %struct.qib_devdata*, %struct.qib_devdata** %5, align 8
  %44 = call i32 @qib_bad_intrstatus(%struct.qib_devdata* %43)
  %45 = load i32, i32* @IRQ_NONE, align 4
  store i32 %45, i32* %6, align 4
  br label %171

46:                                               ; preds = %36
  %47 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @qib_stats, i32 0, i32 0), align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @qib_stats, i32 0, i32 0), align 4
  %49 = load %struct.qib_devdata*, %struct.qib_devdata** %5, align 8
  %50 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = icmp ne i64 %51, -1
  br i1 %52, label %53, label %58

53:                                               ; preds = %46
  %54 = load %struct.qib_devdata*, %struct.qib_devdata** %5, align 8
  %55 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = add nsw i64 %56, 1
  store i64 %57, i64* %55, align 8
  br label %58

58:                                               ; preds = %53, %46
  %59 = load i32, i32* %7, align 4
  %60 = load i32, i32* @QLOGIC_IB_I_BITSEXTANT, align 4
  %61 = xor i32 %60, -1
  %62 = load i32, i32* @QLOGIC_IB_I_GPIO, align 4
  %63 = or i32 %61, %62
  %64 = load i32, i32* @QLOGIC_IB_I_ERROR, align 4
  %65 = or i32 %63, %64
  %66 = and i32 %59, %65
  %67 = call i64 @unlikely(i32 %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %73

69:                                               ; preds = %58
  %70 = load %struct.qib_devdata*, %struct.qib_devdata** %5, align 8
  %71 = load i32, i32* %7, align 4
  %72 = call i32 @unlikely_7220_intr(%struct.qib_devdata* %70, i32 %71)
  br label %73

73:                                               ; preds = %69, %58
  %74 = load %struct.qib_devdata*, %struct.qib_devdata** %5, align 8
  %75 = load i32, i32* @kr_intclear, align 4
  %76 = load i32, i32* %7, align 4
  %77 = call i32 @qib_write_kreg(%struct.qib_devdata* %74, i32 %75, i32 %76)
  %78 = load i32, i32* %7, align 4
  %79 = load i32, i32* @QLOGIC_IB_I_RCVAVAIL_MASK, align 4
  %80 = load i32, i32* @QLOGIC_IB_I_RCVAVAIL_SHIFT, align 4
  %81 = shl i32 %79, %80
  %82 = load i32, i32* @QLOGIC_IB_I_RCVURG_MASK, align 4
  %83 = load i32, i32* @QLOGIC_IB_I_RCVURG_SHIFT, align 4
  %84 = shl i32 %82, %83
  %85 = or i32 %81, %84
  %86 = and i32 %78, %85
  store i32 %86, i32* %8, align 4
  %87 = load i32, i32* %8, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %143

89:                                               ; preds = %73
  %90 = load i32, i32* @QLOGIC_IB_I_RCVAVAIL_SHIFT, align 4
  %91 = zext i32 %90 to i64
  %92 = shl i64 1, %91
  %93 = load i32, i32* @QLOGIC_IB_I_RCVURG_SHIFT, align 4
  %94 = zext i32 %93 to i64
  %95 = shl i64 1, %94
  %96 = or i64 %92, %95
  %97 = trunc i64 %96 to i32
  store i32 %97, i32* %9, align 4
  store i32 0, i32* %10, align 4
  br label %98

98:                                               ; preds = %125, %89
  %99 = load i32, i32* %10, align 4
  %100 = load %struct.qib_devdata*, %struct.qib_devdata** %5, align 8
  %101 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %100, i32 0, i32 2
  %102 = load i32, i32* %101, align 8
  %103 = icmp ult i32 %99, %102
  br i1 %103, label %104, label %128

104:                                              ; preds = %98
  %105 = load i32, i32* %8, align 4
  %106 = load i32, i32* %9, align 4
  %107 = and i32 %105, %106
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %122

109:                                              ; preds = %104
  %110 = load i32, i32* %9, align 4
  %111 = xor i32 %110, -1
  %112 = load i32, i32* %8, align 4
  %113 = and i32 %112, %111
  store i32 %113, i32* %8, align 4
  %114 = load %struct.qib_devdata*, %struct.qib_devdata** %5, align 8
  %115 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %114, i32 0, i32 4
  %116 = load i32*, i32** %115, align 8
  %117 = load i32, i32* %10, align 4
  %118 = zext i32 %117 to i64
  %119 = getelementptr inbounds i32, i32* %116, i64 %118
  %120 = load i32, i32* %119, align 4
  %121 = call i32 @qib_kreceive(i32 %120, i32* null, i32* null)
  br label %122

122:                                              ; preds = %109, %104
  %123 = load i32, i32* %9, align 4
  %124 = shl i32 %123, 1
  store i32 %124, i32* %9, align 4
  br label %125

125:                                              ; preds = %122
  %126 = load i32, i32* %10, align 4
  %127 = add i32 %126, 1
  store i32 %127, i32* %10, align 4
  br label %98

128:                                              ; preds = %98
  %129 = load i32, i32* %8, align 4
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %142

131:                                              ; preds = %128
  %132 = load i32, i32* %8, align 4
  %133 = load i32, i32* @QLOGIC_IB_I_RCVAVAIL_SHIFT, align 4
  %134 = ashr i32 %132, %133
  %135 = load i32, i32* %8, align 4
  %136 = load i32, i32* @QLOGIC_IB_I_RCVURG_SHIFT, align 4
  %137 = ashr i32 %135, %136
  %138 = or i32 %134, %137
  store i32 %138, i32* %8, align 4
  %139 = load %struct.qib_devdata*, %struct.qib_devdata** %5, align 8
  %140 = load i32, i32* %8, align 4
  %141 = call i32 @qib_handle_urcv(%struct.qib_devdata* %139, i32 %140)
  br label %142

142:                                              ; preds = %131, %128
  br label %143

143:                                              ; preds = %142, %73
  %144 = load i32, i32* %7, align 4
  %145 = load i32, i32* @QLOGIC_IB_I_SDMAINT, align 4
  %146 = and i32 %144, %145
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %154

148:                                              ; preds = %143
  %149 = load %struct.qib_devdata*, %struct.qib_devdata** %5, align 8
  %150 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %149, i32 0, i32 3
  %151 = load i32, i32* %150, align 4
  %152 = load i32, i32* %7, align 4
  %153 = call i32 @sdma_7220_intr(i32 %151, i32 %152)
  br label %154

154:                                              ; preds = %148, %143
  %155 = load i32, i32* %7, align 4
  %156 = load i32, i32* @QLOGIC_IB_I_SPIOBUFAVAIL, align 4
  %157 = and i32 %155, %156
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %159, label %169

159:                                              ; preds = %154
  %160 = load %struct.qib_devdata*, %struct.qib_devdata** %5, align 8
  %161 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %160, i32 0, i32 0
  %162 = load i32, i32* %161, align 8
  %163 = load i32, i32* @QIB_INITTED, align 4
  %164 = and i32 %162, %163
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %166, label %169

166:                                              ; preds = %159
  %167 = load %struct.qib_devdata*, %struct.qib_devdata** %5, align 8
  %168 = call i32 @qib_ib_piobufavail(%struct.qib_devdata* %167)
  br label %169

169:                                              ; preds = %166, %159, %154
  %170 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %170, i32* %6, align 4
  br label %171

171:                                              ; preds = %169, %42, %34, %22
  %172 = load i32, i32* %6, align 4
  ret i32 %172
}

declare dso_local i32 @qib_read_kreg64(%struct.qib_devdata*, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @qib_bad_intrstatus(%struct.qib_devdata*) #1

declare dso_local i32 @unlikely_7220_intr(%struct.qib_devdata*, i32) #1

declare dso_local i32 @qib_write_kreg(%struct.qib_devdata*, i32, i32) #1

declare dso_local i32 @qib_kreceive(i32, i32*, i32*) #1

declare dso_local i32 @qib_handle_urcv(%struct.qib_devdata*, i32) #1

declare dso_local i32 @sdma_7220_intr(i32, i32) #1

declare dso_local i32 @qib_ib_piobufavail(%struct.qib_devdata*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
