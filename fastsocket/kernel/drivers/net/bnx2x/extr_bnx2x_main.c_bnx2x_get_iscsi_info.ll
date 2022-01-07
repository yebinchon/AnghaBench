; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bnx2x/extr_bnx2x_main.c_bnx2x_get_iscsi_info.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bnx2x/extr_bnx2x_main.c_bnx2x_get_iscsi_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.bnx2x = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@NO_ISCSI_FLAG = common dso_local global i32 0, align 4
@FW_ENCODE_32BIT_PATTERN = common dso_local global i32 0, align 4
@drv_lic_key = common dso_local global %struct.TYPE_4__* null, align 8
@BNX2X_MAX_ISCSI_INIT_CONN_MASK = common dso_local global i32 0, align 4
@BNX2X_MAX_ISCSI_INIT_CONN_SHIFT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"max_iscsi_conn 0x%x\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bnx2x_get_iscsi_info(%struct.bnx2x* %0) #0 {
  %2 = alloca %struct.bnx2x*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.bnx2x* %0, %struct.bnx2x** %2, align 8
  %6 = load i32, i32* @NO_ISCSI_FLAG, align 4
  store i32 %6, i32* %3, align 4
  %7 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %8 = call i32 @BP_PORT(%struct.bnx2x* %7)
  store i32 %8, i32* %4, align 4
  %9 = load i32, i32* @FW_ENCODE_32BIT_PATTERN, align 4
  %10 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** @drv_lic_key, align 8
  %12 = load i32, i32* %4, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i64 %13
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @SHMEM_RD(%struct.bnx2x* %10, i32 %16)
  %18 = xor i32 %9, %17
  store i32 %18, i32* %5, align 4
  %19 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %20 = call i32 @CNIC_SUPPORT(%struct.bnx2x* %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %28, label %22

22:                                               ; preds = %1
  %23 = load i32, i32* %3, align 4
  %24 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %25 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = or i32 %26, %23
  store i32 %27, i32* %25, align 4
  br label %53

28:                                               ; preds = %1
  %29 = load i32, i32* %5, align 4
  %30 = load i32, i32* @BNX2X_MAX_ISCSI_INIT_CONN_MASK, align 4
  %31 = and i32 %29, %30
  %32 = load i32, i32* @BNX2X_MAX_ISCSI_INIT_CONN_SHIFT, align 4
  %33 = ashr i32 %31, %32
  %34 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %35 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 0
  store i32 %33, i32* %36, align 4
  %37 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %38 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @BNX2X_DEV_INFO(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %40)
  %42 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %43 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %53, label %47

47:                                               ; preds = %28
  %48 = load i32, i32* %3, align 4
  %49 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %50 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = or i32 %51, %48
  store i32 %52, i32* %50, align 4
  br label %53

53:                                               ; preds = %22, %47, %28
  ret void
}

declare dso_local i32 @BP_PORT(%struct.bnx2x*) #1

declare dso_local i32 @SHMEM_RD(%struct.bnx2x*, i32) #1

declare dso_local i32 @CNIC_SUPPORT(%struct.bnx2x*) #1

declare dso_local i32 @BNX2X_DEV_INFO(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
