; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/bfa/extr_bfa_core.c_bfa_faa_query_reply.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/bfa/extr_bfa_core.c_bfa_faa_query_reply.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfa_iocfc_s = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, %struct.TYPE_8__, %struct.TYPE_6__* }
%struct.TYPE_8__ = type { i32 (i8*, i32)*, i8* }
%struct.TYPE_6__ = type { i32, i32, i32 }
%struct.TYPE_9__ = type { i32, i32, i32 }

@BFA_STATUS_OK = common dso_local global i32 0, align 4
@BFA_FALSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bfa_iocfc_s*, %struct.TYPE_9__*)* @bfa_faa_query_reply to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bfa_faa_query_reply(%struct.bfa_iocfc_s* %0, %struct.TYPE_9__* %1) #0 {
  %3 = alloca %struct.bfa_iocfc_s*, align 8
  %4 = alloca %struct.TYPE_9__*, align 8
  %5 = alloca i8*, align 8
  store %struct.bfa_iocfc_s* %0, %struct.bfa_iocfc_s** %3, align 8
  store %struct.TYPE_9__* %1, %struct.TYPE_9__** %4, align 8
  %6 = load %struct.bfa_iocfc_s*, %struct.bfa_iocfc_s** %3, align 8
  %7 = getelementptr inbounds %struct.bfa_iocfc_s, %struct.bfa_iocfc_s* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 1
  %9 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 1
  %10 = load i8*, i8** %9, align 8
  store i8* %10, i8** %5, align 8
  %11 = load %struct.bfa_iocfc_s*, %struct.bfa_iocfc_s** %3, align 8
  %12 = getelementptr inbounds %struct.bfa_iocfc_s, %struct.bfa_iocfc_s* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 2
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %15 = icmp ne %struct.TYPE_6__* %14, null
  br i1 %15, label %16, label %41

16:                                               ; preds = %2
  %17 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.bfa_iocfc_s*, %struct.bfa_iocfc_s** %3, align 8
  %21 = getelementptr inbounds %struct.bfa_iocfc_s, %struct.bfa_iocfc_s* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %21, i32 0, i32 2
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 2
  store i32 %19, i32* %24, align 4
  %25 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.bfa_iocfc_s*, %struct.bfa_iocfc_s** %3, align 8
  %29 = getelementptr inbounds %struct.bfa_iocfc_s, %struct.bfa_iocfc_s* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i32 0, i32 2
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 1
  store i32 %27, i32* %32, align 4
  %33 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %34 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.bfa_iocfc_s*, %struct.bfa_iocfc_s** %3, align 8
  %37 = getelementptr inbounds %struct.bfa_iocfc_s, %struct.bfa_iocfc_s* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %37, i32 0, i32 2
  %39 = load %struct.TYPE_6__*, %struct.TYPE_6__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 0
  store i32 %35, i32* %40, align 4
  br label %41

41:                                               ; preds = %16, %2
  %42 = load %struct.bfa_iocfc_s*, %struct.bfa_iocfc_s** %3, align 8
  %43 = getelementptr inbounds %struct.bfa_iocfc_s, %struct.bfa_iocfc_s* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %44, i32 0, i32 0
  %46 = load i32 (i8*, i32)*, i32 (i8*, i32)** %45, align 8
  %47 = icmp ne i32 (i8*, i32)* %46, null
  %48 = xor i1 %47, true
  %49 = zext i1 %48 to i32
  %50 = call i32 @WARN_ON(i32 %49)
  %51 = load %struct.bfa_iocfc_s*, %struct.bfa_iocfc_s** %3, align 8
  %52 = getelementptr inbounds %struct.bfa_iocfc_s, %struct.bfa_iocfc_s* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %53, i32 0, i32 0
  %55 = load i32 (i8*, i32)*, i32 (i8*, i32)** %54, align 8
  %56 = load i8*, i8** %5, align 8
  %57 = load i32, i32* @BFA_STATUS_OK, align 4
  %58 = call i32 %55(i8* %56, i32 %57)
  %59 = load i32, i32* @BFA_FALSE, align 4
  %60 = load %struct.bfa_iocfc_s*, %struct.bfa_iocfc_s** %3, align 8
  %61 = getelementptr inbounds %struct.bfa_iocfc_s, %struct.bfa_iocfc_s* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %61, i32 0, i32 0
  store i32 %59, i32* %62, align 8
  ret void
}

declare dso_local i32 @WARN_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
