; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/qib/extr_qib_iba7322.c_qib_get_7322_faststats.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/qib/extr_qib_iba7322.c_qib_get_7322_faststats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qib_devdata = type { i32, i32, i32, i64, %struct.qib_pportdata* }
%struct.qib_pportdata = type { i32, i32, %struct.TYPE_6__*, %struct.TYPE_4__*, i32 }
%struct.TYPE_6__ = type { i64, %struct.TYPE_5__*, i32, i32 }
%struct.TYPE_5__ = type { i64 }
%struct.TYPE_4__ = type { i64, i64 }

@QIB_INITTED = common dso_local global i32 0, align 4
@QIBPORTCNTR_WORDRCV = common dso_local global i32 0, align 4
@QIBPORTCNTR_WORDSEND = common dso_local global i32 0, align 4
@QIB_TRAFFIC_ACTIVE_THRESHOLD = common dso_local global i64 0, align 8
@ACTIVITY_TIMER = common dso_local global i32 0, align 4
@QIB_IB_QDR = common dso_local global i32 0, align 4
@QIBL_LINKINIT = common dso_local global i32 0, align 4
@QIBL_LINKARMED = common dso_local global i32 0, align 4
@QIBL_LINKACTIVE = common dso_local global i32 0, align 4
@QDR_STATIC_ADAPT_INIT_R1 = common dso_local global i32 0, align 4
@QDR_STATIC_ADAPT_INIT = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@HZ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64)* @qib_get_7322_faststats to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qib_get_7322_faststats(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.qib_devdata*, align 8
  %4 = alloca %struct.qib_pportdata*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store i64 %0, i64* %2, align 8
  %8 = load i64, i64* %2, align 8
  %9 = inttoptr i64 %8 to %struct.qib_devdata*
  store %struct.qib_devdata* %9, %struct.qib_devdata** %3, align 8
  store i32 0, i32* %7, align 4
  br label %10

10:                                               ; preds = %149, %1
  %11 = load i32, i32* %7, align 4
  %12 = load %struct.qib_devdata*, %struct.qib_devdata** %3, align 8
  %13 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = icmp slt i32 %11, %14
  br i1 %15, label %16, label %152

16:                                               ; preds = %10
  %17 = load %struct.qib_devdata*, %struct.qib_devdata** %3, align 8
  %18 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %17, i32 0, i32 4
  %19 = load %struct.qib_pportdata*, %struct.qib_pportdata** %18, align 8
  %20 = load i32, i32* %7, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %19, i64 %21
  store %struct.qib_pportdata* %22, %struct.qib_pportdata** %4, align 8
  %23 = load %struct.qib_pportdata*, %struct.qib_pportdata** %4, align 8
  %24 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %23, i32 0, i32 4
  %25 = load i32, i32* %24, align 8
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %39

27:                                               ; preds = %16
  %28 = load %struct.qib_devdata*, %struct.qib_devdata** %3, align 8
  %29 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @QIB_INITTED, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %39

34:                                               ; preds = %27
  %35 = load %struct.qib_devdata*, %struct.qib_devdata** %3, align 8
  %36 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %35, i32 0, i32 3
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %34, %27, %16
  br label %149

40:                                               ; preds = %34
  %41 = load %struct.qib_pportdata*, %struct.qib_pportdata** %4, align 8
  %42 = load i32, i32* @QIBPORTCNTR_WORDRCV, align 4
  %43 = call i64 @qib_portcntr_7322(%struct.qib_pportdata* %41, i32 %42)
  %44 = load %struct.qib_pportdata*, %struct.qib_pportdata** %4, align 8
  %45 = load i32, i32* @QIBPORTCNTR_WORDSEND, align 4
  %46 = call i64 @qib_portcntr_7322(%struct.qib_pportdata* %44, i32 %45)
  %47 = add nsw i64 %43, %46
  store i64 %47, i64* %6, align 8
  %48 = load %struct.qib_pportdata*, %struct.qib_pportdata** %4, align 8
  %49 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %48, i32 0, i32 2
  %50 = load %struct.TYPE_6__*, %struct.TYPE_6__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 2
  %52 = load i64, i64* %5, align 8
  %53 = call i32 @spin_lock_irqsave(i32* %51, i64 %52)
  %54 = load %struct.qib_pportdata*, %struct.qib_pportdata** %4, align 8
  %55 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %54, i32 0, i32 2
  %56 = load %struct.TYPE_6__*, %struct.TYPE_6__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = load i64, i64* %6, align 8
  %60 = sub nsw i64 %59, %58
  store i64 %60, i64* %6, align 8
  %61 = load i64, i64* %6, align 8
  %62 = load %struct.qib_pportdata*, %struct.qib_pportdata** %4, align 8
  %63 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %62, i32 0, i32 2
  %64 = load %struct.TYPE_6__*, %struct.TYPE_6__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = add nsw i64 %66, %61
  store i64 %67, i64* %65, align 8
  %68 = load i64, i64* %6, align 8
  %69 = load i64, i64* @QIB_TRAFFIC_ACTIVE_THRESHOLD, align 8
  %70 = icmp sge i64 %68, %69
  br i1 %70, label %71, label %78

71:                                               ; preds = %40
  %72 = load i32, i32* @ACTIVITY_TIMER, align 4
  %73 = load %struct.qib_pportdata*, %struct.qib_pportdata** %4, align 8
  %74 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %73, i32 0, i32 2
  %75 = load %struct.TYPE_6__*, %struct.TYPE_6__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %75, i32 0, i32 3
  %77 = call i32 @atomic_add(i32 %72, i32* %76)
  br label %78

78:                                               ; preds = %71, %40
  %79 = load %struct.qib_pportdata*, %struct.qib_pportdata** %4, align 8
  %80 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %79, i32 0, i32 2
  %81 = load %struct.TYPE_6__*, %struct.TYPE_6__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %81, i32 0, i32 2
  %83 = load i64, i64* %5, align 8
  %84 = call i32 @spin_unlock_irqrestore(i32* %82, i64 %83)
  %85 = load %struct.qib_pportdata*, %struct.qib_pportdata** %4, align 8
  %86 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %85, i32 0, i32 3
  %87 = load %struct.TYPE_4__*, %struct.TYPE_4__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %148

91:                                               ; preds = %78
  %92 = load %struct.qib_pportdata*, %struct.qib_pportdata** %4, align 8
  %93 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = load i32, i32* @QIB_IB_QDR, align 4
  %96 = and i32 %94, %95
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %148

98:                                               ; preds = %91
  %99 = load %struct.qib_pportdata*, %struct.qib_pportdata** %4, align 8
  %100 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 4
  %102 = load i32, i32* @QIBL_LINKINIT, align 4
  %103 = load i32, i32* @QIBL_LINKARMED, align 4
  %104 = or i32 %102, %103
  %105 = load i32, i32* @QIBL_LINKACTIVE, align 4
  %106 = or i32 %104, %105
  %107 = and i32 %101, %106
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %148

109:                                              ; preds = %98
  %110 = load %struct.qib_pportdata*, %struct.qib_pportdata** %4, align 8
  %111 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %110, i32 0, i32 3
  %112 = load %struct.TYPE_4__*, %struct.TYPE_4__** %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %112, i32 0, i32 1
  %114 = load i64, i64* %113, align 8
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %148

116:                                              ; preds = %109
  %117 = load %struct.qib_pportdata*, %struct.qib_pportdata** %4, align 8
  %118 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %117, i32 0, i32 3
  %119 = load %struct.TYPE_4__*, %struct.TYPE_4__** %118, align 8
  %120 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %119, i32 0, i32 1
  %121 = load i64, i64* %120, align 8
  %122 = call i64 @time_is_before_jiffies(i64 %121)
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %124, label %148

124:                                              ; preds = %116
  %125 = load %struct.qib_pportdata*, %struct.qib_pportdata** %4, align 8
  %126 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %125, i32 0, i32 3
  %127 = load %struct.TYPE_4__*, %struct.TYPE_4__** %126, align 8
  %128 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %127, i32 0, i32 0
  store i64 0, i64* %128, align 8
  %129 = load %struct.qib_pportdata*, %struct.qib_pportdata** %4, align 8
  %130 = call i32 @krp_static_adapt_dis(i32 2)
  %131 = load %struct.qib_pportdata*, %struct.qib_pportdata** %4, align 8
  %132 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %131, i32 0, i32 2
  %133 = load %struct.TYPE_6__*, %struct.TYPE_6__** %132, align 8
  %134 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %133, i32 0, i32 1
  %135 = load %struct.TYPE_5__*, %struct.TYPE_5__** %134, align 8
  %136 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %135, i32 0, i32 0
  %137 = load i64, i64* %136, align 8
  %138 = icmp ne i64 %137, 0
  br i1 %138, label %139, label %141

139:                                              ; preds = %124
  %140 = load i32, i32* @QDR_STATIC_ADAPT_INIT_R1, align 4
  br label %143

141:                                              ; preds = %124
  %142 = load i32, i32* @QDR_STATIC_ADAPT_INIT, align 4
  br label %143

143:                                              ; preds = %141, %139
  %144 = phi i32 [ %140, %139 ], [ %142, %141 ]
  %145 = call i32 @qib_write_kreg_port(%struct.qib_pportdata* %129, i32 %130, i32 %144)
  %146 = load %struct.qib_pportdata*, %struct.qib_pportdata** %4, align 8
  %147 = call i32 @force_h1(%struct.qib_pportdata* %146)
  br label %148

148:                                              ; preds = %143, %116, %109, %98, %91, %78
  br label %149

149:                                              ; preds = %148, %39
  %150 = load i32, i32* %7, align 4
  %151 = add nsw i32 %150, 1
  store i32 %151, i32* %7, align 4
  br label %10

152:                                              ; preds = %10
  %153 = load %struct.qib_devdata*, %struct.qib_devdata** %3, align 8
  %154 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %153, i32 0, i32 2
  %155 = load i64, i64* @jiffies, align 8
  %156 = load i32, i32* @HZ, align 4
  %157 = load i32, i32* @ACTIVITY_TIMER, align 4
  %158 = mul nsw i32 %156, %157
  %159 = sext i32 %158 to i64
  %160 = add nsw i64 %155, %159
  %161 = call i32 @mod_timer(i32* %154, i64 %160)
  ret void
}

declare dso_local i64 @qib_portcntr_7322(%struct.qib_pportdata*, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @atomic_add(i32, i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i64 @time_is_before_jiffies(i64) #1

declare dso_local i32 @qib_write_kreg_port(%struct.qib_pportdata*, i32, i32) #1

declare dso_local i32 @krp_static_adapt_dis(i32) #1

declare dso_local i32 @force_h1(%struct.qib_pportdata*) #1

declare dso_local i32 @mod_timer(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
