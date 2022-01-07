; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_pmcraid.c_pmcraid_reinit_cfgtable_done.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_pmcraid.c_pmcraid_reinit_cfgtable_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pmcraid_cmd = type { %struct.TYPE_5__*, i64, %struct.TYPE_8__* }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_8__ = type { %struct.TYPE_7__, %struct.TYPE_6__ }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32* }

@.str = private unnamed_addr constant [46 x i8] c"response internal cmd CDB[0] = %x ioasc = %x\0A\00", align 1
@.str.1 = private unnamed_addr constant [53 x i8] c"scheduling worker for config table reinitialization\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pmcraid_cmd*)* @pmcraid_reinit_cfgtable_done to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pmcraid_reinit_cfgtable_done(%struct.pmcraid_cmd* %0) #0 {
  %2 = alloca %struct.pmcraid_cmd*, align 8
  store %struct.pmcraid_cmd* %0, %struct.pmcraid_cmd** %2, align 8
  %3 = load %struct.pmcraid_cmd*, %struct.pmcraid_cmd** %2, align 8
  %4 = getelementptr inbounds %struct.pmcraid_cmd, %struct.pmcraid_cmd* %3, i32 0, i32 2
  %5 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %6 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %5, i32 0, i32 1
  %7 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 0
  %8 = load i32*, i32** %7, align 8
  %9 = getelementptr inbounds i32, i32* %8, i64 0
  %10 = load i32, i32* %9, align 4
  %11 = load %struct.pmcraid_cmd*, %struct.pmcraid_cmd** %2, align 8
  %12 = getelementptr inbounds %struct.pmcraid_cmd, %struct.pmcraid_cmd* %11, i32 0, i32 2
  %13 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = call i32 @le32_to_cpu(i32 %16)
  %18 = call i32 (i8*, ...) @pmcraid_info(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i32 %10, i32 %17)
  %19 = load %struct.pmcraid_cmd*, %struct.pmcraid_cmd** %2, align 8
  %20 = getelementptr inbounds %struct.pmcraid_cmd, %struct.pmcraid_cmd* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %28

23:                                               ; preds = %1
  %24 = load %struct.pmcraid_cmd*, %struct.pmcraid_cmd** %2, align 8
  %25 = getelementptr inbounds %struct.pmcraid_cmd, %struct.pmcraid_cmd* %24, i32 0, i32 1
  store i64 0, i64* %25, align 8
  %26 = load %struct.pmcraid_cmd*, %struct.pmcraid_cmd** %2, align 8
  %27 = call i32 @pmcraid_return_cmd(%struct.pmcraid_cmd* %26)
  br label %28

28:                                               ; preds = %23, %1
  %29 = call i32 (i8*, ...) @pmcraid_info(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.1, i64 0, i64 0))
  %30 = load %struct.pmcraid_cmd*, %struct.pmcraid_cmd** %2, align 8
  %31 = getelementptr inbounds %struct.pmcraid_cmd, %struct.pmcraid_cmd* %30, i32 0, i32 0
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 0
  %34 = call i32 @schedule_work(i32* %33)
  ret void
}

declare dso_local i32 @pmcraid_info(i8*, ...) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @pmcraid_return_cmd(%struct.pmcraid_cmd*) #1

declare dso_local i32 @schedule_work(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
