; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/ibmvscsi/extr_ibmvstgt.c_send_iu.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/ibmvscsi/extr_ibmvstgt.c_send_iu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iu_entry = type { i32, %struct.TYPE_6__*, %struct.srp_target* }
%struct.TYPE_6__ = type { i32 }
%struct.srp_target = type { i32 }
%struct.vio_port = type { %struct.TYPE_9__*, i32, i32 }
%struct.TYPE_9__ = type { i32 }
%union.anon = type { %struct.viosrp_crq }
%struct.viosrp_crq = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_10__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }

@.str = private unnamed_addr constant [29 x i8] c"Error %ld transferring data\0A\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"%ld sending response\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iu_entry*, i32, i32)* @send_iu to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @send_iu(%struct.iu_entry* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.iu_entry*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.srp_target*, align 8
  %9 = alloca %struct.vio_port*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca %union.anon, align 4
  store %struct.iu_entry* %0, %struct.iu_entry** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %13 = load %struct.iu_entry*, %struct.iu_entry** %5, align 8
  %14 = getelementptr inbounds %struct.iu_entry, %struct.iu_entry* %13, i32 0, i32 2
  %15 = load %struct.srp_target*, %struct.srp_target** %14, align 8
  store %struct.srp_target* %15, %struct.srp_target** %8, align 8
  %16 = load %struct.srp_target*, %struct.srp_target** %8, align 8
  %17 = call %struct.vio_port* @target_to_port(%struct.srp_target* %16)
  store %struct.vio_port* %17, %struct.vio_port** %9, align 8
  %18 = load i32, i32* %6, align 4
  %19 = load %struct.vio_port*, %struct.vio_port** %9, align 8
  %20 = getelementptr inbounds %struct.vio_port, %struct.vio_port* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.iu_entry*, %struct.iu_entry** %5, align 8
  %23 = getelementptr inbounds %struct.iu_entry, %struct.iu_entry* %22, i32 0, i32 1
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.vio_port*, %struct.vio_port** %9, align 8
  %28 = getelementptr inbounds %struct.vio_port, %struct.vio_port* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  %30 = load %struct.iu_entry*, %struct.iu_entry** %5, align 8
  %31 = getelementptr inbounds %struct.iu_entry, %struct.iu_entry* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = call i64 @h_copy_rdma(i32 %18, i32 %21, i32 %26, i32 %29, i32 %32)
  store i64 %33, i64* %10, align 8
  %34 = load i64, i64* %10, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %3
  %37 = load i64, i64* %10, align 8
  %38 = call i32 @eprintk(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i64 %37)
  br label %39

39:                                               ; preds = %36, %3
  %40 = bitcast %union.anon* %12 to %struct.viosrp_crq*
  %41 = getelementptr inbounds %struct.viosrp_crq, %struct.viosrp_crq* %40, i32 0, i32 0
  store i32 128, i32* %41, align 4
  %42 = load i32, i32* %7, align 4
  %43 = bitcast %union.anon* %12 to %struct.viosrp_crq*
  %44 = getelementptr inbounds %struct.viosrp_crq, %struct.viosrp_crq* %43, i32 0, i32 6
  store i32 %42, i32* %44, align 4
  %45 = bitcast %union.anon* %12 to %struct.viosrp_crq*
  %46 = getelementptr inbounds %struct.viosrp_crq, %struct.viosrp_crq* %45, i32 0, i32 1
  store i32 0, i32* %46, align 4
  %47 = bitcast %union.anon* %12 to %struct.viosrp_crq*
  %48 = getelementptr inbounds %struct.viosrp_crq, %struct.viosrp_crq* %47, i32 0, i32 2
  store i32 0, i32* %48, align 4
  %49 = load i32, i32* %6, align 4
  %50 = bitcast %union.anon* %12 to %struct.viosrp_crq*
  %51 = getelementptr inbounds %struct.viosrp_crq, %struct.viosrp_crq* %50, i32 0, i32 5
  store i32 %49, i32* %51, align 4
  %52 = load %struct.iu_entry*, %struct.iu_entry** %5, align 8
  %53 = call %struct.TYPE_10__* @vio_iu(%struct.iu_entry* %52)
  %54 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = bitcast %union.anon* %12 to %struct.viosrp_crq*
  %59 = getelementptr inbounds %struct.viosrp_crq, %struct.viosrp_crq* %58, i32 0, i32 4
  store i32 %57, i32* %59, align 4
  %60 = load i64, i64* %10, align 8
  %61 = icmp eq i64 %60, 0
  br i1 %61, label %62, label %65

62:                                               ; preds = %39
  %63 = bitcast %union.anon* %12 to %struct.viosrp_crq*
  %64 = getelementptr inbounds %struct.viosrp_crq, %struct.viosrp_crq* %63, i32 0, i32 3
  store i32 153, i32* %64, align 4
  br label %68

65:                                               ; preds = %39
  %66 = bitcast %union.anon* %12 to %struct.viosrp_crq*
  %67 = getelementptr inbounds %struct.viosrp_crq, %struct.viosrp_crq* %66, i32 0, i32 3
  store i32 0, i32* %67, align 4
  br label %68

68:                                               ; preds = %65, %62
  %69 = load %struct.vio_port*, %struct.vio_port** %9, align 8
  %70 = getelementptr inbounds %struct.vio_port, %struct.vio_port* %69, i32 0, i32 0
  %71 = load %struct.TYPE_9__*, %struct.TYPE_9__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = bitcast %union.anon* %12 to [2 x i32]*
  %75 = getelementptr inbounds [2 x i32], [2 x i32]* %74, i64 0, i64 0
  %76 = load i32, i32* %75, align 4
  %77 = bitcast %union.anon* %12 to [2 x i32]*
  %78 = getelementptr inbounds [2 x i32], [2 x i32]* %77, i64 0, i64 1
  %79 = load i32, i32* %78, align 4
  %80 = call i64 @h_send_crq(i32 %73, i32 %76, i32 %79)
  store i64 %80, i64* %11, align 8
  %81 = load i64, i64* %11, align 8
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %88

83:                                               ; preds = %68
  %84 = load i64, i64* %11, align 8
  %85 = call i32 @eprintk(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i64 %84)
  %86 = load i64, i64* %11, align 8
  %87 = trunc i64 %86 to i32
  store i32 %87, i32* %4, align 4
  br label %91

88:                                               ; preds = %68
  %89 = load i64, i64* %10, align 8
  %90 = trunc i64 %89 to i32
  store i32 %90, i32* %4, align 4
  br label %91

91:                                               ; preds = %88, %83
  %92 = load i32, i32* %4, align 4
  ret i32 %92
}

declare dso_local %struct.vio_port* @target_to_port(%struct.srp_target*) #1

declare dso_local i64 @h_copy_rdma(i32, i32, i32, i32, i32) #1

declare dso_local i32 @eprintk(i8*, i64) #1

declare dso_local %struct.TYPE_10__* @vio_iu(%struct.iu_entry*) #1

declare dso_local i64 @h_send_crq(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
