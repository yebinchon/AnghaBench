; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_ibmveth.c_ibmveth_rxq_recycle_buffer.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_ibmveth.c_ibmveth_rxq_recycle_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ibmveth_adapter = type { %struct.TYPE_9__, i32, %struct.TYPE_7__*, %struct.TYPE_10__* }
%struct.TYPE_9__ = type { i64, i64, i32, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_10__ = type { i32, i32, i32*, i32 }
%union.ibmveth_buf_desc = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32 }

@IBMVETH_NUM_BUFF_POOLS = common dso_local global i32 0, align 4
@IBMVETH_BUF_VALID = common dso_local global i32 0, align 4
@H_SUCCESS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [54 x i8] c"h_add_logical_lan_buffer failed during recycle rc=%ld\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ibmveth_adapter*)* @ibmveth_rxq_recycle_buffer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ibmveth_rxq_recycle_buffer(%struct.ibmveth_adapter* %0) #0 {
  %2 = alloca %struct.ibmveth_adapter*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %union.ibmveth_buf_desc, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.ibmveth_adapter* %0, %struct.ibmveth_adapter** %2, align 8
  %10 = load %struct.ibmveth_adapter*, %struct.ibmveth_adapter** %2, align 8
  %11 = getelementptr inbounds %struct.ibmveth_adapter, %struct.ibmveth_adapter* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  store i64 %13, i64* %3, align 8
  %14 = load %struct.ibmveth_adapter*, %struct.ibmveth_adapter** %2, align 8
  %15 = getelementptr inbounds %struct.ibmveth_adapter, %struct.ibmveth_adapter* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %15, i32 0, i32 3
  %17 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  %18 = load i64, i64* %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i64 %18
  %20 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %4, align 4
  %22 = load i32, i32* %4, align 4
  %23 = ashr i32 %22, 32
  store i32 %23, i32* %5, align 4
  %24 = load i32, i32* %4, align 4
  %25 = sext i32 %24 to i64
  %26 = and i64 %25, 4294967295
  %27 = trunc i64 %26 to i32
  store i32 %27, i32* %6, align 4
  store i32 1, i32* %9, align 4
  %28 = load i32, i32* %5, align 4
  %29 = load i32, i32* @IBMVETH_NUM_BUFF_POOLS, align 4
  %30 = icmp uge i32 %28, %29
  %31 = zext i1 %30 to i32
  %32 = call i32 @BUG_ON(i32 %31)
  %33 = load i32, i32* %6, align 4
  %34 = load %struct.ibmveth_adapter*, %struct.ibmveth_adapter** %2, align 8
  %35 = getelementptr inbounds %struct.ibmveth_adapter, %struct.ibmveth_adapter* %34, i32 0, i32 3
  %36 = load %struct.TYPE_10__*, %struct.TYPE_10__** %35, align 8
  %37 = load i32, i32* %5, align 4
  %38 = zext i32 %37 to i64
  %39 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %36, i64 %38
  %40 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = icmp uge i32 %33, %41
  %43 = zext i1 %42 to i32
  %44 = call i32 @BUG_ON(i32 %43)
  %45 = load %struct.ibmveth_adapter*, %struct.ibmveth_adapter** %2, align 8
  %46 = getelementptr inbounds %struct.ibmveth_adapter, %struct.ibmveth_adapter* %45, i32 0, i32 3
  %47 = load %struct.TYPE_10__*, %struct.TYPE_10__** %46, align 8
  %48 = load i32, i32* %5, align 4
  %49 = zext i32 %48 to i64
  %50 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %47, i64 %49
  %51 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %50, i32 0, i32 3
  %52 = load i32, i32* %51, align 8
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %65, label %54

54:                                               ; preds = %1
  %55 = load %struct.ibmveth_adapter*, %struct.ibmveth_adapter** %2, align 8
  %56 = call i32 @ibmveth_rxq_harvest_buffer(%struct.ibmveth_adapter* %55)
  %57 = load %struct.ibmveth_adapter*, %struct.ibmveth_adapter** %2, align 8
  %58 = load %struct.ibmveth_adapter*, %struct.ibmveth_adapter** %2, align 8
  %59 = getelementptr inbounds %struct.ibmveth_adapter, %struct.ibmveth_adapter* %58, i32 0, i32 3
  %60 = load %struct.TYPE_10__*, %struct.TYPE_10__** %59, align 8
  %61 = load i32, i32* %5, align 4
  %62 = zext i32 %61 to i64
  %63 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %60, i64 %62
  %64 = call i32 @ibmveth_free_buffer_pool(%struct.ibmveth_adapter* %57, %struct.TYPE_10__* %63)
  br label %148

65:                                               ; preds = %1
  %66 = load i32, i32* @IBMVETH_BUF_VALID, align 4
  %67 = load %struct.ibmveth_adapter*, %struct.ibmveth_adapter** %2, align 8
  %68 = getelementptr inbounds %struct.ibmveth_adapter, %struct.ibmveth_adapter* %67, i32 0, i32 3
  %69 = load %struct.TYPE_10__*, %struct.TYPE_10__** %68, align 8
  %70 = load i32, i32* %5, align 4
  %71 = zext i32 %70 to i64
  %72 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %69, i64 %71
  %73 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = or i32 %66, %74
  %76 = bitcast %union.ibmveth_buf_desc* %7 to %struct.TYPE_6__*
  %77 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %76, i32 0, i32 0
  store i32 %75, i32* %77, align 4
  %78 = load %struct.ibmveth_adapter*, %struct.ibmveth_adapter** %2, align 8
  %79 = getelementptr inbounds %struct.ibmveth_adapter, %struct.ibmveth_adapter* %78, i32 0, i32 3
  %80 = load %struct.TYPE_10__*, %struct.TYPE_10__** %79, align 8
  %81 = load i32, i32* %5, align 4
  %82 = zext i32 %81 to i64
  %83 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %80, i64 %82
  %84 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %83, i32 0, i32 2
  %85 = load i32*, i32** %84, align 8
  %86 = load i32, i32* %6, align 4
  %87 = zext i32 %86 to i64
  %88 = getelementptr inbounds i32, i32* %85, i64 %87
  %89 = load i32, i32* %88, align 4
  %90 = bitcast %union.ibmveth_buf_desc* %7 to %struct.TYPE_6__*
  %91 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %90, i32 0, i32 1
  store i32 %89, i32* %91, align 4
  %92 = load %struct.ibmveth_adapter*, %struct.ibmveth_adapter** %2, align 8
  %93 = getelementptr inbounds %struct.ibmveth_adapter, %struct.ibmveth_adapter* %92, i32 0, i32 2
  %94 = load %struct.TYPE_7__*, %struct.TYPE_7__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = bitcast %union.ibmveth_buf_desc* %7 to i32*
  %98 = load i32, i32* %97, align 4
  %99 = call i64 @h_add_logical_lan_buffer(i32 %96, i32 %98)
  store i64 %99, i64* %8, align 8
  %100 = load i64, i64* %8, align 8
  %101 = load i64, i64* @H_SUCCESS, align 8
  %102 = icmp ne i64 %100, %101
  br i1 %102, label %103, label %122

103:                                              ; preds = %65
  %104 = load %struct.ibmveth_adapter*, %struct.ibmveth_adapter** %2, align 8
  %105 = getelementptr inbounds %struct.ibmveth_adapter, %struct.ibmveth_adapter* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 8
  %107 = load i64, i64* %8, align 8
  %108 = call i32 @netdev_dbg(i32 %106, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i64 0, i64 0), i64 %107)
  %109 = load %struct.ibmveth_adapter*, %struct.ibmveth_adapter** %2, align 8
  %110 = load %struct.ibmveth_adapter*, %struct.ibmveth_adapter** %2, align 8
  %111 = getelementptr inbounds %struct.ibmveth_adapter, %struct.ibmveth_adapter* %110, i32 0, i32 0
  %112 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %111, i32 0, i32 3
  %113 = load %struct.TYPE_8__*, %struct.TYPE_8__** %112, align 8
  %114 = load %struct.ibmveth_adapter*, %struct.ibmveth_adapter** %2, align 8
  %115 = getelementptr inbounds %struct.ibmveth_adapter, %struct.ibmveth_adapter* %114, i32 0, i32 0
  %116 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %115, i32 0, i32 0
  %117 = load i64, i64* %116, align 8
  %118 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %113, i64 %117
  %119 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 4
  %121 = call i32 @ibmveth_remove_buffer_from_pool(%struct.ibmveth_adapter* %109, i32 %120)
  store i32 0, i32* %9, align 4
  br label %122

122:                                              ; preds = %103, %65
  %123 = load %struct.ibmveth_adapter*, %struct.ibmveth_adapter** %2, align 8
  %124 = getelementptr inbounds %struct.ibmveth_adapter, %struct.ibmveth_adapter* %123, i32 0, i32 0
  %125 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %124, i32 0, i32 0
  %126 = load i64, i64* %125, align 8
  %127 = add i64 %126, 1
  store i64 %127, i64* %125, align 8
  %128 = load %struct.ibmveth_adapter*, %struct.ibmveth_adapter** %2, align 8
  %129 = getelementptr inbounds %struct.ibmveth_adapter, %struct.ibmveth_adapter* %128, i32 0, i32 0
  %130 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %129, i32 0, i32 1
  %131 = load i64, i64* %130, align 8
  %132 = icmp eq i64 %127, %131
  br i1 %132, label %133, label %147

133:                                              ; preds = %122
  %134 = load %struct.ibmveth_adapter*, %struct.ibmveth_adapter** %2, align 8
  %135 = getelementptr inbounds %struct.ibmveth_adapter, %struct.ibmveth_adapter* %134, i32 0, i32 0
  %136 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %135, i32 0, i32 0
  store i64 0, i64* %136, align 8
  %137 = load %struct.ibmveth_adapter*, %struct.ibmveth_adapter** %2, align 8
  %138 = getelementptr inbounds %struct.ibmveth_adapter, %struct.ibmveth_adapter* %137, i32 0, i32 0
  %139 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %138, i32 0, i32 2
  %140 = load i32, i32* %139, align 8
  %141 = icmp ne i32 %140, 0
  %142 = xor i1 %141, true
  %143 = zext i1 %142 to i32
  %144 = load %struct.ibmveth_adapter*, %struct.ibmveth_adapter** %2, align 8
  %145 = getelementptr inbounds %struct.ibmveth_adapter, %struct.ibmveth_adapter* %144, i32 0, i32 0
  %146 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %145, i32 0, i32 2
  store i32 %143, i32* %146, align 8
  br label %147

147:                                              ; preds = %133, %122
  br label %148

148:                                              ; preds = %147, %54
  %149 = load i32, i32* %9, align 4
  ret i32 %149
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @ibmveth_rxq_harvest_buffer(%struct.ibmveth_adapter*) #1

declare dso_local i32 @ibmveth_free_buffer_pool(%struct.ibmveth_adapter*, %struct.TYPE_10__*) #1

declare dso_local i64 @h_add_logical_lan_buffer(i32, i32) #1

declare dso_local i32 @netdev_dbg(i32, i8*, i64) #1

declare dso_local i32 @ibmveth_remove_buffer_from_pool(%struct.ibmveth_adapter*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
