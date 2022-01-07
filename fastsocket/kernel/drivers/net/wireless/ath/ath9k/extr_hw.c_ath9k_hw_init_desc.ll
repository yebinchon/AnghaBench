; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath9k/extr_hw.c_ath9k_hw_init_desc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/ath9k/extr_hw.c_ath9k_hw_init_desc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_hw = type { i32 }
%struct.ath_common = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@AR_CFG = common dso_local global i32 0, align 4
@AR_CFG_SWRB = common dso_local global i32 0, align 4
@AR_CFG_SWTB = common dso_local global i32 0, align 4
@AR_CFG_SWRG = common dso_local global i32 0, align 4
@RESET = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"CFG Byte Swap Set 0x%x\0A\00", align 1
@INIT_CONFIG_STATUS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [18 x i8] c"Setting CFG 0x%x\0A\00", align 1
@ATH_USB = common dso_local global i64 0, align 8
@AR_CFG_SWTD = common dso_local global i32 0, align 4
@AR_CFG_SWRD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ath_hw*)* @ath9k_hw_init_desc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ath9k_hw_init_desc(%struct.ath_hw* %0) #0 {
  %2 = alloca %struct.ath_hw*, align 8
  %3 = alloca %struct.ath_common*, align 8
  %4 = alloca i32, align 4
  store %struct.ath_hw* %0, %struct.ath_hw** %2, align 8
  %5 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %6 = call %struct.ath_common* @ath9k_hw_common(%struct.ath_hw* %5)
  store %struct.ath_common* %6, %struct.ath_common** %3, align 8
  %7 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %8 = call i64 @AR_SREV_9100(%struct.ath_hw* %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %44

10:                                               ; preds = %1
  %11 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %12 = load i32, i32* @AR_CFG, align 4
  %13 = call i32 @REG_READ(%struct.ath_hw* %11, i32 %12)
  store i32 %13, i32* %4, align 4
  %14 = load i32, i32* %4, align 4
  %15 = load i32, i32* @AR_CFG_SWRB, align 4
  %16 = load i32, i32* @AR_CFG_SWTB, align 4
  %17 = or i32 %15, %16
  %18 = load i32, i32* @AR_CFG_SWRG, align 4
  %19 = or i32 %17, %18
  %20 = and i32 %14, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %27

22:                                               ; preds = %10
  %23 = load %struct.ath_common*, %struct.ath_common** %3, align 8
  %24 = load i32, i32* @RESET, align 4
  %25 = load i32, i32* %4, align 4
  %26 = call i32 @ath_dbg(%struct.ath_common* %23, i32 %24, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %25)
  br label %43

27:                                               ; preds = %10
  %28 = load i32, i32* @INIT_CONFIG_STATUS, align 4
  %29 = load i32, i32* @AR_CFG_SWRB, align 4
  %30 = or i32 %28, %29
  %31 = load i32, i32* @AR_CFG_SWTB, align 4
  %32 = or i32 %30, %31
  store i32 %32, i32* %4, align 4
  %33 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %34 = load i32, i32* @AR_CFG, align 4
  %35 = load i32, i32* %4, align 4
  %36 = call i32 @REG_WRITE(%struct.ath_hw* %33, i32 %34, i32 %35)
  %37 = load %struct.ath_common*, %struct.ath_common** %3, align 8
  %38 = load i32, i32* @RESET, align 4
  %39 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %40 = load i32, i32* @AR_CFG, align 4
  %41 = call i32 @REG_READ(%struct.ath_hw* %39, i32 %40)
  %42 = call i32 @ath_dbg(%struct.ath_common* %37, i32 %38, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i32 %41)
  br label %43

43:                                               ; preds = %27, %22
  br label %72

44:                                               ; preds = %1
  %45 = load %struct.ath_common*, %struct.ath_common** %3, align 8
  %46 = getelementptr inbounds %struct.ath_common, %struct.ath_common* %45, i32 0, i32 0
  %47 = load %struct.TYPE_2__*, %struct.TYPE_2__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @ATH_USB, align 8
  %51 = icmp eq i64 %49, %50
  br i1 %51, label %52, label %71

52:                                               ; preds = %44
  %53 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %54 = call i64 @AR_SREV_9271(%struct.ath_hw* %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %63

56:                                               ; preds = %52
  %57 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %58 = load i32, i32* @AR_CFG, align 4
  %59 = load i32, i32* @AR_CFG_SWRB, align 4
  %60 = load i32, i32* @AR_CFG_SWTB, align 4
  %61 = or i32 %59, %60
  %62 = call i32 @REG_WRITE(%struct.ath_hw* %57, i32 %58, i32 %61)
  br label %70

63:                                               ; preds = %52
  %64 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %65 = load i32, i32* @AR_CFG, align 4
  %66 = load i32, i32* @AR_CFG_SWTD, align 4
  %67 = load i32, i32* @AR_CFG_SWRD, align 4
  %68 = or i32 %66, %67
  %69 = call i32 @REG_WRITE(%struct.ath_hw* %64, i32 %65, i32 %68)
  br label %70

70:                                               ; preds = %63, %56
  br label %71

71:                                               ; preds = %70, %44
  br label %72

72:                                               ; preds = %71, %43
  ret void
}

declare dso_local %struct.ath_common* @ath9k_hw_common(%struct.ath_hw*) #1

declare dso_local i64 @AR_SREV_9100(%struct.ath_hw*) #1

declare dso_local i32 @REG_READ(%struct.ath_hw*, i32) #1

declare dso_local i32 @ath_dbg(%struct.ath_common*, i32, i8*, i32) #1

declare dso_local i32 @REG_WRITE(%struct.ath_hw*, i32, i32) #1

declare dso_local i64 @AR_SREV_9271(%struct.ath_hw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
