; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/lpfc/extr_lpfc_sli.c_lpfc_set_rrq_active.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/lpfc/extr_lpfc_sli.c_lpfc_set_rrq_active.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpfc_hba = type { i32, i32, i32, i32, i32, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.lpfc_nodelist = type { i32, %struct.TYPE_6__*, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32 }
%struct.lpfc_node_rrq = type { i32, i8*, %struct.TYPE_6__*, i32, %struct.lpfc_nodelist*, i64, i8*, i8* }

@EINVAL = common dso_local global i32 0, align 4
@FC_UNLOADING = common dso_local global i32 0, align 4
@HBA_RRQ_ACTIVE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@KERN_INFO = common dso_local global i32 0, align 4
@LOG_SLI = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [65 x i8] c"3155 Unable to allocate RRQ xri:0x%x rxid:0x%x DID:0x%x Send:%d\0A\00", align 1
@jiffies = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [63 x i8] c"2921 Can't set rrq active xri:0x%x rxid:0x%x DID:0x%x Send:%d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @lpfc_set_rrq_active(%struct.lpfc_hba* %0, %struct.lpfc_nodelist* %1, i8* %2, i8* %3, i8* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.lpfc_hba*, align 8
  %8 = alloca %struct.lpfc_nodelist*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.lpfc_node_rrq*, align 8
  %14 = alloca i32, align 4
  store %struct.lpfc_hba* %0, %struct.lpfc_hba** %7, align 8
  store %struct.lpfc_nodelist* %1, %struct.lpfc_nodelist** %8, align 8
  store i8* %2, i8** %9, align 8
  store i8* %3, i8** %10, align 8
  store i8* %4, i8** %11, align 8
  %15 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %8, align 8
  %16 = icmp ne %struct.lpfc_nodelist* %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %5
  %18 = load i32, i32* @EINVAL, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %6, align 4
  br label %188

20:                                               ; preds = %5
  %21 = load %struct.lpfc_hba*, %struct.lpfc_hba** %7, align 8
  %22 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %28, label %25

25:                                               ; preds = %20
  %26 = load i32, i32* @EINVAL, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %6, align 4
  br label %188

28:                                               ; preds = %20
  %29 = load %struct.lpfc_hba*, %struct.lpfc_hba** %7, align 8
  %30 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %29, i32 0, i32 2
  %31 = load i64, i64* %12, align 8
  %32 = call i32 @spin_lock_irqsave(i32* %30, i64 %31)
  %33 = load %struct.lpfc_hba*, %struct.lpfc_hba** %7, align 8
  %34 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %33, i32 0, i32 6
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @FC_UNLOADING, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %48

41:                                               ; preds = %28
  %42 = load i32, i32* @HBA_RRQ_ACTIVE, align 4
  %43 = xor i32 %42, -1
  %44 = load %struct.lpfc_hba*, %struct.lpfc_hba** %7, align 8
  %45 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %44, i32 0, i32 3
  %46 = load i32, i32* %45, align 4
  %47 = and i32 %46, %43
  store i32 %47, i32* %45, align 4
  br label %171

48:                                               ; preds = %28
  %49 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %8, align 8
  %50 = call i64 @NLP_CHK_FREE_REQ(%struct.lpfc_nodelist* %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %48
  br label %171

53:                                               ; preds = %48
  %54 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %8, align 8
  %55 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %54, i32 0, i32 1
  %56 = load %struct.TYPE_6__*, %struct.TYPE_6__** %55, align 8
  %57 = icmp ne %struct.TYPE_6__* %56, null
  br i1 %57, label %58, label %68

58:                                               ; preds = %53
  %59 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %8, align 8
  %60 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %59, i32 0, i32 1
  %61 = load %struct.TYPE_6__*, %struct.TYPE_6__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* @FC_UNLOADING, align 4
  %65 = and i32 %63, %64
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %58
  br label %171

68:                                               ; preds = %58, %53
  %69 = load i8*, i8** %9, align 8
  %70 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %8, align 8
  %71 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %70, i32 0, i32 2
  %72 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = call i64 @test_and_set_bit(i8* %69, i32 %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %77

76:                                               ; preds = %68
  br label %171

77:                                               ; preds = %68
  %78 = load %struct.lpfc_hba*, %struct.lpfc_hba** %7, align 8
  %79 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %78, i32 0, i32 2
  %80 = load i64, i64* %12, align 8
  %81 = call i32 @spin_unlock_irqrestore(i32* %79, i64 %80)
  %82 = load %struct.lpfc_hba*, %struct.lpfc_hba** %7, align 8
  %83 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %82, i32 0, i32 5
  %84 = load i32, i32* %83, align 4
  %85 = load i32, i32* @GFP_KERNEL, align 4
  %86 = call %struct.lpfc_node_rrq* @mempool_alloc(i32 %84, i32 %85)
  store %struct.lpfc_node_rrq* %86, %struct.lpfc_node_rrq** %13, align 8
  %87 = load %struct.lpfc_node_rrq*, %struct.lpfc_node_rrq** %13, align 8
  %88 = icmp ne %struct.lpfc_node_rrq* %87, null
  br i1 %88, label %102, label %89

89:                                               ; preds = %77
  %90 = load %struct.lpfc_hba*, %struct.lpfc_hba** %7, align 8
  %91 = load i32, i32* @KERN_INFO, align 4
  %92 = load i32, i32* @LOG_SLI, align 4
  %93 = load i8*, i8** %9, align 8
  %94 = load i8*, i8** %10, align 8
  %95 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %8, align 8
  %96 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = load i8*, i8** %11, align 8
  %99 = call i32 @lpfc_printf_log(%struct.lpfc_hba* %90, i32 %91, i32 %92, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str, i64 0, i64 0), i8* %93, i8* %94, i32 %97, i8* %98)
  %100 = load i32, i32* @EINVAL, align 4
  %101 = sub nsw i32 0, %100
  store i32 %101, i32* %6, align 4
  br label %188

102:                                              ; preds = %77
  %103 = load %struct.lpfc_hba*, %struct.lpfc_hba** %7, align 8
  %104 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = icmp eq i32 %105, 1
  br i1 %106, label %107, label %111

107:                                              ; preds = %102
  %108 = load i8*, i8** %11, align 8
  %109 = load %struct.lpfc_node_rrq*, %struct.lpfc_node_rrq** %13, align 8
  %110 = getelementptr inbounds %struct.lpfc_node_rrq, %struct.lpfc_node_rrq* %109, i32 0, i32 7
  store i8* %108, i8** %110, align 8
  br label %114

111:                                              ; preds = %102
  %112 = load %struct.lpfc_node_rrq*, %struct.lpfc_node_rrq** %13, align 8
  %113 = getelementptr inbounds %struct.lpfc_node_rrq, %struct.lpfc_node_rrq* %112, i32 0, i32 7
  store i8* null, i8** %113, align 8
  br label %114

114:                                              ; preds = %111, %107
  %115 = load i8*, i8** %9, align 8
  %116 = load %struct.lpfc_node_rrq*, %struct.lpfc_node_rrq** %13, align 8
  %117 = getelementptr inbounds %struct.lpfc_node_rrq, %struct.lpfc_node_rrq* %116, i32 0, i32 6
  store i8* %115, i8** %117, align 8
  %118 = load i64, i64* @jiffies, align 8
  %119 = load %struct.lpfc_hba*, %struct.lpfc_hba** %7, align 8
  %120 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %119, i32 0, i32 1
  %121 = load i32, i32* %120, align 4
  %122 = add nsw i32 %121, 1
  %123 = mul nsw i32 1000, %122
  %124 = call i64 @msecs_to_jiffies(i32 %123)
  %125 = add nsw i64 %118, %124
  %126 = load %struct.lpfc_node_rrq*, %struct.lpfc_node_rrq** %13, align 8
  %127 = getelementptr inbounds %struct.lpfc_node_rrq, %struct.lpfc_node_rrq* %126, i32 0, i32 5
  store i64 %125, i64* %127, align 8
  %128 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %8, align 8
  %129 = load %struct.lpfc_node_rrq*, %struct.lpfc_node_rrq** %13, align 8
  %130 = getelementptr inbounds %struct.lpfc_node_rrq, %struct.lpfc_node_rrq* %129, i32 0, i32 4
  store %struct.lpfc_nodelist* %128, %struct.lpfc_nodelist** %130, align 8
  %131 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %8, align 8
  %132 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 8
  %134 = load %struct.lpfc_node_rrq*, %struct.lpfc_node_rrq** %13, align 8
  %135 = getelementptr inbounds %struct.lpfc_node_rrq, %struct.lpfc_node_rrq* %134, i32 0, i32 3
  store i32 %133, i32* %135, align 8
  %136 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %8, align 8
  %137 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %136, i32 0, i32 1
  %138 = load %struct.TYPE_6__*, %struct.TYPE_6__** %137, align 8
  %139 = load %struct.lpfc_node_rrq*, %struct.lpfc_node_rrq** %13, align 8
  %140 = getelementptr inbounds %struct.lpfc_node_rrq, %struct.lpfc_node_rrq* %139, i32 0, i32 2
  store %struct.TYPE_6__* %138, %struct.TYPE_6__** %140, align 8
  %141 = load i8*, i8** %10, align 8
  %142 = load %struct.lpfc_node_rrq*, %struct.lpfc_node_rrq** %13, align 8
  %143 = getelementptr inbounds %struct.lpfc_node_rrq, %struct.lpfc_node_rrq* %142, i32 0, i32 1
  store i8* %141, i8** %143, align 8
  %144 = load %struct.lpfc_hba*, %struct.lpfc_hba** %7, align 8
  %145 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %144, i32 0, i32 2
  %146 = load i64, i64* %12, align 8
  %147 = call i32 @spin_lock_irqsave(i32* %145, i64 %146)
  %148 = load %struct.lpfc_hba*, %struct.lpfc_hba** %7, align 8
  %149 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %148, i32 0, i32 4
  %150 = call i32 @list_empty(i32* %149)
  store i32 %150, i32* %14, align 4
  %151 = load %struct.lpfc_node_rrq*, %struct.lpfc_node_rrq** %13, align 8
  %152 = getelementptr inbounds %struct.lpfc_node_rrq, %struct.lpfc_node_rrq* %151, i32 0, i32 0
  %153 = load %struct.lpfc_hba*, %struct.lpfc_hba** %7, align 8
  %154 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %153, i32 0, i32 4
  %155 = call i32 @list_add_tail(i32* %152, i32* %154)
  %156 = load i32, i32* @HBA_RRQ_ACTIVE, align 4
  %157 = load %struct.lpfc_hba*, %struct.lpfc_hba** %7, align 8
  %158 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %157, i32 0, i32 3
  %159 = load i32, i32* %158, align 4
  %160 = or i32 %159, %156
  store i32 %160, i32* %158, align 4
  %161 = load i32, i32* %14, align 4
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %163, label %166

163:                                              ; preds = %114
  %164 = load %struct.lpfc_hba*, %struct.lpfc_hba** %7, align 8
  %165 = call i32 @lpfc_worker_wake_up(%struct.lpfc_hba* %164)
  br label %166

166:                                              ; preds = %163, %114
  %167 = load %struct.lpfc_hba*, %struct.lpfc_hba** %7, align 8
  %168 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %167, i32 0, i32 2
  %169 = load i64, i64* %12, align 8
  %170 = call i32 @spin_unlock_irqrestore(i32* %168, i64 %169)
  store i32 0, i32* %6, align 4
  br label %188

171:                                              ; preds = %76, %67, %52, %41
  %172 = load %struct.lpfc_hba*, %struct.lpfc_hba** %7, align 8
  %173 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %172, i32 0, i32 2
  %174 = load i64, i64* %12, align 8
  %175 = call i32 @spin_unlock_irqrestore(i32* %173, i64 %174)
  %176 = load %struct.lpfc_hba*, %struct.lpfc_hba** %7, align 8
  %177 = load i32, i32* @KERN_INFO, align 4
  %178 = load i32, i32* @LOG_SLI, align 4
  %179 = load i8*, i8** %9, align 8
  %180 = load i8*, i8** %10, align 8
  %181 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %8, align 8
  %182 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %181, i32 0, i32 0
  %183 = load i32, i32* %182, align 8
  %184 = load i8*, i8** %11, align 8
  %185 = call i32 @lpfc_printf_log(%struct.lpfc_hba* %176, i32 %177, i32 %178, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.1, i64 0, i64 0), i8* %179, i8* %180, i32 %183, i8* %184)
  %186 = load i32, i32* @EINVAL, align 4
  %187 = sub nsw i32 0, %186
  store i32 %187, i32* %6, align 4
  br label %188

188:                                              ; preds = %171, %166, %89, %25, %17
  %189 = load i32, i32* %6, align 4
  ret i32 %189
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i64 @NLP_CHK_FREE_REQ(%struct.lpfc_nodelist*) #1

declare dso_local i64 @test_and_set_bit(i8*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local %struct.lpfc_node_rrq* @mempool_alloc(i32, i32) #1

declare dso_local i32 @lpfc_printf_log(%struct.lpfc_hba*, i32, i32, i8*, i8*, i8*, i32, i8*) #1

declare dso_local i64 @msecs_to_jiffies(i32) #1

declare dso_local i32 @list_empty(i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @lpfc_worker_wake_up(%struct.lpfc_hba*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
