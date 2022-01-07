; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/cxgb4/extr_qp.c_build_immd.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/cxgb4/extr_qp.c_build_immd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.t4_sq = type { i64, i32* }
%struct.fw_ri_immd = type { i32, i64, i64, i32, i64 }
%struct.ib_send_wr = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i64 }

@EMSGSIZE = common dso_local global i32 0, align 4
@FW_RI_DATA_IMMD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.t4_sq*, %struct.fw_ri_immd*, %struct.ib_send_wr*, i32, i32*)* @build_immd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @build_immd(%struct.t4_sq* %0, %struct.fw_ri_immd* %1, %struct.ib_send_wr* %2, i32 %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.t4_sq*, align 8
  %8 = alloca %struct.fw_ri_immd*, align 8
  %9 = alloca %struct.ib_send_wr*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.t4_sq* %0, %struct.t4_sq** %7, align 8
  store %struct.fw_ri_immd* %1, %struct.fw_ri_immd** %8, align 8
  store %struct.ib_send_wr* %2, %struct.ib_send_wr** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  store i32 0, i32* %14, align 4
  %18 = load %struct.fw_ri_immd*, %struct.fw_ri_immd** %8, align 8
  %19 = getelementptr inbounds %struct.fw_ri_immd, %struct.fw_ri_immd* %18, i32 0, i32 4
  %20 = load i64, i64* %19, align 8
  %21 = inttoptr i64 %20 to i32*
  store i32* %21, i32** %12, align 8
  store i32 0, i32* %15, align 4
  br label %22

22:                                               ; preds = %138, %5
  %23 = load i32, i32* %15, align 4
  %24 = load %struct.ib_send_wr*, %struct.ib_send_wr** %9, align 8
  %25 = getelementptr inbounds %struct.ib_send_wr, %struct.ib_send_wr* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = icmp slt i32 %23, %26
  br i1 %27, label %28, label %141

28:                                               ; preds = %22
  %29 = load i32, i32* %14, align 4
  %30 = load %struct.ib_send_wr*, %struct.ib_send_wr** %9, align 8
  %31 = getelementptr inbounds %struct.ib_send_wr, %struct.ib_send_wr* %30, i32 0, i32 1
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = load i32, i32* %15, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i64 %34
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = add nsw i32 %29, %37
  %39 = load i32, i32* %10, align 4
  %40 = icmp sgt i32 %38, %39
  br i1 %40, label %41, label %44

41:                                               ; preds = %28
  %42 = load i32, i32* @EMSGSIZE, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %6, align 4
  br label %173

44:                                               ; preds = %28
  %45 = load %struct.ib_send_wr*, %struct.ib_send_wr** %9, align 8
  %46 = getelementptr inbounds %struct.ib_send_wr, %struct.ib_send_wr* %45, i32 0, i32 1
  %47 = load %struct.TYPE_2__*, %struct.TYPE_2__** %46, align 8
  %48 = load i32, i32* %15, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i64 %49
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = inttoptr i64 %52 to i32*
  store i32* %53, i32** %13, align 8
  %54 = load %struct.ib_send_wr*, %struct.ib_send_wr** %9, align 8
  %55 = getelementptr inbounds %struct.ib_send_wr, %struct.ib_send_wr* %54, i32 0, i32 1
  %56 = load %struct.TYPE_2__*, %struct.TYPE_2__** %55, align 8
  %57 = load i32, i32* %15, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i64 %58
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = load i32, i32* %14, align 4
  %63 = add nsw i32 %62, %61
  store i32 %63, i32* %14, align 4
  %64 = load %struct.ib_send_wr*, %struct.ib_send_wr** %9, align 8
  %65 = getelementptr inbounds %struct.ib_send_wr, %struct.ib_send_wr* %64, i32 0, i32 1
  %66 = load %struct.TYPE_2__*, %struct.TYPE_2__** %65, align 8
  %67 = load i32, i32* %15, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i64 %68
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  store i32 %71, i32* %16, align 4
  br label %72

72:                                               ; preds = %121, %44
  %73 = load i32, i32* %16, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %137

75:                                               ; preds = %72
  %76 = load i32*, i32** %12, align 8
  %77 = load %struct.t4_sq*, %struct.t4_sq** %7, align 8
  %78 = getelementptr inbounds %struct.t4_sq, %struct.t4_sq* %77, i32 0, i32 1
  %79 = load i32*, i32** %78, align 8
  %80 = load %struct.t4_sq*, %struct.t4_sq** %7, align 8
  %81 = getelementptr inbounds %struct.t4_sq, %struct.t4_sq* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = getelementptr inbounds i32, i32* %79, i64 %82
  %84 = icmp eq i32* %76, %83
  br i1 %84, label %85, label %89

85:                                               ; preds = %75
  %86 = load %struct.t4_sq*, %struct.t4_sq** %7, align 8
  %87 = getelementptr inbounds %struct.t4_sq, %struct.t4_sq* %86, i32 0, i32 1
  %88 = load i32*, i32** %87, align 8
  store i32* %88, i32** %12, align 8
  br label %89

89:                                               ; preds = %85, %75
  %90 = load i32, i32* %16, align 4
  %91 = sext i32 %90 to i64
  %92 = load %struct.t4_sq*, %struct.t4_sq** %7, align 8
  %93 = getelementptr inbounds %struct.t4_sq, %struct.t4_sq* %92, i32 0, i32 1
  %94 = load i32*, i32** %93, align 8
  %95 = load %struct.t4_sq*, %struct.t4_sq** %7, align 8
  %96 = getelementptr inbounds %struct.t4_sq, %struct.t4_sq* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = getelementptr inbounds i32, i32* %94, i64 %97
  %99 = load i32*, i32** %12, align 8
  %100 = ptrtoint i32* %98 to i64
  %101 = ptrtoint i32* %99 to i64
  %102 = sub i64 %100, %101
  %103 = sdiv exact i64 %102, 4
  %104 = icmp sle i64 %91, %103
  br i1 %104, label %105, label %107

105:                                              ; preds = %89
  %106 = load i32, i32* %16, align 4
  store i32 %106, i32* %17, align 4
  br label %121

107:                                              ; preds = %89
  %108 = load %struct.t4_sq*, %struct.t4_sq** %7, align 8
  %109 = getelementptr inbounds %struct.t4_sq, %struct.t4_sq* %108, i32 0, i32 1
  %110 = load i32*, i32** %109, align 8
  %111 = load %struct.t4_sq*, %struct.t4_sq** %7, align 8
  %112 = getelementptr inbounds %struct.t4_sq, %struct.t4_sq* %111, i32 0, i32 0
  %113 = load i64, i64* %112, align 8
  %114 = getelementptr inbounds i32, i32* %110, i64 %113
  %115 = load i32*, i32** %12, align 8
  %116 = ptrtoint i32* %114 to i64
  %117 = ptrtoint i32* %115 to i64
  %118 = sub i64 %116, %117
  %119 = sdiv exact i64 %118, 4
  %120 = trunc i64 %119 to i32
  store i32 %120, i32* %17, align 4
  br label %121

121:                                              ; preds = %107, %105
  %122 = load i32*, i32** %12, align 8
  %123 = load i32*, i32** %13, align 8
  %124 = load i32, i32* %17, align 4
  %125 = call i32 @memcpy(i32* %122, i32* %123, i32 %124)
  %126 = load i32, i32* %17, align 4
  %127 = load i32*, i32** %12, align 8
  %128 = sext i32 %126 to i64
  %129 = getelementptr inbounds i32, i32* %127, i64 %128
  store i32* %129, i32** %12, align 8
  %130 = load i32, i32* %17, align 4
  %131 = load i32*, i32** %13, align 8
  %132 = sext i32 %130 to i64
  %133 = getelementptr inbounds i32, i32* %131, i64 %132
  store i32* %133, i32** %13, align 8
  %134 = load i32, i32* %17, align 4
  %135 = load i32, i32* %16, align 4
  %136 = sub nsw i32 %135, %134
  store i32 %136, i32* %16, align 4
  br label %72

137:                                              ; preds = %72
  br label %138

138:                                              ; preds = %137
  %139 = load i32, i32* %15, align 4
  %140 = add nsw i32 %139, 1
  store i32 %140, i32* %15, align 4
  br label %22

141:                                              ; preds = %22
  %142 = load i32, i32* %14, align 4
  %143 = sext i32 %142 to i64
  %144 = add i64 %143, 40
  %145 = trunc i64 %144 to i32
  %146 = call i32 @roundup(i32 %145, i32 16)
  %147 = sext i32 %146 to i64
  %148 = load i32, i32* %14, align 4
  %149 = sext i32 %148 to i64
  %150 = add i64 %149, 40
  %151 = sub i64 %147, %150
  %152 = trunc i64 %151 to i32
  store i32 %152, i32* %17, align 4
  %153 = load i32, i32* %17, align 4
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %155, label %159

155:                                              ; preds = %141
  %156 = load i32*, i32** %12, align 8
  %157 = load i32, i32* %17, align 4
  %158 = call i32 @memset(i32* %156, i32 0, i32 %157)
  br label %159

159:                                              ; preds = %155, %141
  %160 = load i32, i32* @FW_RI_DATA_IMMD, align 4
  %161 = load %struct.fw_ri_immd*, %struct.fw_ri_immd** %8, align 8
  %162 = getelementptr inbounds %struct.fw_ri_immd, %struct.fw_ri_immd* %161, i32 0, i32 3
  store i32 %160, i32* %162, align 8
  %163 = load %struct.fw_ri_immd*, %struct.fw_ri_immd** %8, align 8
  %164 = getelementptr inbounds %struct.fw_ri_immd, %struct.fw_ri_immd* %163, i32 0, i32 2
  store i64 0, i64* %164, align 8
  %165 = load %struct.fw_ri_immd*, %struct.fw_ri_immd** %8, align 8
  %166 = getelementptr inbounds %struct.fw_ri_immd, %struct.fw_ri_immd* %165, i32 0, i32 1
  store i64 0, i64* %166, align 8
  %167 = load i32, i32* %14, align 4
  %168 = call i32 @cpu_to_be32(i32 %167)
  %169 = load %struct.fw_ri_immd*, %struct.fw_ri_immd** %8, align 8
  %170 = getelementptr inbounds %struct.fw_ri_immd, %struct.fw_ri_immd* %169, i32 0, i32 0
  store i32 %168, i32* %170, align 8
  %171 = load i32, i32* %14, align 4
  %172 = load i32*, i32** %11, align 8
  store i32 %171, i32* %172, align 4
  store i32 0, i32* %6, align 4
  br label %173

173:                                              ; preds = %159, %41
  %174 = load i32, i32* %6, align 4
  ret i32 %174
}

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @roundup(i32, i32) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @cpu_to_be32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
