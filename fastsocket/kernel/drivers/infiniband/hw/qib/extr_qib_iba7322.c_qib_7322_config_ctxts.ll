; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/qib/extr_qib_iba7322.c_qib_7322_config_ctxts.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/qib/extr_qib_iba7322.c_qib_7322_config_ctxts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qib_devdata = type { i32, i32, i32, i32, i64, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i8*, i32 }

@kr_contextcnt = common dso_local global i32 0, align 4
@qib_n_krcv_queues = common dso_local global i32 0, align 4
@NUM_IB_PORTS = common dso_local global i32 0, align 4
@qib_cfgctxts = common dso_local global i32 0, align 4
@RcvCtrl = common dso_local global i32 0, align 4
@ContextCfg = common dso_local global i32 0, align 4
@XrcTypeCode = common dso_local global i32 0, align 4
@kr_rcvctrl = common dso_local global i32 0, align 4
@kr_rcvegrcnt = common dso_local global i32 0, align 4
@qib_rcvhdrcnt = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.qib_devdata*)* @qib_7322_config_ctxts to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qib_7322_config_ctxts(%struct.qib_devdata* %0) #0 {
  %2 = alloca %struct.qib_devdata*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.qib_devdata* %0, %struct.qib_devdata** %2, align 8
  %6 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %7 = load i32, i32* @kr_contextcnt, align 4
  %8 = call i8* @qib_read_kreg32(%struct.qib_devdata* %6, i32 %7)
  %9 = ptrtoint i8* %8 to i32
  store i32 %9, i32* %4, align 4
  %10 = load i32, i32* %4, align 4
  %11 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %12 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %11, i32 0, i32 6
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  store i32 %10, i32* %14, align 8
  %15 = load i32, i32* @qib_n_krcv_queues, align 4
  %16 = icmp sgt i32 %15, 1
  br i1 %16, label %17, label %52

17:                                               ; preds = %1
  %18 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %19 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %52

22:                                               ; preds = %17
  %23 = load i32, i32* @NUM_IB_PORTS, align 4
  %24 = load i32, i32* @qib_n_krcv_queues, align 4
  %25 = sub nsw i32 %24, 1
  %26 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %27 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = mul nsw i32 %25, %28
  %30 = add nsw i32 %23, %29
  %31 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %32 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %31, i32 0, i32 1
  store i32 %30, i32* %32, align 4
  %33 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %34 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* %4, align 4
  %37 = icmp sgt i32 %35, %36
  br i1 %37, label %38, label %42

38:                                               ; preds = %22
  %39 = load i32, i32* %4, align 4
  %40 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %41 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %40, i32 0, i32 1
  store i32 %39, i32* %41, align 4
  br label %42

42:                                               ; preds = %38, %22
  %43 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %44 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %47 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = sdiv i32 %45, %48
  %50 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %51 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %50, i32 0, i32 2
  store i32 %49, i32* %51, align 8
  br label %58

52:                                               ; preds = %17, %1
  %53 = load i32, i32* @NUM_IB_PORTS, align 4
  %54 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %55 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %54, i32 0, i32 1
  store i32 %53, i32* %55, align 4
  %56 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %57 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %56, i32 0, i32 2
  store i32 1, i32* %57, align 8
  br label %58

58:                                               ; preds = %52, %42
  %59 = load i32, i32* @qib_cfgctxts, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %89, label %61

61:                                               ; preds = %58
  %62 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %63 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = call i32 (...) @num_online_cpus()
  %66 = add nsw i32 %64, %65
  store i32 %66, i32* %5, align 4
  %67 = load i32, i32* %5, align 4
  %68 = icmp sle i32 %67, 6
  br i1 %68, label %69, label %72

69:                                               ; preds = %61
  %70 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %71 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %70, i32 0, i32 3
  store i32 6, i32* %71, align 4
  br label %88

72:                                               ; preds = %61
  %73 = load i32, i32* %5, align 4
  %74 = icmp sle i32 %73, 10
  br i1 %74, label %75, label %78

75:                                               ; preds = %72
  %76 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %77 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %76, i32 0, i32 3
  store i32 10, i32* %77, align 4
  br label %87

78:                                               ; preds = %72
  %79 = load i32, i32* %5, align 4
  %80 = load i32, i32* %4, align 4
  %81 = icmp sle i32 %79, %80
  br i1 %81, label %82, label %86

82:                                               ; preds = %78
  %83 = load i32, i32* %4, align 4
  %84 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %85 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %84, i32 0, i32 3
  store i32 %83, i32* %85, align 4
  br label %86

86:                                               ; preds = %82, %78
  br label %87

87:                                               ; preds = %86, %75
  br label %88

88:                                               ; preds = %87, %69
  br label %111

89:                                               ; preds = %58
  %90 = load i32, i32* @qib_cfgctxts, align 4
  %91 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %92 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = icmp slt i32 %90, %93
  br i1 %94, label %95, label %101

95:                                               ; preds = %89
  %96 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %97 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %100 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %99, i32 0, i32 3
  store i32 %98, i32* %100, align 4
  br label %110

101:                                              ; preds = %89
  %102 = load i32, i32* @qib_cfgctxts, align 4
  %103 = load i32, i32* %4, align 4
  %104 = icmp sle i32 %102, %103
  br i1 %104, label %105, label %109

105:                                              ; preds = %101
  %106 = load i32, i32* @qib_cfgctxts, align 4
  %107 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %108 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %107, i32 0, i32 3
  store i32 %106, i32* %108, align 4
  br label %109

109:                                              ; preds = %105, %101
  br label %110

110:                                              ; preds = %109, %95
  br label %111

111:                                              ; preds = %110, %88
  %112 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %113 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %112, i32 0, i32 3
  %114 = load i32, i32* %113, align 4
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %120, label %116

116:                                              ; preds = %111
  %117 = load i32, i32* %4, align 4
  %118 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %119 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %118, i32 0, i32 3
  store i32 %117, i32* %119, align 4
  br label %120

120:                                              ; preds = %116, %111
  %121 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %122 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %121, i32 0, i32 6
  %123 = load %struct.TYPE_2__*, %struct.TYPE_2__** %122, align 8
  %124 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %123, i32 0, i32 2
  %125 = load i64, i64* %3, align 8
  %126 = call i32 @spin_lock_irqsave(i32* %124, i64 %125)
  %127 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %128 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %127, i32 0, i32 3
  %129 = load i32, i32* %128, align 4
  %130 = icmp sgt i32 %129, 10
  br i1 %130, label %131, label %140

131:                                              ; preds = %120
  %132 = load i32, i32* @RcvCtrl, align 4
  %133 = load i32, i32* @ContextCfg, align 4
  %134 = call i64 @SYM_LSB(i32 %132, i32 %133)
  %135 = shl i64 2, %134
  %136 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %137 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %136, i32 0, i32 4
  %138 = load i64, i64* %137, align 8
  %139 = or i64 %138, %135
  store i64 %139, i64* %137, align 8
  br label %155

140:                                              ; preds = %120
  %141 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %142 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %141, i32 0, i32 3
  %143 = load i32, i32* %142, align 4
  %144 = icmp sgt i32 %143, 6
  br i1 %144, label %145, label %154

145:                                              ; preds = %140
  %146 = load i32, i32* @RcvCtrl, align 4
  %147 = load i32, i32* @ContextCfg, align 4
  %148 = call i64 @SYM_LSB(i32 %146, i32 %147)
  %149 = shl i64 1, %148
  %150 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %151 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %150, i32 0, i32 4
  %152 = load i64, i64* %151, align 8
  %153 = or i64 %152, %149
  store i64 %153, i64* %151, align 8
  br label %154

154:                                              ; preds = %145, %140
  br label %155

155:                                              ; preds = %154, %131
  %156 = load i32, i32* @RcvCtrl, align 4
  %157 = load i32, i32* @XrcTypeCode, align 4
  %158 = call i64 @SYM_LSB(i32 %156, i32 %157)
  %159 = shl i64 5, %158
  %160 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %161 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %160, i32 0, i32 4
  %162 = load i64, i64* %161, align 8
  %163 = or i64 %162, %159
  store i64 %163, i64* %161, align 8
  %164 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %165 = load i32, i32* @kr_rcvctrl, align 4
  %166 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %167 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %166, i32 0, i32 4
  %168 = load i64, i64* %167, align 8
  %169 = call i32 @qib_write_kreg(%struct.qib_devdata* %164, i32 %165, i64 %168)
  %170 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %171 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %170, i32 0, i32 6
  %172 = load %struct.TYPE_2__*, %struct.TYPE_2__** %171, align 8
  %173 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %172, i32 0, i32 2
  %174 = load i64, i64* %3, align 8
  %175 = call i32 @spin_unlock_irqrestore(i32* %173, i64 %174)
  %176 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %177 = load i32, i32* @kr_rcvegrcnt, align 4
  %178 = call i8* @qib_read_kreg32(%struct.qib_devdata* %176, i32 %177)
  %179 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %180 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %179, i32 0, i32 6
  %181 = load %struct.TYPE_2__*, %struct.TYPE_2__** %180, align 8
  %182 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %181, i32 0, i32 1
  store i8* %178, i8** %182, align 8
  %183 = load i32, i32* @qib_rcvhdrcnt, align 4
  %184 = icmp ne i32 %183, 0
  br i1 %184, label %185, label %195

185:                                              ; preds = %155
  %186 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %187 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %186, i32 0, i32 6
  %188 = load %struct.TYPE_2__*, %struct.TYPE_2__** %187, align 8
  %189 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %188, i32 0, i32 1
  %190 = load i8*, i8** %189, align 8
  %191 = load i32, i32* @qib_rcvhdrcnt, align 4
  %192 = call i32 @max(i8* %190, i32 %191)
  %193 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %194 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %193, i32 0, i32 5
  store i32 %192, i32* %194, align 8
  br label %211

195:                                              ; preds = %155
  %196 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %197 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %196, i32 0, i32 6
  %198 = load %struct.TYPE_2__*, %struct.TYPE_2__** %197, align 8
  %199 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %198, i32 0, i32 1
  %200 = load i8*, i8** %199, align 8
  %201 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %202 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %201, i32 0, i32 0
  %203 = load i32, i32* %202, align 8
  %204 = icmp sgt i32 %203, 1
  %205 = zext i1 %204 to i64
  %206 = select i1 %204, i32 1024, i32 2048
  %207 = call i32 @max(i8* %200, i32 %206)
  %208 = mul nsw i32 2, %207
  %209 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %210 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %209, i32 0, i32 5
  store i32 %208, i32* %210, align 8
  br label %211

211:                                              ; preds = %195, %185
  ret void
}

declare dso_local i8* @qib_read_kreg32(%struct.qib_devdata*, i32) #1

declare dso_local i32 @num_online_cpus(...) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i64 @SYM_LSB(i32, i32) #1

declare dso_local i32 @qib_write_kreg(%struct.qib_devdata*, i32, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @max(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
