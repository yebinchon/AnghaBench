; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/bfa/extr_bfa_svc.c_bfa_trunk_iocdisable.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/bfa/extr_bfa_svc.c_bfa_trunk_iocdisable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfa_s = type { i32 }
%struct.bfa_fcport_s = type { %struct.TYPE_8__, %struct.TYPE_5__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i64, %struct.TYPE_6__*, i8* }
%struct.TYPE_6__ = type { i64, i8*, i32, i32, i64 }
%struct.TYPE_5__ = type { i64 }

@BFA_TRUNK_ONLINE = common dso_local global i64 0, align 8
@BFA_PORT_LINKDOWN = common dso_local global i32 0, align 4
@BFA_TRUE = common dso_local global i32 0, align 4
@BFA_TRUNK_OFFLINE = common dso_local global i64 0, align 8
@BFA_PORT_SPEED_UNKNOWN = common dso_local global i8* null, align 8
@BFA_TRUNK_MAX_PORTS = common dso_local global i32 0, align 4
@BFA_TRUNK_LINK_FCTL_NORMAL = common dso_local global i32 0, align 4
@BFA_TRUNK_LINK_STATE_DN_LINKDN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bfa_s*)* @bfa_trunk_iocdisable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bfa_trunk_iocdisable(%struct.bfa_s* %0) #0 {
  %2 = alloca %struct.bfa_s*, align 8
  %3 = alloca %struct.bfa_fcport_s*, align 8
  %4 = alloca i32, align 4
  store %struct.bfa_s* %0, %struct.bfa_s** %2, align 8
  %5 = load %struct.bfa_s*, %struct.bfa_s** %2, align 8
  %6 = call %struct.bfa_fcport_s* @BFA_FCPORT_MOD(%struct.bfa_s* %5)
  store %struct.bfa_fcport_s* %6, %struct.bfa_fcport_s** %3, align 8
  store i32 0, i32* %4, align 4
  %7 = load %struct.bfa_fcport_s*, %struct.bfa_fcport_s** %3, align 8
  %8 = getelementptr inbounds %struct.bfa_fcport_s, %struct.bfa_fcport_s* %7, i32 0, i32 1
  %9 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %93

12:                                               ; preds = %1
  %13 = load %struct.bfa_fcport_s*, %struct.bfa_fcport_s** %3, align 8
  %14 = getelementptr inbounds %struct.bfa_fcport_s, %struct.bfa_fcport_s* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @BFA_TRUNK_ONLINE, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %25

20:                                               ; preds = %12
  %21 = load %struct.bfa_fcport_s*, %struct.bfa_fcport_s** %3, align 8
  %22 = load i32, i32* @BFA_PORT_LINKDOWN, align 4
  %23 = load i32, i32* @BFA_TRUE, align 4
  %24 = call i32 @bfa_fcport_scn(%struct.bfa_fcport_s* %21, i32 %22, i32 %23)
  br label %25

25:                                               ; preds = %20, %12
  %26 = load i64, i64* @BFA_TRUNK_OFFLINE, align 8
  %27 = load %struct.bfa_fcport_s*, %struct.bfa_fcport_s** %3, align 8
  %28 = getelementptr inbounds %struct.bfa_fcport_s, %struct.bfa_fcport_s* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i32 0, i32 0
  store i64 %26, i64* %30, align 8
  %31 = load i8*, i8** @BFA_PORT_SPEED_UNKNOWN, align 8
  %32 = load %struct.bfa_fcport_s*, %struct.bfa_fcport_s** %3, align 8
  %33 = getelementptr inbounds %struct.bfa_fcport_s, %struct.bfa_fcport_s* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i32 0, i32 2
  store i8* %31, i8** %35, align 8
  store i32 0, i32* %4, align 4
  br label %36

36:                                               ; preds = %89, %25
  %37 = load i32, i32* %4, align 4
  %38 = load i32, i32* @BFA_TRUNK_MAX_PORTS, align 4
  %39 = icmp slt i32 %37, %38
  br i1 %39, label %40, label %92

40:                                               ; preds = %36
  %41 = load %struct.bfa_fcport_s*, %struct.bfa_fcport_s** %3, align 8
  %42 = getelementptr inbounds %struct.bfa_fcport_s, %struct.bfa_fcport_s* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %43, i32 0, i32 1
  %45 = load %struct.TYPE_6__*, %struct.TYPE_6__** %44, align 8
  %46 = load i32, i32* %4, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i64 %47
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 4
  store i64 0, i64* %49, align 8
  %50 = load i32, i32* @BFA_TRUNK_LINK_FCTL_NORMAL, align 4
  %51 = load %struct.bfa_fcport_s*, %struct.bfa_fcport_s** %3, align 8
  %52 = getelementptr inbounds %struct.bfa_fcport_s, %struct.bfa_fcport_s* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %53, i32 0, i32 1
  %55 = load %struct.TYPE_6__*, %struct.TYPE_6__** %54, align 8
  %56 = load i32, i32* %4, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i64 %57
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 3
  store i32 %50, i32* %59, align 4
  %60 = load i32, i32* @BFA_TRUNK_LINK_STATE_DN_LINKDN, align 4
  %61 = load %struct.bfa_fcport_s*, %struct.bfa_fcport_s** %3, align 8
  %62 = getelementptr inbounds %struct.bfa_fcport_s, %struct.bfa_fcport_s* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %63, i32 0, i32 1
  %65 = load %struct.TYPE_6__*, %struct.TYPE_6__** %64, align 8
  %66 = load i32, i32* %4, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i64 %67
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i32 0, i32 2
  store i32 %60, i32* %69, align 8
  %70 = load i8*, i8** @BFA_PORT_SPEED_UNKNOWN, align 8
  %71 = load %struct.bfa_fcport_s*, %struct.bfa_fcport_s** %3, align 8
  %72 = getelementptr inbounds %struct.bfa_fcport_s, %struct.bfa_fcport_s* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %73, i32 0, i32 1
  %75 = load %struct.TYPE_6__*, %struct.TYPE_6__** %74, align 8
  %76 = load i32, i32* %4, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %75, i64 %77
  %79 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %78, i32 0, i32 1
  store i8* %70, i8** %79, align 8
  %80 = load %struct.bfa_fcport_s*, %struct.bfa_fcport_s** %3, align 8
  %81 = getelementptr inbounds %struct.bfa_fcport_s, %struct.bfa_fcport_s* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %82, i32 0, i32 1
  %84 = load %struct.TYPE_6__*, %struct.TYPE_6__** %83, align 8
  %85 = load i32, i32* %4, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %84, i64 %86
  %88 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %87, i32 0, i32 0
  store i64 0, i64* %88, align 8
  br label %89

89:                                               ; preds = %40
  %90 = load i32, i32* %4, align 4
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* %4, align 4
  br label %36

92:                                               ; preds = %36
  br label %93

93:                                               ; preds = %92, %1
  ret void
}

declare dso_local %struct.bfa_fcport_s* @BFA_FCPORT_MOD(%struct.bfa_s*) #1

declare dso_local i32 @bfa_fcport_scn(%struct.bfa_fcport_s*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
