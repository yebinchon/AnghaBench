; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_iscsi_tcp.c_iscsi_sw_tcp_conn_create.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_iscsi_tcp.c_iscsi_sw_tcp_conn_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iscsi_cls_conn = type { %struct.iscsi_conn* }
%struct.iscsi_conn = type { %struct.iscsi_tcp_conn* }
%struct.iscsi_tcp_conn = type { %struct.TYPE_3__*, %struct.iscsi_sw_tcp_conn* }
%struct.TYPE_3__ = type { i8*, i64 }
%struct.iscsi_sw_tcp_conn = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i8*, i64 }
%struct.iscsi_cls_session = type { i32 }

@.str = private unnamed_addr constant [7 x i8] c"crc32c\00", align 1
@CRYPTO_ALG_ASYNC = common dso_local global i32 0, align 4
@KERN_ERR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [126 x i8] c"Could not create connection due to crc32c loading error. Make sure the crc32c module is built as a module or into the kernel\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.iscsi_cls_conn* (%struct.iscsi_cls_session*, i32)* @iscsi_sw_tcp_conn_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.iscsi_cls_conn* @iscsi_sw_tcp_conn_create(%struct.iscsi_cls_session* %0, i32 %1) #0 {
  %3 = alloca %struct.iscsi_cls_conn*, align 8
  %4 = alloca %struct.iscsi_cls_session*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.iscsi_conn*, align 8
  %7 = alloca %struct.iscsi_cls_conn*, align 8
  %8 = alloca %struct.iscsi_tcp_conn*, align 8
  %9 = alloca %struct.iscsi_sw_tcp_conn*, align 8
  store %struct.iscsi_cls_session* %0, %struct.iscsi_cls_session** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.iscsi_cls_session*, %struct.iscsi_cls_session** %4, align 8
  %11 = load i32, i32* %5, align 4
  %12 = call %struct.iscsi_cls_conn* @iscsi_tcp_conn_setup(%struct.iscsi_cls_session* %10, i32 32, i32 %11)
  store %struct.iscsi_cls_conn* %12, %struct.iscsi_cls_conn** %7, align 8
  %13 = load %struct.iscsi_cls_conn*, %struct.iscsi_cls_conn** %7, align 8
  %14 = icmp ne %struct.iscsi_cls_conn* %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %2
  store %struct.iscsi_cls_conn* null, %struct.iscsi_cls_conn** %3, align 8
  br label %75

16:                                               ; preds = %2
  %17 = load %struct.iscsi_cls_conn*, %struct.iscsi_cls_conn** %7, align 8
  %18 = getelementptr inbounds %struct.iscsi_cls_conn, %struct.iscsi_cls_conn* %17, i32 0, i32 0
  %19 = load %struct.iscsi_conn*, %struct.iscsi_conn** %18, align 8
  store %struct.iscsi_conn* %19, %struct.iscsi_conn** %6, align 8
  %20 = load %struct.iscsi_conn*, %struct.iscsi_conn** %6, align 8
  %21 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %20, i32 0, i32 0
  %22 = load %struct.iscsi_tcp_conn*, %struct.iscsi_tcp_conn** %21, align 8
  store %struct.iscsi_tcp_conn* %22, %struct.iscsi_tcp_conn** %8, align 8
  %23 = load %struct.iscsi_tcp_conn*, %struct.iscsi_tcp_conn** %8, align 8
  %24 = getelementptr inbounds %struct.iscsi_tcp_conn, %struct.iscsi_tcp_conn* %23, i32 0, i32 1
  %25 = load %struct.iscsi_sw_tcp_conn*, %struct.iscsi_sw_tcp_conn** %24, align 8
  store %struct.iscsi_sw_tcp_conn* %25, %struct.iscsi_sw_tcp_conn** %9, align 8
  %26 = load i32, i32* @CRYPTO_ALG_ASYNC, align 4
  %27 = call i8* @crypto_alloc_hash(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 0, i32 %26)
  %28 = load %struct.iscsi_sw_tcp_conn*, %struct.iscsi_sw_tcp_conn** %9, align 8
  %29 = getelementptr inbounds %struct.iscsi_sw_tcp_conn, %struct.iscsi_sw_tcp_conn* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  store i8* %27, i8** %30, align 8
  %31 = load %struct.iscsi_sw_tcp_conn*, %struct.iscsi_sw_tcp_conn** %9, align 8
  %32 = getelementptr inbounds %struct.iscsi_sw_tcp_conn, %struct.iscsi_sw_tcp_conn* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 1
  store i64 0, i64* %33, align 8
  %34 = load %struct.iscsi_sw_tcp_conn*, %struct.iscsi_sw_tcp_conn** %9, align 8
  %35 = getelementptr inbounds %struct.iscsi_sw_tcp_conn, %struct.iscsi_sw_tcp_conn* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = load i8*, i8** %36, align 8
  %38 = call i64 @IS_ERR(i8* %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %16
  br label %69

41:                                               ; preds = %16
  %42 = load i32, i32* @CRYPTO_ALG_ASYNC, align 4
  %43 = call i8* @crypto_alloc_hash(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 0, i32 %42)
  %44 = load %struct.iscsi_sw_tcp_conn*, %struct.iscsi_sw_tcp_conn** %9, align 8
  %45 = getelementptr inbounds %struct.iscsi_sw_tcp_conn, %struct.iscsi_sw_tcp_conn* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 0
  store i8* %43, i8** %46, align 8
  %47 = load %struct.iscsi_sw_tcp_conn*, %struct.iscsi_sw_tcp_conn** %9, align 8
  %48 = getelementptr inbounds %struct.iscsi_sw_tcp_conn, %struct.iscsi_sw_tcp_conn* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 1
  store i64 0, i64* %49, align 8
  %50 = load %struct.iscsi_sw_tcp_conn*, %struct.iscsi_sw_tcp_conn** %9, align 8
  %51 = getelementptr inbounds %struct.iscsi_sw_tcp_conn, %struct.iscsi_sw_tcp_conn* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 0
  %53 = load i8*, i8** %52, align 8
  %54 = call i64 @IS_ERR(i8* %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %41
  br label %63

57:                                               ; preds = %41
  %58 = load %struct.iscsi_sw_tcp_conn*, %struct.iscsi_sw_tcp_conn** %9, align 8
  %59 = getelementptr inbounds %struct.iscsi_sw_tcp_conn, %struct.iscsi_sw_tcp_conn* %58, i32 0, i32 1
  %60 = load %struct.iscsi_tcp_conn*, %struct.iscsi_tcp_conn** %8, align 8
  %61 = getelementptr inbounds %struct.iscsi_tcp_conn, %struct.iscsi_tcp_conn* %60, i32 0, i32 0
  store %struct.TYPE_3__* %59, %struct.TYPE_3__** %61, align 8
  %62 = load %struct.iscsi_cls_conn*, %struct.iscsi_cls_conn** %7, align 8
  store %struct.iscsi_cls_conn* %62, %struct.iscsi_cls_conn** %3, align 8
  br label %75

63:                                               ; preds = %56
  %64 = load %struct.iscsi_sw_tcp_conn*, %struct.iscsi_sw_tcp_conn** %9, align 8
  %65 = getelementptr inbounds %struct.iscsi_sw_tcp_conn, %struct.iscsi_sw_tcp_conn* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 0
  %67 = load i8*, i8** %66, align 8
  %68 = call i32 @crypto_free_hash(i8* %67)
  br label %69

69:                                               ; preds = %63, %40
  %70 = load i32, i32* @KERN_ERR, align 4
  %71 = load %struct.iscsi_conn*, %struct.iscsi_conn** %6, align 8
  %72 = call i32 @iscsi_conn_printk(i32 %70, %struct.iscsi_conn* %71, i8* getelementptr inbounds ([126 x i8], [126 x i8]* @.str.1, i64 0, i64 0))
  %73 = load %struct.iscsi_cls_conn*, %struct.iscsi_cls_conn** %7, align 8
  %74 = call i32 @iscsi_tcp_conn_teardown(%struct.iscsi_cls_conn* %73)
  store %struct.iscsi_cls_conn* null, %struct.iscsi_cls_conn** %3, align 8
  br label %75

75:                                               ; preds = %69, %57, %15
  %76 = load %struct.iscsi_cls_conn*, %struct.iscsi_cls_conn** %3, align 8
  ret %struct.iscsi_cls_conn* %76
}

declare dso_local %struct.iscsi_cls_conn* @iscsi_tcp_conn_setup(%struct.iscsi_cls_session*, i32, i32) #1

declare dso_local i8* @crypto_alloc_hash(i8*, i32, i32) #1

declare dso_local i64 @IS_ERR(i8*) #1

declare dso_local i32 @crypto_free_hash(i8*) #1

declare dso_local i32 @iscsi_conn_printk(i32, %struct.iscsi_conn*, i8*) #1

declare dso_local i32 @iscsi_tcp_conn_teardown(%struct.iscsi_cls_conn*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
