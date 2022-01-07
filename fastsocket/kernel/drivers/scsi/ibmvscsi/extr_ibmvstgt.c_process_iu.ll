; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/ibmvscsi/extr_ibmvstgt.c_process_iu.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/ibmvscsi/extr_ibmvstgt.c_process_iu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.viosrp_crq = type { i64, i32, i32 }
%struct.srp_target = type { i32 }
%struct.vio_port = type { i32, i32 }
%struct.iu_entry = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [32 x i8] c"Error getting IU from pool, %p\0A\00", align 1
@H_SUCCESS = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [32 x i8] c"%ld transferring data error %p\0A\00", align 1
@VIOSRP_MAD_FORMAT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.viosrp_crq*, %struct.srp_target*)* @process_iu to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @process_iu(%struct.viosrp_crq* %0, %struct.srp_target* %1) #0 {
  %3 = alloca %struct.viosrp_crq*, align 8
  %4 = alloca %struct.srp_target*, align 8
  %5 = alloca %struct.vio_port*, align 8
  %6 = alloca %struct.iu_entry*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.viosrp_crq* %0, %struct.viosrp_crq** %3, align 8
  store %struct.srp_target* %1, %struct.srp_target** %4, align 8
  %9 = load %struct.srp_target*, %struct.srp_target** %4, align 8
  %10 = call %struct.vio_port* @target_to_port(%struct.srp_target* %9)
  store %struct.vio_port* %10, %struct.vio_port** %5, align 8
  store i32 1, i32* %8, align 4
  %11 = load %struct.srp_target*, %struct.srp_target** %4, align 8
  %12 = call %struct.iu_entry* @srp_iu_get(%struct.srp_target* %11)
  store %struct.iu_entry* %12, %struct.iu_entry** %6, align 8
  %13 = load %struct.iu_entry*, %struct.iu_entry** %6, align 8
  %14 = icmp ne %struct.iu_entry* %13, null
  br i1 %14, label %19, label %15

15:                                               ; preds = %2
  %16 = load %struct.srp_target*, %struct.srp_target** %4, align 8
  %17 = ptrtoint %struct.srp_target* %16 to i64
  %18 = call i32 (i8*, i64, ...) @eprintk(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i64 %17)
  br label %69

19:                                               ; preds = %2
  %20 = load %struct.viosrp_crq*, %struct.viosrp_crq** %3, align 8
  %21 = getelementptr inbounds %struct.viosrp_crq, %struct.viosrp_crq* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.iu_entry*, %struct.iu_entry** %6, align 8
  %24 = getelementptr inbounds %struct.iu_entry, %struct.iu_entry* %23, i32 0, i32 1
  store i32 %22, i32* %24, align 8
  %25 = load %struct.viosrp_crq*, %struct.viosrp_crq** %3, align 8
  %26 = getelementptr inbounds %struct.viosrp_crq, %struct.viosrp_crq* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  %28 = load %struct.vio_port*, %struct.vio_port** %5, align 8
  %29 = getelementptr inbounds %struct.vio_port, %struct.vio_port* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.iu_entry*, %struct.iu_entry** %6, align 8
  %32 = getelementptr inbounds %struct.iu_entry, %struct.iu_entry* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 8
  %34 = load %struct.vio_port*, %struct.vio_port** %5, align 8
  %35 = getelementptr inbounds %struct.vio_port, %struct.vio_port* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.iu_entry*, %struct.iu_entry** %6, align 8
  %38 = getelementptr inbounds %struct.iu_entry, %struct.iu_entry* %37, i32 0, i32 0
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i64 @h_copy_rdma(i32 %27, i32 %30, i32 %33, i32 %36, i32 %41)
  store i64 %42, i64* %7, align 8
  %43 = load i64, i64* %7, align 8
  %44 = load i64, i64* @H_SUCCESS, align 8
  %45 = icmp ne i64 %43, %44
  br i1 %45, label %46, label %50

46:                                               ; preds = %19
  %47 = load i64, i64* %7, align 8
  %48 = load %struct.iu_entry*, %struct.iu_entry** %6, align 8
  %49 = call i32 (i8*, i64, ...) @eprintk(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i64 %47, %struct.iu_entry* %48)
  br label %63

50:                                               ; preds = %19
  %51 = load %struct.viosrp_crq*, %struct.viosrp_crq** %3, align 8
  %52 = getelementptr inbounds %struct.viosrp_crq, %struct.viosrp_crq* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* @VIOSRP_MAD_FORMAT, align 8
  %55 = icmp eq i64 %53, %54
  br i1 %55, label %56, label %59

56:                                               ; preds = %50
  %57 = load %struct.iu_entry*, %struct.iu_entry** %6, align 8
  %58 = call i32 @process_mad_iu(%struct.iu_entry* %57)
  store i32 %58, i32* %8, align 4
  br label %62

59:                                               ; preds = %50
  %60 = load %struct.iu_entry*, %struct.iu_entry** %6, align 8
  %61 = call i32 @process_srp_iu(%struct.iu_entry* %60)
  store i32 %61, i32* %8, align 4
  br label %62

62:                                               ; preds = %59, %56
  br label %63

63:                                               ; preds = %62, %46
  %64 = load i32, i32* %8, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %69

66:                                               ; preds = %63
  %67 = load %struct.iu_entry*, %struct.iu_entry** %6, align 8
  %68 = call i32 @srp_iu_put(%struct.iu_entry* %67)
  br label %69

69:                                               ; preds = %15, %66, %63
  ret void
}

declare dso_local %struct.vio_port* @target_to_port(%struct.srp_target*) #1

declare dso_local %struct.iu_entry* @srp_iu_get(%struct.srp_target*) #1

declare dso_local i32 @eprintk(i8*, i64, ...) #1

declare dso_local i64 @h_copy_rdma(i32, i32, i32, i32, i32) #1

declare dso_local i32 @process_mad_iu(%struct.iu_entry*) #1

declare dso_local i32 @process_srp_iu(%struct.iu_entry*) #1

declare dso_local i32 @srp_iu_put(%struct.iu_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
