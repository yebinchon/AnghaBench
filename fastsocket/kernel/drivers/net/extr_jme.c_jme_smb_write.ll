; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_jme.c_jme_smb_write.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_jme.c_jme_smb_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.jme_adapter = type { i32 }

@JME_SMBCSR = common dso_local global i32 0, align 4
@JME_SMB_BUSY_TIMEOUT = common dso_local global i32 0, align 4
@SMBCSR_BUSY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"SMB Bus Busy.\0A\00", align 1
@JME_SMBINTF = common dso_local global i32 0, align 4
@SMBINTF_HWDATW_SHIFT = common dso_local global i32 0, align 4
@SMBINTF_HWDATW = common dso_local global i32 0, align 4
@SMBINTF_HWADDR_SHIFT = common dso_local global i32 0, align 4
@SMBINTF_HWADDR = common dso_local global i32 0, align 4
@SMBINTF_HWRWN_WRITE = common dso_local global i32 0, align 4
@SMBINTF_HWCMD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.jme_adapter*, i32, i32)* @jme_smb_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @jme_smb_write(%struct.jme_adapter* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.jme_adapter*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.jme_adapter* %0, %struct.jme_adapter** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load %struct.jme_adapter*, %struct.jme_adapter** %4, align 8
  %10 = load i32, i32* @JME_SMBCSR, align 4
  %11 = call i32 @jread32(%struct.jme_adapter* %9, i32 %10)
  store i32 %11, i32* %7, align 4
  %12 = load i32, i32* @JME_SMB_BUSY_TIMEOUT, align 4
  store i32 %12, i32* %8, align 4
  br label %13

13:                                               ; preds = %24, %3
  %14 = load i32, i32* %7, align 4
  %15 = load i32, i32* @SMBCSR_BUSY, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %22

18:                                               ; preds = %13
  %19 = load i32, i32* %8, align 4
  %20 = add nsw i32 %19, -1
  store i32 %20, i32* %8, align 4
  %21 = icmp ne i32 %20, 0
  br label %22

22:                                               ; preds = %18, %13
  %23 = phi i1 [ false, %13 ], [ %21, %18 ]
  br i1 %23, label %24, label %29

24:                                               ; preds = %22
  %25 = call i32 @msleep(i32 1)
  %26 = load %struct.jme_adapter*, %struct.jme_adapter** %4, align 8
  %27 = load i32, i32* @JME_SMBCSR, align 4
  %28 = call i32 @jread32(%struct.jme_adapter* %26, i32 %27)
  store i32 %28, i32* %7, align 4
  br label %13

29:                                               ; preds = %22
  %30 = load i32, i32* %8, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %35, label %32

32:                                               ; preds = %29
  %33 = load %struct.jme_adapter*, %struct.jme_adapter** %4, align 8
  %34 = call i32 @msg_hw(%struct.jme_adapter* %33, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  br label %82

35:                                               ; preds = %29
  %36 = load %struct.jme_adapter*, %struct.jme_adapter** %4, align 8
  %37 = load i32, i32* @JME_SMBINTF, align 4
  %38 = load i32, i32* %6, align 4
  %39 = load i32, i32* @SMBINTF_HWDATW_SHIFT, align 4
  %40 = shl i32 %38, %39
  %41 = load i32, i32* @SMBINTF_HWDATW, align 4
  %42 = and i32 %40, %41
  %43 = load i32, i32* %5, align 4
  %44 = load i32, i32* @SMBINTF_HWADDR_SHIFT, align 4
  %45 = shl i32 %43, %44
  %46 = load i32, i32* @SMBINTF_HWADDR, align 4
  %47 = and i32 %45, %46
  %48 = or i32 %42, %47
  %49 = load i32, i32* @SMBINTF_HWRWN_WRITE, align 4
  %50 = or i32 %48, %49
  %51 = load i32, i32* @SMBINTF_HWCMD, align 4
  %52 = or i32 %50, %51
  %53 = call i32 @jwrite32(%struct.jme_adapter* %36, i32 %37, i32 %52)
  %54 = load %struct.jme_adapter*, %struct.jme_adapter** %4, align 8
  %55 = load i32, i32* @JME_SMBINTF, align 4
  %56 = call i32 @jread32(%struct.jme_adapter* %54, i32 %55)
  store i32 %56, i32* %7, align 4
  %57 = load i32, i32* @JME_SMB_BUSY_TIMEOUT, align 4
  store i32 %57, i32* %8, align 4
  br label %58

58:                                               ; preds = %69, %35
  %59 = load i32, i32* %7, align 4
  %60 = load i32, i32* @SMBINTF_HWCMD, align 4
  %61 = and i32 %59, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %67

63:                                               ; preds = %58
  %64 = load i32, i32* %8, align 4
  %65 = add nsw i32 %64, -1
  store i32 %65, i32* %8, align 4
  %66 = icmp ne i32 %65, 0
  br label %67

67:                                               ; preds = %63, %58
  %68 = phi i1 [ false, %58 ], [ %66, %63 ]
  br i1 %68, label %69, label %74

69:                                               ; preds = %67
  %70 = call i32 @msleep(i32 1)
  %71 = load %struct.jme_adapter*, %struct.jme_adapter** %4, align 8
  %72 = load i32, i32* @JME_SMBINTF, align 4
  %73 = call i32 @jread32(%struct.jme_adapter* %71, i32 %72)
  store i32 %73, i32* %7, align 4
  br label %58

74:                                               ; preds = %67
  %75 = load i32, i32* %8, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %80, label %77

77:                                               ; preds = %74
  %78 = load %struct.jme_adapter*, %struct.jme_adapter** %4, align 8
  %79 = call i32 @msg_hw(%struct.jme_adapter* %78, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  br label %82

80:                                               ; preds = %74
  %81 = call i32 @mdelay(i32 2)
  br label %82

82:                                               ; preds = %80, %77, %32
  ret void
}

declare dso_local i32 @jread32(%struct.jme_adapter*, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @msg_hw(%struct.jme_adapter*, i8*) #1

declare dso_local i32 @jwrite32(%struct.jme_adapter*, i32, i32) #1

declare dso_local i32 @mdelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
