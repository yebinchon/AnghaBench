; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_tehuti.c_bdx_ioctl_priv.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_tehuti.c_bdx_ioctl_priv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ifreq = type { i32 }
%struct.bdx_priv = type { i32 }

@ENTER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"jiffies=%ld cmd=%d\0A\00", align 1
@jiffies = common dso_local global i32 0, align 4
@SIOCDEVPRIVATE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"cant copy from user\0A\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"%d 0x%x 0x%x\0A\00", align 1
@CAP_SYS_RAWIO = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [30 x i8] c"read_reg(0x%x)=0x%x (dec %d)\0A\00", align 1
@.str.4 = private unnamed_addr constant [23 x i8] c"write_reg(0x%x, 0x%x)\0A\00", align 1
@EOPNOTSUPP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.ifreq*, i32)* @bdx_ioctl_priv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bdx_ioctl_priv(%struct.net_device* %0, %struct.ifreq* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.ifreq*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.bdx_priv*, align 8
  %9 = alloca [3 x i32], align 4
  %10 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %5, align 8
  store %struct.ifreq* %1, %struct.ifreq** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load %struct.net_device*, %struct.net_device** %5, align 8
  %12 = call %struct.bdx_priv* @netdev_priv(%struct.net_device* %11)
  store %struct.bdx_priv* %12, %struct.bdx_priv** %8, align 8
  %13 = load i32, i32* @ENTER, align 4
  %14 = load i32, i32* @jiffies, align 4
  %15 = load i32, i32* %7, align 4
  %16 = call i32 (i8*, i32, i32, ...) @DBG(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %14, i32 %15)
  %17 = load i32, i32* %7, align 4
  %18 = load i32, i32* @SIOCDEVPRIVATE, align 4
  %19 = icmp ne i32 %17, %18
  br i1 %19, label %20, label %40

20:                                               ; preds = %3
  %21 = getelementptr inbounds [3 x i32], [3 x i32]* %9, i64 0, i64 0
  %22 = load %struct.ifreq*, %struct.ifreq** %6, align 8
  %23 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @copy_from_user(i32* %21, i32 %24, i32 12)
  store i32 %25, i32* %10, align 4
  %26 = load i32, i32* %10, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %20
  %29 = call i32 @ERR(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  %30 = load i32, i32* %10, align 4
  %31 = call i32 @RET(i32 %30)
  br label %32

32:                                               ; preds = %28, %20
  %33 = getelementptr inbounds [3 x i32], [3 x i32]* %9, i64 0, i64 0
  %34 = load i32, i32* %33, align 4
  %35 = getelementptr inbounds [3 x i32], [3 x i32]* %9, i64 0, i64 1
  %36 = load i32, i32* %35, align 4
  %37 = getelementptr inbounds [3 x i32], [3 x i32]* %9, i64 0, i64 2
  %38 = load i32, i32* %37, align 4
  %39 = call i32 (i8*, i32, i32, ...) @DBG(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0), i32 %34, i32 %36, i32 %38)
  br label %40

40:                                               ; preds = %32, %3
  %41 = load i32, i32* @CAP_SYS_RAWIO, align 4
  %42 = call i32 @capable(i32 %41)
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %47, label %44

44:                                               ; preds = %40
  %45 = load i32, i32* @EPERM, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %4, align 4
  br label %109

47:                                               ; preds = %40
  %48 = getelementptr inbounds [3 x i32], [3 x i32]* %9, i64 0, i64 0
  %49 = load i32, i32* %48, align 4
  switch i32 %49, label %104 [
    i32 129, label %50
    i32 128, label %83
  ]

50:                                               ; preds = %47
  %51 = load %struct.bdx_priv*, %struct.bdx_priv** %8, align 8
  %52 = getelementptr inbounds [3 x i32], [3 x i32]* %9, i64 0, i64 1
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @bdx_range_check(%struct.bdx_priv* %51, i32 %53)
  store i32 %54, i32* %10, align 4
  %55 = load i32, i32* %10, align 4
  %56 = icmp slt i32 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %50
  %58 = load i32, i32* %10, align 4
  store i32 %58, i32* %4, align 4
  br label %109

59:                                               ; preds = %50
  %60 = load %struct.bdx_priv*, %struct.bdx_priv** %8, align 8
  %61 = getelementptr inbounds [3 x i32], [3 x i32]* %9, i64 0, i64 1
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @READ_REG(%struct.bdx_priv* %60, i32 %62)
  %64 = getelementptr inbounds [3 x i32], [3 x i32]* %9, i64 0, i64 2
  store i32 %63, i32* %64, align 4
  %65 = getelementptr inbounds [3 x i32], [3 x i32]* %9, i64 0, i64 1
  %66 = load i32, i32* %65, align 4
  %67 = getelementptr inbounds [3 x i32], [3 x i32]* %9, i64 0, i64 2
  %68 = load i32, i32* %67, align 4
  %69 = getelementptr inbounds [3 x i32], [3 x i32]* %9, i64 0, i64 2
  %70 = load i32, i32* %69, align 4
  %71 = call i32 (i8*, i32, i32, ...) @DBG(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0), i32 %66, i32 %68, i32 %70)
  %72 = load %struct.ifreq*, %struct.ifreq** %6, align 8
  %73 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = getelementptr inbounds [3 x i32], [3 x i32]* %9, i64 0, i64 0
  %76 = call i32 @copy_to_user(i32 %74, i32* %75, i32 12)
  store i32 %76, i32* %10, align 4
  %77 = load i32, i32* %10, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %82

79:                                               ; preds = %59
  %80 = load i32, i32* %10, align 4
  %81 = call i32 @RET(i32 %80)
  br label %82

82:                                               ; preds = %79, %59
  br label %108

83:                                               ; preds = %47
  %84 = load %struct.bdx_priv*, %struct.bdx_priv** %8, align 8
  %85 = getelementptr inbounds [3 x i32], [3 x i32]* %9, i64 0, i64 1
  %86 = load i32, i32* %85, align 4
  %87 = call i32 @bdx_range_check(%struct.bdx_priv* %84, i32 %86)
  store i32 %87, i32* %10, align 4
  %88 = load i32, i32* %10, align 4
  %89 = icmp slt i32 %88, 0
  br i1 %89, label %90, label %92

90:                                               ; preds = %83
  %91 = load i32, i32* %10, align 4
  store i32 %91, i32* %4, align 4
  br label %109

92:                                               ; preds = %83
  %93 = load %struct.bdx_priv*, %struct.bdx_priv** %8, align 8
  %94 = getelementptr inbounds [3 x i32], [3 x i32]* %9, i64 0, i64 1
  %95 = load i32, i32* %94, align 4
  %96 = getelementptr inbounds [3 x i32], [3 x i32]* %9, i64 0, i64 2
  %97 = load i32, i32* %96, align 4
  %98 = call i32 @WRITE_REG(%struct.bdx_priv* %93, i32 %95, i32 %97)
  %99 = getelementptr inbounds [3 x i32], [3 x i32]* %9, i64 0, i64 1
  %100 = load i32, i32* %99, align 4
  %101 = getelementptr inbounds [3 x i32], [3 x i32]* %9, i64 0, i64 2
  %102 = load i32, i32* %101, align 4
  %103 = call i32 (i8*, i32, i32, ...) @DBG(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0), i32 %100, i32 %102)
  br label %108

104:                                              ; preds = %47
  %105 = load i32, i32* @EOPNOTSUPP, align 4
  %106 = sub nsw i32 0, %105
  %107 = call i32 @RET(i32 %106)
  br label %108

108:                                              ; preds = %104, %92, %82
  store i32 0, i32* %4, align 4
  br label %109

109:                                              ; preds = %108, %90, %57, %44
  %110 = load i32, i32* %4, align 4
  ret i32 %110
}

declare dso_local %struct.bdx_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @DBG(i8*, i32, i32, ...) #1

declare dso_local i32 @copy_from_user(i32*, i32, i32) #1

declare dso_local i32 @ERR(i8*) #1

declare dso_local i32 @RET(i32) #1

declare dso_local i32 @capable(i32) #1

declare dso_local i32 @bdx_range_check(%struct.bdx_priv*, i32) #1

declare dso_local i32 @READ_REG(%struct.bdx_priv*, i32) #1

declare dso_local i32 @copy_to_user(i32, i32*, i32) #1

declare dso_local i32 @WRITE_REG(%struct.bdx_priv*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
