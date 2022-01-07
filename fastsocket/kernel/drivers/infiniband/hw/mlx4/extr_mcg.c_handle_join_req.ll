; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/mlx4/extr_mcg.c_handle_join_req.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/mlx4/extr_mcg.c_handle_join_req.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mcast_group = type { i32, i32, %struct.TYPE_7__*, %struct.TYPE_9__ }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_9__ = type { i32 }
%struct.mcast_req = type { i64, i32, i32, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_6__, i64 }
%struct.TYPE_6__ = type { i32 }
%struct.ib_sa_mcmember_data = type { i32 }

@MCAST_JOIN_SENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mcast_group*, i32, %struct.mcast_req*)* @handle_join_req to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @handle_join_req(%struct.mcast_group* %0, i32 %1, %struct.mcast_req* %2) #0 {
  %4 = alloca %struct.mcast_group*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.mcast_req*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.ib_sa_mcmember_data*, align 8
  store %struct.mcast_group* %0, %struct.mcast_group** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.mcast_req* %2, %struct.mcast_req** %6, align 8
  %11 = load %struct.mcast_group*, %struct.mcast_group** %4, align 8
  %12 = getelementptr inbounds %struct.mcast_group, %struct.mcast_group* %11, i32 0, i32 3
  %13 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = and i32 %14, 7
  store i32 %15, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %16 = load %struct.mcast_req*, %struct.mcast_req** %6, align 8
  %17 = getelementptr inbounds %struct.mcast_req, %struct.mcast_req* %16, i32 0, i32 3
  %18 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = inttoptr i64 %19 to %struct.ib_sa_mcmember_data*
  store %struct.ib_sa_mcmember_data* %20, %struct.ib_sa_mcmember_data** %10, align 8
  %21 = load i32, i32* %5, align 4
  %22 = load i32, i32* %7, align 4
  %23 = load i32, i32* %5, align 4
  %24 = and i32 %22, %23
  %25 = icmp eq i32 %21, %24
  br i1 %25, label %26, label %74

26:                                               ; preds = %3
  %27 = load %struct.mcast_group*, %struct.mcast_group** %4, align 8
  %28 = getelementptr inbounds %struct.mcast_group, %struct.mcast_group* %27, i32 0, i32 3
  %29 = load %struct.ib_sa_mcmember_data*, %struct.ib_sa_mcmember_data** %10, align 8
  %30 = load %struct.mcast_req*, %struct.mcast_req** %6, align 8
  %31 = getelementptr inbounds %struct.mcast_req, %struct.mcast_req* %30, i32 0, i32 3
  %32 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = call i32 @cmp_rec(%struct.TYPE_9__* %28, %struct.ib_sa_mcmember_data* %29, i32 %34)
  store i32 %35, i32* %9, align 4
  %36 = load i32, i32* %9, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %45, label %38

38:                                               ; preds = %26
  %39 = load %struct.mcast_group*, %struct.mcast_group** %4, align 8
  %40 = load %struct.mcast_req*, %struct.mcast_req** %6, align 8
  %41 = getelementptr inbounds %struct.mcast_req, %struct.mcast_req* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i32, i32* %5, align 4
  %44 = call i32 @join_group(%struct.mcast_group* %39, i64 %42, i32 %43)
  br label %45

45:                                               ; preds = %38, %26
  %46 = load %struct.mcast_group*, %struct.mcast_group** %4, align 8
  %47 = getelementptr inbounds %struct.mcast_group, %struct.mcast_group* %46, i32 0, i32 2
  %48 = load %struct.TYPE_7__*, %struct.TYPE_7__** %47, align 8
  %49 = load %struct.mcast_req*, %struct.mcast_req** %6, align 8
  %50 = getelementptr inbounds %struct.mcast_req, %struct.mcast_req* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %48, i64 %51
  %53 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = add nsw i32 %54, -1
  store i32 %55, i32* %53, align 4
  %56 = load %struct.mcast_req*, %struct.mcast_req** %6, align 8
  %57 = getelementptr inbounds %struct.mcast_req, %struct.mcast_req* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = load %struct.mcast_group*, %struct.mcast_group** %4, align 8
  %60 = load %struct.mcast_req*, %struct.mcast_req** %6, align 8
  %61 = getelementptr inbounds %struct.mcast_req, %struct.mcast_req* %60, i32 0, i32 3
  %62 = load i32, i32* %9, align 4
  %63 = call i32 @send_reply_to_slave(i64 %58, %struct.mcast_group* %59, %struct.TYPE_8__* %61, i32 %62)
  %64 = load %struct.mcast_req*, %struct.mcast_req** %6, align 8
  %65 = getelementptr inbounds %struct.mcast_req, %struct.mcast_req* %64, i32 0, i32 2
  %66 = call i32 @list_del(i32* %65)
  %67 = load %struct.mcast_req*, %struct.mcast_req** %6, align 8
  %68 = getelementptr inbounds %struct.mcast_req, %struct.mcast_req* %67, i32 0, i32 1
  %69 = call i32 @list_del(i32* %68)
  %70 = load %struct.mcast_req*, %struct.mcast_req** %6, align 8
  %71 = call i32 @kfree(%struct.mcast_req* %70)
  %72 = load i32, i32* %8, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %8, align 4
  br label %114

74:                                               ; preds = %3
  %75 = load %struct.mcast_group*, %struct.mcast_group** %4, align 8
  %76 = getelementptr inbounds %struct.mcast_group, %struct.mcast_group* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = load %struct.mcast_group*, %struct.mcast_group** %4, align 8
  %79 = getelementptr inbounds %struct.mcast_group, %struct.mcast_group* %78, i32 0, i32 1
  store i32 %77, i32* %79, align 4
  %80 = load %struct.mcast_group*, %struct.mcast_group** %4, align 8
  %81 = load %struct.mcast_req*, %struct.mcast_req** %6, align 8
  %82 = getelementptr inbounds %struct.mcast_req, %struct.mcast_req* %81, i32 0, i32 3
  %83 = call i64 @send_join_to_wire(%struct.mcast_group* %80, %struct.TYPE_8__* %82)
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %109

85:                                               ; preds = %74
  %86 = load %struct.mcast_group*, %struct.mcast_group** %4, align 8
  %87 = getelementptr inbounds %struct.mcast_group, %struct.mcast_group* %86, i32 0, i32 2
  %88 = load %struct.TYPE_7__*, %struct.TYPE_7__** %87, align 8
  %89 = load %struct.mcast_req*, %struct.mcast_req** %6, align 8
  %90 = getelementptr inbounds %struct.mcast_req, %struct.mcast_req* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %88, i64 %91
  %93 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = add nsw i32 %94, -1
  store i32 %95, i32* %93, align 4
  %96 = load %struct.mcast_req*, %struct.mcast_req** %6, align 8
  %97 = getelementptr inbounds %struct.mcast_req, %struct.mcast_req* %96, i32 0, i32 2
  %98 = call i32 @list_del(i32* %97)
  %99 = load %struct.mcast_req*, %struct.mcast_req** %6, align 8
  %100 = getelementptr inbounds %struct.mcast_req, %struct.mcast_req* %99, i32 0, i32 1
  %101 = call i32 @list_del(i32* %100)
  %102 = load %struct.mcast_req*, %struct.mcast_req** %6, align 8
  %103 = call i32 @kfree(%struct.mcast_req* %102)
  store i32 1, i32* %8, align 4
  %104 = load %struct.mcast_group*, %struct.mcast_group** %4, align 8
  %105 = getelementptr inbounds %struct.mcast_group, %struct.mcast_group* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 4
  %107 = load %struct.mcast_group*, %struct.mcast_group** %4, align 8
  %108 = getelementptr inbounds %struct.mcast_group, %struct.mcast_group* %107, i32 0, i32 0
  store i32 %106, i32* %108, align 8
  br label %113

109:                                              ; preds = %74
  %110 = load i32, i32* @MCAST_JOIN_SENT, align 4
  %111 = load %struct.mcast_group*, %struct.mcast_group** %4, align 8
  %112 = getelementptr inbounds %struct.mcast_group, %struct.mcast_group* %111, i32 0, i32 0
  store i32 %110, i32* %112, align 8
  br label %113

113:                                              ; preds = %109, %85
  br label %114

114:                                              ; preds = %113, %45
  %115 = load i32, i32* %8, align 4
  ret i32 %115
}

declare dso_local i32 @cmp_rec(%struct.TYPE_9__*, %struct.ib_sa_mcmember_data*, i32) #1

declare dso_local i32 @join_group(%struct.mcast_group*, i64, i32) #1

declare dso_local i32 @send_reply_to_slave(i64, %struct.mcast_group*, %struct.TYPE_8__*, i32) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @kfree(%struct.mcast_req*) #1

declare dso_local i64 @send_join_to_wire(%struct.mcast_group*, %struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
