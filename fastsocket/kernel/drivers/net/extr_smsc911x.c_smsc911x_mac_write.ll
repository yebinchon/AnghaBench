; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_smsc911x.c_smsc911x_mac_write.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_smsc911x.c_smsc911x_mac_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smsc911x_data = type { i32 }

@MAC_CSR_CMD = common dso_local global i32 0, align 4
@MAC_CSR_CMD_CSR_BUSY_ = common dso_local global i32 0, align 4
@HW = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"smsc911x_mac_write failed, MAC busy at entry\00", align 1
@MAC_CSR_DATA = common dso_local global i32 0, align 4
@BYTE_TEST = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [48 x i8] c"smsc911x_mac_write failed, MAC busy after write\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.smsc911x_data*, i32, i32)* @smsc911x_mac_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @smsc911x_mac_write(%struct.smsc911x_data* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.smsc911x_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.smsc911x_data* %0, %struct.smsc911x_data** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load %struct.smsc911x_data*, %struct.smsc911x_data** %4, align 8
  %9 = call i32 @SMSC_ASSERT_MAC_LOCK(%struct.smsc911x_data* %8)
  %10 = load %struct.smsc911x_data*, %struct.smsc911x_data** %4, align 8
  %11 = load i32, i32* @MAC_CSR_CMD, align 4
  %12 = call i32 @smsc911x_reg_read(%struct.smsc911x_data* %10, i32 %11)
  store i32 %12, i32* %7, align 4
  %13 = load i32, i32* %7, align 4
  %14 = load i32, i32* @MAC_CSR_CMD_CSR_BUSY_, align 4
  %15 = and i32 %13, %14
  %16 = call i64 @unlikely(i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %3
  %19 = load i32, i32* @HW, align 4
  %20 = call i32 @SMSC_WARNING(i32 %19, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0))
  br label %46

21:                                               ; preds = %3
  %22 = load %struct.smsc911x_data*, %struct.smsc911x_data** %4, align 8
  %23 = load i32, i32* @MAC_CSR_DATA, align 4
  %24 = load i32, i32* %6, align 4
  %25 = call i32 @smsc911x_reg_write(%struct.smsc911x_data* %22, i32 %23, i32 %24)
  %26 = load %struct.smsc911x_data*, %struct.smsc911x_data** %4, align 8
  %27 = load i32, i32* @MAC_CSR_CMD, align 4
  %28 = load i32, i32* %5, align 4
  %29 = and i32 %28, 255
  %30 = load i32, i32* @MAC_CSR_CMD_CSR_BUSY_, align 4
  %31 = or i32 %29, %30
  %32 = call i32 @smsc911x_reg_write(%struct.smsc911x_data* %26, i32 %27, i32 %31)
  %33 = load %struct.smsc911x_data*, %struct.smsc911x_data** %4, align 8
  %34 = load i32, i32* @BYTE_TEST, align 4
  %35 = call i32 @smsc911x_reg_read(%struct.smsc911x_data* %33, i32 %34)
  store i32 %35, i32* %7, align 4
  %36 = load %struct.smsc911x_data*, %struct.smsc911x_data** %4, align 8
  %37 = call i64 @smsc911x_mac_complete(%struct.smsc911x_data* %36)
  %38 = icmp eq i64 %37, 0
  %39 = zext i1 %38 to i32
  %40 = call i64 @likely(i32 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %21
  br label %46

43:                                               ; preds = %21
  %44 = load i32, i32* @HW, align 4
  %45 = call i32 @SMSC_WARNING(i32 %44, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0))
  br label %46

46:                                               ; preds = %43, %42, %18
  ret void
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
