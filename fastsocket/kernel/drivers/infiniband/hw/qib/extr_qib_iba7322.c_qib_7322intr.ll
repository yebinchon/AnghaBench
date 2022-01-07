; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/qib/extr_qib_iba7322.c_qib_7322intr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/qib/extr_qib_iba7322.c_qib_7322intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.qib_devdata = type { i32, i64, i32, i64*, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64 }

@QIB_PRESENT = common dso_local global i32 0, align 4
@QIB_BADINTR = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@kr_intstatus = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"Interrupt status all f's, skipping\0A\00", align 1
@IRQ_NONE = common dso_local global i32 0, align 4
@qib_stats = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@QIB_I_BITSEXTANT = common dso_local global i64 0, align 8
@QIB_I_GPIO = common dso_local global i64 0, align 8
@QIB_I_C_ERROR = common dso_local global i64 0, align 8
@Err = common dso_local global i32 0, align 4
@kr_intclear = common dso_local global i32 0, align 4
@QIB_I_RCVAVAIL_MASK = common dso_local global i64 0, align 8
@QIB_I_RCVURG_MASK = common dso_local global i64 0, align 8
@QIB_I_RCVAVAIL_LSB = common dso_local global i64 0, align 8
@QIB_I_RCVURG_LSB = common dso_local global i64 0, align 8
@QIB_I_SPIOBUFAVAIL = common dso_local global i64 0, align 8
@QIB_INITTED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @qib_7322intr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qib_7322intr(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.qib_devdata*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %12 = load i8*, i8** %4, align 8
  %13 = bitcast i8* %12 to %struct.qib_devdata*
  store %struct.qib_devdata* %13, %struct.qib_devdata** %5, align 8
  %14 = load %struct.qib_devdata*, %struct.qib_devdata** %5, align 8
  %15 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load i32, i32* @QIB_PRESENT, align 4
  %18 = load i32, i32* @QIB_BADINTR, align 4
  %19 = or i32 %17, %18
  %20 = and i32 %16, %19
  %21 = load i32, i32* @QIB_PRESENT, align 4
  %22 = icmp ne i32 %20, %21
  br i1 %22, label %23, label %25

23:                                               ; preds = %2
  %24 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %24, i32* %6, align 4
  br label %192

25:                                               ; preds = %2
  %26 = load %struct.qib_devdata*, %struct.qib_devdata** %5, align 8
  %27 = load i32, i32* @kr_intstatus, align 4
  %28 = call i64 @qib_read_kreg64(%struct.qib_devdata* %26, i32 %27)
  store i64 %28, i64* %7, align 8
  %29 = load i64, i64* %7, align 8
  %30 = icmp eq i64 %29, -1
  %31 = zext i1 %30 to i32
  %32 = sext i32 %31 to i64
  %33 = call i64 @unlikely(i64 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %41

35:                                               ; preds = %25
  %36 = load %struct.qib_devdata*, %struct.qib_devdata** %5, align 8
  %37 = call i32 @qib_bad_intrstatus(%struct.qib_devdata* %36)
  %38 = load %struct.qib_devdata*, %struct.qib_devdata** %5, align 8
  %39 = call i32 @qib_dev_err(%struct.qib_devdata* %38, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  %40 = load i32, i32* @IRQ_NONE, align 4
  store i32 %40, i32* %6, align 4
  br label %192

41:                                               ; preds = %25
  %42 = load %struct.qib_devdata*, %struct.qib_devdata** %5, align 8
  %43 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %42, i32 0, i32 4
  %44 = load %struct.TYPE_3__*, %struct.TYPE_3__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* %7, align 8
  %48 = and i64 %47, %46
  store i64 %48, i64* %7, align 8
  %49 = load i64, i64* %7, align 8
  %50 = icmp ne i64 %49, 0
  %51 = xor i1 %50, true
  %52 = zext i1 %51 to i32
  %53 = sext i32 %52 to i64
  %54 = call i64 @unlikely(i64 %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %41
  %57 = load i32, i32* @IRQ_NONE, align 4
  store i32 %57, i32* %6, align 4
  br label %192

58:                                               ; preds = %41
  %59 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @qib_stats, i32 0, i32 0), align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @qib_stats, i32 0, i32 0), align 4
  %61 = load %struct.qib_devdata*, %struct.qib_devdata** %5, align 8
  %62 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = icmp ne i64 %63, -1
  br i1 %64, label %65, label %70

65:                                               ; preds = %58
  %66 = load %struct.qib_devdata*, %struct.qib_devdata** %5, align 8
  %67 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %66, i32 0, i32 1
  %68 = load i64, i64* %67, align 8
  %69 = add nsw i64 %68, 1
  store i64 %69, i64* %67, align 8
  br label %70

70:                                               ; preds = %65, %58
  %71 = load i64, i64* %7, align 8
  %72 = load i64, i64* @QIB_I_BITSEXTANT, align 8
  %73 = xor i64 %72, -1
  %74 = load i64, i64* @QIB_I_GPIO, align 8
  %75 = or i64 %73, %74
  %76 = load i64, i64* @QIB_I_C_ERROR, align 8
  %77 = or i64 %75, %76
  %78 = load i32, i32* @Err, align 4
  %79 = call i64 @INT_MASK_P(i32 %78, i32 0)
  %80 = or i64 %77, %79
  %81 = load i32, i32* @Err, align 4
  %82 = call i64 @INT_MASK_P(i32 %81, i32 1)
  %83 = or i64 %80, %82
  %84 = and i64 %71, %83
  %85 = call i64 @unlikely(i64 %84)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %91

87:                                               ; preds = %70
  %88 = load %struct.qib_devdata*, %struct.qib_devdata** %5, align 8
  %89 = load i64, i64* %7, align 8
  %90 = call i32 @unlikely_7322_intr(%struct.qib_devdata* %88, i64 %89)
  br label %91

91:                                               ; preds = %87, %70
  %92 = load %struct.qib_devdata*, %struct.qib_devdata** %5, align 8
  %93 = load i32, i32* @kr_intclear, align 4
  %94 = load i64, i64* %7, align 8
  %95 = call i32 @qib_write_kreg(%struct.qib_devdata* %92, i32 %93, i64 %94)
  %96 = load i64, i64* %7, align 8
  %97 = load i64, i64* @QIB_I_RCVAVAIL_MASK, align 8
  %98 = load i64, i64* @QIB_I_RCVURG_MASK, align 8
  %99 = or i64 %97, %98
  %100 = and i64 %96, %99
  store i64 %100, i64* %8, align 8
  %101 = load i64, i64* %8, align 8
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %164

103:                                              ; preds = %91
  %104 = load i64, i64* @QIB_I_RCVAVAIL_LSB, align 8
  %105 = shl i64 1, %104
  %106 = load i64, i64* @QIB_I_RCVURG_LSB, align 8
  %107 = shl i64 1, %106
  %108 = or i64 %105, %107
  store i64 %108, i64* %9, align 8
  store i32 0, i32* %10, align 4
  br label %109

109:                                              ; preds = %146, %103
  %110 = load i32, i32* %10, align 4
  %111 = load %struct.qib_devdata*, %struct.qib_devdata** %5, align 8
  %112 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %111, i32 0, i32 2
  %113 = load i32, i32* %112, align 8
  %114 = icmp ult i32 %110, %113
  br i1 %114, label %115, label %149

115:                                              ; preds = %109
  %116 = load i64, i64* %8, align 8
  %117 = load i64, i64* %9, align 8
  %118 = and i64 %116, %117
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %120, label %143

120:                                              ; preds = %115
  %121 = load i64, i64* %9, align 8
  %122 = xor i64 %121, -1
  %123 = load i64, i64* %8, align 8
  %124 = and i64 %123, %122
  store i64 %124, i64* %8, align 8
  %125 = load %struct.qib_devdata*, %struct.qib_devdata** %5, align 8
  %126 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %125, i32 0, i32 3
  %127 = load i64*, i64** %126, align 8
  %128 = load i32, i32* %10, align 4
  %129 = zext i32 %128 to i64
  %130 = getelementptr inbounds i64, i64* %127, i64 %129
  %131 = load i64, i64* %130, align 8
  %132 = icmp ne i64 %131, 0
  br i1 %132, label %133, label %142

133:                                              ; preds = %120
  %134 = load %struct.qib_devdata*, %struct.qib_devdata** %5, align 8
  %135 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %134, i32 0, i32 3
  %136 = load i64*, i64** %135, align 8
  %137 = load i32, i32* %10, align 4
  %138 = zext i32 %137 to i64
  %139 = getelementptr inbounds i64, i64* %136, i64 %138
  %140 = load i64, i64* %139, align 8
  %141 = call i32 @qib_kreceive(i64 %140, i32* null, i64* %11)
  br label %142

142:                                              ; preds = %133, %120
  br label %143

143:                                              ; preds = %142, %115
  %144 = load i64, i64* %9, align 8
  %145 = shl i64 %144, 1
  store i64 %145, i64* %9, align 8
  br label %146

146:                                              ; preds = %143
  %147 = load i32, i32* %10, align 4
  %148 = add i32 %147, 1
  store i32 %148, i32* %10, align 4
  br label %109

149:                                              ; preds = %109
  %150 = load i64, i64* %8, align 8
  %151 = icmp ne i64 %150, 0
  br i1 %151, label %152, label %163

152:                                              ; preds = %149
  %153 = load i64, i64* %8, align 8
  %154 = load i64, i64* @QIB_I_RCVAVAIL_LSB, align 8
  %155 = lshr i64 %153, %154
  %156 = load i64, i64* %8, align 8
  %157 = load i64, i64* @QIB_I_RCVURG_LSB, align 8
  %158 = lshr i64 %156, %157
  %159 = or i64 %155, %158
  store i64 %159, i64* %8, align 8
  %160 = load %struct.qib_devdata*, %struct.qib_devdata** %5, align 8
  %161 = load i64, i64* %8, align 8
  %162 = call i32 @qib_handle_urcv(%struct.qib_devdata* %160, i64 %161)
  br label %163

163:                                              ; preds = %152, %149
  br label %164

164:                                              ; preds = %163, %91
  %165 = load i64, i64* %7, align 8
  %166 = call i64 @QIB_I_P_SDMAINT(i32 0)
  %167 = call i64 @QIB_I_P_SDMAINT(i32 1)
  %168 = or i64 %166, %167
  %169 = and i64 %165, %168
  %170 = icmp ne i64 %169, 0
  br i1 %170, label %171, label %175

171:                                              ; preds = %164
  %172 = load %struct.qib_devdata*, %struct.qib_devdata** %5, align 8
  %173 = load i64, i64* %7, align 8
  %174 = call i32 @sdma_7322_intr(%struct.qib_devdata* %172, i64 %173)
  br label %175

175:                                              ; preds = %171, %164
  %176 = load i64, i64* %7, align 8
  %177 = load i64, i64* @QIB_I_SPIOBUFAVAIL, align 8
  %178 = and i64 %176, %177
  %179 = icmp ne i64 %178, 0
  br i1 %179, label %180, label %190

180:                                              ; preds = %175
  %181 = load %struct.qib_devdata*, %struct.qib_devdata** %5, align 8
  %182 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %181, i32 0, i32 0
  %183 = load i32, i32* %182, align 8
  %184 = load i32, i32* @QIB_INITTED, align 4
  %185 = and i32 %183, %184
  %186 = icmp ne i32 %185, 0
  br i1 %186, label %187, label %190

187:                                              ; preds = %180
  %188 = load %struct.qib_devdata*, %struct.qib_devdata** %5, align 8
  %189 = call i32 @qib_ib_piobufavail(%struct.qib_devdata* %188)
  br label %190

190:                                              ; preds = %187, %180, %175
  %191 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %191, i32* %6, align 4
  br label %192

192:                                              ; preds = %190, %56, %35, %23
  %193 = load i32, i32* %6, align 4
  ret i32 %193
}

declare dso_local i64 @qib_read_kreg64(%struct.qib_devdata*, i32) #1

declare dso_local i64 @unlikely(i64) #1

declare dso_local i32 @qib_bad_intrstatus(%struct.qib_devdata*) #1

declare dso_local i32 @qib_dev_err(%struct.qib_devdata*, i8*) #1

declare dso_local i64 @INT_MASK_P(i32, i32) #1

declare dso_local i32 @unlikely_7322_intr(%struct.qib_devdata*, i64) #1

declare dso_local i32 @qib_write_kreg(%struct.qib_devdata*, i32, i64) #1

declare dso_local i32 @qib_kreceive(i64, i32*, i64*) #1

declare dso_local i32 @qib_handle_urcv(%struct.qib_devdata*, i64) #1

declare dso_local i64 @QIB_I_P_SDMAINT(i32) #1

declare dso_local i32 @sdma_7322_intr(%struct.qib_devdata*, i64) #1

declare dso_local i32 @qib_ib_piobufavail(%struct.qib_devdata*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
