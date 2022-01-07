; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bnx2x/extr_bnx2x_ethtool.c_bnx2x_test_nvram.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bnx2x/extr_bnx2x_ethtool.c_bnx2x_test_nvram.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crc_pair = type { i32, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.bnx2x = type { i32 }

@__const.bnx2x_test_nvram.nvram_tbl = private unnamed_addr constant [7 x %struct.crc_pair] [%struct.crc_pair { i32 0, i32 20 }, %struct.crc_pair { i32 20, i32 236 }, %struct.crc_pair { i32 256, i32 848 }, %struct.crc_pair { i32 1104, i32 240 }, %struct.crc_pair { i32 1600, i32 100 }, %struct.crc_pair { i32 1800, i32 112 }, %struct.crc_pair zeroinitializer], align 16
@__const.bnx2x_test_nvram.nvram_tbl2 = private unnamed_addr constant [3 x %struct.crc_pair] [%struct.crc_pair { i32 2024, i32 848 }, %struct.crc_pair { i32 2872, i32 240 }, %struct.crc_pair zeroinitializer], align 16
@CRC_BUFF_SIZE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@BNX2X_MSG_ETHTOOL = common dso_local global i32 0, align 4
@BNX2X_MSG_NVM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"kmalloc failed\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"magic value read (rc %d)\0A\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"wrong magic value (0x%08x)\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [21 x i8] c"Port 0 CRC test-set\0A\00", align 1
@dev_info = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@SHARED_HW_CFG_HIDE_PORT1 = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [21 x i8] c"Port 1 CRC test-set\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bnx2x*)* @bnx2x_test_nvram to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bnx2x_test_nvram(%struct.bnx2x* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bnx2x*, align 8
  %4 = alloca [7 x %struct.crc_pair], align 16
  %5 = alloca [3 x %struct.crc_pair], align 16
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.bnx2x* %0, %struct.bnx2x** %3, align 8
  %10 = bitcast [7 x %struct.crc_pair]* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %10, i8* align 16 bitcast ([7 x %struct.crc_pair]* @__const.bnx2x_test_nvram.nvram_tbl to i8*), i64 56, i1 false)
  %11 = bitcast [3 x %struct.crc_pair]* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %11, i8* align 16 bitcast ([3 x %struct.crc_pair]* @__const.bnx2x_test_nvram.nvram_tbl2 to i8*), i64 24, i1 false)
  %12 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %13 = call i64 @BP_NOMCP(%struct.bnx2x* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %101

16:                                               ; preds = %1
  %17 = load i32, i32* @CRC_BUFF_SIZE, align 4
  %18 = load i32, i32* @GFP_KERNEL, align 4
  %19 = call i32* @kmalloc(i32 %17, i32 %18)
  store i32* %19, i32** %6, align 8
  %20 = load i32*, i32** %6, align 8
  %21 = icmp ne i32* %20, null
  br i1 %21, label %29, label %22

22:                                               ; preds = %16
  %23 = load i32, i32* @BNX2X_MSG_ETHTOOL, align 4
  %24 = load i32, i32* @BNX2X_MSG_NVM, align 4
  %25 = or i32 %23, %24
  %26 = call i32 (i32, i8*, ...) @DP(i32 %25, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %27 = load i32, i32* @ENOMEM, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %7, align 4
  br label %97

29:                                               ; preds = %16
  %30 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %31 = call i32 @bnx2x_nvram_read32(%struct.bnx2x* %30, i32 0, i32* %8, i32 4)
  store i32 %31, i32* %7, align 4
  %32 = load i32, i32* %7, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %40

34:                                               ; preds = %29
  %35 = load i32, i32* @BNX2X_MSG_ETHTOOL, align 4
  %36 = load i32, i32* @BNX2X_MSG_NVM, align 4
  %37 = or i32 %35, %36
  %38 = load i32, i32* %7, align 4
  %39 = call i32 (i32, i8*, ...) @DP(i32 %37, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 %38)
  br label %97

40:                                               ; preds = %29
  %41 = load i32, i32* %8, align 4
  %42 = icmp ne i32 %41, 1721324970
  br i1 %42, label %43, label %51

43:                                               ; preds = %40
  %44 = load i32, i32* @BNX2X_MSG_ETHTOOL, align 4
  %45 = load i32, i32* @BNX2X_MSG_NVM, align 4
  %46 = or i32 %44, %45
  %47 = load i32, i32* %8, align 4
  %48 = call i32 (i32, i8*, ...) @DP(i32 %46, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), i32 %47)
  %49 = load i32, i32* @ENODEV, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %7, align 4
  br label %97

51:                                               ; preds = %40
  %52 = load i32, i32* @BNX2X_MSG_ETHTOOL, align 4
  %53 = load i32, i32* @BNX2X_MSG_NVM, align 4
  %54 = or i32 %52, %53
  %55 = call i32 (i32, i8*, ...) @DP(i32 %54, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0))
  %56 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %57 = getelementptr inbounds [7 x %struct.crc_pair], [7 x %struct.crc_pair]* %4, i64 0, i64 0
  %58 = load i32*, i32** %6, align 8
  %59 = call i32 @bnx2x_test_nvram_tbl(%struct.bnx2x* %56, %struct.crc_pair* %57, i32* %58)
  store i32 %59, i32* %7, align 4
  %60 = load i32, i32* %7, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %51
  br label %97

63:                                               ; preds = %51
  %64 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %65 = call i32 @CHIP_IS_E1x(%struct.bnx2x* %64)
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %93, label %67

67:                                               ; preds = %63
  %68 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %69 = call i32 @CHIP_IS_57811xx(%struct.bnx2x* %68)
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %93, label %71

71:                                               ; preds = %67
  %72 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %73 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @dev_info, i32 0, i32 0, i32 0), align 4
  %74 = call i32 @SHMEM_RD(%struct.bnx2x* %72, i32 %73)
  %75 = load i32, i32* @SHARED_HW_CFG_HIDE_PORT1, align 4
  %76 = and i32 %74, %75
  store i32 %76, i32* %9, align 4
  %77 = load i32, i32* %9, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %92, label %79

79:                                               ; preds = %71
  %80 = load i32, i32* @BNX2X_MSG_ETHTOOL, align 4
  %81 = load i32, i32* @BNX2X_MSG_NVM, align 4
  %82 = or i32 %80, %81
  %83 = call i32 (i32, i8*, ...) @DP(i32 %82, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0))
  %84 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %85 = getelementptr inbounds [3 x %struct.crc_pair], [3 x %struct.crc_pair]* %5, i64 0, i64 0
  %86 = load i32*, i32** %6, align 8
  %87 = call i32 @bnx2x_test_nvram_tbl(%struct.bnx2x* %84, %struct.crc_pair* %85, i32* %86)
  store i32 %87, i32* %7, align 4
  %88 = load i32, i32* %7, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %91

90:                                               ; preds = %79
  br label %97

91:                                               ; preds = %79
  br label %92

92:                                               ; preds = %91, %71
  br label %93

93:                                               ; preds = %92, %67, %63
  %94 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %95 = load i32*, i32** %6, align 8
  %96 = call i32 @bnx2x_test_nvram_dirs(%struct.bnx2x* %94, i32* %95)
  store i32 %96, i32* %7, align 4
  br label %97

97:                                               ; preds = %93, %90, %62, %43, %34, %22
  %98 = load i32*, i32** %6, align 8
  %99 = call i32 @kfree(i32* %98)
  %100 = load i32, i32* %7, align 4
  store i32 %100, i32* %2, align 4
  br label %101

101:                                              ; preds = %97, %15
  %102 = load i32, i32* %2, align 4
  ret i32 %102
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i64 @BP_NOMCP(%struct.bnx2x*) #2

declare dso_local i32* @kmalloc(i32, i32) #2

declare dso_local i32 @DP(i32, i8*, ...) #2

declare dso_local i32 @bnx2x_nvram_read32(%struct.bnx2x*, i32, i32*, i32) #2

declare dso_local i32 @bnx2x_test_nvram_tbl(%struct.bnx2x*, %struct.crc_pair*, i32*) #2

declare dso_local i32 @CHIP_IS_E1x(%struct.bnx2x*) #2

declare dso_local i32 @CHIP_IS_57811xx(%struct.bnx2x*) #2

declare dso_local i32 @SHMEM_RD(%struct.bnx2x*, i32) #2

declare dso_local i32 @bnx2x_test_nvram_dirs(%struct.bnx2x*, i32*) #2

declare dso_local i32 @kfree(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
