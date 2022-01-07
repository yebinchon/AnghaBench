; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/pcmcia/extr_qlogic_stub.c_qlogic_detect.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/pcmcia/extr_qlogic_stub.c_qlogic_detect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Scsi_Host = type { i32, i32, i32, i32 }
%struct.scsi_host_template = type { i32, i32 }
%struct.pcmcia_device = type { i32 }
%struct.qlogicfas408_priv = type { i32, i32, i32, i32, i32, %struct.Scsi_Host* }

@INT_TYPE = common dso_local global i32 0, align 4
@qlogic_name = common dso_local global i32 0, align 4
@qlogicfas408_ihandl = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [67 x i8] c"Qlogicfas Driver version 0.46, chip %02X at %03X, IRQ %d, TPdma:%d\00", align 1
@QL_TURBO_PDMA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.Scsi_Host* (%struct.scsi_host_template*, %struct.pcmcia_device*, i32, i32)* @qlogic_detect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.Scsi_Host* @qlogic_detect(%struct.scsi_host_template* %0, %struct.pcmcia_device* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.Scsi_Host*, align 8
  %6 = alloca %struct.scsi_host_template*, align 8
  %7 = alloca %struct.pcmcia_device*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.Scsi_Host*, align 8
  %13 = alloca %struct.qlogicfas408_priv*, align 8
  store %struct.scsi_host_template* %0, %struct.scsi_host_template** %6, align 8
  store %struct.pcmcia_device* %1, %struct.pcmcia_device** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %14 = load i32, i32* %8, align 4
  %15 = load i32, i32* @INT_TYPE, align 4
  %16 = call i32 @qlogicfas408_get_chip_type(i32 %14, i32 %15)
  store i32 %16, i32* %10, align 4
  %17 = load %struct.scsi_host_template*, %struct.scsi_host_template** %6, align 8
  %18 = getelementptr inbounds %struct.scsi_host_template, %struct.scsi_host_template* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %11, align 4
  %20 = load i32, i32* %11, align 4
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %4
  store i32 7, i32* %11, align 4
  br label %23

23:                                               ; preds = %22, %4
  %24 = load i32, i32* %8, align 4
  %25 = load i32, i32* %11, align 4
  %26 = load i32, i32* @INT_TYPE, align 4
  %27 = call i32 @qlogicfas408_setup(i32 %24, i32 %25, i32 %26)
  %28 = load i32, i32* @qlogic_name, align 4
  %29 = load %struct.scsi_host_template*, %struct.scsi_host_template** %6, align 8
  %30 = getelementptr inbounds %struct.scsi_host_template, %struct.scsi_host_template* %29, i32 0, i32 1
  store i32 %28, i32* %30, align 4
  %31 = load %struct.scsi_host_template*, %struct.scsi_host_template** %6, align 8
  %32 = call %struct.Scsi_Host* @scsi_host_alloc(%struct.scsi_host_template* %31, i32 32)
  store %struct.Scsi_Host* %32, %struct.Scsi_Host** %12, align 8
  %33 = load %struct.Scsi_Host*, %struct.Scsi_Host** %12, align 8
  %34 = icmp ne %struct.Scsi_Host* %33, null
  br i1 %34, label %36, label %35

35:                                               ; preds = %23
  br label %99

36:                                               ; preds = %23
  %37 = load i32, i32* %8, align 4
  %38 = load %struct.Scsi_Host*, %struct.Scsi_Host** %12, align 8
  %39 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %38, i32 0, i32 0
  store i32 %37, i32* %39, align 4
  %40 = load %struct.Scsi_Host*, %struct.Scsi_Host** %12, align 8
  %41 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %40, i32 0, i32 1
  store i32 16, i32* %41, align 4
  %42 = load %struct.Scsi_Host*, %struct.Scsi_Host** %12, align 8
  %43 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %42, i32 0, i32 2
  store i32 -1, i32* %43, align 4
  %44 = load i32, i32* %9, align 4
  %45 = icmp ne i32 %44, -1
  br i1 %45, label %46, label %50

46:                                               ; preds = %36
  %47 = load i32, i32* %9, align 4
  %48 = load %struct.Scsi_Host*, %struct.Scsi_Host** %12, align 8
  %49 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %48, i32 0, i32 3
  store i32 %47, i32* %49, align 4
  br label %50

50:                                               ; preds = %46, %36
  %51 = load %struct.Scsi_Host*, %struct.Scsi_Host** %12, align 8
  %52 = call %struct.qlogicfas408_priv* @get_priv_by_host(%struct.Scsi_Host* %51)
  store %struct.qlogicfas408_priv* %52, %struct.qlogicfas408_priv** %13, align 8
  %53 = load i32, i32* %9, align 4
  %54 = load %struct.qlogicfas408_priv*, %struct.qlogicfas408_priv** %13, align 8
  %55 = getelementptr inbounds %struct.qlogicfas408_priv, %struct.qlogicfas408_priv* %54, i32 0, i32 0
  store i32 %53, i32* %55, align 8
  %56 = load i32, i32* %8, align 4
  %57 = load %struct.qlogicfas408_priv*, %struct.qlogicfas408_priv** %13, align 8
  %58 = getelementptr inbounds %struct.qlogicfas408_priv, %struct.qlogicfas408_priv* %57, i32 0, i32 1
  store i32 %56, i32* %58, align 4
  %59 = load i32, i32* %11, align 4
  %60 = load %struct.qlogicfas408_priv*, %struct.qlogicfas408_priv** %13, align 8
  %61 = getelementptr inbounds %struct.qlogicfas408_priv, %struct.qlogicfas408_priv* %60, i32 0, i32 2
  store i32 %59, i32* %61, align 8
  %62 = load %struct.Scsi_Host*, %struct.Scsi_Host** %12, align 8
  %63 = load %struct.qlogicfas408_priv*, %struct.qlogicfas408_priv** %13, align 8
  %64 = getelementptr inbounds %struct.qlogicfas408_priv, %struct.qlogicfas408_priv* %63, i32 0, i32 5
  store %struct.Scsi_Host* %62, %struct.Scsi_Host** %64, align 8
  %65 = load i32, i32* @INT_TYPE, align 4
  %66 = load %struct.qlogicfas408_priv*, %struct.qlogicfas408_priv** %13, align 8
  %67 = getelementptr inbounds %struct.qlogicfas408_priv, %struct.qlogicfas408_priv* %66, i32 0, i32 4
  store i32 %65, i32* %67, align 8
  %68 = load i32, i32* %9, align 4
  %69 = load i32, i32* @qlogicfas408_ihandl, align 4
  %70 = load i32, i32* @qlogic_name, align 4
  %71 = load %struct.Scsi_Host*, %struct.Scsi_Host** %12, align 8
  %72 = call i64 @request_irq(i32 %68, i32 %69, i32 0, i32 %70, %struct.Scsi_Host* %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %75

74:                                               ; preds = %50
  br label %96

75:                                               ; preds = %50
  %76 = load %struct.qlogicfas408_priv*, %struct.qlogicfas408_priv** %13, align 8
  %77 = getelementptr inbounds %struct.qlogicfas408_priv, %struct.qlogicfas408_priv* %76, i32 0, i32 3
  %78 = load i32, i32* %77, align 4
  %79 = load i32, i32* %10, align 4
  %80 = load i32, i32* %8, align 4
  %81 = load i32, i32* %9, align 4
  %82 = load i32, i32* @QL_TURBO_PDMA, align 4
  %83 = call i32 @sprintf(i32 %78, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str, i64 0, i64 0), i32 %79, i32 %80, i32 %81, i32 %82)
  %84 = load %struct.Scsi_Host*, %struct.Scsi_Host** %12, align 8
  %85 = call i64 @scsi_add_host(%struct.Scsi_Host* %84, i32* null)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %88

87:                                               ; preds = %75
  br label %92

88:                                               ; preds = %75
  %89 = load %struct.Scsi_Host*, %struct.Scsi_Host** %12, align 8
  %90 = call i32 @scsi_scan_host(%struct.Scsi_Host* %89)
  %91 = load %struct.Scsi_Host*, %struct.Scsi_Host** %12, align 8
  store %struct.Scsi_Host* %91, %struct.Scsi_Host** %5, align 8
  br label %100

92:                                               ; preds = %87
  %93 = load i32, i32* %9, align 4
  %94 = load %struct.Scsi_Host*, %struct.Scsi_Host** %12, align 8
  %95 = call i32 @free_irq(i32 %93, %struct.Scsi_Host* %94)
  br label %96

96:                                               ; preds = %92, %74
  %97 = load %struct.Scsi_Host*, %struct.Scsi_Host** %12, align 8
  %98 = call i32 @scsi_host_put(%struct.Scsi_Host* %97)
  br label %99

99:                                               ; preds = %96, %35
  store %struct.Scsi_Host* null, %struct.Scsi_Host** %5, align 8
  br label %100

100:                                              ; preds = %99, %88
  %101 = load %struct.Scsi_Host*, %struct.Scsi_Host** %5, align 8
  ret %struct.Scsi_Host* %101
}

declare dso_local i32 @qlogicfas408_get_chip_type(i32, i32) #1

declare dso_local i32 @qlogicfas408_setup(i32, i32, i32) #1

declare dso_local %struct.Scsi_Host* @scsi_host_alloc(%struct.scsi_host_template*, i32) #1

declare dso_local %struct.qlogicfas408_priv* @get_priv_by_host(%struct.Scsi_Host*) #1

declare dso_local i64 @request_irq(i32, i32, i32, i32, %struct.Scsi_Host*) #1

declare dso_local i32 @sprintf(i32, i8*, i32, i32, i32, i32) #1

declare dso_local i64 @scsi_add_host(%struct.Scsi_Host*, i32*) #1

declare dso_local i32 @scsi_scan_host(%struct.Scsi_Host*) #1

declare dso_local i32 @free_irq(i32, %struct.Scsi_Host*) #1

declare dso_local i32 @scsi_host_put(%struct.Scsi_Host*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
