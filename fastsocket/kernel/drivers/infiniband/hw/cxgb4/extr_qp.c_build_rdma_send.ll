; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/cxgb4/extr_qp.c_build_rdma_send.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/cxgb4/extr_qp.c_build_rdma_send.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.t4_sq = type { i64, i32* }
%union.t4_wr = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i8*, %struct.TYPE_6__, i8*, i8* }
%struct.TYPE_6__ = type { %struct.TYPE_8__*, i32 }
%struct.TYPE_8__ = type { i64, i64, i64, i32 }
%struct.ib_send_wr = type { i32, i32, i32, i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }

@T4_MAX_SEND_SGE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@IB_SEND_SOLICITED = common dso_local global i32 0, align 4
@FW_RI_SEND_WITH_SE = common dso_local global i32 0, align 4
@FW_RI_SEND = common dso_local global i32 0, align 4
@FW_RI_SEND_WITH_SE_INV = common dso_local global i32 0, align 4
@FW_RI_SEND_WITH_INV = common dso_local global i32 0, align 4
@IB_SEND_INLINE = common dso_local global i32 0, align 4
@T4_MAX_SEND_INLINE = common dso_local global i32 0, align 4
@FW_RI_DATA_IMMD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.t4_sq*, %union.t4_wr*, %struct.ib_send_wr*, i32*)* @build_rdma_send to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @build_rdma_send(%struct.t4_sq* %0, %union.t4_wr* %1, %struct.ib_send_wr* %2, i32* %3) #0 {
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
  br label %189

21:                                               ; preds = %4
  %22 = load %struct.ib_send_wr*, %struct.ib_send_wr** %8, align 8
  %23 = getelementptr inbounds %struct.ib_send_wr, %struct.ib_send_wr* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  switch i32 %24, label %80 [
    i32 129, label %25
    i32 128, label %50
  ]

25:                                               ; preds = %21
  %26 = load %struct.ib_send_wr*, %struct.ib_send_wr** %8, align 8
  %27 = getelementptr inbounds %struct.ib_send_wr, %struct.ib_send_wr* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @IB_SEND_SOLICITED, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %39

32:                                               ; preds = %25
  %33 = load i32, i32* @FW_RI_SEND_WITH_SE, align 4
  %34 = call i32 @V_FW_RI_SEND_WR_SENDOP(i32 %33)
  %35 = call i8* @cpu_to_be32(i32 %34)
  %36 = load %union.t4_wr*, %union.t4_wr** %7, align 8
  %37 = bitcast %union.t4_wr* %36 to %struct.TYPE_7__*
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %37, i32 0, i32 3
  store i8* %35, i8** %38, align 8
  br label %46

39:                                               ; preds = %25
  %40 = load i32, i32* @FW_RI_SEND, align 4
  %41 = call i32 @V_FW_RI_SEND_WR_SENDOP(i32 %40)
  %42 = call i8* @cpu_to_be32(i32 %41)
  %43 = load %union.t4_wr*, %union.t4_wr** %7, align 8
  %44 = bitcast %union.t4_wr* %43 to %struct.TYPE_7__*
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %44, i32 0, i32 3
  store i8* %42, i8** %45, align 8
  br label %46

46:                                               ; preds = %39, %32
  %47 = load %union.t4_wr*, %union.t4_wr** %7, align 8
  %48 = bitcast %union.t4_wr* %47 to %struct.TYPE_7__*
  %49 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %48, i32 0, i32 2
  store i8* null, i8** %49, align 8
  br label %83

50:                                               ; preds = %21
  %51 = load %struct.ib_send_wr*, %struct.ib_send_wr** %8, align 8
  %52 = getelementptr inbounds %struct.ib_send_wr, %struct.ib_send_wr* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* @IB_SEND_SOLICITED, align 4
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %64

57:                                               ; preds = %50
  %58 = load i32, i32* @FW_RI_SEND_WITH_SE_INV, align 4
  %59 = call i32 @V_FW_RI_SEND_WR_SENDOP(i32 %58)
  %60 = call i8* @cpu_to_be32(i32 %59)
  %61 = load %union.t4_wr*, %union.t4_wr** %7, align 8
  %62 = bitcast %union.t4_wr* %61 to %struct.TYPE_7__*
  %63 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %62, i32 0, i32 3
  store i8* %60, i8** %63, align 8
  br label %71

64:                                               ; preds = %50
  %65 = load i32, i32* @FW_RI_SEND_WITH_INV, align 4
  %66 = call i32 @V_FW_RI_SEND_WR_SENDOP(i32 %65)
  %67 = call i8* @cpu_to_be32(i32 %66)
  %68 = load %union.t4_wr*, %union.t4_wr** %7, align 8
  %69 = bitcast %union.t4_wr* %68 to %struct.TYPE_7__*
  %70 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %69, i32 0, i32 3
  store i8* %67, i8** %70, align 8
  br label %71

71:                                               ; preds = %64, %57
  %72 = load %struct.ib_send_wr*, %struct.ib_send_wr** %8, align 8
  %73 = getelementptr inbounds %struct.ib_send_wr, %struct.ib_send_wr* %72, i32 0, i32 4
  %74 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = call i8* @cpu_to_be32(i32 %75)
  %77 = load %union.t4_wr*, %union.t4_wr** %7, align 8
  %78 = bitcast %union.t4_wr* %77 to %struct.TYPE_7__*
  %79 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %78, i32 0, i32 2
  store i8* %76, i8** %79, align 8
  br label %83

80:                                               ; preds = %21
  %81 = load i32, i32* @EINVAL, align 4
  %82 = sub nsw i32 0, %81
  store i32 %82, i32* %5, align 4
  br label %189

83:                                               ; preds = %71, %46
  store i32 0, i32* %10, align 4
  %84 = load %struct.ib_send_wr*, %struct.ib_send_wr** %8, align 8
  %85 = getelementptr inbounds %struct.ib_send_wr, %struct.ib_send_wr* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %150

88:                                               ; preds = %83
  %89 = load %struct.ib_send_wr*, %struct.ib_send_wr** %8, align 8
  %90 = getelementptr inbounds %struct.ib_send_wr, %struct.ib_send_wr* %89, i32 0, i32 2
  %91 = load i32, i32* %90, align 4
  %92 = load i32, i32* @IB_SEND_INLINE, align 4
  %93 = and i32 %91, %92
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %114

95:                                               ; preds = %88
  %96 = load %struct.t4_sq*, %struct.t4_sq** %6, align 8
  %97 = load %union.t4_wr*, %union.t4_wr** %7, align 8
  %98 = bitcast %union.t4_wr* %97 to %struct.TYPE_7__*
  %99 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %98, i32 0, i32 1
  %100 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %99, i32 0, i32 0
  %101 = load %struct.TYPE_8__*, %struct.TYPE_8__** %100, align 8
  %102 = load %struct.ib_send_wr*, %struct.ib_send_wr** %8, align 8
  %103 = load i32, i32* @T4_MAX_SEND_INLINE, align 4
  %104 = call i32 @build_immd(%struct.t4_sq* %96, %struct.TYPE_8__* %101, %struct.ib_send_wr* %102, i32 %103, i32* %10)
  store i32 %104, i32* %12, align 4
  %105 = load i32, i32* %12, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %109

107:                                              ; preds = %95
  %108 = load i32, i32* %12, align 4
  store i32 %108, i32* %5, align 4
  br label %189

109:                                              ; preds = %95
  %110 = load i32, i32* %10, align 4
  %111 = sext i32 %110 to i64
  %112 = add i64 44, %111
  %113 = trunc i64 %112 to i32
  store i32 %113, i32* %11, align 4
  br label %149

114:                                              ; preds = %88
  %115 = load %struct.t4_sq*, %struct.t4_sq** %6, align 8
  %116 = getelementptr inbounds %struct.t4_sq, %struct.t4_sq* %115, i32 0, i32 1
  %117 = load i32*, i32** %116, align 8
  %118 = load %struct.t4_sq*, %struct.t4_sq** %6, align 8
  %119 = getelementptr inbounds %struct.t4_sq, %struct.t4_sq* %118, i32 0, i32 1
  %120 = load i32*, i32** %119, align 8
  %121 = load %struct.t4_sq*, %struct.t4_sq** %6, align 8
  %122 = getelementptr inbounds %struct.t4_sq, %struct.t4_sq* %121, i32 0, i32 0
  %123 = load i64, i64* %122, align 8
  %124 = getelementptr inbounds i32, i32* %120, i64 %123
  %125 = load %union.t4_wr*, %union.t4_wr** %7, align 8
  %126 = bitcast %union.t4_wr* %125 to %struct.TYPE_7__*
  %127 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %126, i32 0, i32 1
  %128 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %127, i32 0, i32 1
  %129 = load i32, i32* %128, align 8
  %130 = load %struct.ib_send_wr*, %struct.ib_send_wr** %8, align 8
  %131 = getelementptr inbounds %struct.ib_send_wr, %struct.ib_send_wr* %130, i32 0, i32 3
  %132 = load i32, i32* %131, align 4
  %133 = load %struct.ib_send_wr*, %struct.ib_send_wr** %8, align 8
  %134 = getelementptr inbounds %struct.ib_send_wr, %struct.ib_send_wr* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 4
  %136 = call i32 @build_isgl(i32* %117, i32* %124, i32 %129, i32 %132, i32 %135, i32* %10)
  store i32 %136, i32* %12, align 4
  %137 = load i32, i32* %12, align 4
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %141

139:                                              ; preds = %114
  %140 = load i32, i32* %12, align 4
  store i32 %140, i32* %5, align 4
  br label %189

141:                                              ; preds = %114
  %142 = load %struct.ib_send_wr*, %struct.ib_send_wr** %8, align 8
  %143 = getelementptr inbounds %struct.ib_send_wr, %struct.ib_send_wr* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 4
  %145 = sext i32 %144 to i64
  %146 = mul i64 %145, 4
  %147 = add i64 44, %146
  %148 = trunc i64 %147 to i32
  store i32 %148, i32* %11, align 4
  br label %149

149:                                              ; preds = %141, %109
  br label %180

150:                                              ; preds = %83
  %151 = load i32, i32* @FW_RI_DATA_IMMD, align 4
  %152 = load %union.t4_wr*, %union.t4_wr** %7, align 8
  %153 = bitcast %union.t4_wr* %152 to %struct.TYPE_7__*
  %154 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %153, i32 0, i32 1
  %155 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %154, i32 0, i32 0
  %156 = load %struct.TYPE_8__*, %struct.TYPE_8__** %155, align 8
  %157 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %156, i64 0
  %158 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %157, i32 0, i32 3
  store i32 %151, i32* %158, align 8
  %159 = load %union.t4_wr*, %union.t4_wr** %7, align 8
  %160 = bitcast %union.t4_wr* %159 to %struct.TYPE_7__*
  %161 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %160, i32 0, i32 1
  %162 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %161, i32 0, i32 0
  %163 = load %struct.TYPE_8__*, %struct.TYPE_8__** %162, align 8
  %164 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %163, i64 0
  %165 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %164, i32 0, i32 2
  store i64 0, i64* %165, align 8
  %166 = load %union.t4_wr*, %union.t4_wr** %7, align 8
  %167 = bitcast %union.t4_wr* %166 to %struct.TYPE_7__*
  %168 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %167, i32 0, i32 1
  %169 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %168, i32 0, i32 0
  %170 = load %struct.TYPE_8__*, %struct.TYPE_8__** %169, align 8
  %171 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %170, i64 0
  %172 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %171, i32 0, i32 1
  store i64 0, i64* %172, align 8
  %173 = load %union.t4_wr*, %union.t4_wr** %7, align 8
  %174 = bitcast %union.t4_wr* %173 to %struct.TYPE_7__*
  %175 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %174, i32 0, i32 1
  %176 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %175, i32 0, i32 0
  %177 = load %struct.TYPE_8__*, %struct.TYPE_8__** %176, align 8
  %178 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %177, i64 0
  %179 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %178, i32 0, i32 0
  store i64 0, i64* %179, align 8
  store i32 44, i32* %11, align 4
  store i32 0, i32* %10, align 4
  br label %180

180:                                              ; preds = %150, %149
  %181 = load i32, i32* %11, align 4
  %182 = call i32 @DIV_ROUND_UP(i32 %181, i32 16)
  %183 = load i32*, i32** %9, align 8
  store i32 %182, i32* %183, align 4
  %184 = load i32, i32* %10, align 4
  %185 = call i8* @cpu_to_be32(i32 %184)
  %186 = load %union.t4_wr*, %union.t4_wr** %7, align 8
  %187 = bitcast %union.t4_wr* %186 to %struct.TYPE_7__*
  %188 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %187, i32 0, i32 0
  store i8* %185, i8** %188, align 8
  store i32 0, i32* %5, align 4
  br label %189

189:                                              ; preds = %180, %139, %107, %80, %18
  %190 = load i32, i32* %5, align 4
  ret i32 %190
}

declare dso_local i8* @cpu_to_be32(i32) #1

declare dso_local i32 @V_FW_RI_SEND_WR_SENDOP(i32) #1

declare dso_local i32 @build_immd(%struct.t4_sq*, %struct.TYPE_8__*, %struct.ib_send_wr*, i32, i32*) #1

declare dso_local i32 @build_isgl(i32*, i32*, i32, i32, i32, i32*) #1

declare dso_local i32 @DIV_ROUND_UP(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
