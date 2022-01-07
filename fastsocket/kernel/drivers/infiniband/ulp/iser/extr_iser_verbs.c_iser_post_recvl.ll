; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/ulp/iser/extr_iser_verbs.c_iser_post_recvl.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/ulp/iser/extr_iser_verbs.c_iser_post_recvl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iser_conn = type { i32, i32, i64, %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.ib_recv_wr = type { i64, i32, i32*, %struct.ib_sge* }
%struct.ib_sge = type { i32, i32, i32 }

@ISER_RX_LOGIN_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"ib_post_recv failed ret=%d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @iser_post_recvl(%struct.iser_conn* %0) #0 {
  %2 = alloca %struct.iser_conn*, align 8
  %3 = alloca %struct.ib_recv_wr, align 8
  %4 = alloca %struct.ib_recv_wr*, align 8
  %5 = alloca %struct.ib_sge, align 4
  %6 = alloca i32, align 4
  store %struct.iser_conn* %0, %struct.iser_conn** %2, align 8
  %7 = load %struct.iser_conn*, %struct.iser_conn** %2, align 8
  %8 = getelementptr inbounds %struct.iser_conn, %struct.iser_conn* %7, i32 0, i32 4
  %9 = load i32, i32* %8, align 8
  %10 = getelementptr inbounds %struct.ib_sge, %struct.ib_sge* %5, i32 0, i32 2
  store i32 %9, i32* %10, align 4
  %11 = load i32, i32* @ISER_RX_LOGIN_SIZE, align 4
  %12 = getelementptr inbounds %struct.ib_sge, %struct.ib_sge* %5, i32 0, i32 1
  store i32 %11, i32* %12, align 4
  %13 = load %struct.iser_conn*, %struct.iser_conn** %2, align 8
  %14 = getelementptr inbounds %struct.iser_conn, %struct.iser_conn* %13, i32 0, i32 3
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = getelementptr inbounds %struct.ib_sge, %struct.ib_sge* %5, i32 0, i32 0
  store i32 %19, i32* %20, align 4
  %21 = load %struct.iser_conn*, %struct.iser_conn** %2, align 8
  %22 = getelementptr inbounds %struct.iser_conn, %struct.iser_conn* %21, i32 0, i32 2
  %23 = load i64, i64* %22, align 8
  %24 = getelementptr inbounds %struct.ib_recv_wr, %struct.ib_recv_wr* %3, i32 0, i32 0
  store i64 %23, i64* %24, align 8
  %25 = getelementptr inbounds %struct.ib_recv_wr, %struct.ib_recv_wr* %3, i32 0, i32 3
  store %struct.ib_sge* %5, %struct.ib_sge** %25, align 8
  %26 = getelementptr inbounds %struct.ib_recv_wr, %struct.ib_recv_wr* %3, i32 0, i32 1
  store i32 1, i32* %26, align 8
  %27 = getelementptr inbounds %struct.ib_recv_wr, %struct.ib_recv_wr* %3, i32 0, i32 2
  store i32* null, i32** %27, align 8
  %28 = load %struct.iser_conn*, %struct.iser_conn** %2, align 8
  %29 = getelementptr inbounds %struct.iser_conn, %struct.iser_conn* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %29, align 8
  %32 = load %struct.iser_conn*, %struct.iser_conn** %2, align 8
  %33 = getelementptr inbounds %struct.iser_conn, %struct.iser_conn* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @ib_post_recv(i32 %34, %struct.ib_recv_wr* %3, %struct.ib_recv_wr** %4)
  store i32 %35, i32* %6, align 4
  %36 = load i32, i32* %6, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %45

38:                                               ; preds = %1
  %39 = load i32, i32* %6, align 4
  %40 = call i32 @iser_err(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %39)
  %41 = load %struct.iser_conn*, %struct.iser_conn** %2, align 8
  %42 = getelementptr inbounds %struct.iser_conn, %struct.iser_conn* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = add nsw i32 %43, -1
  store i32 %44, i32* %42, align 8
  br label %45

45:                                               ; preds = %38, %1
  %46 = load i32, i32* %6, align 4
  ret i32 %46
}

declare dso_local i32 @ib_post_recv(i32, %struct.ib_recv_wr*, %struct.ib_recv_wr**) #1

declare dso_local i32 @iser_err(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
