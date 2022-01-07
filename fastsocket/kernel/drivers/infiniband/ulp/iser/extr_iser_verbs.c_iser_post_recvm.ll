; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/ulp/iser/extr_iser_verbs.c_iser_post_recvm.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/ulp/iser/extr_iser_verbs.c_iser_post_recvm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iser_conn = type { i32, i32, %struct.ib_recv_wr*, i32, %struct.iser_rx_desc* }
%struct.ib_recv_wr = type { i64, i32, %struct.ib_recv_wr*, i32* }
%struct.iser_rx_desc = type { i32 }

@ISER_QP_MAX_RECV_DTOS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"ib_post_recv failed ret=%d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @iser_post_recvm(%struct.iser_conn* %0, i32 %1) #0 {
  %3 = alloca %struct.iser_conn*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ib_recv_wr*, align 8
  %6 = alloca %struct.ib_recv_wr*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.iser_rx_desc*, align 8
  store %struct.iser_conn* %0, %struct.iser_conn** %3, align 8
  store i32 %1, i32* %4, align 4
  %11 = load %struct.iser_conn*, %struct.iser_conn** %3, align 8
  %12 = getelementptr inbounds %struct.iser_conn, %struct.iser_conn* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  store i32 %13, i32* %9, align 4
  %14 = load %struct.iser_conn*, %struct.iser_conn** %3, align 8
  %15 = getelementptr inbounds %struct.iser_conn, %struct.iser_conn* %14, i32 0, i32 2
  %16 = load %struct.ib_recv_wr*, %struct.ib_recv_wr** %15, align 8
  store %struct.ib_recv_wr* %16, %struct.ib_recv_wr** %5, align 8
  store i32 0, i32* %7, align 4
  br label %17

17:                                               ; preds = %47, %2
  %18 = load i32, i32* %7, align 4
  %19 = load i32, i32* %4, align 4
  %20 = icmp slt i32 %18, %19
  br i1 %20, label %21, label %52

21:                                               ; preds = %17
  %22 = load %struct.iser_conn*, %struct.iser_conn** %3, align 8
  %23 = getelementptr inbounds %struct.iser_conn, %struct.iser_conn* %22, i32 0, i32 4
  %24 = load %struct.iser_rx_desc*, %struct.iser_rx_desc** %23, align 8
  %25 = load i32, i32* %9, align 4
  %26 = zext i32 %25 to i64
  %27 = getelementptr inbounds %struct.iser_rx_desc, %struct.iser_rx_desc* %24, i64 %26
  store %struct.iser_rx_desc* %27, %struct.iser_rx_desc** %10, align 8
  %28 = load %struct.iser_rx_desc*, %struct.iser_rx_desc** %10, align 8
  %29 = ptrtoint %struct.iser_rx_desc* %28 to i64
  %30 = load %struct.ib_recv_wr*, %struct.ib_recv_wr** %5, align 8
  %31 = getelementptr inbounds %struct.ib_recv_wr, %struct.ib_recv_wr* %30, i32 0, i32 0
  store i64 %29, i64* %31, align 8
  %32 = load %struct.iser_rx_desc*, %struct.iser_rx_desc** %10, align 8
  %33 = getelementptr inbounds %struct.iser_rx_desc, %struct.iser_rx_desc* %32, i32 0, i32 0
  %34 = load %struct.ib_recv_wr*, %struct.ib_recv_wr** %5, align 8
  %35 = getelementptr inbounds %struct.ib_recv_wr, %struct.ib_recv_wr* %34, i32 0, i32 3
  store i32* %33, i32** %35, align 8
  %36 = load %struct.ib_recv_wr*, %struct.ib_recv_wr** %5, align 8
  %37 = getelementptr inbounds %struct.ib_recv_wr, %struct.ib_recv_wr* %36, i32 0, i32 1
  store i32 1, i32* %37, align 8
  %38 = load %struct.ib_recv_wr*, %struct.ib_recv_wr** %5, align 8
  %39 = getelementptr inbounds %struct.ib_recv_wr, %struct.ib_recv_wr* %38, i64 1
  %40 = load %struct.ib_recv_wr*, %struct.ib_recv_wr** %5, align 8
  %41 = getelementptr inbounds %struct.ib_recv_wr, %struct.ib_recv_wr* %40, i32 0, i32 2
  store %struct.ib_recv_wr* %39, %struct.ib_recv_wr** %41, align 8
  %42 = load i32, i32* %9, align 4
  %43 = add i32 %42, 1
  %44 = load i32, i32* @ISER_QP_MAX_RECV_DTOS, align 4
  %45 = sub nsw i32 %44, 1
  %46 = and i32 %43, %45
  store i32 %46, i32* %9, align 4
  br label %47

47:                                               ; preds = %21
  %48 = load i32, i32* %7, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %7, align 4
  %50 = load %struct.ib_recv_wr*, %struct.ib_recv_wr** %5, align 8
  %51 = getelementptr inbounds %struct.ib_recv_wr, %struct.ib_recv_wr* %50, i32 1
  store %struct.ib_recv_wr* %51, %struct.ib_recv_wr** %5, align 8
  br label %17

52:                                               ; preds = %17
  %53 = load %struct.ib_recv_wr*, %struct.ib_recv_wr** %5, align 8
  %54 = getelementptr inbounds %struct.ib_recv_wr, %struct.ib_recv_wr* %53, i32 -1
  store %struct.ib_recv_wr* %54, %struct.ib_recv_wr** %5, align 8
  %55 = load %struct.ib_recv_wr*, %struct.ib_recv_wr** %5, align 8
  %56 = getelementptr inbounds %struct.ib_recv_wr, %struct.ib_recv_wr* %55, i32 0, i32 2
  store %struct.ib_recv_wr* null, %struct.ib_recv_wr** %56, align 8
  %57 = load i32, i32* %4, align 4
  %58 = load %struct.iser_conn*, %struct.iser_conn** %3, align 8
  %59 = getelementptr inbounds %struct.iser_conn, %struct.iser_conn* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = add nsw i32 %60, %57
  store i32 %61, i32* %59, align 4
  %62 = load %struct.iser_conn*, %struct.iser_conn** %3, align 8
  %63 = getelementptr inbounds %struct.iser_conn, %struct.iser_conn* %62, i32 0, i32 3
  %64 = load i32, i32* %63, align 8
  %65 = load %struct.iser_conn*, %struct.iser_conn** %3, align 8
  %66 = getelementptr inbounds %struct.iser_conn, %struct.iser_conn* %65, i32 0, i32 2
  %67 = load %struct.ib_recv_wr*, %struct.ib_recv_wr** %66, align 8
  %68 = call i32 @ib_post_recv(i32 %64, %struct.ib_recv_wr* %67, %struct.ib_recv_wr** %6)
  store i32 %68, i32* %8, align 4
  %69 = load i32, i32* %8, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %79

71:                                               ; preds = %52
  %72 = load i32, i32* %8, align 4
  %73 = call i32 @iser_err(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %72)
  %74 = load i32, i32* %4, align 4
  %75 = load %struct.iser_conn*, %struct.iser_conn** %3, align 8
  %76 = getelementptr inbounds %struct.iser_conn, %struct.iser_conn* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = sub nsw i32 %77, %74
  store i32 %78, i32* %76, align 4
  br label %83

79:                                               ; preds = %52
  %80 = load i32, i32* %9, align 4
  %81 = load %struct.iser_conn*, %struct.iser_conn** %3, align 8
  %82 = getelementptr inbounds %struct.iser_conn, %struct.iser_conn* %81, i32 0, i32 0
  store i32 %80, i32* %82, align 8
  br label %83

83:                                               ; preds = %79, %71
  %84 = load i32, i32* %8, align 4
  ret i32 %84
}

declare dso_local i32 @ib_post_recv(i32, %struct.ib_recv_wr*, %struct.ib_recv_wr**) #1

declare dso_local i32 @iser_err(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
