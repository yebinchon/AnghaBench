; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_fdomain.c_fdomain_16x0_queue.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_fdomain.c_fdomain_16x0_queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_cmnd = type { void (%struct.scsi_cmnd*)*, %struct.TYPE_4__, i64, i32 }
%struct.TYPE_4__ = type { i32, i64, i64, i64, i64, i64, %struct.TYPE_5__*, i64, i32* }
%struct.TYPE_5__ = type { i64 }

@in_command = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [53 x i8] c"scsi: <fdomain> fdomain_16x0_queue() NOT REENTRANT!\0A\00", align 1
@current_SC = common dso_local global %struct.scsi_cmnd* null, align 8
@in_arbitration = common dso_local global i32 0, align 4
@port_base = common dso_local global i64 0, align 8
@Interrupt_Cntl = common dso_local global i64 0, align 8
@SCSI_Cntl = common dso_local global i64 0, align 8
@adapter_mask = common dso_local global i32 0, align 4
@SCSI_Data_NoACK = common dso_local global i64 0, align 8
@PARITY_MASK = common dso_local global i32 0, align 4
@TMC_Cntl = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.scsi_cmnd*, void (%struct.scsi_cmnd*)*)* @fdomain_16x0_queue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fdomain_16x0_queue(%struct.scsi_cmnd* %0, void (%struct.scsi_cmnd*)* %1) #0 {
  %3 = alloca %struct.scsi_cmnd*, align 8
  %4 = alloca void (%struct.scsi_cmnd*)*, align 8
  store %struct.scsi_cmnd* %0, %struct.scsi_cmnd** %3, align 8
  store void (%struct.scsi_cmnd*)* %1, void (%struct.scsi_cmnd*)** %4, align 8
  %5 = load i64, i64* @in_command, align 8
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %9

7:                                                ; preds = %2
  %8 = call i32 @panic(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0))
  br label %9

9:                                                ; preds = %7, %2
  %10 = call i32 (...) @fdomain_make_bus_idle()
  %11 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  store %struct.scsi_cmnd* %11, %struct.scsi_cmnd** @current_SC, align 8
  %12 = load void (%struct.scsi_cmnd*)*, void (%struct.scsi_cmnd*)** %4, align 8
  %13 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** @current_SC, align 8
  %14 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %13, i32 0, i32 0
  store void (%struct.scsi_cmnd*)* %12, void (%struct.scsi_cmnd*)** %14, align 8
  %15 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** @current_SC, align 8
  %16 = call i32 @scsi_sg_count(%struct.scsi_cmnd* %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %48

18:                                               ; preds = %9
  %19 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** @current_SC, align 8
  %20 = call %struct.TYPE_5__* @scsi_sglist(%struct.scsi_cmnd* %19)
  %21 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** @current_SC, align 8
  %22 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 6
  store %struct.TYPE_5__* %20, %struct.TYPE_5__** %23, align 8
  %24 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** @current_SC, align 8
  %25 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 6
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** %26, align 8
  %28 = call i32* @sg_virt(%struct.TYPE_5__* %27)
  %29 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** @current_SC, align 8
  %30 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 8
  store i32* %28, i32** %31, align 8
  %32 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** @current_SC, align 8
  %33 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 6
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** @current_SC, align 8
  %39 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 7
  store i64 %37, i64* %40, align 8
  %41 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** @current_SC, align 8
  %42 = call i32 @scsi_sg_count(%struct.scsi_cmnd* %41)
  %43 = sub nsw i32 %42, 1
  %44 = sext i32 %43 to i64
  %45 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** @current_SC, align 8
  %46 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 5
  store i64 %44, i64* %47, align 8
  br label %61

48:                                               ; preds = %9
  %49 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** @current_SC, align 8
  %50 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 8
  store i32* null, i32** %51, align 8
  %52 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** @current_SC, align 8
  %53 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 7
  store i64 0, i64* %54, align 8
  %55 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** @current_SC, align 8
  %56 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %55, i32 0, i32 1
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 6
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %57, align 8
  %58 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** @current_SC, align 8
  %59 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %58, i32 0, i32 1
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 5
  store i64 0, i64* %60, align 8
  br label %61

61:                                               ; preds = %48, %18
  %62 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** @current_SC, align 8
  %63 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %62, i32 0, i32 1
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 4
  store i64 0, i64* %64, align 8
  %65 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** @current_SC, align 8
  %66 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %65, i32 0, i32 1
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 3
  store i64 0, i64* %67, align 8
  %68 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** @current_SC, align 8
  %69 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %68, i32 0, i32 1
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 2
  store i64 0, i64* %70, align 8
  %71 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** @current_SC, align 8
  %72 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %71, i32 0, i32 1
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 1
  store i64 0, i64* %73, align 8
  %74 = load i32, i32* @in_arbitration, align 4
  %75 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** @current_SC, align 8
  %76 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %75, i32 0, i32 1
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 0
  store i32 %74, i32* %77, align 8
  %78 = load i64, i64* @port_base, align 8
  %79 = load i64, i64* @Interrupt_Cntl, align 8
  %80 = add nsw i64 %78, %79
  %81 = call i32 @outb(i32 0, i64 %80)
  %82 = load i64, i64* @port_base, align 8
  %83 = load i64, i64* @SCSI_Cntl, align 8
  %84 = add nsw i64 %82, %83
  %85 = call i32 @outb(i32 0, i64 %84)
  %86 = load i32, i32* @adapter_mask, align 4
  %87 = load i64, i64* @port_base, align 8
  %88 = load i64, i64* @SCSI_Data_NoACK, align 8
  %89 = add nsw i64 %87, %88
  %90 = call i32 @outb(i32 %86, i64 %89)
  %91 = load i64, i64* @in_command, align 8
  %92 = add nsw i64 %91, 1
  store i64 %92, i64* @in_command, align 8
  %93 = load i64, i64* @port_base, align 8
  %94 = load i64, i64* @Interrupt_Cntl, align 8
  %95 = add nsw i64 %93, %94
  %96 = call i32 @outb(i32 32, i64 %95)
  %97 = load i32, i32* @PARITY_MASK, align 4
  %98 = or i32 20, %97
  %99 = load i64, i64* @port_base, align 8
  %100 = load i64, i64* @TMC_Cntl, align 8
  %101 = add nsw i64 %99, %100
  %102 = call i32 @outb(i32 %98, i64 %101)
  ret i32 0
}

declare dso_local i32 @panic(i8*) #1

declare dso_local i32 @fdomain_make_bus_idle(...) #1

declare dso_local i32 @scsi_sg_count(%struct.scsi_cmnd*) #1

declare dso_local %struct.TYPE_5__* @scsi_sglist(%struct.scsi_cmnd*) #1

declare dso_local i32* @sg_virt(%struct.TYPE_5__*) #1

declare dso_local i32 @outb(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
