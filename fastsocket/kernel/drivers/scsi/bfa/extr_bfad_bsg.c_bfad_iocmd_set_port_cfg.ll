; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/bfa/extr_bfad_bsg.c_bfad_iocmd_set_port_cfg.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/bfa/extr_bfad_bsg.c_bfad_iocmd_set_port_cfg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfad_s = type { i32, i32 }
%struct.bfa_bsg_port_cfg_s = type { i32, i32 }

@IOCMD_PORT_CFG_TOPO = common dso_local global i32 0, align 4
@IOCMD_PORT_CFG_SPEED = common dso_local global i32 0, align 4
@IOCMD_PORT_CFG_ALPA = common dso_local global i32 0, align 4
@IOCMD_PORT_CLR_ALPA = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bfad_iocmd_set_port_cfg(%struct.bfad_s* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.bfad_s*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.bfa_bsg_port_cfg_s*, align 8
  %8 = alloca i64, align 8
  store %struct.bfad_s* %0, %struct.bfad_s** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load i8*, i8** %5, align 8
  %10 = bitcast i8* %9 to %struct.bfa_bsg_port_cfg_s*
  store %struct.bfa_bsg_port_cfg_s* %10, %struct.bfa_bsg_port_cfg_s** %7, align 8
  %11 = load %struct.bfad_s*, %struct.bfad_s** %4, align 8
  %12 = getelementptr inbounds %struct.bfad_s, %struct.bfad_s* %11, i32 0, i32 0
  %13 = load i64, i64* %8, align 8
  %14 = call i32 @spin_lock_irqsave(i32* %12, i64 %13)
  %15 = load i32, i32* %6, align 4
  %16 = load i32, i32* @IOCMD_PORT_CFG_TOPO, align 4
  %17 = icmp eq i32 %15, %16
  br i1 %17, label %18, label %27

18:                                               ; preds = %3
  %19 = load %struct.bfad_s*, %struct.bfad_s** %4, align 8
  %20 = getelementptr inbounds %struct.bfad_s, %struct.bfad_s* %19, i32 0, i32 1
  %21 = load %struct.bfa_bsg_port_cfg_s*, %struct.bfa_bsg_port_cfg_s** %7, align 8
  %22 = getelementptr inbounds %struct.bfa_bsg_port_cfg_s, %struct.bfa_bsg_port_cfg_s* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @bfa_fcport_cfg_topology(i32* %20, i32 %23)
  %25 = load %struct.bfa_bsg_port_cfg_s*, %struct.bfa_bsg_port_cfg_s** %7, align 8
  %26 = getelementptr inbounds %struct.bfa_bsg_port_cfg_s, %struct.bfa_bsg_port_cfg_s* %25, i32 0, i32 0
  store i32 %24, i32* %26, align 4
  br label %66

27:                                               ; preds = %3
  %28 = load i32, i32* %6, align 4
  %29 = load i32, i32* @IOCMD_PORT_CFG_SPEED, align 4
  %30 = icmp eq i32 %28, %29
  br i1 %30, label %31, label %40

31:                                               ; preds = %27
  %32 = load %struct.bfad_s*, %struct.bfad_s** %4, align 8
  %33 = getelementptr inbounds %struct.bfad_s, %struct.bfad_s* %32, i32 0, i32 1
  %34 = load %struct.bfa_bsg_port_cfg_s*, %struct.bfa_bsg_port_cfg_s** %7, align 8
  %35 = getelementptr inbounds %struct.bfa_bsg_port_cfg_s, %struct.bfa_bsg_port_cfg_s* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @bfa_fcport_cfg_speed(i32* %33, i32 %36)
  %38 = load %struct.bfa_bsg_port_cfg_s*, %struct.bfa_bsg_port_cfg_s** %7, align 8
  %39 = getelementptr inbounds %struct.bfa_bsg_port_cfg_s, %struct.bfa_bsg_port_cfg_s* %38, i32 0, i32 0
  store i32 %37, i32* %39, align 4
  br label %65

40:                                               ; preds = %27
  %41 = load i32, i32* %6, align 4
  %42 = load i32, i32* @IOCMD_PORT_CFG_ALPA, align 4
  %43 = icmp eq i32 %41, %42
  br i1 %43, label %44, label %53

44:                                               ; preds = %40
  %45 = load %struct.bfad_s*, %struct.bfad_s** %4, align 8
  %46 = getelementptr inbounds %struct.bfad_s, %struct.bfad_s* %45, i32 0, i32 1
  %47 = load %struct.bfa_bsg_port_cfg_s*, %struct.bfa_bsg_port_cfg_s** %7, align 8
  %48 = getelementptr inbounds %struct.bfa_bsg_port_cfg_s, %struct.bfa_bsg_port_cfg_s* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @bfa_fcport_cfg_hardalpa(i32* %46, i32 %49)
  %51 = load %struct.bfa_bsg_port_cfg_s*, %struct.bfa_bsg_port_cfg_s** %7, align 8
  %52 = getelementptr inbounds %struct.bfa_bsg_port_cfg_s, %struct.bfa_bsg_port_cfg_s* %51, i32 0, i32 0
  store i32 %50, i32* %52, align 4
  br label %64

53:                                               ; preds = %40
  %54 = load i32, i32* %6, align 4
  %55 = load i32, i32* @IOCMD_PORT_CLR_ALPA, align 4
  %56 = icmp eq i32 %54, %55
  br i1 %56, label %57, label %63

57:                                               ; preds = %53
  %58 = load %struct.bfad_s*, %struct.bfad_s** %4, align 8
  %59 = getelementptr inbounds %struct.bfad_s, %struct.bfad_s* %58, i32 0, i32 1
  %60 = call i32 @bfa_fcport_clr_hardalpa(i32* %59)
  %61 = load %struct.bfa_bsg_port_cfg_s*, %struct.bfa_bsg_port_cfg_s** %7, align 8
  %62 = getelementptr inbounds %struct.bfa_bsg_port_cfg_s, %struct.bfa_bsg_port_cfg_s* %61, i32 0, i32 0
  store i32 %60, i32* %62, align 4
  br label %63

63:                                               ; preds = %57, %53
  br label %64

64:                                               ; preds = %63, %44
  br label %65

65:                                               ; preds = %64, %31
  br label %66

66:                                               ; preds = %65, %18
  %67 = load %struct.bfad_s*, %struct.bfad_s** %4, align 8
  %68 = getelementptr inbounds %struct.bfad_s, %struct.bfad_s* %67, i32 0, i32 0
  %69 = load i64, i64* %8, align 8
  %70 = call i32 @spin_unlock_irqrestore(i32* %68, i64 %69)
  ret i32 0
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @bfa_fcport_cfg_topology(i32*, i32) #1

declare dso_local i32 @bfa_fcport_cfg_speed(i32*, i32) #1

declare dso_local i32 @bfa_fcport_cfg_hardalpa(i32*, i32) #1

declare dso_local i32 @bfa_fcport_clr_hardalpa(i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
