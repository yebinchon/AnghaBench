; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_jme.c_jme_smb_read.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_jme.c_jme_smb_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.jme_adapter = type { i32 }

@JME_SMBCSR = common dso_local global i32 0, align 4
@JME_SMB_BUSY_TIMEOUT = common dso_local global i32 0, align 4
@SMBCSR_BUSY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"SMB Bus Busy.\0A\00", align 1
@JME_SMBINTF = common dso_local global i32 0, align 4
@SMBINTF_HWADDR_SHIFT = common dso_local global i32 0, align 4
@SMBINTF_HWADDR = common dso_local global i32 0, align 4
@SMBINTF_HWRWN_READ = common dso_local global i32 0, align 4
@SMBINTF_HWCMD = common dso_local global i32 0, align 4
@SMBINTF_HWDATR = common dso_local global i32 0, align 4
@SMBINTF_HWDATR_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.jme_adapter*, i32)* @jme_smb_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @jme_smb_read(%struct.jme_adapter* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.jme_adapter*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.jme_adapter* %0, %struct.jme_adapter** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.jme_adapter*, %struct.jme_adapter** %4, align 8
  %9 = load i32, i32* @JME_SMBCSR, align 4
  %10 = call i32 @jread32(%struct.jme_adapter* %8, i32 %9)
  store i32 %10, i32* %6, align 4
  %11 = load i32, i32* @JME_SMB_BUSY_TIMEOUT, align 4
  store i32 %11, i32* %7, align 4
  br label %12

12:                                               ; preds = %23, %2
  %13 = load i32, i32* %6, align 4
  %14 = load i32, i32* @SMBCSR_BUSY, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %12
  %18 = load i32, i32* %7, align 4
  %19 = add nsw i32 %18, -1
  store i32 %19, i32* %7, align 4
  %20 = icmp ne i32 %19, 0
  br label %21

21:                                               ; preds = %17, %12
  %22 = phi i1 [ false, %12 ], [ %20, %17 ]
  br i1 %22, label %23, label %28

23:                                               ; preds = %21
  %24 = call i32 @msleep(i32 1)
  %25 = load %struct.jme_adapter*, %struct.jme_adapter** %4, align 8
  %26 = load i32, i32* @JME_SMBCSR, align 4
  %27 = call i32 @jread32(%struct.jme_adapter* %25, i32 %26)
  store i32 %27, i32* %6, align 4
  br label %12

28:                                               ; preds = %21
  %29 = load i32, i32* %7, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %34, label %31

31:                                               ; preds = %28
  %32 = load %struct.jme_adapter*, %struct.jme_adapter** %4, align 8
  %33 = call i32 @msg_hw(%struct.jme_adapter* %32, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  store i32 255, i32* %3, align 4
  br label %79

34:                                               ; preds = %28
  %35 = load %struct.jme_adapter*, %struct.jme_adapter** %4, align 8
  %36 = load i32, i32* @JME_SMBINTF, align 4
  %37 = load i32, i32* %5, align 4
  %38 = load i32, i32* @SMBINTF_HWADDR_SHIFT, align 4
  %39 = shl i32 %37, %38
  %40 = load i32, i32* @SMBINTF_HWADDR, align 4
  %41 = and i32 %39, %40
  %42 = load i32, i32* @SMBINTF_HWRWN_READ, align 4
  %43 = or i32 %41, %42
  %44 = load i32, i32* @SMBINTF_HWCMD, align 4
  %45 = or i32 %43, %44
  %46 = call i32 @jwrite32(%struct.jme_adapter* %35, i32 %36, i32 %45)
  %47 = load %struct.jme_adapter*, %struct.jme_adapter** %4, align 8
  %48 = load i32, i32* @JME_SMBINTF, align 4
  %49 = call i32 @jread32(%struct.jme_adapter* %47, i32 %48)
  store i32 %49, i32* %6, align 4
  %50 = load i32, i32* @JME_SMB_BUSY_TIMEOUT, align 4
  store i32 %50, i32* %7, align 4
  br label %51

51:                                               ; preds = %62, %34
  %52 = load i32, i32* %6, align 4
  %53 = load i32, i32* @SMBINTF_HWCMD, align 4
  %54 = and i32 %52, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %60

56:                                               ; preds = %51
  %57 = load i32, i32* %7, align 4
  %58 = add nsw i32 %57, -1
  store i32 %58, i32* %7, align 4
  %59 = icmp ne i32 %58, 0
  br label %60

60:                                               ; preds = %56, %51
  %61 = phi i1 [ false, %51 ], [ %59, %56 ]
  br i1 %61, label %62, label %67

62:                                               ; preds = %60
  %63 = call i32 @msleep(i32 1)
  %64 = load %struct.jme_adapter*, %struct.jme_adapter** %4, align 8
  %65 = load i32, i32* @JME_SMBINTF, align 4
  %66 = call i32 @jread32(%struct.jme_adapter* %64, i32 %65)
  store i32 %66, i32* %6, align 4
  br label %51

67:                                               ; preds = %60
  %68 = load i32, i32* %7, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %73, label %70

70:                                               ; preds = %67
  %71 = load %struct.jme_adapter*, %struct.jme_adapter** %4, align 8
  %72 = call i32 @msg_hw(%struct.jme_adapter* %71, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  store i32 255, i32* %3, align 4
  br label %79

73:                                               ; preds = %67
  %74 = load i32, i32* %6, align 4
  %75 = load i32, i32* @SMBINTF_HWDATR, align 4
  %76 = and i32 %74, %75
  %77 = load i32, i32* @SMBINTF_HWDATR_SHIFT, align 4
  %78 = lshr i32 %76, %77
  store i32 %78, i32* %3, align 4
  br label %79

79:                                               ; preds = %73, %70, %31
  %80 = load i32, i32* %3, align 4
  ret i32 %80
}

declare dso_local i32 @jread32(%struct.jme_adapter*, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @msg_hw(%struct.jme_adapter*, i8*) #1

declare dso_local i32 @jwrite32(%struct.jme_adapter*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
