; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/benet/extr_be_cmds.c_be_POST_stage_get.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/benet/extr_be_cmds.c_be_POST_stage_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.be_adapter = type { i32, i64 }

@SLIPORT_SEMAPHORE_OFFSET_BEx = common dso_local global i64 0, align 8
@SLIPORT_SEMAPHORE_OFFSET_SH = common dso_local global i32 0, align 4
@POST_STAGE_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.be_adapter*)* @be_POST_stage_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @be_POST_stage_get(%struct.be_adapter* %0) #0 {
  %2 = alloca %struct.be_adapter*, align 8
  %3 = alloca i32, align 4
  store %struct.be_adapter* %0, %struct.be_adapter** %2, align 8
  %4 = load %struct.be_adapter*, %struct.be_adapter** %2, align 8
  %5 = call i64 @BEx_chip(%struct.be_adapter* %4)
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %14

7:                                                ; preds = %1
  %8 = load %struct.be_adapter*, %struct.be_adapter** %2, align 8
  %9 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %8, i32 0, i32 1
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @SLIPORT_SEMAPHORE_OFFSET_BEx, align 8
  %12 = add nsw i64 %10, %11
  %13 = call i32 @ioread32(i64 %12)
  store i32 %13, i32* %3, align 4
  br label %20

14:                                               ; preds = %1
  %15 = load %struct.be_adapter*, %struct.be_adapter** %2, align 8
  %16 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* @SLIPORT_SEMAPHORE_OFFSET_SH, align 4
  %19 = call i32 @pci_read_config_dword(i32 %17, i32 %18, i32* %3)
  br label %20

20:                                               ; preds = %14, %7
  %21 = load i32, i32* %3, align 4
  %22 = load i32, i32* @POST_STAGE_MASK, align 4
  %23 = and i32 %21, %22
  ret i32 %23
}

declare dso_local i64 @BEx_chip(%struct.be_adapter*) #1

declare dso_local i32 @ioread32(i64) #1

declare dso_local i32 @pci_read_config_dword(i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
