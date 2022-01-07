; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/fcoe/extr_fcoe_ctlr.c_fcoe_ctlr_vn_add.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/fcoe/extr_fcoe_ctlr.c_fcoe_ctlr_vn_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fcoe_ctlr = type { i64, %struct.fc_lport* }
%struct.fc_lport = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_3__ = type { i32 (%struct.fc_rport_priv*)*, %struct.fc_rport_priv* (%struct.fc_lport*, i64)* }
%struct.fc_rport_priv = type { %struct.fc_rport_identifiers, i32, i32* }
%struct.fc_rport_identifiers = type { i64, i32, i32 }
%struct.fcoe_rport = type { i64, i64 }

@fcoe_ctlr_vn_rport_ops = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"vn_add rport %6.6x %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"old\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"new\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fcoe_ctlr*, %struct.fc_rport_priv*)* @fcoe_ctlr_vn_add to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fcoe_ctlr_vn_add(%struct.fcoe_ctlr* %0, %struct.fc_rport_priv* %1) #0 {
  %3 = alloca %struct.fcoe_ctlr*, align 8
  %4 = alloca %struct.fc_rport_priv*, align 8
  %5 = alloca %struct.fc_lport*, align 8
  %6 = alloca %struct.fc_rport_priv*, align 8
  %7 = alloca %struct.fc_rport_identifiers*, align 8
  %8 = alloca %struct.fcoe_rport*, align 8
  %9 = alloca i64, align 8
  store %struct.fcoe_ctlr* %0, %struct.fcoe_ctlr** %3, align 8
  store %struct.fc_rport_priv* %1, %struct.fc_rport_priv** %4, align 8
  %10 = load %struct.fcoe_ctlr*, %struct.fcoe_ctlr** %3, align 8
  %11 = getelementptr inbounds %struct.fcoe_ctlr, %struct.fcoe_ctlr* %10, i32 0, i32 1
  %12 = load %struct.fc_lport*, %struct.fc_lport** %11, align 8
  store %struct.fc_lport* %12, %struct.fc_lport** %5, align 8
  %13 = load %struct.fc_rport_priv*, %struct.fc_rport_priv** %4, align 8
  %14 = getelementptr inbounds %struct.fc_rport_priv, %struct.fc_rport_priv* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.fc_rport_identifiers, %struct.fc_rport_identifiers* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  store i64 %16, i64* %9, align 8
  %17 = load i64, i64* %9, align 8
  %18 = load %struct.fcoe_ctlr*, %struct.fcoe_ctlr** %3, align 8
  %19 = getelementptr inbounds %struct.fcoe_ctlr, %struct.fcoe_ctlr* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp eq i64 %17, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %2
  br label %122

23:                                               ; preds = %2
  %24 = load %struct.fc_lport*, %struct.fc_lport** %5, align 8
  %25 = getelementptr inbounds %struct.fc_lport, %struct.fc_lport* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = call i32 @mutex_lock(i32* %26)
  %28 = load %struct.fc_lport*, %struct.fc_lport** %5, align 8
  %29 = getelementptr inbounds %struct.fc_lport, %struct.fc_lport* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 1
  %31 = load %struct.fc_rport_priv* (%struct.fc_lport*, i64)*, %struct.fc_rport_priv* (%struct.fc_lport*, i64)** %30, align 8
  %32 = load %struct.fc_lport*, %struct.fc_lport** %5, align 8
  %33 = load i64, i64* %9, align 8
  %34 = call %struct.fc_rport_priv* %31(%struct.fc_lport* %32, i64 %33)
  store %struct.fc_rport_priv* %34, %struct.fc_rport_priv** %6, align 8
  %35 = load %struct.fc_rport_priv*, %struct.fc_rport_priv** %6, align 8
  %36 = icmp ne %struct.fc_rport_priv* %35, null
  br i1 %36, label %42, label %37

37:                                               ; preds = %23
  %38 = load %struct.fc_lport*, %struct.fc_lport** %5, align 8
  %39 = getelementptr inbounds %struct.fc_lport, %struct.fc_lport* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  %41 = call i32 @mutex_unlock(i32* %40)
  br label %122

42:                                               ; preds = %23
  %43 = load %struct.fc_rport_priv*, %struct.fc_rport_priv** %6, align 8
  %44 = getelementptr inbounds %struct.fc_rport_priv, %struct.fc_rport_priv* %43, i32 0, i32 2
  store i32* @fcoe_ctlr_vn_rport_ops, i32** %44, align 8
  %45 = load %struct.fc_lport*, %struct.fc_lport** %5, align 8
  %46 = getelementptr inbounds %struct.fc_lport, %struct.fc_lport* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.fc_rport_priv*, %struct.fc_rport_priv** %6, align 8
  %50 = getelementptr inbounds %struct.fc_rport_priv, %struct.fc_rport_priv* %49, i32 0, i32 1
  store i32 %48, i32* %50, align 8
  %51 = load %struct.fc_rport_priv*, %struct.fc_rport_priv** %6, align 8
  %52 = getelementptr inbounds %struct.fc_rport_priv, %struct.fc_rport_priv* %51, i32 0, i32 0
  store %struct.fc_rport_identifiers* %52, %struct.fc_rport_identifiers** %7, align 8
  %53 = load %struct.fc_rport_identifiers*, %struct.fc_rport_identifiers** %7, align 8
  %54 = getelementptr inbounds %struct.fc_rport_identifiers, %struct.fc_rport_identifiers* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 8
  %56 = icmp ne i32 %55, -1
  br i1 %56, label %57, label %66

57:                                               ; preds = %42
  %58 = load %struct.fc_rport_identifiers*, %struct.fc_rport_identifiers** %7, align 8
  %59 = getelementptr inbounds %struct.fc_rport_identifiers, %struct.fc_rport_identifiers* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 8
  %61 = load %struct.fc_rport_priv*, %struct.fc_rport_priv** %4, align 8
  %62 = getelementptr inbounds %struct.fc_rport_priv, %struct.fc_rport_priv* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.fc_rport_identifiers, %struct.fc_rport_identifiers* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 8
  %65 = icmp ne i32 %60, %64
  br i1 %65, label %80, label %66

66:                                               ; preds = %57, %42
  %67 = load %struct.fc_rport_identifiers*, %struct.fc_rport_identifiers** %7, align 8
  %68 = getelementptr inbounds %struct.fc_rport_identifiers, %struct.fc_rport_identifiers* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 4
  %70 = icmp ne i32 %69, -1
  br i1 %70, label %71, label %87

71:                                               ; preds = %66
  %72 = load %struct.fc_rport_identifiers*, %struct.fc_rport_identifiers** %7, align 8
  %73 = getelementptr inbounds %struct.fc_rport_identifiers, %struct.fc_rport_identifiers* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.fc_rport_priv*, %struct.fc_rport_priv** %4, align 8
  %76 = getelementptr inbounds %struct.fc_rport_priv, %struct.fc_rport_priv* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.fc_rport_identifiers, %struct.fc_rport_identifiers* %76, i32 0, i32 2
  %78 = load i32, i32* %77, align 4
  %79 = icmp ne i32 %74, %78
  br i1 %79, label %80, label %87

80:                                               ; preds = %71, %57
  %81 = load %struct.fc_lport*, %struct.fc_lport** %5, align 8
  %82 = getelementptr inbounds %struct.fc_lport, %struct.fc_lport* %81, i32 0, i32 1
  %83 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %82, i32 0, i32 0
  %84 = load i32 (%struct.fc_rport_priv*)*, i32 (%struct.fc_rport_priv*)** %83, align 8
  %85 = load %struct.fc_rport_priv*, %struct.fc_rport_priv** %6, align 8
  %86 = call i32 %84(%struct.fc_rport_priv* %85)
  br label %87

87:                                               ; preds = %80, %71, %66
  %88 = load %struct.fc_rport_priv*, %struct.fc_rport_priv** %4, align 8
  %89 = getelementptr inbounds %struct.fc_rport_priv, %struct.fc_rport_priv* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.fc_rport_identifiers, %struct.fc_rport_identifiers* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 8
  %92 = load %struct.fc_rport_identifiers*, %struct.fc_rport_identifiers** %7, align 8
  %93 = getelementptr inbounds %struct.fc_rport_identifiers, %struct.fc_rport_identifiers* %92, i32 0, i32 1
  store i32 %91, i32* %93, align 8
  %94 = load %struct.fc_rport_priv*, %struct.fc_rport_priv** %4, align 8
  %95 = getelementptr inbounds %struct.fc_rport_priv, %struct.fc_rport_priv* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.fc_rport_identifiers, %struct.fc_rport_identifiers* %95, i32 0, i32 2
  %97 = load i32, i32* %96, align 4
  %98 = load %struct.fc_rport_identifiers*, %struct.fc_rport_identifiers** %7, align 8
  %99 = getelementptr inbounds %struct.fc_rport_identifiers, %struct.fc_rport_identifiers* %98, i32 0, i32 2
  store i32 %97, i32* %99, align 4
  %100 = load %struct.fc_lport*, %struct.fc_lport** %5, align 8
  %101 = getelementptr inbounds %struct.fc_lport, %struct.fc_lport* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %101, i32 0, i32 0
  %103 = call i32 @mutex_unlock(i32* %102)
  %104 = load %struct.fc_rport_priv*, %struct.fc_rport_priv** %6, align 8
  %105 = call %struct.fcoe_rport* @fcoe_ctlr_rport(%struct.fc_rport_priv* %104)
  store %struct.fcoe_rport* %105, %struct.fcoe_rport** %8, align 8
  %106 = load %struct.fcoe_ctlr*, %struct.fcoe_ctlr** %3, align 8
  %107 = load i64, i64* %9, align 8
  %108 = load %struct.fcoe_rport*, %struct.fcoe_rport** %8, align 8
  %109 = getelementptr inbounds %struct.fcoe_rport, %struct.fcoe_rport* %108, i32 0, i32 1
  %110 = load i64, i64* %109, align 8
  %111 = icmp ne i64 %110, 0
  %112 = zext i1 %111 to i64
  %113 = select i1 %111, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0)
  %114 = call i32 @LIBFCOE_FIP_DBG(%struct.fcoe_ctlr* %106, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i64 %107, i8* %113)
  %115 = load %struct.fcoe_rport*, %struct.fcoe_rport** %8, align 8
  %116 = load %struct.fc_rport_priv*, %struct.fc_rport_priv** %4, align 8
  %117 = call %struct.fcoe_rport* @fcoe_ctlr_rport(%struct.fc_rport_priv* %116)
  %118 = bitcast %struct.fcoe_rport* %115 to i8*
  %119 = bitcast %struct.fcoe_rport* %117 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %118, i8* align 8 %119, i64 16, i1 false)
  %120 = load %struct.fcoe_rport*, %struct.fcoe_rport** %8, align 8
  %121 = getelementptr inbounds %struct.fcoe_rport, %struct.fcoe_rport* %120, i32 0, i32 0
  store i64 0, i64* %121, align 8
  br label %122

122:                                              ; preds = %87, %37, %22
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local %struct.fcoe_rport* @fcoe_ctlr_rport(%struct.fc_rport_priv*) #1

declare dso_local i32 @LIBFCOE_FIP_DBG(%struct.fcoe_ctlr*, i8*, i64, i8*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
