; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/ibmvscsi/extr_ibmvstgt.c_process_crq.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/ibmvscsi/extr_ibmvstgt.c_process_crq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.viosrp_crq = type { i32, i32 }
%struct.srp_target = type { i32 }
%struct.vio_port = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [7 x i8] c"%x %x\0A\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"Unknown format %u\0A\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"Unsupported format %u\0A\00", align 1
@.str.3 = private unnamed_addr constant [31 x i8] c"unknown message type 0x%02x!?\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.viosrp_crq*, %struct.srp_target*)* @process_crq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @process_crq(%struct.viosrp_crq* %0, %struct.srp_target* %1) #0 {
  %3 = alloca %struct.viosrp_crq*, align 8
  %4 = alloca %struct.srp_target*, align 8
  %5 = alloca %struct.vio_port*, align 8
  store %struct.viosrp_crq* %0, %struct.viosrp_crq** %3, align 8
  store %struct.srp_target* %1, %struct.srp_target** %4, align 8
  %6 = load %struct.srp_target*, %struct.srp_target** %4, align 8
  %7 = call %struct.vio_port* @target_to_port(%struct.srp_target* %6)
  store %struct.vio_port* %7, %struct.vio_port** %5, align 8
  %8 = load %struct.viosrp_crq*, %struct.viosrp_crq** %3, align 8
  %9 = getelementptr inbounds %struct.viosrp_crq, %struct.viosrp_crq* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load %struct.viosrp_crq*, %struct.viosrp_crq** %3, align 8
  %12 = getelementptr inbounds %struct.viosrp_crq, %struct.viosrp_crq* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @dprintk(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %10, i32 %13)
  %15 = load %struct.viosrp_crq*, %struct.viosrp_crq** %3, align 8
  %16 = getelementptr inbounds %struct.viosrp_crq, %struct.viosrp_crq* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  switch i32 %17, label %56 [
    i32 192, label %18
    i32 255, label %36
    i32 128, label %37
  ]

18:                                               ; preds = %2
  %19 = load %struct.viosrp_crq*, %struct.viosrp_crq** %3, align 8
  %20 = getelementptr inbounds %struct.viosrp_crq, %struct.viosrp_crq* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  switch i32 %21, label %30 [
    i32 1, label %22
    i32 2, label %29
  ]

22:                                               ; preds = %18
  %23 = load %struct.vio_port*, %struct.vio_port** %5, align 8
  %24 = getelementptr inbounds %struct.vio_port, %struct.vio_port* %23, i32 0, i32 0
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @h_send_crq(i32 %27, i32 0, i32 0)
  br label %35

29:                                               ; preds = %18
  br label %35

30:                                               ; preds = %18
  %31 = load %struct.viosrp_crq*, %struct.viosrp_crq** %3, align 8
  %32 = getelementptr inbounds %struct.viosrp_crq, %struct.viosrp_crq* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @eprintk(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i32 %33)
  br label %35

35:                                               ; preds = %30, %29, %22
  br label %61

36:                                               ; preds = %2
  br label %61

37:                                               ; preds = %2
  %38 = load %struct.viosrp_crq*, %struct.viosrp_crq** %3, align 8
  %39 = getelementptr inbounds %struct.viosrp_crq, %struct.viosrp_crq* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  switch i32 %40, label %50 [
    i32 128, label %41
    i32 130, label %41
    i32 129, label %45
    i32 133, label %45
    i32 131, label %45
    i32 132, label %45
  ]

41:                                               ; preds = %37, %37
  %42 = load %struct.viosrp_crq*, %struct.viosrp_crq** %3, align 8
  %43 = load %struct.srp_target*, %struct.srp_target** %4, align 8
  %44 = call i32 @process_iu(%struct.viosrp_crq* %42, %struct.srp_target* %43)
  br label %55

45:                                               ; preds = %37, %37, %37, %37
  %46 = load %struct.viosrp_crq*, %struct.viosrp_crq** %3, align 8
  %47 = getelementptr inbounds %struct.viosrp_crq, %struct.viosrp_crq* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @eprintk(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), i32 %48)
  br label %55

50:                                               ; preds = %37
  %51 = load %struct.viosrp_crq*, %struct.viosrp_crq** %3, align 8
  %52 = getelementptr inbounds %struct.viosrp_crq, %struct.viosrp_crq* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @eprintk(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i32 %53)
  br label %55

55:                                               ; preds = %50, %45, %41
  br label %61

56:                                               ; preds = %2
  %57 = load %struct.viosrp_crq*, %struct.viosrp_crq** %3, align 8
  %58 = getelementptr inbounds %struct.viosrp_crq, %struct.viosrp_crq* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @eprintk(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0), i32 %59)
  br label %61

61:                                               ; preds = %56, %55, %36, %35
  ret void
}

declare dso_local %struct.vio_port* @target_to_port(%struct.srp_target*) #1

declare dso_local i32 @dprintk(i8*, i32, i32) #1

declare dso_local i32 @h_send_crq(i32, i32, i32) #1

declare dso_local i32 @eprintk(i8*, i32) #1

declare dso_local i32 @process_iu(%struct.viosrp_crq*, %struct.srp_target*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
