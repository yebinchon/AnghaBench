; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/ata/extr_libata-core.c_ata_qc_new.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/ata/extr_libata-core.c_ata_qc_new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ata_queued_cmd = type { i32 }
%struct.ata_port = type { i32, i32 }

@ATA_PFLAG_FROZEN = common dso_local global i32 0, align 4
@ATA_MAX_QUEUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.ata_queued_cmd* (%struct.ata_port*)* @ata_qc_new to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.ata_queued_cmd* @ata_qc_new(%struct.ata_port* %0) #0 {
  %2 = alloca %struct.ata_queued_cmd*, align 8
  %3 = alloca %struct.ata_port*, align 8
  %4 = alloca %struct.ata_queued_cmd*, align 8
  %5 = alloca i32, align 4
  store %struct.ata_port* %0, %struct.ata_port** %3, align 8
  store %struct.ata_queued_cmd* null, %struct.ata_queued_cmd** %4, align 8
  %6 = load %struct.ata_port*, %struct.ata_port** %3, align 8
  %7 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = load i32, i32* @ATA_PFLAG_FROZEN, align 4
  %10 = and i32 %8, %9
  %11 = call i64 @unlikely(i32 %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %1
  store %struct.ata_queued_cmd* null, %struct.ata_queued_cmd** %2, align 8
  br label %43

14:                                               ; preds = %1
  store i32 0, i32* %5, align 4
  br label %15

15:                                               ; preds = %31, %14
  %16 = load i32, i32* %5, align 4
  %17 = load i32, i32* @ATA_MAX_QUEUE, align 4
  %18 = sub nsw i32 %17, 1
  %19 = icmp ult i32 %16, %18
  br i1 %19, label %20, label %34

20:                                               ; preds = %15
  %21 = load i32, i32* %5, align 4
  %22 = load %struct.ata_port*, %struct.ata_port** %3, align 8
  %23 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %22, i32 0, i32 1
  %24 = call i32 @test_and_set_bit(i32 %21, i32* %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %30, label %26

26:                                               ; preds = %20
  %27 = load %struct.ata_port*, %struct.ata_port** %3, align 8
  %28 = load i32, i32* %5, align 4
  %29 = call %struct.ata_queued_cmd* @__ata_qc_from_tag(%struct.ata_port* %27, i32 %28)
  store %struct.ata_queued_cmd* %29, %struct.ata_queued_cmd** %4, align 8
  br label %34

30:                                               ; preds = %20
  br label %31

31:                                               ; preds = %30
  %32 = load i32, i32* %5, align 4
  %33 = add i32 %32, 1
  store i32 %33, i32* %5, align 4
  br label %15

34:                                               ; preds = %26, %15
  %35 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %4, align 8
  %36 = icmp ne %struct.ata_queued_cmd* %35, null
  br i1 %36, label %37, label %41

37:                                               ; preds = %34
  %38 = load i32, i32* %5, align 4
  %39 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %4, align 8
  %40 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %39, i32 0, i32 0
  store i32 %38, i32* %40, align 4
  br label %41

41:                                               ; preds = %37, %34
  %42 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %4, align 8
  store %struct.ata_queued_cmd* %42, %struct.ata_queued_cmd** %2, align 8
  br label %43

43:                                               ; preds = %41, %13
  %44 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %2, align 8
  ret %struct.ata_queued_cmd* %44
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @test_and_set_bit(i32, i32*) #1

declare dso_local %struct.ata_queued_cmd* @__ata_qc_from_tag(%struct.ata_port*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
