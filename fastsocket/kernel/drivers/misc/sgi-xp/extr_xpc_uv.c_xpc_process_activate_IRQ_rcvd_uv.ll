; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/misc/sgi-xp/extr_xpc_uv.c_xpc_process_activate_IRQ_rcvd_uv.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/misc/sgi-xp/extr_xpc_uv.c_xpc_process_activate_IRQ_rcvd_uv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xpc_partition = type { i64, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64, i32 }

@xpc_activate_IRQ_rcvd = common dso_local global i64 0, align 8
@xpc_activate_IRQ_rcvd_lock = common dso_local global i32 0, align 4
@XP_MAX_NPARTITIONS_UV = common dso_local global i16 0, align 2
@xpc_partitions = common dso_local global %struct.xpc_partition* null, align 8
@XPC_P_ASR_ACTIVATE_UV = common dso_local global i64 0, align 8
@XPC_P_AS_INACTIVE = common dso_local global i64 0, align 8
@XPC_P_AS_DEACTIVATING = common dso_local global i64 0, align 8
@xpReactivating = common dso_local global i32 0, align 4
@XPC_P_ASR_REACTIVATE_UV = common dso_local global i64 0, align 8
@XPC_P_ASR_DEACTIVATE_UV = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @xpc_process_activate_IRQ_rcvd_uv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xpc_process_activate_IRQ_rcvd_uv() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i16, align 2
  %3 = alloca %struct.xpc_partition*, align 8
  %4 = alloca i64, align 8
  %5 = load i64, i64* @xpc_activate_IRQ_rcvd, align 8
  %6 = icmp eq i64 %5, 0
  %7 = zext i1 %6 to i32
  %8 = call i32 @DBUG_ON(i32 %7)
  %9 = load i64, i64* %1, align 8
  %10 = call i32 @spin_lock_irqsave(i32* @xpc_activate_IRQ_rcvd_lock, i64 %9)
  store i16 0, i16* %2, align 2
  br label %11

11:                                               ; preds = %112, %0
  %12 = load i16, i16* %2, align 2
  %13 = sext i16 %12 to i32
  %14 = load i16, i16* @XP_MAX_NPARTITIONS_UV, align 2
  %15 = sext i16 %14 to i32
  %16 = icmp slt i32 %13, %15
  br i1 %16, label %17, label %115

17:                                               ; preds = %11
  %18 = load %struct.xpc_partition*, %struct.xpc_partition** @xpc_partitions, align 8
  %19 = load i16, i16* %2, align 2
  %20 = sext i16 %19 to i64
  %21 = getelementptr inbounds %struct.xpc_partition, %struct.xpc_partition* %18, i64 %20
  store %struct.xpc_partition* %21, %struct.xpc_partition** %3, align 8
  %22 = load %struct.xpc_partition*, %struct.xpc_partition** %3, align 8
  %23 = getelementptr inbounds %struct.xpc_partition, %struct.xpc_partition* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp eq i64 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %17
  br label %112

29:                                               ; preds = %17
  %30 = load i64, i64* @xpc_activate_IRQ_rcvd, align 8
  %31 = add nsw i64 %30, -1
  store i64 %31, i64* @xpc_activate_IRQ_rcvd, align 8
  %32 = load i64, i64* @xpc_activate_IRQ_rcvd, align 8
  %33 = icmp slt i64 %32, 0
  %34 = zext i1 %33 to i32
  %35 = call i32 @BUG_ON(i32 %34)
  %36 = load %struct.xpc_partition*, %struct.xpc_partition** %3, align 8
  %37 = getelementptr inbounds %struct.xpc_partition, %struct.xpc_partition* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  store i64 %40, i64* %4, align 8
  %41 = load %struct.xpc_partition*, %struct.xpc_partition** %3, align 8
  %42 = getelementptr inbounds %struct.xpc_partition, %struct.xpc_partition* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 0
  store i64 0, i64* %44, align 8
  %45 = load i64, i64* %1, align 8
  %46 = call i32 @spin_unlock_irqrestore(i32* @xpc_activate_IRQ_rcvd_lock, i64 %45)
  %47 = load i64, i64* %4, align 8
  %48 = load i64, i64* @XPC_P_ASR_ACTIVATE_UV, align 8
  %49 = icmp eq i64 %47, %48
  br i1 %49, label %50, label %71

50:                                               ; preds = %29
  %51 = load %struct.xpc_partition*, %struct.xpc_partition** %3, align 8
  %52 = getelementptr inbounds %struct.xpc_partition, %struct.xpc_partition* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* @XPC_P_AS_INACTIVE, align 8
  %55 = icmp eq i64 %53, %54
  br i1 %55, label %56, label %59

56:                                               ; preds = %50
  %57 = load %struct.xpc_partition*, %struct.xpc_partition** %3, align 8
  %58 = call i32 @xpc_activate_partition(%struct.xpc_partition* %57)
  br label %70

59:                                               ; preds = %50
  %60 = load %struct.xpc_partition*, %struct.xpc_partition** %3, align 8
  %61 = getelementptr inbounds %struct.xpc_partition, %struct.xpc_partition* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* @XPC_P_AS_DEACTIVATING, align 8
  %64 = icmp eq i64 %62, %63
  br i1 %64, label %65, label %69

65:                                               ; preds = %59
  %66 = load %struct.xpc_partition*, %struct.xpc_partition** %3, align 8
  %67 = load i32, i32* @xpReactivating, align 4
  %68 = call i32 @XPC_DEACTIVATE_PARTITION(%struct.xpc_partition* %66, i32 %67)
  br label %69

69:                                               ; preds = %65, %59
  br label %70

70:                                               ; preds = %69, %56
  br label %105

71:                                               ; preds = %29
  %72 = load i64, i64* %4, align 8
  %73 = load i64, i64* @XPC_P_ASR_REACTIVATE_UV, align 8
  %74 = icmp eq i64 %72, %73
  br i1 %74, label %75, label %89

75:                                               ; preds = %71
  %76 = load %struct.xpc_partition*, %struct.xpc_partition** %3, align 8
  %77 = getelementptr inbounds %struct.xpc_partition, %struct.xpc_partition* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = load i64, i64* @XPC_P_AS_INACTIVE, align 8
  %80 = icmp eq i64 %78, %79
  br i1 %80, label %81, label %84

81:                                               ; preds = %75
  %82 = load %struct.xpc_partition*, %struct.xpc_partition** %3, align 8
  %83 = call i32 @xpc_activate_partition(%struct.xpc_partition* %82)
  br label %88

84:                                               ; preds = %75
  %85 = load %struct.xpc_partition*, %struct.xpc_partition** %3, align 8
  %86 = load i32, i32* @xpReactivating, align 4
  %87 = call i32 @XPC_DEACTIVATE_PARTITION(%struct.xpc_partition* %85, i32 %86)
  br label %88

88:                                               ; preds = %84, %81
  br label %104

89:                                               ; preds = %71
  %90 = load i64, i64* %4, align 8
  %91 = load i64, i64* @XPC_P_ASR_DEACTIVATE_UV, align 8
  %92 = icmp eq i64 %90, %91
  br i1 %92, label %93, label %101

93:                                               ; preds = %89
  %94 = load %struct.xpc_partition*, %struct.xpc_partition** %3, align 8
  %95 = load %struct.xpc_partition*, %struct.xpc_partition** %3, align 8
  %96 = getelementptr inbounds %struct.xpc_partition, %struct.xpc_partition* %95, i32 0, i32 1
  %97 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 8
  %100 = call i32 @XPC_DEACTIVATE_PARTITION(%struct.xpc_partition* %94, i32 %99)
  br label %103

101:                                              ; preds = %89
  %102 = call i32 (...) @BUG()
  br label %103

103:                                              ; preds = %101, %93
  br label %104

104:                                              ; preds = %103, %88
  br label %105

105:                                              ; preds = %104, %70
  %106 = load i64, i64* %1, align 8
  %107 = call i32 @spin_lock_irqsave(i32* @xpc_activate_IRQ_rcvd_lock, i64 %106)
  %108 = load i64, i64* @xpc_activate_IRQ_rcvd, align 8
  %109 = icmp eq i64 %108, 0
  br i1 %109, label %110, label %111

110:                                              ; preds = %105
  br label %115

111:                                              ; preds = %105
  br label %112

112:                                              ; preds = %111, %28
  %113 = load i16, i16* %2, align 2
  %114 = add i16 %113, 1
  store i16 %114, i16* %2, align 2
  br label %11

115:                                              ; preds = %110, %11
  %116 = load i64, i64* %1, align 8
  %117 = call i32 @spin_unlock_irqrestore(i32* @xpc_activate_IRQ_rcvd_lock, i64 %116)
  ret void
}

declare dso_local i32 @DBUG_ON(i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @xpc_activate_partition(%struct.xpc_partition*) #1

declare dso_local i32 @XPC_DEACTIVATE_PARTITION(%struct.xpc_partition*, i32) #1

declare dso_local i32 @BUG(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
