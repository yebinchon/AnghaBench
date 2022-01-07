; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/vmxnet3/extr_vmxnet3_drv.c_vmxnet3_process_events.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/vmxnet3/extr_vmxnet3_drv.c_vmxnet3_process_events.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vmxnet3_adapter = type { i32, i32, i32, %struct.TYPE_12__*, %struct.TYPE_10__*, %struct.TYPE_9__*, i32, %struct.TYPE_7__* }
%struct.TYPE_12__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32, i64 }
%struct.TYPE_10__ = type { i32, i32 }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32, i64 }
%struct.TYPE_7__ = type { i32 }

@VMXNET3_ECR_LINK = common dso_local global i32 0, align 4
@VMXNET3_ECR_TQERR = common dso_local global i32 0, align 4
@VMXNET3_ECR_RQERR = common dso_local global i32 0, align 4
@VMXNET3_REG_CMD = common dso_local global i32 0, align 4
@VMXNET3_CMD_GET_QUEUE_STATUS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"%s: tq[%d] error 0x%x\0A\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"%s: rq[%d] error 0x%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vmxnet3_adapter*)* @vmxnet3_process_events to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vmxnet3_process_events(%struct.vmxnet3_adapter* %0) #0 {
  %2 = alloca %struct.vmxnet3_adapter*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store %struct.vmxnet3_adapter* %0, %struct.vmxnet3_adapter** %2, align 8
  %6 = load %struct.vmxnet3_adapter*, %struct.vmxnet3_adapter** %2, align 8
  %7 = getelementptr inbounds %struct.vmxnet3_adapter, %struct.vmxnet3_adapter* %6, i32 0, i32 7
  %8 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @le32_to_cpu(i32 %10)
  store i32 %11, i32* %5, align 4
  %12 = load i32, i32* %5, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %1
  br label %136

15:                                               ; preds = %1
  %16 = load %struct.vmxnet3_adapter*, %struct.vmxnet3_adapter** %2, align 8
  %17 = load i32, i32* %5, align 4
  %18 = call i32 @vmxnet3_ack_events(%struct.vmxnet3_adapter* %16, i32 %17)
  %19 = load i32, i32* %5, align 4
  %20 = load i32, i32* @VMXNET3_ECR_LINK, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %15
  %24 = load %struct.vmxnet3_adapter*, %struct.vmxnet3_adapter** %2, align 8
  %25 = call i32 @vmxnet3_check_link(%struct.vmxnet3_adapter* %24, i32 1)
  br label %26

26:                                               ; preds = %23, %15
  %27 = load i32, i32* %5, align 4
  %28 = load i32, i32* @VMXNET3_ECR_TQERR, align 4
  %29 = load i32, i32* @VMXNET3_ECR_RQERR, align 4
  %30 = or i32 %28, %29
  %31 = and i32 %27, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %136

33:                                               ; preds = %26
  %34 = load %struct.vmxnet3_adapter*, %struct.vmxnet3_adapter** %2, align 8
  %35 = getelementptr inbounds %struct.vmxnet3_adapter, %struct.vmxnet3_adapter* %34, i32 0, i32 6
  %36 = load i64, i64* %4, align 8
  %37 = call i32 @spin_lock_irqsave(i32* %35, i64 %36)
  %38 = load %struct.vmxnet3_adapter*, %struct.vmxnet3_adapter** %2, align 8
  %39 = load i32, i32* @VMXNET3_REG_CMD, align 4
  %40 = load i32, i32* @VMXNET3_CMD_GET_QUEUE_STATUS, align 4
  %41 = call i32 @VMXNET3_WRITE_BAR1_REG(%struct.vmxnet3_adapter* %38, i32 %39, i32 %40)
  %42 = load %struct.vmxnet3_adapter*, %struct.vmxnet3_adapter** %2, align 8
  %43 = getelementptr inbounds %struct.vmxnet3_adapter, %struct.vmxnet3_adapter* %42, i32 0, i32 6
  %44 = load i64, i64* %4, align 8
  %45 = call i32 @spin_unlock_irqrestore(i32* %43, i64 %44)
  store i32 0, i32* %3, align 4
  br label %46

46:                                               ; preds = %86, %33
  %47 = load i32, i32* %3, align 4
  %48 = load %struct.vmxnet3_adapter*, %struct.vmxnet3_adapter** %2, align 8
  %49 = getelementptr inbounds %struct.vmxnet3_adapter, %struct.vmxnet3_adapter* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = icmp slt i32 %47, %50
  br i1 %51, label %52, label %89

52:                                               ; preds = %46
  %53 = load %struct.vmxnet3_adapter*, %struct.vmxnet3_adapter** %2, align 8
  %54 = getelementptr inbounds %struct.vmxnet3_adapter, %struct.vmxnet3_adapter* %53, i32 0, i32 5
  %55 = load %struct.TYPE_9__*, %struct.TYPE_9__** %54, align 8
  %56 = load i32, i32* %3, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %55, i64 %57
  %59 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %59, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %85

63:                                               ; preds = %52
  %64 = load %struct.vmxnet3_adapter*, %struct.vmxnet3_adapter** %2, align 8
  %65 = getelementptr inbounds %struct.vmxnet3_adapter, %struct.vmxnet3_adapter* %64, i32 0, i32 4
  %66 = load %struct.TYPE_10__*, %struct.TYPE_10__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %66, i32 0, i32 1
  %68 = load %struct.vmxnet3_adapter*, %struct.vmxnet3_adapter** %2, align 8
  %69 = getelementptr inbounds %struct.vmxnet3_adapter, %struct.vmxnet3_adapter* %68, i32 0, i32 4
  %70 = load %struct.TYPE_10__*, %struct.TYPE_10__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* %3, align 4
  %74 = load %struct.vmxnet3_adapter*, %struct.vmxnet3_adapter** %2, align 8
  %75 = getelementptr inbounds %struct.vmxnet3_adapter, %struct.vmxnet3_adapter* %74, i32 0, i32 5
  %76 = load %struct.TYPE_9__*, %struct.TYPE_9__** %75, align 8
  %77 = load i32, i32* %3, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %76, i64 %78
  %80 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = call i32 @le32_to_cpu(i32 %82)
  %84 = call i32 @dev_err(i32* %67, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %72, i32 %73, i32 %83)
  br label %85

85:                                               ; preds = %63, %52
  br label %86

86:                                               ; preds = %85
  %87 = load i32, i32* %3, align 4
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %3, align 4
  br label %46

89:                                               ; preds = %46
  store i32 0, i32* %3, align 4
  br label %90

90:                                               ; preds = %129, %89
  %91 = load i32, i32* %3, align 4
  %92 = load %struct.vmxnet3_adapter*, %struct.vmxnet3_adapter** %2, align 8
  %93 = getelementptr inbounds %struct.vmxnet3_adapter, %struct.vmxnet3_adapter* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = icmp slt i32 %91, %94
  br i1 %95, label %96, label %132

96:                                               ; preds = %90
  %97 = load %struct.vmxnet3_adapter*, %struct.vmxnet3_adapter** %2, align 8
  %98 = getelementptr inbounds %struct.vmxnet3_adapter, %struct.vmxnet3_adapter* %97, i32 0, i32 3
  %99 = load %struct.TYPE_12__*, %struct.TYPE_12__** %98, align 8
  %100 = load i32, i32* %3, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %99, i64 %101
  %103 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %103, i32 0, i32 1
  %105 = load i64, i64* %104, align 8
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %128

107:                                              ; preds = %96
  %108 = load %struct.vmxnet3_adapter*, %struct.vmxnet3_adapter** %2, align 8
  %109 = getelementptr inbounds %struct.vmxnet3_adapter, %struct.vmxnet3_adapter* %108, i32 0, i32 4
  %110 = load %struct.TYPE_10__*, %struct.TYPE_10__** %109, align 8
  %111 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %110, i32 0, i32 1
  %112 = load %struct.vmxnet3_adapter*, %struct.vmxnet3_adapter** %2, align 8
  %113 = getelementptr inbounds %struct.vmxnet3_adapter, %struct.vmxnet3_adapter* %112, i32 0, i32 4
  %114 = load %struct.TYPE_10__*, %struct.TYPE_10__** %113, align 8
  %115 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 4
  %117 = load i32, i32* %3, align 4
  %118 = load %struct.vmxnet3_adapter*, %struct.vmxnet3_adapter** %2, align 8
  %119 = getelementptr inbounds %struct.vmxnet3_adapter, %struct.vmxnet3_adapter* %118, i32 0, i32 3
  %120 = load %struct.TYPE_12__*, %struct.TYPE_12__** %119, align 8
  %121 = load i32, i32* %3, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %120, i64 %122
  %124 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %123, i32 0, i32 0
  %125 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 8
  %127 = call i32 @dev_err(i32* %111, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 %116, i32 %117, i32 %126)
  br label %128

128:                                              ; preds = %107, %96
  br label %129

129:                                              ; preds = %128
  %130 = load i32, i32* %3, align 4
  %131 = add nsw i32 %130, 1
  store i32 %131, i32* %3, align 4
  br label %90

132:                                              ; preds = %90
  %133 = load %struct.vmxnet3_adapter*, %struct.vmxnet3_adapter** %2, align 8
  %134 = getelementptr inbounds %struct.vmxnet3_adapter, %struct.vmxnet3_adapter* %133, i32 0, i32 2
  %135 = call i32 @schedule_work(i32* %134)
  br label %136

136:                                              ; preds = %14, %132, %26
  ret void
}

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @vmxnet3_ack_events(%struct.vmxnet3_adapter*, i32) #1

declare dso_local i32 @vmxnet3_check_link(%struct.vmxnet3_adapter*, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @VMXNET3_WRITE_BAR1_REG(%struct.vmxnet3_adapter*, i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @dev_err(i32*, i8*, i32, i32, i32) #1

declare dso_local i32 @schedule_work(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
