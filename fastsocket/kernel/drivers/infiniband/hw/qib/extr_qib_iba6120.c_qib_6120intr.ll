; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/qib/extr_qib_iba6120.c_qib_6120intr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/qib/extr_qib_iba6120.c_qib_6120intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.qib_devdata = type { i32, i32, i32, %struct.TYPE_3__*, i32* }
%struct.TYPE_3__ = type { i32, i32, i32 }

@QIB_PRESENT = common dso_local global i32 0, align 4
@QIB_BADINTR = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@kr_intstatus = common dso_local global i32 0, align 4
@IRQ_NONE = common dso_local global i32 0, align 4
@qib_stats = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@QLOGIC_IB_I_BITSEXTANT = common dso_local global i32 0, align 4
@QLOGIC_IB_I_GPIO = common dso_local global i32 0, align 4
@QLOGIC_IB_I_ERROR = common dso_local global i32 0, align 4
@kr_intclear = common dso_local global i32 0, align 4
@QLOGIC_IB_I_RCVAVAIL_MASK = common dso_local global i32 0, align 4
@QLOGIC_IB_I_RCVAVAIL_SHIFT = common dso_local global i32 0, align 4
@QLOGIC_IB_I_RCVURG_MASK = common dso_local global i32 0, align 4
@QLOGIC_IB_I_RCVURG_SHIFT = common dso_local global i32 0, align 4
@QLOGIC_IB_I_SPIOBUFAVAIL = common dso_local global i32 0, align 4
@QIB_INITTED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @qib_6120intr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qib_6120intr(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.qib_devdata*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %13 = load i8*, i8** %4, align 8
  %14 = bitcast i8* %13 to %struct.qib_devdata*
  store %struct.qib_devdata* %14, %struct.qib_devdata** %5, align 8
  store i32 0, i32* %10, align 4
  %15 = load %struct.qib_devdata*, %struct.qib_devdata** %5, align 8
  %16 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* @QIB_PRESENT, align 4
  %19 = load i32, i32* @QIB_BADINTR, align 4
  %20 = or i32 %18, %19
  %21 = and i32 %17, %20
  %22 = load i32, i32* @QIB_PRESENT, align 4
  %23 = icmp ne i32 %21, %22
  br i1 %23, label %24, label %26

24:                                               ; preds = %2
  %25 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %25, i32* %6, align 4
  br label %208

26:                                               ; preds = %2
  %27 = load %struct.qib_devdata*, %struct.qib_devdata** %5, align 8
  %28 = load i32, i32* @kr_intstatus, align 4
  %29 = call i32 @qib_read_kreg32(%struct.qib_devdata* %27, i32 %28)
  store i32 %29, i32* %7, align 4
  %30 = load i32, i32* %7, align 4
  %31 = icmp ne i32 %30, 0
  %32 = xor i1 %31, true
  %33 = zext i1 %32 to i32
  %34 = call i64 @unlikely(i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %26
  %37 = load i32, i32* @IRQ_NONE, align 4
  store i32 %37, i32* %6, align 4
  br label %208

38:                                               ; preds = %26
  %39 = load i32, i32* %7, align 4
  %40 = icmp eq i32 %39, -1
  %41 = zext i1 %40 to i32
  %42 = call i64 @unlikely(i32 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %48

44:                                               ; preds = %38
  %45 = load %struct.qib_devdata*, %struct.qib_devdata** %5, align 8
  %46 = call i32 @qib_bad_intrstatus(%struct.qib_devdata* %45)
  %47 = load i32, i32* @IRQ_NONE, align 4
  store i32 %47, i32* %6, align 4
  br label %208

48:                                               ; preds = %38
  %49 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @qib_stats, i32 0, i32 0), align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @qib_stats, i32 0, i32 0), align 4
  %51 = load %struct.qib_devdata*, %struct.qib_devdata** %5, align 8
  %52 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = icmp ne i32 %53, -1
  br i1 %54, label %55, label %60

55:                                               ; preds = %48
  %56 = load %struct.qib_devdata*, %struct.qib_devdata** %5, align 8
  %57 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %57, align 4
  br label %60

60:                                               ; preds = %55, %48
  %61 = load i32, i32* %7, align 4
  %62 = load i32, i32* @QLOGIC_IB_I_BITSEXTANT, align 4
  %63 = xor i32 %62, -1
  %64 = load i32, i32* @QLOGIC_IB_I_GPIO, align 4
  %65 = or i32 %63, %64
  %66 = load i32, i32* @QLOGIC_IB_I_ERROR, align 4
  %67 = or i32 %65, %66
  %68 = and i32 %61, %67
  %69 = call i64 @unlikely(i32 %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %75

71:                                               ; preds = %60
  %72 = load %struct.qib_devdata*, %struct.qib_devdata** %5, align 8
  %73 = load i32, i32* %7, align 4
  %74 = call i32 @unlikely_6120_intr(%struct.qib_devdata* %72, i32 %73)
  br label %75

75:                                               ; preds = %71, %60
  %76 = load %struct.qib_devdata*, %struct.qib_devdata** %5, align 8
  %77 = load i32, i32* @kr_intclear, align 4
  %78 = load i32, i32* %7, align 4
  %79 = call i32 @qib_write_kreg(%struct.qib_devdata* %76, i32 %77, i32 %78)
  %80 = load i32, i32* %7, align 4
  %81 = load i32, i32* @QLOGIC_IB_I_RCVAVAIL_MASK, align 4
  %82 = load i32, i32* @QLOGIC_IB_I_RCVAVAIL_SHIFT, align 4
  %83 = shl i32 %81, %82
  %84 = load i32, i32* @QLOGIC_IB_I_RCVURG_MASK, align 4
  %85 = load i32, i32* @QLOGIC_IB_I_RCVURG_SHIFT, align 4
  %86 = shl i32 %84, %85
  %87 = or i32 %83, %86
  %88 = and i32 %80, %87
  store i32 %88, i32* %8, align 4
  %89 = load i32, i32* %8, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %191

91:                                               ; preds = %75
  %92 = load i32, i32* @QLOGIC_IB_I_RCVAVAIL_SHIFT, align 4
  %93 = shl i32 1, %92
  %94 = load i32, i32* @QLOGIC_IB_I_RCVURG_SHIFT, align 4
  %95 = shl i32 1, %94
  %96 = or i32 %93, %95
  store i32 %96, i32* %9, align 4
  store i32 0, i32* %11, align 4
  br label %97

97:                                               ; preds = %130, %91
  %98 = load i32, i32* %11, align 4
  %99 = load %struct.qib_devdata*, %struct.qib_devdata** %5, align 8
  %100 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %99, i32 0, i32 2
  %101 = load i32, i32* %100, align 8
  %102 = icmp ult i32 %98, %101
  br i1 %102, label %103, label %133

103:                                              ; preds = %97
  %104 = load i32, i32* %8, align 4
  %105 = load i32, i32* %9, align 4
  %106 = and i32 %104, %105
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %127

108:                                              ; preds = %103
  %109 = load i32, i32* %9, align 4
  %110 = xor i32 %109, -1
  %111 = load i32, i32* %8, align 4
  %112 = and i32 %111, %110
  store i32 %112, i32* %8, align 4
  %113 = load %struct.qib_devdata*, %struct.qib_devdata** %5, align 8
  %114 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %113, i32 0, i32 4
  %115 = load i32*, i32** %114, align 8
  %116 = load i32, i32* %11, align 4
  %117 = zext i32 %116 to i64
  %118 = getelementptr inbounds i32, i32* %115, i64 %117
  %119 = load i32, i32* %118, align 4
  %120 = load %struct.qib_devdata*, %struct.qib_devdata** %5, align 8
  %121 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %120, i32 0, i32 3
  %122 = load %struct.TYPE_3__*, %struct.TYPE_3__** %121, align 8
  %123 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %122, i32 0, i32 0
  %124 = call i32 @qib_kreceive(i32 %119, i32* %123, i32* null)
  %125 = load i32, i32* %10, align 4
  %126 = add nsw i32 %125, %124
  store i32 %126, i32* %10, align 4
  br label %127

127:                                              ; preds = %108, %103
  %128 = load i32, i32* %9, align 4
  %129 = shl i32 %128, 1
  store i32 %129, i32* %9, align 4
  br label %130

130:                                              ; preds = %127
  %131 = load i32, i32* %11, align 4
  %132 = add i32 %131, 1
  store i32 %132, i32* %11, align 4
  br label %97

133:                                              ; preds = %97
  %134 = load i32, i32* %10, align 4
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %176

136:                                              ; preds = %133
  %137 = load %struct.qib_devdata*, %struct.qib_devdata** %5, align 8
  %138 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %137, i32 0, i32 3
  %139 = load %struct.TYPE_3__*, %struct.TYPE_3__** %138, align 8
  %140 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 4
  store i32 %141, i32* %12, align 4
  %142 = load i32, i32* %10, align 4
  %143 = load i32, i32* %12, align 4
  %144 = add nsw i32 %143, %142
  store i32 %144, i32* %12, align 4
  %145 = load i32, i32* %12, align 4
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %147, label %175

147:                                              ; preds = %136
  %148 = load i32, i32* %12, align 4
  %149 = load %struct.qib_devdata*, %struct.qib_devdata** %5, align 8
  %150 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %149, i32 0, i32 3
  %151 = load %struct.TYPE_3__*, %struct.TYPE_3__** %150, align 8
  %152 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %151, i32 0, i32 1
  %153 = load i32, i32* %152, align 4
  %154 = icmp sgt i32 %148, %153
  br i1 %154, label %155, label %166

155:                                              ; preds = %147
  %156 = load %struct.qib_devdata*, %struct.qib_devdata** %5, align 8
  %157 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %156, i32 0, i32 3
  %158 = load %struct.TYPE_3__*, %struct.TYPE_3__** %157, align 8
  %159 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %158, i32 0, i32 0
  store i32 0, i32* %159, align 4
  %160 = load %struct.qib_devdata*, %struct.qib_devdata** %5, align 8
  %161 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %160, i32 0, i32 3
  %162 = load %struct.TYPE_3__*, %struct.TYPE_3__** %161, align 8
  %163 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %162, i32 0, i32 2
  %164 = load i32, i32* %163, align 4
  %165 = add nsw i32 %164, 1
  store i32 %165, i32* %163, align 4
  br label %174

166:                                              ; preds = %147
  %167 = load i32, i32* %12, align 4
  %168 = load %struct.qib_devdata*, %struct.qib_devdata** %5, align 8
  %169 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %168, i32 0, i32 3
  %170 = load %struct.TYPE_3__*, %struct.TYPE_3__** %169, align 8
  %171 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %170, i32 0, i32 0
  %172 = load i32, i32* %171, align 4
  %173 = add nsw i32 %172, %167
  store i32 %173, i32* %171, align 4
  br label %174

174:                                              ; preds = %166, %155
  br label %175

175:                                              ; preds = %174, %136
  br label %176

176:                                              ; preds = %175, %133
  %177 = load i32, i32* %8, align 4
  %178 = icmp ne i32 %177, 0
  br i1 %178, label %179, label %190

179:                                              ; preds = %176
  %180 = load i32, i32* %8, align 4
  %181 = load i32, i32* @QLOGIC_IB_I_RCVAVAIL_SHIFT, align 4
  %182 = ashr i32 %180, %181
  %183 = load i32, i32* %8, align 4
  %184 = load i32, i32* @QLOGIC_IB_I_RCVURG_SHIFT, align 4
  %185 = ashr i32 %183, %184
  %186 = or i32 %182, %185
  store i32 %186, i32* %8, align 4
  %187 = load %struct.qib_devdata*, %struct.qib_devdata** %5, align 8
  %188 = load i32, i32* %8, align 4
  %189 = call i32 @qib_handle_urcv(%struct.qib_devdata* %187, i32 %188)
  br label %190

190:                                              ; preds = %179, %176
  br label %191

191:                                              ; preds = %190, %75
  %192 = load i32, i32* %7, align 4
  %193 = load i32, i32* @QLOGIC_IB_I_SPIOBUFAVAIL, align 4
  %194 = and i32 %192, %193
  %195 = icmp ne i32 %194, 0
  br i1 %195, label %196, label %206

196:                                              ; preds = %191
  %197 = load %struct.qib_devdata*, %struct.qib_devdata** %5, align 8
  %198 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %197, i32 0, i32 0
  %199 = load i32, i32* %198, align 8
  %200 = load i32, i32* @QIB_INITTED, align 4
  %201 = and i32 %199, %200
  %202 = icmp ne i32 %201, 0
  br i1 %202, label %203, label %206

203:                                              ; preds = %196
  %204 = load %struct.qib_devdata*, %struct.qib_devdata** %5, align 8
  %205 = call i32 @qib_ib_piobufavail(%struct.qib_devdata* %204)
  br label %206

206:                                              ; preds = %203, %196, %191
  %207 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %207, i32* %6, align 4
  br label %208

208:                                              ; preds = %206, %44, %36, %24
  %209 = load i32, i32* %6, align 4
  ret i32 %209
}

declare dso_local i32 @qib_read_kreg32(%struct.qib_devdata*, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @qib_bad_intrstatus(%struct.qib_devdata*) #1

declare dso_local i32 @unlikely_6120_intr(%struct.qib_devdata*, i32) #1

declare dso_local i32 @qib_write_kreg(%struct.qib_devdata*, i32, i32) #1

declare dso_local i32 @qib_kreceive(i32, i32*, i32*) #1

declare dso_local i32 @qib_handle_urcv(%struct.qib_devdata*, i32) #1

declare dso_local i32 @qib_ib_piobufavail(%struct.qib_devdata*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
