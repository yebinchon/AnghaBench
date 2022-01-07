; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/cxgb3/extr_iwch_qp.c_build_fastreg.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/cxgb3/extr_iwch_qp.c_build_fastreg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.t3_wr = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32*, i8*, i8*, i8*, i8*, i8* }
%struct.ib_send_wr = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32, i32, i32, i32, %struct.TYPE_8__*, i32, i64 }
%struct.TYPE_8__ = type { i64* }
%struct.t3_wq = type { i32, i64, i64 }
%struct.TYPE_7__ = type { i32* }

@T3_MAX_FASTREG_DEPTH = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@TPT_VATO = common dso_local global i32 0, align 4
@T3_MAX_FASTREG_FRAG = common dso_local global i32 0, align 4
@T3_WR_FASTREG = common dso_local global i32 0, align 4
@T3_EOP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%union.t3_wr*, %struct.ib_send_wr*, i32*, i32*, %struct.t3_wq*)* @build_fastreg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @build_fastreg(%union.t3_wr* %0, %struct.ib_send_wr* %1, i32* %2, i32* %3, %struct.t3_wq* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %union.t3_wr*, align 8
  %8 = alloca %struct.ib_send_wr*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.t3_wq*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  store %union.t3_wr* %0, %union.t3_wr** %7, align 8
  store %struct.ib_send_wr* %1, %struct.ib_send_wr** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store %struct.t3_wq* %4, %struct.t3_wq** %11, align 8
  %14 = load %struct.ib_send_wr*, %struct.ib_send_wr** %8, align 8
  %15 = getelementptr inbounds %struct.ib_send_wr, %struct.ib_send_wr* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = load i32, i32* @T3_MAX_FASTREG_DEPTH, align 4
  %20 = icmp sgt i32 %18, %19
  br i1 %20, label %21, label %24

21:                                               ; preds = %5
  %22 = load i32, i32* @EINVAL, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %6, align 4
  br label %184

24:                                               ; preds = %5
  %25 = load i32*, i32** %10, align 8
  store i32 1, i32* %25, align 4
  %26 = load %struct.ib_send_wr*, %struct.ib_send_wr** %8, align 8
  %27 = getelementptr inbounds %struct.ib_send_wr, %struct.ib_send_wr* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = call i8* @cpu_to_be32(i32 %30)
  %32 = load %union.t3_wr*, %union.t3_wr** %7, align 8
  %33 = bitcast %union.t3_wr* %32 to %struct.TYPE_6__*
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 5
  store i8* %31, i8** %34, align 8
  %35 = load %struct.ib_send_wr*, %struct.ib_send_wr** %8, align 8
  %36 = getelementptr inbounds %struct.ib_send_wr, %struct.ib_send_wr* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 8
  %40 = call i8* @cpu_to_be32(i32 %39)
  %41 = load %union.t3_wr*, %union.t3_wr** %7, align 8
  %42 = bitcast %union.t3_wr* %41 to %struct.TYPE_6__*
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 4
  store i8* %40, i8** %43, align 8
  %44 = load %struct.ib_send_wr*, %struct.ib_send_wr** %8, align 8
  %45 = getelementptr inbounds %struct.ib_send_wr, %struct.ib_send_wr* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %46, i32 0, i32 3
  %48 = load i32, i32* %47, align 4
  %49 = ashr i32 %48, 32
  %50 = call i8* @cpu_to_be32(i32 %49)
  %51 = load %union.t3_wr*, %union.t3_wr** %7, align 8
  %52 = bitcast %union.t3_wr* %51 to %struct.TYPE_6__*
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 3
  store i8* %50, i8** %53, align 8
  %54 = load %struct.ib_send_wr*, %struct.ib_send_wr** %8, align 8
  %55 = getelementptr inbounds %struct.ib_send_wr, %struct.ib_send_wr* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %56, i32 0, i32 3
  %58 = load i32, i32* %57, align 4
  %59 = call i8* @cpu_to_be32(i32 %58)
  %60 = load %union.t3_wr*, %union.t3_wr** %7, align 8
  %61 = bitcast %union.t3_wr* %60 to %struct.TYPE_6__*
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 2
  store i8* %59, i8** %62, align 8
  %63 = load %struct.ib_send_wr*, %struct.ib_send_wr** %8, align 8
  %64 = getelementptr inbounds %struct.ib_send_wr, %struct.ib_send_wr* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = call i32 @V_FR_PAGE_COUNT(i32 %67)
  %69 = load %struct.ib_send_wr*, %struct.ib_send_wr** %8, align 8
  %70 = getelementptr inbounds %struct.ib_send_wr, %struct.ib_send_wr* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %71, i32 0, i32 6
  %73 = load i64, i64* %72, align 8
  %74 = sub nsw i64 %73, 12
  %75 = call i32 @V_FR_PAGE_SIZE(i64 %74)
  %76 = or i32 %68, %75
  %77 = load i32, i32* @TPT_VATO, align 4
  %78 = call i32 @V_FR_TYPE(i32 %77)
  %79 = or i32 %76, %78
  %80 = load %struct.ib_send_wr*, %struct.ib_send_wr** %8, align 8
  %81 = getelementptr inbounds %struct.ib_send_wr, %struct.ib_send_wr* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %82, i32 0, i32 5
  %84 = load i32, i32* %83, align 8
  %85 = call i32 @iwch_ib_to_tpt_access(i32 %84)
  %86 = call i32 @V_FR_PERMS(i32 %85)
  %87 = or i32 %79, %86
  %88 = call i8* @cpu_to_be32(i32 %87)
  %89 = load %union.t3_wr*, %union.t3_wr** %7, align 8
  %90 = bitcast %union.t3_wr* %89 to %struct.TYPE_6__*
  %91 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %90, i32 0, i32 1
  store i8* %88, i8** %91, align 8
  %92 = load %union.t3_wr*, %union.t3_wr** %7, align 8
  %93 = bitcast %union.t3_wr* %92 to %struct.TYPE_6__*
  %94 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %93, i32 0, i32 0
  %95 = load i32*, i32** %94, align 8
  %96 = getelementptr inbounds i32, i32* %95, i64 0
  store i32* %96, i32** %13, align 8
  store i32 0, i32* %12, align 4
  br label %97

97:                                               ; preds = %165, %24
  %98 = load i32, i32* %12, align 4
  %99 = load %struct.ib_send_wr*, %struct.ib_send_wr** %8, align 8
  %100 = getelementptr inbounds %struct.ib_send_wr, %struct.ib_send_wr* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = icmp slt i32 %98, %103
  br i1 %104, label %105, label %170

105:                                              ; preds = %97
  %106 = load i32, i32* %12, align 4
  %107 = load i32, i32* @T3_MAX_FASTREG_FRAG, align 4
  %108 = icmp eq i32 %106, %107
  br i1 %108, label %109, label %150

109:                                              ; preds = %105
  %110 = load i32*, i32** %10, align 8
  store i32 2, i32* %110, align 4
  %111 = load %struct.t3_wq*, %struct.t3_wq** %11, align 8
  %112 = getelementptr inbounds %struct.t3_wq, %struct.t3_wq* %111, i32 0, i32 2
  %113 = load i64, i64* %112, align 8
  %114 = load %struct.t3_wq*, %struct.t3_wq** %11, align 8
  %115 = getelementptr inbounds %struct.t3_wq, %struct.t3_wq* %114, i32 0, i32 1
  %116 = load i64, i64* %115, align 8
  %117 = add nsw i64 %116, 1
  %118 = load %struct.t3_wq*, %struct.t3_wq** %11, align 8
  %119 = getelementptr inbounds %struct.t3_wq, %struct.t3_wq* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 8
  %121 = call i64 @Q_PTR2IDX(i64 %117, i32 %120)
  %122 = add nsw i64 %113, %121
  %123 = inttoptr i64 %122 to %union.t3_wr*
  store %union.t3_wr* %123, %union.t3_wr** %7, align 8
  %124 = load %union.t3_wr*, %union.t3_wr** %7, align 8
  %125 = bitcast %union.t3_wr* %124 to i8*
  %126 = load i32, i32* @T3_WR_FASTREG, align 4
  %127 = load %struct.t3_wq*, %struct.t3_wq** %11, align 8
  %128 = getelementptr inbounds %struct.t3_wq, %struct.t3_wq* %127, i32 0, i32 1
  %129 = load i64, i64* %128, align 8
  %130 = add nsw i64 %129, 1
  %131 = load %struct.t3_wq*, %struct.t3_wq** %11, align 8
  %132 = getelementptr inbounds %struct.t3_wq, %struct.t3_wq* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 8
  %134 = call i32 @Q_GENBIT(i64 %130, i32 %133)
  %135 = load %struct.ib_send_wr*, %struct.ib_send_wr** %8, align 8
  %136 = getelementptr inbounds %struct.ib_send_wr, %struct.ib_send_wr* %135, i32 0, i32 0
  %137 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %136, i32 0, i32 0
  %138 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 8
  %140 = add nsw i32 1, %139
  %141 = load i32, i32* @T3_MAX_FASTREG_FRAG, align 4
  %142 = sub nsw i32 %140, %141
  %143 = load i32, i32* @T3_EOP, align 4
  %144 = call i32 @build_fw_riwrh(i8* %125, i32 %126, i32 0, i32 %134, i32 0, i32 %142, i32 %143)
  %145 = load %union.t3_wr*, %union.t3_wr** %7, align 8
  %146 = bitcast %union.t3_wr* %145 to %struct.TYPE_7__*
  %147 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %146, i32 0, i32 0
  %148 = load i32*, i32** %147, align 8
  %149 = getelementptr inbounds i32, i32* %148, i64 0
  store i32* %149, i32** %13, align 8
  br label %150

150:                                              ; preds = %109, %105
  %151 = load %struct.ib_send_wr*, %struct.ib_send_wr** %8, align 8
  %152 = getelementptr inbounds %struct.ib_send_wr, %struct.ib_send_wr* %151, i32 0, i32 0
  %153 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %152, i32 0, i32 0
  %154 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %153, i32 0, i32 4
  %155 = load %struct.TYPE_8__*, %struct.TYPE_8__** %154, align 8
  %156 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %155, i32 0, i32 0
  %157 = load i64*, i64** %156, align 8
  %158 = load i32, i32* %12, align 4
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds i64, i64* %157, i64 %159
  %161 = load i64, i64* %160, align 8
  %162 = trunc i64 %161 to i32
  %163 = call i32 @cpu_to_be64(i32 %162)
  %164 = load i32*, i32** %13, align 8
  store i32 %163, i32* %164, align 4
  br label %165

165:                                              ; preds = %150
  %166 = load i32, i32* %12, align 4
  %167 = add nsw i32 %166, 1
  store i32 %167, i32* %12, align 4
  %168 = load i32*, i32** %13, align 8
  %169 = getelementptr inbounds i32, i32* %168, i32 1
  store i32* %169, i32** %13, align 8
  br label %97

170:                                              ; preds = %97
  %171 = load %struct.ib_send_wr*, %struct.ib_send_wr** %8, align 8
  %172 = getelementptr inbounds %struct.ib_send_wr, %struct.ib_send_wr* %171, i32 0, i32 0
  %173 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %172, i32 0, i32 0
  %174 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %173, i32 0, i32 0
  %175 = load i32, i32* %174, align 8
  %176 = add nsw i32 5, %175
  %177 = load i32*, i32** %9, align 8
  store i32 %176, i32* %177, align 4
  %178 = load i32*, i32** %9, align 8
  %179 = load i32, i32* %178, align 4
  %180 = icmp sgt i32 %179, 15
  br i1 %180, label %181, label %183

181:                                              ; preds = %170
  %182 = load i32*, i32** %9, align 8
  store i32 15, i32* %182, align 4
  br label %183

183:                                              ; preds = %181, %170
  store i32 0, i32* %6, align 4
  br label %184

184:                                              ; preds = %183, %21
  %185 = load i32, i32* %6, align 4
  ret i32 %185
}

declare dso_local i8* @cpu_to_be32(i32) #1

declare dso_local i32 @V_FR_PAGE_COUNT(i32) #1

declare dso_local i32 @V_FR_PAGE_SIZE(i64) #1

declare dso_local i32 @V_FR_TYPE(i32) #1

declare dso_local i32 @V_FR_PERMS(i32) #1

declare dso_local i32 @iwch_ib_to_tpt_access(i32) #1

declare dso_local i64 @Q_PTR2IDX(i64, i32) #1

declare dso_local i32 @build_fw_riwrh(i8*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @Q_GENBIT(i64, i32) #1

declare dso_local i32 @cpu_to_be64(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
