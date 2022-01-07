; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/sfc/extr_mcdi.c_efx_mcdi_read_assertion.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/sfc/extr_mcdi.c_efx_mcdi_read_assertion.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.efx_nic = type { i32 }

@MC_CMD_GET_ASSERTS_IN_LEN = common dso_local global i32 0, align 4
@MC_CMD_GET_ASSERTS_OUT_LEN = common dso_local global i32 0, align 4
@GET_ASSERTS_IN_CLEAR = common dso_local global i32 0, align 4
@MC_CMD_GET_ASSERTS = common dso_local global i32 0, align 4
@EINTR = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@GET_ASSERTS_OUT_GLOBAL_FLAGS = common dso_local global i32 0, align 4
@MC_CMD_GET_ASSERTS_FLAGS_NO_FAILS = common dso_local global i32 0, align 4
@MC_CMD_GET_ASSERTS_FLAGS_SYS_FAIL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"system-level assertion\00", align 1
@MC_CMD_GET_ASSERTS_FLAGS_THR_FAIL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"thread-level assertion\00", align 1
@MC_CMD_GET_ASSERTS_FLAGS_WDOG_FIRED = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [15 x i8] c"watchdog reset\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"unknown assertion\00", align 1
@hw = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [41 x i8] c"MCPU %s at PC = 0x%.8x in thread 0x%.8x\0A\00", align 1
@GET_ASSERTS_OUT_SAVED_PC_OFFS = common dso_local global i32 0, align 4
@GET_ASSERTS_OUT_THREAD_OFFS = common dso_local global i32 0, align 4
@MC_CMD_GET_ASSERTS_OUT_GP_REGS_OFFS_OFST = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [19 x i8] c"R%.2d (?): 0x%.8x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.efx_nic*)* @efx_mcdi_read_assertion to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @efx_mcdi_read_assertion(%struct.efx_nic* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.efx_nic*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.efx_nic* %0, %struct.efx_nic** %3, align 8
  %15 = load i32, i32* @MC_CMD_GET_ASSERTS_IN_LEN, align 4
  %16 = zext i32 %15 to i64
  %17 = call i8* @llvm.stacksave()
  store i8* %17, i8** %4, align 8
  %18 = alloca i32, i64 %16, align 16
  store i64 %16, i64* %5, align 8
  %19 = load i32, i32* @MC_CMD_GET_ASSERTS_OUT_LEN, align 4
  %20 = zext i32 %19 to i64
  %21 = alloca i32, i64 %20, align 16
  store i64 %20, i64* %6, align 8
  store i32 2, i32* %12, align 4
  br label %22

22:                                               ; preds = %45, %1
  %23 = load i32, i32* @GET_ASSERTS_IN_CLEAR, align 4
  %24 = call i32 @MCDI_SET_DWORD(i32* %18, i32 %23, i32 1)
  %25 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %26 = load i32, i32* @MC_CMD_GET_ASSERTS, align 4
  %27 = load i32, i32* @MC_CMD_GET_ASSERTS_IN_LEN, align 4
  %28 = mul nuw i64 4, %20
  %29 = trunc i64 %28 to i32
  %30 = call i32 @efx_mcdi_rpc(%struct.efx_nic* %25, i32 %26, i32* %18, i32 %27, i32* %21, i32 %29, i64* %11)
  store i32 %30, i32* %13, align 4
  br label %31

31:                                               ; preds = %22
  %32 = load i32, i32* %13, align 4
  %33 = load i32, i32* @EINTR, align 4
  %34 = sub nsw i32 0, %33
  %35 = icmp eq i32 %32, %34
  br i1 %35, label %41, label %36

36:                                               ; preds = %31
  %37 = load i32, i32* %13, align 4
  %38 = load i32, i32* @EIO, align 4
  %39 = sub nsw i32 0, %38
  %40 = icmp eq i32 %37, %39
  br i1 %40, label %41, label %45

41:                                               ; preds = %36, %31
  %42 = load i32, i32* %12, align 4
  %43 = add nsw i32 %42, -1
  store i32 %43, i32* %12, align 4
  %44 = icmp sgt i32 %42, 0
  br label %45

45:                                               ; preds = %41, %36
  %46 = phi i1 [ false, %36 ], [ %44, %41 ]
  br i1 %46, label %22, label %47

47:                                               ; preds = %45
  %48 = load i32, i32* %13, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %47
  %51 = load i32, i32* %13, align 4
  store i32 %51, i32* %2, align 4
  store i32 1, i32* %14, align 4
  br label %120

52:                                               ; preds = %47
  %53 = load i64, i64* %11, align 8
  %54 = load i32, i32* @MC_CMD_GET_ASSERTS_OUT_LEN, align 4
  %55 = sext i32 %54 to i64
  %56 = icmp ult i64 %53, %55
  br i1 %56, label %57, label %60

57:                                               ; preds = %52
  %58 = load i32, i32* @EIO, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %2, align 4
  store i32 1, i32* %14, align 4
  br label %120

60:                                               ; preds = %52
  %61 = load i32, i32* @GET_ASSERTS_OUT_GLOBAL_FLAGS, align 4
  %62 = call i32 @MCDI_DWORD(i32* %21, i32 %61)
  store i32 %62, i32* %7, align 4
  %63 = load i32, i32* %7, align 4
  %64 = load i32, i32* @MC_CMD_GET_ASSERTS_FLAGS_NO_FAILS, align 4
  %65 = icmp eq i32 %63, %64
  br i1 %65, label %66, label %67

66:                                               ; preds = %60
  store i32 0, i32* %2, align 4
  store i32 1, i32* %14, align 4
  br label %120

67:                                               ; preds = %60
  %68 = load i32, i32* %7, align 4
  %69 = load i32, i32* @MC_CMD_GET_ASSERTS_FLAGS_SYS_FAIL, align 4
  %70 = icmp eq i32 %68, %69
  br i1 %70, label %71, label %72

71:                                               ; preds = %67
  br label %85

72:                                               ; preds = %67
  %73 = load i32, i32* %7, align 4
  %74 = load i32, i32* @MC_CMD_GET_ASSERTS_FLAGS_THR_FAIL, align 4
  %75 = icmp eq i32 %73, %74
  br i1 %75, label %76, label %77

76:                                               ; preds = %72
  br label %83

77:                                               ; preds = %72
  %78 = load i32, i32* %7, align 4
  %79 = load i32, i32* @MC_CMD_GET_ASSERTS_FLAGS_WDOG_FIRED, align 4
  %80 = icmp eq i32 %78, %79
  %81 = zext i1 %80 to i64
  %82 = select i1 %80, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0)
  br label %83

83:                                               ; preds = %77, %76
  %84 = phi i8* [ getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), %76 ], [ %82, %77 ]
  br label %85

85:                                               ; preds = %83, %71
  %86 = phi i8* [ getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), %71 ], [ %84, %83 ]
  store i8* %86, i8** %10, align 8
  %87 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %88 = load i32, i32* @hw, align 4
  %89 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %90 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = load i8*, i8** %10, align 8
  %93 = load i32, i32* @GET_ASSERTS_OUT_SAVED_PC_OFFS, align 4
  %94 = call i32 @MCDI_DWORD(i32* %21, i32 %93)
  %95 = load i32, i32* @GET_ASSERTS_OUT_THREAD_OFFS, align 4
  %96 = call i32 @MCDI_DWORD(i32* %21, i32 %95)
  %97 = call i32 (%struct.efx_nic*, i32, i32, i8*, ...) @netif_err(%struct.efx_nic* %87, i32 %88, i32 %91, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.4, i64 0, i64 0), i8* %92, i32 %94, i32 %96)
  %98 = load i32, i32* @MC_CMD_GET_ASSERTS_OUT_GP_REGS_OFFS_OFST, align 4
  store i32 %98, i32* %9, align 4
  store i32 1, i32* %8, align 4
  br label %99

99:                                               ; preds = %116, %85
  %100 = load i32, i32* %8, align 4
  %101 = icmp ult i32 %100, 32
  br i1 %101, label %102, label %119

102:                                              ; preds = %99
  %103 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %104 = load i32, i32* @hw, align 4
  %105 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %106 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = load i32, i32* %8, align 4
  %109 = load i32, i32* %9, align 4
  %110 = call i32 @MCDI_DWORD2(i32* %21, i32 %109)
  %111 = call i32 (%struct.efx_nic*, i32, i32, i8*, ...) @netif_err(%struct.efx_nic* %103, i32 %104, i32 %107, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.5, i64 0, i64 0), i32 %108, i32 %110)
  %112 = load i32, i32* %9, align 4
  %113 = zext i32 %112 to i64
  %114 = add i64 %113, 4
  %115 = trunc i64 %114 to i32
  store i32 %115, i32* %9, align 4
  br label %116

116:                                              ; preds = %102
  %117 = load i32, i32* %8, align 4
  %118 = add i32 %117, 1
  store i32 %118, i32* %8, align 4
  br label %99

119:                                              ; preds = %99
  store i32 0, i32* %2, align 4
  store i32 1, i32* %14, align 4
  br label %120

120:                                              ; preds = %119, %66, %57, %50
  %121 = load i8*, i8** %4, align 8
  call void @llvm.stackrestore(i8* %121)
  %122 = load i32, i32* %2, align 4
  ret i32 %122
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @MCDI_SET_DWORD(i32*, i32, i32) #2

declare dso_local i32 @efx_mcdi_rpc(%struct.efx_nic*, i32, i32*, i32, i32*, i32, i64*) #2

declare dso_local i32 @MCDI_DWORD(i32*, i32) #2

declare dso_local i32 @netif_err(%struct.efx_nic*, i32, i32, i8*, ...) #2

declare dso_local i32 @MCDI_DWORD2(i32*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
