; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_scsi_tgt_lib.c_init_scsi_tgt_cmd.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_scsi_tgt_lib.c_init_scsi_tgt_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.request = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.scsi_tgt_queuedata* }
%struct.scsi_tgt_queuedata = type { i32, %struct.list_head* }
%struct.list_head = type { i32 }
%struct.scsi_tgt_cmd = type { i32, i32, i32*, i8*, i8* }

@scsi_tgt_cmd_destroy = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.request*, %struct.scsi_tgt_cmd*, i8*, i8*)* @init_scsi_tgt_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @init_scsi_tgt_cmd(%struct.request* %0, %struct.scsi_tgt_cmd* %1, i8* %2, i8* %3) #0 {
  %5 = alloca %struct.request*, align 8
  %6 = alloca %struct.scsi_tgt_cmd*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.scsi_tgt_queuedata*, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.list_head*, align 8
  store %struct.request* %0, %struct.request** %5, align 8
  store %struct.scsi_tgt_cmd* %1, %struct.scsi_tgt_cmd** %6, align 8
  store i8* %2, i8** %7, align 8
  store i8* %3, i8** %8, align 8
  %12 = load %struct.request*, %struct.request** %5, align 8
  %13 = getelementptr inbounds %struct.request, %struct.request* %12, i32 0, i32 0
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load %struct.scsi_tgt_queuedata*, %struct.scsi_tgt_queuedata** %15, align 8
  store %struct.scsi_tgt_queuedata* %16, %struct.scsi_tgt_queuedata** %9, align 8
  %17 = load i8*, i8** %7, align 8
  %18 = load %struct.scsi_tgt_cmd*, %struct.scsi_tgt_cmd** %6, align 8
  %19 = getelementptr inbounds %struct.scsi_tgt_cmd, %struct.scsi_tgt_cmd* %18, i32 0, i32 4
  store i8* %17, i8** %19, align 8
  %20 = load i8*, i8** %8, align 8
  %21 = load %struct.scsi_tgt_cmd*, %struct.scsi_tgt_cmd** %6, align 8
  %22 = getelementptr inbounds %struct.scsi_tgt_cmd, %struct.scsi_tgt_cmd* %21, i32 0, i32 3
  store i8* %20, i8** %22, align 8
  %23 = load %struct.scsi_tgt_cmd*, %struct.scsi_tgt_cmd** %6, align 8
  %24 = getelementptr inbounds %struct.scsi_tgt_cmd, %struct.scsi_tgt_cmd* %23, i32 0, i32 2
  store i32* null, i32** %24, align 8
  %25 = load %struct.scsi_tgt_cmd*, %struct.scsi_tgt_cmd** %6, align 8
  %26 = getelementptr inbounds %struct.scsi_tgt_cmd, %struct.scsi_tgt_cmd* %25, i32 0, i32 1
  %27 = load i32, i32* @scsi_tgt_cmd_destroy, align 4
  %28 = call i32 @INIT_WORK(i32* %26, i32 %27)
  %29 = load %struct.scsi_tgt_queuedata*, %struct.scsi_tgt_queuedata** %9, align 8
  %30 = getelementptr inbounds %struct.scsi_tgt_queuedata, %struct.scsi_tgt_queuedata* %29, i32 0, i32 0
  %31 = load i64, i64* %10, align 8
  %32 = call i32 @spin_lock_irqsave(i32* %30, i64 %31)
  %33 = load %struct.scsi_tgt_queuedata*, %struct.scsi_tgt_queuedata** %9, align 8
  %34 = getelementptr inbounds %struct.scsi_tgt_queuedata, %struct.scsi_tgt_queuedata* %33, i32 0, i32 1
  %35 = load %struct.list_head*, %struct.list_head** %34, align 8
  %36 = load i8*, i8** %8, align 8
  %37 = call i64 @cmd_hashfn(i8* %36)
  %38 = getelementptr inbounds %struct.list_head, %struct.list_head* %35, i64 %37
  store %struct.list_head* %38, %struct.list_head** %11, align 8
  %39 = load %struct.scsi_tgt_cmd*, %struct.scsi_tgt_cmd** %6, align 8
  %40 = getelementptr inbounds %struct.scsi_tgt_cmd, %struct.scsi_tgt_cmd* %39, i32 0, i32 0
  %41 = load %struct.list_head*, %struct.list_head** %11, align 8
  %42 = call i32 @list_add(i32* %40, %struct.list_head* %41)
  %43 = load %struct.scsi_tgt_queuedata*, %struct.scsi_tgt_queuedata** %9, align 8
  %44 = getelementptr inbounds %struct.scsi_tgt_queuedata, %struct.scsi_tgt_queuedata* %43, i32 0, i32 0
  %45 = load i64, i64* %10, align 8
  %46 = call i32 @spin_unlock_irqrestore(i32* %44, i64 %45)
  ret void
}

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i64 @cmd_hashfn(i8*) #1

declare dso_local i32 @list_add(i32*, %struct.list_head*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
