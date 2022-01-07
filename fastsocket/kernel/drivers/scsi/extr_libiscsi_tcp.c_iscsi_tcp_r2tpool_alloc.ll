; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_libiscsi_tcp.c_iscsi_tcp_r2tpool_alloc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_libiscsi_tcp.c_iscsi_tcp_r2tpool_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iscsi_session = type { i32, i32, %struct.iscsi_task** }
%struct.iscsi_task = type { %struct.iscsi_tcp_task* }
%struct.iscsi_tcp_task = type { i64, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @iscsi_tcp_r2tpool_alloc(%struct.iscsi_session* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.iscsi_session*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.iscsi_task*, align 8
  %7 = alloca %struct.iscsi_tcp_task*, align 8
  %8 = alloca %struct.iscsi_task*, align 8
  %9 = alloca %struct.iscsi_tcp_task*, align 8
  store %struct.iscsi_session* %0, %struct.iscsi_session** %3, align 8
  store i32 0, i32* %5, align 4
  br label %10

10:                                               ; preds = %60, %1
  %11 = load i32, i32* %5, align 4
  %12 = load %struct.iscsi_session*, %struct.iscsi_session** %3, align 8
  %13 = getelementptr inbounds %struct.iscsi_session, %struct.iscsi_session* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = icmp slt i32 %11, %14
  br i1 %15, label %16, label %63

16:                                               ; preds = %10
  %17 = load %struct.iscsi_session*, %struct.iscsi_session** %3, align 8
  %18 = getelementptr inbounds %struct.iscsi_session, %struct.iscsi_session* %17, i32 0, i32 2
  %19 = load %struct.iscsi_task**, %struct.iscsi_task*** %18, align 8
  %20 = load i32, i32* %5, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.iscsi_task*, %struct.iscsi_task** %19, i64 %21
  %23 = load %struct.iscsi_task*, %struct.iscsi_task** %22, align 8
  store %struct.iscsi_task* %23, %struct.iscsi_task** %6, align 8
  %24 = load %struct.iscsi_task*, %struct.iscsi_task** %6, align 8
  %25 = getelementptr inbounds %struct.iscsi_task, %struct.iscsi_task* %24, i32 0, i32 0
  %26 = load %struct.iscsi_tcp_task*, %struct.iscsi_tcp_task** %25, align 8
  store %struct.iscsi_tcp_task* %26, %struct.iscsi_tcp_task** %7, align 8
  %27 = load %struct.iscsi_tcp_task*, %struct.iscsi_tcp_task** %7, align 8
  %28 = getelementptr inbounds %struct.iscsi_tcp_task, %struct.iscsi_tcp_task* %27, i32 0, i32 1
  %29 = load %struct.iscsi_session*, %struct.iscsi_session** %3, align 8
  %30 = getelementptr inbounds %struct.iscsi_session, %struct.iscsi_session* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = mul nsw i32 %31, 2
  %33 = call i64 @iscsi_pool_init(i32* %28, i32 %32, i32* null, i32 4)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %16
  br label %64

36:                                               ; preds = %16
  %37 = load %struct.iscsi_session*, %struct.iscsi_session** %3, align 8
  %38 = getelementptr inbounds %struct.iscsi_session, %struct.iscsi_session* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = mul nsw i32 %39, 4
  %41 = sext i32 %40 to i64
  %42 = mul i64 %41, 8
  %43 = trunc i64 %42 to i32
  %44 = load i32, i32* @GFP_KERNEL, align 4
  %45 = call i64 @kfifo_alloc(i32 %43, i32 %44, i32* null)
  %46 = load %struct.iscsi_tcp_task*, %struct.iscsi_tcp_task** %7, align 8
  %47 = getelementptr inbounds %struct.iscsi_tcp_task, %struct.iscsi_tcp_task* %46, i32 0, i32 0
  store i64 %45, i64* %47, align 8
  %48 = load %struct.iscsi_tcp_task*, %struct.iscsi_tcp_task** %7, align 8
  %49 = getelementptr inbounds %struct.iscsi_tcp_task, %struct.iscsi_tcp_task* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load i32, i32* @ENOMEM, align 4
  %52 = sub nsw i32 0, %51
  %53 = call i64 @ERR_PTR(i32 %52)
  %54 = icmp eq i64 %50, %53
  br i1 %54, label %55, label %59

55:                                               ; preds = %36
  %56 = load %struct.iscsi_tcp_task*, %struct.iscsi_tcp_task** %7, align 8
  %57 = getelementptr inbounds %struct.iscsi_tcp_task, %struct.iscsi_tcp_task* %56, i32 0, i32 1
  %58 = call i32 @iscsi_pool_free(i32* %57)
  br label %64

59:                                               ; preds = %36
  br label %60

60:                                               ; preds = %59
  %61 = load i32, i32* %5, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %5, align 4
  br label %10

63:                                               ; preds = %10
  store i32 0, i32* %2, align 4
  br label %93

64:                                               ; preds = %55, %35
  store i32 0, i32* %4, align 4
  br label %65

65:                                               ; preds = %87, %64
  %66 = load i32, i32* %4, align 4
  %67 = load i32, i32* %5, align 4
  %68 = icmp slt i32 %66, %67
  br i1 %68, label %69, label %90

69:                                               ; preds = %65
  %70 = load %struct.iscsi_session*, %struct.iscsi_session** %3, align 8
  %71 = getelementptr inbounds %struct.iscsi_session, %struct.iscsi_session* %70, i32 0, i32 2
  %72 = load %struct.iscsi_task**, %struct.iscsi_task*** %71, align 8
  %73 = load i32, i32* %4, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds %struct.iscsi_task*, %struct.iscsi_task** %72, i64 %74
  %76 = load %struct.iscsi_task*, %struct.iscsi_task** %75, align 8
  store %struct.iscsi_task* %76, %struct.iscsi_task** %8, align 8
  %77 = load %struct.iscsi_task*, %struct.iscsi_task** %8, align 8
  %78 = getelementptr inbounds %struct.iscsi_task, %struct.iscsi_task* %77, i32 0, i32 0
  %79 = load %struct.iscsi_tcp_task*, %struct.iscsi_tcp_task** %78, align 8
  store %struct.iscsi_tcp_task* %79, %struct.iscsi_tcp_task** %9, align 8
  %80 = load %struct.iscsi_tcp_task*, %struct.iscsi_tcp_task** %9, align 8
  %81 = getelementptr inbounds %struct.iscsi_tcp_task, %struct.iscsi_tcp_task* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = call i32 @kfifo_free(i64 %82)
  %84 = load %struct.iscsi_tcp_task*, %struct.iscsi_tcp_task** %9, align 8
  %85 = getelementptr inbounds %struct.iscsi_tcp_task, %struct.iscsi_tcp_task* %84, i32 0, i32 1
  %86 = call i32 @iscsi_pool_free(i32* %85)
  br label %87

87:                                               ; preds = %69
  %88 = load i32, i32* %4, align 4
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %4, align 4
  br label %65

90:                                               ; preds = %65
  %91 = load i32, i32* @ENOMEM, align 4
  %92 = sub nsw i32 0, %91
  store i32 %92, i32* %2, align 4
  br label %93

93:                                               ; preds = %90, %63
  %94 = load i32, i32* %2, align 4
  ret i32 %94
}

declare dso_local i64 @iscsi_pool_init(i32*, i32, i32*, i32) #1

declare dso_local i64 @kfifo_alloc(i32, i32, i32*) #1

declare dso_local i64 @ERR_PTR(i32) #1

declare dso_local i32 @iscsi_pool_free(i32*) #1

declare dso_local i32 @kfifo_free(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
