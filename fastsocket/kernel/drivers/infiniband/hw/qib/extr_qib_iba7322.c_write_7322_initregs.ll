; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/qib/extr_qib_iba7322.c_write_7322_initregs.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/qib/extr_qib_iba7322.c_write_7322_initregs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qib_devdata = type { i32, i32, i32, i32, %struct.qib_pportdata*, %struct.TYPE_2__* }
%struct.qib_pportdata = type { i32, i32, i32 }
%struct.TYPE_2__ = type { i32*, i32 }

@RcvQPMulticastContext_1 = common dso_local global i32 0, align 4
@RcvCtrl_0 = common dso_local global i32 0, align 4
@RcvQPMapEnable = common dso_local global i32 0, align 4
@krp_rcvqpmaptable = common dso_local global i32 0, align 4
@rcv_int_timeout = common dso_local global i32 0, align 4
@kr_rcvavailtimeout = common dso_local global i64 0, align 8
@TIDFLOW_ERRBITS = common dso_local global i32 0, align 4
@NUM_TIDFLOWS_CTXT = common dso_local global i32 0, align 4
@ur_rcvflowtable = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.qib_devdata*)* @write_7322_initregs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @write_7322_initregs(%struct.qib_devdata* %0) #0 {
  %2 = alloca %struct.qib_devdata*, align 8
  %3 = alloca %struct.qib_pportdata*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.qib_devdata* %0, %struct.qib_devdata** %2, align 8
  %12 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %13 = load i32, i32* @RcvQPMulticastContext_1, align 4
  %14 = call i64 @KREG_IDX(i32 %13)
  %15 = call i32 @qib_write_kreg(%struct.qib_devdata* %12, i64 %14, i32 1)
  store i32 0, i32* %5, align 4
  br label %16

16:                                               ; preds = %142, %1
  %17 = load i32, i32* %5, align 4
  %18 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %19 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = icmp slt i32 %17, %20
  br i1 %21, label %22, label %145

22:                                               ; preds = %16
  %23 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %24 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = icmp slt i32 %25, 2
  br i1 %26, label %37, label %27

27:                                               ; preds = %22
  %28 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %29 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %28, i32 0, i32 4
  %30 = load %struct.qib_pportdata*, %struct.qib_pportdata** %29, align 8
  %31 = load i32, i32* %5, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %30, i64 %32
  %34 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %38, label %37

37:                                               ; preds = %27, %22
  br label %142

38:                                               ; preds = %27
  %39 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %40 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %39, i32 0, i32 4
  %41 = load %struct.qib_pportdata*, %struct.qib_pportdata** %40, align 8
  %42 = load i32, i32* %5, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %41, i64 %43
  store %struct.qib_pportdata* %44, %struct.qib_pportdata** %3, align 8
  %45 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %46 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %45, i32 0, i32 5
  %47 = load %struct.TYPE_2__*, %struct.TYPE_2__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 1
  %49 = load i64, i64* %9, align 8
  %50 = call i32 @spin_lock_irqsave(i32* %48, i64 %49)
  %51 = load i32, i32* @RcvCtrl_0, align 4
  %52 = load i32, i32* @RcvQPMapEnable, align 4
  %53 = call i32 @SYM_MASK(i32 %51, i32 %52)
  %54 = load %struct.qib_pportdata*, %struct.qib_pportdata** %3, align 8
  %55 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = or i32 %56, %53
  store i32 %57, i32* %55, align 4
  %58 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %59 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %58, i32 0, i32 5
  %60 = load %struct.TYPE_2__*, %struct.TYPE_2__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 1
  %62 = load i64, i64* %9, align 8
  %63 = call i32 @spin_unlock_irqrestore(i32* %61, i64 %62)
  %64 = load i32, i32* @krp_rcvqpmaptable, align 4
  store i32 %64, i32* %8, align 4
  store i32 0, i32* %6, align 4
  %65 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %66 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = icmp sgt i32 %67, 1
  br i1 %68, label %69, label %77

69:                                               ; preds = %38
  %70 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %71 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 8
  %73 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %74 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = udiv i32 %72, %75
  store i32 %76, i32* %7, align 4
  br label %82

77:                                               ; preds = %38
  %78 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %79 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %78, i32 0, i32 2
  %80 = load i32, i32* %79, align 8
  %81 = sub i32 %80, 1
  store i32 %81, i32* %7, align 4
  br label %82

82:                                               ; preds = %77, %69
  store i32 0, i32* %4, align 4
  br label %83

83:                                               ; preds = %136, %82
  %84 = load i32, i32* %4, align 4
  %85 = icmp slt i32 %84, 32
  br i1 %85, label %86, label %137

86:                                               ; preds = %83
  %87 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %88 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = icmp sgt i32 %89, 1
  br i1 %90, label %91, label %101

91:                                               ; preds = %86
  %92 = load i32, i32* %4, align 4
  %93 = load i32, i32* %7, align 4
  %94 = urem i32 %92, %93
  %95 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %96 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = mul i32 %94, %97
  %99 = load i32, i32* %5, align 4
  %100 = add i32 %98, %99
  store i32 %100, i32* %10, align 4
  br label %116

101:                                              ; preds = %86
  %102 = load i32, i32* %4, align 4
  %103 = load i32, i32* %7, align 4
  %104 = urem i32 %102, %103
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %111

106:                                              ; preds = %101
  %107 = load i32, i32* %4, align 4
  %108 = load i32, i32* %7, align 4
  %109 = urem i32 %107, %108
  %110 = add i32 %109, 1
  store i32 %110, i32* %10, align 4
  br label %115

111:                                              ; preds = %101
  %112 = load %struct.qib_pportdata*, %struct.qib_pportdata** %3, align 8
  %113 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  store i32 %114, i32* %10, align 4
  br label %115

115:                                              ; preds = %111, %106
  br label %116

116:                                              ; preds = %115, %91
  %117 = load i32, i32* %10, align 4
  %118 = load i32, i32* %4, align 4
  %119 = srem i32 %118, 6
  %120 = mul nsw i32 5, %119
  %121 = shl i32 %117, %120
  %122 = load i32, i32* %6, align 4
  %123 = or i32 %122, %121
  store i32 %123, i32* %6, align 4
  %124 = load i32, i32* %4, align 4
  %125 = add nsw i32 %124, 1
  store i32 %125, i32* %4, align 4
  %126 = load i32, i32* %4, align 4
  %127 = srem i32 %126, 6
  %128 = icmp eq i32 %127, 0
  br i1 %128, label %129, label %136

129:                                              ; preds = %116
  %130 = load %struct.qib_pportdata*, %struct.qib_pportdata** %3, align 8
  %131 = load i32, i32* %8, align 4
  %132 = load i32, i32* %6, align 4
  %133 = call i32 @qib_write_kreg_port(%struct.qib_pportdata* %130, i32 %131, i32 %132)
  store i32 0, i32* %6, align 4
  %134 = load i32, i32* %8, align 4
  %135 = add i32 %134, 1
  store i32 %135, i32* %8, align 4
  br label %136

136:                                              ; preds = %129, %116
  br label %83

137:                                              ; preds = %83
  %138 = load %struct.qib_pportdata*, %struct.qib_pportdata** %3, align 8
  %139 = load i32, i32* %8, align 4
  %140 = load i32, i32* %6, align 4
  %141 = call i32 @qib_write_kreg_port(%struct.qib_pportdata* %138, i32 %139, i32 %140)
  br label %142

142:                                              ; preds = %137, %37
  %143 = load i32, i32* %5, align 4
  %144 = add nsw i32 %143, 1
  store i32 %144, i32* %5, align 4
  br label %16

145:                                              ; preds = %16
  store i32 0, i32* %4, align 4
  br label %146

146:                                              ; preds = %169, %145
  %147 = load i32, i32* %4, align 4
  %148 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %149 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %148, i32 0, i32 2
  %150 = load i32, i32* %149, align 8
  %151 = icmp ult i32 %147, %150
  br i1 %151, label %152, label %172

152:                                              ; preds = %146
  %153 = load i32, i32* @rcv_int_timeout, align 4
  %154 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %155 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %154, i32 0, i32 5
  %156 = load %struct.TYPE_2__*, %struct.TYPE_2__** %155, align 8
  %157 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %156, i32 0, i32 0
  %158 = load i32*, i32** %157, align 8
  %159 = load i32, i32* %4, align 4
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds i32, i32* %158, i64 %160
  store i32 %153, i32* %161, align 4
  %162 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %163 = load i64, i64* @kr_rcvavailtimeout, align 8
  %164 = load i32, i32* %4, align 4
  %165 = sext i32 %164 to i64
  %166 = add nsw i64 %163, %165
  %167 = load i32, i32* @rcv_int_timeout, align 4
  %168 = call i32 @qib_write_kreg(%struct.qib_devdata* %162, i64 %166, i32 %167)
  br label %169

169:                                              ; preds = %152
  %170 = load i32, i32* %4, align 4
  %171 = add nsw i32 %170, 1
  store i32 %171, i32* %4, align 4
  br label %146

172:                                              ; preds = %146
  %173 = load i32, i32* @TIDFLOW_ERRBITS, align 4
  store i32 %173, i32* %6, align 4
  store i32 0, i32* %4, align 4
  br label %174

174:                                              ; preds = %198, %172
  %175 = load i32, i32* %4, align 4
  %176 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %177 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %176, i32 0, i32 3
  %178 = load i32, i32* %177, align 4
  %179 = icmp slt i32 %175, %178
  br i1 %179, label %180, label %201

180:                                              ; preds = %174
  store i32 0, i32* %11, align 4
  br label %181

181:                                              ; preds = %194, %180
  %182 = load i32, i32* %11, align 4
  %183 = load i32, i32* @NUM_TIDFLOWS_CTXT, align 4
  %184 = icmp slt i32 %182, %183
  br i1 %184, label %185, label %197

185:                                              ; preds = %181
  %186 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %187 = load i64, i64* @ur_rcvflowtable, align 8
  %188 = load i32, i32* %11, align 4
  %189 = sext i32 %188 to i64
  %190 = add nsw i64 %187, %189
  %191 = load i32, i32* %6, align 4
  %192 = load i32, i32* %4, align 4
  %193 = call i32 @qib_write_ureg(%struct.qib_devdata* %186, i64 %190, i32 %191, i32 %192)
  br label %194

194:                                              ; preds = %185
  %195 = load i32, i32* %11, align 4
  %196 = add nsw i32 %195, 1
  store i32 %196, i32* %11, align 4
  br label %181

197:                                              ; preds = %181
  br label %198

198:                                              ; preds = %197
  %199 = load i32, i32* %4, align 4
  %200 = add nsw i32 %199, 1
  store i32 %200, i32* %4, align 4
  br label %174

201:                                              ; preds = %174
  %202 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %203 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %202, i32 0, i32 0
  %204 = load i32, i32* %203, align 8
  %205 = icmp ne i32 %204, 0
  br i1 %205, label %206, label %216

206:                                              ; preds = %201
  %207 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %208 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %207, i32 0, i32 4
  %209 = load %struct.qib_pportdata*, %struct.qib_pportdata** %208, align 8
  %210 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %211 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %210, i32 0, i32 0
  %212 = load i32, i32* %211, align 8
  %213 = icmp sgt i32 %212, 1
  %214 = zext i1 %213 to i32
  %215 = call i32 @setup_7322_link_recovery(%struct.qib_pportdata* %209, i32 %214)
  br label %216

216:                                              ; preds = %206, %201
  ret void
}

declare dso_local i32 @qib_write_kreg(%struct.qib_devdata*, i64, i32) #1

declare dso_local i64 @KREG_IDX(i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @SYM_MASK(i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @qib_write_kreg_port(%struct.qib_pportdata*, i32, i32) #1

declare dso_local i32 @qib_write_ureg(%struct.qib_devdata*, i64, i32, i32) #1

declare dso_local i32 @setup_7322_link_recovery(%struct.qib_pportdata*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
