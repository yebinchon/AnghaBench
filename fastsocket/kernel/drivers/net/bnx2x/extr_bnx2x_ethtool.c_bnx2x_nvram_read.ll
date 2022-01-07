; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bnx2x/extr_bnx2x_ethtool.c_bnx2x_nvram_read.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bnx2x/extr_bnx2x_ethtool.c_bnx2x_nvram_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2x = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@BNX2X_MSG_ETHTOOL = common dso_local global i32 0, align 4
@BNX2X_MSG_NVM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [47 x i8] c"Invalid parameter: offset 0x%x  buf_size 0x%x\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [72 x i8] c"Invalid parameter: offset (0x%x) + buf_size (0x%x) > flash_size (0x%x)\0A\00", align 1
@MCPR_NVM_COMMAND_FIRST = common dso_local global i32 0, align 4
@MCPR_NVM_COMMAND_LAST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bnx2x*, i32, i32*, i32)* @bnx2x_nvram_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bnx2x_nvram_read(%struct.bnx2x* %0, i32 %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.bnx2x*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.bnx2x* %0, %struct.bnx2x** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  %13 = load i32, i32* %7, align 4
  %14 = and i32 %13, 3
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %23, label %16

16:                                               ; preds = %4
  %17 = load i32, i32* %9, align 4
  %18 = and i32 %17, 3
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %23, label %20

20:                                               ; preds = %16
  %21 = load i32, i32* %9, align 4
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %32

23:                                               ; preds = %20, %16, %4
  %24 = load i32, i32* @BNX2X_MSG_ETHTOOL, align 4
  %25 = load i32, i32* @BNX2X_MSG_NVM, align 4
  %26 = or i32 %24, %25
  %27 = load i32, i32* %7, align 4
  %28 = load i32, i32* %9, align 4
  %29 = call i32 (i32, i8*, i32, i32, ...) @DP(i32 %26, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i32 %27, i32 %28)
  %30 = load i32, i32* @EINVAL, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %5, align 4
  br label %110

32:                                               ; preds = %20
  %33 = load i32, i32* %7, align 4
  %34 = load i32, i32* %9, align 4
  %35 = add nsw i32 %33, %34
  %36 = load %struct.bnx2x*, %struct.bnx2x** %6, align 8
  %37 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = icmp sgt i32 %35, %39
  br i1 %40, label %41, label %54

41:                                               ; preds = %32
  %42 = load i32, i32* @BNX2X_MSG_ETHTOOL, align 4
  %43 = load i32, i32* @BNX2X_MSG_NVM, align 4
  %44 = or i32 %42, %43
  %45 = load i32, i32* %7, align 4
  %46 = load i32, i32* %9, align 4
  %47 = load %struct.bnx2x*, %struct.bnx2x** %6, align 8
  %48 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = call i32 (i32, i8*, i32, i32, ...) @DP(i32 %44, i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.1, i64 0, i64 0), i32 %45, i32 %46, i32 %50)
  %52 = load i32, i32* @EINVAL, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %5, align 4
  br label %110

54:                                               ; preds = %32
  %55 = load %struct.bnx2x*, %struct.bnx2x** %6, align 8
  %56 = call i32 @bnx2x_acquire_nvram_lock(%struct.bnx2x* %55)
  store i32 %56, i32* %10, align 4
  %57 = load i32, i32* %10, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %61

59:                                               ; preds = %54
  %60 = load i32, i32* %10, align 4
  store i32 %60, i32* %5, align 4
  br label %110

61:                                               ; preds = %54
  %62 = load %struct.bnx2x*, %struct.bnx2x** %6, align 8
  %63 = call i32 @bnx2x_enable_nvram_access(%struct.bnx2x* %62)
  %64 = load i32, i32* @MCPR_NVM_COMMAND_FIRST, align 4
  store i32 %64, i32* %11, align 4
  br label %65

65:                                               ; preds = %74, %61
  %66 = load i32, i32* %9, align 4
  %67 = sext i32 %66 to i64
  %68 = icmp ugt i64 %67, 4
  br i1 %68, label %69, label %72

69:                                               ; preds = %65
  %70 = load i32, i32* %10, align 4
  %71 = icmp eq i32 %70, 0
  br label %72

72:                                               ; preds = %69, %65
  %73 = phi i1 [ false, %65 ], [ %71, %69 ]
  br i1 %73, label %74, label %91

74:                                               ; preds = %72
  %75 = load %struct.bnx2x*, %struct.bnx2x** %6, align 8
  %76 = load i32, i32* %7, align 4
  %77 = load i32, i32* %11, align 4
  %78 = call i32 @bnx2x_nvram_read_dword(%struct.bnx2x* %75, i32 %76, i32* %12, i32 %77)
  store i32 %78, i32* %10, align 4
  %79 = load i32*, i32** %8, align 8
  %80 = call i32 @memcpy(i32* %79, i32* %12, i32 4)
  %81 = load i32, i32* %7, align 4
  %82 = sext i32 %81 to i64
  %83 = add i64 %82, 4
  %84 = trunc i64 %83 to i32
  store i32 %84, i32* %7, align 4
  %85 = load i32*, i32** %8, align 8
  %86 = getelementptr inbounds i32, i32* %85, i64 4
  store i32* %86, i32** %8, align 8
  %87 = load i32, i32* %9, align 4
  %88 = sext i32 %87 to i64
  %89 = sub i64 %88, 4
  %90 = trunc i64 %89 to i32
  store i32 %90, i32* %9, align 4
  store i32 0, i32* %11, align 4
  br label %65

91:                                               ; preds = %72
  %92 = load i32, i32* %10, align 4
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %94, label %104

94:                                               ; preds = %91
  %95 = load i32, i32* @MCPR_NVM_COMMAND_LAST, align 4
  %96 = load i32, i32* %11, align 4
  %97 = or i32 %96, %95
  store i32 %97, i32* %11, align 4
  %98 = load %struct.bnx2x*, %struct.bnx2x** %6, align 8
  %99 = load i32, i32* %7, align 4
  %100 = load i32, i32* %11, align 4
  %101 = call i32 @bnx2x_nvram_read_dword(%struct.bnx2x* %98, i32 %99, i32* %12, i32 %100)
  store i32 %101, i32* %10, align 4
  %102 = load i32*, i32** %8, align 8
  %103 = call i32 @memcpy(i32* %102, i32* %12, i32 4)
  br label %104

104:                                              ; preds = %94, %91
  %105 = load %struct.bnx2x*, %struct.bnx2x** %6, align 8
  %106 = call i32 @bnx2x_disable_nvram_access(%struct.bnx2x* %105)
  %107 = load %struct.bnx2x*, %struct.bnx2x** %6, align 8
  %108 = call i32 @bnx2x_release_nvram_lock(%struct.bnx2x* %107)
  %109 = load i32, i32* %10, align 4
  store i32 %109, i32* %5, align 4
  br label %110

110:                                              ; preds = %104, %59, %41, %23
  %111 = load i32, i32* %5, align 4
  ret i32 %111
}

declare dso_local i32 @DP(i32, i8*, i32, i32, ...) #1

declare dso_local i32 @bnx2x_acquire_nvram_lock(%struct.bnx2x*) #1

declare dso_local i32 @bnx2x_enable_nvram_access(%struct.bnx2x*) #1

declare dso_local i32 @bnx2x_nvram_read_dword(%struct.bnx2x*, i32, i32*, i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @bnx2x_disable_nvram_access(%struct.bnx2x*) #1

declare dso_local i32 @bnx2x_release_nvram_lock(%struct.bnx2x*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
