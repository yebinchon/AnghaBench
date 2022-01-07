; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/qib/extr_qib_iba7220.c_qib_7220_config_ctxts.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/qib/extr_qib_iba7220.c_qib_7220_config_ctxts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qib_devdata = type { i32, i32, i32, i64, i32, i64, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i8*, i32, i64 }

@kr_portcnt = common dso_local global i32 0, align 4
@qib_n_krcv_queues = common dso_local global i32 0, align 4
@qib_cfgctxts = common dso_local global i64 0, align 8
@IBA7220_R_CTXTCFG_SHIFT = common dso_local global i64 0, align 8
@QIB_7220_RcvCtrl_RcvQPMapEnable_LSB = common dso_local global i64 0, align 8
@kr_rcvctrl = common dso_local global i32 0, align 4
@kr_rcvegrcnt = common dso_local global i32 0, align 4
@IBA7220_KRCVEGRCNT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.qib_devdata*)* @qib_7220_config_ctxts to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qib_7220_config_ctxts(%struct.qib_devdata* %0) #0 {
  %2 = alloca %struct.qib_devdata*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store %struct.qib_devdata* %0, %struct.qib_devdata** %2, align 8
  %6 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %7 = load i32, i32* @kr_portcnt, align 4
  %8 = call i8* @qib_read_kreg32(%struct.qib_devdata* %6, i32 %7)
  %9 = ptrtoint i8* %8 to i64
  store i64 %9, i64* %4, align 8
  %10 = load i64, i64* %4, align 8
  %11 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %12 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %11, i32 0, i32 6
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 2
  store i64 %10, i64* %14, align 8
  %15 = load i32, i32* @qib_n_krcv_queues, align 4
  %16 = icmp sgt i32 %15, 1
  br i1 %16, label %17, label %39

17:                                               ; preds = %1
  %18 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %19 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %18, i32 0, i32 0
  store i32 62, i32* %19, align 8
  %20 = load i32, i32* @qib_n_krcv_queues, align 4
  %21 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %22 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 8
  %24 = mul nsw i32 %20, %23
  %25 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %26 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %25, i32 0, i32 1
  store i32 %24, i32* %26, align 4
  %27 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %28 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = sext i32 %29 to i64
  %31 = load i64, i64* %4, align 8
  %32 = icmp sgt i64 %30, %31
  br i1 %32, label %33, label %38

33:                                               ; preds = %17
  %34 = load i64, i64* %4, align 8
  %35 = trunc i64 %34 to i32
  %36 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %37 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %36, i32 0, i32 1
  store i32 %35, i32* %37, align 4
  br label %38

38:                                               ; preds = %33, %17
  br label %45

39:                                               ; preds = %1
  %40 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %41 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 8
  %43 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %44 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %43, i32 0, i32 1
  store i32 %42, i32* %44, align 4
  br label %45

45:                                               ; preds = %39, %38
  %46 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %47 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = sext i32 %48 to i64
  %50 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %51 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %50, i32 0, i32 3
  store i64 %49, i64* %51, align 8
  %52 = load i64, i64* @qib_cfgctxts, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %84, label %54

54:                                               ; preds = %45
  %55 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %56 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = call i32 (...) @num_online_cpus()
  %59 = add nsw i32 %57, %58
  store i32 %59, i32* %5, align 4
  %60 = load i32, i32* %5, align 4
  %61 = icmp sle i32 %60, 5
  br i1 %61, label %62, label %65

62:                                               ; preds = %54
  %63 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %64 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %63, i32 0, i32 4
  store i32 5, i32* %64, align 8
  br label %83

65:                                               ; preds = %54
  %66 = load i32, i32* %5, align 4
  %67 = icmp sle i32 %66, 9
  br i1 %67, label %68, label %71

68:                                               ; preds = %65
  %69 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %70 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %69, i32 0, i32 4
  store i32 9, i32* %70, align 8
  br label %82

71:                                               ; preds = %65
  %72 = load i32, i32* %5, align 4
  %73 = sext i32 %72 to i64
  %74 = load i64, i64* %4, align 8
  %75 = icmp sle i64 %73, %74
  br i1 %75, label %76, label %81

76:                                               ; preds = %71
  %77 = load i64, i64* %4, align 8
  %78 = trunc i64 %77 to i32
  %79 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %80 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %79, i32 0, i32 4
  store i32 %78, i32* %80, align 8
  br label %81

81:                                               ; preds = %76, %71
  br label %82

82:                                               ; preds = %81, %68
  br label %83

83:                                               ; preds = %82, %62
  br label %94

84:                                               ; preds = %45
  %85 = load i64, i64* @qib_cfgctxts, align 8
  %86 = load i64, i64* %4, align 8
  %87 = icmp sle i64 %85, %86
  br i1 %87, label %88, label %93

88:                                               ; preds = %84
  %89 = load i64, i64* @qib_cfgctxts, align 8
  %90 = trunc i64 %89 to i32
  %91 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %92 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %91, i32 0, i32 4
  store i32 %90, i32* %92, align 8
  br label %93

93:                                               ; preds = %88, %84
  br label %94

94:                                               ; preds = %93, %83
  %95 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %96 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %95, i32 0, i32 4
  %97 = load i32, i32* %96, align 8
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %104, label %99

99:                                               ; preds = %94
  %100 = load i64, i64* %4, align 8
  %101 = trunc i64 %100 to i32
  %102 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %103 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %102, i32 0, i32 4
  store i32 %101, i32* %103, align 8
  br label %104

104:                                              ; preds = %99, %94
  %105 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %106 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %105, i32 0, i32 6
  %107 = load %struct.TYPE_2__*, %struct.TYPE_2__** %106, align 8
  %108 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %107, i32 0, i32 1
  %109 = load i64, i64* %3, align 8
  %110 = call i32 @spin_lock_irqsave(i32* %108, i64 %109)
  %111 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %112 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %111, i32 0, i32 4
  %113 = load i32, i32* %112, align 8
  %114 = icmp sgt i32 %113, 9
  br i1 %114, label %115, label %122

115:                                              ; preds = %104
  %116 = load i64, i64* @IBA7220_R_CTXTCFG_SHIFT, align 8
  %117 = shl i64 2, %116
  %118 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %119 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %118, i32 0, i32 5
  %120 = load i64, i64* %119, align 8
  %121 = or i64 %120, %117
  store i64 %121, i64* %119, align 8
  br label %135

122:                                              ; preds = %104
  %123 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %124 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %123, i32 0, i32 4
  %125 = load i32, i32* %124, align 8
  %126 = icmp sgt i32 %125, 5
  br i1 %126, label %127, label %134

127:                                              ; preds = %122
  %128 = load i64, i64* @IBA7220_R_CTXTCFG_SHIFT, align 8
  %129 = shl i64 1, %128
  %130 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %131 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %130, i32 0, i32 5
  %132 = load i64, i64* %131, align 8
  %133 = or i64 %132, %129
  store i64 %133, i64* %131, align 8
  br label %134

134:                                              ; preds = %127, %122
  br label %135

135:                                              ; preds = %134, %115
  %136 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %137 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 8
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %140, label %147

140:                                              ; preds = %135
  %141 = load i64, i64* @QIB_7220_RcvCtrl_RcvQPMapEnable_LSB, align 8
  %142 = shl i64 1, %141
  %143 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %144 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %143, i32 0, i32 5
  %145 = load i64, i64* %144, align 8
  %146 = or i64 %145, %142
  store i64 %146, i64* %144, align 8
  br label %147

147:                                              ; preds = %140, %135
  %148 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %149 = load i32, i32* @kr_rcvctrl, align 4
  %150 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %151 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %150, i32 0, i32 5
  %152 = load i64, i64* %151, align 8
  %153 = call i32 @qib_write_kreg(%struct.qib_devdata* %148, i32 %149, i64 %152)
  %154 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %155 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %154, i32 0, i32 6
  %156 = load %struct.TYPE_2__*, %struct.TYPE_2__** %155, align 8
  %157 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %156, i32 0, i32 1
  %158 = load i64, i64* %3, align 8
  %159 = call i32 @spin_unlock_irqrestore(i32* %157, i64 %158)
  %160 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %161 = load i32, i32* @kr_rcvegrcnt, align 4
  %162 = call i8* @qib_read_kreg32(%struct.qib_devdata* %160, i32 %161)
  %163 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %164 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %163, i32 0, i32 6
  %165 = load %struct.TYPE_2__*, %struct.TYPE_2__** %164, align 8
  %166 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %165, i32 0, i32 0
  store i8* %162, i8** %166, align 8
  %167 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %168 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %167, i32 0, i32 6
  %169 = load %struct.TYPE_2__*, %struct.TYPE_2__** %168, align 8
  %170 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %169, i32 0, i32 0
  %171 = load i8*, i8** %170, align 8
  %172 = load i32, i32* @IBA7220_KRCVEGRCNT, align 4
  %173 = call i32 @max(i8* %171, i32 %172)
  %174 = load %struct.qib_devdata*, %struct.qib_devdata** %2, align 8
  %175 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %174, i32 0, i32 7
  store i32 %173, i32* %175, align 8
  ret void
}

declare dso_local i8* @qib_read_kreg32(%struct.qib_devdata*, i32) #1

declare dso_local i32 @num_online_cpus(...) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @qib_write_kreg(%struct.qib_devdata*, i32, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @max(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
