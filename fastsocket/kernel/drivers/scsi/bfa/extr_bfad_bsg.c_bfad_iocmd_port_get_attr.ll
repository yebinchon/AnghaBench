; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/bfa/extr_bfad_bsg.c_bfad_iocmd_port_get_attr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/bfa/extr_bfad_bsg.c_bfad_iocmd_port_get_attr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfad_s = type { i32, %struct.TYPE_8__, i32 }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.bfa_bsg_port_attr_s = type { i32, %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i64, %struct.TYPE_9__, i32, i32, i32, i64 }
%struct.TYPE_9__ = type { i32 }
%struct.bfa_lport_attr_s = type { %struct.TYPE_11__, i32, i32, i32, i64 }
%struct.TYPE_11__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32 }

@BFA_PORT_TOPOLOGY_NONE = common dso_local global i64 0, align 8
@BFA_STATUS_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bfad_s*, i8*)* @bfad_iocmd_port_get_attr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bfad_iocmd_port_get_attr(%struct.bfad_s* %0, i8* %1) #0 {
  %3 = alloca %struct.bfad_s*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.bfa_bsg_port_attr_s*, align 8
  %6 = alloca %struct.bfa_lport_attr_s, align 8
  %7 = alloca i64, align 8
  store %struct.bfad_s* %0, %struct.bfad_s** %3, align 8
  store i8* %1, i8** %4, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = bitcast i8* %8 to %struct.bfa_bsg_port_attr_s*
  store %struct.bfa_bsg_port_attr_s* %9, %struct.bfa_bsg_port_attr_s** %5, align 8
  %10 = load %struct.bfad_s*, %struct.bfad_s** %3, align 8
  %11 = getelementptr inbounds %struct.bfad_s, %struct.bfad_s* %10, i32 0, i32 0
  %12 = load i64, i64* %7, align 8
  %13 = call i32 @spin_lock_irqsave(i32* %11, i64 %12)
  %14 = load %struct.bfad_s*, %struct.bfad_s** %3, align 8
  %15 = getelementptr inbounds %struct.bfad_s, %struct.bfad_s* %14, i32 0, i32 2
  %16 = load %struct.bfa_bsg_port_attr_s*, %struct.bfa_bsg_port_attr_s** %5, align 8
  %17 = getelementptr inbounds %struct.bfa_bsg_port_attr_s, %struct.bfa_bsg_port_attr_s* %16, i32 0, i32 1
  %18 = call i32 @bfa_fcport_get_attr(i32* %15, %struct.TYPE_12__* %17)
  %19 = load %struct.bfad_s*, %struct.bfad_s** %3, align 8
  %20 = getelementptr inbounds %struct.bfad_s, %struct.bfad_s* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %21, i32 0, i32 0
  %23 = call i32 @bfa_fcs_lport_get_attr(i32* %22, %struct.bfa_lport_attr_s* %6)
  %24 = load %struct.bfad_s*, %struct.bfad_s** %3, align 8
  %25 = getelementptr inbounds %struct.bfad_s, %struct.bfad_s* %24, i32 0, i32 0
  %26 = load i64, i64* %7, align 8
  %27 = call i32 @spin_unlock_irqrestore(i32* %25, i64 %26)
  %28 = load %struct.bfa_bsg_port_attr_s*, %struct.bfa_bsg_port_attr_s** %5, align 8
  %29 = getelementptr inbounds %struct.bfa_bsg_port_attr_s, %struct.bfa_bsg_port_attr_s* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @BFA_PORT_TOPOLOGY_NONE, align 8
  %33 = icmp ne i64 %31, %32
  br i1 %33, label %34, label %40

34:                                               ; preds = %2
  %35 = getelementptr inbounds %struct.bfa_lport_attr_s, %struct.bfa_lport_attr_s* %6, i32 0, i32 4
  %36 = load i64, i64* %35, align 8
  %37 = load %struct.bfa_bsg_port_attr_s*, %struct.bfa_bsg_port_attr_s** %5, align 8
  %38 = getelementptr inbounds %struct.bfa_bsg_port_attr_s, %struct.bfa_bsg_port_attr_s* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %38, i32 0, i32 5
  store i64 %36, i64* %39, align 8
  br label %44

40:                                               ; preds = %2
  %41 = load %struct.bfa_bsg_port_attr_s*, %struct.bfa_bsg_port_attr_s** %5, align 8
  %42 = getelementptr inbounds %struct.bfa_bsg_port_attr_s, %struct.bfa_bsg_port_attr_s* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %42, i32 0, i32 5
  store i64 0, i64* %43, align 8
  br label %44

44:                                               ; preds = %40, %34
  %45 = getelementptr inbounds %struct.bfa_lport_attr_s, %struct.bfa_lport_attr_s* %6, i32 0, i32 3
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.bfa_bsg_port_attr_s*, %struct.bfa_bsg_port_attr_s** %5, align 8
  %48 = getelementptr inbounds %struct.bfa_bsg_port_attr_s, %struct.bfa_bsg_port_attr_s* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %48, i32 0, i32 4
  store i32 %46, i32* %49, align 4
  %50 = getelementptr inbounds %struct.bfa_lport_attr_s, %struct.bfa_lport_attr_s* %6, i32 0, i32 2
  %51 = load i32, i32* %50, align 8
  %52 = load %struct.bfa_bsg_port_attr_s*, %struct.bfa_bsg_port_attr_s** %5, align 8
  %53 = getelementptr inbounds %struct.bfa_bsg_port_attr_s, %struct.bfa_bsg_port_attr_s* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %53, i32 0, i32 3
  store i32 %51, i32* %54, align 8
  %55 = getelementptr inbounds %struct.bfa_lport_attr_s, %struct.bfa_lport_attr_s* %6, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.bfa_bsg_port_attr_s*, %struct.bfa_bsg_port_attr_s** %5, align 8
  %58 = getelementptr inbounds %struct.bfa_bsg_port_attr_s, %struct.bfa_bsg_port_attr_s* %57, i32 0, i32 1
  %59 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %58, i32 0, i32 2
  store i32 %56, i32* %59, align 4
  %60 = load %struct.bfa_bsg_port_attr_s*, %struct.bfa_bsg_port_attr_s** %5, align 8
  %61 = getelementptr inbounds %struct.bfa_bsg_port_attr_s, %struct.bfa_bsg_port_attr_s* %60, i32 0, i32 1
  %62 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %61, i32 0, i32 1
  %63 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = getelementptr inbounds %struct.bfa_lport_attr_s, %struct.bfa_lport_attr_s* %6, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = call i32 @strncpy(i32 %64, i32 %68, i32 4)
  %70 = load i32, i32* @BFA_STATUS_OK, align 4
  %71 = load %struct.bfa_bsg_port_attr_s*, %struct.bfa_bsg_port_attr_s** %5, align 8
  %72 = getelementptr inbounds %struct.bfa_bsg_port_attr_s, %struct.bfa_bsg_port_attr_s* %71, i32 0, i32 0
  store i32 %70, i32* %72, align 8
  ret i32 0
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @bfa_fcport_get_attr(i32*, %struct.TYPE_12__*) #1

declare dso_local i32 @bfa_fcs_lport_get_attr(i32*, %struct.bfa_lport_attr_s*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @strncpy(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
