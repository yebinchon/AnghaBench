; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/bfa/extr_bfad_bsg.c_bfad_iocmd_vhba_query.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/bfa/extr_bfad_bsg.c_bfad_iocmd_vhba_query.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfad_s = type { i32, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.TYPE_8__*, %struct.TYPE_7__ }
%struct.TYPE_8__ = type { i64 }
%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32, i32 }
%struct.bfa_bsg_vhba_attr_s = type { i32, %struct.bfa_vhba_attr_s }
%struct.bfa_vhba_attr_s = type { i32, i32, i64, i32, i32 }

@BFA_STATUS_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bfad_iocmd_vhba_query(%struct.bfad_s* %0, i8* %1) #0 {
  %3 = alloca %struct.bfad_s*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.bfa_bsg_vhba_attr_s*, align 8
  %6 = alloca %struct.bfa_vhba_attr_s*, align 8
  %7 = alloca i64, align 8
  store %struct.bfad_s* %0, %struct.bfad_s** %3, align 8
  store i8* %1, i8** %4, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = bitcast i8* %8 to %struct.bfa_bsg_vhba_attr_s*
  store %struct.bfa_bsg_vhba_attr_s* %9, %struct.bfa_bsg_vhba_attr_s** %5, align 8
  %10 = load %struct.bfa_bsg_vhba_attr_s*, %struct.bfa_bsg_vhba_attr_s** %5, align 8
  %11 = getelementptr inbounds %struct.bfa_bsg_vhba_attr_s, %struct.bfa_bsg_vhba_attr_s* %10, i32 0, i32 1
  store %struct.bfa_vhba_attr_s* %11, %struct.bfa_vhba_attr_s** %6, align 8
  %12 = load %struct.bfad_s*, %struct.bfad_s** %3, align 8
  %13 = getelementptr inbounds %struct.bfad_s, %struct.bfad_s* %12, i32 0, i32 0
  %14 = load i64, i64* %7, align 8
  %15 = call i32 @spin_lock_irqsave(i32* %13, i64 %14)
  %16 = load %struct.bfad_s*, %struct.bfad_s** %3, align 8
  %17 = getelementptr inbounds %struct.bfad_s, %struct.bfad_s* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 0
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.bfa_vhba_attr_s*, %struct.bfa_vhba_attr_s** %6, align 8
  %24 = getelementptr inbounds %struct.bfa_vhba_attr_s, %struct.bfa_vhba_attr_s* %23, i32 0, i32 4
  store i32 %22, i32* %24, align 4
  %25 = load %struct.bfad_s*, %struct.bfad_s** %3, align 8
  %26 = getelementptr inbounds %struct.bfad_s, %struct.bfad_s* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 0
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.bfa_vhba_attr_s*, %struct.bfa_vhba_attr_s** %6, align 8
  %33 = getelementptr inbounds %struct.bfa_vhba_attr_s, %struct.bfa_vhba_attr_s* %32, i32 0, i32 3
  store i32 %31, i32* %33, align 8
  %34 = load %struct.bfad_s*, %struct.bfad_s** %3, align 8
  %35 = getelementptr inbounds %struct.bfad_s, %struct.bfad_s* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %35, i32 0, i32 0
  %37 = load %struct.TYPE_8__*, %struct.TYPE_8__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load %struct.bfa_vhba_attr_s*, %struct.bfa_vhba_attr_s** %6, align 8
  %41 = getelementptr inbounds %struct.bfa_vhba_attr_s, %struct.bfa_vhba_attr_s* %40, i32 0, i32 2
  store i64 %39, i64* %41, align 8
  %42 = load %struct.bfad_s*, %struct.bfad_s** %3, align 8
  %43 = getelementptr inbounds %struct.bfad_s, %struct.bfad_s* %42, i32 0, i32 1
  %44 = call i32 @bfa_fcpim_get_io_profile(%struct.TYPE_9__* %43)
  %45 = load %struct.bfa_vhba_attr_s*, %struct.bfa_vhba_attr_s** %6, align 8
  %46 = getelementptr inbounds %struct.bfa_vhba_attr_s, %struct.bfa_vhba_attr_s* %45, i32 0, i32 1
  store i32 %44, i32* %46, align 4
  %47 = load %struct.bfad_s*, %struct.bfad_s** %3, align 8
  %48 = getelementptr inbounds %struct.bfad_s, %struct.bfad_s* %47, i32 0, i32 1
  %49 = call i32 @bfa_fcpim_path_tov_get(%struct.TYPE_9__* %48)
  %50 = load %struct.bfa_vhba_attr_s*, %struct.bfa_vhba_attr_s** %6, align 8
  %51 = getelementptr inbounds %struct.bfa_vhba_attr_s, %struct.bfa_vhba_attr_s* %50, i32 0, i32 0
  store i32 %49, i32* %51, align 8
  %52 = load i32, i32* @BFA_STATUS_OK, align 4
  %53 = load %struct.bfa_bsg_vhba_attr_s*, %struct.bfa_bsg_vhba_attr_s** %5, align 8
  %54 = getelementptr inbounds %struct.bfa_bsg_vhba_attr_s, %struct.bfa_bsg_vhba_attr_s* %53, i32 0, i32 0
  store i32 %52, i32* %54, align 8
  %55 = load %struct.bfad_s*, %struct.bfad_s** %3, align 8
  %56 = getelementptr inbounds %struct.bfad_s, %struct.bfad_s* %55, i32 0, i32 0
  %57 = load i64, i64* %7, align 8
  %58 = call i32 @spin_unlock_irqrestore(i32* %56, i64 %57)
  ret i32 0
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @bfa_fcpim_get_io_profile(%struct.TYPE_9__*) #1

declare dso_local i32 @bfa_fcpim_path_tov_get(%struct.TYPE_9__*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
