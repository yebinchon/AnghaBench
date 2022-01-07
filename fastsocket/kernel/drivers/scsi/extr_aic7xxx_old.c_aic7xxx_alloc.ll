; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_aic7xxx_old.c_aic7xxx_alloc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_aic7xxx_old.c_aic7xxx_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_host_template = type { i32 }
%struct.aic7xxx_host = type { i32, i32, %struct.TYPE_2__*, %struct.Scsi_Host* }
%struct.TYPE_2__ = type { i32 }
%struct.Scsi_Host = type { i32, i64 }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@MAXREG = common dso_local global i64 0, align 8
@MINREG = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.aic7xxx_host* (%struct.scsi_host_template*, %struct.aic7xxx_host*)* @aic7xxx_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.aic7xxx_host* @aic7xxx_alloc(%struct.scsi_host_template* %0, %struct.aic7xxx_host* %1) #0 {
  %3 = alloca %struct.aic7xxx_host*, align 8
  %4 = alloca %struct.scsi_host_template*, align 8
  %5 = alloca %struct.aic7xxx_host*, align 8
  %6 = alloca %struct.aic7xxx_host*, align 8
  %7 = alloca %struct.Scsi_Host*, align 8
  store %struct.scsi_host_template* %0, %struct.scsi_host_template** %4, align 8
  store %struct.aic7xxx_host* %1, %struct.aic7xxx_host** %5, align 8
  store %struct.aic7xxx_host* null, %struct.aic7xxx_host** %6, align 8
  %8 = load %struct.scsi_host_template*, %struct.scsi_host_template** %4, align 8
  %9 = call %struct.Scsi_Host* @scsi_register(%struct.scsi_host_template* %8, i32 24)
  store %struct.Scsi_Host* %9, %struct.Scsi_Host** %7, align 8
  %10 = load %struct.Scsi_Host*, %struct.Scsi_Host** %7, align 8
  %11 = icmp ne %struct.Scsi_Host* %10, null
  br i1 %11, label %12, label %56

12:                                               ; preds = %2
  %13 = load %struct.Scsi_Host*, %struct.Scsi_Host** %7, align 8
  %14 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = inttoptr i64 %15 to %struct.aic7xxx_host*
  store %struct.aic7xxx_host* %16, %struct.aic7xxx_host** %6, align 8
  %17 = load %struct.aic7xxx_host*, %struct.aic7xxx_host** %6, align 8
  %18 = call i32 @memset(%struct.aic7xxx_host* %17, i32 0, i32 24)
  %19 = load %struct.aic7xxx_host*, %struct.aic7xxx_host** %6, align 8
  %20 = load %struct.aic7xxx_host*, %struct.aic7xxx_host** %5, align 8
  %21 = bitcast %struct.aic7xxx_host* %19 to i8*
  %22 = bitcast %struct.aic7xxx_host* %20 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %21, i8* align 8 %22, i64 24, i1 false)
  %23 = load %struct.Scsi_Host*, %struct.Scsi_Host** %7, align 8
  %24 = load %struct.aic7xxx_host*, %struct.aic7xxx_host** %6, align 8
  %25 = getelementptr inbounds %struct.aic7xxx_host, %struct.aic7xxx_host* %24, i32 0, i32 3
  store %struct.Scsi_Host* %23, %struct.Scsi_Host** %25, align 8
  %26 = load i32, i32* @GFP_ATOMIC, align 4
  %27 = call %struct.TYPE_2__* @kzalloc(i32 4, i32 %26)
  %28 = load %struct.aic7xxx_host*, %struct.aic7xxx_host** %6, align 8
  %29 = getelementptr inbounds %struct.aic7xxx_host, %struct.aic7xxx_host* %28, i32 0, i32 2
  store %struct.TYPE_2__* %27, %struct.TYPE_2__** %29, align 8
  %30 = load %struct.aic7xxx_host*, %struct.aic7xxx_host** %6, align 8
  %31 = getelementptr inbounds %struct.aic7xxx_host, %struct.aic7xxx_host* %30, i32 0, i32 2
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = icmp ne %struct.TYPE_2__* %32, null
  br i1 %33, label %34, label %40

34:                                               ; preds = %12
  %35 = load %struct.aic7xxx_host*, %struct.aic7xxx_host** %6, align 8
  %36 = getelementptr inbounds %struct.aic7xxx_host, %struct.aic7xxx_host* %35, i32 0, i32 2
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = call i32 @scbq_init(i32* %38)
  br label %50

40:                                               ; preds = %12
  %41 = load %struct.aic7xxx_host*, %struct.aic7xxx_host** %6, align 8
  %42 = getelementptr inbounds %struct.aic7xxx_host, %struct.aic7xxx_host* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = load i64, i64* @MAXREG, align 8
  %45 = load i64, i64* @MINREG, align 8
  %46 = sub nsw i64 %44, %45
  %47 = call i32 @release_region(i32 %43, i64 %46)
  %48 = load %struct.Scsi_Host*, %struct.Scsi_Host** %7, align 8
  %49 = call i32 @scsi_unregister(%struct.Scsi_Host* %48)
  store %struct.aic7xxx_host* null, %struct.aic7xxx_host** %3, align 8
  br label %58

50:                                               ; preds = %34
  %51 = load %struct.Scsi_Host*, %struct.Scsi_Host** %7, align 8
  %52 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = load %struct.aic7xxx_host*, %struct.aic7xxx_host** %6, align 8
  %55 = getelementptr inbounds %struct.aic7xxx_host, %struct.aic7xxx_host* %54, i32 0, i32 0
  store i32 %53, i32* %55, align 8
  br label %56

56:                                               ; preds = %50, %2
  %57 = load %struct.aic7xxx_host*, %struct.aic7xxx_host** %6, align 8
  store %struct.aic7xxx_host* %57, %struct.aic7xxx_host** %3, align 8
  br label %58

58:                                               ; preds = %56, %40
  %59 = load %struct.aic7xxx_host*, %struct.aic7xxx_host** %3, align 8
  ret %struct.aic7xxx_host* %59
}

declare dso_local %struct.Scsi_Host* @scsi_register(%struct.scsi_host_template*, i32) #1

declare dso_local i32 @memset(%struct.aic7xxx_host*, i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local %struct.TYPE_2__* @kzalloc(i32, i32) #1

declare dso_local i32 @scbq_init(i32*) #1

declare dso_local i32 @release_region(i32, i64) #1

declare dso_local i32 @scsi_unregister(%struct.Scsi_Host*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
