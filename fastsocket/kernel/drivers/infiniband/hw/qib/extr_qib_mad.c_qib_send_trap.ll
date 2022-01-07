; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/qib/extr_qib_mad.c_qib_send_trap.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/qib/extr_qib_mad.c_qib_send_trap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qib_ibport = type { i64, i64, i64, i32, %struct.TYPE_3__*, i32, %struct.ib_mad_agent* }
%struct.TYPE_3__ = type { %struct.ib_mad_send_buf }
%struct.ib_mad_send_buf = type { %struct.ib_mad_send_buf*, %struct.ib_smp* }
%struct.ib_smp = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.ib_mad_agent = type { i32 }
%struct.ib_ah = type { %struct.ib_ah*, %struct.ib_smp* }
%struct.TYPE_4__ = type { i32 }

@QIBL_LINKACTIVE = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@IB_MGMT_MAD_HDR = common dso_local global i32 0, align 4
@IB_MGMT_MAD_DATA = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@IB_MGMT_BASE_VERSION = common dso_local global i32 0, align 4
@IB_MGMT_CLASS_SUBN_LID_ROUTED = common dso_local global i32 0, align 4
@IB_MGMT_METHOD_TRAP = common dso_local global i32 0, align 4
@IB_SMP_ATTR_NOTICE = common dso_local global i32 0, align 4
@IB_LID_PERMISSIVE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.qib_ibport*, i8*, i32)* @qib_send_trap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qib_send_trap(%struct.qib_ibport* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.qib_ibport*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.ib_mad_send_buf*, align 8
  %8 = alloca %struct.ib_mad_agent*, align 8
  %9 = alloca %struct.ib_smp*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.ib_ah*, align 8
  store %struct.qib_ibport* %0, %struct.qib_ibport** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %14 = load %struct.qib_ibport*, %struct.qib_ibport** %4, align 8
  %15 = getelementptr inbounds %struct.qib_ibport, %struct.qib_ibport* %14, i32 0, i32 6
  %16 = load %struct.ib_mad_agent*, %struct.ib_mad_agent** %15, align 8
  store %struct.ib_mad_agent* %16, %struct.ib_mad_agent** %8, align 8
  %17 = load %struct.ib_mad_agent*, %struct.ib_mad_agent** %8, align 8
  %18 = icmp ne %struct.ib_mad_agent* %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %3
  br label %169

20:                                               ; preds = %3
  %21 = load %struct.qib_ibport*, %struct.qib_ibport** %4, align 8
  %22 = call %struct.TYPE_4__* @ppd_from_ibp(%struct.qib_ibport* %21)
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @QIBL_LINKACTIVE, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %29, label %28

28:                                               ; preds = %20
  br label %169

29:                                               ; preds = %20
  %30 = load %struct.qib_ibport*, %struct.qib_ibport** %4, align 8
  %31 = getelementptr inbounds %struct.qib_ibport, %struct.qib_ibport* %30, i32 0, i32 2
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %42

34:                                               ; preds = %29
  %35 = load i64, i64* @jiffies, align 8
  %36 = load %struct.qib_ibport*, %struct.qib_ibport** %4, align 8
  %37 = getelementptr inbounds %struct.qib_ibport, %struct.qib_ibport* %36, i32 0, i32 2
  %38 = load i64, i64* %37, align 8
  %39 = call i64 @time_before(i64 %35, i64 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %34
  br label %169

42:                                               ; preds = %34, %29
  %43 = load %struct.ib_mad_agent*, %struct.ib_mad_agent** %8, align 8
  %44 = load i32, i32* @IB_MGMT_MAD_HDR, align 4
  %45 = load i32, i32* @IB_MGMT_MAD_DATA, align 4
  %46 = load i32, i32* @GFP_ATOMIC, align 4
  %47 = call %struct.ib_mad_send_buf* @ib_create_send_mad(%struct.ib_mad_agent* %43, i32 0, i32 0, i32 0, i32 %44, i32 %45, i32 %46)
  store %struct.ib_mad_send_buf* %47, %struct.ib_mad_send_buf** %7, align 8
  %48 = load %struct.ib_mad_send_buf*, %struct.ib_mad_send_buf** %7, align 8
  %49 = call i64 @IS_ERR(%struct.ib_mad_send_buf* %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %42
  br label %169

52:                                               ; preds = %42
  %53 = load %struct.ib_mad_send_buf*, %struct.ib_mad_send_buf** %7, align 8
  %54 = getelementptr inbounds %struct.ib_mad_send_buf, %struct.ib_mad_send_buf* %53, i32 0, i32 1
  %55 = load %struct.ib_smp*, %struct.ib_smp** %54, align 8
  store %struct.ib_smp* %55, %struct.ib_smp** %9, align 8
  %56 = load i32, i32* @IB_MGMT_BASE_VERSION, align 4
  %57 = load %struct.ib_smp*, %struct.ib_smp** %9, align 8
  %58 = getelementptr inbounds %struct.ib_smp, %struct.ib_smp* %57, i32 0, i32 6
  store i32 %56, i32* %58, align 4
  %59 = load i32, i32* @IB_MGMT_CLASS_SUBN_LID_ROUTED, align 4
  %60 = load %struct.ib_smp*, %struct.ib_smp** %9, align 8
  %61 = getelementptr inbounds %struct.ib_smp, %struct.ib_smp* %60, i32 0, i32 5
  store i32 %59, i32* %61, align 4
  %62 = load %struct.ib_smp*, %struct.ib_smp** %9, align 8
  %63 = getelementptr inbounds %struct.ib_smp, %struct.ib_smp* %62, i32 0, i32 0
  store i32 1, i32* %63, align 4
  %64 = load i32, i32* @IB_MGMT_METHOD_TRAP, align 4
  %65 = load %struct.ib_smp*, %struct.ib_smp** %9, align 8
  %66 = getelementptr inbounds %struct.ib_smp, %struct.ib_smp* %65, i32 0, i32 4
  store i32 %64, i32* %66, align 4
  %67 = load %struct.qib_ibport*, %struct.qib_ibport** %4, align 8
  %68 = getelementptr inbounds %struct.qib_ibport, %struct.qib_ibport* %67, i32 0, i32 5
  %69 = load i32, i32* %68, align 8
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %68, align 8
  %71 = load %struct.qib_ibport*, %struct.qib_ibport** %4, align 8
  %72 = getelementptr inbounds %struct.qib_ibport, %struct.qib_ibport* %71, i32 0, i32 5
  %73 = load i32, i32* %72, align 8
  %74 = call i32 @cpu_to_be64(i32 %73)
  %75 = load %struct.ib_smp*, %struct.ib_smp** %9, align 8
  %76 = getelementptr inbounds %struct.ib_smp, %struct.ib_smp* %75, i32 0, i32 3
  store i32 %74, i32* %76, align 4
  %77 = load i32, i32* @IB_SMP_ATTR_NOTICE, align 4
  %78 = load %struct.ib_smp*, %struct.ib_smp** %9, align 8
  %79 = getelementptr inbounds %struct.ib_smp, %struct.ib_smp* %78, i32 0, i32 2
  store i32 %77, i32* %79, align 4
  %80 = load %struct.ib_smp*, %struct.ib_smp** %9, align 8
  %81 = getelementptr inbounds %struct.ib_smp, %struct.ib_smp* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = load i8*, i8** %5, align 8
  %84 = load i32, i32* %6, align 4
  %85 = call i32 @memcpy(i32 %82, i8* %83, i32 %84)
  %86 = load %struct.qib_ibport*, %struct.qib_ibport** %4, align 8
  %87 = getelementptr inbounds %struct.qib_ibport, %struct.qib_ibport* %86, i32 0, i32 3
  %88 = load i64, i64* %11, align 8
  %89 = call i32 @spin_lock_irqsave(i32* %87, i64 %88)
  %90 = load %struct.qib_ibport*, %struct.qib_ibport** %4, align 8
  %91 = getelementptr inbounds %struct.qib_ibport, %struct.qib_ibport* %90, i32 0, i32 4
  %92 = load %struct.TYPE_3__*, %struct.TYPE_3__** %91, align 8
  %93 = icmp ne %struct.TYPE_3__* %92, null
  br i1 %93, label %131, label %94

94:                                               ; preds = %52
  %95 = load %struct.qib_ibport*, %struct.qib_ibport** %4, align 8
  %96 = getelementptr inbounds %struct.qib_ibport, %struct.qib_ibport* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = load i32, i32* @IB_LID_PERMISSIVE, align 4
  %99 = call i64 @be16_to_cpu(i32 %98)
  %100 = icmp ne i64 %97, %99
  br i1 %100, label %101, label %127

101:                                              ; preds = %94
  %102 = load %struct.qib_ibport*, %struct.qib_ibport** %4, align 8
  %103 = load %struct.qib_ibport*, %struct.qib_ibport** %4, align 8
  %104 = getelementptr inbounds %struct.qib_ibport, %struct.qib_ibport* %103, i32 0, i32 0
  %105 = load i64, i64* %104, align 8
  %106 = call %struct.ib_mad_send_buf* @qib_create_qp0_ah(%struct.qib_ibport* %102, i64 %105)
  %107 = bitcast %struct.ib_mad_send_buf* %106 to %struct.ib_ah*
  store %struct.ib_ah* %107, %struct.ib_ah** %13, align 8
  %108 = load %struct.ib_ah*, %struct.ib_ah** %13, align 8
  %109 = bitcast %struct.ib_ah* %108 to %struct.ib_mad_send_buf*
  %110 = call i64 @IS_ERR(%struct.ib_mad_send_buf* %109)
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %116

112:                                              ; preds = %101
  %113 = load %struct.ib_ah*, %struct.ib_ah** %13, align 8
  %114 = bitcast %struct.ib_ah* %113 to %struct.ib_mad_send_buf*
  %115 = call i32 @PTR_ERR(%struct.ib_mad_send_buf* %114)
  store i32 %115, i32* %10, align 4
  br label %126

116:                                              ; preds = %101
  %117 = load %struct.ib_ah*, %struct.ib_ah** %13, align 8
  %118 = bitcast %struct.ib_ah* %117 to %struct.ib_mad_send_buf*
  %119 = load %struct.ib_mad_send_buf*, %struct.ib_mad_send_buf** %7, align 8
  %120 = getelementptr inbounds %struct.ib_mad_send_buf, %struct.ib_mad_send_buf* %119, i32 0, i32 0
  store %struct.ib_mad_send_buf* %118, %struct.ib_mad_send_buf** %120, align 8
  %121 = load %struct.ib_ah*, %struct.ib_ah** %13, align 8
  %122 = bitcast %struct.ib_ah* %121 to %struct.ib_mad_send_buf*
  %123 = call %struct.TYPE_3__* @to_iah(%struct.ib_mad_send_buf* %122)
  %124 = load %struct.qib_ibport*, %struct.qib_ibport** %4, align 8
  %125 = getelementptr inbounds %struct.qib_ibport, %struct.qib_ibport* %124, i32 0, i32 4
  store %struct.TYPE_3__* %123, %struct.TYPE_3__** %125, align 8
  store i32 0, i32* %10, align 4
  br label %126

126:                                              ; preds = %116, %112
  br label %130

127:                                              ; preds = %94
  %128 = load i32, i32* @EINVAL, align 4
  %129 = sub nsw i32 0, %128
  store i32 %129, i32* %10, align 4
  br label %130

130:                                              ; preds = %127, %126
  br label %138

131:                                              ; preds = %52
  %132 = load %struct.qib_ibport*, %struct.qib_ibport** %4, align 8
  %133 = getelementptr inbounds %struct.qib_ibport, %struct.qib_ibport* %132, i32 0, i32 4
  %134 = load %struct.TYPE_3__*, %struct.TYPE_3__** %133, align 8
  %135 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %134, i32 0, i32 0
  %136 = load %struct.ib_mad_send_buf*, %struct.ib_mad_send_buf** %7, align 8
  %137 = getelementptr inbounds %struct.ib_mad_send_buf, %struct.ib_mad_send_buf* %136, i32 0, i32 0
  store %struct.ib_mad_send_buf* %135, %struct.ib_mad_send_buf** %137, align 8
  store i32 0, i32* %10, align 4
  br label %138

138:                                              ; preds = %131, %130
  %139 = load %struct.qib_ibport*, %struct.qib_ibport** %4, align 8
  %140 = getelementptr inbounds %struct.qib_ibport, %struct.qib_ibport* %139, i32 0, i32 3
  %141 = load i64, i64* %11, align 8
  %142 = call i32 @spin_unlock_irqrestore(i32* %140, i64 %141)
  %143 = load i32, i32* %10, align 4
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %148, label %145

145:                                              ; preds = %138
  %146 = load %struct.ib_mad_send_buf*, %struct.ib_mad_send_buf** %7, align 8
  %147 = call i32 @ib_post_send_mad(%struct.ib_mad_send_buf* %146, i32* null)
  store i32 %147, i32* %10, align 4
  br label %148

148:                                              ; preds = %145, %138
  %149 = load i32, i32* %10, align 4
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %164, label %151

151:                                              ; preds = %148
  %152 = load %struct.qib_ibport*, %struct.qib_ibport** %4, align 8
  %153 = getelementptr inbounds %struct.qib_ibport, %struct.qib_ibport* %152, i32 0, i32 1
  %154 = load i64, i64* %153, align 8
  %155 = shl i64 1, %154
  %156 = mul i64 4096, %155
  %157 = udiv i64 %156, 1000
  store i64 %157, i64* %12, align 8
  %158 = load i64, i64* @jiffies, align 8
  %159 = load i64, i64* %12, align 8
  %160 = call i64 @usecs_to_jiffies(i64 %159)
  %161 = add nsw i64 %158, %160
  %162 = load %struct.qib_ibport*, %struct.qib_ibport** %4, align 8
  %163 = getelementptr inbounds %struct.qib_ibport, %struct.qib_ibport* %162, i32 0, i32 2
  store i64 %161, i64* %163, align 8
  br label %169

164:                                              ; preds = %148
  %165 = load %struct.ib_mad_send_buf*, %struct.ib_mad_send_buf** %7, align 8
  %166 = call i32 @ib_free_send_mad(%struct.ib_mad_send_buf* %165)
  %167 = load %struct.qib_ibport*, %struct.qib_ibport** %4, align 8
  %168 = getelementptr inbounds %struct.qib_ibport, %struct.qib_ibport* %167, i32 0, i32 2
  store i64 0, i64* %168, align 8
  br label %169

169:                                              ; preds = %19, %28, %41, %51, %164, %151
  ret void
}

declare dso_local %struct.TYPE_4__* @ppd_from_ibp(%struct.qib_ibport*) #1

declare dso_local i64 @time_before(i64, i64) #1

declare dso_local %struct.ib_mad_send_buf* @ib_create_send_mad(%struct.ib_mad_agent*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i64 @IS_ERR(%struct.ib_mad_send_buf*) #1

declare dso_local i32 @cpu_to_be64(i32) #1

declare dso_local i32 @memcpy(i32, i8*, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i64 @be16_to_cpu(i32) #1

declare dso_local %struct.ib_mad_send_buf* @qib_create_qp0_ah(%struct.qib_ibport*, i64) #1

declare dso_local i32 @PTR_ERR(%struct.ib_mad_send_buf*) #1

declare dso_local %struct.TYPE_3__* @to_iah(%struct.ib_mad_send_buf*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @ib_post_send_mad(%struct.ib_mad_send_buf*, i32*) #1

declare dso_local i64 @usecs_to_jiffies(i64) #1

declare dso_local i32 @ib_free_send_mad(%struct.ib_mad_send_buf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
