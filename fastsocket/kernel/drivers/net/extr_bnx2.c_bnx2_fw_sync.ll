; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_bnx2.c_bnx2_fw_sync.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_bnx2.c_bnx2_fw_sync.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2 = type { i32 }

@BNX2_DRV_MB = common dso_local global i32 0, align 4
@BNX2_FW_ACK_TIME_OUT_MS = common dso_local global i32 0, align 4
@BNX2_FW_MB = common dso_local global i32 0, align 4
@BNX2_FW_MSG_ACK = common dso_local global i32 0, align 4
@BNX2_DRV_MSG_SEQ = common dso_local global i32 0, align 4
@BNX2_DRV_MSG_DATA = common dso_local global i32 0, align 4
@BNX2_DRV_MSG_DATA_WAIT0 = common dso_local global i32 0, align 4
@BNX2_DRV_MSG_CODE = common dso_local global i32 0, align 4
@BNX2_DRV_MSG_CODE_FW_TIMEOUT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"fw sync timeout, reset code = %x\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@BNX2_FW_MSG_STATUS_MASK = common dso_local global i32 0, align 4
@BNX2_FW_MSG_STATUS_OK = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bnx2*, i32, i32, i32)* @bnx2_fw_sync to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bnx2_fw_sync(%struct.bnx2* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.bnx2*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.bnx2* %0, %struct.bnx2** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %12 = load %struct.bnx2*, %struct.bnx2** %6, align 8
  %13 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = add nsw i32 %14, 1
  store i32 %15, i32* %13, align 4
  %16 = load %struct.bnx2*, %struct.bnx2** %6, align 8
  %17 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* %7, align 4
  %20 = or i32 %19, %18
  store i32 %20, i32* %7, align 4
  %21 = load %struct.bnx2*, %struct.bnx2** %6, align 8
  %22 = load i32, i32* @BNX2_DRV_MB, align 4
  %23 = load i32, i32* %7, align 4
  %24 = call i32 @bnx2_shmem_wr(%struct.bnx2* %21, i32 %22, i32 %23)
  %25 = load i32, i32* %8, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %28, label %27

27:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %98

28:                                               ; preds = %4
  store i32 0, i32* %10, align 4
  br label %29

29:                                               ; preds = %48, %28
  %30 = load i32, i32* %10, align 4
  %31 = load i32, i32* @BNX2_FW_ACK_TIME_OUT_MS, align 4
  %32 = sdiv i32 %31, 10
  %33 = icmp slt i32 %30, %32
  br i1 %33, label %34, label %51

34:                                               ; preds = %29
  %35 = call i32 @msleep(i32 10)
  %36 = load %struct.bnx2*, %struct.bnx2** %6, align 8
  %37 = load i32, i32* @BNX2_FW_MB, align 4
  %38 = call i32 @bnx2_shmem_rd(%struct.bnx2* %36, i32 %37)
  store i32 %38, i32* %11, align 4
  %39 = load i32, i32* %11, align 4
  %40 = load i32, i32* @BNX2_FW_MSG_ACK, align 4
  %41 = and i32 %39, %40
  %42 = load i32, i32* %7, align 4
  %43 = load i32, i32* @BNX2_DRV_MSG_SEQ, align 4
  %44 = and i32 %42, %43
  %45 = icmp eq i32 %41, %44
  br i1 %45, label %46, label %47

46:                                               ; preds = %34
  br label %51

47:                                               ; preds = %34
  br label %48

48:                                               ; preds = %47
  %49 = load i32, i32* %10, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %10, align 4
  br label %29

51:                                               ; preds = %46, %29
  %52 = load i32, i32* %7, align 4
  %53 = load i32, i32* @BNX2_DRV_MSG_DATA, align 4
  %54 = and i32 %52, %53
  %55 = load i32, i32* @BNX2_DRV_MSG_DATA_WAIT0, align 4
  %56 = icmp eq i32 %54, %55
  br i1 %56, label %57, label %58

57:                                               ; preds = %51
  store i32 0, i32* %5, align 4
  br label %98

58:                                               ; preds = %51
  %59 = load i32, i32* %11, align 4
  %60 = load i32, i32* @BNX2_FW_MSG_ACK, align 4
  %61 = and i32 %59, %60
  %62 = load i32, i32* %7, align 4
  %63 = load i32, i32* @BNX2_DRV_MSG_SEQ, align 4
  %64 = and i32 %62, %63
  %65 = icmp ne i32 %61, %64
  br i1 %65, label %66, label %88

66:                                               ; preds = %58
  %67 = load i32, i32* @BNX2_DRV_MSG_CODE, align 4
  %68 = xor i32 %67, -1
  %69 = load i32, i32* %7, align 4
  %70 = and i32 %69, %68
  store i32 %70, i32* %7, align 4
  %71 = load i32, i32* @BNX2_DRV_MSG_CODE_FW_TIMEOUT, align 4
  %72 = load i32, i32* %7, align 4
  %73 = or i32 %72, %71
  store i32 %73, i32* %7, align 4
  %74 = load %struct.bnx2*, %struct.bnx2** %6, align 8
  %75 = load i32, i32* @BNX2_DRV_MB, align 4
  %76 = load i32, i32* %7, align 4
  %77 = call i32 @bnx2_shmem_wr(%struct.bnx2* %74, i32 %75, i32 %76)
  %78 = load i32, i32* %9, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %85, label %80

80:                                               ; preds = %66
  %81 = load i32, i32* %7, align 4
  %82 = call i32 @pr_err(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %81)
  %83 = load %struct.bnx2*, %struct.bnx2** %6, align 8
  %84 = call i32 @bnx2_dump_mcp_state(%struct.bnx2* %83)
  br label %85

85:                                               ; preds = %80, %66
  %86 = load i32, i32* @EBUSY, align 4
  %87 = sub nsw i32 0, %86
  store i32 %87, i32* %5, align 4
  br label %98

88:                                               ; preds = %58
  %89 = load i32, i32* %11, align 4
  %90 = load i32, i32* @BNX2_FW_MSG_STATUS_MASK, align 4
  %91 = and i32 %89, %90
  %92 = load i32, i32* @BNX2_FW_MSG_STATUS_OK, align 4
  %93 = icmp ne i32 %91, %92
  br i1 %93, label %94, label %97

94:                                               ; preds = %88
  %95 = load i32, i32* @EIO, align 4
  %96 = sub nsw i32 0, %95
  store i32 %96, i32* %5, align 4
  br label %98

97:                                               ; preds = %88
  store i32 0, i32* %5, align 4
  br label %98

98:                                               ; preds = %97, %94, %85, %57, %27
  %99 = load i32, i32* %5, align 4
  ret i32 %99
}

declare dso_local i32 @bnx2_shmem_wr(%struct.bnx2*, i32, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @bnx2_shmem_rd(%struct.bnx2*, i32) #1

declare dso_local i32 @pr_err(i8*, i32) #1

declare dso_local i32 @bnx2_dump_mcp_state(%struct.bnx2*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
