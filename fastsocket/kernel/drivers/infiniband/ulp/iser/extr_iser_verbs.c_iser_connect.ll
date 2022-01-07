; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/ulp/iser/extr_iser_verbs.c_iser_connect.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/ulp/iser/extr_iser_verbs.c_iser_connect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32 }
%struct.iser_conn = type { i64, i32*, i32, i32, i32*, i32 }
%struct.sockaddr_in = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.sockaddr = type { i32 }

@.str = private unnamed_addr constant [8 x i8] c"%pI4:%d\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"connecting to: %pI4, port 0x%x\0A\00", align 1
@ISER_CONN_PENDING = common dso_local global i64 0, align 8
@iser_cma_handler = common dso_local global i32 0, align 4
@RDMA_PS_TCP = common dso_local global i32 0, align 4
@IB_QPT_RC = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [27 x i8] c"rdma_create_id failed: %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [30 x i8] c"rdma_resolve_addr failed: %d\0A\00", align 1
@ISER_CONN_UP = common dso_local global i64 0, align 8
@EIO = common dso_local global i32 0, align 4
@ig = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@ISER_CONN_DOWN = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @iser_connect(%struct.iser_conn* %0, %struct.sockaddr_in* %1, %struct.sockaddr_in* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.iser_conn*, align 8
  %7 = alloca %struct.sockaddr_in*, align 8
  %8 = alloca %struct.sockaddr_in*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.sockaddr*, align 8
  %11 = alloca %struct.sockaddr*, align 8
  %12 = alloca i32, align 4
  store %struct.iser_conn* %0, %struct.iser_conn** %6, align 8
  store %struct.sockaddr_in* %1, %struct.sockaddr_in** %7, align 8
  store %struct.sockaddr_in* %2, %struct.sockaddr_in** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 0, i32* %12, align 4
  %13 = load %struct.iser_conn*, %struct.iser_conn** %6, align 8
  %14 = getelementptr inbounds %struct.iser_conn, %struct.iser_conn* %13, i32 0, i32 5
  %15 = load i32, i32* %14, align 8
  %16 = load %struct.sockaddr_in*, %struct.sockaddr_in** %8, align 8
  %17 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load %struct.sockaddr_in*, %struct.sockaddr_in** %8, align 8
  %20 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @sprintf(i32 %15, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32* %18, i32 %21)
  %23 = load %struct.iser_conn*, %struct.iser_conn** %6, align 8
  %24 = getelementptr inbounds %struct.iser_conn, %struct.iser_conn* %23, i32 0, i32 4
  store i32* null, i32** %24, align 8
  %25 = load %struct.sockaddr_in*, %struct.sockaddr_in** %8, align 8
  %26 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %25, i32 0, i32 1
  %27 = load %struct.sockaddr_in*, %struct.sockaddr_in** %8, align 8
  %28 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @iser_info(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), %struct.TYPE_3__* %26, i32 %29)
  %31 = load i64, i64* @ISER_CONN_PENDING, align 8
  %32 = load %struct.iser_conn*, %struct.iser_conn** %6, align 8
  %33 = getelementptr inbounds %struct.iser_conn, %struct.iser_conn* %32, i32 0, i32 0
  store i64 %31, i64* %33, align 8
  %34 = load %struct.iser_conn*, %struct.iser_conn** %6, align 8
  %35 = call i32 @iser_conn_get(%struct.iser_conn* %34)
  %36 = load i32, i32* @iser_cma_handler, align 4
  %37 = load %struct.iser_conn*, %struct.iser_conn** %6, align 8
  %38 = bitcast %struct.iser_conn* %37 to i8*
  %39 = load i32, i32* @RDMA_PS_TCP, align 4
  %40 = load i32, i32* @IB_QPT_RC, align 4
  %41 = call i32* @rdma_create_id(i32 %36, i8* %38, i32 %39, i32 %40)
  %42 = load %struct.iser_conn*, %struct.iser_conn** %6, align 8
  %43 = getelementptr inbounds %struct.iser_conn, %struct.iser_conn* %42, i32 0, i32 1
  store i32* %41, i32** %43, align 8
  %44 = load %struct.iser_conn*, %struct.iser_conn** %6, align 8
  %45 = getelementptr inbounds %struct.iser_conn, %struct.iser_conn* %44, i32 0, i32 1
  %46 = load i32*, i32** %45, align 8
  %47 = call i64 @IS_ERR(i32* %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %56

49:                                               ; preds = %4
  %50 = load %struct.iser_conn*, %struct.iser_conn** %6, align 8
  %51 = getelementptr inbounds %struct.iser_conn, %struct.iser_conn* %50, i32 0, i32 1
  %52 = load i32*, i32** %51, align 8
  %53 = call i32 @PTR_ERR(i32* %52)
  store i32 %53, i32* %12, align 4
  %54 = load i32, i32* %12, align 4
  %55 = call i32 @iser_err(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i32 %54)
  br label %101

56:                                               ; preds = %4
  %57 = load %struct.sockaddr_in*, %struct.sockaddr_in** %7, align 8
  %58 = bitcast %struct.sockaddr_in* %57 to %struct.sockaddr*
  store %struct.sockaddr* %58, %struct.sockaddr** %10, align 8
  %59 = load %struct.sockaddr_in*, %struct.sockaddr_in** %8, align 8
  %60 = bitcast %struct.sockaddr_in* %59 to %struct.sockaddr*
  store %struct.sockaddr* %60, %struct.sockaddr** %11, align 8
  %61 = load %struct.iser_conn*, %struct.iser_conn** %6, align 8
  %62 = getelementptr inbounds %struct.iser_conn, %struct.iser_conn* %61, i32 0, i32 1
  %63 = load i32*, i32** %62, align 8
  %64 = load %struct.sockaddr*, %struct.sockaddr** %10, align 8
  %65 = load %struct.sockaddr*, %struct.sockaddr** %11, align 8
  %66 = call i32 @rdma_resolve_addr(i32* %63, %struct.sockaddr* %64, %struct.sockaddr* %65, i32 1000)
  store i32 %66, i32* %12, align 4
  %67 = load i32, i32* %12, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %72

69:                                               ; preds = %56
  %70 = load i32, i32* %12, align 4
  %71 = call i32 @iser_err(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0), i32 %70)
  br label %104

72:                                               ; preds = %56
  %73 = load i32, i32* %9, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %95, label %75

75:                                               ; preds = %72
  %76 = load %struct.iser_conn*, %struct.iser_conn** %6, align 8
  %77 = getelementptr inbounds %struct.iser_conn, %struct.iser_conn* %76, i32 0, i32 3
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.iser_conn*, %struct.iser_conn** %6, align 8
  %80 = getelementptr inbounds %struct.iser_conn, %struct.iser_conn* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = load i64, i64* @ISER_CONN_PENDING, align 8
  %83 = icmp ne i64 %81, %82
  %84 = zext i1 %83 to i32
  %85 = call i32 @wait_event_interruptible(i32 %78, i32 %84)
  %86 = load %struct.iser_conn*, %struct.iser_conn** %6, align 8
  %87 = getelementptr inbounds %struct.iser_conn, %struct.iser_conn* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = load i64, i64* @ISER_CONN_UP, align 8
  %90 = icmp ne i64 %88, %89
  br i1 %90, label %91, label %94

91:                                               ; preds = %75
  %92 = load i32, i32* @EIO, align 4
  %93 = sub nsw i32 0, %92
  store i32 %93, i32* %12, align 4
  br label %110

94:                                               ; preds = %75
  br label %95

95:                                               ; preds = %94, %72
  %96 = call i32 @mutex_lock(i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @ig, i32 0, i32 0))
  %97 = load %struct.iser_conn*, %struct.iser_conn** %6, align 8
  %98 = getelementptr inbounds %struct.iser_conn, %struct.iser_conn* %97, i32 0, i32 2
  %99 = call i32 @list_add(i32* %98, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @ig, i32 0, i32 1))
  %100 = call i32 @mutex_unlock(i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @ig, i32 0, i32 0))
  store i32 0, i32* %5, align 4
  br label %114

101:                                              ; preds = %49
  %102 = load %struct.iser_conn*, %struct.iser_conn** %6, align 8
  %103 = getelementptr inbounds %struct.iser_conn, %struct.iser_conn* %102, i32 0, i32 1
  store i32* null, i32** %103, align 8
  br label %104

104:                                              ; preds = %101, %69
  %105 = load i64, i64* @ISER_CONN_DOWN, align 8
  %106 = load %struct.iser_conn*, %struct.iser_conn** %6, align 8
  %107 = getelementptr inbounds %struct.iser_conn, %struct.iser_conn* %106, i32 0, i32 0
  store i64 %105, i64* %107, align 8
  %108 = load %struct.iser_conn*, %struct.iser_conn** %6, align 8
  %109 = call i32 @iser_conn_put(%struct.iser_conn* %108, i32 1)
  br label %110

110:                                              ; preds = %104, %91
  %111 = load %struct.iser_conn*, %struct.iser_conn** %6, align 8
  %112 = call i32 @iser_conn_put(%struct.iser_conn* %111, i32 1)
  %113 = load i32, i32* %12, align 4
  store i32 %113, i32* %5, align 4
  br label %114

114:                                              ; preds = %110, %95
  %115 = load i32, i32* %5, align 4
  ret i32 %115
}

declare dso_local i32 @sprintf(i32, i8*, i32*, i32) #1

declare dso_local i32 @iser_info(i8*, %struct.TYPE_3__*, i32) #1

declare dso_local i32 @iser_conn_get(%struct.iser_conn*) #1

declare dso_local i32* @rdma_create_id(i32, i8*, i32, i32) #1

declare dso_local i64 @IS_ERR(i32*) #1

declare dso_local i32 @PTR_ERR(i32*) #1

declare dso_local i32 @iser_err(i8*, i32) #1

declare dso_local i32 @rdma_resolve_addr(i32*, %struct.sockaddr*, %struct.sockaddr*, i32) #1

declare dso_local i32 @wait_event_interruptible(i32, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @iser_conn_put(%struct.iser_conn*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
