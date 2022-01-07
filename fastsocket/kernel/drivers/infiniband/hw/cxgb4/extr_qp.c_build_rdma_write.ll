; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/cxgb4/extr_qp.c_build_rdma_write.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/cxgb4/extr_qp.c_build_rdma_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.t4_sq = type { i64, i32* }
%union.t4_wr = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i8*, %struct.TYPE_8__, i32, i8*, i64 }
%struct.TYPE_8__ = type { %struct.TYPE_10__*, i32 }
%struct.TYPE_10__ = type { i64, i64, i64, i32 }
%struct.ib_send_wr = type { i32, i32, i32, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32 }

@T4_MAX_SEND_SGE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@IB_SEND_INLINE = common dso_local global i32 0, align 4
@T4_MAX_WRITE_INLINE = common dso_local global i32 0, align 4
@FW_RI_DATA_IMMD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.t4_sq*, %union.t4_wr*, %struct.ib_send_wr*, i32*)* @build_rdma_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @build_rdma_write(%struct.t4_sq* %0, %union.t4_wr* %1, %struct.ib_send_wr* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.t4_sq*, align 8
  %7 = alloca %union.t4_wr*, align 8
  %8 = alloca %struct.ib_send_wr*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.t4_sq* %0, %struct.t4_sq** %6, align 8
  store %union.t4_wr* %1, %union.t4_wr** %7, align 8
  store %struct.ib_send_wr* %2, %struct.ib_send_wr** %8, align 8
  store i32* %3, i32** %9, align 8
  %13 = load %struct.ib_send_wr*, %struct.ib_send_wr** %8, align 8
  %14 = getelementptr inbounds %struct.ib_send_wr, %struct.ib_send_wr* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @T4_MAX_SEND_SGE, align 4
  %17 = icmp sgt i32 %15, %16
  br i1 %17, label %18, label %21

18:                                               ; preds = %4
  %19 = load i32, i32* @EINVAL, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %5, align 4
  br label %148

21:                                               ; preds = %4
  %22 = load %union.t4_wr*, %union.t4_wr** %7, align 8
  %23 = bitcast %union.t4_wr* %22 to %struct.TYPE_9__*
  %24 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %23, i32 0, i32 4
  store i64 0, i64* %24, align 8
  %25 = load %struct.ib_send_wr*, %struct.ib_send_wr** %8, align 8
  %26 = getelementptr inbounds %struct.ib_send_wr, %struct.ib_send_wr* %25, i32 0, i32 3
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i8* @cpu_to_be32(i32 %29)
  %31 = load %union.t4_wr*, %union.t4_wr** %7, align 8
  %32 = bitcast %union.t4_wr* %31 to %struct.TYPE_9__*
  %33 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %32, i32 0, i32 3
  store i8* %30, i8** %33, align 8
  %34 = load %struct.ib_send_wr*, %struct.ib_send_wr** %8, align 8
  %35 = getelementptr inbounds %struct.ib_send_wr, %struct.ib_send_wr* %34, i32 0, i32 3
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @cpu_to_be64(i32 %38)
  %40 = load %union.t4_wr*, %union.t4_wr** %7, align 8
  %41 = bitcast %union.t4_wr* %40 to %struct.TYPE_9__*
  %42 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %41, i32 0, i32 2
  store i32 %39, i32* %42, align 8
  %43 = load %struct.ib_send_wr*, %struct.ib_send_wr** %8, align 8
  %44 = getelementptr inbounds %struct.ib_send_wr, %struct.ib_send_wr* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %109

47:                                               ; preds = %21
  %48 = load %struct.ib_send_wr*, %struct.ib_send_wr** %8, align 8
  %49 = getelementptr inbounds %struct.ib_send_wr, %struct.ib_send_wr* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* @IB_SEND_INLINE, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %73

54:                                               ; preds = %47
  %55 = load %struct.t4_sq*, %struct.t4_sq** %6, align 8
  %56 = load %union.t4_wr*, %union.t4_wr** %7, align 8
  %57 = bitcast %union.t4_wr* %56 to %struct.TYPE_9__*
  %58 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %57, i32 0, i32 1
  %59 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %58, i32 0, i32 0
  %60 = load %struct.TYPE_10__*, %struct.TYPE_10__** %59, align 8
  %61 = load %struct.ib_send_wr*, %struct.ib_send_wr** %8, align 8
  %62 = load i32, i32* @T4_MAX_WRITE_INLINE, align 4
  %63 = call i32 @build_immd(%struct.t4_sq* %55, %struct.TYPE_10__* %60, %struct.ib_send_wr* %61, i32 %62, i32* %10)
  store i32 %63, i32* %12, align 4
  %64 = load i32, i32* %12, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %68

66:                                               ; preds = %54
  %67 = load i32, i32* %12, align 4
  store i32 %67, i32* %5, align 4
  br label %148

68:                                               ; preds = %54
  %69 = load i32, i32* %10, align 4
  %70 = sext i32 %69 to i64
  %71 = add i64 52, %70
  %72 = trunc i64 %71 to i32
  store i32 %72, i32* %11, align 4
  br label %108

73:                                               ; preds = %47
  %74 = load %struct.t4_sq*, %struct.t4_sq** %6, align 8
  %75 = getelementptr inbounds %struct.t4_sq, %struct.t4_sq* %74, i32 0, i32 1
  %76 = load i32*, i32** %75, align 8
  %77 = load %struct.t4_sq*, %struct.t4_sq** %6, align 8
  %78 = getelementptr inbounds %struct.t4_sq, %struct.t4_sq* %77, i32 0, i32 1
  %79 = load i32*, i32** %78, align 8
  %80 = load %struct.t4_sq*, %struct.t4_sq** %6, align 8
  %81 = getelementptr inbounds %struct.t4_sq, %struct.t4_sq* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = getelementptr inbounds i32, i32* %79, i64 %82
  %84 = load %union.t4_wr*, %union.t4_wr** %7, align 8
  %85 = bitcast %union.t4_wr* %84 to %struct.TYPE_9__*
  %86 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %85, i32 0, i32 1
  %87 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 8
  %89 = load %struct.ib_send_wr*, %struct.ib_send_wr** %8, align 8
  %90 = getelementptr inbounds %struct.ib_send_wr, %struct.ib_send_wr* %89, i32 0, i32 2
  %91 = load i32, i32* %90, align 4
  %92 = load %struct.ib_send_wr*, %struct.ib_send_wr** %8, align 8
  %93 = getelementptr inbounds %struct.ib_send_wr, %struct.ib_send_wr* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = call i32 @build_isgl(i32* %76, i32* %83, i32 %88, i32 %91, i32 %94, i32* %10)
  store i32 %95, i32* %12, align 4
  %96 = load i32, i32* %12, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %100

98:                                               ; preds = %73
  %99 = load i32, i32* %12, align 4
  store i32 %99, i32* %5, align 4
  br label %148

100:                                              ; preds = %73
  %101 = load %struct.ib_send_wr*, %struct.ib_send_wr** %8, align 8
  %102 = getelementptr inbounds %struct.ib_send_wr, %struct.ib_send_wr* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = sext i32 %103 to i64
  %105 = mul i64 %104, 4
  %106 = add i64 52, %105
  %107 = trunc i64 %106 to i32
  store i32 %107, i32* %11, align 4
  br label %108

108:                                              ; preds = %100, %68
  br label %139

109:                                              ; preds = %21
  %110 = load i32, i32* @FW_RI_DATA_IMMD, align 4
  %111 = load %union.t4_wr*, %union.t4_wr** %7, align 8
  %112 = bitcast %union.t4_wr* %111 to %struct.TYPE_9__*
  %113 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %112, i32 0, i32 1
  %114 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %113, i32 0, i32 0
  %115 = load %struct.TYPE_10__*, %struct.TYPE_10__** %114, align 8
  %116 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %115, i64 0
  %117 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %116, i32 0, i32 3
  store i32 %110, i32* %117, align 8
  %118 = load %union.t4_wr*, %union.t4_wr** %7, align 8
  %119 = bitcast %union.t4_wr* %118 to %struct.TYPE_9__*
  %120 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %119, i32 0, i32 1
  %121 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %120, i32 0, i32 0
  %122 = load %struct.TYPE_10__*, %struct.TYPE_10__** %121, align 8
  %123 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %122, i64 0
  %124 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %123, i32 0, i32 2
  store i64 0, i64* %124, align 8
  %125 = load %union.t4_wr*, %union.t4_wr** %7, align 8
  %126 = bitcast %union.t4_wr* %125 to %struct.TYPE_9__*
  %127 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %126, i32 0, i32 1
  %128 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %127, i32 0, i32 0
  %129 = load %struct.TYPE_10__*, %struct.TYPE_10__** %128, align 8
  %130 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %129, i64 0
  %131 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %130, i32 0, i32 1
  store i64 0, i64* %131, align 8
  %132 = load %union.t4_wr*, %union.t4_wr** %7, align 8
  %133 = bitcast %union.t4_wr* %132 to %struct.TYPE_9__*
  %134 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %133, i32 0, i32 1
  %135 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %134, i32 0, i32 0
  %136 = load %struct.TYPE_10__*, %struct.TYPE_10__** %135, align 8
  %137 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %136, i64 0
  %138 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %137, i32 0, i32 0
  store i64 0, i64* %138, align 8
  store i32 52, i32* %11, align 4
  store i32 0, i32* %10, align 4
  br label %139

139:                                              ; preds = %109, %108
  %140 = load i32, i32* %11, align 4
  %141 = call i32 @DIV_ROUND_UP(i32 %140, i32 16)
  %142 = load i32*, i32** %9, align 8
  store i32 %141, i32* %142, align 4
  %143 = load i32, i32* %10, align 4
  %144 = call i8* @cpu_to_be32(i32 %143)
  %145 = load %union.t4_wr*, %union.t4_wr** %7, align 8
  %146 = bitcast %union.t4_wr* %145 to %struct.TYPE_9__*
  %147 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %146, i32 0, i32 0
  store i8* %144, i8** %147, align 8
  store i32 0, i32* %5, align 4
  br label %148

148:                                              ; preds = %139, %98, %66, %18
  %149 = load i32, i32* %5, align 4
  ret i32 %149
}

declare dso_local i8* @cpu_to_be32(i32) #1

declare dso_local i32 @cpu_to_be64(i32) #1

declare dso_local i32 @build_immd(%struct.t4_sq*, %struct.TYPE_10__*, %struct.ib_send_wr*, i32, i32*) #1

declare dso_local i32 @build_isgl(i32*, i32*, i32, i32, i32, i32*) #1

declare dso_local i32 @DIV_ROUND_UP(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
