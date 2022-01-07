; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/qla4xxx/extr_ql4_nx.c_qla4_8xxx_load_risc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/qla4xxx/extr_ql4_nx.c_qla4_8xxx_load_risc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_qla_host = type { i32, %struct.TYPE_3__*, %struct.TYPE_4__* }
%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { i32 }

@QLA_SUCCESS = common dso_local global i32 0, align 4
@AF_IRQ_ATTACHED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @qla4_8xxx_load_risc(%struct.scsi_qla_host* %0) #0 {
  %2 = alloca %struct.scsi_qla_host*, align 8
  %3 = alloca i32, align 4
  store %struct.scsi_qla_host* %0, %struct.scsi_qla_host** %2, align 8
  %4 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %2, align 8
  %5 = call i64 @is_qla8032(%struct.scsi_qla_host* %4)
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %18

7:                                                ; preds = %1
  %8 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %2, align 8
  %9 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %8, i32 0, i32 2
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = call i32 @writel(i32 0, i32* %11)
  %13 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %2, align 8
  %14 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %13, i32 0, i32 2
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = call i32 @readl(i32* %16)
  br label %34

18:                                               ; preds = %1
  %19 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %2, align 8
  %20 = call i64 @is_qla8022(%struct.scsi_qla_host* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %33

22:                                               ; preds = %18
  %23 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %2, align 8
  %24 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %23, i32 0, i32 1
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  %27 = call i32 @writel(i32 0, i32* %26)
  %28 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %2, align 8
  %29 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %28, i32 0, i32 1
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  %32 = call i32 @readl(i32* %31)
  br label %33

33:                                               ; preds = %22, %18
  br label %34

34:                                               ; preds = %33, %7
  %35 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %2, align 8
  %36 = call i32 @qla4_8xxx_device_state_handler(%struct.scsi_qla_host* %35)
  store i32 %36, i32* %3, align 4
  %37 = load i32, i32* %3, align 4
  %38 = load i32, i32* @QLA_SUCCESS, align 4
  %39 = icmp eq i32 %37, %38
  br i1 %39, label %40, label %49

40:                                               ; preds = %34
  %41 = load i32, i32* @AF_IRQ_ATTACHED, align 4
  %42 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %2, align 8
  %43 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %42, i32 0, i32 0
  %44 = call i32 @test_bit(i32 %41, i32* %43)
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %49, label %46

46:                                               ; preds = %40
  %47 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %2, align 8
  %48 = call i32 @qla4xxx_request_irqs(%struct.scsi_qla_host* %47)
  store i32 %48, i32* %3, align 4
  br label %49

49:                                               ; preds = %46, %40, %34
  %50 = load i32, i32* %3, align 4
  ret i32 %50
}

declare dso_local i64 @is_qla8032(%struct.scsi_qla_host*) #1

declare dso_local i32 @writel(i32, i32*) #1

declare dso_local i32 @readl(i32*) #1

declare dso_local i64 @is_qla8022(%struct.scsi_qla_host*) #1

declare dso_local i32 @qla4_8xxx_device_state_handler(%struct.scsi_qla_host*) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @qla4xxx_request_irqs(%struct.scsi_qla_host*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
