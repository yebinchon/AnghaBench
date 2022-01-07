; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/i2c/busses/extr_i2c-nforce2.c_nforce2_abort.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/i2c/busses/extr_i2c-nforce2.c_nforce2_abort.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_adapter = type { i32, %struct.nforce2_smbus* }
%struct.nforce2_smbus = type { i32 }

@.str = private unnamed_addr constant [30 x i8] c"Aborting current transaction\0A\00", align 1
@NVIDIA_SMB_CTRL_ABORT = common dso_local global i8 0, align 1
@NVIDIA_SMB_CTRL = common dso_local global i32 0, align 4
@NVIDIA_SMB_STATUS_ABRT = common dso_local global i32 0, align 4
@NVIDIA_SMB_STATUS_ABRT_STS = common dso_local global i8 0, align 1
@MAX_TIMEOUT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"Can't reset the smbus\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.i2c_adapter*)* @nforce2_abort to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nforce2_abort(%struct.i2c_adapter* %0) #0 {
  %2 = alloca %struct.i2c_adapter*, align 8
  %3 = alloca %struct.nforce2_smbus*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8, align 1
  store %struct.i2c_adapter* %0, %struct.i2c_adapter** %2, align 8
  %6 = load %struct.i2c_adapter*, %struct.i2c_adapter** %2, align 8
  %7 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %6, i32 0, i32 1
  %8 = load %struct.nforce2_smbus*, %struct.nforce2_smbus** %7, align 8
  store %struct.nforce2_smbus* %8, %struct.nforce2_smbus** %3, align 8
  store i32 0, i32* %4, align 4
  %9 = load %struct.i2c_adapter*, %struct.i2c_adapter** %2, align 8
  %10 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %9, i32 0, i32 0
  %11 = call i32 @dev_dbg(i32* %10, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %12 = load i8, i8* @NVIDIA_SMB_CTRL_ABORT, align 1
  %13 = load i32, i32* @NVIDIA_SMB_CTRL, align 4
  %14 = call i32 @outb_p(i8 zeroext %12, i32 %13)
  br label %15

15:                                               ; preds = %31, %1
  %16 = call i32 @msleep(i32 1)
  %17 = load i32, i32* @NVIDIA_SMB_STATUS_ABRT, align 4
  %18 = call zeroext i8 @inb_p(i32 %17)
  store i8 %18, i8* %5, align 1
  br label %19

19:                                               ; preds = %15
  %20 = load i8, i8* %5, align 1
  %21 = zext i8 %20 to i32
  %22 = load i8, i8* @NVIDIA_SMB_STATUS_ABRT_STS, align 1
  %23 = zext i8 %22 to i32
  %24 = and i32 %21, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %31, label %26

26:                                               ; preds = %19
  %27 = load i32, i32* %4, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %4, align 4
  %29 = load i32, i32* @MAX_TIMEOUT, align 4
  %30 = icmp slt i32 %27, %29
  br label %31

31:                                               ; preds = %26, %19
  %32 = phi i1 [ false, %19 ], [ %30, %26 ]
  br i1 %32, label %15, label %33

33:                                               ; preds = %31
  %34 = load i8, i8* %5, align 1
  %35 = zext i8 %34 to i32
  %36 = load i8, i8* @NVIDIA_SMB_STATUS_ABRT_STS, align 1
  %37 = zext i8 %36 to i32
  %38 = and i32 %35, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %44, label %40

40:                                               ; preds = %33
  %41 = load %struct.i2c_adapter*, %struct.i2c_adapter** %2, align 8
  %42 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %41, i32 0, i32 0
  %43 = call i32 @dev_err(i32* %42, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  br label %44

44:                                               ; preds = %40, %33
  %45 = load i8, i8* @NVIDIA_SMB_STATUS_ABRT_STS, align 1
  %46 = load i32, i32* @NVIDIA_SMB_STATUS_ABRT, align 4
  %47 = call i32 @outb_p(i8 zeroext %45, i32 %46)
  ret void
}

declare dso_local i32 @dev_dbg(i32*, i8*) #1

declare dso_local i32 @outb_p(i8 zeroext, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local zeroext i8 @inb_p(i32) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
