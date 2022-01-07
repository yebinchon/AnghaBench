; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/bnx2fc/extr_bnx2fc_io.c_bnx2fc_expl_logo.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/bnx2fc/extr_bnx2fc_io.c_bnx2fc_expl_logo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fc_lport = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 (%struct.fc_rport_priv*)* }
%struct.fc_rport_priv = type { i32 }
%struct.bnx2fc_cmd = type { i32, i32, i32, %struct.bnx2fc_rport* }
%struct.bnx2fc_rport = type { i32, i32, %struct.fc_rport_priv* }

@SUCCESS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"Expl logo - tgt flags = 0x%lx\0A\00", align 1
@BNX2FC_FLAG_EXPL_LOGO = common dso_local global i32 0, align 4
@bnx2fc_cmd_release = common dso_local global i32 0, align 4
@BNX2FC_FLAG_SESSION_READY = common dso_local global i32 0, align 4
@BNX2FC_RELOGIN_WAIT_TIME = common dso_local global i32 0, align 4
@BNX2FC_RELOGIN_WAIT_CNT = common dso_local global i32 0, align 4
@FAILED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bnx2fc_expl_logo(%struct.fc_lport* %0, %struct.bnx2fc_cmd* %1) #0 {
  %3 = alloca %struct.fc_lport*, align 8
  %4 = alloca %struct.bnx2fc_cmd*, align 8
  %5 = alloca %struct.bnx2fc_rport*, align 8
  %6 = alloca %struct.fc_rport_priv*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.fc_lport* %0, %struct.fc_lport** %3, align 8
  store %struct.bnx2fc_cmd* %1, %struct.bnx2fc_cmd** %4, align 8
  %10 = load %struct.bnx2fc_cmd*, %struct.bnx2fc_cmd** %4, align 8
  %11 = getelementptr inbounds %struct.bnx2fc_cmd, %struct.bnx2fc_cmd* %10, i32 0, i32 3
  %12 = load %struct.bnx2fc_rport*, %struct.bnx2fc_rport** %11, align 8
  store %struct.bnx2fc_rport* %12, %struct.bnx2fc_rport** %5, align 8
  %13 = load %struct.bnx2fc_rport*, %struct.bnx2fc_rport** %5, align 8
  %14 = getelementptr inbounds %struct.bnx2fc_rport, %struct.bnx2fc_rport* %13, i32 0, i32 2
  %15 = load %struct.fc_rport_priv*, %struct.fc_rport_priv** %14, align 8
  store %struct.fc_rport_priv* %15, %struct.fc_rport_priv** %6, align 8
  %16 = load i32, i32* @SUCCESS, align 4
  store i32 %16, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %17 = load %struct.bnx2fc_cmd*, %struct.bnx2fc_cmd** %4, align 8
  %18 = load %struct.bnx2fc_rport*, %struct.bnx2fc_rport** %5, align 8
  %19 = getelementptr inbounds %struct.bnx2fc_rport, %struct.bnx2fc_rport* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @BNX2FC_IO_DBG(%struct.bnx2fc_cmd* %17, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %20)
  %22 = load i32, i32* @BNX2FC_FLAG_EXPL_LOGO, align 4
  %23 = load %struct.bnx2fc_rport*, %struct.bnx2fc_rport** %5, align 8
  %24 = getelementptr inbounds %struct.bnx2fc_rport, %struct.bnx2fc_rport* %23, i32 0, i32 1
  %25 = call i32 @test_and_set_bit(i32 %22, i32* %24)
  store i32 %25, i32* %7, align 4
  %26 = load %struct.bnx2fc_cmd*, %struct.bnx2fc_cmd** %4, align 8
  %27 = getelementptr inbounds %struct.bnx2fc_cmd, %struct.bnx2fc_cmd* %26, i32 0, i32 0
  store i32 1, i32* %27, align 8
  %28 = load %struct.bnx2fc_cmd*, %struct.bnx2fc_cmd** %4, align 8
  %29 = call i32 @bnx2fc_initiate_cleanup(%struct.bnx2fc_cmd* %28)
  %30 = load %struct.bnx2fc_rport*, %struct.bnx2fc_rport** %5, align 8
  %31 = getelementptr inbounds %struct.bnx2fc_rport, %struct.bnx2fc_rport* %30, i32 0, i32 0
  %32 = call i32 @spin_unlock_bh(i32* %31)
  %33 = load %struct.bnx2fc_cmd*, %struct.bnx2fc_cmd** %4, align 8
  %34 = getelementptr inbounds %struct.bnx2fc_cmd, %struct.bnx2fc_cmd* %33, i32 0, i32 2
  %35 = call i32 @wait_for_completion(i32* %34)
  %36 = load %struct.bnx2fc_cmd*, %struct.bnx2fc_cmd** %4, align 8
  %37 = getelementptr inbounds %struct.bnx2fc_cmd, %struct.bnx2fc_cmd* %36, i32 0, i32 0
  store i32 0, i32* %37, align 8
  %38 = load %struct.bnx2fc_cmd*, %struct.bnx2fc_cmd** %4, align 8
  %39 = getelementptr inbounds %struct.bnx2fc_cmd, %struct.bnx2fc_cmd* %38, i32 0, i32 1
  %40 = load i32, i32* @bnx2fc_cmd_release, align 4
  %41 = call i32 @kref_put(i32* %39, i32 %40)
  %42 = load i32, i32* %7, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %81, label %44

44:                                               ; preds = %2
  %45 = load i32, i32* @BNX2FC_FLAG_SESSION_READY, align 4
  %46 = load %struct.bnx2fc_rport*, %struct.bnx2fc_rport** %5, align 8
  %47 = getelementptr inbounds %struct.bnx2fc_rport, %struct.bnx2fc_rport* %46, i32 0, i32 1
  %48 = call i32 @clear_bit(i32 %45, i32* %47)
  %49 = load %struct.fc_lport*, %struct.fc_lport** %3, align 8
  %50 = getelementptr inbounds %struct.fc_lport, %struct.fc_lport* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 0
  %52 = call i32 @mutex_lock(i32* %51)
  %53 = load %struct.fc_lport*, %struct.fc_lport** %3, align 8
  %54 = getelementptr inbounds %struct.fc_lport, %struct.fc_lport* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 0
  %56 = load i32 (%struct.fc_rport_priv*)*, i32 (%struct.fc_rport_priv*)** %55, align 8
  %57 = load %struct.fc_rport_priv*, %struct.fc_rport_priv** %6, align 8
  %58 = call i32 %56(%struct.fc_rport_priv* %57)
  %59 = load %struct.fc_lport*, %struct.fc_lport** %3, align 8
  %60 = getelementptr inbounds %struct.fc_lport, %struct.fc_lport* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 0
  %62 = call i32 @mutex_unlock(i32* %61)
  br label %63

63:                                               ; preds = %73, %44
  %64 = load i32, i32* @BNX2FC_RELOGIN_WAIT_TIME, align 4
  %65 = call i32 @msleep(i32 %64)
  %66 = load i32, i32* %9, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %9, align 4
  %68 = load i32, i32* @BNX2FC_RELOGIN_WAIT_CNT, align 4
  %69 = icmp sgt i32 %66, %68
  br i1 %69, label %70, label %72

70:                                               ; preds = %63
  %71 = load i32, i32* @FAILED, align 4
  store i32 %71, i32* %8, align 4
  br label %80

72:                                               ; preds = %63
  br label %73

73:                                               ; preds = %72
  %74 = load i32, i32* @BNX2FC_FLAG_SESSION_READY, align 4
  %75 = load %struct.bnx2fc_rport*, %struct.bnx2fc_rport** %5, align 8
  %76 = getelementptr inbounds %struct.bnx2fc_rport, %struct.bnx2fc_rport* %75, i32 0, i32 1
  %77 = call i32 @test_bit(i32 %74, i32* %76)
  %78 = icmp ne i32 %77, 0
  %79 = xor i1 %78, true
  br i1 %79, label %63, label %80

80:                                               ; preds = %73, %70
  br label %81

81:                                               ; preds = %80, %2
  %82 = load %struct.bnx2fc_rport*, %struct.bnx2fc_rport** %5, align 8
  %83 = getelementptr inbounds %struct.bnx2fc_rport, %struct.bnx2fc_rport* %82, i32 0, i32 0
  %84 = call i32 @spin_lock_bh(i32* %83)
  %85 = load i32, i32* %8, align 4
  ret i32 %85
}

declare dso_local i32 @BNX2FC_IO_DBG(%struct.bnx2fc_cmd*, i8*, i32) #1

declare dso_local i32 @test_and_set_bit(i32, i32*) #1

declare dso_local i32 @bnx2fc_initiate_cleanup(%struct.bnx2fc_cmd*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @wait_for_completion(i32*) #1

declare dso_local i32 @kref_put(i32*, i32) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
