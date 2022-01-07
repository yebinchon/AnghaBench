; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_smsc911x.c_smsc911x_mac_read.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_smsc911x.c_smsc911x_mac_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smsc911x_data = type { i32 }

@MAC_CSR_CMD = common dso_local global i32 0, align 4
@MAC_CSR_CMD_CSR_BUSY_ = common dso_local global i32 0, align 4
@HW = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"MAC busy at entry\00", align 1
@MAC_CSR_CMD_R_NOT_W_ = common dso_local global i32 0, align 4
@BYTE_TEST = common dso_local global i32 0, align 4
@MAC_CSR_DATA = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"MAC busy after read\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.smsc911x_data*, i32)* @smsc911x_mac_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @smsc911x_mac_read(%struct.smsc911x_data* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.smsc911x_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.smsc911x_data* %0, %struct.smsc911x_data** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.smsc911x_data*, %struct.smsc911x_data** %4, align 8
  %8 = call i32 @SMSC_ASSERT_MAC_LOCK(%struct.smsc911x_data* %7)
  %9 = load %struct.smsc911x_data*, %struct.smsc911x_data** %4, align 8
  %10 = load i32, i32* @MAC_CSR_CMD, align 4
  %11 = call i32 @smsc911x_reg_read(%struct.smsc911x_data* %9, i32 %10)
  store i32 %11, i32* %6, align 4
  %12 = load i32, i32* %6, align 4
  %13 = load i32, i32* @MAC_CSR_CMD_CSR_BUSY_, align 4
  %14 = and i32 %12, %13
  %15 = call i64 @unlikely(i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %2
  %18 = load i32, i32* @HW, align 4
  %19 = call i32 @SMSC_WARNING(i32 %18, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %46

20:                                               ; preds = %2
  %21 = load %struct.smsc911x_data*, %struct.smsc911x_data** %4, align 8
  %22 = load i32, i32* @MAC_CSR_CMD, align 4
  %23 = load i32, i32* %5, align 4
  %24 = and i32 %23, 255
  %25 = load i32, i32* @MAC_CSR_CMD_CSR_BUSY_, align 4
  %26 = or i32 %24, %25
  %27 = load i32, i32* @MAC_CSR_CMD_R_NOT_W_, align 4
  %28 = or i32 %26, %27
  %29 = call i32 @smsc911x_reg_write(%struct.smsc911x_data* %21, i32 %22, i32 %28)
  %30 = load %struct.smsc911x_data*, %struct.smsc911x_data** %4, align 8
  %31 = load i32, i32* @BYTE_TEST, align 4
  %32 = call i32 @smsc911x_reg_read(%struct.smsc911x_data* %30, i32 %31)
  store i32 %32, i32* %6, align 4
  %33 = load %struct.smsc911x_data*, %struct.smsc911x_data** %4, align 8
  %34 = call i64 @smsc911x_mac_complete(%struct.smsc911x_data* %33)
  %35 = icmp eq i64 %34, 0
  %36 = zext i1 %35 to i32
  %37 = call i64 @likely(i32 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %43

39:                                               ; preds = %20
  %40 = load %struct.smsc911x_data*, %struct.smsc911x_data** %4, align 8
  %41 = load i32, i32* @MAC_CSR_DATA, align 4
  %42 = call i32 @smsc911x_reg_read(%struct.smsc911x_data* %40, i32 %41)
  store i32 %42, i32* %3, align 4
  br label %46

43:                                               ; preds = %20
  %44 = load i32, i32* @HW, align 4
  %45 = call i32 @SMSC_WARNING(i32 %44, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %46

46:                                               ; preds = %43, %39, %17
  %47 = load i32, i32* %3, align 4
  ret i32 %47
}

declare dso_local i32 @SMSC_ASSERT_MAC_LOCK(%struct.smsc911x_data*) #1

declare dso_local i32 @smsc911x_reg_read(%struct.smsc911x_data*, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @SMSC_WARNING(i32, i8*) #1

declare dso_local i32 @smsc911x_reg_write(%struct.smsc911x_data*, i32, i32) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i64 @smsc911x_mac_complete(%struct.smsc911x_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
